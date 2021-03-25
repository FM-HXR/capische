"use strict";

window.addEventListener("load", function () {
  const newPointCon = document.querySelector(".new-point-con");
  const formCon = document.querySelector(".point-con");
  const newPointPro = document.querySelector(".new-point-pro");
  const formPro = document.querySelector(".point-pro");
  const exit = document.querySelector(".fa-times-circle");
  const exitTwo = document.querySelector(".fa-times-circle.alt");

  newPointCon.addEventListener("click", function () {
    console.log("new con point click ok");
    formCon.style.display = "grid";
    formCon.classList.add("formAnim");
  });

  newPointPro.addEventListener("click", function () {
    console.log("new pro point click ok");
    formPro.style.display = "grid";
    formPro.classList.add("formAnim");
  });

  exit.addEventListener("click", function () {
    console.log("exit form click ok");
    formCon.style.display = "none";
    formCon.classList.remove("formAnim");
  });

  exitTwo.addEventListener("click", function () {
    console.log("exit form click ok");
    formPro.style.display = "none";
    formPro.classList.remove("formAnim");
  });
});
