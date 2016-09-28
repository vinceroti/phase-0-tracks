// var photo = document.getElementById('buttering');
// var div = document.getElementById("main");
// var line = document.getElementsByTagName("hr");

// main.style.fontFamily = "'Open Sans'"
// photo.style.width = "40%";
// div.style.textAlign = "center";
// div.style.margin = "auto";
// line[0].style.width = '40%';

// function alertBox() {
//   var button = document.getElementById('button');
//   alert("OMG YOU CLICKED HIM!!! Now he is dead :(");
//   photo.style.display = "none";
//   button.style.display = "inline-block";
// }

// function revive() {
//   var photo2 = document.getElementById('revival');
//   button.style.display = "none";
//   photo2.style.display = "inline-block";
//   photo2.style.width = "40%";
// }

// photo.addEventListener("click", alertBox);
// button.addEventListener("click", revive);

// $ is required to call Jquary functions
// as soon as the document is ready, load this code

$(document).ready(function(){
  $("#main").css({
    "font-family": 'Open Sans',
    "text-align": 'center',
    margin: 'auto',
  });

  $("hr, #buttering, #revival").css("width", "30%");

  $("#buttering, #revival").css("padding-top", "10px");

  $("#buttering").click(function(){
    $("#buttering").hide();
    alert("OMG YOU CLICKED HIM!!! Now he is dead :(")
    $("#button").fadeIn();
  });

  $("#button").click(function(){
    $("h1, hr").slideUp();
    $("#button").hide();
    $("#revival").fadeIn();
  });

  $("#revival").click(function(){
    $("#revival").toggle( "pulsate" );
    $("p").slideDown();
  });
});
