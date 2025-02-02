// Generated by gencpp from file etsi_msgs/CAM.msg
// DO NOT EDIT!


#ifndef ETSI_MSGS_MESSAGE_CAM_H
#define ETSI_MSGS_MESSAGE_CAM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <etsi_msgs/ItsPduHeader.h>
#include <etsi_msgs/StationType.h>
#include <etsi_msgs/ReferencePosition.h>
#include <etsi_msgs/BasicVehicleContainerHighFrequency.h>
#include <etsi_msgs/BasicVehicleContainerLowFrequency.h>

namespace etsi_msgs
{
template <class ContainerAllocator>
struct CAM_
{
  typedef CAM_<ContainerAllocator> Type;

  CAM_()
    : header()
    , its_header()
    , generation_delta_time(0)
    , station_type()
    , reference_position()
    , high_frequency_container()
    , has_low_frequency_container(false)
    , low_frequency_container()  {
    }
  CAM_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , its_header(_alloc)
    , generation_delta_time(0)
    , station_type(_alloc)
    , reference_position(_alloc)
    , high_frequency_container(_alloc)
    , has_low_frequency_container(false)
    , low_frequency_container(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::etsi_msgs::ItsPduHeader_<ContainerAllocator>  _its_header_type;
  _its_header_type its_header;

   typedef uint16_t _generation_delta_time_type;
  _generation_delta_time_type generation_delta_time;

   typedef  ::etsi_msgs::StationType_<ContainerAllocator>  _station_type_type;
  _station_type_type station_type;

   typedef  ::etsi_msgs::ReferencePosition_<ContainerAllocator>  _reference_position_type;
  _reference_position_type reference_position;

   typedef  ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator>  _high_frequency_container_type;
  _high_frequency_container_type high_frequency_container;

   typedef uint8_t _has_low_frequency_container_type;
  _has_low_frequency_container_type has_low_frequency_container;

   typedef  ::etsi_msgs::BasicVehicleContainerLowFrequency_<ContainerAllocator>  _low_frequency_container_type;
  _low_frequency_container_type low_frequency_container;





  typedef boost::shared_ptr< ::etsi_msgs::CAM_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::etsi_msgs::CAM_<ContainerAllocator> const> ConstPtr;

}; // struct CAM_

typedef ::etsi_msgs::CAM_<std::allocator<void> > CAM;

typedef boost::shared_ptr< ::etsi_msgs::CAM > CAMPtr;
typedef boost::shared_ptr< ::etsi_msgs::CAM const> CAMConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::etsi_msgs::CAM_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::etsi_msgs::CAM_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace etsi_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'etsi_msgs': ['/home/david/catkin_ws/src/etsi_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::CAM_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::CAM_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::CAM_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::CAM_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::CAM_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::CAM_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::etsi_msgs::CAM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9c2e1d050ad79cf1fc0a55266577e7c4";
  }

  static const char* value(const ::etsi_msgs::CAM_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9c2e1d050ad79cf1ULL;
  static const uint64_t static_value2 = 0xfc0a55266577e7c4ULL;
};

template<class ContainerAllocator>
struct DataType< ::etsi_msgs::CAM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "etsi_msgs/CAM";
  }

  static const char* value(const ::etsi_msgs::CAM_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::etsi_msgs::CAM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
ItsPduHeader its_header\n\
uint16 generation_delta_time # milliseconds since 2004 modulo 2^16\n\
\n\
# basic container\n\
StationType station_type\n\
ReferencePosition reference_position\n\
\n\
# TODO either BasicVehicle or RSU\n\
BasicVehicleContainerHighFrequency high_frequency_container\n\
\n\
bool has_low_frequency_container\n\
BasicVehicleContainerLowFrequency low_frequency_container\n\
\n\
# TODO special vehicle container is missing\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: etsi_msgs/ItsPduHeader\n\
uint8 protocol_version\n\
uint8 message_id\n\
uint32 station_id\n\
\n\
uint8 MESSAGE_ID_DENM = 1\n\
uint8 MESSAGE_ID_CAM = 2\n\
\n\
================================================================================\n\
MSG: etsi_msgs/StationType\n\
uint8 value\n\
\n\
uint8 UNKNOWN = 0\n\
uint8 PEDESTRIAN = 1\n\
uint8 CYCLIST = 2\n\
uint8 MOPED = 3\n\
uint8 MOTORCYCLE = 4\n\
uint8 PASSENGER_CAR = 5\n\
uint8 BUS = 6\n\
uint8 LIGHT_TRUCK = 7\n\
uint8 HEAVY_TRUCK = 8\n\
uint8 TRAILER = 9\n\
uint8 SPECIAL_VEHICLE = 10\n\
uint8 TRAM = 11\n\
uint8 ROAD_SIDE_UNIT = 15\n\
\n\
================================================================================\n\
MSG: etsi_msgs/ReferencePosition\n\
int64 latitude # 0.1 micro degree\n\
int64 longitude # 0.1 micro degree\n\
PositionConfidenceEllipse position_confidence\n\
Altitude altitude\n\
\n\
int64 LATITUDE_UNAVAILABLE = 900000001\n\
int64 LONGITUDE_UNAVAILABLE = 1800000001\n\
\n\
================================================================================\n\
MSG: etsi_msgs/PositionConfidenceEllipse\n\
uint16 semi_major_confidence # cm\n\
uint16 semi_minor_confidence # cm\n\
uint16 semi_major_orientation # 0.1 degree\n\
\n\
uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094\n\
uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095\n\
\n\
================================================================================\n\
MSG: etsi_msgs/Altitude\n\
int32 value # 0.01 meter\n\
uint8 confidence\n\
\n\
int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0\n\
int32 VALUE_ONE_CENTIMETER = 1\n\
int32 VALUE_UNAVAILABLE = 800001\n\
\n\
uint8 CONFIDENCE_1CM = 0\n\
uint8 CONFIDENCE_2CM = 1\n\
uint8 CONFIDENCE_5CM = 2\n\
uint8 CONFIDENCE_10CM = 3\n\
uint8 CONFIDENCE_20CM = 4\n\
uint8 CONFIDENCE_50CM = 5\n\
uint8 CONFIDENCE_1M = 6\n\
uint8 CONFIDENCE_2M = 7\n\
uint8 CONFIDENCE_5M = 8\n\
uint8 CONFIDENCE_10M = 9\n\
uint8 CONFIDENCE_20M = 10\n\
uint8 CONFIDENCE_50M = 11\n\
uint8 CONFIDENCE_100M = 12\n\
uint8 CONFIDENCE_200M = 13\n\
uint8 CONFIDENCE_OUT_OF_RANGE = 14\n\
uint8 CONFIDENCE_UNAVAILABLE = 15\n\
\n\
================================================================================\n\
MSG: etsi_msgs/BasicVehicleContainerHighFrequency\n\
Heading heading\n\
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
\n\
================================================================================\n\
MSG: etsi_msgs/BasicVehicleContainerLowFrequency\n\
VehicleRole vehicle_role\n\
ExteriorLights exterior_lights\n\
PathHistory path_history\n\
\n\
================================================================================\n\
MSG: etsi_msgs/VehicleRole\n\
uint8 value\n\
\n\
uint8 DEFAULT = 0\n\
uint8 PUBLIC_TRANSPORT = 1\n\
uint8 SPECIAL_TRANSPORT = 2\n\
uint8 DANGEROUS_GOODS = 3\n\
uint8 ROAD_WORK = 4\n\
uint8 RESCUE = 5\n\
uint8 EMERGENCY = 6\n\
uint8 SAFETY_CAR = 7\n\
uint8 AGRICULTURE = 8\n\
uint8 COMMERCIAL = 9\n\
uint8 MILITARY = 10\n\
uint8 ROAD_OPERATOR = 11\n\
uint8 TAXI = 12\n\
\n\
================================================================================\n\
MSG: etsi_msgs/ExteriorLights\n\
uint8 value\n\
\n\
uint8 LOW_BEAM_HEADLIGHTS = 1\n\
uint8 HIGH_BEAM_HEADLIGHTS = 2\n\
uint8 LEFT_TURN_SIGNAL = 4\n\
uint8 RIGHT_TURN_SIGNAL = 8\n\
uint8 DAYTIME_RUNNING_LIGHTS = 16\n\
uint8 REVERSE_LIGHT = 32\n\
uint8 FOG_LIGHT = 64\n\
uint8 PARKING_LIGHTS = 128\n\
\n\
================================================================================\n\
MSG: etsi_msgs/PathHistory\n\
PathPoint[] points\n\
\n\
================================================================================\n\
MSG: etsi_msgs/PathPoint\n\
DeltaReferencePosition path_position\n\
PathDeltaTime path_delta_time\n\
\n\
================================================================================\n\
MSG: etsi_msgs/DeltaReferencePosition\n\
int32 delta_latitude # 0.1 micro degree\n\
int32 delta_longitude # 0.1 micro degree\n\
int16 delta_altitude # centimeter\n\
\n\
int32 ONE_MICRODEGREE_NORTH = 10\n\
int32 ONE_MICRODEGREE_SOUTH = -10\n\
int32 ONE_MICRODEGREE_EAST = 10\n\
int32 ONE_MICRODEGREE_WEST = -10\n\
int32 ONE_CENTIMETER_UP = 1\n\
int32 ONE_CENTIMETER_DOWN = -1\n\
int32 LATITUDE_UNAVAILABLE = 131072\n\
int32 LONGITUDE_UNAVAILABLE = 131072\n\
int16 ALTITUDE_UNAVAILABLE = 12800\n\
\n\
================================================================================\n\
MSG: etsi_msgs/PathDeltaTime\n\
uint16 value # 10 ms\n\
\n\
uint16 UNAVAILABLE = 0\n\
uint16 TEN_MILLISECONDS_IN_PAST = 1\n\
";
  }

  static const char* value(const ::etsi_msgs::CAM_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::etsi_msgs::CAM_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.its_header);
      stream.next(m.generation_delta_time);
      stream.next(m.station_type);
      stream.next(m.reference_position);
      stream.next(m.high_frequency_container);
      stream.next(m.has_low_frequency_container);
      stream.next(m.low_frequency_container);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CAM_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::etsi_msgs::CAM_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::etsi_msgs::CAM_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "its_header: ";
    s << std::endl;
    Printer< ::etsi_msgs::ItsPduHeader_<ContainerAllocator> >::stream(s, indent + "  ", v.its_header);
    s << indent << "generation_delta_time: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.generation_delta_time);
    s << indent << "station_type: ";
    s << std::endl;
    Printer< ::etsi_msgs::StationType_<ContainerAllocator> >::stream(s, indent + "  ", v.station_type);
    s << indent << "reference_position: ";
    s << std::endl;
    Printer< ::etsi_msgs::ReferencePosition_<ContainerAllocator> >::stream(s, indent + "  ", v.reference_position);
    s << indent << "high_frequency_container: ";
    s << std::endl;
    Printer< ::etsi_msgs::BasicVehicleContainerHighFrequency_<ContainerAllocator> >::stream(s, indent + "  ", v.high_frequency_container);
    s << indent << "has_low_frequency_container: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_low_frequency_container);
    s << indent << "low_frequency_container: ";
    s << std::endl;
    Printer< ::etsi_msgs::BasicVehicleContainerLowFrequency_<ContainerAllocator> >::stream(s, indent + "  ", v.low_frequency_container);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETSI_MSGS_MESSAGE_CAM_H
