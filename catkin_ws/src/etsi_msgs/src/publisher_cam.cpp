#include "../../devel/include/etsi_msgs/AccelerationControl.h"
#include "../../devel/include/etsi_msgs/Altitude.h"
#include "../../devel/include/etsi_msgs/BasicVehicleContainerHighFrequency.h"
#include "../../devel/include/etsi_msgs/BasicVehicleContainerLowFrequency.h"
#include "../../devel/include/etsi_msgs/CAM.h"
#include "../../devel/include/etsi_msgs/Curvature.h"
#include "../../devel/include/etsi_msgs/CurvatureCalculationMode.h"
#include "../../devel/include/etsi_msgs/DriveDirection.h"
#include "../../devel/include/etsi_msgs/ExteriorLights.h"
#include "../../devel/include/etsi_msgs/LongitudinalAcceleration.h"
#include "../../devel/include/etsi_msgs/PathHistory.h"
#include "../../devel/include/etsi_msgs/PathPoint.h"
#include "../../devel/include/etsi_msgs/PositionConfidenceEllipse.h"
#include "../../devel/include/etsi_msgs/ReferencePosition.h"
#include "../../devel/include/etsi_msgs/Speed.h"
#include "../../devel/include/etsi_msgs/StationType.h"
#include "../../devel/include/etsi_msgs/VehicleLength.h"
#include "../../devel/include/etsi_msgs/VehicleRole.h"
#include "../../devel/include/etsi_msgs/VehicleWidth.h"
#include "../../devel/include/etsi_msgs/YawRate.h"
#include "ros/ros.h"
#include <sstream>
//// PATHS ET PLUGIN
/// ERROR INVOK
/// ERROR CATKIN

int main(int argc, char **argv) {
  ROS_INFO("Pub on");
  ros::init(argc, argv, "publisher_cam");
  ros::NodeHandle n;
  ros::Publisher pub = n.advertise<etsi_msgs::CAM>("topic_cam", 1000000000000);
  ros::Rate loop_rate(10);

  // std_msgs::Header header; ////// ERREUR

  etsi_msgs::ItsPduHeader its_header;

  uint16_t generation_delta_time; // milliseconds since 2004 modulo 2^16

  etsi_msgs::StationType station_type;

  etsi_msgs::ReferencePosition reference_position;
  etsi_msgs::PositionConfidenceEllipse position_confidence;
  etsi_msgs::Altitude altitude;

  etsi_msgs::BasicVehicleContainerHighFrequency high_frequency_container;
  etsi_msgs::Speed speed;
  etsi_msgs::DriveDirection drive_direction;
  etsi_msgs::VehicleLength vehicle_length;
  etsi_msgs::VehicleWidth vehicle_width;
  etsi_msgs::LongitudinalAcceleration longitudinal_acceleration;
  etsi_msgs::Curvature curvature;
  etsi_msgs::CurvatureCalculationMode curvature_calculation_mode;
  etsi_msgs::YawRate yaw_rate;
  etsi_msgs::AccelerationControl acceleration_control;

  etsi_msgs::BasicVehicleContainerLowFrequency low_frequency_container;
  etsi_msgs::VehicleRole vehicle_role;
  etsi_msgs::ExteriorLights exterior_lights;
  etsi_msgs::PathHistory path_history;
  // etsi_msgs::PathPoint points;

  etsi_msgs::CAM CAM;

  //   header.value = 0;
  //   header.confidence = 0;

  its_header.protocol_version = 0;
  its_header.message_id = 0;
  its_header.station_id = 0;

  station_type.value = 10;

  position_confidence.semi_major_confidence = 0;
  position_confidence.semi_minor_confidence = 0;
  position_confidence.semi_major_orientation = 0;
  altitude.value = 0;
  altitude.confidence = 0;
  reference_position.latitude = 0;
  reference_position.longitude = 0;
  reference_position.position_confidence = position_confidence;
  reference_position.altitude = altitude;

  speed.value = 0;
  speed.confidence = 0;
  drive_direction.value = 0;
  vehicle_length.value = 0;
  vehicle_length.confidence_indication = 0;
  vehicle_width.value = 0;
  longitudinal_acceleration.value = 0;
  longitudinal_acceleration.confidence = 0;
  curvature.value = 0;
  curvature.confidence = 0;
  curvature_calculation_mode.value = 0;
  yaw_rate.value = 0;
  yaw_rate.confidence = 0;
  acceleration_control.value = 0;
  high_frequency_container.speed = speed;
  high_frequency_container.drive_direction = drive_direction;
  high_frequency_container.vehicle_length = vehicle_length;
  high_frequency_container.vehicle_width = vehicle_width;
  high_frequency_container.longitudinal_acceleration =
      longitudinal_acceleration;
  high_frequency_container.curvature = curvature;
  high_frequency_container.yaw_rate = yaw_rate;
  high_frequency_container.has_acceleration_control = 0;
  high_frequency_container.acceleration_control = acceleration_control;

  vehicle_role.value = 0;
  exterior_lights.value = 0;
  //   points.path_position = 0;
  //   points.path_delta_time = 0;
  //   path_history.points = points = 0;
  low_frequency_container.vehicle_role = vehicle_role;
  low_frequency_container.exterior_lights = exterior_lights;
  low_frequency_container.path_history = path_history;

  CAM.reference_position = reference_position;
  CAM.high_frequency_container = high_frequency_container;
  CAM.generation_delta_time = generation_delta_time;
  CAM.low_frequency_container = low_frequency_container;
  CAM.station_type = station_type;
  // CAM.header = header;
  CAM.its_header = its_header;

  while (ros::ok()) {
    pub.publish(CAM);
    ros::spinOnce();
    ROS_INFO("Publish");
    loop_rate.sleep();
  }

  return 0;
}