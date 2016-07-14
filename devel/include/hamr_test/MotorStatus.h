// Generated by gencpp from file hamr_test/MotorStatus.msg
// DO NOT EDIT!


#ifndef HAMR_TEST_MESSAGE_MOTORSTATUS_H
#define HAMR_TEST_MESSAGE_MOTORSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hamr_test
{
template <class ContainerAllocator>
struct MotorStatus_
{
  typedef MotorStatus_<ContainerAllocator> Type;

  MotorStatus_()
    : position(0)
    , velocity(0)
    , desired_velocity(0)
    , speed_cmd(0)
    , pidError(0)  {
    }
  MotorStatus_(const ContainerAllocator& _alloc)
    : position(0)
    , velocity(0)
    , desired_velocity(0)
    , speed_cmd(0)
    , pidError(0)  {
  (void)_alloc;
    }



   typedef uint16_t _position_type;
  _position_type position;

   typedef int16_t _velocity_type;
  _velocity_type velocity;

   typedef int16_t _desired_velocity_type;
  _desired_velocity_type desired_velocity;

   typedef int16_t _speed_cmd_type;
  _speed_cmd_type speed_cmd;

   typedef int16_t _pidError_type;
  _pidError_type pidError;




  typedef boost::shared_ptr< ::hamr_test::MotorStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hamr_test::MotorStatus_<ContainerAllocator> const> ConstPtr;

}; // struct MotorStatus_

typedef ::hamr_test::MotorStatus_<std::allocator<void> > MotorStatus;

typedef boost::shared_ptr< ::hamr_test::MotorStatus > MotorStatusPtr;
typedef boost::shared_ptr< ::hamr_test::MotorStatus const> MotorStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hamr_test::MotorStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hamr_test::MotorStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hamr_test

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'hamr_test': ['/home/modlab/Documents/hamr-ros/src/hamr_test/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hamr_test::MotorStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hamr_test::MotorStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hamr_test::MotorStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hamr_test::MotorStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hamr_test::MotorStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hamr_test::MotorStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hamr_test::MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "15945dc3aa5ce3ad70aaaff6085229e9";
  }

  static const char* value(const ::hamr_test::MotorStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x15945dc3aa5ce3adULL;
  static const uint64_t static_value2 = 0x70aaaff6085229e9ULL;
};

template<class ContainerAllocator>
struct DataType< ::hamr_test::MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hamr_test/MotorStatus";
  }

  static const char* value(const ::hamr_test::MotorStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hamr_test::MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 position\n\
int16 velocity\n\
int16 desired_velocity\n\
int16 speed_cmd\n\
int16 pidError\n\
";
  }

  static const char* value(const ::hamr_test::MotorStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hamr_test::MotorStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.velocity);
      stream.next(m.desired_velocity);
      stream.next(m.speed_cmd);
      stream.next(m.pidError);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct MotorStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hamr_test::MotorStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hamr_test::MotorStatus_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.position);
    s << indent << "velocity: ";
    Printer<int16_t>::stream(s, indent + "  ", v.velocity);
    s << indent << "desired_velocity: ";
    Printer<int16_t>::stream(s, indent + "  ", v.desired_velocity);
    s << indent << "speed_cmd: ";
    Printer<int16_t>::stream(s, indent + "  ", v.speed_cmd);
    s << indent << "pidError: ";
    Printer<int16_t>::stream(s, indent + "  ", v.pidError);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAMR_TEST_MESSAGE_MOTORSTATUS_H
