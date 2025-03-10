
(cl:in-package :asdf)

(defsystem "xj_robot_pnc-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "exe_path" :depends-on ("_package_exe_path"))
    (:file "_package_exe_path" :depends-on ("_package"))
    (:file "nav_goal" :depends-on ("_package_nav_goal"))
    (:file "_package_nav_goal" :depends-on ("_package"))
    (:file "record_start" :depends-on ("_package_record_start"))
    (:file "_package_record_start" :depends-on ("_package"))
    (:file "record_stop" :depends-on ("_package_record_stop"))
    (:file "_package_record_stop" :depends-on ("_package"))
    (:file "xj_robot_task" :depends-on ("_package_xj_robot_task"))
    (:file "_package_xj_robot_task" :depends-on ("_package"))
  ))