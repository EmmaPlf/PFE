#include "../../devel/include/etsi_msgs/CAM.h"
#include "ros/ros.h"

// Permet de récupérer les infos du message CAM
void messageCallback(const etsi_msgs::CAM::ConstPtr &msg) {
  ROS_INFO("I have received a message cam");
  //   ROS_INFO("/n count: [%d]", msg->header.seq);
  ROS_INFO("/n posX: [%ld]", msg->reference_position.longitude);
  ROS_INFO("/n posY: [%ld]", msg->reference_position.latitude);
  ROS_INFO("/n posZ: [%d]", msg->reference_position.altitude);
  ROS_INFO("/n confZ: [%d]", msg->reference_position.altitude.confidence);
  ROS_INFO("/n Acceleration: [%d]",
           msg->high_frequency_container.longitudinal_acceleration.value);
  ROS_INFO("/n accel Long Conf: [%d]",
           msg->high_frequency_container.longitudinal_acceleration.confidence);
  ROS_INFO("/n yaw rate: [%d]", msg->high_frequency_container.yaw_rate.value);
  ROS_INFO("/n yaw rate conf: [%d]",
           msg->high_frequency_container.yaw_rate.confidence);
}

int main(int argc, char **argv) {
  ROS_INFO("Sub on");
  ros::init(argc, argv, "subscriber_cam");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("topic_cam", 1000000, messageCallback);
  ros::spin();
  return 0;
}