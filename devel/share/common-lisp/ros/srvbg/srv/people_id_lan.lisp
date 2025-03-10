; Auto-generated. Do not edit!


(cl:in-package srvbg-srv)


;//! \htmlinclude people_id_lan-request.msg.html

(cl:defclass <people_id_lan-request> (roslisp-msg-protocol:ros-message)
  ((id_mode
    :reader id_mode
    :initarg :id_mode
    :type cl:string
    :initform ""))
)

(cl:defclass people_id_lan-request (<people_id_lan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <people_id_lan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'people_id_lan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<people_id_lan-request> is deprecated: use srvbg-srv:people_id_lan-request instead.")))

(cl:ensure-generic-function 'id_mode-val :lambda-list '(m))
(cl:defmethod id_mode-val ((m <people_id_lan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:id_mode-val is deprecated.  Use srvbg-srv:id_mode instead.")
  (id_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <people_id_lan-request>) ostream)
  "Serializes a message object of type '<people_id_lan-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id_mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <people_id_lan-request>) istream)
  "Deserializes a message object of type '<people_id_lan-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<people_id_lan-request>)))
  "Returns string type for a service object of type '<people_id_lan-request>"
  "srvbg/people_id_lanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'people_id_lan-request)))
  "Returns string type for a service object of type 'people_id_lan-request"
  "srvbg/people_id_lanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<people_id_lan-request>)))
  "Returns md5sum for a message object of type '<people_id_lan-request>"
  "4c24b88bb7a19a8415013642d1cfd801")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'people_id_lan-request)))
  "Returns md5sum for a message object of type 'people_id_lan-request"
  "4c24b88bb7a19a8415013642d1cfd801")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<people_id_lan-request>)))
  "Returns full string definition for message of type '<people_id_lan-request>"
  (cl:format cl:nil "string id_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'people_id_lan-request)))
  "Returns full string definition for message of type 'people_id_lan-request"
  (cl:format cl:nil "string id_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <people_id_lan-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id_mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <people_id_lan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'people_id_lan-request
    (cl:cons ':id_mode (id_mode msg))
))
;//! \htmlinclude people_id_lan-response.msg.html

(cl:defclass <people_id_lan-response> (roslisp-msg-protocol:ros-message)
  ((lang_end
    :reader lang_end
    :initarg :lang_end
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass people_id_lan-response (<people_id_lan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <people_id_lan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'people_id_lan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvbg-srv:<people_id_lan-response> is deprecated: use srvbg-srv:people_id_lan-response instead.")))

(cl:ensure-generic-function 'lang_end-val :lambda-list '(m))
(cl:defmethod lang_end-val ((m <people_id_lan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvbg-srv:lang_end-val is deprecated.  Use srvbg-srv:lang_end instead.")
  (lang_end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <people_id_lan-response>) ostream)
  "Serializes a message object of type '<people_id_lan-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lang_end) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <people_id_lan-response>) istream)
  "Deserializes a message object of type '<people_id_lan-response>"
    (cl:setf (cl:slot-value msg 'lang_end) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<people_id_lan-response>)))
  "Returns string type for a service object of type '<people_id_lan-response>"
  "srvbg/people_id_lanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'people_id_lan-response)))
  "Returns string type for a service object of type 'people_id_lan-response"
  "srvbg/people_id_lanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<people_id_lan-response>)))
  "Returns md5sum for a message object of type '<people_id_lan-response>"
  "4c24b88bb7a19a8415013642d1cfd801")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'people_id_lan-response)))
  "Returns md5sum for a message object of type 'people_id_lan-response"
  "4c24b88bb7a19a8415013642d1cfd801")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<people_id_lan-response>)))
  "Returns full string definition for message of type '<people_id_lan-response>"
  (cl:format cl:nil "bool lang_end~%~%## 大语言模型节点提供服务~%## id_mode格式为 病人id_当前模式~%## 例如3_0(病人3，当前为巡诊模式)3_1(病人3，当前为接待模式)~%## lang_end 代表大语言模型对话结束~%## 结束对话后才会返回。~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'people_id_lan-response)))
  "Returns full string definition for message of type 'people_id_lan-response"
  (cl:format cl:nil "bool lang_end~%~%## 大语言模型节点提供服务~%## id_mode格式为 病人id_当前模式~%## 例如3_0(病人3，当前为巡诊模式)3_1(病人3，当前为接待模式)~%## lang_end 代表大语言模型对话结束~%## 结束对话后才会返回。~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <people_id_lan-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <people_id_lan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'people_id_lan-response
    (cl:cons ':lang_end (lang_end msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'people_id_lan)))
  'people_id_lan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'people_id_lan)))
  'people_id_lan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'people_id_lan)))
  "Returns string type for a service object of type '<people_id_lan>"
  "srvbg/people_id_lan")