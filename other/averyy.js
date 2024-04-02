function playMusic() {
  const musicUrl = "https://borthdayzz.github.io/music/sus.mp3";
  const audio = new Audio(musicUrl);
  audio.play();
  showContent();
}

function showContent() {
  const content = [
    {title: "avery sent this thighs for mod in pistons server lol", imageUrl: "https://borthdayzz.github.io//images/thighs.jpg"},
    {title: "avery face (why censor mouth)", imageUrl: "https://borthdayzz.github.io//images/averyykuromi.png"},
    {title: "tf is this lmao", imageUrl: "https://borthdayzz.github.io//images/tf.png"},
    {title: "avery emo", imageUrl: "https://borthdayzz.github.io/images/edrfger.png"},
    {title: "AVERY PEDO", imageUrl: "https://borthdayzz.github.io/images/lol.png"},
    {title: "averyy dealdo", imageUrl: "https://borthdayzz.github.io/images/averyyexposed4.jpg"},
    {title: "fuck me in the ass", imageUrl: "https://borthdayzz.github.io/images/waht.png"},
  ];

  const contentContainer = document.querySelector('.content');

  contentContainer.innerHTML = '';

  content.forEach(item => {
    const h1 = document.createElement('h1');
    h1.textContent = item.title;

    const img = document.createElement('img');
    img.src = item.imageUrl;
    img.alt = "Embedded Image";

    contentContainer.appendChild(h1);
    contentContainer.appendChild(img);
  });
}

document.getElementById('showButton').addEventListener('click', playMusic);
