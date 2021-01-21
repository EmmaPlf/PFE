#include "../../devel/include/etsi_msgs/DENM.h"
#include "ros/ros.h"

typedef struct navSat {
  double lat;
  double lon;
  float alt;
} navSat_t;

typedef struct eventTime {
  uint64_t detect;
  uint64_t ref;
  uint8_t term;
} eventTime_t;

typedef struct situation {
  bool has_situation;
  uint8_t info_qual;
  uint8_t cause;
  uint8_t sub_cause;
  bool linked_cause;
} situation_t;

typedef struct location {
  bool has_location;
  // traces
} location_t;

void denmCallback(const etsi_msgs::DENM::ConstPtr &msg) {

  for (int i = 0; i < msg->header.frame_id.length(); i++)
    ROS_INFO(" frame_id : [%c]", msg->header.frame_id[i]);
  ROS_INFO("\n protocole version: [%d]", msg->its_header.protocol_version);
  ROS_INFO("\n message_id: [%d]", msg->its_header.message_id);
  ROS_INFO("\n station_id: [%d]", msg->its_header.station_id);
}

int main(int argc, char **argv) {

  etsi_msgs::DENM denm;

  ros::init(argc, argv, "subscriber_denm");
  ros::NodeHandle n;
  // ros::Subscriber sub = n.subscribe<etsi_msgs::DENM>("topic_denm", 1000,
  // boost::bind(denmCallback, _1, etsi_msgs::DENM & denm));
  ros::Subscriber sub =
      n.subscribe<etsi_msgs::DENM>("topic_denm", 1000, denmCallback);
  ros::spin();
  return 0;
}

// A DENM with a specific actionID may be stored in the receiving ITS-S message
// table as long as the timer T_R_Validity is not expired. When the timer
// T_R_Validity expires, all data related to the corresponding actionID
// (including the actionID entry) may be deleted from the receiving ITS-S
// message table.

// At a point in time, any stored DENM in the receiving ITS-S message table may
// be associated with one of three states:

// The state of a DENM indicates the most updated status of received DENMs of
// the same actionID.