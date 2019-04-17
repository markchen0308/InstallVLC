#!/bin/sh

if [ ! -d ~/prj ]
then
     cd ~
     mkdir prj
fi


if [ ! -d ~/prj/node ]
then
     cd ~/prj
     mkdir ~/prj/node
fi



if [ ! -d ~/prj/node/autoRunGateway ]
then
        cd ~/prj/node
        git clone https://github.com/markchen0308/autoRunGateway.git
fi

if [ ! -d ~/prj/node/VLC ]
then
        cd ~/prj/node
        git clone https://github.com/markchen0308/VLC.git
        cd ~/prj/node/VLC
        rm -rf node_modules
        npm install
        tsc
fi


if [ ! -d ~/prj/node/express-iot-vlc ]
then
        cd ~/prj/node
        git clone https://github.com/markchen0308/express-iot-vlc.git
        cd ~/prj/node/express-iot-vlc
        rm -rf node_modules
        npm install
        tsc
        rm routes/restfulApi.js
        cp dist/restfulApi.js routes/
fi
