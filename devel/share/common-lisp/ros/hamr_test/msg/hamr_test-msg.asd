
(cl:in-package :asdf)

(defsystem "hamr_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HamrStatus" :depends-on ("_package_HamrStatus"))
    (:file "_package_HamrStatus" :depends-on ("_package"))
    (:file "MotorStatus" :depends-on ("_package_MotorStatus"))
    (:file "_package_MotorStatus" :depends-on ("_package"))
    (:file "HamrCommand" :depends-on ("_package_HamrCommand"))
    (:file "_package_HamrCommand" :depends-on ("_package"))
  ))