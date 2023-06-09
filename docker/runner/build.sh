#!/bin/bash

sudo docker build -f Dockerfile.swig -t forthy42/swig:latest .
sudo docker build -t forthy42/gforth:latest .
sudo docker build -f Dockerfile.gui -t forthy42/gforth-gui:latest .
sudo docker build -f Dockerfile.gui+fonts -t forthy42/gforth-gui-fonts:latest .
if [ "$1" != "nopush" ]
then
    docker push forthy42/swig:latest
    docker push forthy42/gforth:latest
    docker push forthy42/gforth-gui:latest
    docker push forthy42/gforth-gui-fonts:latest
fi
