var header = document.getElementById("menu");
var btns = header.getElementsByClassName("item");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
  var current = document.getElementsByClassName("active");
  current[0].className = current[0].className.replace(" active", "");
  this.className += " active";
  });
}

setInterval(displayHello, 2700);

function displayHello() {
  document.getElementById("tintro").style.display = "none";
}
