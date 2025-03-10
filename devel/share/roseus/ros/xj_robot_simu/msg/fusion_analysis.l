;; Auto-generated. Do not edit!


(when (boundp 'xj_robot_simu::fusion_analysis)
  (if (not (find-package "XJ_ROBOT_SIMU"))
    (make-package "XJ_ROBOT_SIMU"))
  (shadow 'fusion_analysis (find-package "XJ_ROBOT_SIMU")))
(unless (find-package "XJ_ROBOT_SIMU::FUSION_ANALYSIS")
  (make-package "XJ_ROBOT_SIMU::FUSION_ANALYSIS"))

(in-package "ROS")
;;//! \htmlinclude fusion_analysis.msg.html


(defclass xj_robot_simu::fusion_analysis
  :super ros::object
  :slots (_linear_control _linear_feedback _angular_control _angular_feedback _lwheel_control _lwheel_feedback _lwheel_acc _rwheel_control _rwheel_feedback _rwheel_acc _odom_pose ))

(defmethod xj_robot_simu::fusion_analysis
  (:init
   (&key
    ((:linear_control __linear_control) 0.0)
    ((:linear_feedback __linear_feedback) 0.0)
    ((:angular_control __angular_control) 0.0)
    ((:angular_feedback __angular_feedback) 0.0)
    ((:lwheel_control __lwheel_control) 0.0)
    ((:lwheel_feedback __lwheel_feedback) 0.0)
    ((:lwheel_acc __lwheel_acc) 0.0)
    ((:rwheel_control __rwheel_control) 0.0)
    ((:rwheel_feedback __rwheel_feedback) 0.0)
    ((:rwheel_acc __rwheel_acc) 0.0)
    ((:odom_pose __odom_pose) (instance xj_robot_simu::carpose :init))
    )
   (send-super :init)
   (setq _linear_control (float __linear_control))
   (setq _linear_feedback (float __linear_feedback))
   (setq _angular_control (float __angular_control))
   (setq _angular_feedback (float __angular_feedback))
   (setq _lwheel_control (float __lwheel_control))
   (setq _lwheel_feedback (float __lwheel_feedback))
   (setq _lwheel_acc (float __lwheel_acc))
   (setq _rwheel_control (float __rwheel_control))
   (setq _rwheel_feedback (float __rwheel_feedback))
   (setq _rwheel_acc (float __rwheel_acc))
   (setq _odom_pose __odom_pose)
   self)
  (:linear_control
   (&optional __linear_control)
   (if __linear_control (setq _linear_control __linear_control)) _linear_control)
  (:linear_feedback
   (&optional __linear_feedback)
   (if __linear_feedback (setq _linear_feedback __linear_feedback)) _linear_feedback)
  (:angular_control
   (&optional __angular_control)
   (if __angular_control (setq _angular_control __angular_control)) _angular_control)
  (:angular_feedback
   (&optional __angular_feedback)
   (if __angular_feedback (setq _angular_feedback __angular_feedback)) _angular_feedback)
  (:lwheel_control
   (&optional __lwheel_control)
   (if __lwheel_control (setq _lwheel_control __lwheel_control)) _lwheel_control)
  (:lwheel_feedback
   (&optional __lwheel_feedback)
   (if __lwheel_feedback (setq _lwheel_feedback __lwheel_feedback)) _lwheel_feedback)
  (:lwheel_acc
   (&optional __lwheel_acc)
   (if __lwheel_acc (setq _lwheel_acc __lwheel_acc)) _lwheel_acc)
  (:rwheel_control
   (&optional __rwheel_control)
   (if __rwheel_control (setq _rwheel_control __rwheel_control)) _rwheel_control)
  (:rwheel_feedback
   (&optional __rwheel_feedback)
   (if __rwheel_feedback (setq _rwheel_feedback __rwheel_feedback)) _rwheel_feedback)
  (:rwheel_acc
   (&optional __rwheel_acc)
   (if __rwheel_acc (setq _rwheel_acc __rwheel_acc)) _rwheel_acc)
  (:odom_pose
   (&rest __odom_pose)
   (if (keywordp (car __odom_pose))
       (send* _odom_pose __odom_pose)
     (progn
       (if __odom_pose (setq _odom_pose (car __odom_pose)))
       _odom_pose)))
  (:serialization-length
   ()
   (+
    ;; float32 _linear_control
    4
    ;; float32 _linear_feedback
    4
    ;; float32 _angular_control
    4
    ;; float32 _angular_feedback
    4
    ;; float32 _lwheel_control
    4
    ;; float32 _lwheel_feedback
    4
    ;; float32 _lwheel_acc
    4
    ;; float32 _rwheel_control
    4
    ;; float32 _rwheel_feedback
    4
    ;; float32 _rwheel_acc
    4
    ;; xj_robot_simu/carpose _odom_pose
    (send _odom_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linear_control
       (sys::poke _linear_control (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_feedback
       (sys::poke _linear_feedback (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_control
       (sys::poke _angular_control (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_feedback
       (sys::poke _angular_feedback (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lwheel_control
       (sys::poke _lwheel_control (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lwheel_feedback
       (sys::poke _lwheel_feedback (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lwheel_acc
       (sys::poke _lwheel_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rwheel_control
       (sys::poke _rwheel_control (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rwheel_feedback
       (sys::poke _rwheel_feedback (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rwheel_acc
       (sys::poke _rwheel_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; xj_robot_simu/carpose _odom_pose
       (send _odom_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linear_control
     (setq _linear_control (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_feedback
     (setq _linear_feedback (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_control
     (setq _angular_control (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_feedback
     (setq _angular_feedback (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lwheel_control
     (setq _lwheel_control (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lwheel_feedback
     (setq _lwheel_feedback (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lwheel_acc
     (setq _lwheel_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rwheel_control
     (setq _rwheel_control (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rwheel_feedback
     (setq _rwheel_feedback (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rwheel_acc
     (setq _rwheel_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; xj_robot_simu/carpose _odom_pose
     (send _odom_pose :deserialize buf ptr-) (incf ptr- (send _odom_pose :serialization-length))
   ;;
   self)
  )

(setf (get xj_robot_simu::fusion_analysis :md5sum-) "9535f87409ff97acc35ef33565f17f12")
(setf (get xj_robot_simu::fusion_analysis :datatype-) "xj_robot_simu/fusion_analysis")
(setf (get xj_robot_simu::fusion_analysis :definition-)
      "float32 linear_control #线速度指令
float32 linear_feedback #线速度反馈
float32 angular_control #角速度指令
float32 angular_feedback #角速度反馈
float32 lwheel_control #左轮转速指令
float32 lwheel_feedback #左轮转速反馈
float32 lwheel_acc #左轮加速度
float32 rwheel_control #右轮转速指令
float32 rwheel_feedback #右轮转速反馈
float32 rwheel_acc #右轮加速度
carpose odom_pose #odom位置
================================================================================
MSG: xj_robot_simu/carpose
float32 x
float32 y
float32 yaw
")



(provide :xj_robot_simu/fusion_analysis "9535f87409ff97acc35ef33565f17f12")


