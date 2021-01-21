; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude LongitudinalAcceleration.msg.html

(cl:defclass <LongitudinalAcceleration> (roslisp-msg-protocol:ros-message)
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

(cl:defclass LongitudinalAcceleration (<LongitudinalAcceleration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LongitudinalAcceleration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LongitudinalAcceleration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<LongitudinalAcceleration> is deprecated: use etsi_msgs-msg:LongitudinalAcceleration instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LongitudinalAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <LongitudinalAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:confidence-val is deprecated.  Use etsi_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LongitudinalAcceleration>)))
    "Constants for message type '<LongitudinalAcceleration>"
  '((:VALUE_UNAVAILABLE . 161)
    (:CONFIDENCE_OUT_OF_RANGE . 101)
    (:CONFIDENCE_UNAVAILABLE . 102))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LongitudinalAcceleration)))
    "Constants for message type 'LongitudinalAcceleration"
  '((:VALUE_UNAVAILABLE . 161)
    (:CONFIDENCE_OUT_OF_RANGE . 101)
    (:CONFIDENCE_UNAVAILABLE . 102))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LongitudinalAcceleration>) ostream)
  "Serializes a message object of type '<LongitudinalAcceleration>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LongitudinalAcceleration>) istream)
  "Deserializes a message object of type '<LongitudinalAcceleration>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LongitudinalAcceleration>)))
  "Returns string type for a message object of type '<LongitudinalAcceleration>"
  "etsi_msgs/LongitudinalAcceleration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LongitudinalAcceleration)))
  "Returns string type for a message object of type 'LongitudinalAcceleration"
  "etsi_msgs/LongitudinalAcceleration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LongitudinalAcceleration>)))
  "Returns md5sum for a message object of type '<LongitudinalAcceleration>"
  "1817cb5901a9c214183a59333522d9fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LongitudinalAcceleration)))
  "Returns md5sum for a message object of type 'LongitudinalAcceleration"
  "1817cb5901a9c214183a59333522d9fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LongitudinalAcceleration>)))
  "Returns full string definition for message of type '<LongitudinalAcceleration>"
  (cl:format cl:nil "int16 value # 0.1 m/s^2~%uint8 confidence # 0.1 m/s^2~%~%int16 VALUE_UNAVAILABLE = 161~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 101~%uint8 CONFIDENCE_UNAVAILABLE = 102~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LongitudinalAcceleration)))
  "Returns full string definition for message of type 'LongitudinalAcceleration"
  (cl:format cl:nil "int16 value # 0.1 m/s^2~%uint8 confidence # 0.1 m/s^2~%~%int16 VALUE_UNAVAILABLE = 161~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 101~%uint8 CONFIDENCE_UNAVAILABLE = 102~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LongitudinalAcceleration>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LongitudinalAcceleration>))
  "Converts a ROS message object to a list"
  (cl:list 'LongitudinalAcceleration
    (cl:cons ':value (value msg))
    (cl:cons ':confidence (confidence msg))
))
