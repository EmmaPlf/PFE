#include "ros/ros.h"
#include "../../devel/include/ece_msgs/ecemsg.h"
#include "../../devel/include/etsi_msgs/DENM.h"
#include "../../devel/include/etsi_msgs/CAM.h"
#include "Platoon.h"

void traitement_init(ece_msgs::ecemsg msg);
void traitement_insert(ece_msgs::ecemsg msg);
void traitement_desinsert(ece_msgs::ecemsg msg);
void traitement_feux(ece_msgs::ecemsg msg);
void traitement_freinage_urg(ece_msgs::ecemsg msg);