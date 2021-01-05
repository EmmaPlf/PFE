; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude Heading.msg.html

(cl:defclass <Heading> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Heading (<Heading>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Heading>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Heading)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<Heading> is deprecated: use etsi_msgs-msg:Heading instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Heading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Heading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:confidence-val is deprecated.  Use etsi_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Heading>)))
    "Constants for message type '<Heading>"
  '((:VALUE_NORTH . 0)
    (:VALUE_EAST . 900)
    (:VALUE_SOUTH . 1800)
    (:VALUE_WEST . 2700)
    (:VALUE_UNAVAILABLE . 3601)
    (:CONFIDENCE_ZERO_POINT_ONE_DEGREE . 1)
    (:CONFIDENCE_ONE_DEGREE . 10)
    (:CONFIDENCE_OUT_OF_RANGE . 126)
    (:CONFIDENCE_UNAVAILABLE . 127))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Heading)))
    "Constants for message type 'Heading"
  '((:VALUE_NORTH . 0)
    (:VALUE_EAST . 900)
    (:VALUE_SOUTH . 1800)
    (:VALUE_WEST . 2700)
    (:VALUE_UNAVAILABLE . 3601)
    (:CONFIDENCE_ZERO_POINT_ONE_DEGREE . 1)
    (:CONFIDENCE_ONE_DEGREE . 10)
    (:CONFIDENCE_OUT_OF_RANGE . 126)
    (:CONFIDENCE_UNAVAILABLE . 127))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Heading>) ostream)
  "Serializes a message object of type '<Heading>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Heading>) istream)
  "Deserializes a message object of type '<Heading>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Heading>)))
  "Returns string type for a message object of type '<Heading>"
  "etsi_msgs/Heading")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Heading)))
  "Returns string type for a message object of type 'Heading"
  "etsi_msgs/Heading")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Heading>)))
  "Returns md5sum for a message object of type '<Heading>"
  "c491303b4798d5acaf220800ce478c5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Heading)))
  "Returns md5sum for a message object of type 'Heading"
  "c491303b4798d5acaf220800ce478c5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Heading>)))
  "Returns full string definition for message of type '<Heading>"
  (cl:format cl:nil "uint16 value # 0.1 degree~%uint8 confidence~%~%uint16 VALUE_NORTH = 0~%uint16 VALUE_EAST = 900~%uint16 VALUE_SOUTH = 1800~%uint16 VALUE_WEST = 2700~%uint16 VALUE_UNAVAILABLE = 3601~%~%uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1~%uint8 CONFIDENCE_ONE_DEGREE = 10~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Heading)))
  "Returns full string definition for message of type 'Heading"
  (cl:format cl:nil "uint16 value # 0.1 degree~%uint8 confidence~%~%uint16 VALUE_NORTH = 0~%uint16 VALUE_EAST = 900~%uint16 VALUE_SOUTH = 1800~%uint16 VALUE_WEST = 2700~%uint16 VALUE_UNAVAILABLE = 3601~%~%uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1~%uint8 CONFIDENCE_ONE_DEGREE = 10~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Heading>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Heading>))
  "Converts a ROS message object to a list"
  (cl:list 'Heading
    (cl:cons ':value (value msg))
    (cl:cons ':confidence (confidence msg))
))
