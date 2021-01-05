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

// Permet de récupérer les infos du message CAM
void messageCallback(const etsi_msgs::CAM::ConstPtr &msg) {
  ROS_INFO("I have received a message cam");
  ROS_INFO("/nstations type : [%d]", msg->station_type.value);
}

int main(int argc, char **argv) {
  ROS_INFO("Sub on");
  ros::init(argc, argv, "subscriber_cam");
  ros::NodeHandle n;
  ros::Subscriber sub =
      n.subscribe("topic_cam", 1000000000000, messageCallback);
  ros::spin();
  return 0;
}