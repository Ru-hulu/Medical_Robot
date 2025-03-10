;; Auto-generated. Do not edit!


(when (boundp 'srvbg::face_recog)
  (if (not (find-package "SRVBG"))
    (make-package "SRVBG"))
  (shadow 'face_recog (find-package "SRVBG")))
(unless (find-package "SRVBG::FACE_RECOG")
  (make-package "SRVBG::FACE_RECOG"))
(unless (find-package "SRVBG::FACE_RECOGREQUEST")
  (make-package "SRVBG::FACE_RECOGREQUEST"))
(unless (find-package "SRVBG::FACE_RECOGRESPONSE")
  (make-package "SRVBG::FACE_RECOGRESPONSE"))

(in-package "ROS")





(defclass srvbg::face_recogRequest
  :super ros::object
  :slots (_start_face_recog ))

(defmethod srvbg::face_recogRequest
  (:init
   (&key
    ((:start_face_recog __start_face_recog) nil)
    )
   (send-super :init)
   (setq _start_face_recog __start_face_recog)
   self)
  (:start_face_recog
   (&optional (__start_face_recog :null))
   (if (not (eq __start_face_recog :null)) (setq _start_face_recog __start_face_recog)) _start_face_recog)
  (:serialization-length
   ()
   (+
    ;; bool _start_face_recog
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start_face_recog
       (if _start_face_recog (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start_face_recog
     (setq _start_face_recog (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass srvbg::face_recogResponse
  :super ros::object
  :slots (_people_id ))

(defmethod srvbg::face_recogResponse
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

(defclass srvbg::face_recog
  :super ros::object
  :slots ())

(setf (get srvbg::face_recog :md5sum-) "c4eb8bf02b945647ede55dad5ed70f85")
(setf (get srvbg::face_recog :datatype-) "srvbg/face_recog")
(setf (get srvbg::face_recog :request) srvbg::face_recogRequest)
(setf (get srvbg::face_recog :response) srvbg::face_recogResponse)

(defmethod srvbg::face_recogRequest
  (:response () (instance srvbg::face_recogResponse :init)))

(setf (get srvbg::face_recogRequest :md5sum-) "c4eb8bf02b945647ede55dad5ed70f85")
(setf (get srvbg::face_recogRequest :datatype-) "srvbg/face_recogRequest")
(setf (get srvbg::face_recogRequest :definition-)
      "bool start_face_recog
---
int32 people_id

##人脸识别节点提供服务
##发送送一次，识别到对象为止。
##不发送请求，则不进行识别。
##start_face_recog数值无所谓
##返回people_id数值代表识别到的病人id。
##需要等待服务结束才能进行接下来的业务
")

(setf (get srvbg::face_recogResponse :md5sum-) "c4eb8bf02b945647ede55dad5ed70f85")
(setf (get srvbg::face_recogResponse :datatype-) "srvbg/face_recogResponse")
(setf (get srvbg::face_recogResponse :definition-)
      "bool start_face_recog
---
int32 people_id

##人脸识别节点提供服务
##发送送一次，识别到对象为止。
##不发送请求，则不进行识别。
##start_face_recog数值无所谓
##返回people_id数值代表识别到的病人id。
##需要等待服务结束才能进行接下来的业务
")



(provide :srvbg/face_recog "c4eb8bf02b945647ede55dad5ed70f85")


