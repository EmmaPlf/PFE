#include "../../devel/include/ece_msgs/ecemsg.h"
#include "../../devel/include/etsi_msgs/CAM.h"
#include "../../devel/include/etsi_msgs/DENM.h"
#include "nav_msgs/Odometry.h"
#include "ros/ros.h"

#define ECE_FRAME_ID "/ece"
#define CAM_FRAME_ID "/cam"
#define PROTOCOL_VERSION 131 // EN 302 637-3 v1.3.1.
#define DENM_MSG_ID 1        // DENM
#define CAM_MSG_ID 2         // CAM
#define ECE_MSG_ID 8         // ECE
#define STATION_TYPE 5       // PassengerCar

class Vehicles {
private:
  int64_t longitude; // posX
  int64_t latitude;  // posY
  int32_t altitude;  // posZ perte de donnée par rapport à ROS
  int8_t velocity;   // vitesse
  int16_t yaw_rate;  // dénivelé ?

  ros::NodeHandle n;

  ros::Publisher pub_ece_C;
  ros::Publisher pub_DENM_C;
  ros::Publisher pub_CAM_C;
  ros::Publisher pub_ece_V;
  ros::Publisher pub_DENM_V;
  ros::Publisher pub_CAM_V;

  ros::Subscriber sub_ece_V;
  ros::Subscriber sub_DENM_V;
  ros::Subscriber sub_CAM_V;

public:
  Vehicles();
  ~Vehicles();

  // GETTERS
  int64_t getLongitude();
  int64_t getLatitude();
  int32_t getAltitude();
  int8_t getVelocity();
  int16_t getYawRate();
  ros::NodeHandle getNodeHandle();
  // Pub
  ros::Publisher getPubEce_C();
  ros::Publisher getPubDENM_C();
  ros::Publisher getPubCAM_C();
  ros::Publisher getPubEce_V();
  ros::Publisher getPubDENM_V();
  ros::Publisher getPubCAM_V();
  // Sub
  ros::Subscriber getSubEce_V();
  ros::Subscriber getSubDENM_V();
  ros::Subscriber getSubCAM_V();

  // SETTERS
  void setLongitude(int64_t longitude);
  void setLatitude(int64_t latitude);
  void setAltitude(int32_t altitude);
  void setVelocity(int8_t velocity);
  void setYawRate(int16_t yaw_rate);
  void setNodeHandle(ros::NodeHandle n);
  // Pub
  void setPubEce_C(ros::Publisher pub);
  void setPubDENM_C(ros::Publisher pub);
  void setPubCAM_C(ros::Publisher pub);
  void setPubEce_V(ros::Publisher pub);
  void setPubDENM_V(ros::Publisher pub);
  void setPubCAM_V(ros::Publisher pub);
  // Sub
  void setSubEce_V(ros::Subscriber sub);
  void setSubDENM_V(ros::Subscriber sub);
  void setSubCAM_V(ros::Subscriber sub);

  /// METHOD
  static void sub_ece_V_callback(const ece_msgs::ecemsg::ConstPtr &msg,
                                 Vehicles &v);
  static void sub_DENM_V_callback(const etsi_msgs::DENM::ConstPtr &msg,
                                  Vehicles &v);
  static void sub_CAM_V_callback(const etsi_msgs::CAM::ConstPtr &msg,
                                 Vehicles &v);

  uint8_t init_receive(const ece_msgs::ecemsg::ConstPtr &msg);
  uint8_t insert_receive(const ece_msgs::ecemsg::ConstPtr &msg);
  uint8_t desinsert_receive(const ece_msgs::ecemsg::ConstPtr &msg);
  uint8_t light_receive(const ece_msgs::ecemsg::ConstPtr &msg);
  uint8_t brake_receive(const ece_msgs::ecemsg::ConstPtr &msg);

  // Publish
  uint8_t publish_ece_msg_C(ece_msgs::ecemsg msg);
  uint8_t publish_DENM_msg_C(etsi_msgs::DENM msg);
  uint8_t publish_CAM_msg_C(etsi_msgs::CAM msg);

  uint8_t publish_ece_msg_V(ece_msgs::ecemsg msg);
  uint8_t publish_DENM_msg_V(etsi_msgs::DENM msg);
  uint8_t publish_CAM_msg_V(etsi_msgs::CAM msg);

  void odom_callback(const nav_msgs::Odometry::ConstPtr &msg);
};