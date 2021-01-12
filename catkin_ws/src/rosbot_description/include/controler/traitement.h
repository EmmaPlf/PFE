#include "../../devel/include/ece_msgs/ecemsg.h"
#include "../../devel/include/etsi_msgs/CAM.h"
#include "../../devel/include/etsi_msgs/DENM.h"
#include "Controler.h"
#include "ros/ros.h"

void traitement_init(ece_msgs::ecemsg msg, Controller &c);
void traitement_insert(ece_msgs::ecemsg msg, Platoon &p);
void traitement_desinsert(ece_msgs::ecemsg msg, Platoon &p);
void traitement_feux(ece_msgs::ecemsg msg, Platoon &p);
void traitement_freinage_urg(ece_msgs::ecemsg msg, Platoon &p);