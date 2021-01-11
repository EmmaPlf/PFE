// Generated by gencpp from file ece_msgs/Altitude.msg
// DO NOT EDIT!


#ifndef ECE_MSGS_MESSAGE_ALTITUDE_H
#define ECE_MSGS_MESSAGE_ALTITUDE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ece_msgs
{
template <class ContainerAllocator>
struct Altitude_
{
  typedef Altitude_<ContainerAllocator> Type;

  Altitude_()
    : value(0)
    , confidence(0)  {
    }
  Altitude_(const ContainerAllocator& _alloc)
    : value(0)
    , confidence(0)  {
  (void)_alloc;
    }



   typedef int32_t _value_type;
  _value_type value;

   typedef uint8_t _confidence_type;
  _confidence_type confidence;



  enum {
    VALUE_REFERENCE_ELLIPSOID_SURFACE = 0,
    VALUE_ONE_CENTIMETER = 1,
    VALUE_UNAVAILABLE = 800001,
    CONFIDENCE_1CM = 0u,
    CONFIDENCE_2CM = 1u,
    CONFIDENCE_5CM = 2u,
    CONFIDENCE_10CM = 3u,
    CONFIDENCE_20CM = 4u,
    CONFIDENCE_50CM = 5u,
    CONFIDENCE_1M = 6u,
    CONFIDENCE_2M = 7u,
    CONFIDENCE_5M = 8u,
    CONFIDENCE_10M = 9u,
    CONFIDENCE_20M = 10u,
    CONFIDENCE_50M = 11u,
    CONFIDENCE_100M = 12u,
    CONFIDENCE_200M = 13u,
    CONFIDENCE_OUT_OF_RANGE = 14u,
    CONFIDENCE_UNAVAILABLE = 15u,
  };


  typedef boost::shared_ptr< ::ece_msgs::Altitude_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ece_msgs::Altitude_<ContainerAllocator> const> ConstPtr;

}; // struct Altitude_

typedef ::ece_msgs::Altitude_<std::allocator<void> > Altitude;

typedef boost::shared_ptr< ::ece_msgs::Altitude > AltitudePtr;
typedef boost::shared_ptr< ::ece_msgs::Altitude const> AltitudeConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ece_msgs::Altitude_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ece_msgs::Altitude_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ece_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ece_msgs': ['/home/user/catkin_ws/src/ece_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ece_msgs::Altitude_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ece_msgs::Altitude_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ece_msgs::Altitude_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ece_msgs::Altitude_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ece_msgs::Altitude_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ece_msgs::Altitude_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ece_msgs::Altitude_<ContainerAllocator> >
{
  static const char* value()
  {
    return "968c3c0b85fd51b834ff2ab741786e5b";
  }

  static const char* value(const ::ece_msgs::Altitude_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x968c3c0b85fd51b8ULL;
  static const uint64_t static_value2 = 0x34ff2ab741786e5bULL;
};

template<class ContainerAllocator>
struct DataType< ::ece_msgs::Altitude_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ece_msgs/Altitude";
  }

  static const char* value(const ::ece_msgs::Altitude_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ece_msgs::Altitude_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 value # 0.01 meter\n\
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
";
  }

  static const char* value(const ::ece_msgs::Altitude_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ece_msgs::Altitude_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Altitude_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ece_msgs::Altitude_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ece_msgs::Altitude_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<int32_t>::stream(s, indent + "  ", v.value);
    s << indent << "confidence: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ECE_MSGS_MESSAGE_ALTITUDE_H
