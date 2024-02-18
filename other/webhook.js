async function deleteWebhook() {
    const webhookUrl = document.getElementById("webhookUrl").value;
    const statusMessage = document.getElementById("statusMessage");
    const deleteButton = document.getElementById("deleteButton");

    statusMessage.innerText = "";
    
    if (!webhookUrl) {
        statusMessage.innerText = "Please enter a valid webhook URL";
        return;
    }

    deleteButton.disabled = true;

    try {
        const response = await fetch(webhookUrl, {
            method: 'DELETE'
        });

        if (response.ok) {
            statusMessage.innerText = "Webhook deleted successfully";
        } else {
            statusMessage.innerText = "Failed to delete webhook. Make sure the URL is correct.";
        }
    } catch (error) {
        console.error('Error:', error);
        statusMessage.innerText = "An error occurred while deleting webhook";
    } finally {
        deleteButton.disabled = false;
    }
}
