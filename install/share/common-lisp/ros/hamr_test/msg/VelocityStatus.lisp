; Auto-generated. Do not edit!


(cl:in-package hamr_test-msg)


;//! \htmlinclude VelocityStatus.msg.html

(cl:defclass <VelocityStatus> (roslisp-msg-protocol:ros-message)
  ((sensed_t_motor_enc_value
    :reader sensed_t_motor_enc_value
    :initarg :sensed_t_motor_enc_value
    :type cl:fixnum
    :initform 0)
   (sensed_t_motor_velocity
    :reader sensed_t_motor_velocity
    :initarg :sensed_t_motor_velocity
    :type cl:fixnum
    :initform 0)
   (sensed_turret_position
    :reader sensed_turret_position
    :initarg :sensed_turret_position
    :type cl:fixnum
    :initform 0)
   (sensed_turret_velocity
    :reader sensed_turret_velocity
    :initarg :sensed_turret_velocity
    :type cl:fixnum
    :initform 0)
   (desired_turret_velocity
    :reader desired_turret_velocity
    :initarg :desired_turret_velocity
    :type cl:fixnum
    :initform 0)
   (pid_error
    :reader pid_error
    :initarg :pid_error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VelocityStatus (<VelocityStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hamr_test-msg:<VelocityStatus> is deprecated: use hamr_test-msg:VelocityStatus instead.")))

(cl:ensure-generic-function 'sensed_t_motor_enc_value-val :lambda-list '(m))
(cl:defmethod sensed_t_motor_enc_value-val ((m <VelocityStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:sensed_t_motor_enc_value-val is deprecated.  Use hamr_test-msg:sensed_t_motor_enc_value instead.")
  (sensed_t_motor_enc_value m))

(cl:ensure-generic-function 'sensed_t_motor_velocity-val :lambda-list '(m))
(cl:defmethod sensed_t_motor_velocity-val ((m <VelocityStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:sensed_t_motor_velocity-val is deprecated.  Use hamr_test-msg:sensed_t_motor_velocity instead.")
  (sensed_t_motor_velocity m))

(cl:ensure-generic-function 'sensed_turret_position-val :lambda-list '(m))
(cl:defmethod sensed_turret_position-val ((m <VelocityStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:sensed_turret_position-val is deprecated.  Use hamr_test-msg:sensed_turret_position instead.")
  (sensed_turret_position m))

(cl:ensure-generic-function 'sensed_turret_velocity-val :lambda-list '(m))
(cl:defmethod sensed_turret_velocity-val ((m <VelocityStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:sensed_turret_velocity-val is deprecated.  Use hamr_test-msg:sensed_turret_velocity instead.")
  (sensed_turret_velocity m))

(cl:ensure-generic-function 'desired_turret_velocity-val :lambda-list '(m))
(cl:defmethod desired_turret_velocity-val ((m <VelocityStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:desired_turret_velocity-val is deprecated.  Use hamr_test-msg:desired_turret_velocity instead.")
  (desired_turret_velocity m))

(cl:ensure-generic-function 'pid_error-val :lambda-list '(m))
(cl:defmethod pid_error-val ((m <VelocityStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:pid_error-val is deprecated.  Use hamr_test-msg:pid_error instead.")
  (pid_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityStatus>) ostream)
  "Serializes a message object of type '<VelocityStatus>"
  (cl:let* ((signed (cl:slot-value msg 'sensed_t_motor_enc_value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sensed_t_motor_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sensed_turret_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sensed_turret_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'desired_turret_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pid_error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityStatus>) istream)
  "Deserializes a message object of type '<VelocityStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensed_t_motor_enc_value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensed_t_motor_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensed_turret_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensed_turret_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desired_turret_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pid_error) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityStatus>)))
  "Returns string type for a message object of type '<VelocityStatus>"
  "hamr_test/VelocityStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityStatus)))
  "Returns string type for a message object of type 'VelocityStatus"
  "hamr_test/VelocityStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityStatus>)))
  "Returns md5sum for a message object of type '<VelocityStatus>"
  "7b5b1bb227b7302d7a37dfb6950287a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityStatus)))
  "Returns md5sum for a message object of type 'VelocityStatus"
  "7b5b1bb227b7302d7a37dfb6950287a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityStatus>)))
  "Returns full string definition for message of type '<VelocityStatus>"
  (cl:format cl:nil "int16 sensed_t_motor_enc_value~%int16 sensed_t_motor_velocity~%int16 sensed_turret_position~%int16 sensed_turret_velocity		~%int16 desired_turret_velocity~%int16 pid_error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityStatus)))
  "Returns full string definition for message of type 'VelocityStatus"
  (cl:format cl:nil "int16 sensed_t_motor_enc_value~%int16 sensed_t_motor_velocity~%int16 sensed_turret_position~%int16 sensed_turret_velocity		~%int16 desired_turret_velocity~%int16 pid_error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityStatus>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityStatus
    (cl:cons ':sensed_t_motor_enc_value (sensed_t_motor_enc_value msg))
    (cl:cons ':sensed_t_motor_velocity (sensed_t_motor_velocity msg))
    (cl:cons ':sensed_turret_position (sensed_turret_position msg))
    (cl:cons ':sensed_turret_velocity (sensed_turret_velocity msg))
    (cl:cons ':desired_turret_velocity (desired_turret_velocity msg))
    (cl:cons ':pid_error (pid_error msg))
))
