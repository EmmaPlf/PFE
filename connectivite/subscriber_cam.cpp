#include "ros/ros.h"
#include "messages_cam/StationType.h"
#include "messages_cam/ReferencePosition.h"
#include "messages_cam/BasicVehicleContainerHighFrequency.h"
#include "messages_cam/BasicVehicleContainerLowFrequency.h"
#include "messages_cam/PositionConfidenceEllipse.h"
#include "messages_cam/Altitude.h"
#include "messages_cam/Speed.h"
#include "messages_cam/DriveDirection.h"
#include "messages_cam/VehicleLength.h"
#include "messages_cam/VehicleWidth.h"
#include "messages_cam/LongitudinalAcceleration.h"
#include "messages_cam/Curvature.h"
#include "messages_cam/CurvatureCalculationMode.h"
#include "messages_cam/YawRate.h"
#include "messages_cam/AccelerationControl.h"
#include "messages_cam/VehicleRole.h"
#include "messages_cam/ExteriorLights.h"
#include "messages_cam/PathHistory.h"
#include "messages_cam/PathPoint.h"
#include "messages_cam/CAM.h"
 
void messageCallback(const messages_cam::CAM::ConstPtr& msg) 
{
  ROS_INFO("I have received a message cam stations type : [%d]", msg.station_type.value);
}
 
int main(int argc, char **argv) 
{
  ros::init(argc, argv, "subscriber_cam");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("topic_cam", 1000, messageCallback);
  ros::spin();
  return 0;
}