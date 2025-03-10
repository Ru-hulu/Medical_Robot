;; Auto-generated. Do not edit!


(when (boundp 'srvbg::people_id_lan)
  (if (not (find-package "SRVBG"))
    (make-package "SRVBG"))
  (shadow 'people_id_lan (find-package "SRVBG")))
(unless (find-package "SRVBG::PEOPLE_ID_LAN")
  (make-package "SRVBG::PEOPLE_ID_LAN"))
(unless (find-package "SRVBG::PEOPLE_ID_LANREQUEST")
  (make-package "SRVBG::PEOPLE_ID_LANREQUEST"))
(unless (find-package "SRVBG::PEOPLE_ID_LANRESPONSE")
  (make-package "SRVBG::PEOPLE_ID_LANRESPONSE"))

(in-package "ROS")





(defclass srvbg::people_id_lanRequest
  :super ros::object
  :slots (_id_mode ))

(defmethod srvbg::people_id_lanRequest
  (:init
   (&key
    ((:id_mode __id_mode) "")
    )
   (send-super :init)
   (setq _id_mode (string __id_mode))
   self)
  (:id_mode
   (&optional __id_mode)
   (if __id_mode (setq _id_mode __id_mode)) _id_mode)
  (:serialization-length
   ()
   (+
    ;; string _id_mode
    4 (length _id_mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id_mode
       (write-long (length _id_mode) s) (princ _id_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass srvbg::people_id_lanResponse
  :super ros::object
  :slots (_lang_end ))

(defmethod srvbg::people_id_lanResponse
  (:init
   (&key
    ((:lang_end __lang_end) nil)
    )
   (send-super :init)
   (setq _lang_end __lang_end)
   self)
  (:lang_end
   (&optional (__lang_end :null))
   (if (not (eq __lang_end :null)) (setq _lang_end __lang_end)) _lang_end)
  (:serialization-length
   ()
   (+
    ;; bool _lang_end
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _lang_end
       (if _lang_end (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _lang_end
     (setq _lang_end (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass srvbg::people_id_lan
  :super ros::object
  :slots ())

(setf (get srvbg::people_id_lan :md5sum-) "4c24b88bb7a19a8415013642d1cfd801")
(setf (get srvbg::people_id_lan :datatype-) "srvbg/people_id_lan")
(setf (get srvbg::people_id_lan :request) srvbg::people_id_lanRequest)
(setf (get srvbg::people_id_lan :response) srvbg::people_id_lanResponse)

(defmethod srvbg::people_id_lanRequest
  (:response () (instance srvbg::people_id_lanResponse :init)))

(setf (get srvbg::people_id_lanRequest :md5sum-) "4c24b88bb7a19a8415013642d1cfd801")
(setf (get srvbg::people_id_lanRequest :datatype-) "srvbg/people_id_lanRequest")
(setf (get srvbg::people_id_lanRequest :definition-)
      "string id_mode
---
bool lang_end

## 大语言模型节点提供服务
## id_mode格式为 病人id_当前模式
## 例如3_0(病人3，当前为巡诊模式)3_1(病人3，当前为接待模式)
## lang_end 代表大语言模型对话结束
## 结束对话后才会返回。
")

(setf (get srvbg::people_id_lanResponse :md5sum-) "4c24b88bb7a19a8415013642d1cfd801")
(setf (get srvbg::people_id_lanResponse :datatype-) "srvbg/people_id_lanResponse")
(setf (get srvbg::people_id_lanResponse :definition-)
      "string id_mode
---
bool lang_end

## 大语言模型节点提供服务
## id_mode格式为 病人id_当前模式
## 例如3_0(病人3，当前为巡诊模式)3_1(病人3，当前为接待模式)
## lang_end 代表大语言模型对话结束
## 结束对话后才会返回。
")



(provide :srvbg/people_id_lan "4c24b88bb7a19a8415013642d1cfd801")


