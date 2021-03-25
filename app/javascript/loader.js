"use strict";
window.addEventListener("load", function () {
  var percent = document.querySelector(".meter");
  var screen = document.querySelector(".loadscreen");
  if (screen == null) {
    //pass
  } else {
    var count = 4;
    var loading = setInterval(progress, 30);
    function testOpacity() {
      for (var i = 1; i <= 10; i++) {
        anime({
          targets: `.topic-${i}`,
          opacity: 1,
          translateY: -200,
          easing: "cubicBezier(0.3, 0.1, 0.5, 0.2)",
          duration: i * 100 + 200,
        });
      }
    }

    function progress() {
      if (count == 100) {
        screen.classList.add("fadeload");
        clearInterval(loading);
      } else {
        count += 4;
        percent.textContent = `${count}%`;
        testOpacity();
      }
    }
  }
});
