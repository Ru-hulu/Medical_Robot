; Auto-generated. Do not edit!


(cl:in-package xj_robot_simu-msg)


;//! \htmlinclude fusion_analysis.msg.html

(cl:defclass <fusion_analysis> (roslisp-msg-protocol:ros-message)
  ((linear_control
    :reader linear_control
    :initarg :linear_control
    :type cl:float
    :initform 0.0)
   (linear_feedback
    :reader linear_feedback
    :initarg :linear_feedback
    :type cl:float
    :initform 0.0)
   (angular_control
    :reader angular_control
    :initarg :angular_control
    :type cl:float
    :initform 0.0)
   (angular_feedback
    :reader angular_feedback
    :initarg :angular_feedback
    :type cl:float
    :initform 0.0)
   (lwheel_control
    :reader lwheel_control
    :initarg :lwheel_control
    :type cl:float
    :initform 0.0)
   (lwheel_feedback
    :reader lwheel_feedback
    :initarg :lwheel_feedback
    :type cl:float
    :initform 0.0)
   (lwheel_acc
    :reader lwheel_acc
    :initarg :lwheel_acc
    :type cl:float
    :initform 0.0)
   (rwheel_control
    :reader rwheel_control
    :initarg :rwheel_control
    :type cl:float
    :initform 0.0)
   (rwheel_feedback
    :reader rwheel_feedback
    :initarg :rwheel_feedback
    :type cl:float
    :initform 0.0)
   (rwheel_acc
    :reader rwheel_acc
    :initarg :rwheel_acc
    :type cl:float
    :initform 0.0)
   (odom_pose
    :reader odom_pose
    :initarg :odom_pose
    :type xj_robot_simu-msg:carpose
    :initform (cl:make-instance 'xj_robot_simu-msg:carpose)))
)

(cl:defclass fusion_analysis (<fusion_analysis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fusion_analysis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fusion_analysis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xj_robot_simu-msg:<fusion_analysis> is deprecated: use xj_robot_simu-msg:fusion_analysis instead.")))

(cl:ensure-generic-function 'linear_control-val :lambda-list '(m))
(cl:defmethod linear_control-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:linear_control-val is deprecated.  Use xj_robot_simu-msg:linear_control instead.")
  (linear_control m))

(cl:ensure-generic-function 'linear_feedback-val :lambda-list '(m))
(cl:defmethod linear_feedback-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:linear_feedback-val is deprecated.  Use xj_robot_simu-msg:linear_feedback instead.")
  (linear_feedback m))

(cl:ensure-generic-function 'angular_control-val :lambda-list '(m))
(cl:defmethod angular_control-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:angular_control-val is deprecated.  Use xj_robot_simu-msg:angular_control instead.")
  (angular_control m))

(cl:ensure-generic-function 'angular_feedback-val :lambda-list '(m))
(cl:defmethod angular_feedback-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:angular_feedback-val is deprecated.  Use xj_robot_simu-msg:angular_feedback instead.")
  (angular_feedback m))

(cl:ensure-generic-function 'lwheel_control-val :lambda-list '(m))
(cl:defmethod lwheel_control-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:lwheel_control-val is deprecated.  Use xj_robot_simu-msg:lwheel_control instead.")
  (lwheel_control m))

(cl:ensure-generic-function 'lwheel_feedback-val :lambda-list '(m))
(cl:defmethod lwheel_feedback-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:lwheel_feedback-val is deprecated.  Use xj_robot_simu-msg:lwheel_feedback instead.")
  (lwheel_feedback m))

(cl:ensure-generic-function 'lwheel_acc-val :lambda-list '(m))
(cl:defmethod lwheel_acc-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:lwheel_acc-val is deprecated.  Use xj_robot_simu-msg:lwheel_acc instead.")
  (lwheel_acc m))

(cl:ensure-generic-function 'rwheel_control-val :lambda-list '(m))
(cl:defmethod rwheel_control-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:rwheel_control-val is deprecated.  Use xj_robot_simu-msg:rwheel_control instead.")
  (rwheel_control m))

(cl:ensure-generic-function 'rwheel_feedback-val :lambda-list '(m))
(cl:defmethod rwheel_feedback-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:rwheel_feedback-val is deprecated.  Use xj_robot_simu-msg:rwheel_feedback instead.")
  (rwheel_feedback m))

(cl:ensure-generic-function 'rwheel_acc-val :lambda-list '(m))
(cl:defmethod rwheel_acc-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:rwheel_acc-val is deprecated.  Use xj_robot_simu-msg:rwheel_acc instead.")
  (rwheel_acc m))

(cl:ensure-generic-function 'odom_pose-val :lambda-list '(m))
(cl:defmethod odom_pose-val ((m <fusion_analysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xj_robot_simu-msg:odom_pose-val is deprecated.  Use xj_robot_simu-msg:odom_pose instead.")
  (odom_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fusion_analysis>) ostream)
  "Serializes a message object of type '<fusion_analysis>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_control))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_control))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lwheel_control))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lwheel_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lwheel_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rwheel_control))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rwheel_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rwheel_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'odom_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fusion_analysis>) istream)
  "Deserializes a message object of type '<fusion_analysis>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_control) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_feedback) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_control) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_feedback) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lwheel_control) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lwheel_feedback) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lwheel_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rwheel_control) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rwheel_feedback) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rwheel_acc) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'odom_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fusion_analysis>)))
  "Returns string type for a message object of type '<fusion_analysis>"
  "xj_robot_simu/fusion_analysis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fusion_analysis)))
  "Returns string type for a message object of type 'fusion_analysis"
  "xj_robot_simu/fusion_analysis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fusion_analysis>)))
  "Returns md5sum for a message object of type '<fusion_analysis>"
  "9535f87409ff97acc35ef33565f17f12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fusion_analysis)))
  "Returns md5sum for a message object of type 'fusion_analysis"
  "9535f87409ff97acc35ef33565f17f12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fusion_analysis>)))
  "Returns full string definition for message of type '<fusion_analysis>"
  (cl:format cl:nil "float32 linear_control #线速度指令~%float32 linear_feedback #线速度反馈~%float32 angular_control #角速度指令~%float32 angular_feedback #角速度反馈~%float32 lwheel_control #左轮转速指令~%float32 lwheel_feedback #左轮转速反馈~%float32 lwheel_acc #左轮加速度~%float32 rwheel_control #右轮转速指令~%float32 rwheel_feedback #右轮转速反馈~%float32 rwheel_acc #右轮加速度~%carpose odom_pose #odom位置~%================================================================================~%MSG: xj_robot_simu/carpose~%float32 x~%float32 y~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fusion_analysis)))
  "Returns full string definition for message of type 'fusion_analysis"
  (cl:format cl:nil "float32 linear_control #线速度指令~%float32 linear_feedback #线速度反馈~%float32 angular_control #角速度指令~%float32 angular_feedback #角速度反馈~%float32 lwheel_control #左轮转速指令~%float32 lwheel_feedback #左轮转速反馈~%float32 lwheel_acc #左轮加速度~%float32 rwheel_control #右轮转速指令~%float32 rwheel_feedback #右轮转速反馈~%float32 rwheel_acc #右轮加速度~%carpose odom_pose #odom位置~%================================================================================~%MSG: xj_robot_simu/carpose~%float32 x~%float32 y~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fusion_analysis>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'odom_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fusion_analysis>))
  "Converts a ROS message object to a list"
  (cl:list 'fusion_analysis
    (cl:cons ':linear_control (linear_control msg))
    (cl:cons ':linear_feedback (linear_feedback msg))
    (cl:cons ':angular_control (angular_control msg))
    (cl:cons ':angular_feedback (angular_feedback msg))
    (cl:cons ':lwheel_control (lwheel_control msg))
    (cl:cons ':lwheel_feedback (lwheel_feedback msg))
    (cl:cons ':lwheel_acc (lwheel_acc msg))
    (cl:cons ':rwheel_control (rwheel_control msg))
    (cl:cons ':rwheel_feedback (rwheel_feedback msg))
    (cl:cons ':rwheel_acc (rwheel_acc msg))
    (cl:cons ':odom_pose (odom_pose msg))
))
