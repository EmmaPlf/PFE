# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "etsi_msgs: 34 messages, 0 services")

set(MSG_I_FLAGS "-Ietsi_msgs:/home/user/catkin_ws/src/etsi_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(etsi_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg" "std_msgs/Header:etsi_msgs/ExteriorLights:etsi_msgs/BasicVehicleContainerHighFrequency:etsi_msgs/CurvatureCalculationMode:etsi_msgs/ReferencePosition:etsi_msgs/ItsPduHeader:etsi_msgs/DeltaReferencePosition:etsi_msgs/PathPoint:etsi_msgs/Heading:etsi_msgs/AccelerationControl:etsi_msgs/LongitudinalAcceleration:etsi_msgs/PathDeltaTime:etsi_msgs/Speed:etsi_msgs/BasicVehicleContainerLowFrequency:etsi_msgs/VehicleLength:etsi_msgs/Altitude:etsi_msgs/Curvature:etsi_msgs/PositionConfidenceEllipse:etsi_msgs/DriveDirection:etsi_msgs/PathHistory:etsi_msgs/VehicleRole:etsi_msgs/YawRate:etsi_msgs/StationType:etsi_msgs/VehicleWidth"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg" "etsi_msgs/PathDeltaTime:etsi_msgs/CauseCode:etsi_msgs/EventPoint:etsi_msgs/InformationQuality:etsi_msgs/DeltaReferencePosition"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg" "etsi_msgs/PathDeltaTime:etsi_msgs/DeltaReferencePosition"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg" "etsi_msgs/PathPoint:etsi_msgs/PathDeltaTime:etsi_msgs/DeltaReferencePosition"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg" "etsi_msgs/PathDeltaTime:etsi_msgs/VehicleRole:etsi_msgs/ExteriorLights:etsi_msgs/DeltaReferencePosition:etsi_msgs/PathPoint:etsi_msgs/PathHistory"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg" "etsi_msgs/PathDeltaTime:etsi_msgs/Speed:etsi_msgs/PathHistory:etsi_msgs/DeltaReferencePosition:etsi_msgs/PathPoint:etsi_msgs/Heading"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg" "etsi_msgs/PathDeltaTime:etsi_msgs/InformationQuality:etsi_msgs/DeltaReferencePosition"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg" "etsi_msgs/RelevanceDistance:etsi_msgs/PositionConfidenceEllipse:etsi_msgs/RelevanceTrafficDirection:etsi_msgs/StationType:etsi_msgs/Altitude:etsi_msgs/ReferencePosition:etsi_msgs/ActionID"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg" "etsi_msgs/Altitude:etsi_msgs/PositionConfidenceEllipse"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg" "etsi_msgs/PathHistory:etsi_msgs/ManagementContainer:etsi_msgs/PositionConfidenceEllipse:etsi_msgs/RelevanceTrafficDirection:etsi_msgs/PathDeltaTime:etsi_msgs/LocationContainer:etsi_msgs/Speed:etsi_msgs/DeltaReferencePosition:etsi_msgs/RelevanceDistance:etsi_msgs/StationType:etsi_msgs/PathPoint:etsi_msgs/Altitude:etsi_msgs/InformationQuality:etsi_msgs/ActionID:etsi_msgs/ReferencePosition:etsi_msgs/CauseCode:etsi_msgs/Heading:etsi_msgs/ItsPduHeader:etsi_msgs/EventPoint:etsi_msgs/SituationContainer:std_msgs/Header"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg" "etsi_msgs/Curvature:etsi_msgs/Speed:etsi_msgs/CurvatureCalculationMode:etsi_msgs/VehicleWidth:etsi_msgs/VehicleLength:etsi_msgs/DriveDirection:etsi_msgs/AccelerationControl:etsi_msgs/Heading:etsi_msgs/YawRate:etsi_msgs/LongitudinalAcceleration"
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg" NAME_WE)
add_custom_target(_etsi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etsi_msgs" "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg;/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg;/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_cpp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(etsi_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(etsi_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(etsi_msgs_generate_messages etsi_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_cpp _etsi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(etsi_msgs_gencpp)
add_dependencies(etsi_msgs_gencpp etsi_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS etsi_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg;/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg;/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)
_generate_msg_eus(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(etsi_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(etsi_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(etsi_msgs_generate_messages etsi_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_eus _etsi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(etsi_msgs_geneus)
add_dependencies(etsi_msgs_geneus etsi_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS etsi_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg;/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg;/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)
_generate_msg_lisp(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(etsi_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(etsi_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(etsi_msgs_generate_messages etsi_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_lisp _etsi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(etsi_msgs_genlisp)
add_dependencies(etsi_msgs_genlisp etsi_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS etsi_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg;/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg;/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)
_generate_msg_nodejs(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(etsi_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(etsi_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(etsi_msgs_generate_messages etsi_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_nodejs _etsi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(etsi_msgs_gennodejs)
add_dependencies(etsi_msgs_gennodejs etsi_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS etsi_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg;/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg;/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg;/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg;/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg;/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg;/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg;/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg;/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg;/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg;/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg;/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg;/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg;/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg;/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)
_generate_msg_py(etsi_msgs
  "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(etsi_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(etsi_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(etsi_msgs_generate_messages etsi_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CAM.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/SituationContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DeltaReferencePosition.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ExteriorLights.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathPoint.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathHistory.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerLowFrequency.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ActionID.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LongitudinalAcceleration.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Curvature.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleWidth.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceDistance.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/AccelerationControl.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/LocationContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/EventPoint.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ManagementContainer.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleLength.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PositionConfidenceEllipse.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ReferencePosition.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CurvatureCalculationMode.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DriveDirection.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/YawRate.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Heading.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/CauseCode.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/VehicleRole.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/ItsPduHeader.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Altitude.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/InformationQuality.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/DENM.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/StationType.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/BasicVehicleContainerHighFrequency.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/Speed.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/RelevanceTrafficDirection.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/etsi_msgs/msg/PathDeltaTime.msg" NAME_WE)
add_dependencies(etsi_msgs_generate_messages_py _etsi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(etsi_msgs_genpy)
add_dependencies(etsi_msgs_genpy etsi_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS etsi_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etsi_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(etsi_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etsi_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(etsi_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etsi_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(etsi_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etsi_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(etsi_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etsi_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(etsi_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
