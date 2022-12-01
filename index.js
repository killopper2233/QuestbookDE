// compile everything within the "system" folder. 
const {BrowserWindow, app} = require('electron');
const path = require('path');
const url = require('url');
const x11 = require('x11');
const windowmanager = require('windowmanager');


let win = null // Create WindowManager

function createWindowManagerEnvironment() {
  win = new BrowserWindow({
    fullscreen: true,
    width: 1920, //maximum width and height sizing
    height: 1080,
    title: "Questbook Runtime Environment",
    icon: "system/electron/defaultQuestbook.png",
    frame: false,
    webPreferences: { experimentalFeatures: true}
  })

  win.setPosition(0, 0);

  win.loadURL(url.format({
    pathname: path.join(__dirname, 'system/desktop/desktop-main.html'),
    protocol: 'file:',
    slashes: true
  }));
 console.log("QWM environment started, please wait...");
}


  //create more functions outside of the runtime environment
  app.on('ready', createWindowManagerEnvironment);