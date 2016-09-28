var photo = document.getElementById('buttering');
var div = document.getElementById("main");
var line = document.getElementsByTagName("hr");

main.style.fontFamily = "'Open Sans'"
photo.style.width = "40%";
div.style.textAlign = "center";
div.style.margin = "auto";
line[0].style.width = '40%';

function alertBox() {
  var button = document.getElementById('button');
  alert("OMG YOU CLICKED HIM!!! Now he is dead :(");
  photo.style.display = "none";
  button.style.display = "inline-block";
}

function revive() {
  var photo2 = document.getElementById('revival');
  button.style.display = "none";
  photo2.style.display = "inline-block";
  photo2.style.width = "40%";
}

photo.addEventListener("click", alertBox);
button.addEventListener("click", revive);
