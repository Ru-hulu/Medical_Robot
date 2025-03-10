; Auto-generated. Do not edit!


(cl:in-package xj_robot_pnc-srv)


;//! \htmlinclude record_start-request.msg.html

(cl:defclass <record_start-request> (roslisp-msg-protocol:ros-message)
  ((path_name
    :reader path_name
    :initarg :path_name
    :type cl:string
    :initform "")
   (dir
    :reader dir
    :initarg :dir
    :type cl:string
    :initform ""))
)

(cl:defclass record_start-request (<record_start-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_start-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_start-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xj_robot_pnc-srv:<record_start-request> is deprecated: use xj_robot_pnc-srv:record_start-request instead.")))

(cl:ensure-generic-function 'path_name-val :lambda-list '(m))
(cl:defmethod path_name-val ((m <record_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:path_name-val is deprecated.  Use xj_robot_pnc-srv:path_name instead.")
  (path_name m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <record_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:dir-val is deprecated.  Use xj_robot_pnc-srv:dir instead.")
  (dir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_start-request>) ostream)
  "Serializes a message object of type '<record_start-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dir))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_start-request>) istream)
  "Deserializes a message object of type '<record_start-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_start-request>)))
  "Returns string type for a service object of type '<record_start-request>"
  "xj_robot_pnc/record_startRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_start-request)))
  "Returns string type for a service object of type 'record_start-request"
  "xj_robot_pnc/record_startRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_start-request>)))
  "Returns md5sum for a message object of type '<record_start-request>"
  "1ec11de8b8f99b8a7fdec75970d60c52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_start-request)))
  "Returns md5sum for a message object of type 'record_start-request"
  "1ec11de8b8f99b8a7fdec75970d60c52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_start-request>)))
  "Returns full string definition for message of type '<record_start-request>"
  (cl:format cl:nil "string path_name~%string dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_start-request)))
  "Returns full string definition for message of type 'record_start-request"
  (cl:format cl:nil "string path_name~%string dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_start-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path_name))
     4 (cl:length (cl:slot-value msg 'dir))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_start-request>))
  "Converts a ROS message object to a list"
  (cl:list 'record_start-request
    (cl:cons ':path_name (path_name msg))
    (cl:cons ':dir (dir msg))
))
;//! \htmlinclude record_start-response.msg.html

(cl:defclass <record_start-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass record_start-response (<record_start-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_start-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_start-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xj_robot_pnc-srv:<record_start-response> is deprecated: use xj_robot_pnc-srv:record_start-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <record_start-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:message-val is deprecated.  Use xj_robot_pnc-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_start-response>) ostream)
  "Serializes a message object of type '<record_start-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_start-response>) istream)
  "Deserializes a message object of type '<record_start-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_start-response>)))
  "Returns string type for a service object of type '<record_start-response>"
  "xj_robot_pnc/record_startResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_start-response)))
  "Returns string type for a service object of type 'record_start-response"
  "xj_robot_pnc/record_startResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_start-response>)))
  "Returns md5sum for a message object of type '<record_start-response>"
  "1ec11de8b8f99b8a7fdec75970d60c52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_start-response)))
  "Returns md5sum for a message object of type 'record_start-response"
  "1ec11de8b8f99b8a7fdec75970d60c52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_start-response>)))
  "Returns full string definition for message of type '<record_start-response>"
  (cl:format cl:nil "~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_start-response)))
  "Returns full string definition for message of type 'record_start-response"
  (cl:format cl:nil "~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_start-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_start-response>))
  "Converts a ROS message object to a list"
  (cl:list 'record_start-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'record_start)))
  'record_start-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'record_start)))
  'record_start-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_start)))
  "Returns string type for a service object of type '<record_start>"
  "xj_robot_pnc/record_start")