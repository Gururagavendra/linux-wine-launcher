#!/bin/bash
DISPLAY=":1"
# Run the Docker container in detached mode with the necessary ports and environment variables
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --name oks_station_setup_apps guru589/button_manager_oks:1.0 wine explorer

