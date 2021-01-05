; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude InformationQuality.msg.html

(cl:defclass <InformationQuality> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass InformationQuality (<InformationQuality>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InformationQuality>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InformationQuality)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<InformationQuality> is deprecated: use etsi_msgs-msg:InformationQuality instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <InformationQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<InformationQuality>)))
    "Constants for message type '<InformationQuality>"
  '((:UNAVAILABLE . 0)
    (:LOWEST . 1)
    (:HIGHEST . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'InformationQuality)))
    "Constants for message type 'InformationQuality"
  '((:UNAVAILABLE . 0)
    (:LOWEST . 1)
    (:HIGHEST . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InformationQuality>) ostream)
  "Serializes a message object of type '<InformationQuality>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InformationQuality>) istream)
  "Deserializes a message object of type '<InformationQuality>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InformationQuality>)))
  "Returns string type for a message object of type '<InformationQuality>"
  "etsi_msgs/InformationQuality")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InformationQuality)))
  "Returns string type for a message object of type 'InformationQuality"
  "etsi_msgs/InformationQuality")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InformationQuality>)))
  "Returns md5sum for a message object of type '<InformationQuality>"
  "b06931e013e257f658419d4d45f44c4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InformationQuality)))
  "Returns md5sum for a message object of type 'InformationQuality"
  "b06931e013e257f658419d4d45f44c4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InformationQuality>)))
  "Returns full string definition for message of type '<InformationQuality>"
  (cl:format cl:nil "int8 value~%~%int8 UNAVAILABLE = 0~%int8 LOWEST = 1~%int8 HIGHEST = 7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InformationQuality)))
  "Returns full string definition for message of type 'InformationQuality"
  (cl:format cl:nil "int8 value~%~%int8 UNAVAILABLE = 0~%int8 LOWEST = 1~%int8 HIGHEST = 7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InformationQuality>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InformationQuality>))
  "Converts a ROS message object to a list"
  (cl:list 'InformationQuality
    (cl:cons ':value (value msg))
))
