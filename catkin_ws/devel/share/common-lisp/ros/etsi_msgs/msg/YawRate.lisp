; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude YawRate.msg.html

(cl:defclass <YawRate> (roslisp-msg-protocol:ros-message)
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

(cl:defclass YawRate (<YawRate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YawRate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YawRate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<YawRate> is deprecated: use etsi_msgs-msg:YawRate instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <YawRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <YawRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:confidence-val is deprecated.  Use etsi_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<YawRate>)))
    "Constants for message type '<YawRate>"
  '((:VALUE_UNAVAILABLE . 32767)
    (:CONFIDENCE_0DOT01_DEGSEC . 0)
    (:CONFIDENCE_0DOT05_DEGSEC . 1)
    (:CONFIDENCE_0DOT1_DEGSEC . 2)
    (:CONFIDENCE_1_DEGSEC . 3)
    (:CONFIDENCE_5_DEGSEC . 4)
    (:CONFIDENCE_10_DEGSEC . 5)
    (:CONFIDENCE_100_DEGSEC . 6)
    (:CONFIDENCE_OUT_OF_RANGE . 7)
    (:CONFIDENCE_UNAVAILABLE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'YawRate)))
    "Constants for message type 'YawRate"
  '((:VALUE_UNAVAILABLE . 32767)
    (:CONFIDENCE_0DOT01_DEGSEC . 0)
    (:CONFIDENCE_0DOT05_DEGSEC . 1)
    (:CONFIDENCE_0DOT1_DEGSEC . 2)
    (:CONFIDENCE_1_DEGSEC . 3)
    (:CONFIDENCE_5_DEGSEC . 4)
    (:CONFIDENCE_10_DEGSEC . 5)
    (:CONFIDENCE_100_DEGSEC . 6)
    (:CONFIDENCE_OUT_OF_RANGE . 7)
    (:CONFIDENCE_UNAVAILABLE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YawRate>) ostream)
  "Serializes a message object of type '<YawRate>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YawRate>) istream)
  "Deserializes a message object of type '<YawRate>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YawRate>)))
  "Returns string type for a message object of type '<YawRate>"
  "etsi_msgs/YawRate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YawRate)))
  "Returns string type for a message object of type 'YawRate"
  "etsi_msgs/YawRate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YawRate>)))
  "Returns md5sum for a message object of type '<YawRate>"
  "dca9682f2a1621772f3f01aff9d9e072")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YawRate)))
  "Returns md5sum for a message object of type 'YawRate"
  "dca9682f2a1621772f3f01aff9d9e072")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YawRate>)))
  "Returns full string definition for message of type '<YawRate>"
  (cl:format cl:nil "int16 value # 0.01 degree/s~%uint8 confidence~%~%int16 VALUE_UNAVAILABLE = 32767~%~%uint8 CONFIDENCE_0DOT01_DEGSEC = 0~%uint8 CONFIDENCE_0DOT05_DEGSEC = 1~%uint8 CONFIDENCE_0DOT1_DEGSEC = 2~%uint8 CONFIDENCE_1_DEGSEC = 3~%uint8 CONFIDENCE_5_DEGSEC = 4~%uint8 CONFIDENCE_10_DEGSEC = 5~%uint8 CONFIDENCE_100_DEGSEC = 6~%uint8 CONFIDENCE_OUT_OF_RANGE = 7~%uint8 CONFIDENCE_UNAVAILABLE = 8~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YawRate)))
  "Returns full string definition for message of type 'YawRate"
  (cl:format cl:nil "int16 value # 0.01 degree/s~%uint8 confidence~%~%int16 VALUE_UNAVAILABLE = 32767~%~%uint8 CONFIDENCE_0DOT01_DEGSEC = 0~%uint8 CONFIDENCE_0DOT05_DEGSEC = 1~%uint8 CONFIDENCE_0DOT1_DEGSEC = 2~%uint8 CONFIDENCE_1_DEGSEC = 3~%uint8 CONFIDENCE_5_DEGSEC = 4~%uint8 CONFIDENCE_10_DEGSEC = 5~%uint8 CONFIDENCE_100_DEGSEC = 6~%uint8 CONFIDENCE_OUT_OF_RANGE = 7~%uint8 CONFIDENCE_UNAVAILABLE = 8~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YawRate>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YawRate>))
  "Converts a ROS message object to a list"
  (cl:list 'YawRate
    (cl:cons ':value (value msg))
    (cl:cons ':confidence (confidence msg))
))
