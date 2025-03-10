;; Auto-generated. Do not edit!


(when (boundp 'srvbg::visite_start)
  (if (not (find-package "SRVBG"))
    (make-package "SRVBG"))
  (shadow 'visite_start (find-package "SRVBG")))
(unless (find-package "SRVBG::VISITE_START")
  (make-package "SRVBG::VISITE_START"))
(unless (find-package "SRVBG::VISITE_STARTREQUEST")
  (make-package "SRVBG::VISITE_STARTREQUEST"))
(unless (find-package "SRVBG::VISITE_STARTRESPONSE")
  (make-package "SRVBG::VISITE_STARTRESPONSE"))

(in-package "ROS")





(defclass srvbg::visite_startRequest
  :super ros::object
  :slots (_start_visit ))

(defmethod srvbg::visite_startRequest
  (:init
   (&key
    ((:start_visit __start_visit) nil)
    )
   (send-super :init)
   (setq _start_visit __start_visit)
   self)
  (:start_visit
   (&optional (__start_visit :null))
   (if (not (eq __start_visit :null)) (setq _start_visit __start_visit)) _start_visit)
  (:serialization-length
   ()
   (+
    ;; bool _start_visit
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start_visit
       (if _start_visit (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start_visit
     (setq _start_visit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass srvbg::visite_startResponse
  :super ros::object
  :slots (_start_ok ))

(defmethod srvbg::visite_startResponse
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

(defclass srvbg::visite_start
  :super ros::object
  :slots ())

(setf (get srvbg::visite_start :md5sum-) "3a3696aff47d8afac6800c82253e3809")
(setf (get srvbg::visite_start :datatype-) "srvbg/visite_start")
(setf (get srvbg::visite_start :request) srvbg::visite_startRequest)
(setf (get srvbg::visite_start :response) srvbg::visite_startResponse)

(defmethod srvbg::visite_startRequest
  (:response () (instance srvbg::visite_startResponse :init)))

(setf (get srvbg::visite_startRequest :md5sum-) "3a3696aff47d8afac6800c82253e3809")
(setf (get srvbg::visite_startRequest :datatype-) "srvbg/visite_startRequest")
(setf (get srvbg::visite_startRequest :definition-)
      "bool start_visit
---
bool start_ok

## start_visit =  true代表开始巡诊服务
## start_ok 代表当前 巡诊节点的状态
## 提供服务端接受到服务请求后马上返回
")

(setf (get srvbg::visite_startResponse :md5sum-) "3a3696aff47d8afac6800c82253e3809")
(setf (get srvbg::visite_startResponse :datatype-) "srvbg/visite_startResponse")
(setf (get srvbg::visite_startResponse :definition-)
      "bool start_visit
---
bool start_ok

## start_visit =  true代表开始巡诊服务
## start_ok 代表当前 巡诊节点的状态
## 提供服务端接受到服务请求后马上返回
")



(provide :srvbg/visite_start "3a3696aff47d8afac6800c82253e3809")


