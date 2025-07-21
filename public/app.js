// Client-side functionality for the Forex Fraud Evidence Portal

document.addEventListener('DOMContentLoaded', function() {

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
            toggleBrowserAnnotation(browserId);
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


