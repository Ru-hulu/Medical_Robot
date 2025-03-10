
(cl:in-package :asdf)

(defsystem "car_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RealCMD" :depends-on ("_package_RealCMD"))
    (:file "_package_RealCMD" :depends-on ("_package"))
  ))