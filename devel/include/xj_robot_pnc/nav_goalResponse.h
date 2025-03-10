// Generated by gencpp from file xj_robot_pnc/nav_goalResponse.msg
// DO NOT EDIT!


#ifndef XJ_ROBOT_PNC_MESSAGE_NAV_GOALRESPONSE_H
#define XJ_ROBOT_PNC_MESSAGE_NAV_GOALRESPONSE_H


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
struct nav_goalResponse_
{
  typedef nav_goalResponse_<ContainerAllocator> Type;

  nav_goalResponse_()
    : reach_ok(false)  {
    }
  nav_goalResponse_(const ContainerAllocator& _alloc)
    : reach_ok(false)  {
  (void)_alloc;
    }



   typedef uint8_t _reach_ok_type;
  _reach_ok_type reach_ok;





  typedef boost::shared_ptr< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> const> ConstPtr;

}; // struct nav_goalResponse_

typedef ::xj_robot_pnc::nav_goalResponse_<std::allocator<void> > nav_goalResponse;

typedef boost::shared_ptr< ::xj_robot_pnc::nav_goalResponse > nav_goalResponsePtr;
typedef boost::shared_ptr< ::xj_robot_pnc::nav_goalResponse const> nav_goalResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator1> & lhs, const ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator2> & rhs)
{
  return lhs.reach_ok == rhs.reach_ok;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator1> & lhs, const ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace xj_robot_pnc

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54e5c6356731ff88942bb53a37f7c1f1";
  }

  static const char* value(const ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54e5c6356731ff88ULL;
  static const uint64_t static_value2 = 0x942bb53a37f7c1f1ULL;
};

template<class ContainerAllocator>
struct DataType< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xj_robot_pnc/nav_goalResponse";
  }

  static const char* value(const ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool reach_ok\n"
"\n"
"##导航节点提供服务\n"
"##发送位姿信息，reach_ok代表是否成功到达位姿。\n"
"##导航服务结束后才返回\n"
;
  }

  static const char* value(const ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.reach_ok);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct nav_goalResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xj_robot_pnc::nav_goalResponse_<ContainerAllocator>& v)
  {
    s << indent << "reach_ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reach_ok);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XJ_ROBOT_PNC_MESSAGE_NAV_GOALRESPONSE_H
