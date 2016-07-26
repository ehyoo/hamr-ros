
(cl:in-package :asdf)

(defsystem "hamr_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "VelocityStatus" :depends-on ("_package_VelocityStatus"))
    (:file "_package_VelocityStatus" :depends-on ("_package"))
    (:file "HoloStatus" :depends-on ("_package_HoloStatus"))
    (:file "_package_HoloStatus" :depends-on ("_package"))
    (:file "HamrStatus" :depends-on ("_package_HamrStatus"))
    (:file "_package_HamrStatus" :depends-on ("_package"))
    (:file "MotorStatus" :depends-on ("_package_MotorStatus"))
    (:file "_package_MotorStatus" :depends-on ("_package"))
    (:file "HamrCommand" :depends-on ("_package_HamrCommand"))
    (:file "_package_HamrCommand" :depends-on ("_package"))
  ))