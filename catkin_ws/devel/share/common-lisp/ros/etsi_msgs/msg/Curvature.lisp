; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude Curvature.msg.html

(cl:defclass <Curvature> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Curvature (<Curvature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Curvature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Curvature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<Curvature> is deprecated: use etsi_msgs-msg:Curvature instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Curvature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Curvature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:confidence-val is deprecated.  Use etsi_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Curvature>)))
    "Constants for message type '<Curvature>"
  '((:VALUE_RIGHTMOST . -1023)
    (:VALUE_LEFTMOST . 1022)
    (:VALUE_MIN . -1023)
    (:VALUE_MAX . 1022)
    (:VALUE_STRAIGHT . 0)
    (:VALUE_UNAVAILABLE . 1023)
    (:CONFIDENCE_OUT_OF_RANGE . 6)
    (:CONFIDENCE_UNAVAILABLE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Curvature)))
    "Constants for message type 'Curvature"
  '((:VALUE_RIGHTMOST . -1023)
    (:VALUE_LEFTMOST . 1022)
    (:VALUE_MIN . -1023)
    (:VALUE_MAX . 1022)
    (:VALUE_STRAIGHT . 0)
    (:VALUE_UNAVAILABLE . 1023)
    (:CONFIDENCE_OUT_OF_RANGE . 6)
    (:CONFIDENCE_UNAVAILABLE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Curvature>) ostream)
  "Serializes a message object of type '<Curvature>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Curvature>) istream)
  "Deserializes a message object of type '<Curvature>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Curvature>)))
  "Returns string type for a message object of type '<Curvature>"
  "etsi_msgs/Curvature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Curvature)))
  "Returns string type for a message object of type 'Curvature"
  "etsi_msgs/Curvature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Curvature>)))
  "Returns md5sum for a message object of type '<Curvature>"
  "c2041e49b4ba27809ff1352001f20437")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Curvature)))
  "Returns md5sum for a message object of type 'Curvature"
  "c2041e49b4ba27809ff1352001f20437")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Curvature>)))
  "Returns full string definition for message of type '<Curvature>"
  (cl:format cl:nil "int16 value # m^-1~%uint8 confidence~%~%int16 VALUE_RIGHTMOST = -1023~%int16 VALUE_LEFTMOST = 1022~%int16 VALUE_MIN = -1023~%int16 VALUE_MAX = 1022~%int16 VALUE_STRAIGHT = 0~%int16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 6~%uint8 CONFIDENCE_UNAVAILABLE = 7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Curvature)))
  "Returns full string definition for message of type 'Curvature"
  (cl:format cl:nil "int16 value # m^-1~%uint8 confidence~%~%int16 VALUE_RIGHTMOST = -1023~%int16 VALUE_LEFTMOST = 1022~%int16 VALUE_MIN = -1023~%int16 VALUE_MAX = 1022~%int16 VALUE_STRAIGHT = 0~%int16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 6~%uint8 CONFIDENCE_UNAVAILABLE = 7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Curvature>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Curvature>))
  "Converts a ROS message object to a list"
  (cl:list 'Curvature
    (cl:cons ':value (value msg))
    (cl:cons ':confidence (confidence msg))
))
