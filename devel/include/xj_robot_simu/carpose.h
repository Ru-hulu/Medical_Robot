// Generated by gencpp from file xj_robot_simu/carpose.msg
// DO NOT EDIT!


#ifndef XJ_ROBOT_SIMU_MESSAGE_CARPOSE_H
#define XJ_ROBOT_SIMU_MESSAGE_CARPOSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace xj_robot_simu
{
template <class ContainerAllocator>
struct carpose_
{
  typedef carpose_<ContainerAllocator> Type;

  carpose_()
    : x(0.0)
    , y(0.0)
    , yaw(0.0)  {
    }
  carpose_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::xj_robot_simu::carpose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xj_robot_simu::carpose_<ContainerAllocator> const> ConstPtr;

}; // struct carpose_

typedef ::xj_robot_simu::carpose_<std::allocator<void> > carpose;

typedef boost::shared_ptr< ::xj_robot_simu::carpose > carposePtr;
typedef boost::shared_ptr< ::xj_robot_simu::carpose const> carposeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xj_robot_simu::carpose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xj_robot_simu::carpose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::xj_robot_simu::carpose_<ContainerAllocator1> & lhs, const ::xj_robot_simu::carpose_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.yaw == rhs.yaw;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::xj_robot_simu::carpose_<ContainerAllocator1> & lhs, const ::xj_robot_simu::carpose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace xj_robot_simu

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::xj_robot_simu::carpose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xj_robot_simu::carpose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xj_robot_simu::carpose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xj_robot_simu::carpose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xj_robot_simu::carpose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xj_robot_simu::carpose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xj_robot_simu::carpose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "47802147045815b06859cca542c21d31";
  }

  static const char* value(const ::xj_robot_simu::carpose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x47802147045815b0ULL;
  static const uint64_t static_value2 = 0x6859cca542c21d31ULL;
};

template<class ContainerAllocator>
struct DataType< ::xj_robot_simu::carpose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xj_robot_simu/carpose";
  }

  static const char* value(const ::xj_robot_simu::carpose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xj_robot_simu::carpose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 yaw\n"
;
  }

  static const char* value(const ::xj_robot_simu::carpose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xj_robot_simu::carpose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct carpose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xj_robot_simu::carpose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xj_robot_simu::carpose_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XJ_ROBOT_SIMU_MESSAGE_CARPOSE_H
