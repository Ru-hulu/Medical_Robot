;; Auto-generated. Do not edit!


(when (boundp 'srvbg::people_id_ui)
  (if (not (find-package "SRVBG"))
    (make-package "SRVBG"))
  (shadow 'people_id_ui (find-package "SRVBG")))
(unless (find-package "SRVBG::PEOPLE_ID_UI")
  (make-package "SRVBG::PEOPLE_ID_UI"))
(unless (find-package "SRVBG::PEOPLE_ID_UIREQUEST")
  (make-package "SRVBG::PEOPLE_ID_UIREQUEST"))
(unless (find-package "SRVBG::PEOPLE_ID_UIRESPONSE")
  (make-package "SRVBG::PEOPLE_ID_UIRESPONSE"))

(in-package "ROS")





(defclass srvbg::people_id_uiRequest
  :super ros::object
  :slots (_people_id ))

(defmethod srvbg::people_id_uiRequest
  (:init
   (&key
    ((:people_id __people_id) 0)
    )
   (send-super :init)
   (setq _people_id (round __people_id))
   self)
  (:people_id
   (&optional __people_id)
   (if __people_id (setq _people_id __people_id)) _people_id)
  (:serialization-length
   ()
   (+
    ;; int32 _people_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _people_id
       (write-long _people_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _people_id
     (setq _people_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass srvbg::people_id_uiResponse
  :super ros::object
  :slots (_get_ok ))

(defmethod srvbg::people_id_uiResponse
  (:init
   (&key
    ((:get_ok __get_ok) nil)
    )
   (send-super :init)
   (setq _get_ok __get_ok)
   self)
  (:get_ok
   (&optional (__get_ok :null))
   (if (not (eq __get_ok :null)) (setq _get_ok __get_ok)) _get_ok)
  (:serialization-length
   ()
   (+
    ;; bool _get_ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _get_ok
       (if _get_ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _get_ok
     (setq _get_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass srvbg::people_id_ui
  :super ros::object
  :slots ())

(setf (get srvbg::people_id_ui :md5sum-) "951a25e8f2062cf3a7d7d54a9560079a")
(setf (get srvbg::people_id_ui :datatype-) "srvbg/people_id_ui")
(setf (get srvbg::people_id_ui :request) srvbg::people_id_uiRequest)
(setf (get srvbg::people_id_ui :response) srvbg::people_id_uiResponse)

(defmethod srvbg::people_id_uiRequest
  (:response () (instance srvbg::people_id_uiResponse :init)))

(setf (get srvbg::people_id_uiRequest :md5sum-) "951a25e8f2062cf3a7d7d54a9560079a")
(setf (get srvbg::people_id_uiRequest :datatype-) "srvbg/people_id_uiRequest")
(setf (get srvbg::people_id_uiRequest :definition-)
      "int32 people_id
---
bool get_ok

##发送病人id信息
##提供服务端接受到people_id后，马上返回get_ok。
")

(setf (get srvbg::people_id_uiResponse :md5sum-) "951a25e8f2062cf3a7d7d54a9560079a")
(setf (get srvbg::people_id_uiResponse :datatype-) "srvbg/people_id_uiResponse")
(setf (get srvbg::people_id_uiResponse :definition-)
      "int32 people_id
---
bool get_ok

##发送病人id信息
##提供服务端接受到people_id后，马上返回get_ok。
")



(provide :srvbg/people_id_ui "951a25e8f2062cf3a7d7d54a9560079a")


