# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ece_msgs: 15 messages, 0 services")

set(MSG_I_FLAGS "-Iece_msgs:/home/user/catkin_ws/src/ece_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ece_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg" "ece_msgs/VitesseInterdistance:ece_msgs/Platoon:ece_msgs/IDs:ece_msgs/Speed:ece_msgs/ReferencePosition"
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg" "ece_msgs/VitesseInterdistance:ece_msgs/ReferencePosition:ece_msgs/Speed:ece_msgs/IDs"
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg" "ece_msgs/VitesseInterdistance:ece_msgs/BasicContainer:ece_msgs/FreinageUrgence:ece_msgs/Phase:ece_msgs/Feu:ece_msgs/IDs:ece_msgs/ReferencePosition:ece_msgs/Speed:ece_msgs/StationType:ece_msgs/Desinsertion:ece_msgs/Insertion:std_msgs/Header:ece_msgs/Platoon:ece_msgs/ItsPduHeader:ece_msgs/Init"
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg" "ece_msgs/ReferencePosition"
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg" "ece_msgs/Phase:ece_msgs/StationType"
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg" "ece_msgs/Speed:ece_msgs/ReferencePosition"
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg" "ece_msgs/Speed"
)

get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg" NAME_WE)
add_custom_target(_ece_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ece_msgs" "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg;/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg;/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg;/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg;/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg;/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg;/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/ece_msgs/msg/Init.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg;/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)
_generate_msg_cpp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(ece_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ece_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ece_msgs_generate_messages ece_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_cpp _ece_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ece_msgs_gencpp)
add_dependencies(ece_msgs_gencpp ece_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ece_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg;/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg;/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg;/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg;/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg;/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg;/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/ece_msgs/msg/Init.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg;/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)
_generate_msg_eus(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(ece_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ece_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ece_msgs_generate_messages ece_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_eus _ece_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ece_msgs_geneus)
add_dependencies(ece_msgs_geneus ece_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ece_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg;/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg;/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg;/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg;/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg;/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg;/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/ece_msgs/msg/Init.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg;/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)
_generate_msg_lisp(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(ece_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ece_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ece_msgs_generate_messages ece_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_lisp _ece_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ece_msgs_genlisp)
add_dependencies(ece_msgs_genlisp ece_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ece_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg;/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg;/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg;/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg;/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg;/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg;/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/ece_msgs/msg/Init.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg;/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)
_generate_msg_nodejs(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ece_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ece_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ece_msgs_generate_messages ece_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_nodejs _ece_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ece_msgs_gennodejs)
add_dependencies(ece_msgs_gennodejs ece_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ece_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg;/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg;/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg;/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg;/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg;/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg;/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg;/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg;/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/ece_msgs/msg/Init.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg;/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)
_generate_msg_py(ece_msgs
  "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg;/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(ece_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ece_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ece_msgs_generate_messages ece_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/IDs.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Feu.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Init.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Platoon.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ecemsg.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Insertion.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/FreinageUrgence.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/BasicContainer.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Phase.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/Desinsertion.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/VitesseInterdistance.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ece_msgs/msg/StationType.msg" NAME_WE)
add_dependencies(ece_msgs_generate_messages_py _ece_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ece_msgs_genpy)
add_dependencies(ece_msgs_genpy ece_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ece_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ece_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ece_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ece_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ece_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ece_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ece_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ece_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ece_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ece_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ece_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
