;; Auto-generated. Do not edit!


(when (boundp 'xj_robot_pnc::nav_goal)
  (if (not (find-package "XJ_ROBOT_PNC"))
    (make-package "XJ_ROBOT_PNC"))
  (shadow 'nav_goal (find-package "XJ_ROBOT_PNC")))
(unless (find-package "XJ_ROBOT_PNC::NAV_GOAL")
  (make-package "XJ_ROBOT_PNC::NAV_GOAL"))
(unless (find-package "XJ_ROBOT_PNC::NAV_GOALREQUEST")
  (make-package "XJ_ROBOT_PNC::NAV_GOALREQUEST"))
(unless (find-package "XJ_ROBOT_PNC::NAV_GOALRESPONSE")
  (make-package "XJ_ROBOT_PNC::NAV_GOALRESPONSE"))

(in-package "ROS")





(defclass xj_robot_pnc::nav_goalRequest
  :super ros::object
  :slots (_tar_x _tar_y _tar_z _tar_yaw ))

(defmethod xj_robot_pnc::nav_goalRequest
  (:init
   (&key
    ((:tar_x __tar_x) 0.0)
    ((:tar_y __tar_y) 0.0)
    ((:tar_z __tar_z) 0.0)
    ((:tar_yaw __tar_yaw) 0.0)
    )
   (send-super :init)
   (setq _tar_x (float __tar_x))
   (setq _tar_y (float __tar_y))
   (setq _tar_z (float __tar_z))
   (setq _tar_yaw (float __tar_yaw))
   self)
  (:tar_x
   (&optional __tar_x)
   (if __tar_x (setq _tar_x __tar_x)) _tar_x)
  (:tar_y
   (&optional __tar_y)
   (if __tar_y (setq _tar_y __tar_y)) _tar_y)
  (:tar_z
   (&optional __tar_z)
   (if __tar_z (setq _tar_z __tar_z)) _tar_z)
  (:tar_yaw
   (&optional __tar_yaw)
   (if __tar_yaw (setq _tar_yaw __tar_yaw)) _tar_yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _tar_x
    4
    ;; float32 _tar_y
    4
    ;; float32 _tar_z
    4
    ;; float32 _tar_yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _tar_x
       (sys::poke _tar_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tar_y
       (sys::poke _tar_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tar_z
       (sys::poke _tar_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tar_yaw
       (sys::poke _tar_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _tar_x
     (setq _tar_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tar_y
     (setq _tar_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tar_z
     (setq _tar_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tar_yaw
     (setq _tar_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass xj_robot_pnc::nav_goalResponse
  :super ros::object
  :slots (_reach_ok ))

(defmethod xj_robot_pnc::nav_goalResponse
  (:init
   (&key
    ((:reach_ok __reach_ok) nil)
    )
   (send-super :init)
   (setq _reach_ok __reach_ok)
   self)
  (:reach_ok
   (&optional (__reach_ok :null))
   (if (not (eq __reach_ok :null)) (setq _reach_ok __reach_ok)) _reach_ok)
  (:serialization-length
   ()
   (+
    ;; bool _reach_ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reach_ok
       (if _reach_ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reach_ok
     (setq _reach_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass xj_robot_pnc::nav_goal
  :super ros::object
  :slots ())

(setf (get xj_robot_pnc::nav_goal :md5sum-) "5776176c95d37b90d51191fc6ec03fc8")
(setf (get xj_robot_pnc::nav_goal :datatype-) "xj_robot_pnc/nav_goal")
(setf (get xj_robot_pnc::nav_goal :request) xj_robot_pnc::nav_goalRequest)
(setf (get xj_robot_pnc::nav_goal :response) xj_robot_pnc::nav_goalResponse)

(defmethod xj_robot_pnc::nav_goalRequest
  (:response () (instance xj_robot_pnc::nav_goalResponse :init)))

(setf (get xj_robot_pnc::nav_goalRequest :md5sum-) "5776176c95d37b90d51191fc6ec03fc8")
(setf (get xj_robot_pnc::nav_goalRequest :datatype-) "xj_robot_pnc/nav_goalRequest")
(setf (get xj_robot_pnc::nav_goalRequest :definition-)
      "float32 tar_x
float32 tar_y
float32 tar_z
float32 tar_yaw
---
bool reach_ok

##导航节点提供服务
##发送位姿信息，reach_ok代表是否成功到达位姿。
##导航服务结束后才返回
")

(setf (get xj_robot_pnc::nav_goalResponse :md5sum-) "5776176c95d37b90d51191fc6ec03fc8")
(setf (get xj_robot_pnc::nav_goalResponse :datatype-) "xj_robot_pnc/nav_goalResponse")
(setf (get xj_robot_pnc::nav_goalResponse :definition-)
      "float32 tar_x
float32 tar_y
float32 tar_z
float32 tar_yaw
---
bool reach_ok

##导航节点提供服务
##发送位姿信息，reach_ok代表是否成功到达位姿。
##导航服务结束后才返回
")



(provide :xj_robot_pnc/nav_goal "5776176c95d37b90d51191fc6ec03fc8")


