// Generated by gencpp from file ece_msgs/Desinsertion.msg
// DO NOT EDIT!


#ifndef ECE_MSGS_MESSAGE_DESINSERTION_H
#define ECE_MSGS_MESSAGE_DESINSERTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ece_msgs/Speed.h>
#include <ece_msgs/ReferencePosition.h>

namespace ece_msgs
{
template <class ContainerAllocator>
struct Desinsertion_
{
  typedef Desinsertion_<ContainerAllocator> Type;

  Desinsertion_()
    : demande_sortie(false)
    , speed()
    , point_sortie()
    , position(0)
    , confirmation_sortie(false)  {
    }
  Desinsertion_(const ContainerAllocator& _alloc)
    : demande_sortie(false)
    , speed(_alloc)
    , point_sortie(_alloc)
    , position(0)
    , confirmation_sortie(false)  {
  (void)_alloc;
    }



   typedef uint8_t _demande_sortie_type;
  _demande_sortie_type demande_sortie;

   typedef  ::ece_msgs::Speed_<ContainerAllocator>  _speed_type;
  _speed_type speed;

   typedef  ::ece_msgs::ReferencePosition_<ContainerAllocator>  _point_sortie_type;
  _point_sortie_type point_sortie;

   typedef uint8_t _position_type;
  _position_type position;

   typedef uint8_t _confirmation_sortie_type;
  _confirmation_sortie_type confirmation_sortie;





  typedef boost::shared_ptr< ::ece_msgs::Desinsertion_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ece_msgs::Desinsertion_<ContainerAllocator> const> ConstPtr;

}; // struct Desinsertion_

typedef ::ece_msgs::Desinsertion_<std::allocator<void> > Desinsertion;

typedef boost::shared_ptr< ::ece_msgs::Desinsertion > DesinsertionPtr;
typedef boost::shared_ptr< ::ece_msgs::Desinsertion const> DesinsertionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ece_msgs::Desinsertion_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ece_msgs::Desinsertion_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ece_msgs::Desinsertion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ece_msgs::Desinsertion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ece_msgs::Desinsertion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ece_msgs::Desinsertion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ece_msgs::Desinsertion_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ece_msgs::Desinsertion_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ece_msgs::Desinsertion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "289d0b836799889abdfb4fb904e756c7";
  }

  static const char* value(const ::ece_msgs::Desinsertion_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x289d0b836799889aULL;
  static const uint64_t static_value2 = 0xbdfb4fb904e756c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::ece_msgs::Desinsertion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ece_msgs/Desinsertion";
  }

  static const char* value(const ::ece_msgs::Desinsertion_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ece_msgs::Desinsertion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Demande de sortie : 1 octet\n\
bool demande_sortie\n\
\n\
# Vitesse de sortie : 6 bits \n\
Speed speed\n\
\n\
# Point de sortie : 8 octets\n\
ReferencePosition point_sortie\n\
\n\
# Nouvelle position dans P : 2 bits\n\
uint8 position\n\
\n\
# Confirmation insertion\n\
bool confirmation_sortie\n\
\n\
================================================================================\n\
MSG: ece_msgs/Speed\n\
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
MSG: ece_msgs/ReferencePosition\n\
int64 latitude # 0.1 micro degree\n\
int64 longitude # 0.1 micro degree\n\
int32 altitude\n\
\n\
int64 LATITUDE_UNAVAILABLE = 900000001\n\
int64 LONGITUDE_UNAVAILABLE = 1800000001\n\
int32 ALTITUDE_UNAVAILABLE = 800001\n\
";
  }

  static const char* value(const ::ece_msgs::Desinsertion_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ece_msgs::Desinsertion_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.demande_sortie);
      stream.next(m.speed);
      stream.next(m.point_sortie);
      stream.next(m.position);
      stream.next(m.confirmation_sortie);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Desinsertion_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ece_msgs::Desinsertion_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ece_msgs::Desinsertion_<ContainerAllocator>& v)
  {
    s << indent << "demande_sortie: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.demande_sortie);
    s << indent << "speed: ";
    s << std::endl;
    Printer< ::ece_msgs::Speed_<ContainerAllocator> >::stream(s, indent + "  ", v.speed);
    s << indent << "point_sortie: ";
    s << std::endl;
    Printer< ::ece_msgs::ReferencePosition_<ContainerAllocator> >::stream(s, indent + "  ", v.point_sortie);
    s << indent << "position: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.position);
    s << indent << "confirmation_sortie: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.confirmation_sortie);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ECE_MSGS_MESSAGE_DESINSERTION_H
