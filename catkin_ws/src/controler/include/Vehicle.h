#include "../../devel/include/ece_msgs/ecemsg.h"
#include "../../devel/include/etsi_msgs/CAM.h"
#include "../../devel/include/etsi_msgs/DENM.h"
#include "Position.h"
#include "ros/ros.h"

class Vehicle {
private:
  uint8_t id;
  Position dest;
  Position actual_pos;
  int8_t speed;
  uint8_t has_platoon;
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
  Vehicle();
  Vehicle(uint8_t id, Position dest, Position actual_pos, int8_t speed,
          uint8_t has_platoon);
  ~Vehicle();

  /// GET
  uint8_t getId();
  Position getDest();
  Position getActualPos();
  uint8_t getHasPlatoon();
  int8_t getSpeed();
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

  /// SET
  void setId(uint8_t id);
  void setDest(Position dest);
  void setActualPos(Position actual_pos);
  void setHasPlatoon(uint8_t has_platoon);
  void setSpeed(int8_t speed);
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
                                 Vehicle &c);
  static void sub_DENM_V_callback(const etsi_msgs::DENM::ConstPtr &msg,
                                  Vehicle &c);
  static void sub_CAM_V_callback(const etsi_msgs::CAM::ConstPtr &msg,
                                 Vehicle &c);

  uint8_t init_receive(ece_msgs::ecemsg msg);
  uint8_t insert_receive(ece_msgs::ecemsg msg);
  uint8_t desinsert_receive(ece_msgs::ecemsg msg);
  uint8_t light_receive(ece_msgs::ecemsg msg);
  uint8_t brake_receive(ece_msgs::ecemsg msg);

  // Publish
  uint8_t publish_ece_msg_C(ece_msgs::ecemsg msg);
  uint8_t publish_DENM_msg_C(etsi_msgs::DENM msg);
  uint8_t publish_CAM_msg_C(etsi_msgs::CAM msg);

  uint8_t publish_ece_msg_V(ece_msgs::ecemsg msg);
  uint8_t publish_DENM_msg_V(etsi_msgs::DENM msg);
  uint8_t publish_CAM_msg_V(etsi_msgs::CAM msg);
};
