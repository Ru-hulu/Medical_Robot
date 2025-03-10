
(cl:in-package :asdf)

(defsystem "xj_robot_simu-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "carpose" :depends-on ("_package_carpose"))
    (:file "_package_carpose" :depends-on ("_package"))
    (:file "fusion_analysis" :depends-on ("_package_fusion_analysis"))
    (:file "_package_fusion_analysis" :depends-on ("_package"))
  ))