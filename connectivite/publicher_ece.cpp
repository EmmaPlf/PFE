#include "ros/ros.h"
#include "beginner_tutorials/ecemsg.h"
#include <sstream>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "publisher_ece");
    ros::NodeHandle n;
    // changer type message
    ros::Publisher pub = n.advertise<beginner_tutorials::ecemsg>("topic ece", 1000);
    ros::Rate loop_rate(10);
    uint8_t data[2];
    data[0] = 0;
    data[1] = 1;

    while (ros::ok())
    {
        beginner_tutorials::ecemsg msg;
        msg.data = data;
        pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}