// Generated by gencpp from file etsi_msgs/SituationContainer.msg
// DO NOT EDIT!


#ifndef ETSI_MSGS_MESSAGE_SITUATIONCONTAINER_H
#define ETSI_MSGS_MESSAGE_SITUATIONCONTAINER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <etsi_msgs/InformationQuality.h>
#include <etsi_msgs/CauseCode.h>
#include <etsi_msgs/CauseCode.h>
#include <etsi_msgs/EventPoint.h>

namespace etsi_msgs
{
template <class ContainerAllocator>
struct SituationContainer_
{
  typedef SituationContainer_<ContainerAllocator> Type;

  SituationContainer_()
    : information_quality()
    , event_type()
    , has_linked_cause(false)
    , linked_cause()
    , event_history()  {
    }
  SituationContainer_(const ContainerAllocator& _alloc)
    : information_quality(_alloc)
    , event_type(_alloc)
    , has_linked_cause(false)
    , linked_cause(_alloc)
    , event_history(_alloc)  {
  (void)_alloc;
    }



   typedef  ::etsi_msgs::InformationQuality_<ContainerAllocator>  _information_quality_type;
  _information_quality_type information_quality;

   typedef  ::etsi_msgs::CauseCode_<ContainerAllocator>  _event_type_type;
  _event_type_type event_type;

   typedef uint8_t _has_linked_cause_type;
  _has_linked_cause_type has_linked_cause;

   typedef  ::etsi_msgs::CauseCode_<ContainerAllocator>  _linked_cause_type;
  _linked_cause_type linked_cause;

   typedef std::vector< ::etsi_msgs::EventPoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::etsi_msgs::EventPoint_<ContainerAllocator> >::other >  _event_history_type;
  _event_history_type event_history;





  typedef boost::shared_ptr< ::etsi_msgs::SituationContainer_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::etsi_msgs::SituationContainer_<ContainerAllocator> const> ConstPtr;

}; // struct SituationContainer_

typedef ::etsi_msgs::SituationContainer_<std::allocator<void> > SituationContainer;

typedef boost::shared_ptr< ::etsi_msgs::SituationContainer > SituationContainerPtr;
typedef boost::shared_ptr< ::etsi_msgs::SituationContainer const> SituationContainerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::etsi_msgs::SituationContainer_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::etsi_msgs::SituationContainer_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace etsi_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'etsi_msgs': ['/home/david/catkin_ws/src/etsi_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::SituationContainer_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::SituationContainer_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::SituationContainer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::SituationContainer_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::SituationContainer_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::SituationContainer_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::etsi_msgs::SituationContainer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d9a79cc76182211b632e0fb2d42e16d2";
  }

  static const char* value(const ::etsi_msgs::SituationContainer_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd9a79cc76182211bULL;
  static const uint64_t static_value2 = 0x632e0fb2d42e16d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::etsi_msgs::SituationContainer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "etsi_msgs/SituationContainer";
  }

  static const char* value(const ::etsi_msgs::SituationContainer_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::etsi_msgs::SituationContainer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "InformationQuality information_quality\n\
CauseCode event_type\n\
bool has_linked_cause\n\
CauseCode linked_cause\n\
EventPoint[] event_history\n\
\n\
================================================================================\n\
MSG: etsi_msgs/InformationQuality\n\
int8 value\n\
\n\
int8 UNAVAILABLE = 0\n\
int8 LOWEST = 1\n\
int8 HIGHEST = 7\n\
\n\
================================================================================\n\
MSG: etsi_msgs/CauseCode\n\
uint8 cause_code\n\
uint8 sub_cause_code\n\
\n\
uint8 RESERVED = 0\n\
uint8 TRAFFIC_CONDITION = 1\n\
uint8 ACCIDENT = 2\n\
uint8 ROADWORKS = 3\n\
uint8 ADVERSE_WEATHER_CONDITIONS_ADHESION = 4\n\
uint8 HAZARDOUS_LOCATION_SURFACE_CONDITION = 9\n\
uint8 HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD = 10\n\
uint8 HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD = 11\n\
uint8 HUMAN_PRESENCE_ON_THE_ROAD = 12\n\
uint8 WRONG_WAY_DRIVING = 14\n\
uint8 RESCUE_AND_RECOVERY_WORK_IN_PROGRESS = 15\n\
uint8 ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION = 17\n\
uint8 ADVERSE_WEATHER_CONDITIONS_VISIBILITY = 18\n\
uint8 ADVERSE_WEATHER_CONDITIONS_PRECIPITATION = 19\n\
uint8 SLOW_VEHICLE = 26\n\
uint8 DANGEROUS_END_OF_QUEUE = 27\n\
uint8 VEHICLE_BREAKDOWN = 91\n\
uint8 POST_CRASH = 92\n\
uint8 HUMAN_PROBLEM = 93\n\
uint8 STATIONARY_VEHICLE = 94\n\
uint8 EMERGENCY_VEHICLE_APPROACHING = 95\n\
uint8 HAZARDOUS_LOCATION_DANGEROUS_CURVE = 96\n\
uint8 COLLISION_RISK = 97\n\
uint8 SIGNAL_VIOLATION = 98\n\
uint8 DANGEROUS_SITUATION = 99\n\
\n\
================================================================================\n\
MSG: etsi_msgs/EventPoint\n\
DeltaReferencePosition event_position\n\
PathDeltaTime event_delta_time\n\
InformationQuality information_quality\n\
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

  static const char* value(const ::etsi_msgs::SituationContainer_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::etsi_msgs::SituationContainer_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.information_quality);
      stream.next(m.event_type);
      stream.next(m.has_linked_cause);
      stream.next(m.linked_cause);
      stream.next(m.event_history);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SituationContainer_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::etsi_msgs::SituationContainer_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::etsi_msgs::SituationContainer_<ContainerAllocator>& v)
  {
    s << indent << "information_quality: ";
    s << std::endl;
    Printer< ::etsi_msgs::InformationQuality_<ContainerAllocator> >::stream(s, indent + "  ", v.information_quality);
    s << indent << "event_type: ";
    s << std::endl;
    Printer< ::etsi_msgs::CauseCode_<ContainerAllocator> >::stream(s, indent + "  ", v.event_type);
    s << indent << "has_linked_cause: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_linked_cause);
    s << indent << "linked_cause: ";
    s << std::endl;
    Printer< ::etsi_msgs::CauseCode_<ContainerAllocator> >::stream(s, indent + "  ", v.linked_cause);
    s << indent << "event_history[]" << std::endl;
    for (size_t i = 0; i < v.event_history.size(); ++i)
    {
      s << indent << "  event_history[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::etsi_msgs::EventPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.event_history[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETSI_MSGS_MESSAGE_SITUATIONCONTAINER_H
