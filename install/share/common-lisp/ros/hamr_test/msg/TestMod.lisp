; Auto-generated. Do not edit!


(cl:in-package hamr_test-msg)


;//! \htmlinclude TestMod.msg.html

(cl:defclass <TestMod> (roslisp-msg-protocol:ros-message)
  ((num_one
    :reader num_one
    :initarg :num_one
    :type cl:fixnum
    :initform 0)
   (num_two
    :reader num_two
    :initarg :num_two
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TestMod (<TestMod>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestMod>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestMod)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hamr_test-msg:<TestMod> is deprecated: use hamr_test-msg:TestMod instead.")))

(cl:ensure-generic-function 'num_one-val :lambda-list '(m))
(cl:defmethod num_one-val ((m <TestMod>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:num_one-val is deprecated.  Use hamr_test-msg:num_one instead.")
  (num_one m))

(cl:ensure-generic-function 'num_two-val :lambda-list '(m))
(cl:defmethod num_two-val ((m <TestMod>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:num_two-val is deprecated.  Use hamr_test-msg:num_two instead.")
  (num_two m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestMod>) ostream)
  "Serializes a message object of type '<TestMod>"
  (cl:let* ((signed (cl:slot-value msg 'num_one)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_two)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestMod>) istream)
  "Deserializes a message object of type '<TestMod>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_one) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_two) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestMod>)))
  "Returns string type for a message object of type '<TestMod>"
  "hamr_test/TestMod")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestMod)))
  "Returns string type for a message object of type 'TestMod"
  "hamr_test/TestMod")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestMod>)))
  "Returns md5sum for a message object of type '<TestMod>"
  "0958ec2ab25bba936759a90958b68a4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestMod)))
  "Returns md5sum for a message object of type 'TestMod"
  "0958ec2ab25bba936759a90958b68a4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestMod>)))
  "Returns full string definition for message of type '<TestMod>"
  (cl:format cl:nil "int8 num_one~%int8 num_two~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestMod)))
  "Returns full string definition for message of type 'TestMod"
  (cl:format cl:nil "int8 num_one~%int8 num_two~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestMod>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestMod>))
  "Converts a ROS message object to a list"
  (cl:list 'TestMod
    (cl:cons ':num_one (num_one msg))
    (cl:cons ':num_two (num_two msg))
))
