// Generated by gencpp from file etsi_msgs/InformationQuality.msg
// DO NOT EDIT!


#ifndef ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_H
#define ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <etsi_msgs/plugin/InformationQuality.h>

namespace etsi_msgs
{
template <class ContainerAllocator>
struct InformationQuality_
{
  typedef InformationQuality_<ContainerAllocator> Type;

#ifdef ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_PLUGIN_CONSTRUCTOR
  ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_PLUGIN_CONSTRUCTOR
#else
  InformationQuality_()
    : value(0)  {
    }
  InformationQuality_(const ContainerAllocator& _alloc)
    : value(0)  {
  (void)_alloc;
    }

#endif


   typedef int8_t _value_type;
  _value_type value;



  enum {
    UNAVAILABLE = 0,
    LOWEST = 1,
    HIGHEST = 7,
  };


  typedef boost::shared_ptr< ::etsi_msgs::InformationQuality_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::etsi_msgs::InformationQuality_<ContainerAllocator> const> ConstPtr;

#ifdef ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_PLUGIN_CLASS_BODY
  ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_PLUGIN_CLASS_BODY
#endif
}; // struct InformationQuality_

typedef ::etsi_msgs::InformationQuality_<std::allocator<void> > InformationQuality;

typedef boost::shared_ptr< ::etsi_msgs::InformationQuality > InformationQualityPtr;
typedef boost::shared_ptr< ::etsi_msgs::InformationQuality const> InformationQualityConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::etsi_msgs::InformationQuality_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::etsi_msgs::InformationQuality_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::etsi_msgs::InformationQuality_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::InformationQuality_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::InformationQuality_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::InformationQuality_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::InformationQuality_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::InformationQuality_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::etsi_msgs::InformationQuality_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b06931e013e257f658419d4d45f44c4a";
  }

  static const char* value(const ::etsi_msgs::InformationQuality_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb06931e013e257f6ULL;
  static const uint64_t static_value2 = 0x58419d4d45f44c4aULL;
};

template<class ContainerAllocator>
struct DataType< ::etsi_msgs::InformationQuality_<ContainerAllocator> >
{
  static const char* value()
  {
    return "etsi_msgs/InformationQuality";
  }

  static const char* value(const ::etsi_msgs::InformationQuality_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::etsi_msgs::InformationQuality_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 value\n\
\n\
int8 UNAVAILABLE = 0\n\
int8 LOWEST = 1\n\
int8 HIGHEST = 7\n\
";
  }

  static const char* value(const ::etsi_msgs::InformationQuality_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

#ifdef ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_PLUGIN_SERIALIZER
  ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_PLUGIN_SERIALIZER
#else
  template<class ContainerAllocator> struct Serializer< ::etsi_msgs::InformationQuality_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InformationQuality_
#endif

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

#ifdef ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_PLUGIN_PRINTER
  ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_PLUGIN_PRINTER
#else
template<class ContainerAllocator>
struct Printer< ::etsi_msgs::InformationQuality_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::etsi_msgs::InformationQuality_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<int8_t>::stream(s, indent + "  ", v.value);
  }
};
#endif

} // namespace message_operations
} // namespace ros

#endif // ETSI_MSGS_MESSAGE_INFORMATIONQUALITY_H
