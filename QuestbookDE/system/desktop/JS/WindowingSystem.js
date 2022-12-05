const {BrowserWindow } = require('electron').Menu.setApplicationMenu(null);
const path = require('path');
const url = require('url');
const x11 = require('x11');
const { shell } = require('electron');

/* Core windowing functions */

function OpenSettingsWindow() {
  
  window.open('./apps/settings/settings.html', 'System Settings', 'top=0,left=0,width=1280,height=720,frame=true,nodeIntegration=no')
}

function OpenTerminalWindow() {
  window.open('./apps/terminal/term.html', 'Terminal', 'top=0,left=0,width=1280,height=720,frame=true,nodeIntegration=no')
}

 /* Add your custom windows here. */
