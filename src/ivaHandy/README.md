# ivaHandy

document and code for Handy arm include tutorials, mechanical files and ROS-related packages.

## Doc

Doc includes tutorials about how to build your own robot arm. Contents contain the whole process starting from
how to do assembly in Solidworks in order to make urdf generation easier to use MoveIt! setup assistant to build
your own robot arm MoveIt! package.

## mechanical

Mechanical includes 3DParts and Assembly two folders. 3DParts folder maintains all the files including Solidworks file,
3Dprinting file and drawing that belong to individual piece. Assembly holds models for the whole arm and each link.

## ros

ros folder keeps all ROS-related packages to the handy arm, which includes description, control, gazebo and MoveIt! package.
There are two versions of Handy, one is the normal model which the other one is mesh-simplified model. Each has the four above packages.

### dependencies

1. If you'd like to use finalarm_gazebo package, you should git clone balabala packages to your workspace since gazebo has dependencies on these packages if you want to load controllers in gazebo.

2. If you just need finalarm_control, finalarm_description and finalarm_moveit_config packages, in order to compile all packages out, you additionally need a package named dynamixel_motor which applies designed controllers for dynamixel motors.

### real world motion planning with Handy

Ensure that the current user is part of the `dialout` group. This command should display ```dialout``` in the options listed.
```bash
groups
```

If you get permission issues connecting to `/dev/ttyUSB0`, run the following and logout+login.

```bash
sudo usermod -aG dialout $USER
```

Turn on real-world Handy by pressing the switch located on the breadboard so that the dot is pushed down. The breadboard is located at Handy's base. See the circled area.
![IMG_2243](https://github.com/azheng987/azheng_ws/assets/53787993/dd0f6739-4662-44b3-9ee9-8d6ab33398a5)

Ensure you are in the root folder (azheng_ws). In a bash terminal, run the following commands:
```bash
source devel/setup.bash
catkin build

# start a node responsible for managing loaded controllers
roslaunch finalarm_control controller_manager.launch
```

In a new terminal, run the following commands:
```bash
source devel/setup.bash
catkin build

# load configuration for individual controller
roslaunch finalarm_control start_controller.launch

# publish integrated information of controllers and transformations between links
roslaunch finalarm_description robot_state_pub.launch
```

In a new terminal, run the following commands:
```bash
source devel/setup.bash
catkin build
# node for motion planning, collision checking, etc. jobs
roslaunch finalarm_moveit_config move_group.launch
```

In a new terminal, run the following commands:
```bash
source devel/setup.bash
catkin build
# rviz for visualization
roslaunch finalarm_moveit_config moveit_rviz.launch
```

An RViz window will open. Using the RViz window:
1. Ensure you are in "Interact" mode (top left button) and drag the visualization of Handy to the desired position. You can click on "Move Camera" (button to the right of the "Interact" button) and move the camera to help with this.
2. Ensure you are on the tab "Planning" under the header "MotionPlanning". This should already be open by default.
3. Click "Plan" to see the visualization of Handy's planned movement in rviz. (OPTIONAL)
4. Click "Plan & Execute" to plan Handy's movement and execute it on the real-world Handy arm!

See the below image.
![unnamed-1](https://github.com/azheng987/azheng_ws/assets/53787993/348879d8-c043-45f0-9a94-c314e733f2b0)

Operating Handy's Gripper (WIP, not operational yet)
1. Under "Planning Group", change the selection from "arm" to "gripper".
2. Under "Goal State", select "Open" or "Close".
3. Click "Plan" to see the visualization of Handy's planned movement in rviz. (OPTIONAL)
4. Click "Plan & Execute" to plan the movement of Handy's joints and execute it on the real-world Handy gripper!

See the below image.
![gripper control](https://github.com/azheng987/azheng_ws/assets/53787993/e12827f1-bf78-410a-9e84-d38cc7bb6d1c)


**IMPORTANT:** Remember to turn off Handy after use by pressing the switch on the breadboard.

You can also launch a file that you write for Handy to do something:
```bash
# launch the file you write for Handy to do something like picking object
roslaunch handy_experiment pick.launch
```

Note: You can run the above using `docker-compose` instead:

```bash
docker-compose up

# node for motion planning, collision checking, etc. jobs
roslaunch finalarm_moveit_config move_group.launch

# rviz for visualization
roslaunch finalarm_moveit_config moveit_rviz.launch
```

Read [docs/docker.md](docs/docker.md) for more details.

## launchfiles

Here's a list of launch files that can be tested without access to the physical robot.

```bash
# check for urdf loading
roslaunch finalarm_description display.launch
# check robot position topics
roslaunch finalarm_description gazebo.launch
roslaunch finalarm_gazebo robot_world.launch
roslaunch finalarm_gazebo robot_world.launch control_mode:=position
# check operation of robot
roslaunch finalarm_moveit_config demo.launch
# check gazebo and moveit operate together
roslaunch finalarm_gazebo robot_world_moveit.launch

roslaunch finalarm_simplified_description display.launch
roslaunch finalarm_simplified_description gazebo.launch
roslaunch finalarm_simplified_gazebo robot_world.launch
roslaunch finalarm_simplified_gazebo robot_world_urdf.launch
roslaunch finalarm_simplified_gazebo robot_world_xacro.launch
roslaunch finalarm_simplified_moveit_config demo.launch
roslaunch finalarm_simplified_gazebo robot_world_moveit.launch
```

These are useful for manual testing, at least until some form of automated testing is implemented.
