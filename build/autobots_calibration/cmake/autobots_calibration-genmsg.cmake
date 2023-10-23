# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "autobots_calibration: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iautobots_calibration:/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(autobots_calibration_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg" NAME_WE)
add_custom_target(_autobots_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autobots_calibration" "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg" NAME_WE)
add_custom_target(_autobots_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autobots_calibration" "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(autobots_calibration
  "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autobots_calibration
)
_generate_msg_cpp(autobots_calibration
  "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autobots_calibration
)

### Generating Services

### Generating Module File
_generate_module_cpp(autobots_calibration
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autobots_calibration
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(autobots_calibration_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(autobots_calibration_generate_messages autobots_calibration_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg" NAME_WE)
add_dependencies(autobots_calibration_generate_messages_cpp _autobots_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg" NAME_WE)
add_dependencies(autobots_calibration_generate_messages_cpp _autobots_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autobots_calibration_gencpp)
add_dependencies(autobots_calibration_gencpp autobots_calibration_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autobots_calibration_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(autobots_calibration
  "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autobots_calibration
)
_generate_msg_eus(autobots_calibration
  "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autobots_calibration
)

### Generating Services

### Generating Module File
_generate_module_eus(autobots_calibration
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autobots_calibration
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(autobots_calibration_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(autobots_calibration_generate_messages autobots_calibration_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg" NAME_WE)
add_dependencies(autobots_calibration_generate_messages_eus _autobots_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg" NAME_WE)
add_dependencies(autobots_calibration_generate_messages_eus _autobots_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autobots_calibration_geneus)
add_dependencies(autobots_calibration_geneus autobots_calibration_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autobots_calibration_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(autobots_calibration
  "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autobots_calibration
)
_generate_msg_lisp(autobots_calibration
  "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autobots_calibration
)

### Generating Services

### Generating Module File
_generate_module_lisp(autobots_calibration
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autobots_calibration
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(autobots_calibration_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(autobots_calibration_generate_messages autobots_calibration_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg" NAME_WE)
add_dependencies(autobots_calibration_generate_messages_lisp _autobots_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg" NAME_WE)
add_dependencies(autobots_calibration_generate_messages_lisp _autobots_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autobots_calibration_genlisp)
add_dependencies(autobots_calibration_genlisp autobots_calibration_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autobots_calibration_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(autobots_calibration
  "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autobots_calibration
)
_generate_msg_nodejs(autobots_calibration
  "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autobots_calibration
)

### Generating Services

### Generating Module File
_generate_module_nodejs(autobots_calibration
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autobots_calibration
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(autobots_calibration_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(autobots_calibration_generate_messages autobots_calibration_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg" NAME_WE)
add_dependencies(autobots_calibration_generate_messages_nodejs _autobots_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg" NAME_WE)
add_dependencies(autobots_calibration_generate_messages_nodejs _autobots_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autobots_calibration_gennodejs)
add_dependencies(autobots_calibration_gennodejs autobots_calibration_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autobots_calibration_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(autobots_calibration
  "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autobots_calibration
)
_generate_msg_py(autobots_calibration
  "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autobots_calibration
)

### Generating Services

### Generating Module File
_generate_module_py(autobots_calibration
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autobots_calibration
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(autobots_calibration_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(autobots_calibration_generate_messages autobots_calibration_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraExtrinsics.msg" NAME_WE)
add_dependencies(autobots_calibration_generate_messages_py _autobots_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vipteam/azheng_ws/src/pick-and-place/ros/autobots_calibration/msg/CameraStatus.msg" NAME_WE)
add_dependencies(autobots_calibration_generate_messages_py _autobots_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autobots_calibration_genpy)
add_dependencies(autobots_calibration_genpy autobots_calibration_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autobots_calibration_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autobots_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autobots_calibration
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(autobots_calibration_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autobots_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autobots_calibration
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(autobots_calibration_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autobots_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autobots_calibration
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(autobots_calibration_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autobots_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autobots_calibration
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(autobots_calibration_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autobots_calibration)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autobots_calibration\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autobots_calibration
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(autobots_calibration_generate_messages_py std_msgs_generate_messages_py)
endif()
