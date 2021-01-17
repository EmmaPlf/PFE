#include "../../devel/include/ece_msgs/ecemsg.h"
#include "../../devel/include/etsi_msgs/CAM.h"
#include "../include/Vehicles.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "ros/ros.h"
#include <cmath>
#include <iostream>
#include <sstream>

// Paramètres à modifier selon la station
#define STATION_ID 1 // 1 ID par station

void ece_data(ece_msgs::ecemsg &msg, int count);
void cam_data(etsi_msgs::CAM &msg, int count, int64_t longitude,
              int64_t latitude, int32_t altitude, uint8_t confidenceAlt,
              int8_t velocity, uint8_t confidenceVelocityLong, int16_t yaw_rate,
              uint8_t yaw_rate_confidence);

int main(int argc, char **argv) {

  int32_t count = 0;

  // INIT
  ros::init(argc, argv, "voiture_1");

  // TODO Changer quand on aura plusieurs vehicules
  Vehicles v1 = Vehicles("/odom");

  ros::spin();

  ros::Rate loop_rate(10);

  //   while (pub.getNumSubscribers() < 1) {
  //     // wait for a connection to publisher
  //     // you can do whatever you like here or simply do nothing
  //   }

  //   ece_data(msg, count);
  //   ++count;
  //   pub.publish(msg);

  // cam_data(msg, count, longitude, latitude, altitude, confidenceAlt,
  // velocity,
  //         confidenceVelocityLong, yaw_rate, yaw_rate_confidence);
  //++count;
  // pub.publish(msg);

  //   while (ros::ok()) {

  //     ros::spinOnce();
  loop_rate.sleep();
  //   }

  return 0;
}

void ece_data(ece_msgs::ecemsg &msg, int count) {

  /*  # Package std_msgs
     # Standard metadata for higher-level stamped data types.
     # This is generally used to communicate timestamped data
     # in a particular coordinate frame.
     #
     # sequence ID: consecutively increasing ID
     uint32 seq
     # Two-integer timestamp that is expressed as:
     # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is
    called 'secs') # * stamp.nsec: nanoseconds since stamp_secs (in Python the
    variable is called 'nsecs') # time-handling sugar is provided by the client
    library time stamp # Frame this data is associated with string frame_id
 */
  msg.header.seq = count;              // uint32
  msg.header.stamp = ros::Time::now(); // time
  msg.header.frame_id = ECE_FRAME_ID;  // string

  // ItsPduHeader ::= SEQUENCE {protocolVersion INTEGER{currentVersion(1)}
  // (0..255), messageID INTEGER{ denm(1), cam(2), poi(3), spat(4), map(5),
  // ivi(6), ev-rsr(7)} (0..255),
  // stationID StationID }
  msg.its_header.protocol_version = PROTOCOL_VERSION; // uint8_t
  msg.its_header.message_id = ECE_MSG_ID;             // uint8_t
  // StationID ::= INTEGER(0..4294967295)
  msg.its_header.station_id = STATION_ID; // uint32_t

  msg.basic_container.phase.value = 0;
  msg.basic_container.ID_exp = 1;
  msg.basic_container.ID_dest = 0;

  // Destination actuelle
  msg.platoon.reference_position.longitude = 1;
  msg.platoon.reference_position.latitude = 1;
  msg.platoon.reference_position.altitude.value = 0;

  // Position voiture
  msg.actual_position.longitude = 50;
  msg.actual_position.latitude = 50;
  msg.actual_position.altitude.value = 0;
}

// TODO : implémenter dans Vehicles
void cam_data(etsi_msgs::CAM &msg, int count, int64_t longitude,
              int64_t latitude, int32_t altitude, uint8_t confidenceAlt,
              int8_t velocity, uint8_t confidenceVelocityLong, int16_t yaw_rate,
              uint8_t yaw_rate_confidence) {

  msg.generation_delta_time = 0; // milliseconds since 2004 modulo 2^16 uint16_t

  /*  # Package std_msgs
      # Standard metadata for higher-level stamped data types.
      # This is generally used to communicate timestamped data
      # in a particular coordinate frame.
      #
      # sequence ID: consecutively increasing ID
      uint32 seq
      # Two-integer timestamp that is expressed as:
      # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is
     called 'secs') # * stamp.nsec: nanoseconds since stamp_secs (in Python the
     variable is called 'nsecs') # time-handling sugar is provided by the client
     library time stamp # Frame this data is associated with string frame_id
  */
  msg.header.seq = count;              // uint32
  msg.header.stamp = ros::Time::now(); // time
  msg.header.frame_id = CAM_FRAME_ID;  // string

  msg.its_header.protocol_version = 0;
  msg.its_header.message_id = CAM_MSG_ID;
  msg.its_header.station_id = STATION_ID;

  msg.station_type.value = 10;

  // Will be ignored
  //   msg.reference_position.position_confidence.semi_major_confidence = 0;
  //   msg.reference_position.position_confidence.semi_minor_confidence = 0;
  //   msg.reference_position.position_confidence.semi_major_orientation = 0;

  msg.reference_position.longitude = longitude;     //
  msg.reference_position.latitude = latitude;       //
  msg.reference_position.altitude.value = altitude; // Convertir en 0.01m
  msg.reference_position.altitude.confidence = 15;  // unavailable

  msg.high_frequency_container.speed.value =
      velocity; // Ne pas oublier : convertir dans controler
  msg.high_frequency_container.speed.confidence = 0; // A VOIR

  msg.high_frequency_container.drive_direction.value = 0; // TODO

  msg.high_frequency_container.vehicle_length.value = 0;                 // TODO
  msg.high_frequency_container.vehicle_length.confidence_indication = 0; // TODO
  msg.high_frequency_container.vehicle_width.value = 0;                  // TODO

  msg.high_frequency_container.longitudinal_acceleration.value =
      0; // velocityLong;
  msg.high_frequency_container.longitudinal_acceleration.confidence =
      confidenceVelocityLong;

  msg.high_frequency_container.curvature.value = 0;
  msg.high_frequency_container.curvature.confidence = 0;
  msg.high_frequency_container.curvature_calculation_mode.value = 0;

  msg.high_frequency_container.yaw_rate.value = yaw_rate;
  msg.high_frequency_container.yaw_rate.confidence = yaw_rate_confidence;

  msg.high_frequency_container.acceleration_control.value = 0;
  msg.high_frequency_container.has_acceleration_control = 0;

  msg.low_frequency_container.vehicle_role.value = 0;
  msg.low_frequency_container.exterior_lights.value = 0;
  // msg.low_frequency_container.path_history.points.path_position = 0;
  // msg.low_frequency_container.path_history.points.path_delta_time = 0;
}