// Generated by gencpp from file etsi_msgs/PathPoint.msg
// DO NOT EDIT!


#ifndef ETSI_MSGS_MESSAGE_PATHPOINT_H
#define ETSI_MSGS_MESSAGE_PATHPOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <etsi_msgs/DeltaReferencePosition.h>
#include <etsi_msgs/PathDeltaTime.h>

namespace etsi_msgs
{
template <class ContainerAllocator>
struct PathPoint_
{
  typedef PathPoint_<ContainerAllocator> Type;

  PathPoint_()
    : path_position()
    , path_delta_time()  {
    }
  PathPoint_(const ContainerAllocator& _alloc)
    : path_position(_alloc)
    , path_delta_time(_alloc)  {
  (void)_alloc;
    }



   typedef  ::etsi_msgs::DeltaReferencePosition_<ContainerAllocator>  _path_position_type;
  _path_position_type path_position;

   typedef  ::etsi_msgs::PathDeltaTime_<ContainerAllocator>  _path_delta_time_type;
  _path_delta_time_type path_delta_time;





  typedef boost::shared_ptr< ::etsi_msgs::PathPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::etsi_msgs::PathPoint_<ContainerAllocator> const> ConstPtr;

}; // struct PathPoint_

typedef ::etsi_msgs::PathPoint_<std::allocator<void> > PathPoint;

typedef boost::shared_ptr< ::etsi_msgs::PathPoint > PathPointPtr;
typedef boost::shared_ptr< ::etsi_msgs::PathPoint const> PathPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::etsi_msgs::PathPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::etsi_msgs::PathPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace etsi_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'etsi_msgs': ['/home/david/catkin_ws/src/etsi_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::PathPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::PathPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::PathPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::PathPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::PathPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::PathPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::etsi_msgs::PathPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4cde4f877b443788c447e4b7ce3042d4";
  }

  static const char* value(const ::etsi_msgs::PathPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4cde4f877b443788ULL;
  static const uint64_t static_value2 = 0xc447e4b7ce3042d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::etsi_msgs::PathPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "etsi_msgs/PathPoint";
  }

  static const char* value(const ::etsi_msgs::PathPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::etsi_msgs::PathPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "DeltaReferencePosition path_position\n\
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

  static const char* value(const ::etsi_msgs::PathPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::etsi_msgs::PathPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path_position);
      stream.next(m.path_delta_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PathPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::etsi_msgs::PathPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::etsi_msgs::PathPoint_<ContainerAllocator>& v)
  {
    s << indent << "path_position: ";
    s << std::endl;
    Printer< ::etsi_msgs::DeltaReferencePosition_<ContainerAllocator> >::stream(s, indent + "  ", v.path_position);
    s << indent << "path_delta_time: ";
    s << std::endl;
    Printer< ::etsi_msgs::PathDeltaTime_<ContainerAllocator> >::stream(s, indent + "  ", v.path_delta_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETSI_MSGS_MESSAGE_PATHPOINT_H
