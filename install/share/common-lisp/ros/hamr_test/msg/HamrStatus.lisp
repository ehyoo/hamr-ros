; Auto-generated. Do not edit!


(cl:in-package hamr_test-msg)


;//! \htmlinclude HamrStatus.msg.html

(cl:defclass <HamrStatus> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (left_motor
    :reader left_motor
    :initarg :left_motor
    :type hamr_test-msg:MotorStatus
    :initform (cl:make-instance 'hamr_test-msg:MotorStatus))
   (right_motor
    :reader right_motor
    :initarg :right_motor
    :type hamr_test-msg:MotorStatus
    :initform (cl:make-instance 'hamr_test-msg:MotorStatus))
   (turret_motor
    :reader turret_motor
    :initarg :turret_motor
    :type hamr_test-msg:MotorStatus
    :initform (cl:make-instance 'hamr_test-msg:MotorStatus)))
)

(cl:defclass HamrStatus (<HamrStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HamrStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HamrStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hamr_test-msg:<HamrStatus> is deprecated: use hamr_test-msg:HamrStatus instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <HamrStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:timestamp-val is deprecated.  Use hamr_test-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'left_motor-val :lambda-list '(m))
(cl:defmethod left_motor-val ((m <HamrStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:left_motor-val is deprecated.  Use hamr_test-msg:left_motor instead.")
  (left_motor m))

(cl:ensure-generic-function 'right_motor-val :lambda-list '(m))
(cl:defmethod right_motor-val ((m <HamrStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:right_motor-val is deprecated.  Use hamr_test-msg:right_motor instead.")
  (right_motor m))

(cl:ensure-generic-function 'turret_motor-val :lambda-list '(m))
(cl:defmethod turret_motor-val ((m <HamrStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:turret_motor-val is deprecated.  Use hamr_test-msg:turret_motor instead.")
  (turret_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HamrStatus>) ostream)
  "Serializes a message object of type '<HamrStatus>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_motor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_motor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turret_motor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HamrStatus>) istream)
  "Deserializes a message object of type '<HamrStatus>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_motor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_motor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turret_motor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HamrStatus>)))
  "Returns string type for a message object of type '<HamrStatus>"
  "hamr_test/HamrStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HamrStatus)))
  "Returns string type for a message object of type 'HamrStatus"
  "hamr_test/HamrStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HamrStatus>)))
  "Returns md5sum for a message object of type '<HamrStatus>"
  "0a16597238e260f74664b5e3f3a62748")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HamrStatus)))
  "Returns md5sum for a message object of type 'HamrStatus"
  "0a16597238e260f74664b5e3f3a62748")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HamrStatus>)))
  "Returns full string definition for message of type '<HamrStatus>"
  (cl:format cl:nil "time timestamp~%hamr_test/MotorStatus left_motor~%hamr_test/MotorStatus right_motor~%hamr_test/MotorStatus turret_motor~%================================================================================~%MSG: hamr_test/MotorStatus~%uint16 position~%int16 velocity~%int16 desired_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HamrStatus)))
  "Returns full string definition for message of type 'HamrStatus"
  (cl:format cl:nil "time timestamp~%hamr_test/MotorStatus left_motor~%hamr_test/MotorStatus right_motor~%hamr_test/MotorStatus turret_motor~%================================================================================~%MSG: hamr_test/MotorStatus~%uint16 position~%int16 velocity~%int16 desired_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HamrStatus>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_motor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_motor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turret_motor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HamrStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HamrStatus
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':left_motor (left_motor msg))
    (cl:cons ':right_motor (right_motor msg))
    (cl:cons ':turret_motor (turret_motor msg))
))
