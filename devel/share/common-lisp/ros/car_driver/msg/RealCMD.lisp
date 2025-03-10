; Auto-generated. Do not edit!


(cl:in-package car_driver-msg)


;//! \htmlinclude RealCMD.msg.html

(cl:defclass <RealCMD> (roslisp-msg-protocol:ros-message)
  ((auto_mode
    :reader auto_mode
    :initarg :auto_mode
    :type cl:boolean
    :initform cl:nil)
   (wheel_mode
    :reader wheel_mode
    :initarg :wheel_mode
    :type cl:fixnum
    :initform 0)
   (wheel_left_v
    :reader wheel_left_v
    :initarg :wheel_left_v
    :type cl:fixnum
    :initform 0)
   (wheel_right_v
    :reader wheel_right_v
    :initarg :wheel_right_v
    :type cl:fixnum
    :initform 0)
   (stop_flag
    :reader stop_flag
    :initarg :stop_flag
    :type cl:boolean
    :initform cl:nil)
   (re_enabled
    :reader re_enabled
    :initarg :re_enabled
    :type cl:boolean
    :initform cl:nil)
   (disabled
    :reader disabled
    :initarg :disabled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RealCMD (<RealCMD>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RealCMD>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RealCMD)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_driver-msg:<RealCMD> is deprecated: use car_driver-msg:RealCMD instead.")))

(cl:ensure-generic-function 'auto_mode-val :lambda-list '(m))
(cl:defmethod auto_mode-val ((m <RealCMD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_driver-msg:auto_mode-val is deprecated.  Use car_driver-msg:auto_mode instead.")
  (auto_mode m))

(cl:ensure-generic-function 'wheel_mode-val :lambda-list '(m))
(cl:defmethod wheel_mode-val ((m <RealCMD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_driver-msg:wheel_mode-val is deprecated.  Use car_driver-msg:wheel_mode instead.")
  (wheel_mode m))

(cl:ensure-generic-function 'wheel_left_v-val :lambda-list '(m))
(cl:defmethod wheel_left_v-val ((m <RealCMD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_driver-msg:wheel_left_v-val is deprecated.  Use car_driver-msg:wheel_left_v instead.")
  (wheel_left_v m))

(cl:ensure-generic-function 'wheel_right_v-val :lambda-list '(m))
(cl:defmethod wheel_right_v-val ((m <RealCMD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_driver-msg:wheel_right_v-val is deprecated.  Use car_driver-msg:wheel_right_v instead.")
  (wheel_right_v m))

(cl:ensure-generic-function 'stop_flag-val :lambda-list '(m))
(cl:defmethod stop_flag-val ((m <RealCMD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_driver-msg:stop_flag-val is deprecated.  Use car_driver-msg:stop_flag instead.")
  (stop_flag m))

(cl:ensure-generic-function 're_enabled-val :lambda-list '(m))
(cl:defmethod re_enabled-val ((m <RealCMD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_driver-msg:re_enabled-val is deprecated.  Use car_driver-msg:re_enabled instead.")
  (re_enabled m))

(cl:ensure-generic-function 'disabled-val :lambda-list '(m))
(cl:defmethod disabled-val ((m <RealCMD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_driver-msg:disabled-val is deprecated.  Use car_driver-msg:disabled instead.")
  (disabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RealCMD>) ostream)
  "Serializes a message object of type '<RealCMD>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_left_v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_left_v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_right_v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_right_v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 're_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disabled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RealCMD>) istream)
  "Deserializes a message object of type '<RealCMD>"
    (cl:setf (cl:slot-value msg 'auto_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_left_v)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_left_v)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_right_v)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_right_v)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stop_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 're_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'disabled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RealCMD>)))
  "Returns string type for a message object of type '<RealCMD>"
  "car_driver/RealCMD")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RealCMD)))
  "Returns string type for a message object of type 'RealCMD"
  "car_driver/RealCMD")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RealCMD>)))
  "Returns md5sum for a message object of type '<RealCMD>"
  "6838281da4a3b48cd4264834fb376e62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RealCMD)))
  "Returns md5sum for a message object of type 'RealCMD"
  "6838281da4a3b48cd4264834fb376e62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RealCMD>)))
  "Returns full string definition for message of type '<RealCMD>"
  (cl:format cl:nil "# 小车运行模式切换。~%bool auto_mode~%~%# 轮毂电机左右轮速度值~%uint16 wheel_mode~%uint16 wheel_left_v~%uint16 wheel_right_v~%~%~%# 轮毂电机急停命令~%bool stop_flag~%~%# 轮毂电机重新使能命令~%bool re_enabled~%~%# 轮毂电机失能命令~%bool disabled ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RealCMD)))
  "Returns full string definition for message of type 'RealCMD"
  (cl:format cl:nil "# 小车运行模式切换。~%bool auto_mode~%~%# 轮毂电机左右轮速度值~%uint16 wheel_mode~%uint16 wheel_left_v~%uint16 wheel_right_v~%~%~%# 轮毂电机急停命令~%bool stop_flag~%~%# 轮毂电机重新使能命令~%bool re_enabled~%~%# 轮毂电机失能命令~%bool disabled ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RealCMD>))
  (cl:+ 0
     1
     2
     2
     2
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RealCMD>))
  "Converts a ROS message object to a list"
  (cl:list 'RealCMD
    (cl:cons ':auto_mode (auto_mode msg))
    (cl:cons ':wheel_mode (wheel_mode msg))
    (cl:cons ':wheel_left_v (wheel_left_v msg))
    (cl:cons ':wheel_right_v (wheel_right_v msg))
    (cl:cons ':stop_flag (stop_flag msg))
    (cl:cons ':re_enabled (re_enabled msg))
    (cl:cons ':disabled (disabled msg))
))
