"use strict";

window.addEventListener("load", function () {
  const newTopic = document.querySelector(".new-topic");
  const editIcon = document.querySelector(".fa-edit");
  const form = document.querySelector(".form.topic");
  const exit = document.querySelector(".fa-times-circle");
  const exitEdit = document.querySelector(".fa-times-circle.edit");

  newTopic.addEventListener("click", function () {
    console.log("new topic click ok");
    form.style.display = "grid";
    form.classList.add("formAnim");
  });

  exit.addEventListener("click", function () {
    console.log("exit form click ok");
    form.style.display = "none";
    form.classList.remove("formAnim");
  });

  editIcon.addEventListener("click", function () {
    console.log("new topic click ok");
    form.style.display = "grid";
    form.classList.add("formAnim");
  });

  exitEdit.addEventListener("click", function () {
    console.log("exit form click ok");
    form.style.display = "none";
    form.classList.remove("formAnim");
  });
});
