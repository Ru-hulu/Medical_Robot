// Generated by gencpp from file srvbg/bed_recog.msg
// DO NOT EDIT!


#ifndef SRVBG_MESSAGE_BED_RECOG_H
#define SRVBG_MESSAGE_BED_RECOG_H

#include <ros/service_traits.h>


#include <srvbg/bed_recogRequest.h>
#include <srvbg/bed_recogResponse.h>


namespace srvbg
{

struct bed_recog
{

typedef bed_recogRequest Request;
typedef bed_recogResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct bed_recog
} // namespace srvbg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::srvbg::bed_recog > {
  static const char* value()
  {
    return "fabdbcfcb72f74f8be32621e26727406";
  }

  static const char* value(const ::srvbg::bed_recog&) { return value(); }
};

template<>
struct DataType< ::srvbg::bed_recog > {
  static const char* value()
  {
    return "srvbg/bed_recog";
  }

  static const char* value(const ::srvbg::bed_recog&) { return value(); }
};


// service_traits::MD5Sum< ::srvbg::bed_recogRequest> should match
// service_traits::MD5Sum< ::srvbg::bed_recog >
template<>
struct MD5Sum< ::srvbg::bed_recogRequest>
{
  static const char* value()
  {
    return MD5Sum< ::srvbg::bed_recog >::value();
  }
  static const char* value(const ::srvbg::bed_recogRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::srvbg::bed_recogRequest> should match
// service_traits::DataType< ::srvbg::bed_recog >
template<>
struct DataType< ::srvbg::bed_recogRequest>
{
  static const char* value()
  {
    return DataType< ::srvbg::bed_recog >::value();
  }
  static const char* value(const ::srvbg::bed_recogRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::srvbg::bed_recogResponse> should match
// service_traits::MD5Sum< ::srvbg::bed_recog >
template<>
struct MD5Sum< ::srvbg::bed_recogResponse>
{
  static const char* value()
  {
    return MD5Sum< ::srvbg::bed_recog >::value();
  }
  static const char* value(const ::srvbg::bed_recogResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::srvbg::bed_recogResponse> should match
// service_traits::DataType< ::srvbg::bed_recog >
template<>
struct DataType< ::srvbg::bed_recogResponse>
{
  static const char* value()
  {
    return DataType< ::srvbg::bed_recog >::value();
  }
  static const char* value(const ::srvbg::bed_recogResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SRVBG_MESSAGE_BED_RECOG_H
