var Desktop = {
  options: {
      windowArea: ".window-area",
      windowAreaClass: "",
      taskBar: ".task-bar > .tasks",
      taskBarClass: ""
  },
}
function OpenSettingsWindow() {
  new WinBox({
    url: "apps/settings/settings.html", // load the settings page
    resize: true,    
    fullscreen: true,
    close: true,
    minimize: true,
    modal: false,
    max: true,
    min: true,
    hidden: false,

    // dimension:
    minwidth: 1,
    minheight: 1,
    maxheight: 1920,
    maxwidth: 1080,
    autosize: false,
});
}
function OpenTerminalWindow() {
  new WinBox({
    // url: "apps/settings/settings.html", // load the settings page
    resize: true,    
    fullscreen: true,
    close: true,
    html: "<p> Sorry, your Linux terminal can not loaded...",
    minimize: true,
    maximize: true,
    modal: false,
    max: true,
    min: true,
    hidden: false,

    // dimension:
    minwidth: 1,
    minheight: 1,
    maxheight: 1920,
    maxwidth: 1080,
    autosize: false,
});
}