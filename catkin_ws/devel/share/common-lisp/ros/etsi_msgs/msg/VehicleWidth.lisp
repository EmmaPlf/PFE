; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude VehicleWidth.msg.html

(cl:defclass <VehicleWidth> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleWidth (<VehicleWidth>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleWidth>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleWidth)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<VehicleWidth> is deprecated: use etsi_msgs-msg:VehicleWidth instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleWidth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleWidth>)))
    "Constants for message type '<VehicleWidth>"
  '((:TEN_CENTIMETERS . 1)
    (:OUT_OF_RANGE . 61)
    (:UNAVAILABLE . 62))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleWidth)))
    "Constants for message type 'VehicleWidth"
  '((:TEN_CENTIMETERS . 1)
    (:OUT_OF_RANGE . 61)
    (:UNAVAILABLE . 62))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleWidth>) ostream)
  "Serializes a message object of type '<VehicleWidth>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleWidth>) istream)
  "Deserializes a message object of type '<VehicleWidth>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleWidth>)))
  "Returns string type for a message object of type '<VehicleWidth>"
  "etsi_msgs/VehicleWidth")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleWidth)))
  "Returns string type for a message object of type 'VehicleWidth"
  "etsi_msgs/VehicleWidth")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleWidth>)))
  "Returns md5sum for a message object of type '<VehicleWidth>"
  "e63c01375861937c95cc07a981f79e09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleWidth)))
  "Returns md5sum for a message object of type 'VehicleWidth"
  "e63c01375861937c95cc07a981f79e09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleWidth>)))
  "Returns full string definition for message of type '<VehicleWidth>"
  (cl:format cl:nil "uint8 value # 0.1 meter~%~%uint8 TEN_CENTIMETERS = 1~%uint8 OUT_OF_RANGE = 61~%uint8 UNAVAILABLE = 62~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleWidth)))
  "Returns full string definition for message of type 'VehicleWidth"
  (cl:format cl:nil "uint8 value # 0.1 meter~%~%uint8 TEN_CENTIMETERS = 1~%uint8 OUT_OF_RANGE = 61~%uint8 UNAVAILABLE = 62~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleWidth>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleWidth>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleWidth
    (cl:cons ':value (value msg))
))
