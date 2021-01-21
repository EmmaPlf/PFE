; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude FreinageUrgence.msg.html

(cl:defclass <FreinageUrgence> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FreinageUrgence (<FreinageUrgence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FreinageUrgence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FreinageUrgence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<FreinageUrgence> is deprecated: use ece_msgs-msg:FreinageUrgence instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <FreinageUrgence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:position-val is deprecated.  Use ece_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FreinageUrgence>) ostream)
  "Serializes a message object of type '<FreinageUrgence>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FreinageUrgence>) istream)
  "Deserializes a message object of type '<FreinageUrgence>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FreinageUrgence>)))
  "Returns string type for a message object of type '<FreinageUrgence>"
  "ece_msgs/FreinageUrgence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FreinageUrgence)))
  "Returns string type for a message object of type 'FreinageUrgence"
  "ece_msgs/FreinageUrgence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FreinageUrgence>)))
  "Returns md5sum for a message object of type '<FreinageUrgence>"
  "6dd1aa2cda989887d566114cab493168")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FreinageUrgence)))
  "Returns md5sum for a message object of type 'FreinageUrgence"
  "6dd1aa2cda989887d566114cab493168")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FreinageUrgence>)))
  "Returns full string definition for message of type '<FreinageUrgence>"
  (cl:format cl:nil "# Position P : 2 bits~%uint8 position~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FreinageUrgence)))
  "Returns full string definition for message of type 'FreinageUrgence"
  (cl:format cl:nil "# Position P : 2 bits~%uint8 position~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FreinageUrgence>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FreinageUrgence>))
  "Converts a ROS message object to a list"
  (cl:list 'FreinageUrgence
    (cl:cons ':position (position msg))
))
