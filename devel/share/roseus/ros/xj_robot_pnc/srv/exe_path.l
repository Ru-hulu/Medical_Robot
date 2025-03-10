;; Auto-generated. Do not edit!


(when (boundp 'xj_robot_pnc::exe_path)
  (if (not (find-package "XJ_ROBOT_PNC"))
    (make-package "XJ_ROBOT_PNC"))
  (shadow 'exe_path (find-package "XJ_ROBOT_PNC")))
(unless (find-package "XJ_ROBOT_PNC::EXE_PATH")
  (make-package "XJ_ROBOT_PNC::EXE_PATH"))
(unless (find-package "XJ_ROBOT_PNC::EXE_PATHREQUEST")
  (make-package "XJ_ROBOT_PNC::EXE_PATHREQUEST"))
(unless (find-package "XJ_ROBOT_PNC::EXE_PATHRESPONSE")
  (make-package "XJ_ROBOT_PNC::EXE_PATHRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "XJ_ROBOT_PNC::EXE_PATHREQUEST"))
(shadow '*START* (find-package "XJ_ROBOT_PNC::EXE_PATHREQUEST"))
(defconstant xj_robot_pnc::exe_pathRequest::*START* 0)
(intern "*STOP*" (find-package "XJ_ROBOT_PNC::EXE_PATHREQUEST"))
(shadow '*STOP* (find-package "XJ_ROBOT_PNC::EXE_PATHREQUEST"))
(defconstant xj_robot_pnc::exe_pathRequest::*STOP* 1)
(intern "*PAUSE*" (find-package "XJ_ROBOT_PNC::EXE_PATHREQUEST"))
(shadow '*PAUSE* (find-package "XJ_ROBOT_PNC::EXE_PATHREQUEST"))
(defconstant xj_robot_pnc::exe_pathRequest::*PAUSE* 2)

(defun xj_robot_pnc::exe_pathRequest-to-symbol (const)
  (cond
        ((= const 0) 'xj_robot_pnc::exe_pathRequest::*START*)
        ((= const 1) 'xj_robot_pnc::exe_pathRequest::*STOP*)
        ((= const 2) 'xj_robot_pnc::exe_pathRequest::*PAUSE*)
        (t nil)))

(defclass xj_robot_pnc::exe_pathRequest
  :super ros::object
  :slots (_command _path_name _dir ))

(defmethod xj_robot_pnc::exe_pathRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:path_name __path_name) "")
    ((:dir __dir) "")
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _path_name (string __path_name))
   (setq _dir (string __dir))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:path_name
   (&optional __path_name)
   (if __path_name (setq _path_name __path_name)) _path_name)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; string _path_name
    4 (length _path_name)
    ;; string _dir
    4 (length _dir)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; string _path_name
       (write-long (length _path_name) s) (princ _path_name s)
     ;; string _dir
       (write-long (length _dir) s) (princ _dir s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _path_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass xj_robot_pnc::exe_pathResponse
  :super ros::object
  :slots (_message ))

(defmethod xj_robot_pnc::exe_pathResponse
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

(defclass xj_robot_pnc::exe_path
  :super ros::object
  :slots ())

(setf (get xj_robot_pnc::exe_path :md5sum-) "05ccd160c52332199029116636e3083a")
(setf (get xj_robot_pnc::exe_path :datatype-) "xj_robot_pnc/exe_path")
(setf (get xj_robot_pnc::exe_path :request) xj_robot_pnc::exe_pathRequest)
(setf (get xj_robot_pnc::exe_path :response) xj_robot_pnc::exe_pathResponse)

(defmethod xj_robot_pnc::exe_pathRequest
  (:response () (instance xj_robot_pnc::exe_pathResponse :init)))

(setf (get xj_robot_pnc::exe_pathRequest :md5sum-) "05ccd160c52332199029116636e3083a")
(setf (get xj_robot_pnc::exe_pathRequest :datatype-) "xj_robot_pnc/exe_pathRequest")
(setf (get xj_robot_pnc::exe_pathRequest :definition-)
      "uint8 START = 0
uint8 STOP = 1
uint8 PAUSE = 2

uint8 command
string path_name
string dir
---

string message

")

(setf (get xj_robot_pnc::exe_pathResponse :md5sum-) "05ccd160c52332199029116636e3083a")
(setf (get xj_robot_pnc::exe_pathResponse :datatype-) "xj_robot_pnc/exe_pathResponse")
(setf (get xj_robot_pnc::exe_pathResponse :definition-)
      "uint8 START = 0
uint8 STOP = 1
uint8 PAUSE = 2

uint8 command
string path_name
string dir
---

string message

")



(provide :xj_robot_pnc/exe_path "05ccd160c52332199029116636e3083a")


