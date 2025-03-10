// Generated by gencpp from file srvbg/bed_recogRequest.msg
// DO NOT EDIT!


#ifndef SRVBG_MESSAGE_BED_RECOGREQUEST_H
#define SRVBG_MESSAGE_BED_RECOGREQUEST_H


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
struct bed_recogRequest_
{
  typedef bed_recogRequest_<ContainerAllocator> Type;

  bed_recogRequest_()
    : start_recog_bed(false)  {
    }
  bed_recogRequest_(const ContainerAllocator& _alloc)
    : start_recog_bed(false)  {
  (void)_alloc;
    }



   typedef uint8_t _start_recog_bed_type;
  _start_recog_bed_type start_recog_bed;





  typedef boost::shared_ptr< ::srvbg::bed_recogRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::srvbg::bed_recogRequest_<ContainerAllocator> const> ConstPtr;

}; // struct bed_recogRequest_

typedef ::srvbg::bed_recogRequest_<std::allocator<void> > bed_recogRequest;

typedef boost::shared_ptr< ::srvbg::bed_recogRequest > bed_recogRequestPtr;
typedef boost::shared_ptr< ::srvbg::bed_recogRequest const> bed_recogRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::srvbg::bed_recogRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::srvbg::bed_recogRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::srvbg::bed_recogRequest_<ContainerAllocator1> & lhs, const ::srvbg::bed_recogRequest_<ContainerAllocator2> & rhs)
{
  return lhs.start_recog_bed == rhs.start_recog_bed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::srvbg::bed_recogRequest_<ContainerAllocator1> & lhs, const ::srvbg::bed_recogRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace srvbg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::srvbg::bed_recogRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srvbg::bed_recogRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::srvbg::bed_recogRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::srvbg::bed_recogRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srvbg::bed_recogRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srvbg::bed_recogRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::srvbg::bed_recogRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "20844199a57f52f5853274f7c4946ffa";
  }

  static const char* value(const ::srvbg::bed_recogRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x20844199a57f52f5ULL;
  static const uint64_t static_value2 = 0x853274f7c4946ffaULL;
};

template<class ContainerAllocator>
struct DataType< ::srvbg::bed_recogRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "srvbg/bed_recogRequest";
  }

  static const char* value(const ::srvbg::bed_recogRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::srvbg::bed_recogRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool start_recog_bed\n"
;
  }

  static const char* value(const ::srvbg::bed_recogRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::srvbg::bed_recogRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start_recog_bed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct bed_recogRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::srvbg::bed_recogRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::srvbg::bed_recogRequest_<ContainerAllocator>& v)
  {
    s << indent << "start_recog_bed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.start_recog_bed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SRVBG_MESSAGE_BED_RECOGREQUEST_H
