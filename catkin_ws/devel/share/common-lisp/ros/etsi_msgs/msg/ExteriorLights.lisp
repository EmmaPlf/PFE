; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude ExteriorLights.msg.html

(cl:defclass <ExteriorLights> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ExteriorLights (<ExteriorLights>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExteriorLights>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExteriorLights)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<ExteriorLights> is deprecated: use etsi_msgs-msg:ExteriorLights instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ExteriorLights>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExteriorLights>)))
    "Constants for message type '<ExteriorLights>"
  '((:LOW_BEAM_HEADLIGHTS . 1)
    (:HIGH_BEAM_HEADLIGHTS . 2)
    (:LEFT_TURN_SIGNAL . 4)
    (:RIGHT_TURN_SIGNAL . 8)
    (:DAYTIME_RUNNING_LIGHTS . 16)
    (:REVERSE_LIGHT . 32)
    (:FOG_LIGHT . 64)
    (:PARKING_LIGHTS . 128))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExteriorLights)))
    "Constants for message type 'ExteriorLights"
  '((:LOW_BEAM_HEADLIGHTS . 1)
    (:HIGH_BEAM_HEADLIGHTS . 2)
    (:LEFT_TURN_SIGNAL . 4)
    (:RIGHT_TURN_SIGNAL . 8)
    (:DAYTIME_RUNNING_LIGHTS . 16)
    (:REVERSE_LIGHT . 32)
    (:FOG_LIGHT . 64)
    (:PARKING_LIGHTS . 128))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExteriorLights>) ostream)
  "Serializes a message object of type '<ExteriorLights>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExteriorLights>) istream)
  "Deserializes a message object of type '<ExteriorLights>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExteriorLights>)))
  "Returns string type for a message object of type '<ExteriorLights>"
  "etsi_msgs/ExteriorLights")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExteriorLights)))
  "Returns string type for a message object of type 'ExteriorLights"
  "etsi_msgs/ExteriorLights")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExteriorLights>)))
  "Returns md5sum for a message object of type '<ExteriorLights>"
  "345ae8f2de1fe5f50829808e9f147b8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExteriorLights)))
  "Returns md5sum for a message object of type 'ExteriorLights"
  "345ae8f2de1fe5f50829808e9f147b8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExteriorLights>)))
  "Returns full string definition for message of type '<ExteriorLights>"
  (cl:format cl:nil "uint8 value~%~%uint8 LOW_BEAM_HEADLIGHTS = 1~%uint8 HIGH_BEAM_HEADLIGHTS = 2~%uint8 LEFT_TURN_SIGNAL = 4~%uint8 RIGHT_TURN_SIGNAL = 8~%uint8 DAYTIME_RUNNING_LIGHTS = 16~%uint8 REVERSE_LIGHT = 32~%uint8 FOG_LIGHT = 64~%uint8 PARKING_LIGHTS = 128~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExteriorLights)))
  "Returns full string definition for message of type 'ExteriorLights"
  (cl:format cl:nil "uint8 value~%~%uint8 LOW_BEAM_HEADLIGHTS = 1~%uint8 HIGH_BEAM_HEADLIGHTS = 2~%uint8 LEFT_TURN_SIGNAL = 4~%uint8 RIGHT_TURN_SIGNAL = 8~%uint8 DAYTIME_RUNNING_LIGHTS = 16~%uint8 REVERSE_LIGHT = 32~%uint8 FOG_LIGHT = 64~%uint8 PARKING_LIGHTS = 128~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExteriorLights>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExteriorLights>))
  "Converts a ROS message object to a list"
  (cl:list 'ExteriorLights
    (cl:cons ':value (value msg))
))
