; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Altitude.msg.html

(cl:defclass <Altitude> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Altitude (<Altitude>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Altitude>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Altitude)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<Altitude> is deprecated: use ece_msgs-msg:Altitude instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:value-val is deprecated.  Use ece_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:confidence-val is deprecated.  Use ece_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Altitude>)))
    "Constants for message type '<Altitude>"
  '((:VALUE_REFERENCE_ELLIPSOID_SURFACE . 0)
    (:VALUE_ONE_CENTIMETER . 1)
    (:VALUE_UNAVAILABLE . 800001)
    (:CONFIDENCE_1CM . 0)
    (:CONFIDENCE_2CM . 1)
    (:CONFIDENCE_5CM . 2)
    (:CONFIDENCE_10CM . 3)
    (:CONFIDENCE_20CM . 4)
    (:CONFIDENCE_50CM . 5)
    (:CONFIDENCE_1M . 6)
    (:CONFIDENCE_2M . 7)
    (:CONFIDENCE_5M . 8)
    (:CONFIDENCE_10M . 9)
    (:CONFIDENCE_20M . 10)
    (:CONFIDENCE_50M . 11)
    (:CONFIDENCE_100M . 12)
    (:CONFIDENCE_200M . 13)
    (:CONFIDENCE_OUT_OF_RANGE . 14)
    (:CONFIDENCE_UNAVAILABLE . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Altitude)))
    "Constants for message type 'Altitude"
  '((:VALUE_REFERENCE_ELLIPSOID_SURFACE . 0)
    (:VALUE_ONE_CENTIMETER . 1)
    (:VALUE_UNAVAILABLE . 800001)
    (:CONFIDENCE_1CM . 0)
    (:CONFIDENCE_2CM . 1)
    (:CONFIDENCE_5CM . 2)
    (:CONFIDENCE_10CM . 3)
    (:CONFIDENCE_20CM . 4)
    (:CONFIDENCE_50CM . 5)
    (:CONFIDENCE_1M . 6)
    (:CONFIDENCE_2M . 7)
    (:CONFIDENCE_5M . 8)
    (:CONFIDENCE_10M . 9)
    (:CONFIDENCE_20M . 10)
    (:CONFIDENCE_50M . 11)
    (:CONFIDENCE_100M . 12)
    (:CONFIDENCE_200M . 13)
    (:CONFIDENCE_OUT_OF_RANGE . 14)
    (:CONFIDENCE_UNAVAILABLE . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Altitude>) ostream)
  "Serializes a message object of type '<Altitude>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Altitude>) istream)
  "Deserializes a message object of type '<Altitude>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Altitude>)))
  "Returns string type for a message object of type '<Altitude>"
  "ece_msgs/Altitude")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Altitude)))
  "Returns string type for a message object of type 'Altitude"
  "ece_msgs/Altitude")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Altitude>)))
  "Returns md5sum for a message object of type '<Altitude>"
  "968c3c0b85fd51b834ff2ab741786e5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Altitude)))
  "Returns md5sum for a message object of type 'Altitude"
  "968c3c0b85fd51b834ff2ab741786e5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Altitude>)))
  "Returns full string definition for message of type '<Altitude>"
  (cl:format cl:nil "int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Altitude)))
  "Returns full string definition for message of type 'Altitude"
  (cl:format cl:nil "int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Altitude>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Altitude>))
  "Converts a ROS message object to a list"
  (cl:list 'Altitude
    (cl:cons ':value (value msg))
    (cl:cons ':confidence (confidence msg))
))
