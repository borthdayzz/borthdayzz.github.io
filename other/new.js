const fullscreenButton = document.getElementById('fullscreen-button');
    const videoContainer = document.getElementById('video-container');
    const video = document.getElementById('myVideo');

    fullscreenButton.addEventListener('click', () => {
        if (video.requestFullscreen) {
            video.requestFullscreen();
        } else if (video.mozRequestFullScreen) {
            video.mozRequestFullScreen();
        } else if (video.webkitRequestFullscreen) {
            video.webkitRequestFullscreen();
        } else if (video.msRequestFullscreen) {
            video.msRequestFullscreen();
        }
        video.play();
        videoContainer.style.display = 'block';
        fullscreenButton.style.display = 'none';
        fullscreenButton.blur();
    });
