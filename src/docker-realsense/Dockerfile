FROM ros:noetic-ros-base-focal

RUN apt-get update && \
    apt-get install -y \
        apt-utils \
        build-essential \
        git \
        python3-pip \
        python-is-python3

WORKDIR /app
RUN mkdir -p /app/src
RUN git clone --recurse-submodules https://github.com/rickstaa/realsense-ros-gazebo.git src
RUN rosdep install --from-paths src --ignore-src -r -y

# Other commands as necessary

