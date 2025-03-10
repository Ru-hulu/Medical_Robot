;; Auto-generated. Do not edit!


(when (boundp 'car_driver::RealCMD)
  (if (not (find-package "CAR_DRIVER"))
    (make-package "CAR_DRIVER"))
  (shadow 'RealCMD (find-package "CAR_DRIVER")))
(unless (find-package "CAR_DRIVER::REALCMD")
  (make-package "CAR_DRIVER::REALCMD"))

(in-package "ROS")
;;//! \htmlinclude RealCMD.msg.html


(defclass car_driver::RealCMD
  :super ros::object
  :slots (_auto_mode _wheel_mode _wheel_left_v _wheel_right_v _stop_flag _re_enabled _disabled ))

(defmethod car_driver::RealCMD
  (:init
   (&key
    ((:auto_mode __auto_mode) nil)
    ((:wheel_mode __wheel_mode) 0)
    ((:wheel_left_v __wheel_left_v) 0)
    ((:wheel_right_v __wheel_right_v) 0)
    ((:stop_flag __stop_flag) nil)
    ((:re_enabled __re_enabled) nil)
    ((:disabled __disabled) nil)
    )
   (send-super :init)
   (setq _auto_mode __auto_mode)
   (setq _wheel_mode (round __wheel_mode))
   (setq _wheel_left_v (round __wheel_left_v))
   (setq _wheel_right_v (round __wheel_right_v))
   (setq _stop_flag __stop_flag)
   (setq _re_enabled __re_enabled)
   (setq _disabled __disabled)
   self)
  (:auto_mode
   (&optional (__auto_mode :null))
   (if (not (eq __auto_mode :null)) (setq _auto_mode __auto_mode)) _auto_mode)
  (:wheel_mode
   (&optional __wheel_mode)
   (if __wheel_mode (setq _wheel_mode __wheel_mode)) _wheel_mode)
  (:wheel_left_v
   (&optional __wheel_left_v)
   (if __wheel_left_v (setq _wheel_left_v __wheel_left_v)) _wheel_left_v)
  (:wheel_right_v
   (&optional __wheel_right_v)
   (if __wheel_right_v (setq _wheel_right_v __wheel_right_v)) _wheel_right_v)
  (:stop_flag
   (&optional (__stop_flag :null))
   (if (not (eq __stop_flag :null)) (setq _stop_flag __stop_flag)) _stop_flag)
  (:re_enabled
   (&optional (__re_enabled :null))
   (if (not (eq __re_enabled :null)) (setq _re_enabled __re_enabled)) _re_enabled)
  (:disabled
   (&optional (__disabled :null))
   (if (not (eq __disabled :null)) (setq _disabled __disabled)) _disabled)
  (:serialization-length
   ()
   (+
    ;; bool _auto_mode
    1
    ;; uint16 _wheel_mode
    2
    ;; uint16 _wheel_left_v
    2
    ;; uint16 _wheel_right_v
    2
    ;; bool _stop_flag
    1
    ;; bool _re_enabled
    1
    ;; bool _disabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _auto_mode
       (if _auto_mode (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _wheel_mode
       (write-word _wheel_mode s)
     ;; uint16 _wheel_left_v
       (write-word _wheel_left_v s)
     ;; uint16 _wheel_right_v
       (write-word _wheel_right_v s)
     ;; bool _stop_flag
       (if _stop_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _re_enabled
       (if _re_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _disabled
       (if _disabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _auto_mode
     (setq _auto_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _wheel_mode
     (setq _wheel_mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _wheel_left_v
     (setq _wheel_left_v (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _wheel_right_v
     (setq _wheel_right_v (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _stop_flag
     (setq _stop_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _re_enabled
     (setq _re_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _disabled
     (setq _disabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get car_driver::RealCMD :md5sum-) "6838281da4a3b48cd4264834fb376e62")
(setf (get car_driver::RealCMD :datatype-) "car_driver/RealCMD")
(setf (get car_driver::RealCMD :definition-)
      "# 小车运行模式切换。
bool auto_mode

# 轮毂电机左右轮速度值
uint16 wheel_mode
uint16 wheel_left_v
uint16 wheel_right_v


# 轮毂电机急停命令
bool stop_flag

# 轮毂电机重新使能命令
bool re_enabled

# 轮毂电机失能命令
bool disabled 
")



(provide :car_driver/RealCMD "6838281da4a3b48cd4264834fb376e62")


