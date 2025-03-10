;; Auto-generated. Do not edit!


(when (boundp 'srvbg::recept_start)
  (if (not (find-package "SRVBG"))
    (make-package "SRVBG"))
  (shadow 'recept_start (find-package "SRVBG")))
(unless (find-package "SRVBG::RECEPT_START")
  (make-package "SRVBG::RECEPT_START"))
(unless (find-package "SRVBG::RECEPT_STARTREQUEST")
  (make-package "SRVBG::RECEPT_STARTREQUEST"))
(unless (find-package "SRVBG::RECEPT_STARTRESPONSE")
  (make-package "SRVBG::RECEPT_STARTRESPONSE"))

(in-package "ROS")





(defclass srvbg::recept_startRequest
  :super ros::object
  :slots (_start_recept ))

(defmethod srvbg::recept_startRequest
  (:init
   (&key
    ((:start_recept __start_recept) nil)
    )
   (send-super :init)
   (setq _start_recept __start_recept)
   self)
  (:start_recept
   (&optional (__start_recept :null))
   (if (not (eq __start_recept :null)) (setq _start_recept __start_recept)) _start_recept)
  (:serialization-length
   ()
   (+
    ;; bool _start_recept
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start_recept
       (if _start_recept (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start_recept
     (setq _start_recept (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass srvbg::recept_startResponse
  :super ros::object
  :slots (_start_ok ))

(defmethod srvbg::recept_startResponse
  (:init
   (&key
    ((:start_ok __start_ok) nil)
    )
   (send-super :init)
   (setq _start_ok __start_ok)
   self)
  (:start_ok
   (&optional (__start_ok :null))
   (if (not (eq __start_ok :null)) (setq _start_ok __start_ok)) _start_ok)
  (:serialization-length
   ()
   (+
    ;; bool _start_ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start_ok
       (if _start_ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start_ok
     (setq _start_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass srvbg::recept_start
  :super ros::object
  :slots ())

(setf (get srvbg::recept_start :md5sum-) "01e466c8eb71ba7ac0b6740b7da30b81")
(setf (get srvbg::recept_start :datatype-) "srvbg/recept_start")
(setf (get srvbg::recept_start :request) srvbg::recept_startRequest)
(setf (get srvbg::recept_start :response) srvbg::recept_startResponse)

(defmethod srvbg::recept_startRequest
  (:response () (instance srvbg::recept_startResponse :init)))

(setf (get srvbg::recept_startRequest :md5sum-) "01e466c8eb71ba7ac0b6740b7da30b81")
(setf (get srvbg::recept_startRequest :datatype-) "srvbg/recept_startRequest")
(setf (get srvbg::recept_startRequest :definition-)
      "bool start_recept
---
bool start_ok

## start_recept =  true代表开始接诊服务
## start_ok 代表当前 接诊节点的状态
## 提供服务端接受到服务请求后马上返回
")

(setf (get srvbg::recept_startResponse :md5sum-) "01e466c8eb71ba7ac0b6740b7da30b81")
(setf (get srvbg::recept_startResponse :datatype-) "srvbg/recept_startResponse")
(setf (get srvbg::recept_startResponse :definition-)
      "bool start_recept
---
bool start_ok

## start_recept =  true代表开始接诊服务
## start_ok 代表当前 接诊节点的状态
## 提供服务端接受到服务请求后马上返回
")



(provide :srvbg/recept_start "01e466c8eb71ba7ac0b6740b7da30b81")


