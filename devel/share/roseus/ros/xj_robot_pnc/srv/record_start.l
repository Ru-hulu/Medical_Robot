;; Auto-generated. Do not edit!


(when (boundp 'xj_robot_pnc::record_start)
  (if (not (find-package "XJ_ROBOT_PNC"))
    (make-package "XJ_ROBOT_PNC"))
  (shadow 'record_start (find-package "XJ_ROBOT_PNC")))
(unless (find-package "XJ_ROBOT_PNC::RECORD_START")
  (make-package "XJ_ROBOT_PNC::RECORD_START"))
(unless (find-package "XJ_ROBOT_PNC::RECORD_STARTREQUEST")
  (make-package "XJ_ROBOT_PNC::RECORD_STARTREQUEST"))
(unless (find-package "XJ_ROBOT_PNC::RECORD_STARTRESPONSE")
  (make-package "XJ_ROBOT_PNC::RECORD_STARTRESPONSE"))

(in-package "ROS")





(defclass xj_robot_pnc::record_startRequest
  :super ros::object
  :slots (_path_name _dir ))

(defmethod xj_robot_pnc::record_startRequest
  (:init
   (&key
    ((:path_name __path_name) "")
    ((:dir __dir) "")
    )
   (send-super :init)
   (setq _path_name (string __path_name))
   (setq _dir (string __dir))
   self)
  (:path_name
   (&optional __path_name)
   (if __path_name (setq _path_name __path_name)) _path_name)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:serialization-length
   ()
   (+
    ;; string _path_name
    4 (length _path_name)
    ;; string _dir
    4 (length _dir)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path_name
       (write-long (length _path_name) s) (princ _path_name s)
     ;; string _dir
       (write-long (length _dir) s) (princ _dir s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass xj_robot_pnc::record_startResponse
  :super ros::object
  :slots (_message ))

(defmethod xj_robot_pnc::record_startResponse
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

(defclass xj_robot_pnc::record_start
  :super ros::object
  :slots ())

(setf (get xj_robot_pnc::record_start :md5sum-) "1ec11de8b8f99b8a7fdec75970d60c52")
(setf (get xj_robot_pnc::record_start :datatype-) "xj_robot_pnc/record_start")
(setf (get xj_robot_pnc::record_start :request) xj_robot_pnc::record_startRequest)
(setf (get xj_robot_pnc::record_start :response) xj_robot_pnc::record_startResponse)

(defmethod xj_robot_pnc::record_startRequest
  (:response () (instance xj_robot_pnc::record_startResponse :init)))

(setf (get xj_robot_pnc::record_startRequest :md5sum-) "1ec11de8b8f99b8a7fdec75970d60c52")
(setf (get xj_robot_pnc::record_startRequest :datatype-) "xj_robot_pnc/record_startRequest")
(setf (get xj_robot_pnc::record_startRequest :definition-)
      "string path_name
string dir
---

string message

")

(setf (get xj_robot_pnc::record_startResponse :md5sum-) "1ec11de8b8f99b8a7fdec75970d60c52")
(setf (get xj_robot_pnc::record_startResponse :datatype-) "xj_robot_pnc/record_startResponse")
(setf (get xj_robot_pnc::record_startResponse :definition-)
      "string path_name
string dir
---

string message

")



(provide :xj_robot_pnc/record_start "1ec11de8b8f99b8a7fdec75970d60c52")


