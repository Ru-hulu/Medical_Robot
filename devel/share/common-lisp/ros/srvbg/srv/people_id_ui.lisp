; Auto-generated. Do not edit!


(cl:in-package srvbg-srv)


;//! \htmlinclude people_id_ui-request.msg.html

(cl:defclass <people_id_ui-request> (roslisp-msg-protocol:ros-message)
  ((people_id
    :reader people_id
    :initarg :people_id
    :type cl:integer
    :initform 0))
)

(cl:defclass people_id_ui-request (<people_id_ui-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <people_id_ui-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'people_id_ui-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<people_id_ui-request> is deprecated: use srvbg-srv:people_id_ui-request instead.")))

(cl:ensure-generic-function 'people_id-val :lambda-list '(m))
(cl:defmethod people_id-val ((m <people_id_ui-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:people_id-val is deprecated.  Use srvbg-srv:people_id instead.")
  (people_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <people_id_ui-request>) ostream)
  "Serializes a message object of type '<people_id_ui-request>"
  (cl:let* ((signed (cl:slot-value msg 'people_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <people_id_ui-request>) istream)
  "Deserializes a message object of type '<people_id_ui-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'people_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<people_id_ui-request>)))
  "Returns string type for a service object of type '<people_id_ui-request>"
  "srvbg/people_id_uiRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'people_id_ui-request)))
  "Returns string type for a service object of type 'people_id_ui-request"
  "srvbg/people_id_uiRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<people_id_ui-request>)))
  "Returns md5sum for a message object of type '<people_id_ui-request>"
  "951a25e8f2062cf3a7d7d54a9560079a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'people_id_ui-request)))
  "Returns md5sum for a message object of type 'people_id_ui-request"
  "951a25e8f2062cf3a7d7d54a9560079a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<people_id_ui-request>)))
  "Returns full string definition for message of type '<people_id_ui-request>"
  (cl:format cl:nil "int32 people_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'people_id_ui-request)))
  "Returns full string definition for message of type 'people_id_ui-request"
  (cl:format cl:nil "int32 people_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <people_id_ui-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <people_id_ui-request>))
  "Converts a ROS message object to a list"
  (cl:list 'people_id_ui-request
    (cl:cons ':people_id (people_id msg))
))
;//! \htmlinclude people_id_ui-response.msg.html

(cl:defclass <people_id_ui-response> (roslisp-msg-protocol:ros-message)
  ((get_ok
    :reader get_ok
    :initarg :get_ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass people_id_ui-response (<people_id_ui-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <people_id_ui-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'people_id_ui-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<people_id_ui-response> is deprecated: use srvbg-srv:people_id_ui-response instead.")))

(cl:ensure-generic-function 'get_ok-val :lambda-list '(m))
(cl:defmethod get_ok-val ((m <people_id_ui-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:get_ok-val is deprecated.  Use srvbg-srv:get_ok instead.")
  (get_ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <people_id_ui-response>) ostream)
  "Serializes a message object of type '<people_id_ui-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <people_id_ui-response>) istream)
  "Deserializes a message object of type '<people_id_ui-response>"
    (cl:setf (cl:slot-value msg 'get_ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<people_id_ui-response>)))
  "Returns string type for a service object of type '<people_id_ui-response>"
  "srvbg/people_id_uiResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'people_id_ui-response)))
  "Returns string type for a service object of type 'people_id_ui-response"
  "srvbg/people_id_uiResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<people_id_ui-response>)))
  "Returns md5sum for a message object of type '<people_id_ui-response>"
  "951a25e8f2062cf3a7d7d54a9560079a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'people_id_ui-response)))
  "Returns md5sum for a message object of type 'people_id_ui-response"
  "951a25e8f2062cf3a7d7d54a9560079a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<people_id_ui-response>)))
  "Returns full string definition for message of type '<people_id_ui-response>"
  (cl:format cl:nil "bool get_ok~%~%##发送病人id信息~%##提供服务端接受到people_id后，马上返回get_ok。~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'people_id_ui-response)))
  "Returns full string definition for message of type 'people_id_ui-response"
  (cl:format cl:nil "bool get_ok~%~%##发送病人id信息~%##提供服务端接受到people_id后，马上返回get_ok。~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <people_id_ui-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <people_id_ui-response>))
  "Converts a ROS message object to a list"
  (cl:list 'people_id_ui-response
    (cl:cons ':get_ok (get_ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'people_id_ui)))
  'people_id_ui-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'people_id_ui)))
  'people_id_ui-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'people_id_ui)))
  "Returns string type for a service object of type '<people_id_ui>"
  "srvbg/people_id_ui")