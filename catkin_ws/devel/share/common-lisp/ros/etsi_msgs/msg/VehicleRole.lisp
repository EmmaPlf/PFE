; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude VehicleRole.msg.html

(cl:defclass <VehicleRole> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleRole (<VehicleRole>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleRole>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleRole)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<VehicleRole> is deprecated: use etsi_msgs-msg:VehicleRole instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleRole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleRole>)))
    "Constants for message type '<VehicleRole>"
  '((:DEFAULT . 0)
    (:PUBLIC_TRANSPORT . 1)
    (:SPECIAL_TRANSPORT . 2)
    (:DANGEROUS_GOODS . 3)
    (:ROAD_WORK . 4)
    (:RESCUE . 5)
    (:EMERGENCY . 6)
    (:SAFETY_CAR . 7)
    (:AGRICULTURE . 8)
    (:COMMERCIAL . 9)
    (:MILITARY . 10)
    (:ROAD_OPERATOR . 11)
    (:TAXI . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleRole)))
    "Constants for message type 'VehicleRole"
  '((:DEFAULT . 0)
    (:PUBLIC_TRANSPORT . 1)
    (:SPECIAL_TRANSPORT . 2)
    (:DANGEROUS_GOODS . 3)
    (:ROAD_WORK . 4)
    (:RESCUE . 5)
    (:EMERGENCY . 6)
    (:SAFETY_CAR . 7)
    (:AGRICULTURE . 8)
    (:COMMERCIAL . 9)
    (:MILITARY . 10)
    (:ROAD_OPERATOR . 11)
    (:TAXI . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleRole>) ostream)
  "Serializes a message object of type '<VehicleRole>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleRole>) istream)
  "Deserializes a message object of type '<VehicleRole>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleRole>)))
  "Returns string type for a message object of type '<VehicleRole>"
  "etsi_msgs/VehicleRole")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleRole)))
  "Returns string type for a message object of type 'VehicleRole"
  "etsi_msgs/VehicleRole")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleRole>)))
  "Returns md5sum for a message object of type '<VehicleRole>"
  "d6cea9b95e10cef110efe27272e9c052")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleRole)))
  "Returns md5sum for a message object of type 'VehicleRole"
  "d6cea9b95e10cef110efe27272e9c052")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleRole>)))
  "Returns full string definition for message of type '<VehicleRole>"
  (cl:format cl:nil "uint8 value~%~%uint8 DEFAULT = 0~%uint8 PUBLIC_TRANSPORT = 1~%uint8 SPECIAL_TRANSPORT = 2~%uint8 DANGEROUS_GOODS = 3~%uint8 ROAD_WORK = 4~%uint8 RESCUE = 5~%uint8 EMERGENCY = 6~%uint8 SAFETY_CAR = 7~%uint8 AGRICULTURE = 8~%uint8 COMMERCIAL = 9~%uint8 MILITARY = 10~%uint8 ROAD_OPERATOR = 11~%uint8 TAXI = 12~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleRole)))
  "Returns full string definition for message of type 'VehicleRole"
  (cl:format cl:nil "uint8 value~%~%uint8 DEFAULT = 0~%uint8 PUBLIC_TRANSPORT = 1~%uint8 SPECIAL_TRANSPORT = 2~%uint8 DANGEROUS_GOODS = 3~%uint8 ROAD_WORK = 4~%uint8 RESCUE = 5~%uint8 EMERGENCY = 6~%uint8 SAFETY_CAR = 7~%uint8 AGRICULTURE = 8~%uint8 COMMERCIAL = 9~%uint8 MILITARY = 10~%uint8 ROAD_OPERATOR = 11~%uint8 TAXI = 12~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleRole>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleRole>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleRole
    (cl:cons ':value (value msg))
))
