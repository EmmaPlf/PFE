; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude RelevanceTrafficDirection.msg.html

(cl:defclass <RelevanceTrafficDirection> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RelevanceTrafficDirection (<RelevanceTrafficDirection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelevanceTrafficDirection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelevanceTrafficDirection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<RelevanceTrafficDirection> is deprecated: use etsi_msgs-msg:RelevanceTrafficDirection instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RelevanceTrafficDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RelevanceTrafficDirection>)))
    "Constants for message type '<RelevanceTrafficDirection>"
  '((:ALL_TRAFFIC_DIRECTIONS . 0)
    (:UPSTREAM_TRAFFIC . 1)
    (:DOWNSTREAM_TRAFFIC . 2)
    (:OPPOSITE_TRAFFIC . 3)
    (:UNAVAILABLE . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RelevanceTrafficDirection)))
    "Constants for message type 'RelevanceTrafficDirection"
  '((:ALL_TRAFFIC_DIRECTIONS . 0)
    (:UPSTREAM_TRAFFIC . 1)
    (:DOWNSTREAM_TRAFFIC . 2)
    (:OPPOSITE_TRAFFIC . 3)
    (:UNAVAILABLE . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelevanceTrafficDirection>) ostream)
  "Serializes a message object of type '<RelevanceTrafficDirection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelevanceTrafficDirection>) istream)
  "Deserializes a message object of type '<RelevanceTrafficDirection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelevanceTrafficDirection>)))
  "Returns string type for a message object of type '<RelevanceTrafficDirection>"
  "etsi_msgs/RelevanceTrafficDirection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelevanceTrafficDirection)))
  "Returns string type for a message object of type 'RelevanceTrafficDirection"
  "etsi_msgs/RelevanceTrafficDirection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelevanceTrafficDirection>)))
  "Returns md5sum for a message object of type '<RelevanceTrafficDirection>"
  "77aec5a7651c0ef00896308be8f8300e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelevanceTrafficDirection)))
  "Returns md5sum for a message object of type 'RelevanceTrafficDirection"
  "77aec5a7651c0ef00896308be8f8300e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelevanceTrafficDirection>)))
  "Returns full string definition for message of type '<RelevanceTrafficDirection>"
  (cl:format cl:nil "uint8 value~%~%uint8 ALL_TRAFFIC_DIRECTIONS = 0~%uint8 UPSTREAM_TRAFFIC = 1~%uint8 DOWNSTREAM_TRAFFIC = 2~%uint8 OPPOSITE_TRAFFIC = 3~%uint8 UNAVAILABLE = 255 # extension to encode optional traffic directions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelevanceTrafficDirection)))
  "Returns full string definition for message of type 'RelevanceTrafficDirection"
  (cl:format cl:nil "uint8 value~%~%uint8 ALL_TRAFFIC_DIRECTIONS = 0~%uint8 UPSTREAM_TRAFFIC = 1~%uint8 DOWNSTREAM_TRAFFIC = 2~%uint8 OPPOSITE_TRAFFIC = 3~%uint8 UNAVAILABLE = 255 # extension to encode optional traffic directions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelevanceTrafficDirection>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelevanceTrafficDirection>))
  "Converts a ROS message object to a list"
  (cl:list 'RelevanceTrafficDirection
    (cl:cons ':value (value msg))
))
