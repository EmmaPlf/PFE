#include <ros/ros.h>



int main(int argc, char **argv)
{
    ros::init(argc, argv, "controler");
    ros::NodeHandle n;

    ros::Subscriber sub1 = n.Subscribe<rosbot_description::ecemsg>(
        "head_vehicle_controler_ece", 1000, boost::bind(hvc_ece_callback, _1, NULL)
    );
    ros::Subscriber sub2 = n.Subscribe<rosbot_description::ecemsg>(
        "second_vehicle_controler_ece", 1000, boost::bind(svc_ece_callback, _1, NULL)
    );
    ros::Subscriber sub3 = n.Subscribe<rosbot_description::ecemsg>(
        "third_vehicle_controler_ece", 1000, boost::bind(tvc_ece_callback, _1, NULL)
    );
    ros::Subscriber sub4 = n.Subscribe<rosbot_description::ecemsg>(
        "fourth_vehicle_controler_ece", 1000, boost::bind(fvc_ece_callback, _1, NULL)
    );

    //ros::Publisher pub = n.advertise<rosbot_description::>

    ros::Rate loop_rate(10);


    //Subscribe à 4 topics
    
}