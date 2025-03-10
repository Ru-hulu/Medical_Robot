// Generated by gencpp from file xj_robot_pnc/record_stopRequest.msg
// DO NOT EDIT!


#ifndef XJ_ROBOT_PNC_MESSAGE_RECORD_STOPREQUEST_H
#define XJ_ROBOT_PNC_MESSAGE_RECORD_STOPREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace xj_robot_pnc
{
template <class ContainerAllocator>
struct record_stopRequest_
{
  typedef record_stopRequest_<ContainerAllocator> Type;

  record_stopRequest_()
    : keep(false)  {
    }
  record_stopRequest_(const ContainerAllocator& _alloc)
    : keep(false)  {
  (void)_alloc;
    }



   typedef uint8_t _keep_type;
  _keep_type keep;





  typedef boost::shared_ptr< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> const> ConstPtr;

}; // struct record_stopRequest_

typedef ::xj_robot_pnc::record_stopRequest_<std::allocator<void> > record_stopRequest;

typedef boost::shared_ptr< ::xj_robot_pnc::record_stopRequest > record_stopRequestPtr;
typedef boost::shared_ptr< ::xj_robot_pnc::record_stopRequest const> record_stopRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::xj_robot_pnc::record_stopRequest_<ContainerAllocator1> & lhs, const ::xj_robot_pnc::record_stopRequest_<ContainerAllocator2> & rhs)
{
  return lhs.keep == rhs.keep;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::xj_robot_pnc::record_stopRequest_<ContainerAllocator1> & lhs, const ::xj_robot_pnc::record_stopRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace xj_robot_pnc

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3d668459724465b058235914efc73a24";
  }

  static const char* value(const ::xj_robot_pnc::record_stopRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3d668459724465b0ULL;
  static const uint64_t static_value2 = 0x58235914efc73a24ULL;
};

template<class ContainerAllocator>
struct DataType< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xj_robot_pnc/record_stopRequest";
  }

  static const char* value(const ::xj_robot_pnc::record_stopRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool keep\n"
;
  }

  static const char* value(const ::xj_robot_pnc::record_stopRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.keep);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct record_stopRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xj_robot_pnc::record_stopRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xj_robot_pnc::record_stopRequest_<ContainerAllocator>& v)
  {
    s << indent << "keep: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.keep);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XJ_ROBOT_PNC_MESSAGE_RECORD_STOPREQUEST_H
