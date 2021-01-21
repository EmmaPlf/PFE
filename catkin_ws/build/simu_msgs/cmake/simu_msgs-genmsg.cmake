# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "simu_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Isimu_msgs:/home/user/catkin_ws/src/simu_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(simu_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_custom_target(_simu_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simu_msgs" "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg" NAME_WE)
add_custom_target(_simu_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simu_msgs" "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg" NAME_WE)
add_custom_target(_simu_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simu_msgs" "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_custom_target(_simu_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simu_msgs" "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg" NAME_WE)
add_custom_target(_simu_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simu_msgs" "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg" "simu_msgs/Altitude:std_msgs/Header:simu_msgs/ReferencePosition:simu_msgs/VehicleLength:simu_msgs/Speed:simu_msgs/PositionConfidenceEllipse:simu_msgs/ItsPduHeader"
)

get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg" NAME_WE)
add_custom_target(_simu_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simu_msgs" "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg" NAME_WE)
add_custom_target(_simu_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simu_msgs" "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg" "simu_msgs/Altitude:simu_msgs/PositionConfidenceEllipse"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simu_msgs
)
_generate_msg_cpp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simu_msgs
)
_generate_msg_cpp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simu_msgs
)
_generate_msg_cpp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simu_msgs
)
_generate_msg_cpp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg;/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simu_msgs
)
_generate_msg_cpp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simu_msgs
)
_generate_msg_cpp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simu_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(simu_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simu_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(simu_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(simu_msgs_generate_messages simu_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_cpp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_cpp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_cpp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_cpp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_cpp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_cpp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_cpp _simu_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simu_msgs_gencpp)
add_dependencies(simu_msgs_gencpp simu_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simu_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simu_msgs
)
_generate_msg_eus(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simu_msgs
)
_generate_msg_eus(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simu_msgs
)
_generate_msg_eus(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simu_msgs
)
_generate_msg_eus(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg;/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simu_msgs
)
_generate_msg_eus(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simu_msgs
)
_generate_msg_eus(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simu_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(simu_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simu_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(simu_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(simu_msgs_generate_messages simu_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_eus _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_eus _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_eus _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_eus _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_eus _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_eus _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_eus _simu_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simu_msgs_geneus)
add_dependencies(simu_msgs_geneus simu_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simu_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simu_msgs
)
_generate_msg_lisp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simu_msgs
)
_generate_msg_lisp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simu_msgs
)
_generate_msg_lisp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simu_msgs
)
_generate_msg_lisp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg;/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simu_msgs
)
_generate_msg_lisp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simu_msgs
)
_generate_msg_lisp(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simu_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(simu_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simu_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(simu_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(simu_msgs_generate_messages simu_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_lisp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_lisp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_lisp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_lisp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_lisp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_lisp _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_lisp _simu_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simu_msgs_genlisp)
add_dependencies(simu_msgs_genlisp simu_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simu_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simu_msgs
)
_generate_msg_nodejs(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simu_msgs
)
_generate_msg_nodejs(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simu_msgs
)
_generate_msg_nodejs(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simu_msgs
)
_generate_msg_nodejs(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg;/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simu_msgs
)
_generate_msg_nodejs(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simu_msgs
)
_generate_msg_nodejs(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simu_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(simu_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simu_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(simu_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(simu_msgs_generate_messages simu_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_nodejs _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_nodejs _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_nodejs _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_nodejs _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_nodejs _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_nodejs _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_nodejs _simu_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simu_msgs_gennodejs)
add_dependencies(simu_msgs_gennodejs simu_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simu_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs
)
_generate_msg_py(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs
)
_generate_msg_py(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs
)
_generate_msg_py(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs
)
_generate_msg_py(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg;/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs
)
_generate_msg_py(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs
)
_generate_msg_py(simu_msgs
  "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(simu_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(simu_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(simu_msgs_generate_messages simu_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_py _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_py _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/VehicleLength.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_py _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_py _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/simu_CAM.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_py _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/Altitude.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_py _simu_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/simu_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(simu_msgs_generate_messages_py _simu_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simu_msgs_genpy)
add_dependencies(simu_msgs_genpy simu_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simu_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simu_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simu_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(simu_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simu_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simu_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(simu_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simu_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simu_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(simu_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simu_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simu_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(simu_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simu_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(simu_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
