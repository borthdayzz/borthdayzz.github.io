const fullscreenButton = document.getElementById('fullscreen-button');
const videoContainer = document.getElementById('video-container');
const video = document.getElementById('myVideo');
const videoUrls = [
    'https://birthscripts.github.io/videos/alien.mp4',
    'https://birthscripts.github.io/videos/alien2.mp4'
];

fullscreenButton.addEventListener('click', () => {
    const randomIndex = Math.floor(Math.random() * videoUrls.length);
    const randomVideoUrl = videoUrls[randomIndex];
    video.src = randomVideoUrl;
    
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
    video.controls = false;
    videoContainer.style.display = 'block';
    fullscreenButton.style.display = 'none';
    fullscreenButton.blur();
});

document.addEventListener("fullscreenchange", toggleControls);
document.addEventListener("webkitfullscreenchange", toggleControls);
document.addEventListener("mozfullscreenchange", toggleControls);
document.addEventListener("MSFullscreenChange", toggleControls);

function toggleControls() {
    if (document.fullscreenElement ||
        document.webkitFullscreenElement ||
        document.mozFullScreenElement ||
        document.msFullscreenElement) {
        video.controls = false;
    } else {
        video.controls = true;
    }
}
