// Generated by gencpp from file autobots_calibration/CameraStatus.msg
// DO NOT EDIT!


#ifndef AUTOBOTS_CALIBRATION_MESSAGE_CAMERASTATUS_H
#define AUTOBOTS_CALIBRATION_MESSAGE_CAMERASTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace autobots_calibration
{
template <class ContainerAllocator>
struct CameraStatus_
{
  typedef CameraStatus_<ContainerAllocator> Type;

  CameraStatus_()
    : header()
    , status(0)  {
    }
  CameraStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int8_t _status_type;
  _status_type status;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(WAITING)
  #undef WAITING
#endif
#if defined(_WIN32) && defined(CALIBRATING)
  #undef CALIBRATING
#endif
#if defined(_WIN32) && defined(STABLE)
  #undef STABLE
#endif

  enum {
    WAITING = 0,
    CALIBRATING = 1,
    STABLE = 2,
  };


  typedef boost::shared_ptr< ::autobots_calibration::CameraStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autobots_calibration::CameraStatus_<ContainerAllocator> const> ConstPtr;

}; // struct CameraStatus_

typedef ::autobots_calibration::CameraStatus_<std::allocator<void> > CameraStatus;

typedef boost::shared_ptr< ::autobots_calibration::CameraStatus > CameraStatusPtr;
typedef boost::shared_ptr< ::autobots_calibration::CameraStatus const> CameraStatusConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autobots_calibration::CameraStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autobots_calibration::CameraStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autobots_calibration::CameraStatus_<ContainerAllocator1> & lhs, const ::autobots_calibration::CameraStatus_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autobots_calibration::CameraStatus_<ContainerAllocator1> & lhs, const ::autobots_calibration::CameraStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autobots_calibration

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autobots_calibration::CameraStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autobots_calibration::CameraStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autobots_calibration::CameraStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autobots_calibration::CameraStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autobots_calibration::CameraStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autobots_calibration::CameraStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autobots_calibration::CameraStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "55e58e15dd4e1ec3ae16c21d57a733c3";
  }

  static const char* value(const ::autobots_calibration::CameraStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x55e58e15dd4e1ec3ULL;
  static const uint64_t static_value2 = 0xae16c21d57a733c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::autobots_calibration::CameraStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autobots_calibration/CameraStatus";
  }

  static const char* value(const ::autobots_calibration::CameraStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autobots_calibration::CameraStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"int8 WAITING = 0\n"
"int8 CALIBRATING = 1\n"
"int8 STABLE = 2\n"
"\n"
"int8 status\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::autobots_calibration::CameraStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autobots_calibration::CameraStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CameraStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autobots_calibration::CameraStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autobots_calibration::CameraStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    Printer<int8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOBOTS_CALIBRATION_MESSAGE_CAMERASTATUS_H
