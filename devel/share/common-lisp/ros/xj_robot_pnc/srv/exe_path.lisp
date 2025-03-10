; Auto-generated. Do not edit!


(cl:in-package xj_robot_pnc-srv)


;//! \htmlinclude exe_path-request.msg.html

(cl:defclass <exe_path-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (path_name
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

(cl:defclass exe_path-request (<exe_path-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <exe_path-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'exe_path-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xj_robot_pnc-srv:<exe_path-request> is deprecated: use xj_robot_pnc-srv:exe_path-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <exe_path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:command-val is deprecated.  Use xj_robot_pnc-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'path_name-val :lambda-list '(m))
(cl:defmethod path_name-val ((m <exe_path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:path_name-val is deprecated.  Use xj_robot_pnc-srv:path_name instead.")
  (path_name m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <exe_path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:dir-val is deprecated.  Use xj_robot_pnc-srv:dir instead.")
  (dir m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<exe_path-request>)))
    "Constants for message type '<exe_path-request>"
  '((:START . 0)
    (:STOP . 1)
    (:PAUSE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'exe_path-request)))
    "Constants for message type 'exe_path-request"
  '((:START . 0)
    (:STOP . 1)
    (:PAUSE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <exe_path-request>) ostream)
  "Serializes a message object of type '<exe_path-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <exe_path-request>) istream)
  "Deserializes a message object of type '<exe_path-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<exe_path-request>)))
  "Returns string type for a service object of type '<exe_path-request>"
  "xj_robot_pnc/exe_pathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'exe_path-request)))
  "Returns string type for a service object of type 'exe_path-request"
  "xj_robot_pnc/exe_pathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<exe_path-request>)))
  "Returns md5sum for a message object of type '<exe_path-request>"
  "05ccd160c52332199029116636e3083a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'exe_path-request)))
  "Returns md5sum for a message object of type 'exe_path-request"
  "05ccd160c52332199029116636e3083a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<exe_path-request>)))
  "Returns full string definition for message of type '<exe_path-request>"
  (cl:format cl:nil "uint8 START = 0~%uint8 STOP = 1~%uint8 PAUSE = 2~%~%uint8 command~%string path_name~%string dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'exe_path-request)))
  "Returns full string definition for message of type 'exe_path-request"
  (cl:format cl:nil "uint8 START = 0~%uint8 STOP = 1~%uint8 PAUSE = 2~%~%uint8 command~%string path_name~%string dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <exe_path-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'path_name))
     4 (cl:length (cl:slot-value msg 'dir))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <exe_path-request>))
  "Converts a ROS message object to a list"
  (cl:list 'exe_path-request
    (cl:cons ':command (command msg))
    (cl:cons ':path_name (path_name msg))
    (cl:cons ':dir (dir msg))
))
;//! \htmlinclude exe_path-response.msg.html

(cl:defclass <exe_path-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass exe_path-response (<exe_path-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <exe_path-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'exe_path-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xj_robot_pnc-srv:<exe_path-response> is deprecated: use xj_robot_pnc-srv:exe_path-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <exe_path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_pnc-srv:message-val is deprecated.  Use xj_robot_pnc-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <exe_path-response>) ostream)
  "Serializes a message object of type '<exe_path-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <exe_path-response>) istream)
  "Deserializes a message object of type '<exe_path-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<exe_path-response>)))
  "Returns string type for a service object of type '<exe_path-response>"
  "xj_robot_pnc/exe_pathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'exe_path-response)))
  "Returns string type for a service object of type 'exe_path-response"
  "xj_robot_pnc/exe_pathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<exe_path-response>)))
  "Returns md5sum for a message object of type '<exe_path-response>"
  "05ccd160c52332199029116636e3083a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'exe_path-response)))
  "Returns md5sum for a message object of type 'exe_path-response"
  "05ccd160c52332199029116636e3083a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<exe_path-response>)))
  "Returns full string definition for message of type '<exe_path-response>"
  (cl:format cl:nil "~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'exe_path-response)))
  "Returns full string definition for message of type 'exe_path-response"
  (cl:format cl:nil "~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <exe_path-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <exe_path-response>))
  "Converts a ROS message object to a list"
  (cl:list 'exe_path-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'exe_path)))
  'exe_path-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'exe_path)))
  'exe_path-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'exe_path)))
  "Returns string type for a service object of type '<exe_path>"
  "xj_robot_pnc/exe_path")