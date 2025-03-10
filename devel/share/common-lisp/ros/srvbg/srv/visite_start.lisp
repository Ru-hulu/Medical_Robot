; Auto-generated. Do not edit!


(cl:in-package srvbg-srv)


;//! \htmlinclude visite_start-request.msg.html

(cl:defclass <visite_start-request> (roslisp-msg-protocol:ros-message)
  ((start_visit
    :reader start_visit
    :initarg :start_visit
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass visite_start-request (<visite_start-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visite_start-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visite_start-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<visite_start-request> is deprecated: use srvbg-srv:visite_start-request instead.")))

(cl:ensure-generic-function 'start_visit-val :lambda-list '(m))
(cl:defmethod start_visit-val ((m <visite_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:start_visit-val is deprecated.  Use srvbg-srv:start_visit instead.")
  (start_visit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visite_start-request>) ostream)
  "Serializes a message object of type '<visite_start-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_visit) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visite_start-request>) istream)
  "Deserializes a message object of type '<visite_start-request>"
    (cl:setf (cl:slot-value msg 'start_visit) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visite_start-request>)))
  "Returns string type for a service object of type '<visite_start-request>"
  "srvbg/visite_startRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visite_start-request)))
  "Returns string type for a service object of type 'visite_start-request"
  "srvbg/visite_startRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visite_start-request>)))
  "Returns md5sum for a message object of type '<visite_start-request>"
  "3a3696aff47d8afac6800c82253e3809")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visite_start-request)))
  "Returns md5sum for a message object of type 'visite_start-request"
  "3a3696aff47d8afac6800c82253e3809")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visite_start-request>)))
  "Returns full string definition for message of type '<visite_start-request>"
  (cl:format cl:nil "bool start_visit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visite_start-request)))
  "Returns full string definition for message of type 'visite_start-request"
  (cl:format cl:nil "bool start_visit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visite_start-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visite_start-request>))
  "Converts a ROS message object to a list"
  (cl:list 'visite_start-request
    (cl:cons ':start_visit (start_visit msg))
))
;//! \htmlinclude visite_start-response.msg.html

(cl:defclass <visite_start-response> (roslisp-msg-protocol:ros-message)
  ((start_ok
    :reader start_ok
    :initarg :start_ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass visite_start-response (<visite_start-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visite_start-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visite_start-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<visite_start-response> is deprecated: use srvbg-srv:visite_start-response instead.")))

(cl:ensure-generic-function 'start_ok-val :lambda-list '(m))
(cl:defmethod start_ok-val ((m <visite_start-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:start_ok-val is deprecated.  Use srvbg-srv:start_ok instead.")
  (start_ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visite_start-response>) ostream)
  "Serializes a message object of type '<visite_start-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visite_start-response>) istream)
  "Deserializes a message object of type '<visite_start-response>"
    (cl:setf (cl:slot-value msg 'start_ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visite_start-response>)))
  "Returns string type for a service object of type '<visite_start-response>"
  "srvbg/visite_startResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visite_start-response)))
  "Returns string type for a service object of type 'visite_start-response"
  "srvbg/visite_startResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visite_start-response>)))
  "Returns md5sum for a message object of type '<visite_start-response>"
  "3a3696aff47d8afac6800c82253e3809")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visite_start-response)))
  "Returns md5sum for a message object of type 'visite_start-response"
  "3a3696aff47d8afac6800c82253e3809")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visite_start-response>)))
  "Returns full string definition for message of type '<visite_start-response>"
  (cl:format cl:nil "bool start_ok~%~%## start_visit =  true代表开始巡诊服务~%## start_ok 代表当前 巡诊节点的状态~%## 提供服务端接受到服务请求后马上返回~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visite_start-response)))
  "Returns full string definition for message of type 'visite_start-response"
  (cl:format cl:nil "bool start_ok~%~%## start_visit =  true代表开始巡诊服务~%## start_ok 代表当前 巡诊节点的状态~%## 提供服务端接受到服务请求后马上返回~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visite_start-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visite_start-response>))
  "Converts a ROS message object to a list"
  (cl:list 'visite_start-response
    (cl:cons ':start_ok (start_ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'visite_start)))
  'visite_start-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'visite_start)))
  'visite_start-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visite_start)))
  "Returns string type for a service object of type '<visite_start>"
  "srvbg/visite_start")