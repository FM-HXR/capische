"use strict";

const { formDisableSelector } = require("@rails/ujs");

window.addEventListener("load", function () {
  const sideLeft = document.querySelector(".left");
  const sideRight = document.querySelector(".right");

  for (var i = 0; i <= 10; i++) {
    const hexes = document.createElement("div");
    const hexess = document.createElement("div");
    hexes.classList.add("hexL");
    hexess.classList.add("hexR");
    sideLeft.appendChild(hexes);
    sideRight.appendChild(hexess);
  }

  function animateHexesL() {
    anime({
      targets: ".hexL",
      translateX: function () {
        return anime.random(-100, 98);
      },
      translateY: function () {
        return anime.random(-500, 500);
      },
      scale: function () {
        return anime.random(0.8, 1.3);
      },
      easing: "cubicBezier(0.3, 0.1, 0.5, 0.2)",
      duration: 3000,
      delay: anime.stagger(30),
      complete: animateHexesL,
    });
  }

  function animateHexesR() {
    anime({
      targets: ".hexR",
      translateX: function () {
        return anime.random(-100, 99);
      },
      translateY: function () {
        return anime.random(-900, 900);
      },
      scale: function () {
        return anime.random(0.8, 1.3);
      },
      easing: "cubicBezier(0.3, 0.1, 0.5, 0.2)",
      duration: 3000,
      delay: anime.stagger(30),
      complete: animateHexesR,
    });
  }

  function hexOpacityL() {
    anime({
      targets: ".hexL",
      opacity: function () {
        return anime.random(0, 1);
      },
      easing: "linear",
      duration: 1000,
      delay: anime.stagger(2),
      complete: hexOpacityL,
    });
  }

  function hexOpacityR() {
    anime({
      targets: ".hexR",
      opacity: function () {
        return anime.random(0, 1);
      },
      easing: "linear",
      duration: 1000,
      delay: anime.stagger(2),
      complete: hexOpacityR,
    });
  }

  console.log("Index Loaded");
  animateHexesL();
  animateHexesR();
  hexOpacityL();
  hexOpacityR();
});
