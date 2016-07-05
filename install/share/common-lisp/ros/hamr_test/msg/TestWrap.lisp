; Auto-generated. Do not edit!


(cl:in-package hamr_test-msg)


;//! \htmlinclude TestWrap.msg.html

(cl:defclass <TestWrap> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (first_pair
    :reader first_pair
    :initarg :first_pair
    :type hamr_test-msg:TestMod
    :initform (cl:make-instance 'hamr_test-msg:TestMod))
   (second_pair
    :reader second_pair
    :initarg :second_pair
    :type hamr_test-msg:TestMod
    :initform (cl:make-instance 'hamr_test-msg:TestMod)))
)

(cl:defclass TestWrap (<TestWrap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestWrap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestWrap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hamr_test-msg:<TestWrap> is deprecated: use hamr_test-msg:TestWrap instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TestWrap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:name-val is deprecated.  Use hamr_test-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'first_pair-val :lambda-list '(m))
(cl:defmethod first_pair-val ((m <TestWrap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:first_pair-val is deprecated.  Use hamr_test-msg:first_pair instead.")
  (first_pair m))

(cl:ensure-generic-function 'second_pair-val :lambda-list '(m))
(cl:defmethod second_pair-val ((m <TestWrap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_test-msg:second_pair-val is deprecated.  Use hamr_test-msg:second_pair instead.")
  (second_pair m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestWrap>) ostream)
  "Serializes a message object of type '<TestWrap>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'first_pair) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'second_pair) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestWrap>) istream)
  "Deserializes a message object of type '<TestWrap>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'first_pair) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'second_pair) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestWrap>)))
  "Returns string type for a message object of type '<TestWrap>"
  "hamr_test/TestWrap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestWrap)))
  "Returns string type for a message object of type 'TestWrap"
  "hamr_test/TestWrap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestWrap>)))
  "Returns md5sum for a message object of type '<TestWrap>"
  "93a3439ce135a9d10c7ca5e21b2e55ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestWrap)))
  "Returns md5sum for a message object of type 'TestWrap"
  "93a3439ce135a9d10c7ca5e21b2e55ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestWrap>)))
  "Returns full string definition for message of type '<TestWrap>"
  (cl:format cl:nil "string name~%TestMod first_pair~%TestMod second_pair~%================================================================================~%MSG: hamr_test/TestMod~%int8 num_one~%int8 num_two~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestWrap)))
  "Returns full string definition for message of type 'TestWrap"
  (cl:format cl:nil "string name~%TestMod first_pair~%TestMod second_pair~%================================================================================~%MSG: hamr_test/TestMod~%int8 num_one~%int8 num_two~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestWrap>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'first_pair))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'second_pair))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestWrap>))
  "Converts a ROS message object to a list"
  (cl:list 'TestWrap
    (cl:cons ':name (name msg))
    (cl:cons ':first_pair (first_pair msg))
    (cl:cons ':second_pair (second_pair msg))
))
