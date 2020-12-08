#include "ros/ros.h"
#include <ros/console.h>
#include "beginner_tutorials/ecemsg.h"
#include <sstream>
#include <iostream>
using namespace std;

int main(int argc, char **argv){

    ros::init(argc, argv, "publisher_ece");
    ros::NodeHandle n;
    // changer type message
    ros::Publisher pub = n.advertise<beginner_tutorials::ecemsg>("topic_ece", 1000);
    ros::Rate loop_rate(10);

    beginner_tutorials::ecemsg msg;
    msg.data.push_back(0);    
    msg.data.push_back(1);
    while (ros::ok())
    {
        pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
