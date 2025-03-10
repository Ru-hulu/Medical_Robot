;; Auto-generated. Do not edit!


(when (boundp 'xj_robot_pnc::xj_robot_task)
  (if (not (find-package "XJ_ROBOT_PNC"))
    (make-package "XJ_ROBOT_PNC"))
  (shadow 'xj_robot_task (find-package "XJ_ROBOT_PNC")))
(unless (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASK")
  (make-package "XJ_ROBOT_PNC::XJ_ROBOT_TASK"))
(unless (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST")
  (make-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(unless (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKRESPONSE")
  (make-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKRESPONSE"))

(in-package "ROS")





(intern "*EXECUTE*" (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(shadow '*EXECUTE* (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(defconstant xj_robot_pnc::xj_robot_taskRequest::*EXECUTE* 0)
(intern "*RECORD*" (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(shadow '*RECORD* (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(defconstant xj_robot_pnc::xj_robot_taskRequest::*RECORD* 1)
(intern "*START*" (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(shadow '*START* (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(defconstant xj_robot_pnc::xj_robot_taskRequest::*START* 0)
(intern "*PAUSE*" (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(shadow '*PAUSE* (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(defconstant xj_robot_pnc::xj_robot_taskRequest::*PAUSE* 1)
(intern "*STOP*" (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(shadow '*STOP* (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(defconstant xj_robot_pnc::xj_robot_taskRequest::*STOP* 2)
(intern "*KEEP*" (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(shadow '*KEEP* (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(defconstant xj_robot_pnc::xj_robot_taskRequest::*KEEP* 1)
(intern "*DISCARD*" (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(shadow '*DISCARD* (find-package "XJ_ROBOT_PNC::XJ_ROBOT_TASKREQUEST"))
(defconstant xj_robot_pnc::xj_robot_taskRequest::*DISCARD* 2)

(defun xj_robot_pnc::xj_robot_taskRequest-to-symbol (const)
  (cond
        ((= const 0) 'xj_robot_pnc::xj_robot_taskRequest::*EXECUTE*)
        ((= const 1) 'xj_robot_pnc::xj_robot_taskRequest::*RECORD*)
        ((= const 0) 'xj_robot_pnc::xj_robot_taskRequest::*START*)
        ((= const 1) 'xj_robot_pnc::xj_robot_taskRequest::*PAUSE*)
        ((= const 2) 'xj_robot_pnc::xj_robot_taskRequest::*STOP*)
        ((= const 1) 'xj_robot_pnc::xj_robot_taskRequest::*KEEP*)
        ((= const 2) 'xj_robot_pnc::xj_robot_taskRequest::*DISCARD*)
        (t nil)))

(defclass xj_robot_pnc::xj_robot_taskRequest
  :super ros::object
  :slots (_type _command _dir _path_name ))

(defmethod xj_robot_pnc::xj_robot_taskRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:command __command) 0)
    ((:dir __dir) "")
    ((:path_name __path_name) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _command (round __command))
   (setq _dir (string __dir))
   (setq _path_name (string __path_name))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:path_name
   (&optional __path_name)
   (if __path_name (setq _path_name __path_name)) _path_name)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; uint8 _command
    1
    ;; string _dir
    4 (length _dir)
    ;; string _path_name
    4 (length _path_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _command
       (write-byte _command s)
     ;; string _dir
       (write-long (length _dir) s) (princ _dir s)
     ;; string _path_name
       (write-long (length _path_name) s) (princ _path_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _path_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass xj_robot_pnc::xj_robot_taskResponse
  :super ros::object
  :slots (_message ))

(defmethod xj_robot_pnc::xj_robot_taskResponse
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

(defclass xj_robot_pnc::xj_robot_task
  :super ros::object
  :slots ())

(setf (get xj_robot_pnc::xj_robot_task :md5sum-) "347eea49e7b11fe6ce7ff80abc574c91")
(setf (get xj_robot_pnc::xj_robot_task :datatype-) "xj_robot_pnc/xj_robot_task")
(setf (get xj_robot_pnc::xj_robot_task :request) xj_robot_pnc::xj_robot_taskRequest)
(setf (get xj_robot_pnc::xj_robot_task :response) xj_robot_pnc::xj_robot_taskResponse)

(defmethod xj_robot_pnc::xj_robot_taskRequest
  (:response () (instance xj_robot_pnc::xj_robot_taskResponse :init)))

(setf (get xj_robot_pnc::xj_robot_taskRequest :md5sum-) "347eea49e7b11fe6ce7ff80abc574c91")
(setf (get xj_robot_pnc::xj_robot_taskRequest :datatype-) "xj_robot_pnc/xj_robot_taskRequest")
(setf (get xj_robot_pnc::xj_robot_taskRequest :definition-)
      "uint8 EXECUTE = 0
uint8 RECORD = 1

uint8 START = 0
uint8 PAUSE = 1
uint8 STOP = 2

uint8 KEEP = 1
uint8 DISCARD = 2

uint8 type #EXECUTE RECORD
uint8 command #START PAUSE STOP KEEP DISCARD
string dir
string path_name
---

string message

")

(setf (get xj_robot_pnc::xj_robot_taskResponse :md5sum-) "347eea49e7b11fe6ce7ff80abc574c91")
(setf (get xj_robot_pnc::xj_robot_taskResponse :datatype-) "xj_robot_pnc/xj_robot_taskResponse")
(setf (get xj_robot_pnc::xj_robot_taskResponse :definition-)
      "uint8 EXECUTE = 0
uint8 RECORD = 1

uint8 START = 0
uint8 PAUSE = 1
uint8 STOP = 2

uint8 KEEP = 1
uint8 DISCARD = 2

uint8 type #EXECUTE RECORD
uint8 command #START PAUSE STOP KEEP DISCARD
string dir
string path_name
---

string message

")



(provide :xj_robot_pnc/xj_robot_task "347eea49e7b11fe6ce7ff80abc574c91")


