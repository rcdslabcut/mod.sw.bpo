FROM osrf/ros:kinetic-desktop-full

RUN apt-get update && apt-get install -y \
	    ros-kinetic-desktop-full \
	    ros-kinetic-navigation \
       	    ros-kinetic-industrial-msgs \
            sudo \	    
            python-requests \			
	    && rm -rf /var/lib/apt/lists/*

RUN apt update && apt upgrade -y

RUN /bin/bash -c 'source /opt/ros/kinetic/setup.bash'

RUN mkdir -p ~/catkin_ws/src && \
	cd ~/catkin_ws/ && \
	/bin/bash -c '. /opt/ros/kinetic/setup.bash; cd ~/catkin_ws; catkin_make' && \
        /bin/bash -c 'source devel/setup.bash'

COPY src /root/catkin_ws/src

RUN cd ~/catkin_ws/src && \
	git clone -b v0.2.0 --recursive https://github.com/iml130/firos.git && \
	cd ~/catkin_ws/ && \
	/bin/bash -c '. /opt/ros/kinetic/setup.bash; cd ~/catkin_ws; catkin_make'

COPY src/opil_bpo/docker/firosconfig /root/catkin_ws/src/firos/config

COPY ros_entrypoint.sh /

RUN echo "source /root/catkin_ws/devel/setup.bash" >> /root/.bashrc

