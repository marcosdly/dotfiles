//                                        _ _       
//  _ __ ___   __ _ _ __ ___ ___  ___  __| | |_   _ 
// | '_ ` _ \ / _` | '__/ __/ _ \/ __|/ _` | | | | |
// | | | | | | (_| | | | (_| (_) \__ \ (_| | | |_| |
// |_| |_| |_|\__,_|_|  \___\___/|___/\__,_|_|\__, |
//                                            |___/ 
// This script was created by marcosdly.
// Check the offcial repository: https://github.com/marcosdly/dotfiles/tree/master/scripts/fonts

const liElementsSelector = document.querySelectorAll('li');
const packageNames = [];

for (let i = 0; i < liElementsSelector.length; i++) {
  for (let l = 0; l < liElementsSelector[i].children.length; l++) {
    for (let k = 0; k < liElementsSelector[i].children.item(l).children.length; k++) {
      if (liElementsSelector[i].children.item(l).children.item(k).textContent === 'AUR') {
        packageNames.push(liElementsSelector[i].querySelector('.archwiki-template-pkg').textContent);
      }
    }
  }
}

console.log(packageNames.join(' '));
