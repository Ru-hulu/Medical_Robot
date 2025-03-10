; Auto-generated. Do not edit!


(cl:in-package xj_robot_pnc-srv)


;//! \htmlinclude record_stop-request.msg.html

(cl:defclass <record_stop-request> (roslisp-msg-protocol:ros-message)
  ((keep
    :reader keep
    :initarg :keep
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass record_stop-request (<record_stop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_stop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_stop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xj_robot_pnc-srv:<record_stop-request> is deprecated: use xj_robot_pnc-srv:record_stop-request instead.")))

(cl:ensure-generic-function 'keep-val :lambda-list '(m))
(cl:defmethod keep-val ((m <record_stop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:keep-val is deprecated.  Use xj_robot_pnc-srv:keep instead.")
  (keep m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_stop-request>) ostream)
  "Serializes a message object of type '<record_stop-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'keep) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_stop-request>) istream)
  "Deserializes a message object of type '<record_stop-request>"
    (cl:setf (cl:slot-value msg 'keep) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_stop-request>)))
  "Returns string type for a service object of type '<record_stop-request>"
  "xj_robot_pnc/record_stopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_stop-request)))
  "Returns string type for a service object of type 'record_stop-request"
  "xj_robot_pnc/record_stopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_stop-request>)))
  "Returns md5sum for a message object of type '<record_stop-request>"
  "a25665d7f9b3b7071ad230c72b69fe34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_stop-request)))
  "Returns md5sum for a message object of type 'record_stop-request"
  "a25665d7f9b3b7071ad230c72b69fe34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_stop-request>)))
  "Returns full string definition for message of type '<record_stop-request>"
  (cl:format cl:nil "bool keep~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_stop-request)))
  "Returns full string definition for message of type 'record_stop-request"
  (cl:format cl:nil "bool keep~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_stop-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_stop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'record_stop-request
    (cl:cons ':keep (keep msg))
))
;//! \htmlinclude record_stop-response.msg.html

(cl:defclass <record_stop-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass record_stop-response (<record_stop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_stop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_stop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xj_robot_pnc-srv:<record_stop-response> is deprecated: use xj_robot_pnc-srv:record_stop-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <record_stop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:message-val is deprecated.  Use xj_robot_pnc-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_stop-response>) ostream)
  "Serializes a message object of type '<record_stop-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_stop-response>) istream)
  "Deserializes a message object of type '<record_stop-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_stop-response>)))
  "Returns string type for a service object of type '<record_stop-response>"
  "xj_robot_pnc/record_stopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_stop-response)))
  "Returns string type for a service object of type 'record_stop-response"
  "xj_robot_pnc/record_stopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_stop-response>)))
  "Returns md5sum for a message object of type '<record_stop-response>"
  "a25665d7f9b3b7071ad230c72b69fe34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_stop-response)))
  "Returns md5sum for a message object of type 'record_stop-response"
  "a25665d7f9b3b7071ad230c72b69fe34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_stop-response>)))
  "Returns full string definition for message of type '<record_stop-response>"
  (cl:format cl:nil "~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_stop-response)))
  "Returns full string definition for message of type 'record_stop-response"
  (cl:format cl:nil "~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_stop-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_stop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'record_stop-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'record_stop)))
  'record_stop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'record_stop)))
  'record_stop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_stop)))
  "Returns string type for a service object of type '<record_stop>"
  "xj_robot_pnc/record_stop")