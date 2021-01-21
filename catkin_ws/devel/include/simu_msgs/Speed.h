// Generated by gencpp from file simu_msgs/Speed.msg
// DO NOT EDIT!


#ifndef SIMU_MSGS_MESSAGE_SPEED_H
#define SIMU_MSGS_MESSAGE_SPEED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace simu_msgs
{
template <class ContainerAllocator>
struct Speed_
{
  typedef Speed_<ContainerAllocator> Type;

  Speed_()
    : value(0)
    , confidence(0)  {
    }
  Speed_(const ContainerAllocator& _alloc)
    : value(0)
    , confidence(0)  {
  (void)_alloc;
    }



   typedef uint16_t _value_type;
  _value_type value;

   typedef uint8_t _confidence_type;
  _confidence_type confidence;



  enum {
    VALUE_STANDSTILL = 0u,
    VALUE_ONE_CENTIMETER_PER_SECOND = 1u,
    VALUE_UNAVAILABLE = 16383u,
    CONFIDENCE_OUT_OF_RANGE = 126u,
    CONFIDENCE_UNAVAILABLE = 127u,
  };


  typedef boost::shared_ptr< ::simu_msgs::Speed_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simu_msgs::Speed_<ContainerAllocator> const> ConstPtr;

}; // struct Speed_

typedef ::simu_msgs::Speed_<std::allocator<void> > Speed;

typedef boost::shared_ptr< ::simu_msgs::Speed > SpeedPtr;
typedef boost::shared_ptr< ::simu_msgs::Speed const> SpeedConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simu_msgs::Speed_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simu_msgs::Speed_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simu_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'simu_msgs': ['/home/user/catkin_ws/src/simu_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simu_msgs::Speed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simu_msgs::Speed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simu_msgs::Speed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simu_msgs::Speed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simu_msgs::Speed_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simu_msgs::Speed_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simu_msgs::Speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5b56eda5b1e0934b6981a564e8935c18";
  }

  static const char* value(const ::simu_msgs::Speed_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5b56eda5b1e0934bULL;
  static const uint64_t static_value2 = 0x6981a564e8935c18ULL;
};

template<class ContainerAllocator>
struct DataType< ::simu_msgs::Speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simu_msgs/Speed";
  }

  static const char* value(const ::simu_msgs::Speed_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simu_msgs::Speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 value # 0.01 m/s\n\
uint8 confidence # 0.01 m/s\n\
\n\
uint16 VALUE_STANDSTILL = 0\n\
uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1\n\
uint16 VALUE_UNAVAILABLE = 16383\n\
\n\
uint8 CONFIDENCE_OUT_OF_RANGE = 126\n\
uint8 CONFIDENCE_UNAVAILABLE = 127\n\
";
  }

  static const char* value(const ::simu_msgs::Speed_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simu_msgs::Speed_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Speed_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simu_msgs::Speed_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simu_msgs::Speed_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.value);
    s << indent << "confidence: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMU_MSGS_MESSAGE_SPEED_H
