; Auto-generated. Do not edit!


(cl:in-package srvbg-srv)


;//! \htmlinclude bed_recog-request.msg.html

(cl:defclass <bed_recog-request> (roslisp-msg-protocol:ros-message)
  ((start_recog_bed
    :reader start_recog_bed
    :initarg :start_recog_bed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass bed_recog-request (<bed_recog-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bed_recog-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bed_recog-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<bed_recog-request> is deprecated: use srvbg-srv:bed_recog-request instead.")))

(cl:ensure-generic-function 'start_recog_bed-val :lambda-list '(m))
(cl:defmethod start_recog_bed-val ((m <bed_recog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:start_recog_bed-val is deprecated.  Use srvbg-srv:start_recog_bed instead.")
  (start_recog_bed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bed_recog-request>) ostream)
  "Serializes a message object of type '<bed_recog-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_recog_bed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bed_recog-request>) istream)
  "Deserializes a message object of type '<bed_recog-request>"
    (cl:setf (cl:slot-value msg 'start_recog_bed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bed_recog-request>)))
  "Returns string type for a service object of type '<bed_recog-request>"
  "srvbg/bed_recogRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bed_recog-request)))
  "Returns string type for a service object of type 'bed_recog-request"
  "srvbg/bed_recogRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bed_recog-request>)))
  "Returns md5sum for a message object of type '<bed_recog-request>"
  "fabdbcfcb72f74f8be32621e26727406")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bed_recog-request)))
  "Returns md5sum for a message object of type 'bed_recog-request"
  "fabdbcfcb72f74f8be32621e26727406")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bed_recog-request>)))
  "Returns full string definition for message of type '<bed_recog-request>"
  (cl:format cl:nil "bool start_recog_bed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bed_recog-request)))
  "Returns full string definition for message of type 'bed_recog-request"
  (cl:format cl:nil "bool start_recog_bed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bed_recog-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bed_recog-request>))
  "Converts a ROS message object to a list"
  (cl:list 'bed_recog-request
    (cl:cons ':start_recog_bed (start_recog_bed msg))
))
;//! \htmlinclude bed_recog-response.msg.html

(cl:defclass <bed_recog-response> (roslisp-msg-protocol:ros-message)
  ((have_people
    :reader have_people
    :initarg :have_people
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass bed_recog-response (<bed_recog-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bed_recog-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bed_recog-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<bed_recog-response> is deprecated: use srvbg-srv:bed_recog-response instead.")))

(cl:ensure-generic-function 'have_people-val :lambda-list '(m))
(cl:defmethod have_people-val ((m <bed_recog-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:have_people-val is deprecated.  Use srvbg-srv:have_people instead.")
  (have_people m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bed_recog-response>) ostream)
  "Serializes a message object of type '<bed_recog-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'have_people) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bed_recog-response>) istream)
  "Deserializes a message object of type '<bed_recog-response>"
    (cl:setf (cl:slot-value msg 'have_people) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bed_recog-response>)))
  "Returns string type for a service object of type '<bed_recog-response>"
  "srvbg/bed_recogResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bed_recog-response)))
  "Returns string type for a service object of type 'bed_recog-response"
  "srvbg/bed_recogResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bed_recog-response>)))
  "Returns md5sum for a message object of type '<bed_recog-response>"
  "fabdbcfcb72f74f8be32621e26727406")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bed_recog-response)))
  "Returns md5sum for a message object of type 'bed_recog-response"
  "fabdbcfcb72f74f8be32621e26727406")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bed_recog-response>)))
  "Returns full string definition for message of type '<bed_recog-response>"
  (cl:format cl:nil "bool have_people~%~%~%~%##病床识别节点提供服务~%##发送送一次，识别一次。~%##不发送请求，则不进行识别。~%##start_recog_bed数值无所谓~%##返回have_people数值代表识别有无人。~%##需要等待服务结束才能进行接下来的业务~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bed_recog-response)))
  "Returns full string definition for message of type 'bed_recog-response"
  (cl:format cl:nil "bool have_people~%~%~%~%##病床识别节点提供服务~%##发送送一次，识别一次。~%##不发送请求，则不进行识别。~%##start_recog_bed数值无所谓~%##返回have_people数值代表识别有无人。~%##需要等待服务结束才能进行接下来的业务~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bed_recog-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bed_recog-response>))
  "Converts a ROS message object to a list"
  (cl:list 'bed_recog-response
    (cl:cons ':have_people (have_people msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'bed_recog)))
  'bed_recog-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'bed_recog)))
  'bed_recog-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bed_recog)))
  "Returns string type for a service object of type '<bed_recog>"
  "srvbg/bed_recog")