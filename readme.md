# Windows PPS and PTL Manager Software Setup

This guide will help you set up and run the Windows PPS and PTL Manager software using Docker. Follow the steps below to get started.

## Prerequisites

- Docker installed on your machine.
- A terminal or command prompt to run commands.

## Steps to Set Up

### Step 1: Pull the Docker Image

First, pull the necessary Docker image by running the following command:

```bash
docker pull guru589/button_manager_oks:1.0
```

### Step 2: Download or Copy the Script

Next, run this commands or make it an bash file

```bash
DISPLAY=":1"
# Run the Docker container in detached mode with the necessary ports and environment variables
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --name oks_station_setup_apps guru589/button_manager_oks:1.0 wine explorer
```

note: if you make the above as an bash script, dont fogot to make it executable else it wont run

once you run the commands/script:

A pop-up window will appear. Choose the desired application, and you're all set to start coding!

## Contributing

Feel free to contribute to this project.
Happy coding! 🚀