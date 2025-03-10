;; Auto-generated. Do not edit!


(when (boundp 'srvbg::bed_recog)
  (if (not (find-package "SRVBG"))
    (make-package "SRVBG"))
  (shadow 'bed_recog (find-package "SRVBG")))
(unless (find-package "SRVBG::BED_RECOG")
  (make-package "SRVBG::BED_RECOG"))
(unless (find-package "SRVBG::BED_RECOGREQUEST")
  (make-package "SRVBG::BED_RECOGREQUEST"))
(unless (find-package "SRVBG::BED_RECOGRESPONSE")
  (make-package "SRVBG::BED_RECOGRESPONSE"))

(in-package "ROS")





(defclass srvbg::bed_recogRequest
  :super ros::object
  :slots (_start_recog_bed ))

(defmethod srvbg::bed_recogRequest
  (:init
   (&key
    ((:start_recog_bed __start_recog_bed) nil)
    )
   (send-super :init)
   (setq _start_recog_bed __start_recog_bed)
   self)
  (:start_recog_bed
   (&optional (__start_recog_bed :null))
   (if (not (eq __start_recog_bed :null)) (setq _start_recog_bed __start_recog_bed)) _start_recog_bed)
  (:serialization-length
   ()
   (+
    ;; bool _start_recog_bed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start_recog_bed
       (if _start_recog_bed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start_recog_bed
     (setq _start_recog_bed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass srvbg::bed_recogResponse
  :super ros::object
  :slots (_have_people ))

(defmethod srvbg::bed_recogResponse
  (:init
   (&key
    ((:have_people __have_people) nil)
    )
   (send-super :init)
   (setq _have_people __have_people)
   self)
  (:have_people
   (&optional (__have_people :null))
   (if (not (eq __have_people :null)) (setq _have_people __have_people)) _have_people)
  (:serialization-length
   ()
   (+
    ;; bool _have_people
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _have_people
       (if _have_people (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _have_people
     (setq _have_people (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass srvbg::bed_recog
  :super ros::object
  :slots ())

(setf (get srvbg::bed_recog :md5sum-) "fabdbcfcb72f74f8be32621e26727406")
(setf (get srvbg::bed_recog :datatype-) "srvbg/bed_recog")
(setf (get srvbg::bed_recog :request) srvbg::bed_recogRequest)
(setf (get srvbg::bed_recog :response) srvbg::bed_recogResponse)

(defmethod srvbg::bed_recogRequest
  (:response () (instance srvbg::bed_recogResponse :init)))

(setf (get srvbg::bed_recogRequest :md5sum-) "fabdbcfcb72f74f8be32621e26727406")
(setf (get srvbg::bed_recogRequest :datatype-) "srvbg/bed_recogRequest")
(setf (get srvbg::bed_recogRequest :definition-)
      "bool start_recog_bed
---
bool have_people



##病床识别节点提供服务
##发送送一次，识别一次。
##不发送请求，则不进行识别。
##start_recog_bed数值无所谓
##返回have_people数值代表识别有无人。
##需要等待服务结束才能进行接下来的业务
")

(setf (get srvbg::bed_recogResponse :md5sum-) "fabdbcfcb72f74f8be32621e26727406")
(setf (get srvbg::bed_recogResponse :datatype-) "srvbg/bed_recogResponse")
(setf (get srvbg::bed_recogResponse :definition-)
      "bool start_recog_bed
---
bool have_people



##病床识别节点提供服务
##发送送一次，识别一次。
##不发送请求，则不进行识别。
##start_recog_bed数值无所谓
##返回have_people数值代表识别有无人。
##需要等待服务结束才能进行接下来的业务
")



(provide :srvbg/bed_recog "fabdbcfcb72f74f8be32621e26727406")


