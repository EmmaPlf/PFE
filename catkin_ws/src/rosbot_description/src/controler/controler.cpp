#include "ros/ros.h"
#include "../../include/controler/traitement.h"

void sub_ece_callback(const ece_msgs::ecemsg::ConstPtr &msg, Platoon* p) {

  ROS_INFO("I have received ece msg");

  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer phase de platooning
  uint8_t phase = msg->basic_container.phase.value;

  switch(phase)
  {
      case 0:
        traitement_init(ece_msgs::ecemsg msg);
      break;

      case 1:
        traitement_insert(ece_msgs::ecemsg msg);
      break;

      case 2:
        traitement_desinsert(ece_msgs::ecemsg msg);
      break;

      case 3:
        traitement_feux(ece_msgs::ecemsg msg);
      break;

      case 4:
        traitement_freinage_urg(ece_msgs::ecemsg msg);
      break;

      default:
      break;
  }
}

void sub_DENM_callback(const etsi_msgs::DENM::ConstPtr &msg, Platoon* p) {

  ROS_INFO("I have received DENM msg");
  
  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;
    
  // Récupérer destinataire
  uint8_t dest = msg->basic_container.ID_dest;
  
}

void sub_CAM_callback(const etsi_msgs::CAM::ConstPtr &msg, Platoon* p) {

  ROS_INFO("I have received CAM msg");

  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;
    
  // Récupérer destinataire
  uint8_t dest = msg->basic_container.ID_dest;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "controler");
    ros::NodeHandle n;

    Platoon p = Platoon();

    /// SUBSCRIBERS

    ros::Subscriber sub_controler_ece = n.subscribe<ece_msgs::ecemsg>(
        "controler_ece", 1000, boost::bind(sub_ece_callback, _1, &p)
    );

    ros::Subscriber sub_controler_DENM = n.subscribe<etsi_msgs::DENM>(
        "controler_DENM", 1000, boost::bind(sub_DENM_callback, _1, &p)
    );
   
    ros::Subscriber sub_controler_CAM = n.subscribe<etsi_msgs::CAM>(
        "controler_CAM", 1000, boost::bind(sub_CAM_callback, _1, &p)
    );
    
    /// PUBLISHERS

    ros::Publisher pub_ece = n.advertise<ece_msgs::ecemsg>("vehicles_ece", 1000);

    ros::Publisher pub_DENM = n.advertise<etsi_msgs::DENM>("vehicles_DENM", 1000);

    ros::Rate loop_rate(10);
}