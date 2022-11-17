$(function () {

  $('body').css("display", "none");

  window.addEventListener("message", function(e) {
    if (e.data.action === "toggleMenu") {
      $('body').css("display", "flex");
      e.data.skills.forEach((skill) => {
        appendSkillNode(skill);
      });
    } else {
      $('body').css("display", "none");
      $(".skills").empty()
    }
  });

  function appendSkillNode(skill) {
    const node = $(`<div class="col-6 skill">
    <div class="title"><i class="${skill.icon}"></i> ${skill.name}</div>
    <div class="progress" data-skill="${skill.name}"><div class="fill"></div></div>
  </div>`);

    $(".skills").append(node);

    updateProgress(skill.name, skill.level);
  }

  function updateProgress(skillName, value) {
    $(`.progress[data-skill="${skillName}"] .fill`).animate({ width: `${value}%` });
  }

  window.onkeyup = function (data) {
    if (data.which == 27) {
      $.post("https://B1-skillz/close", JSON.stringify({}));
      return
    }
  };
});
