; Auto-generated. Do not edit!


(cl:in-package xj_robot_pnc-srv)


;//! \htmlinclude xj_robot_task-request.msg.html

(cl:defclass <xj_robot_task-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (dir
    :reader dir
    :initarg :dir
    :type cl:string
    :initform "")
   (path_name
    :reader path_name
    :initarg :path_name
    :type cl:string
    :initform ""))
)

(cl:defclass xj_robot_task-request (<xj_robot_task-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xj_robot_task-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xj_robot_task-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xj_robot_pnc-srv:<xj_robot_task-request> is deprecated: use xj_robot_pnc-srv:xj_robot_task-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <xj_robot_task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:type-val is deprecated.  Use xj_robot_pnc-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <xj_robot_task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:command-val is deprecated.  Use xj_robot_pnc-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <xj_robot_task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:dir-val is deprecated.  Use xj_robot_pnc-srv:dir instead.")
  (dir m))

(cl:ensure-generic-function 'path_name-val :lambda-list '(m))
(cl:defmethod path_name-val ((m <xj_robot_task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:path_name-val is deprecated.  Use xj_robot_pnc-srv:path_name instead.")
  (path_name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<xj_robot_task-request>)))
    "Constants for message type '<xj_robot_task-request>"
  '((:EXECUTE . 0)
    (:RECORD . 1)
    (:START . 0)
    (:PAUSE . 1)
    (:STOP . 2)
    (:KEEP . 1)
    (:DISCARD . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'xj_robot_task-request)))
    "Constants for message type 'xj_robot_task-request"
  '((:EXECUTE . 0)
    (:RECORD . 1)
    (:START . 0)
    (:PAUSE . 1)
    (:STOP . 2)
    (:KEEP . 1)
    (:DISCARD . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xj_robot_task-request>) ostream)
  "Serializes a message object of type '<xj_robot_task-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dir))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xj_robot_task-request>) istream)
  "Deserializes a message object of type '<xj_robot_task-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xj_robot_task-request>)))
  "Returns string type for a service object of type '<xj_robot_task-request>"
  "xj_robot_pnc/xj_robot_taskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xj_robot_task-request)))
  "Returns string type for a service object of type 'xj_robot_task-request"
  "xj_robot_pnc/xj_robot_taskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xj_robot_task-request>)))
  "Returns md5sum for a message object of type '<xj_robot_task-request>"
  "347eea49e7b11fe6ce7ff80abc574c91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xj_robot_task-request)))
  "Returns md5sum for a message object of type 'xj_robot_task-request"
  "347eea49e7b11fe6ce7ff80abc574c91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xj_robot_task-request>)))
  "Returns full string definition for message of type '<xj_robot_task-request>"
  (cl:format cl:nil "uint8 EXECUTE = 0~%uint8 RECORD = 1~%~%uint8 START = 0~%uint8 PAUSE = 1~%uint8 STOP = 2~%~%uint8 KEEP = 1~%uint8 DISCARD = 2~%~%uint8 type #EXECUTE RECORD~%uint8 command #START PAUSE STOP KEEP DISCARD~%string dir~%string path_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xj_robot_task-request)))
  "Returns full string definition for message of type 'xj_robot_task-request"
  (cl:format cl:nil "uint8 EXECUTE = 0~%uint8 RECORD = 1~%~%uint8 START = 0~%uint8 PAUSE = 1~%uint8 STOP = 2~%~%uint8 KEEP = 1~%uint8 DISCARD = 2~%~%uint8 type #EXECUTE RECORD~%uint8 command #START PAUSE STOP KEEP DISCARD~%string dir~%string path_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xj_robot_task-request>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'dir))
     4 (cl:length (cl:slot-value msg 'path_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xj_robot_task-request>))
  "Converts a ROS message object to a list"
  (cl:list 'xj_robot_task-request
    (cl:cons ':type (type msg))
    (cl:cons ':command (command msg))
    (cl:cons ':dir (dir msg))
    (cl:cons ':path_name (path_name msg))
))
;//! \htmlinclude xj_robot_task-response.msg.html

(cl:defclass <xj_robot_task-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass xj_robot_task-response (<xj_robot_task-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xj_robot_task-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xj_robot_task-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xj_robot_pnc-srv:<xj_robot_task-response> is deprecated: use xj_robot_pnc-srv:xj_robot_task-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <xj_robot_task-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:message-val is deprecated.  Use xj_robot_pnc-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xj_robot_task-response>) ostream)
  "Serializes a message object of type '<xj_robot_task-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xj_robot_task-response>) istream)
  "Deserializes a message object of type '<xj_robot_task-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xj_robot_task-response>)))
  "Returns string type for a service object of type '<xj_robot_task-response>"
  "xj_robot_pnc/xj_robot_taskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xj_robot_task-response)))
  "Returns string type for a service object of type 'xj_robot_task-response"
  "xj_robot_pnc/xj_robot_taskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xj_robot_task-response>)))
  "Returns md5sum for a message object of type '<xj_robot_task-response>"
  "347eea49e7b11fe6ce7ff80abc574c91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xj_robot_task-response)))
  "Returns md5sum for a message object of type 'xj_robot_task-response"
  "347eea49e7b11fe6ce7ff80abc574c91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xj_robot_task-response>)))
  "Returns full string definition for message of type '<xj_robot_task-response>"
  (cl:format cl:nil "~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xj_robot_task-response)))
  "Returns full string definition for message of type 'xj_robot_task-response"
  (cl:format cl:nil "~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xj_robot_task-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xj_robot_task-response>))
  "Converts a ROS message object to a list"
  (cl:list 'xj_robot_task-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'xj_robot_task)))
  'xj_robot_task-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'xj_robot_task)))
  'xj_robot_task-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xj_robot_task)))
  "Returns string type for a service object of type '<xj_robot_task>"
  "xj_robot_pnc/xj_robot_task")