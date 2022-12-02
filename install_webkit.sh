### Node-Webkit Installation ### 

echo "Make sure to have root enabled"
echo " "
echo " "

### Install required packages.

npm install nw
npm install nw-builder

### Set up XServer

xset s noblank
xset -dpms
xset s off

### Run the script.

npm run dev