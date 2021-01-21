// Generated by gencpp from file etsi_msgs/BasicVehicleContainerHighFrequency.msg
// DO NOT EDIT!


#ifndef ETSI_MSGS_MESSAGE_BASICVEHICLECONTAINERHIGHFREQUENCY_H
#define ETSI_MSGS_MESSAGE_BASICVEHICLECONTAINERHIGHFREQUENCY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <etsi_msgs/Heading.h>
#include <etsi_msgs/Speed.h>
#include <etsi_msgs/DriveDirection.h>
#include <etsi_msgs/VehicleLength.h>
#include <etsi_msgs/VehicleWidth.h>
#include <etsi_msgs/LongitudinalAcceleration.h>
#include <etsi_msgs/Curvature.h>
#include <etsi_msgs/CurvatureCalculationMode.h>
#include <etsi_msgs/YawRate.h>
#include <etsi_msgs/AccelerationControl.h>

namespace etsi_msgs
{
template <class ContainerAllocator>
struct BasicVehicleContainerHighFrequency_
{
  typedef BasicVehicleContainerHighFrequency_<ContainerAllocator> Type;

  BasicVehicleContainerHighFrequency_()
    : heading()
    , speed()
    , drive_direction()
    , vehicle_length()
    , vehicle_width()
    , longitudinal_acceleration()
    , curvature()
    , curvature_calculation_mode()
    , yaw_rate()
    , has_acceleration_control(false)
    , acceleration_control()  {
    }
  BasicVehicleContainerHighFrequency_(const ContainerAllocator& _alloc)
    : heading(_alloc)
    , speed(_alloc)
    , drive_direction(_alloc)
    , vehicle_length(_alloc)
    , vehicle_width(_alloc)
    , longitudinal_acceleration(_alloc)
    , curvature(_alloc)
    , curvature_calculation_mode(_alloc)
    , yaw_rate(_alloc)
    , has_acceleration_control(false)
    , acceleration_control(_alloc)  {
  (void)_alloc;
    }



   typedef  ::etsi_msgs::Heading_<ContainerAllocator>  _heading_type;
  _heading_type heading;

   typedef  ::etsi_msgs::Speed_<ContainerAllocator>  _speed_type;
  _speed_type speed;

   typedef  ::etsi_msgs::DriveDirection_<ContainerAllocator>  _drive_direction_type;
  _drive_direction_type drive_direction;

   typedef  ::etsi_msgs::VehicleLength_<ContainerAllocator>  _vehicle_length_type;
  _vehicle_length_type vehicle_length;

   typedef  ::etsi_msgs::VehicleWidth_<ContainerAllocator>  _vehicle_width_type;
  _vehicle_width_type vehicle_width;

   typedef  ::etsi_msgs::LongitudinalAcceleration_<ContainerAllocator>  _longitudinal_acceleration_type;
  _longitudinal_acceleration_type longitudinal_acceleration;

   typedef  ::etsi_msgs::Curvature_<ContainerAllocator>  _curvature_type;
  _curvature_type curvature;

   typedef  ::etsi_msgs::CurvatureCalculationMode_<ContainerAllocator>  _curvature_calculation_mode_type;
  _curvature_calculation_mode_type curvature_calculation_mode;

   typedef  ::etsi_msgs::YawRate_<ContainerAllocator>  _yaw_rate_type;
  _yaw_rate_type yaw_rate;

   typedef uint8_t _has_acceleration_control_type;
  _has_acceleration_control_type has_acceleration_control;

   typedef  ::etsi_msgs::AccelerationControl_<ContainerAllocator>  _acceleration_control_type;
  _acceleration_control_type acceleration_control;





  typedef boost::shared_ptr< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> const> ConstPtr;

}; // struct BasicVehicleContainerHighFrequency_

typedef ::etsi_msgs::BasicVehicleContainerHighFrequency_<std::allocator<void> > BasicVehicleContainerHighFrequency;

typedef boost::shared_ptr< ::etsi_msgs::BasicVehicleContainerHighFrequency > BasicVehicleContainerHighFrequencyPtr;
typedef boost::shared_ptr< ::etsi_msgs::BasicVehicleContainerHighFrequency const> BasicVehicleContainerHighFrequencyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace etsi_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'etsi_msgs': ['/home/user/catkin_ws/src/etsi_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> >
{
  static const char* value()
  {
    return "62bb6a047d37b6cdb33896921037161d";
  }

  static const char* value(const ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x62bb6a047d37b6cdULL;
  static const uint64_t static_value2 = 0xb33896921037161dULL;
};

template<class ContainerAllocator>
struct DataType< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> >
{
  static const char* value()
  {
    return "etsi_msgs/BasicVehicleContainerHighFrequency";
  }

  static const char* value(const ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Heading heading\n\
Speed speed\n\
DriveDirection drive_direction\n\
VehicleLength vehicle_length\n\
VehicleWidth vehicle_width\n\
LongitudinalAcceleration longitudinal_acceleration\n\
Curvature curvature\n\
CurvatureCalculationMode curvature_calculation_mode\n\
YawRate yaw_rate\n\
\n\
# optional data fields\n\
bool has_acceleration_control\n\
AccelerationControl acceleration_control\n\
\n\
# TODO further (optional) data fields are missing\n\
\n\
================================================================================\n\
MSG: etsi_msgs/Heading\n\
uint16 value # 0.1 degree\n\
uint8 confidence\n\
\n\
uint16 VALUE_NORTH = 0\n\
uint16 VALUE_EAST = 900\n\
uint16 VALUE_SOUTH = 1800\n\
uint16 VALUE_WEST = 2700\n\
uint16 VALUE_UNAVAILABLE = 3601\n\
\n\
uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1\n\
uint8 CONFIDENCE_ONE_DEGREE = 10\n\
uint8 CONFIDENCE_OUT_OF_RANGE = 126\n\
uint8 CONFIDENCE_UNAVAILABLE = 127\n\
\n\
================================================================================\n\
MSG: etsi_msgs/Speed\n\
uint16 value # 0.01 m/s\n\
uint8 confidence # 0.01 m/s\n\
\n\
uint16 VALUE_STANDSTILL = 0\n\
uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1\n\
uint16 VALUE_UNAVAILABLE = 16383\n\
\n\
uint8 CONFIDENCE_OUT_OF_RANGE = 126\n\
uint8 CONFIDENCE_UNAVAILABLE = 127\n\
\n\
================================================================================\n\
MSG: etsi_msgs/DriveDirection\n\
uint8 value\n\
\n\
uint8 FORWARD = 0\n\
uint8 BACKWARD = 1\n\
uint8 UNAVAILABLE = 2\n\
\n\
================================================================================\n\
MSG: etsi_msgs/VehicleLength\n\
uint16 value # 0.1 meter\n\
uint8 confidence_indication\n\
\n\
uint16 VALUE_TEN_CENTIMETERS = 1\n\
uint16 VALUE_OUT_OF_RANGE = 1022\n\
uint16 VALUE_UNAVAILABLE = 1023\n\
\n\
uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0\n\
uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1\n\
uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2\n\
uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3\n\
uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4\n\
\n\
================================================================================\n\
MSG: etsi_msgs/VehicleWidth\n\
uint8 value # 0.1 meter\n\
\n\
uint8 TEN_CENTIMETERS = 1\n\
uint8 OUT_OF_RANGE = 61\n\
uint8 UNAVAILABLE = 62\n\
\n\
================================================================================\n\
MSG: etsi_msgs/LongitudinalAcceleration\n\
int16 value # 0.1 m/s^2\n\
uint8 confidence # 0.1 m/s^2\n\
\n\
int16 VALUE_UNAVAILABLE = 161\n\
\n\
uint8 CONFIDENCE_OUT_OF_RANGE = 101\n\
uint8 CONFIDENCE_UNAVAILABLE = 102\n\
\n\
================================================================================\n\
MSG: etsi_msgs/Curvature\n\
int16 value # m^-1\n\
uint8 confidence\n\
\n\
int16 VALUE_RIGHTMOST = -1023\n\
int16 VALUE_LEFTMOST = 1022\n\
int16 VALUE_MIN = -1023\n\
int16 VALUE_MAX = 1022\n\
int16 VALUE_STRAIGHT = 0\n\
int16 VALUE_UNAVAILABLE = 1023\n\
\n\
uint8 CONFIDENCE_OUT_OF_RANGE = 6\n\
uint8 CONFIDENCE_UNAVAILABLE = 7\n\
\n\
================================================================================\n\
MSG: etsi_msgs/CurvatureCalculationMode\n\
uint8 value\n\
\n\
uint8 YAW_RATE_USED = 0\n\
uint8 YAW_RATE_NOT_USED = 1\n\
uint8 UNAVAILABLE = 2\n\
\n\
================================================================================\n\
MSG: etsi_msgs/YawRate\n\
int16 value # 0.01 degree/s\n\
uint8 confidence\n\
\n\
int16 VALUE_UNAVAILABLE = 32767\n\
\n\
uint8 CONFIDENCE_0DOT01_DEGSEC = 0\n\
uint8 CONFIDENCE_0DOT05_DEGSEC = 1\n\
uint8 CONFIDENCE_0DOT1_DEGSEC = 2\n\
uint8 CONFIDENCE_1_DEGSEC = 3\n\
uint8 CONFIDENCE_5_DEGSEC = 4\n\
uint8 CONFIDENCE_10_DEGSEC = 5\n\
uint8 CONFIDENCE_100_DEGSEC = 6\n\
uint8 CONFIDENCE_OUT_OF_RANGE = 7\n\
uint8 CONFIDENCE_UNAVAILABLE = 8\n\
\n\
================================================================================\n\
MSG: etsi_msgs/AccelerationControl\n\
uint8 value\n\
\n\
uint8 BRAKE_PEDAL_ENGAGED = 1\n\
uint8 GAS_PEDAL_ENGAGED = 2\n\
uint8 EMERGENCY_BRAKE_ENGAGED = 4\n\
uint8 COLLISION_WARNING_ENGAGED = 8\n\
uint8 ACC_ENGAGED = 16\n\
uint8 CRUISE_CONTROL_ENGAGED = 32\n\
uint8 SPEED_LIMITER_ENGAGED = 64\n\
";
  }

  static const char* value(const ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.heading);
      stream.next(m.speed);
      stream.next(m.drive_direction);
      stream.next(m.vehicle_length);
      stream.next(m.vehicle_width);
      stream.next(m.longitudinal_acceleration);
      stream.next(m.curvature);
      stream.next(m.curvature_calculation_mode);
      stream.next(m.yaw_rate);
      stream.next(m.has_acceleration_control);
      stream.next(m.acceleration_control);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BasicVehicleContainerHighFrequency_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator>& v)
  {
    s << indent << "heading: ";
    s << std::endl;
    Printer< ::etsi_msgs::Heading_<ContainerAllocator> >::stream(s, indent + "  ", v.heading);
    s << indent << "speed: ";
    s << std::endl;
    Printer< ::etsi_msgs::Speed_<ContainerAllocator> >::stream(s, indent + "  ", v.speed);
    s << indent << "drive_direction: ";
    s << std::endl;
    Printer< ::etsi_msgs::DriveDirection_<ContainerAllocator> >::stream(s, indent + "  ", v.drive_direction);
    s << indent << "vehicle_length: ";
    s << std::endl;
    Printer< ::etsi_msgs::VehicleLength_<ContainerAllocator> >::stream(s, indent + "  ", v.vehicle_length);
    s << indent << "vehicle_width: ";
    s << std::endl;
    Printer< ::etsi_msgs::VehicleWidth_<ContainerAllocator> >::stream(s, indent + "  ", v.vehicle_width);
    s << indent << "longitudinal_acceleration: ";
    s << std::endl;
    Printer< ::etsi_msgs::LongitudinalAcceleration_<ContainerAllocator> >::stream(s, indent + "  ", v.longitudinal_acceleration);
    s << indent << "curvature: ";
    s << std::endl;
    Printer< ::etsi_msgs::Curvature_<ContainerAllocator> >::stream(s, indent + "  ", v.curvature);
    s << indent << "curvature_calculation_mode: ";
    s << std::endl;
    Printer< ::etsi_msgs::CurvatureCalculationMode_<ContainerAllocator> >::stream(s, indent + "  ", v.curvature_calculation_mode);
    s << indent << "yaw_rate: ";
    s << std::endl;
    Printer< ::etsi_msgs::YawRate_<ContainerAllocator> >::stream(s, indent + "  ", v.yaw_rate);
    s << indent << "has_acceleration_control: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_acceleration_control);
    s << indent << "acceleration_control: ";
    s << std::endl;
    Printer< ::etsi_msgs::AccelerationControl_<ContainerAllocator> >::stream(s, indent + "  ", v.acceleration_control);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETSI_MSGS_MESSAGE_BASICVEHICLECONTAINERHIGHFREQUENCY_H
