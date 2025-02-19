const songs = [
    new Audio('music/Moments.mp3'),
    new Audio('music/A Piece of You.mp3'),
    new Audio('music/Ivy.mp3'),
    new Audio('music/Poetic Justice.mp3'),
    new Audio('music/Cupid.mp3'),
    new Audio('music/A Piece of You.mp3')
];

function startWebsite() {
    document.getElementById('overlay').style.display = 'none';
    const container = document.querySelector('.container');
    container.classList.add('active');
    
    playSong(0);
}

function playSong(index) {
    if (index < songs.length) {
        const currentSong = songs[index];
        currentSong.play();

        currentSong.addEventListener('ended', function() {
            playSong(index + 1);
        });
    }
}