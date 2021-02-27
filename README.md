# mod.sw.bpo
OPIL module: Business Process Optimization (BPO) Robotics, Control and Decision Systems (RCDS) Laboratory of Cyprus University of Technology (CUT), written and contintributed by Anatoli A. Tziola, George Georgiades, Savvas G. Loizou from February 2019.

# Install from source code
Supported $ROS_DISTRO is kinetic.

Clone the BPO repository to your catkin workspace. Then compile it with catkin_make in one folder up.
```
cd <your_catkin_workspace>/src/
git clone https://github.com/rcdslabcut/mod.sw.bpo.git
cd ..
catkin_make
```

## Starting from source code
To start the BPO service, you need to run the following commands on a computer where ROS kinetic is already installed.

Open a terminal and launch the bpo_service_v5.launch file by running the following command
```
roslaunch opil_bpo bpo_service_v5.launch 
```
