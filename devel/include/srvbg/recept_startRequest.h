// Generated by gencpp from file srvbg/recept_startRequest.msg
// DO NOT EDIT!


#ifndef SRVBG_MESSAGE_RECEPT_STARTREQUEST_H
#define SRVBG_MESSAGE_RECEPT_STARTREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace srvbg
{
template <class ContainerAllocator>
struct recept_startRequest_
{
  typedef recept_startRequest_<ContainerAllocator> Type;

  recept_startRequest_()
    : start_recept(false)  {
    }
  recept_startRequest_(const ContainerAllocator& _alloc)
    : start_recept(false)  {
  (void)_alloc;
    }



   typedef uint8_t _start_recept_type;
  _start_recept_type start_recept;





  typedef boost::shared_ptr< ::srvbg::recept_startRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::srvbg::recept_startRequest_<ContainerAllocator> const> ConstPtr;

}; // struct recept_startRequest_

typedef ::srvbg::recept_startRequest_<std::allocator<void> > recept_startRequest;

typedef boost::shared_ptr< ::srvbg::recept_startRequest > recept_startRequestPtr;
typedef boost::shared_ptr< ::srvbg::recept_startRequest const> recept_startRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::srvbg::recept_startRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::srvbg::recept_startRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::srvbg::recept_startRequest_<ContainerAllocator1> & lhs, const ::srvbg::recept_startRequest_<ContainerAllocator2> & rhs)
{
  return lhs.start_recept == rhs.start_recept;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::srvbg::recept_startRequest_<ContainerAllocator1> & lhs, const ::srvbg::recept_startRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace srvbg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::srvbg::recept_startRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srvbg::recept_startRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::srvbg::recept_startRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::srvbg::recept_startRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srvbg::recept_startRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srvbg::recept_startRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::srvbg::recept_startRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3eca09550b24e7262c2260445c923ff7";
  }

  static const char* value(const ::srvbg::recept_startRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3eca09550b24e726ULL;
  static const uint64_t static_value2 = 0x2c2260445c923ff7ULL;
};

template<class ContainerAllocator>
struct DataType< ::srvbg::recept_startRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "srvbg/recept_startRequest";
  }

  static const char* value(const ::srvbg::recept_startRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::srvbg::recept_startRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool start_recept\n"
;
  }

  static const char* value(const ::srvbg::recept_startRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::srvbg::recept_startRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start_recept);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct recept_startRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::srvbg::recept_startRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::srvbg::recept_startRequest_<ContainerAllocator>& v)
  {
    s << indent << "start_recept: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.start_recept);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SRVBG_MESSAGE_RECEPT_STARTREQUEST_H
