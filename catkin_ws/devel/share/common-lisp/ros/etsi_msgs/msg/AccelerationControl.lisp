; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude AccelerationControl.msg.html

(cl:defclass <AccelerationControl> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AccelerationControl (<AccelerationControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccelerationControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccelerationControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<AccelerationControl> is deprecated: use etsi_msgs-msg:AccelerationControl instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AccelerationControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AccelerationControl>)))
    "Constants for message type '<AccelerationControl>"
  '((:BRAKE_PEDAL_ENGAGED . 1)
    (:GAS_PEDAL_ENGAGED . 2)
    (:EMERGENCY_BRAKE_ENGAGED . 4)
    (:COLLISION_WARNING_ENGAGED . 8)
    (:ACC_ENGAGED . 16)
    (:CRUISE_CONTROL_ENGAGED . 32)
    (:SPEED_LIMITER_ENGAGED . 64))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AccelerationControl)))
    "Constants for message type 'AccelerationControl"
  '((:BRAKE_PEDAL_ENGAGED . 1)
    (:GAS_PEDAL_ENGAGED . 2)
    (:EMERGENCY_BRAKE_ENGAGED . 4)
    (:COLLISION_WARNING_ENGAGED . 8)
    (:ACC_ENGAGED . 16)
    (:CRUISE_CONTROL_ENGAGED . 32)
    (:SPEED_LIMITER_ENGAGED . 64))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccelerationControl>) ostream)
  "Serializes a message object of type '<AccelerationControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccelerationControl>) istream)
  "Deserializes a message object of type '<AccelerationControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccelerationControl>)))
  "Returns string type for a message object of type '<AccelerationControl>"
  "etsi_msgs/AccelerationControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccelerationControl)))
  "Returns string type for a message object of type 'AccelerationControl"
  "etsi_msgs/AccelerationControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccelerationControl>)))
  "Returns md5sum for a message object of type '<AccelerationControl>"
  "95585d5f00fa07f89453fa3109d62a8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccelerationControl)))
  "Returns md5sum for a message object of type 'AccelerationControl"
  "95585d5f00fa07f89453fa3109d62a8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccelerationControl>)))
  "Returns full string definition for message of type '<AccelerationControl>"
  (cl:format cl:nil "uint8 value~%~%uint8 BRAKE_PEDAL_ENGAGED = 1~%uint8 GAS_PEDAL_ENGAGED = 2~%uint8 EMERGENCY_BRAKE_ENGAGED = 4~%uint8 COLLISION_WARNING_ENGAGED = 8~%uint8 ACC_ENGAGED = 16~%uint8 CRUISE_CONTROL_ENGAGED = 32~%uint8 SPEED_LIMITER_ENGAGED = 64~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccelerationControl)))
  "Returns full string definition for message of type 'AccelerationControl"
  (cl:format cl:nil "uint8 value~%~%uint8 BRAKE_PEDAL_ENGAGED = 1~%uint8 GAS_PEDAL_ENGAGED = 2~%uint8 EMERGENCY_BRAKE_ENGAGED = 4~%uint8 COLLISION_WARNING_ENGAGED = 8~%uint8 ACC_ENGAGED = 16~%uint8 CRUISE_CONTROL_ENGAGED = 32~%uint8 SPEED_LIMITER_ENGAGED = 64~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccelerationControl>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccelerationControl>))
  "Converts a ROS message object to a list"
  (cl:list 'AccelerationControl
    (cl:cons ':value (value msg))
))
