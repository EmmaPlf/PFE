// Generated by gencpp from file etsi_msgs/StationType.msg
// DO NOT EDIT!


#ifndef ETSI_MSGS_MESSAGE_STATIONTYPE_H
#define ETSI_MSGS_MESSAGE_STATIONTYPE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace etsi_msgs
{
template <class ContainerAllocator>
struct StationType_
{
  typedef StationType_<ContainerAllocator> Type;

  StationType_()
    : value(0)  {
    }
  StationType_(const ContainerAllocator& _alloc)
    : value(0)  {
  (void)_alloc;
    }



   typedef uint8_t _value_type;
  _value_type value;



  enum {
    UNKNOWN = 0u,
    PEDESTRIAN = 1u,
    CYCLIST = 2u,
    MOPED = 3u,
    MOTORCYCLE = 4u,
    PASSENGER_CAR = 5u,
    BUS = 6u,
    LIGHT_TRUCK = 7u,
    HEAVY_TRUCK = 8u,
    TRAILER = 9u,
    SPECIAL_VEHICLE = 10u,
    TRAM = 11u,
    ROAD_SIDE_UNIT = 15u,
  };


  typedef boost::shared_ptr< ::etsi_msgs::StationType_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::etsi_msgs::StationType_<ContainerAllocator> const> ConstPtr;

}; // struct StationType_

typedef ::etsi_msgs::StationType_<std::allocator<void> > StationType;

typedef boost::shared_ptr< ::etsi_msgs::StationType > StationTypePtr;
typedef boost::shared_ptr< ::etsi_msgs::StationType const> StationTypeConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::etsi_msgs::StationType_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::etsi_msgs::StationType_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::etsi_msgs::StationType_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::StationType_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::StationType_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::StationType_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::StationType_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::StationType_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::etsi_msgs::StationType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "11f2c0aead214582d10e882ec072ef97";
  }

  static const char* value(const ::etsi_msgs::StationType_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x11f2c0aead214582ULL;
  static const uint64_t static_value2 = 0xd10e882ec072ef97ULL;
};

template<class ContainerAllocator>
struct DataType< ::etsi_msgs::StationType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "etsi_msgs/StationType";
  }

  static const char* value(const ::etsi_msgs::StationType_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::etsi_msgs::StationType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 value\n\
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
";
  }

  static const char* value(const ::etsi_msgs::StationType_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::etsi_msgs::StationType_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StationType_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::etsi_msgs::StationType_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::etsi_msgs::StationType_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETSI_MSGS_MESSAGE_STATIONTYPE_H
