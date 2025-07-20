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
