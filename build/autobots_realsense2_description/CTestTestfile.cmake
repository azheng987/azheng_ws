# CMake generated Testfile for 
# Source directory: /home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_realsense2_description
# Build directory: /home/vipteam/azheng_ws/build/autobots_realsense2_description
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_autobots_realsense2_description_rostest_tests_test_d435_camera_model.test "/home/vipteam/azheng_ws/build/autobots_realsense2_description/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/vipteam/azheng_ws/build/autobots_realsense2_description/test_results/autobots_realsense2_description/rostest-tests_test_d435_camera_model.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_realsense2_description --package=autobots_realsense2_description --results-filename tests_test_d435_camera_model.xml --results-base-dir \"/home/vipteam/azheng_ws/build/autobots_realsense2_description/test_results\" /home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_realsense2_description/tests/test_d435_camera_model.test ")
set_tests_properties(_ctest_autobots_realsense2_description_rostest_tests_test_d435_camera_model.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_realsense2_description/CMakeLists.txt;16;add_rostest;/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_realsense2_description/CMakeLists.txt;0;")
subdirs("gtest")
