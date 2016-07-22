; Auto-generated. Do not edit!


(cl:in-package hamr_test-msg)


;//! \htmlinclude HoloStatus.msg.html

(cl:defclass <HoloStatus> (roslisp-msg-protocol:ros-message)
  ((setpoint_x
    :reader setpoint_x
    :initarg :setpoint_x
    :type cl:fixnum
    :initform 0)
   (setpoint_y
    :reader setpoint_y
    :initarg :setpoint_y
    :type cl:fixnum
    :initform 0)
   (setpoint_r
    :reader setpoint_r
    :initarg :setpoint_r
    :type cl:fixnum
    :initform 0)
   (xdot
    :reader xdot
    :initarg :xdot
    :type cl:fixnum
    :initform 0)
   (ydot
    :reader ydot
    :initarg :ydot
    :type cl:fixnum
    :initform 0)
   (tdot
    :reader tdot
    :initarg :tdot
    :type cl:fixnum
    :initform 0)
   (left_vel
    :reader left_vel
    :initarg :left_vel
    :type cl:fixnum
    :initform 0)
   (right_vel
    :reader right_vel
    :initarg :right_vel
    :type cl:fixnum
    :initform 0)
   (turret_vel
    :reader turret_vel
    :initarg :turret_vel
    :type cl:fixnum
    :initform 0)
   (desired_left_vel
    :reader desired_left_vel
    :initarg :desired_left_vel
    :type cl:fixnum
    :initform 0)
   (desired_right_vel
    :reader desired_right_vel
    :initarg :desired_right_vel
    :type cl:fixnum
    :initform 0)
   (desired_turret_vel
    :reader desired_turret_vel
    :initarg :desired_turret_vel
    :type cl:fixnum
    :initform 0)
   (sensed_drive_angle
    :reader sensed_drive_angle
    :initarg :sensed_drive_angle
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HoloStatus (<HoloStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HoloStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HoloStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hamr_test-msg:<HoloStatus> is deprecated: use hamr_test-msg:HoloStatus instead.")))

(cl:ensure-generic-function 'setpoint_x-val :lambda-list '(m))
(cl:defmethod setpoint_x-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:setpoint_x-val is deprecated.  Use hamr_test-msg:setpoint_x instead.")
  (setpoint_x m))

(cl:ensure-generic-function 'setpoint_y-val :lambda-list '(m))
(cl:defmethod setpoint_y-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:setpoint_y-val is deprecated.  Use hamr_test-msg:setpoint_y instead.")
  (setpoint_y m))

(cl:ensure-generic-function 'setpoint_r-val :lambda-list '(m))
(cl:defmethod setpoint_r-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:setpoint_r-val is deprecated.  Use hamr_test-msg:setpoint_r instead.")
  (setpoint_r m))

(cl:ensure-generic-function 'xdot-val :lambda-list '(m))
(cl:defmethod xdot-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:xdot-val is deprecated.  Use hamr_test-msg:xdot instead.")
  (xdot m))

(cl:ensure-generic-function 'ydot-val :lambda-list '(m))
(cl:defmethod ydot-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:ydot-val is deprecated.  Use hamr_test-msg:ydot instead.")
  (ydot m))

(cl:ensure-generic-function 'tdot-val :lambda-list '(m))
(cl:defmethod tdot-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:tdot-val is deprecated.  Use hamr_test-msg:tdot instead.")
  (tdot m))

(cl:ensure-generic-function 'left_vel-val :lambda-list '(m))
(cl:defmethod left_vel-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:left_vel-val is deprecated.  Use hamr_test-msg:left_vel instead.")
  (left_vel m))

(cl:ensure-generic-function 'right_vel-val :lambda-list '(m))
(cl:defmethod right_vel-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:right_vel-val is deprecated.  Use hamr_test-msg:right_vel instead.")
  (right_vel m))

(cl:ensure-generic-function 'turret_vel-val :lambda-list '(m))
(cl:defmethod turret_vel-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:turret_vel-val is deprecated.  Use hamr_test-msg:turret_vel instead.")
  (turret_vel m))

(cl:ensure-generic-function 'desired_left_vel-val :lambda-list '(m))
(cl:defmethod desired_left_vel-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:desired_left_vel-val is deprecated.  Use hamr_test-msg:desired_left_vel instead.")
  (desired_left_vel m))

(cl:ensure-generic-function 'desired_right_vel-val :lambda-list '(m))
(cl:defmethod desired_right_vel-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:desired_right_vel-val is deprecated.  Use hamr_test-msg:desired_right_vel instead.")
  (desired_right_vel m))

(cl:ensure-generic-function 'desired_turret_vel-val :lambda-list '(m))
(cl:defmethod desired_turret_vel-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:desired_turret_vel-val is deprecated.  Use hamr_test-msg:desired_turret_vel instead.")
  (desired_turret_vel m))

(cl:ensure-generic-function 'sensed_drive_angle-val :lambda-list '(m))
(cl:defmethod sensed_drive_angle-val ((m <HoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:sensed_drive_angle-val is deprecated.  Use hamr_test-msg:sensed_drive_angle instead.")
  (sensed_drive_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HoloStatus>) ostream)
  "Serializes a message object of type '<HoloStatus>"
  (cl:let* ((signed (cl:slot-value msg 'setpoint_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'setpoint_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'setpoint_r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'xdot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ydot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tdot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left_vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'turret_vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'desired_left_vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'desired_right_vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'desired_turret_vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sensed_drive_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HoloStatus>) istream)
  "Deserializes a message object of type '<HoloStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setpoint_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setpoint_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setpoint_r) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xdot) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ydot) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tdot) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_vel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_vel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turret_vel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desired_left_vel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desired_right_vel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desired_turret_vel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensed_drive_angle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HoloStatus>)))
  "Returns string type for a message object of type '<HoloStatus>"
  "hamr_test/HoloStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoloStatus)))
  "Returns string type for a message object of type 'HoloStatus"
  "hamr_test/HoloStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HoloStatus>)))
  "Returns md5sum for a message object of type '<HoloStatus>"
  "c48cef1fe922ba8d40359f53d4f1b99d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HoloStatus)))
  "Returns md5sum for a message object of type 'HoloStatus"
  "c48cef1fe922ba8d40359f53d4f1b99d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HoloStatus>)))
  "Returns full string definition for message of type '<HoloStatus>"
  (cl:format cl:nil "int16 setpoint_x~%int16 setpoint_y~%int16 setpoint_r~%int16 xdot~%int16 ydot~%int16 tdot~%int16 left_vel~%int16 right_vel~%int16 turret_vel~%int16 desired_left_vel~%int16 desired_right_vel~%int16 desired_turret_vel~%int16 sensed_drive_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HoloStatus)))
  "Returns full string definition for message of type 'HoloStatus"
  (cl:format cl:nil "int16 setpoint_x~%int16 setpoint_y~%int16 setpoint_r~%int16 xdot~%int16 ydot~%int16 tdot~%int16 left_vel~%int16 right_vel~%int16 turret_vel~%int16 desired_left_vel~%int16 desired_right_vel~%int16 desired_turret_vel~%int16 sensed_drive_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HoloStatus>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HoloStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HoloStatus
    (cl:cons ':setpoint_x (setpoint_x msg))
    (cl:cons ':setpoint_y (setpoint_y msg))
    (cl:cons ':setpoint_r (setpoint_r msg))
    (cl:cons ':xdot (xdot msg))
    (cl:cons ':ydot (ydot msg))
    (cl:cons ':tdot (tdot msg))
    (cl:cons ':left_vel (left_vel msg))
    (cl:cons ':right_vel (right_vel msg))
    (cl:cons ':turret_vel (turret_vel msg))
    (cl:cons ':desired_left_vel (desired_left_vel msg))
    (cl:cons ':desired_right_vel (desired_right_vel msg))
    (cl:cons ':desired_turret_vel (desired_turret_vel msg))
    (cl:cons ':sensed_drive_angle (sensed_drive_angle msg))
))
