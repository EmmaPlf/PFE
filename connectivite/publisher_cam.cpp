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
#include <sstream>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "publisher_cam");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<messages_cam::CAM>("topic_cam", 1000);
    ros::Rate loop_rate(10);

    messages_cam::StationType station_type;

    messages_cam::ReferencePosition reference_position;
        messages_cam::PositionConfidenceEllipse position_confidence;
        messages_cam::Altitude altitude;

    messages_cam::BasicVehicleContainerHighFrequency high_frequency_container;
        messages_cam::Speed speed;
        messages_cam::DriveDirection drive_direction;
        messages_cam::VehicleLength vehicle_length;
        messages_cam::VehicleWidth vehicle_width;
        messages_cam::LongitudinalAcceleration longitudinal_acceleration;
        messages_cam::Curvature curvature;
        messages_cam::CurvatureCalculationMode curvature_calculation_mode;
        messages_cam::YawRate yaw_rate;
        messages_cam::AccelerationControl acceleration_control;

    messages_cam::BasicVehicleContainerLowFrequency low_frequency_container;
        messages_cam::VehicleRole vehicle_role;
        messages_cam::ExteriorLights exterior_lights;
        messages_cam::PathHistory path_history;
            message_cam::PathPoint[1] points;

    messages_cam::CAM CAM;

    station_type.value = 10;

    position_confidence.semi_major_confidence = 0;
    position_confidence.semi_minor_confidence = 0;
    position_confidence.semi_major_orientation = 0;
    altitude.value = 0;
    altitude.confidence = 0;
    reference_position.latitude = 0;
    reference_position.longitude = 0;
    reference_position.position_confidence = position_confidence;
    reference_position.altitude = altitude;

    speed.value = 0;
    speed.confidence = 0;
    drive_direction.value = 0;
    vehicle_lenght.value = 0;
    vehicle_lenght.confidence_indication = 0;
    vehicle_width.value = 0;
    longitudinal_acceleration.value = 0;
    longitudinal_acceleration.confidence = 0;
    curvature.value = 0;
    curvature.confidence = 0;
    curvature_calculation_mode.value = 0;
    yaw_rate.value = 0;
    yaw_rate.confidence = 0;
    acceleration_control.value = 0;
    high_frequency_container.speed = speed;
    high_frequency_container.drive_direction = drive_direction;
    high_frequency_container.vehicule_lenght = vehicule_length;
    high_frequency_container.vehicle_width = vehicle_width;
    high_frequency_container.longitudinal_acceleration = longitudinal_acceleration;
    high_frequency_container.curvature = curvature;
    high_frequency_container.yaw_rate = yaw_rate;
    high_frequency_container.has_acceleration_control = 0;
    high_frequency_container.acceleration_control = acceleration_control;

    vehicle_role.value = 0;
    exterior_lights.value = 0;
    points.path_position = 0;
    points.path_delta_time = 0;
    path_history.points = points = 0;
    low_frequency_container.vehicle_role = vehicle_role;
    low_frequency_container.exterior_lights = exterior_lights;
    low_frequency_container.path_history = path_history;

    CAM.reference_position = reference_position;
    CAM.high_frequency_container = high_frequency_container;
    CAM.low_frequency_container = low_frequency_container;
    CAM.station_type = station_type;

    while (ros::ok())
    {
        pub.publish(CAM);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}