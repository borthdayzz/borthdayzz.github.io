const bgMusic = document.getElementById('bgMusic');
const pauseButton = document.getElementById('pauseButton');
const nextButton = document.getElementById('nextButton');
const previousButton = document.getElementById('previousButton');
const muteButton = document.getElementById('muteButton');
const volumeControl = document.getElementById('volumeControl');
const bioContainer = document.getElementById('bioContainer');

let currentSongIndex = 0;
const songs = [
    'https://birthscripts.github.io/music/redrum.mp3',
    'https://birthscripts.github.io/music/luv_drug.mp3',
    'https://birthscripts.github.io/music/cerrero_hollywood.mp3',
    'https://birthscripts.github.io/music/rich.mp3',
    'https://birthscripts.github.io/music/club.mp3',
    'https://birthscripts.github.io/music/carnival.mp3'
];

function playCurrentSong() {
    bgMusic.src = songs[currentSongIndex];
    bgMusic.play();
    updateVolume(volumeControl.value);
}

pauseButton.addEventListener('click', () => {
    if (bgMusic.paused) {
        bgMusic.play();
        pauseButton.innerHTML = '<i class="fas fa-pause"></i>';
    } else {
        bgMusic.pause();
        pauseButton.innerHTML = '<i class="fas fa-play"></i>';
    }
});

nextButton.addEventListener('click', () => {
    currentSongIndex = (currentSongIndex + 1) % songs.length;
    playCurrentSong();
});

previousButton.addEventListener('click', () => {
    currentSongIndex = (currentSongIndex - 1 + songs.length) % songs.length;
    playCurrentSong();
});

muteButton.addEventListener('click', () => {
    bgMusic.muted = !bgMusic.muted;
    muteButton.innerHTML = bgMusic.muted ? '<i class="fas fa-volume-mute"></i>' : '<i class="fas fa-volume-up"></i>';
});

volumeControl.addEventListener('input', (e) => {
    const volume = e.target.value;
    updateVolume(volume);
});

function updateVolume(volume) {
    bgMusic.volume = volume;
}

function handleClick() {
    document.getElementById('clickPrompt').style.display = 'none';
    document.getElementById('bioContainer').classList.add('show');
    playCurrentSong();
    document.removeEventListener('click', handleClick);
}

document.addEventListener('click', handleClick);
