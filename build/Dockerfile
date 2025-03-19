# Start with a base Ubuntu image
FROM ubuntu:22.04

# Set environment variable to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary dependencies for PlayOnLinux, X11, and basic utilities
RUN apt-get update && apt-get install -y \
    playonlinux \
    x11-apps 

# Create a new non-root user
RUN useradd -m playuser && echo "playuser:playuser" | chpasswd \
    && usermod -aG sudo playuser

# Set the working directory
WORKDIR /home/playuser

# Copy the MSI file from the host to the container
COPY 1_Flowlight17J_Setup_x64.msi /home/playuser/
COPY PpsManager17J_Setup_x86.msi /home/playuser/
# Set the environment variable for USER
ENV USER=root

# Temporarily switch to root to enable multiarch support and install Wine
USER root

RUN dpkg --add-architecture i386 
RUN apt update && apt install -y 

# # Add WineHQ repository
RUN wget -nc https://dl.winehq.org/wine-builds/winehq.key && \
    mkdir -p /usr/share/keyrings && \
    mv winehq.key /usr/share/keyrings/winehq-archive.key && \
    echo "deb [signed-by=/usr/share/keyrings/winehq-archive.key] https://dl.winehq.org/wine-builds/ubuntu/ jammy main" | tee /etc/apt/sources.list.d/winehq.list && \
    apt update && \
    apt install -y --install-recommends winehq-stable


# Switch back to playuser, since PlayOnLinux can't run as root
USER playuser

# Set the working directory
WORKDIR /home/playuser

