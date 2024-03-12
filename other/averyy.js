function playMusic() {
  const musicUrl = "https://birthscripts.github.io/music/lol.mp3";
  const audio = new Audio(musicUrl);
  audio.play();
  showContent();
}

function showContent() {
  const content = [
    {title: "avery sent this thighs for mod in pistons server lol", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561948831387658/Adpi4pi.jpg?ex=65f24950&is=65dfd450&hm=e4d078b857a3396e8e4040aa4400265342c60aa8bc1aa947baa33178c4681f72&"},
    {title: "avery face (why censor mouth)", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561949116596264/888yN79.png?ex=65f24950&is=65dfd450&hm=e7bcc6faef7e61084887f1a33ac71a64fb308526b14c87d481dbd1838a61d618&"},
    {title: "tf is this lmao", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561948294778950/nUn5XOo.png?ex=65f24950&is=65dfd450&hm=5e66eaa2fa2e3597ff8e6f5ad86d7eb5292e50311f89a00582a7d910aa7341c9&"},
    {title: "avery emo also cencored armpits, prob with hair yea", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212562226020483123/WUk4DBh.png?ex=65f24993&is=65dfd493&hm=8b590730d9341a0de9ba58340cc9053cdfefe7d499090414efafc04e19955c19&"},
    {title: "AVERY PEDO", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561951222140968/wNkBDs1.png?ex=65f24951&is=65dfd451&hm=27e830184a0f6c34ee89d1abe9ca75792a1708a82d4889e9cf1b011f316f3901&"},
    {title: "woah", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561950849114133/1ynVeka.png?ex=65f24951&is=65dfd451&hm=d859596993aa9c009e6148b11c0073297cb429dcc0db275b437d8220951de2a6&"},
    {title: "wtf bro", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561951670927400/XbwcQJt.png?ex=65f24951&is=65dfd451&hm=e61dff48e84257f50951654b6f9975cee263f52952a1837bc8214d0e6bf492e0&"},
    {title: "groomer!!!", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212694416691822612/e2Di8DB.png?ex=65f2c4af&is=65e04faf&hm=6fe9a74f929f51f06dd45ac860e1b2a8a20e91611cf03c04fd07fa9049133c9e&"},
    {title: "ayo", imageUrl: "https://cdn.discordapp.com/attachments/1179945316678635601/1212561950073163776/1I2426B.jpg?ex=65f24951&is=65dfd451&hm=f4d423ceb1648152354313b2375e1e83d696cfcb237289a480a35c10e4351955&"},
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
