// Generated by gencpp from file simu_msgs/PositionConfidenceEllipse.msg
// DO NOT EDIT!


#ifndef SIMU_MSGS_MESSAGE_POSITIONCONFIDENCEELLIPSE_H
#define SIMU_MSGS_MESSAGE_POSITIONCONFIDENCEELLIPSE_H


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
struct PositionConfidenceEllipse_
{
  typedef PositionConfidenceEllipse_<ContainerAllocator> Type;

  PositionConfidenceEllipse_()
    : semi_major_confidence(0)
    , semi_minor_confidence(0)
    , semi_major_orientation(0)  {
    }
  PositionConfidenceEllipse_(const ContainerAllocator& _alloc)
    : semi_major_confidence(0)
    , semi_minor_confidence(0)
    , semi_major_orientation(0)  {
  (void)_alloc;
    }



   typedef uint16_t _semi_major_confidence_type;
  _semi_major_confidence_type semi_major_confidence;

   typedef uint16_t _semi_minor_confidence_type;
  _semi_minor_confidence_type semi_minor_confidence;

   typedef uint16_t _semi_major_orientation_type;
  _semi_major_orientation_type semi_major_orientation;



  enum {
    SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094u,
    SEMI_AXIS_LENGTH_UNAVAILABLE = 4095u,
  };


  typedef boost::shared_ptr< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> const> ConstPtr;

}; // struct PositionConfidenceEllipse_

typedef ::simu_msgs::PositionConfidenceEllipse_<std::allocator<void> > PositionConfidenceEllipse;

typedef boost::shared_ptr< ::simu_msgs::PositionConfidenceEllipse > PositionConfidenceEllipsePtr;
typedef boost::shared_ptr< ::simu_msgs::PositionConfidenceEllipse const> PositionConfidenceEllipseConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c20c3376bfa1f7fa4fce4f692844e203";
  }

  static const char* value(const ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc20c3376bfa1f7faULL;
  static const uint64_t static_value2 = 0x4fce4f692844e203ULL;
};

template<class ContainerAllocator>
struct DataType< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simu_msgs/PositionConfidenceEllipse";
  }

  static const char* value(const ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 semi_major_confidence # cm\n\
uint16 semi_minor_confidence # cm\n\
uint16 semi_major_orientation # 0.1 degree\n\
\n\
uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094\n\
uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095\n\
";
  }

  static const char* value(const ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.semi_major_confidence);
      stream.next(m.semi_minor_confidence);
      stream.next(m.semi_major_orientation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PositionConfidenceEllipse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simu_msgs::PositionConfidenceEllipse_<ContainerAllocator>& v)
  {
    s << indent << "semi_major_confidence: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.semi_major_confidence);
    s << indent << "semi_minor_confidence: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.semi_minor_confidence);
    s << indent << "semi_major_orientation: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.semi_major_orientation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMU_MSGS_MESSAGE_POSITIONCONFIDENCEELLIPSE_H
