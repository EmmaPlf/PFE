; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude DriveDirection.msg.html

(cl:defclass <DriveDirection> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DriveDirection (<DriveDirection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveDirection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveDirection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<DriveDirection> is deprecated: use etsi_msgs-msg:DriveDirection instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DriveDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DriveDirection>)))
    "Constants for message type '<DriveDirection>"
  '((:FORWARD . 0)
    (:BACKWARD . 1)
    (:UNAVAILABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DriveDirection)))
    "Constants for message type 'DriveDirection"
  '((:FORWARD . 0)
    (:BACKWARD . 1)
    (:UNAVAILABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveDirection>) ostream)
  "Serializes a message object of type '<DriveDirection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveDirection>) istream)
  "Deserializes a message object of type '<DriveDirection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveDirection>)))
  "Returns string type for a message object of type '<DriveDirection>"
  "etsi_msgs/DriveDirection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveDirection)))
  "Returns string type for a message object of type 'DriveDirection"
  "etsi_msgs/DriveDirection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveDirection>)))
  "Returns md5sum for a message object of type '<DriveDirection>"
  "e7c4468e05dd718a6e0b85eb1d7fb26f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveDirection)))
  "Returns md5sum for a message object of type 'DriveDirection"
  "e7c4468e05dd718a6e0b85eb1d7fb26f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveDirection>)))
  "Returns full string definition for message of type '<DriveDirection>"
  (cl:format cl:nil "uint8 value~%~%uint8 FORWARD = 0~%uint8 BACKWARD = 1~%uint8 UNAVAILABLE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveDirection)))
  "Returns full string definition for message of type 'DriveDirection"
  (cl:format cl:nil "uint8 value~%~%uint8 FORWARD = 0~%uint8 BACKWARD = 1~%uint8 UNAVAILABLE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveDirection>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveDirection>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveDirection
    (cl:cons ':value (value msg))
))
