;; Auto-generated. Do not edit!


(when (boundp 'xj_robot_pnc::record_stop)
  (if (not (find-package "XJ_ROBOT_PNC"))
    (make-package "XJ_ROBOT_PNC"))
  (shadow 'record_stop (find-package "XJ_ROBOT_PNC")))
(unless (find-package "XJ_ROBOT_PNC::RECORD_STOP")
  (make-package "XJ_ROBOT_PNC::RECORD_STOP"))
(unless (find-package "XJ_ROBOT_PNC::RECORD_STOPREQUEST")
  (make-package "XJ_ROBOT_PNC::RECORD_STOPREQUEST"))
(unless (find-package "XJ_ROBOT_PNC::RECORD_STOPRESPONSE")
  (make-package "XJ_ROBOT_PNC::RECORD_STOPRESPONSE"))

(in-package "ROS")





(defclass xj_robot_pnc::record_stopRequest
  :super ros::object
  :slots (_keep ))

(defmethod xj_robot_pnc::record_stopRequest
  (:init
   (&key
    ((:keep __keep) nil)
    )
   (send-super :init)
   (setq _keep __keep)
   self)
  (:keep
   (&optional (__keep :null))
   (if (not (eq __keep :null)) (setq _keep __keep)) _keep)
  (:serialization-length
   ()
   (+
    ;; bool _keep
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _keep
       (if _keep (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _keep
     (setq _keep (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass xj_robot_pnc::record_stopResponse
  :super ros::object
  :slots (_message ))

(defmethod xj_robot_pnc::record_stopResponse
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass xj_robot_pnc::record_stop
  :super ros::object
  :slots ())

(setf (get xj_robot_pnc::record_stop :md5sum-) "a25665d7f9b3b7071ad230c72b69fe34")
(setf (get xj_robot_pnc::record_stop :datatype-) "xj_robot_pnc/record_stop")
(setf (get xj_robot_pnc::record_stop :request) xj_robot_pnc::record_stopRequest)
(setf (get xj_robot_pnc::record_stop :response) xj_robot_pnc::record_stopResponse)

(defmethod xj_robot_pnc::record_stopRequest
  (:response () (instance xj_robot_pnc::record_stopResponse :init)))

(setf (get xj_robot_pnc::record_stopRequest :md5sum-) "a25665d7f9b3b7071ad230c72b69fe34")
(setf (get xj_robot_pnc::record_stopRequest :datatype-) "xj_robot_pnc/record_stopRequest")
(setf (get xj_robot_pnc::record_stopRequest :definition-)
      "bool keep
---

string message

")

(setf (get xj_robot_pnc::record_stopResponse :md5sum-) "a25665d7f9b3b7071ad230c72b69fe34")
(setf (get xj_robot_pnc::record_stopResponse :datatype-) "xj_robot_pnc/record_stopResponse")
(setf (get xj_robot_pnc::record_stopResponse :definition-)
      "bool keep
---

string message

")



(provide :xj_robot_pnc/record_stop "a25665d7f9b3b7071ad230c72b69fe34")


