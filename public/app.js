// Client-side functionality for the Forex Fraud Evidence Portal

document.addEventListener('DOMContentLoaded', function() {
    // Add paste event listeners to annotation textareas
    document.addEventListener('paste', handlePasteEvent);

    // Add visual feedback for drag and drop (future enhancement)
    document.addEventListener('dragover', handleDragOver);
    document.addEventListener('drop', handleDrop);

    // Add real-time markdown preview updates
    document.addEventListener('input', handleMarkdownInput);

    // Initialize previews for already-expanded browser entries (viewer mode)
    document.querySelectorAll('.browser-annotation-row[style*="table-row"]').forEach(row => {
        const textarea = row.querySelector('.annotation-textarea');
        const previewDiv = row.querySelector('.annotation-preview .preview-content');
        if (textarea && previewDiv && textarea.value) {
            const html = renderMarkdownToHTML(textarea.value);
            previewDiv.innerHTML = html;
        }
    });

    // Add click handlers to call rows
    document.querySelectorAll('.call-row').forEach(row => {
        row.addEventListener('click', function(e) {
            if (e.target.closest('.btn') || e.target.closest('input') || e.target.closest('textarea')) {
                return; // Don't toggle if clicking on form elements
            }
            const callId = this.dataset.callId;
            toggleCallDetails(callId);
        });
    });

    // Use event delegation for browser entry toggles
    document.addEventListener('click', function(e) {
        // Handle browser entry toggle clicks
        if (e.target.closest('.browser-entry-row td:first-child')) {
            e.stopPropagation();
            const row = e.target.closest('.browser-entry-row');
            const browserId = row.dataset.browserId;
            const toggle = row.querySelector('.browser-toggle');

            // Only toggle if the triangle is visible (not transparent)
            if (toggle && toggle.style.color !== 'transparent') {
                toggleBrowserAnnotation(browserId);
            }
        }

        // Handle save annotation button clicks
        if (e.target.classList.contains('save-annotation-btn')) {
            const browserId = e.target.dataset.browserId;
            saveAnnotation(browserId);
        }

        // Handle clear annotation button clicks
        if (e.target.classList.contains('clear-annotation-btn')) {
            const browserId = e.target.dataset.browserId;
            clearAnnotation(browserId);
        }
    });
});

function toggleCallDetails(callId) {
    const mainRow = document.querySelector(`tr[data-call-id="${callId}"]`);
    const nestedRow = document.getElementById(`nested-row-${callId}`);
    const toggle = mainRow.querySelector('.call-toggle');

    if (nestedRow.style.display === 'none') {
        nestedRow.style.display = 'table-row';
        mainRow.classList.add('expanded');
        toggle.textContent = '▼';
        toggle.classList.add('expanded');
    } else {
        nestedRow.style.display = 'none';
        mainRow.classList.remove('expanded');
        toggle.textContent = '▶';
        toggle.classList.remove('expanded');
    }
}

function showError(message) {
    // Create or update error div
    let errorDiv = document.querySelector('.error');
    if (!errorDiv) {
        errorDiv = document.createElement('div');
        errorDiv.className = 'error';
        document.querySelector('.container').insertBefore(errorDiv, document.querySelector('.calls-table'));
    }
    errorDiv.textContent = message;
    errorDiv.style.display = 'block';
}

function hideError() {
    const errorDiv = document.querySelector('.error');
    if (errorDiv) {
        errorDiv.style.display = 'none';
    }
}

async function addTextAttachment(callId) {
    const textArea = document.getElementById(`text-${callId}`);
    const content = textArea.value.trim();

    if (!content) {
        alert('Please enter some text');
        return;
    }

    try {
        const response = await fetch(`/api/calls/${callId}/attachments/text`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ content })
        });

        if (!response.ok) {
            const errorData = await response.json();
            throw new Error(errorData.error || `HTTP error! status: ${response.status}`);
        }

        // Reload the page to show the new attachment
        window.location.reload();
    } catch (error) {
        console.error('Error adding text attachment:', error);
        showError('Failed to add text attachment: ' + error.message);
    }
}

async function addImageAttachment(callId) {
    const fileInput = document.getElementById(`image-${callId}`);
    const file = fileInput.files[0];

    if (!file) {
        alert('Please select an image file');
        return;
    }

    const formData = new FormData();
    formData.append('image', file);

    try {
        const response = await fetch(`/api/calls/${callId}/attachments/image`, {
            method: 'POST',
            body: formData
        });

        if (!response.ok) {
            const errorData = await response.json();
            throw new Error(errorData.error || `HTTP error! status: ${response.status}`);
        }

        // Reload the page to show the new attachment
        window.location.reload();
    } catch (error) {
        console.error('Error adding image attachment:', error);
        showError('Failed to add image attachment: ' + error.message);
    }
}

async function deleteAttachment(attachmentId) {
    if (!confirm('Are you sure you want to delete this attachment?')) {
        return;
    }

    try {
        const response = await fetch(`/api/attachments/${attachmentId}`, {
            method: 'DELETE'
        });

        if (!response.ok) {
            const errorData = await response.json();
            throw new Error(errorData.error || `HTTP error! status: ${response.status}`);
        }

        // Reload the page to show the updated list
        window.location.reload();
    } catch (error) {
        console.error('Error deleting attachment:', error);
        showError('Failed to delete attachment: ' + error.message);
    }
}

// Browser annotation functions
function toggleBrowserAnnotation(browserId) {
    const entryRow = document.querySelector(`tr[data-browser-id="${browserId}"]`);
    const annotationRow = document.getElementById(`browser-annotation-${browserId}`);
    const toggle = entryRow.querySelector('.browser-toggle');

    if (annotationRow.style.display === 'none') {
        annotationRow.style.display = 'table-row';
        toggle.textContent = '▼';
        toggle.classList.add('expanded');

        // Update preview when first opened
        const textarea = annotationRow.querySelector('.annotation-textarea');
        const previewDiv = annotationRow.querySelector('.annotation-preview .preview-content');
        if (textarea && previewDiv) {
            const html = renderMarkdownToHTML(textarea.value);
            previewDiv.innerHTML = html;
        }
    } else {
        annotationRow.style.display = 'none';
        toggle.textContent = '▶';
        toggle.classList.remove('expanded');
    }
}

async function saveAnnotation(browserId) {
    const textarea = document.querySelector(`textarea[data-browser-id="${browserId}"]`);
    const statusSpan = document.querySelector(`.annotation-status[data-browser-id="${browserId}"]`);
    const annotation = textarea.value;

    try {
        statusSpan.textContent = 'Saving...';
        statusSpan.style.color = '#666';

        const response = await fetch(`/api/browser-history/${browserId}/annotation`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ annotation })
        });

        if (!response.ok) {
            const errorData = await response.json();
            throw new Error(errorData.error || `HTTP error! status: ${response.status}`);
        }

        statusSpan.textContent = 'Saved!';
        statusSpan.style.color = '#28a745';

        // Clear status after 3 seconds
        setTimeout(() => {
            statusSpan.textContent = '';
        }, 3000);

    } catch (error) {
        console.error('Error saving annotation:', error);
        statusSpan.textContent = 'Error saving';
        statusSpan.style.color = '#dc3545';
        showError('Failed to save annotation: ' + error.message);
    }
}

async function clearAnnotation(browserId) {
    if (!confirm('Are you sure you want to clear this annotation?')) {
        return;
    }

    const textarea = document.querySelector(`textarea[data-browser-id="${browserId}"]`);
    const statusSpan = document.querySelector(`.annotation-status[data-browser-id="${browserId}"]`);

    try {
        statusSpan.textContent = 'Clearing...';
        statusSpan.style.color = '#666';

        const response = await fetch(`/api/browser-history/${browserId}/annotation`, {
            method: 'DELETE'
        });

        if (!response.ok) {
            const errorData = await response.json();
            throw new Error(errorData.error || `HTTP error! status: ${response.status}`);
        }

        textarea.value = '';
        statusSpan.textContent = 'Cleared!';
        statusSpan.style.color = '#28a745';

        // Clear status after 3 seconds
        setTimeout(() => {
            statusSpan.textContent = '';
        }, 3000);

    } catch (error) {
        console.error('Error clearing annotation:', error);
        statusSpan.textContent = 'Error clearing';
        statusSpan.style.color = '#dc3545';
        showError('Failed to clear annotation: ' + error.message);
    }
}

// Handle paste events for image uploads
function handlePasteEvent(e) {
    // Check if the paste target is an annotation textarea
    if (!e.target.classList.contains('annotation-textarea')) {
        return;
    }

    const clipboardData = e.clipboardData || window.clipboardData;
    if (!clipboardData) return;

    const items = clipboardData.items;
    if (!items) return;

    // Look for image items in clipboard
    for (let i = 0; i < items.length; i++) {
        const item = items[i];

        if (item.type.indexOf('image') !== -1) {
            e.preventDefault(); // Prevent default paste behavior

            const file = item.getAsFile();
            if (file) {
                uploadImageFromClipboard(file, e.target);
            }
            break;
        }
    }
}

// Upload image from clipboard and insert markdown
async function uploadImageFromClipboard(file, textarea) {
    const browserId = textarea.dataset.browserId;
    const statusSpan = document.querySelector(`.annotation-status[data-browser-id="${browserId}"]`);

    try {
        // Show upload status
        if (statusSpan) {
            statusSpan.textContent = 'Uploading image...';
            statusSpan.style.color = '#007acc';
        }

        // Create FormData for file upload
        const formData = new FormData();
        formData.append('image', file, 'screenshot.png');

        const response = await fetch('/api/upload-image', {
            method: 'POST',
            body: formData
        });

        console.log('Upload response status:', response.status);
        console.log('Upload response headers:', response.headers);

        if (!response.ok) {
            const responseText = await response.text();
            console.log('Error response text:', responseText);

            // Try to parse as JSON, fallback to text
            let errorMessage;
            try {
                const errorData = JSON.parse(responseText);
                errorMessage = errorData.error || `HTTP error! status: ${response.status}`;
            } catch (e) {
                errorMessage = `Server returned HTML instead of JSON. Status: ${response.status}`;
            }

            throw new Error(errorMessage);
        }

        const result = await response.json();

        // Insert markdown image syntax at cursor position
        const imageMarkdown = `![Screenshot](${result.url})`;
        insertTextAtCursor(textarea, imageMarkdown);

        // Update preview
        const previewDiv = document.querySelector(`.annotation-preview[data-browser-id="${browserId}"] .preview-content`);
        if (previewDiv) {
            const html = renderMarkdownToHTML(textarea.value);
            previewDiv.innerHTML = html;
        }

        // Show success status
        if (statusSpan) {
            statusSpan.textContent = 'Image uploaded!';
            statusSpan.style.color = '#28a745';

            // Clear status after 3 seconds
            setTimeout(() => {
                statusSpan.textContent = '';
            }, 3000);
        }

    } catch (error) {
        console.error('Error uploading image:', error);

        if (statusSpan) {
            statusSpan.textContent = 'Image upload failed';
            statusSpan.style.color = '#dc3545';
        }

        showError('Failed to upload image: ' + error.message);
    }
}

// Insert text at cursor position in textarea
function insertTextAtCursor(textarea, text) {
    const startPos = textarea.selectionStart;
    const endPos = textarea.selectionEnd;
    const beforeText = textarea.value.substring(0, startPos);
    const afterText = textarea.value.substring(endPos);

    // Insert the text
    textarea.value = beforeText + text + afterText;

    // Set cursor position after inserted text
    const newCursorPos = startPos + text.length;
    textarea.setSelectionRange(newCursorPos, newCursorPos);

    // Focus the textarea
    textarea.focus();
}

// Handle drag over events for visual feedback
function handleDragOver(e) {
    if (!e.target.classList.contains('annotation-textarea')) {
        return;
    }

    e.preventDefault();
    e.target.style.borderColor = '#007acc';
    e.target.style.backgroundColor = '#f0f8ff';
}

// Handle drop events for image uploads
function handleDrop(e) {
    if (!e.target.classList.contains('annotation-textarea')) {
        return;
    }

    e.preventDefault();

    // Reset visual feedback
    e.target.style.borderColor = '#ccc';
    e.target.style.backgroundColor = 'white';

    const files = e.dataTransfer.files;
    if (files.length > 0) {
        const file = files[0];

        // Check if it's an image
        if (file.type.startsWith('image/')) {
            uploadImageFromClipboard(file, e.target);
        } else {
            showError('Please drop an image file');
        }
    }
}

// Handle markdown input for real-time preview
function handleMarkdownInput(e) {
    if (!e.target.classList.contains('annotation-textarea')) {
        return;
    }

    const browserId = e.target.dataset.browserId;
    const previewDiv = document.querySelector(`.annotation-preview[data-browser-id="${browserId}"] .preview-content`);

    if (previewDiv) {
        const markdown = e.target.value;
        const html = renderMarkdownToHTML(markdown);
        previewDiv.innerHTML = html;
    }
}

// Client-side markdown renderer (matches server-side logic)
function renderMarkdownToHTML(markdown) {
    if (!markdown) return '<em style="color: #999;">Preview will appear here...</em>';

    // First, escape HTML to prevent XSS and template breaking
    function escapeHtml(text) {
        const map = {
            '&': '&amp;',
            '<': '&lt;',
            '>': '&gt;',
            '"': '&quot;',
            "'": '&#039;'
        };
        return text.replace(/[&<>"']/g, function(m) { return map[m]; });
    }

    // Store protected content to avoid conflicts
    const protectedContent = [];
    let html = escapeHtml(markdown);

    // Step 1: Protect and process images
    html = html.replace(/!\[([^\]]*)\]\(([^)]+)\)/g, (match, alt, url) => {
        const placeholder = `MDPROTECTED${protectedContent.length}MDPROTECTED`;
        protectedContent.push(`<img src="${url}" alt="${alt}" style="max-width: 100%; height: auto; border: 1px solid #ddd; margin: 5px 0;">`);
        return placeholder;
    });

    // Step 2: Protect and process links
    html = html.replace(/\[([^\]]+)\]\(([^)]+)\)/g, (match, text, url) => {
        const placeholder = `MDPROTECTED${protectedContent.length}MDPROTECTED`;
        protectedContent.push(`<a href="${url}" target="_blank" rel="noopener noreferrer">${text}</a>`);
        return placeholder;
    });

    // Step 3: Protect and process code
    html = html.replace(/`([^`]+)`/g, (match, code) => {
        const placeholder = `MDPROTECTED${protectedContent.length}MDPROTECTED`;
        protectedContent.push(`<code style="background: #f4f4f4; padding: 2px 4px; border-radius: 3px; font-family: monospace;">${code}</code>`);
        return placeholder;
    });

    // Step 4: Process formatting on remaining text
    html = html
        // Bold: **text** or __text__
        .replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>')
        .replace(/__([^_]+)__/g, '<strong>$1</strong>')
        // Italic: *text* or _text_
        .replace(/\*([^*]+)\*/g, '<em>$1</em>')
        .replace(/_([^_]+)_/g, '<em>$1</em>')
        // Line breaks
        .replace(/\n/g, '<br>');

    // Step 5: Restore protected content
    protectedContent.forEach((content, index) => {
        const placeholder = `MDPROTECTED${index}MDPROTECTED`;
        html = html.replace(new RegExp(placeholder, 'g'), content);
    });
    return html;
}


