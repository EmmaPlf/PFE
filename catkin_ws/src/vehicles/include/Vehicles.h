#include "../../devel/include/ece_msgs/ecemsg.h"
#include "../../devel/include/etsi_msgs/CAM.h"
#include "../../devel/include/etsi_msgs/DENM.h"
#include "Platoon.h"
#include "nav_msgs/Odometry.h"
#include "ros/ros.h"

#define ECE_FRAME_ID "/ece"
#define CAM_FRAME_ID "/cam"
#define PROTOCOL_VERSION 131 // EN 302 637-3 v1.3.1.
#define DENM_MSG_ID 1        // DENM
#define CAM_MSG_ID 2         // CAM
#define ECE_MSG_ID 8         // ECE
#define STATION_TYPE 5       // PassengerCar
#define ID_CONTROLER 0
#define ID_VEHICULE_1 1
#define ID_VEHICULE_2 2
#define ID_VEHICULE_3 3
#define INIT_PHASE 0
#define INSERT_PHASE 1
#define DESINSERT_PHASE 2
#define LIGHT_PHASE 3
#define BRAKE_PHASE 4

class Vehicles {

private:
  Position actual_pos;
  Position dest;
  int8_t velocity;
  int16_t yaw_rate; // dénivelé ?
  uint32_t station_id;
  uint64_t count;
  bool has_platoon;
  Platoon platoon;

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
  ros::Subscriber sub_odom;

public:
  Vehicles(char *odom_topic, uint32_t station_id);
  ~Vehicles();

  // GETTERS
  Position getDest();
  Position getActualPos();
  Platoon getPlatoon();
  int8_t getVelocity();
  int16_t getYawRate();
  uint32_t getStationId();
  uint64_t getCount();
  ros::NodeHandle getNodeHandle();
  bool getHasPlatoon();

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
  void setDest(Position dest);
  void setActualPos(Position actual_pos);
  void setVelocity(int8_t velocity);
  void setYawRate(int16_t yaw_rate);
  void setNodeHandle(ros::NodeHandle n);
  void setStationId(uint32_t station_id);
  void setCount(uint64_t count);
  void setPlatoon(Platoon platoon);
  void setHasPlatoon(bool has_platoon);

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

  /// CALL BACK

  static void sub_ece_V_callback(const ece_msgs::ecemsg::ConstPtr &msg,
                                 Vehicles *v);
  static void sub_DENM_V_callback(const etsi_msgs::DENM::ConstPtr &msg,
                                  Vehicles *v);
  static void sub_CAM_V_callback(const etsi_msgs::CAM::ConstPtr &msg,
                                 Vehicles *v);

  static void odom_callback(const nav_msgs::Odometry::ConstPtr &msg,
                            Vehicles *v);

  uint8_t init_receive(const ece_msgs::ecemsg::ConstPtr &msg);
  uint8_t insert_receive(const ece_msgs::ecemsg::ConstPtr &msg);
  uint8_t desinsert_receive(const ece_msgs::ecemsg::ConstPtr &msg);
  uint8_t light_receive(const ece_msgs::ecemsg::ConstPtr &msg);
  uint8_t brake_receive(const ece_msgs::ecemsg::ConstPtr &msg);
  void fill_platoon(const ece_msgs::ecemsg::ConstPtr &msg);

  // Publish
  uint8_t publish_ece_msg_C(ece_msgs::ecemsg msg);
  uint8_t publish_DENM_msg_C(etsi_msgs::DENM msg);
  uint8_t publish_CAM_msg_C(etsi_msgs::CAM msg);

  uint8_t publish_ece_msg_V(ece_msgs::ecemsg msg);
  uint8_t publish_DENM_msg_V(etsi_msgs::DENM msg);
  uint8_t publish_CAM_msg_V(etsi_msgs::CAM msg);

  // Messages
  void fill_ece_data(uint32_t id_dest, uint8_t phase, uint8_t part);
  void fill_cam_data(uint32_t id_dest);
};