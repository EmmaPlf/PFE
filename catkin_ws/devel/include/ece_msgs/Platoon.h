// Generated by gencpp from file ece_msgs/Platoon.msg
// DO NOT EDIT!


#ifndef ECE_MSGS_MESSAGE_PLATOON_H
#define ECE_MSGS_MESSAGE_PLATOON_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ece_msgs/IDs.h>
#include <ece_msgs/ReferencePosition.h>
#include <ece_msgs/VitesseInterdistance.h>

namespace ece_msgs
{
template <class ContainerAllocator>
struct Platoon_
{
  typedef Platoon_<ContainerAllocator> Type;

  Platoon_()
    : id_platoon(0)
    , ids()
    , nombre_vehicules(0)
    , destination()
    , vitesse_interdistance()  {
    }
  Platoon_(const ContainerAllocator& _alloc)
    : id_platoon(0)
    , ids(_alloc)
    , nombre_vehicules(0)
    , destination(_alloc)
    , vitesse_interdistance(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _id_platoon_type;
  _id_platoon_type id_platoon;

   typedef std::vector< ::ece_msgs::IDs_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ece_msgs::IDs_<ContainerAllocator> >::other >  _ids_type;
  _ids_type ids;

   typedef uint8_t _nombre_vehicules_type;
  _nombre_vehicules_type nombre_vehicules;

   typedef  ::ece_msgs::ReferencePosition_<ContainerAllocator>  _destination_type;
  _destination_type destination;

   typedef  ::ece_msgs::VitesseInterdistance_<ContainerAllocator>  _vitesse_interdistance_type;
  _vitesse_interdistance_type vitesse_interdistance;





  typedef boost::shared_ptr< ::ece_msgs::Platoon_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ece_msgs::Platoon_<ContainerAllocator> const> ConstPtr;

}; // struct Platoon_

typedef ::ece_msgs::Platoon_<std::allocator<void> > Platoon;

typedef boost::shared_ptr< ::ece_msgs::Platoon > PlatoonPtr;
typedef boost::shared_ptr< ::ece_msgs::Platoon const> PlatoonConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ece_msgs::Platoon_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ece_msgs::Platoon_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ece_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ece_msgs': ['/home/david/catkin_ws/src/ece_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ece_msgs::Platoon_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ece_msgs::Platoon_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ece_msgs::Platoon_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ece_msgs::Platoon_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ece_msgs::Platoon_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ece_msgs::Platoon_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ece_msgs::Platoon_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fff69630e9a6bd2b20508f0fab73dfb5";
  }

  static const char* value(const ::ece_msgs::Platoon_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfff69630e9a6bd2bULL;
  static const uint64_t static_value2 = 0x20508f0fab73dfb5ULL;
};

template<class ContainerAllocator>
struct DataType< ::ece_msgs::Platoon_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ece_msgs/Platoon";
  }

  static const char* value(const ::ece_msgs::Platoon_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ece_msgs::Platoon_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ID platoon : 3 bits\n\
uint8 id_platoon\n\
\n\
# ID autres véhicules platoon\n\
IDs[] ids \n\
\n\
# Nombre de véhicules : 3 bits\n\
uint8 nombre_vehicules\n\
\n\
# Destination : 8 octets\n\
ReferencePosition destination\n\
\n\
# Vitesse et interdistance\n\
VitesseInterdistance vitesse_interdistance\n\
================================================================================\n\
MSG: ece_msgs/IDs\n\
uint8 ID\n\
uint8 position\n\
================================================================================\n\
MSG: ece_msgs/ReferencePosition\n\
int64 latitude # 0.1 micro degree\n\
int64 longitude # 0.1 micro degree\n\
int32 altitude\n\
\n\
int64 LATITUDE_UNAVAILABLE = 900000001\n\
int64 LONGITUDE_UNAVAILABLE = 1800000001\n\
int32 ALTITUDE_UNAVAILABLE = 800001\n\
\n\
================================================================================\n\
MSG: ece_msgs/VitesseInterdistance\n\
# Vitesse : 6 bits\n\
Speed speed\n\
\n\
# Interdistance : 2 bits\n\
uint8 interdistance\n\
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
";
  }

  static const char* value(const ::ece_msgs::Platoon_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ece_msgs::Platoon_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id_platoon);
      stream.next(m.ids);
      stream.next(m.nombre_vehicules);
      stream.next(m.destination);
      stream.next(m.vitesse_interdistance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Platoon_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ece_msgs::Platoon_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ece_msgs::Platoon_<ContainerAllocator>& v)
  {
    s << indent << "id_platoon: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id_platoon);
    s << indent << "ids[]" << std::endl;
    for (size_t i = 0; i < v.ids.size(); ++i)
    {
      s << indent << "  ids[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ece_msgs::IDs_<ContainerAllocator> >::stream(s, indent + "    ", v.ids[i]);
    }
    s << indent << "nombre_vehicules: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.nombre_vehicules);
    s << indent << "destination: ";
    s << std::endl;
    Printer< ::ece_msgs::ReferencePosition_<ContainerAllocator> >::stream(s, indent + "  ", v.destination);
    s << indent << "vitesse_interdistance: ";
    s << std::endl;
    Printer< ::ece_msgs::VitesseInterdistance_<ContainerAllocator> >::stream(s, indent + "  ", v.vitesse_interdistance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ECE_MSGS_MESSAGE_PLATOON_H
