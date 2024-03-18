function playMusic() {
  const musicUrl = "https://birthscripts.github.io/music/lol.mp3";
  const audio = new Audio(musicUrl);
  audio.play();
  showContent();
}

function showContent() {
  const content = [
    {title: "avery sent this thighs for mod in pistons server lol", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561948831387658/Adpi4pi.jpg?ex=6604be50&is=65f24950&hm=06a76cfbffe9378e6672324f13813a4595a5620dfefa0a134e9ba9e5beed63bd&"},
    {title: "avery face (why censor mouth)", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561949116596264/888yN79.png?ex=6604be50&is=65f24950&hm=00d96ee71800eb8486d86754174b1abfa69db28730fdcf8c85371de86c452723&"},
    {title: "tf is this lmao", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561948294778950/nUn5XOo.png?ex=65f24950&is=65dfd450&hm=5e66eaa2fa2e3597ff8e6f5ad86d7eb5292e50311f89a00582a7d910aa7341c9&"},
    {title: "avery emo", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212562226020483123/WUk4DBh.png?ex=6604be93&is=65f24993&hm=84416228895a628a9651458734d04b0f5f7e62b575f25498e3d07bacdafcabdb&"},
    {title: "AVERY PEDO", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561951222140968/wNkBDs1.png?ex=6604be51&is=65f24951&hm=e9b19f050befff31d5c5d22adfb93b7b4ddd6c4c1bde25178eae0170e821ea9b&"},
    {title: "woah", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561950073163776/1I2426B.jpg?ex=6604be51&is=65f24951&hm=9f09d91d4c353c4aaa6903283014f8bbc69777a9fe239ddfed3fd491d7dbb449&"},
    {title: "wtf bro", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561951670927400/XbwcQJt.png?ex=6604be51&is=65f24951&hm=4567eb0339aacc6721621f7106a23e5341b745dd2fbcbca8fed8d8007ff26362&"},
    {title: "groomer!!", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212694416691822612/e2Di8DB.png?ex=660539af&is=65f2c4af&hm=0157b7296852874a25097f4f8ec7cb5cbbb14761c5eb9f23c1325cfcb298be4a&"},
    {title: "averyy being wild", imageUrl: "https://cdn.discordapp.com/attachments/1186996277804798003/1217054160084668416/Screenshot_20240227_231729.jpg?ex=6602a103&is=65f02c03&hm=92c73e2401666742b7f237da0e5501029f768541a597c020b6c8911b93695159&"}
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
