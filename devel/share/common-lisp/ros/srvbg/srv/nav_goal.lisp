; Auto-generated. Do not edit!


(cl:in-package srvbg-srv)


;//! \htmlinclude nav_goal-request.msg.html

(cl:defclass <nav_goal-request> (roslisp-msg-protocol:ros-message)
  ((tar_x
    :reader tar_x
    :initarg :tar_x
    :type cl:float
    :initform 0.0)
   (tar_y
    :reader tar_y
    :initarg :tar_y
    :type cl:float
    :initform 0.0)
   (tar_z
    :reader tar_z
    :initarg :tar_z
    :type cl:float
    :initform 0.0)
   (tar_yaw
    :reader tar_yaw
    :initarg :tar_yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass nav_goal-request (<nav_goal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_goal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_goal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<nav_goal-request> is deprecated: use srvbg-srv:nav_goal-request instead.")))

(cl:ensure-generic-function 'tar_x-val :lambda-list '(m))
(cl:defmethod tar_x-val ((m <nav_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:tar_x-val is deprecated.  Use srvbg-srv:tar_x instead.")
  (tar_x m))

(cl:ensure-generic-function 'tar_y-val :lambda-list '(m))
(cl:defmethod tar_y-val ((m <nav_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:tar_y-val is deprecated.  Use srvbg-srv:tar_y instead.")
  (tar_y m))

(cl:ensure-generic-function 'tar_z-val :lambda-list '(m))
(cl:defmethod tar_z-val ((m <nav_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:tar_z-val is deprecated.  Use srvbg-srv:tar_z instead.")
  (tar_z m))

(cl:ensure-generic-function 'tar_yaw-val :lambda-list '(m))
(cl:defmethod tar_yaw-val ((m <nav_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:tar_yaw-val is deprecated.  Use srvbg-srv:tar_yaw instead.")
  (tar_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_goal-request>) ostream)
  "Serializes a message object of type '<nav_goal-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tar_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tar_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tar_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tar_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_goal-request>) istream)
  "Deserializes a message object of type '<nav_goal-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tar_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tar_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tar_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tar_yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_goal-request>)))
  "Returns string type for a service object of type '<nav_goal-request>"
  "srvbg/nav_goalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_goal-request)))
  "Returns string type for a service object of type 'nav_goal-request"
  "srvbg/nav_goalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_goal-request>)))
  "Returns md5sum for a message object of type '<nav_goal-request>"
  "5776176c95d37b90d51191fc6ec03fc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_goal-request)))
  "Returns md5sum for a message object of type 'nav_goal-request"
  "5776176c95d37b90d51191fc6ec03fc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_goal-request>)))
  "Returns full string definition for message of type '<nav_goal-request>"
  (cl:format cl:nil "float32 tar_x~%float32 tar_y~%float32 tar_z~%float32 tar_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_goal-request)))
  "Returns full string definition for message of type 'nav_goal-request"
  (cl:format cl:nil "float32 tar_x~%float32 tar_y~%float32 tar_z~%float32 tar_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_goal-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_goal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_goal-request
    (cl:cons ':tar_x (tar_x msg))
    (cl:cons ':tar_y (tar_y msg))
    (cl:cons ':tar_z (tar_z msg))
    (cl:cons ':tar_yaw (tar_yaw msg))
))
;//! \htmlinclude nav_goal-response.msg.html

(cl:defclass <nav_goal-response> (roslisp-msg-protocol:ros-message)
  ((reach_ok
    :reader reach_ok
    :initarg :reach_ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass nav_goal-response (<nav_goal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_goal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_goal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<nav_goal-response> is deprecated: use srvbg-srv:nav_goal-response instead.")))

(cl:ensure-generic-function 'reach_ok-val :lambda-list '(m))
(cl:defmethod reach_ok-val ((m <nav_goal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:reach_ok-val is deprecated.  Use srvbg-srv:reach_ok instead.")
  (reach_ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_goal-response>) ostream)
  "Serializes a message object of type '<nav_goal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reach_ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_goal-response>) istream)
  "Deserializes a message object of type '<nav_goal-response>"
    (cl:setf (cl:slot-value msg 'reach_ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_goal-response>)))
  "Returns string type for a service object of type '<nav_goal-response>"
  "srvbg/nav_goalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_goal-response)))
  "Returns string type for a service object of type 'nav_goal-response"
  "srvbg/nav_goalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_goal-response>)))
  "Returns md5sum for a message object of type '<nav_goal-response>"
  "5776176c95d37b90d51191fc6ec03fc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_goal-response)))
  "Returns md5sum for a message object of type 'nav_goal-response"
  "5776176c95d37b90d51191fc6ec03fc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_goal-response>)))
  "Returns full string definition for message of type '<nav_goal-response>"
  (cl:format cl:nil "bool reach_ok~%~%##导航节点提供服务~%##发送位姿信息，reach_ok代表是否成功到达位姿。~%##导航服务结束后才返回~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_goal-response)))
  "Returns full string definition for message of type 'nav_goal-response"
  (cl:format cl:nil "bool reach_ok~%~%##导航节点提供服务~%##发送位姿信息，reach_ok代表是否成功到达位姿。~%##导航服务结束后才返回~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_goal-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_goal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_goal-response
    (cl:cons ':reach_ok (reach_ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_goal)))
  'nav_goal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_goal)))
  'nav_goal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_goal)))
  "Returns string type for a service object of type '<nav_goal>"
  "srvbg/nav_goal")