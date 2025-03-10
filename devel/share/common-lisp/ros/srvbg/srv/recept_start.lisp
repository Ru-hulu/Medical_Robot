; Auto-generated. Do not edit!


(cl:in-package srvbg-srv)


;//! \htmlinclude recept_start-request.msg.html

(cl:defclass <recept_start-request> (roslisp-msg-protocol:ros-message)
  ((start_recept
    :reader start_recept
    :initarg :start_recept
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass recept_start-request (<recept_start-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recept_start-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recept_start-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<recept_start-request> is deprecated: use srvbg-srv:recept_start-request instead.")))

(cl:ensure-generic-function 'start_recept-val :lambda-list '(m))
(cl:defmethod start_recept-val ((m <recept_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:start_recept-val is deprecated.  Use srvbg-srv:start_recept instead.")
  (start_recept m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recept_start-request>) ostream)
  "Serializes a message object of type '<recept_start-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_recept) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recept_start-request>) istream)
  "Deserializes a message object of type '<recept_start-request>"
    (cl:setf (cl:slot-value msg 'start_recept) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recept_start-request>)))
  "Returns string type for a service object of type '<recept_start-request>"
  "srvbg/recept_startRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recept_start-request)))
  "Returns string type for a service object of type 'recept_start-request"
  "srvbg/recept_startRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recept_start-request>)))
  "Returns md5sum for a message object of type '<recept_start-request>"
  "01e466c8eb71ba7ac0b6740b7da30b81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recept_start-request)))
  "Returns md5sum for a message object of type 'recept_start-request"
  "01e466c8eb71ba7ac0b6740b7da30b81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recept_start-request>)))
  "Returns full string definition for message of type '<recept_start-request>"
  (cl:format cl:nil "bool start_recept~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recept_start-request)))
  "Returns full string definition for message of type 'recept_start-request"
  (cl:format cl:nil "bool start_recept~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recept_start-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recept_start-request>))
  "Converts a ROS message object to a list"
  (cl:list 'recept_start-request
    (cl:cons ':start_recept (start_recept msg))
))
;//! \htmlinclude recept_start-response.msg.html

(cl:defclass <recept_start-response> (roslisp-msg-protocol:ros-message)
  ((start_ok
    :reader start_ok
    :initarg :start_ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass recept_start-response (<recept_start-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recept_start-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recept_start-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<recept_start-response> is deprecated: use srvbg-srv:recept_start-response instead.")))

(cl:ensure-generic-function 'start_ok-val :lambda-list '(m))
(cl:defmethod start_ok-val ((m <recept_start-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:start_ok-val is deprecated.  Use srvbg-srv:start_ok instead.")
  (start_ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recept_start-response>) ostream)
  "Serializes a message object of type '<recept_start-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recept_start-response>) istream)
  "Deserializes a message object of type '<recept_start-response>"
    (cl:setf (cl:slot-value msg 'start_ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recept_start-response>)))
  "Returns string type for a service object of type '<recept_start-response>"
  "srvbg/recept_startResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recept_start-response)))
  "Returns string type for a service object of type 'recept_start-response"
  "srvbg/recept_startResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recept_start-response>)))
  "Returns md5sum for a message object of type '<recept_start-response>"
  "01e466c8eb71ba7ac0b6740b7da30b81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recept_start-response)))
  "Returns md5sum for a message object of type 'recept_start-response"
  "01e466c8eb71ba7ac0b6740b7da30b81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recept_start-response>)))
  "Returns full string definition for message of type '<recept_start-response>"
  (cl:format cl:nil "bool start_ok~%~%## start_recept =  true代表开始接诊服务~%## start_ok 代表当前 接诊节点的状态~%## 提供服务端接受到服务请求后马上返回~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recept_start-response)))
  "Returns full string definition for message of type 'recept_start-response"
  (cl:format cl:nil "bool start_ok~%~%## start_recept =  true代表开始接诊服务~%## start_ok 代表当前 接诊节点的状态~%## 提供服务端接受到服务请求后马上返回~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recept_start-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recept_start-response>))
  "Converts a ROS message object to a list"
  (cl:list 'recept_start-response
    (cl:cons ':start_ok (start_ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'recept_start)))
  'recept_start-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'recept_start)))
  'recept_start-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recept_start)))
  "Returns string type for a service object of type '<recept_start>"
  "srvbg/recept_start")