; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude PathDeltaTime.msg.html

(cl:defclass <PathDeltaTime> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PathDeltaTime (<PathDeltaTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathDeltaTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathDeltaTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<PathDeltaTime> is deprecated: use etsi_msgs-msg:PathDeltaTime instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PathDeltaTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PathDeltaTime>)))
    "Constants for message type '<PathDeltaTime>"
  '((:UNAVAILABLE . 0)
    (:TEN_MILLISECONDS_IN_PAST . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PathDeltaTime)))
    "Constants for message type 'PathDeltaTime"
  '((:UNAVAILABLE . 0)
    (:TEN_MILLISECONDS_IN_PAST . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathDeltaTime>) ostream)
  "Serializes a message object of type '<PathDeltaTime>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathDeltaTime>) istream)
  "Deserializes a message object of type '<PathDeltaTime>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathDeltaTime>)))
  "Returns string type for a message object of type '<PathDeltaTime>"
  "etsi_msgs/PathDeltaTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathDeltaTime)))
  "Returns string type for a message object of type 'PathDeltaTime"
  "etsi_msgs/PathDeltaTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathDeltaTime>)))
  "Returns md5sum for a message object of type '<PathDeltaTime>"
  "5c0695d8e0c2e70267666b597c8d9aee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathDeltaTime)))
  "Returns md5sum for a message object of type 'PathDeltaTime"
  "5c0695d8e0c2e70267666b597c8d9aee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathDeltaTime>)))
  "Returns full string definition for message of type '<PathDeltaTime>"
  (cl:format cl:nil "uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathDeltaTime)))
  "Returns full string definition for message of type 'PathDeltaTime"
  (cl:format cl:nil "uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathDeltaTime>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathDeltaTime>))
  "Converts a ROS message object to a list"
  (cl:list 'PathDeltaTime
    (cl:cons ':value (value msg))
))
