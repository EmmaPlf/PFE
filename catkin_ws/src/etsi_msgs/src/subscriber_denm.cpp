#include "../../devel/include/etsi_msgs/DENM.h"
#include "ros/ros.h"

void messageCallback(const etsi_msgs::DENM::ConstPtr &msg) {
  ROS_INFO("I have received a message denm : count : [%d]", msg->header.seq);
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "subscriber_denm");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("topic_denm", 1000, messageCallback);
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