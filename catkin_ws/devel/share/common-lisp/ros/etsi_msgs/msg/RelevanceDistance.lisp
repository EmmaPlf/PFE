; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude RelevanceDistance.msg.html

(cl:defclass <RelevanceDistance> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RelevanceDistance (<RelevanceDistance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelevanceDistance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelevanceDistance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<RelevanceDistance> is deprecated: use etsi_msgs-msg:RelevanceDistance instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RelevanceDistance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RelevanceDistance>)))
    "Constants for message type '<RelevanceDistance>"
  '((:LESS_THAN_50M . 0)
    (:LESS_THAN_100M . 1)
    (:LESS_THAN_200M . 2)
    (:LESS_THAN_500M . 3)
    (:LESS_THAN_1000M . 4)
    (:LESS_THAN_5KM . 5)
    (:LESS_THAN_10KM . 6)
    (:OVER_10KM . 7)
    (:UNAVAILABLE . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RelevanceDistance)))
    "Constants for message type 'RelevanceDistance"
  '((:LESS_THAN_50M . 0)
    (:LESS_THAN_100M . 1)
    (:LESS_THAN_200M . 2)
    (:LESS_THAN_500M . 3)
    (:LESS_THAN_1000M . 4)
    (:LESS_THAN_5KM . 5)
    (:LESS_THAN_10KM . 6)
    (:OVER_10KM . 7)
    (:UNAVAILABLE . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelevanceDistance>) ostream)
  "Serializes a message object of type '<RelevanceDistance>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelevanceDistance>) istream)
  "Deserializes a message object of type '<RelevanceDistance>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelevanceDistance>)))
  "Returns string type for a message object of type '<RelevanceDistance>"
  "etsi_msgs/RelevanceDistance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelevanceDistance)))
  "Returns string type for a message object of type 'RelevanceDistance"
  "etsi_msgs/RelevanceDistance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelevanceDistance>)))
  "Returns md5sum for a message object of type '<RelevanceDistance>"
  "2e56ef7aa4489b7a0e715afdd14b85bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelevanceDistance)))
  "Returns md5sum for a message object of type 'RelevanceDistance"
  "2e56ef7aa4489b7a0e715afdd14b85bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelevanceDistance>)))
  "Returns full string definition for message of type '<RelevanceDistance>"
  (cl:format cl:nil "uint8 value~%~%uint8 LESS_THAN_50M = 0~%uint8 LESS_THAN_100M = 1~%uint8 LESS_THAN_200M = 2~%uint8 LESS_THAN_500M = 3~%uint8 LESS_THAN_1000M = 4~%uint8 LESS_THAN_5KM = 5~%uint8 LESS_THAN_10KM = 6~%uint8 OVER_10KM = 7~%uint8 UNAVAILABLE = 255~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelevanceDistance)))
  "Returns full string definition for message of type 'RelevanceDistance"
  (cl:format cl:nil "uint8 value~%~%uint8 LESS_THAN_50M = 0~%uint8 LESS_THAN_100M = 1~%uint8 LESS_THAN_200M = 2~%uint8 LESS_THAN_500M = 3~%uint8 LESS_THAN_1000M = 4~%uint8 LESS_THAN_5KM = 5~%uint8 LESS_THAN_10KM = 6~%uint8 OVER_10KM = 7~%uint8 UNAVAILABLE = 255~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelevanceDistance>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelevanceDistance>))
  "Converts a ROS message object to a list"
  (cl:list 'RelevanceDistance
    (cl:cons ':value (value msg))
))
