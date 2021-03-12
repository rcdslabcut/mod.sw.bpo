# mod.sw.bpo
OPIL module: Business Process Optimization (BPO) Robotics, Control and Decision Systems (RCDS) Laboratory of Cyprus University of Technology (CUT), written and equivalently contintributed by Anatoli A. Tziola, George Georgiades, Savvas G. Loizou from February 2019.

## Install from source code
Supported $ROS_DISTRO is kinetic.

Clone the BPO repository to your catkin workspace. Clone `mod.sw.bpo` repository into your `catkin_ws` directory. Then compile it with `catkin_make` in one folder up.
```
cp opil_bpo <your_catkin_workspace>/src/
git clone https://github.com/rcdslabcut/mod.sw.bpo.git
cd ..
catkin_make
```

### Starting from source code
To start the BPO service, you need to run the following commands on a computer where ROS kinetic is already installed.

Open a terminal and launch the bpo_service_v5.launch file by running the following command
```
roslaunch opil_bpo bpo_service_v5.launch 
```
### Starting from docker container
To start the BPO service, you need to build the BPO docker container using the `Dockerfile`.
```
cd <your_catkin_workspace>/src/mod.sw.bpo/
docker build -t mod.sw.bpo .
```

You can launch the BPO service from:
  * docker image
```
docker run -it mod.sw.bpo bash
```
or you can use the docker-compose to up the container
```
docker-compose -f docker-compose_bpo.yaml up -d
```
