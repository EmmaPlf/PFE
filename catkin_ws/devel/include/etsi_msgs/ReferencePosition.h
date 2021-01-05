// Generated by gencpp from file etsi_msgs/ReferencePosition.msg
// DO NOT EDIT!


#ifndef ETSI_MSGS_MESSAGE_REFERENCEPOSITION_H
#define ETSI_MSGS_MESSAGE_REFERENCEPOSITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <etsi_msgs/PositionConfidenceEllipse.h>
#include <etsi_msgs/Altitude.h>

namespace etsi_msgs
{
template <class ContainerAllocator>
struct ReferencePosition_
{
  typedef ReferencePosition_<ContainerAllocator> Type;

  ReferencePosition_()
    : latitude(0)
    , longitude(0)
    , position_confidence()
    , altitude()  {
    }
  ReferencePosition_(const ContainerAllocator& _alloc)
    : latitude(0)
    , longitude(0)
    , position_confidence(_alloc)
    , altitude(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _latitude_type;
  _latitude_type latitude;

   typedef int64_t _longitude_type;
  _longitude_type longitude;

   typedef  ::etsi_msgs::PositionConfidenceEllipse_<ContainerAllocator>  _position_confidence_type;
  _position_confidence_type position_confidence;

   typedef  ::etsi_msgs::Altitude_<ContainerAllocator>  _altitude_type;
  _altitude_type altitude;



  enum {
    LATITUDE_UNAVAILABLE = 900000001,
    LONGITUDE_UNAVAILABLE = 1800000001,
  };


  typedef boost::shared_ptr< ::etsi_msgs::ReferencePosition_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::etsi_msgs::ReferencePosition_<ContainerAllocator> const> ConstPtr;

}; // struct ReferencePosition_

typedef ::etsi_msgs::ReferencePosition_<std::allocator<void> > ReferencePosition;

typedef boost::shared_ptr< ::etsi_msgs::ReferencePosition > ReferencePositionPtr;
typedef boost::shared_ptr< ::etsi_msgs::ReferencePosition const> ReferencePositionConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::etsi_msgs::ReferencePosition_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::etsi_msgs::ReferencePosition_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::etsi_msgs::ReferencePosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::ReferencePosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::ReferencePosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::ReferencePosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::ReferencePosition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::ReferencePosition_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::etsi_msgs::ReferencePosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a3cec6171339bd488bc9f812c2670f12";
  }

  static const char* value(const ::etsi_msgs::ReferencePosition_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa3cec6171339bd48ULL;
  static const uint64_t static_value2 = 0x8bc9f812c2670f12ULL;
};

template<class ContainerAllocator>
struct DataType< ::etsi_msgs::ReferencePosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "etsi_msgs/ReferencePosition";
  }

  static const char* value(const ::etsi_msgs::ReferencePosition_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::etsi_msgs::ReferencePosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 latitude # 0.1 micro degree\n\
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
";
  }

  static const char* value(const ::etsi_msgs::ReferencePosition_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::etsi_msgs::ReferencePosition_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.position_confidence);
      stream.next(m.altitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReferencePosition_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::etsi_msgs::ReferencePosition_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::etsi_msgs::ReferencePosition_<ContainerAllocator>& v)
  {
    s << indent << "latitude: ";
    Printer<int64_t>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<int64_t>::stream(s, indent + "  ", v.longitude);
    s << indent << "position_confidence: ";
    s << std::endl;
    Printer< ::etsi_msgs::PositionConfidenceEllipse_<ContainerAllocator> >::stream(s, indent + "  ", v.position_confidence);
    s << indent << "altitude: ";
    s << std::endl;
    Printer< ::etsi_msgs::Altitude_<ContainerAllocator> >::stream(s, indent + "  ", v.altitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETSI_MSGS_MESSAGE_REFERENCEPOSITION_H
