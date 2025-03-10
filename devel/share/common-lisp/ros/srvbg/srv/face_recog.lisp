; Auto-generated. Do not edit!


(cl:in-package srvbg-srv)


;//! \htmlinclude face_recog-request.msg.html

(cl:defclass <face_recog-request> (roslisp-msg-protocol:ros-message)
  ((start_face_recog
    :reader start_face_recog
    :initarg :start_face_recog
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass face_recog-request (<face_recog-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <face_recog-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'face_recog-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<face_recog-request> is deprecated: use srvbg-srv:face_recog-request instead.")))

(cl:ensure-generic-function 'start_face_recog-val :lambda-list '(m))
(cl:defmethod start_face_recog-val ((m <face_recog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:start_face_recog-val is deprecated.  Use srvbg-srv:start_face_recog instead.")
  (start_face_recog m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <face_recog-request>) ostream)
  "Serializes a message object of type '<face_recog-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_face_recog) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <face_recog-request>) istream)
  "Deserializes a message object of type '<face_recog-request>"
    (cl:setf (cl:slot-value msg 'start_face_recog) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<face_recog-request>)))
  "Returns string type for a service object of type '<face_recog-request>"
  "srvbg/face_recogRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'face_recog-request)))
  "Returns string type for a service object of type 'face_recog-request"
  "srvbg/face_recogRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<face_recog-request>)))
  "Returns md5sum for a message object of type '<face_recog-request>"
  "c4eb8bf02b945647ede55dad5ed70f85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'face_recog-request)))
  "Returns md5sum for a message object of type 'face_recog-request"
  "c4eb8bf02b945647ede55dad5ed70f85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<face_recog-request>)))
  "Returns full string definition for message of type '<face_recog-request>"
  (cl:format cl:nil "bool start_face_recog~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'face_recog-request)))
  "Returns full string definition for message of type 'face_recog-request"
  (cl:format cl:nil "bool start_face_recog~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <face_recog-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <face_recog-request>))
  "Converts a ROS message object to a list"
  (cl:list 'face_recog-request
    (cl:cons ':start_face_recog (start_face_recog msg))
))
;//! \htmlinclude face_recog-response.msg.html

(cl:defclass <face_recog-response> (roslisp-msg-protocol:ros-message)
  ((people_id
    :reader people_id
    :initarg :people_id
    :type cl:integer
    :initform 0))
)

(cl:defclass face_recog-response (<face_recog-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <face_recog-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'face_recog-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<face_recog-response> is deprecated: use srvbg-srv:face_recog-response instead.")))

(cl:ensure-generic-function 'people_id-val :lambda-list '(m))
(cl:defmethod people_id-val ((m <face_recog-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:people_id-val is deprecated.  Use srvbg-srv:people_id instead.")
  (people_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <face_recog-response>) ostream)
  "Serializes a message object of type '<face_recog-response>"
  (cl:let* ((signed (cl:slot-value msg 'people_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <face_recog-response>) istream)
  "Deserializes a message object of type '<face_recog-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'people_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<face_recog-response>)))
  "Returns string type for a service object of type '<face_recog-response>"
  "srvbg/face_recogResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'face_recog-response)))
  "Returns string type for a service object of type 'face_recog-response"
  "srvbg/face_recogResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<face_recog-response>)))
  "Returns md5sum for a message object of type '<face_recog-response>"
  "c4eb8bf02b945647ede55dad5ed70f85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'face_recog-response)))
  "Returns md5sum for a message object of type 'face_recog-response"
  "c4eb8bf02b945647ede55dad5ed70f85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<face_recog-response>)))
  "Returns full string definition for message of type '<face_recog-response>"
  (cl:format cl:nil "int32 people_id~%~%##人脸识别节点提供服务~%##发送送一次，识别到对象为止。~%##不发送请求，则不进行识别。~%##start_face_recog数值无所谓~%##返回people_id数值代表识别到的病人id。~%##需要等待服务结束才能进行接下来的业务~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'face_recog-response)))
  "Returns full string definition for message of type 'face_recog-response"
  (cl:format cl:nil "int32 people_id~%~%##人脸识别节点提供服务~%##发送送一次，识别到对象为止。~%##不发送请求，则不进行识别。~%##start_face_recog数值无所谓~%##返回people_id数值代表识别到的病人id。~%##需要等待服务结束才能进行接下来的业务~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <face_recog-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <face_recog-response>))
  "Converts a ROS message object to a list"
  (cl:list 'face_recog-response
    (cl:cons ':people_id (people_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'face_recog)))
  'face_recog-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'face_recog)))
  'face_recog-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'face_recog)))
  "Returns string type for a service object of type '<face_recog>"
  "srvbg/face_recog")