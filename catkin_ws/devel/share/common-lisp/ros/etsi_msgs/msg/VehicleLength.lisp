; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude VehicleLength.msg.html

(cl:defclass <VehicleLength> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (confidence_indication
    :reader confidence_indication
    :initarg :confidence_indication
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleLength (<VehicleLength>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLength>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLength)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<VehicleLength> is deprecated: use etsi_msgs-msg:VehicleLength instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleLength>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'confidence_indication-val :lambda-list '(m))
(cl:defmethod confidence_indication-val ((m <VehicleLength>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:confidence_indication-val is deprecated.  Use etsi_msgs-msg:confidence_indication instead.")
  (confidence_indication m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleLength>)))
    "Constants for message type '<VehicleLength>"
  '((:VALUE_TEN_CENTIMETERS . 1)
    (:VALUE_OUT_OF_RANGE . 1022)
    (:VALUE_UNAVAILABLE . 1023)
    (:CONFIDENCE_INDICATION_NO_TRAILER . 0)
    (:CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH . 1)
    (:CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH . 2)
    (:CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE . 3)
    (:CONFIDENCE_INDICATION_UNAVAILABLE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleLength)))
    "Constants for message type 'VehicleLength"
  '((:VALUE_TEN_CENTIMETERS . 1)
    (:VALUE_OUT_OF_RANGE . 1022)
    (:VALUE_UNAVAILABLE . 1023)
    (:CONFIDENCE_INDICATION_NO_TRAILER . 0)
    (:CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH . 1)
    (:CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH . 2)
    (:CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE . 3)
    (:CONFIDENCE_INDICATION_UNAVAILABLE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLength>) ostream)
  "Serializes a message object of type '<VehicleLength>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence_indication)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLength>) istream)
  "Deserializes a message object of type '<VehicleLength>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence_indication)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLength>)))
  "Returns string type for a message object of type '<VehicleLength>"
  "etsi_msgs/VehicleLength")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLength)))
  "Returns string type for a message object of type 'VehicleLength"
  "etsi_msgs/VehicleLength")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLength>)))
  "Returns md5sum for a message object of type '<VehicleLength>"
  "bf077d96b456d30e08df07f0d831fe92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLength)))
  "Returns md5sum for a message object of type 'VehicleLength"
  "bf077d96b456d30e08df07f0d831fe92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLength>)))
  "Returns full string definition for message of type '<VehicleLength>"
  (cl:format cl:nil "uint16 value # 0.1 meter~%uint8 confidence_indication~%~%uint16 VALUE_TEN_CENTIMETERS = 1~%uint16 VALUE_OUT_OF_RANGE = 1022~%uint16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2~%uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3~%uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLength)))
  "Returns full string definition for message of type 'VehicleLength"
  (cl:format cl:nil "uint16 value # 0.1 meter~%uint8 confidence_indication~%~%uint16 VALUE_TEN_CENTIMETERS = 1~%uint16 VALUE_OUT_OF_RANGE = 1022~%uint16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2~%uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3~%uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLength>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLength>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLength
    (cl:cons ':value (value msg))
    (cl:cons ':confidence_indication (confidence_indication msg))
))
