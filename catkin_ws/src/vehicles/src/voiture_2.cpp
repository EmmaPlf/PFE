#include "../../devel/include/ece_msgs/ecemsg.h"
#include "../include/Vehicles.h"
#include "ros/ros.h"
#include <iostream>
#include <sstream>

// Paramètres à modifier selon la station
#define STATION_ID 2   // 1 ID par station

void ece_data(ece_msgs::ecemsg &msg, int count);

int main(int argc, char **argv) {

  ece_msgs::ecemsg msg;
  int32_t count = 0;

  ros::init(argc, argv, "voiture_2");
  ros::NodeHandle n;

  ros::Publisher pub = n.advertise<ece_msgs::ecemsg>("controler_ece", 1000);
  ros::Rate loop_rate(10);

  while (pub.getNumSubscribers() < 1) {
    // wait for a connection to publisher
    // you can do whatever you like here or simply do nothing
  }

  ece_data(msg, count);
  pub.publish(msg);

  while (ros::ok()) {

    ros::spinOnce();
    loop_rate.sleep();
    ++count;
  }

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
  msg.header.frame_id = ECE_FRAME_ID;      // string

  // ItsPduHeader ::= SEQUENCE {protocolVersion INTEGER{currentVersion(1)}
  // (0..255), messageID INTEGER{ denm(1), cam(2), poi(3), spat(4), map(5),
  // ivi(6), ev-rsr(7)} (0..255),
  // stationID StationID }
  msg.its_header.protocol_version = PROTOCOL_VERSION; // uint8_t
  msg.its_header.message_id = ECE_MSG_ID;                 // uint8_t
  // StationID ::= INTEGER(0..4294967295)
  msg.its_header.station_id = STATION_ID; // uint32_t

  msg.basic_container.phase.value = 0;
  msg.basic_container.ID_exp = 2;
  msg.basic_container.ID_dest = 0;

  // Destination actuelle
  msg.platoon.reference_position.longitude = 2;
  msg.platoon.reference_position.latitude = 2;
  msg.platoon.reference_position.altitude.value = 0;

  // Position voiture
  msg.actual_position.longitude = 100;
  msg.actual_position.latitude = 100;
  msg.actual_position.altitude.value = 0;
}