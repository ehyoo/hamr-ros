; Auto-generated. Do not edit!


(cl:in-package hamr_interface-msg)


;//! \htmlinclude HamrCommand.msg.html

(cl:defclass <HamrCommand> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (val
    :reader val
    :initarg :val
    :type cl:string
    :initform ""))
)

(cl:defclass HamrCommand (<HamrCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HamrCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HamrCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hamr_interface-msg:<HamrCommand> is deprecated: use hamr_interface-msg:HamrCommand instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <HamrCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_interface-msg:type-val is deprecated.  Use hamr_interface-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <HamrCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hamr_interface-msg:val-val is deprecated.  Use hamr_interface-msg:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HamrCommand>) ostream)
  "Serializes a message object of type '<HamrCommand>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'val))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HamrCommand>) istream)
  "Deserializes a message object of type '<HamrCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'val) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HamrCommand>)))
  "Returns string type for a message object of type '<HamrCommand>"
  "hamr_interface/HamrCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HamrCommand)))
  "Returns string type for a message object of type 'HamrCommand"
  "hamr_interface/HamrCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HamrCommand>)))
  "Returns md5sum for a message object of type '<HamrCommand>"
  "0eca423a614570219cbd98b94133660e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HamrCommand)))
  "Returns md5sum for a message object of type 'HamrCommand"
  "0eca423a614570219cbd98b94133660e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HamrCommand>)))
  "Returns full string definition for message of type '<HamrCommand>"
  (cl:format cl:nil "int8 type~%string val~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HamrCommand)))
  "Returns full string definition for message of type 'HamrCommand"
  (cl:format cl:nil "int8 type~%string val~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HamrCommand>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'val))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HamrCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'HamrCommand
    (cl:cons ':type (type msg))
    (cl:cons ':val (val msg))
))
