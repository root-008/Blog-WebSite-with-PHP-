let darkMode = localStorage.getItem("darkMode");
const darkModeToggle = document.querySelector("#dark-mode-toggle");


const enableDarkMode = () => {
  document.body.classList.add("darkmode");
  localStorage.setItem("darkMode","enabled");
}

const disableDarkMode = () => {
  document.body.classList.remove("darkmode");
  localStorage.setItem("darkMode",null);
}

if(darkMode === 'enabled'){
  enableDarkMode();
  document.getElementById('pic_logo').src = 'Pictures/logoblack.png';
  
}else{
  document.getElementById('pic_logo').src = 'Pictures/logowhite.png';
}

/*darkModeToggle.onclick = () => localStorage.getItem("darkMode") ? disableDarkMode() : enableDarkMode();*/

darkModeToggle.addEventListener("click", () => {
  darkMode = localStorage.getItem("darkMode");
  if(darkMode !== 'enabled'){
    enableDarkMode();
    //dark mode değiştiği zaman logo da değişiyor
    document.getElementById('pic_logo').src = 'Pictures/logoblack.png';
    console.log(darkMode);
  }
  else{
    disableDarkMode();
    //dark mode değiştiği zaman logo da değişiyor
    document.getElementById('pic_logo').src = 'Pictures/logowhite.png';
    console.log(darkMode);
  }
});

