; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude CauseCode.msg.html

(cl:defclass <CauseCode> (roslisp-msg-protocol:ros-message)
  ((cause_code
    :reader cause_code
    :initarg :cause_code
    :type cl:fixnum
    :initform 0)
   (sub_cause_code
    :reader sub_cause_code
    :initarg :sub_cause_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CauseCode (<CauseCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CauseCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CauseCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<CauseCode> is deprecated: use etsi_msgs-msg:CauseCode instead.")))

(cl:ensure-generic-function 'cause_code-val :lambda-list '(m))
(cl:defmethod cause_code-val ((m <CauseCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:cause_code-val is deprecated.  Use etsi_msgs-msg:cause_code instead.")
  (cause_code m))

(cl:ensure-generic-function 'sub_cause_code-val :lambda-list '(m))
(cl:defmethod sub_cause_code-val ((m <CauseCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:sub_cause_code-val is deprecated.  Use etsi_msgs-msg:sub_cause_code instead.")
  (sub_cause_code m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CauseCode>)))
    "Constants for message type '<CauseCode>"
  '((:RESERVED . 0)
    (:TRAFFIC_CONDITION . 1)
    (:ACCIDENT . 2)
    (:ROADWORKS . 3)
    (:ADVERSE_WEATHER_CONDITIONS_ADHESION . 4)
    (:HAZARDOUS_LOCATION_SURFACE_CONDITION . 9)
    (:HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD . 10)
    (:HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD . 11)
    (:HUMAN_PRESENCE_ON_THE_ROAD . 12)
    (:WRONG_WAY_DRIVING . 14)
    (:RESCUE_AND_RECOVERY_WORK_IN_PROGRESS . 15)
    (:ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION . 17)
    (:ADVERSE_WEATHER_CONDITIONS_VISIBILITY . 18)
    (:ADVERSE_WEATHER_CONDITIONS_PRECIPITATION . 19)
    (:SLOW_VEHICLE . 26)
    (:DANGEROUS_END_OF_QUEUE . 27)
    (:VEHICLE_BREAKDOWN . 91)
    (:POST_CRASH . 92)
    (:HUMAN_PROBLEM . 93)
    (:STATIONARY_VEHICLE . 94)
    (:EMERGENCY_VEHICLE_APPROACHING . 95)
    (:HAZARDOUS_LOCATION_DANGEROUS_CURVE . 96)
    (:COLLISION_RISK . 97)
    (:SIGNAL_VIOLATION . 98)
    (:DANGEROUS_SITUATION . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CauseCode)))
    "Constants for message type 'CauseCode"
  '((:RESERVED . 0)
    (:TRAFFIC_CONDITION . 1)
    (:ACCIDENT . 2)
    (:ROADWORKS . 3)
    (:ADVERSE_WEATHER_CONDITIONS_ADHESION . 4)
    (:HAZARDOUS_LOCATION_SURFACE_CONDITION . 9)
    (:HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD . 10)
    (:HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD . 11)
    (:HUMAN_PRESENCE_ON_THE_ROAD . 12)
    (:WRONG_WAY_DRIVING . 14)
    (:RESCUE_AND_RECOVERY_WORK_IN_PROGRESS . 15)
    (:ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION . 17)
    (:ADVERSE_WEATHER_CONDITIONS_VISIBILITY . 18)
    (:ADVERSE_WEATHER_CONDITIONS_PRECIPITATION . 19)
    (:SLOW_VEHICLE . 26)
    (:DANGEROUS_END_OF_QUEUE . 27)
    (:VEHICLE_BREAKDOWN . 91)
    (:POST_CRASH . 92)
    (:HUMAN_PROBLEM . 93)
    (:STATIONARY_VEHICLE . 94)
    (:EMERGENCY_VEHICLE_APPROACHING . 95)
    (:HAZARDOUS_LOCATION_DANGEROUS_CURVE . 96)
    (:COLLISION_RISK . 97)
    (:SIGNAL_VIOLATION . 98)
    (:DANGEROUS_SITUATION . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CauseCode>) ostream)
  "Serializes a message object of type '<CauseCode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cause_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_cause_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CauseCode>) istream)
  "Deserializes a message object of type '<CauseCode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cause_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_cause_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CauseCode>)))
  "Returns string type for a message object of type '<CauseCode>"
  "etsi_msgs/CauseCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CauseCode)))
  "Returns string type for a message object of type 'CauseCode"
  "etsi_msgs/CauseCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CauseCode>)))
  "Returns md5sum for a message object of type '<CauseCode>"
  "fc8877aef6cd5537c1ab4131c260e325")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CauseCode)))
  "Returns md5sum for a message object of type 'CauseCode"
  "fc8877aef6cd5537c1ab4131c260e325")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CauseCode>)))
  "Returns full string definition for message of type '<CauseCode>"
  (cl:format cl:nil "uint8 cause_code~%uint8 sub_cause_code~%~%uint8 RESERVED = 0~%uint8 TRAFFIC_CONDITION = 1~%uint8 ACCIDENT = 2~%uint8 ROADWORKS = 3~%uint8 ADVERSE_WEATHER_CONDITIONS_ADHESION = 4~%uint8 HAZARDOUS_LOCATION_SURFACE_CONDITION = 9~%uint8 HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD = 10~%uint8 HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD = 11~%uint8 HUMAN_PRESENCE_ON_THE_ROAD = 12~%uint8 WRONG_WAY_DRIVING = 14~%uint8 RESCUE_AND_RECOVERY_WORK_IN_PROGRESS = 15~%uint8 ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION = 17~%uint8 ADVERSE_WEATHER_CONDITIONS_VISIBILITY = 18~%uint8 ADVERSE_WEATHER_CONDITIONS_PRECIPITATION = 19~%uint8 SLOW_VEHICLE = 26~%uint8 DANGEROUS_END_OF_QUEUE = 27~%uint8 VEHICLE_BREAKDOWN = 91~%uint8 POST_CRASH = 92~%uint8 HUMAN_PROBLEM = 93~%uint8 STATIONARY_VEHICLE = 94~%uint8 EMERGENCY_VEHICLE_APPROACHING = 95~%uint8 HAZARDOUS_LOCATION_DANGEROUS_CURVE = 96~%uint8 COLLISION_RISK = 97~%uint8 SIGNAL_VIOLATION = 98~%uint8 DANGEROUS_SITUATION = 99~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CauseCode)))
  "Returns full string definition for message of type 'CauseCode"
  (cl:format cl:nil "uint8 cause_code~%uint8 sub_cause_code~%~%uint8 RESERVED = 0~%uint8 TRAFFIC_CONDITION = 1~%uint8 ACCIDENT = 2~%uint8 ROADWORKS = 3~%uint8 ADVERSE_WEATHER_CONDITIONS_ADHESION = 4~%uint8 HAZARDOUS_LOCATION_SURFACE_CONDITION = 9~%uint8 HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD = 10~%uint8 HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD = 11~%uint8 HUMAN_PRESENCE_ON_THE_ROAD = 12~%uint8 WRONG_WAY_DRIVING = 14~%uint8 RESCUE_AND_RECOVERY_WORK_IN_PROGRESS = 15~%uint8 ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION = 17~%uint8 ADVERSE_WEATHER_CONDITIONS_VISIBILITY = 18~%uint8 ADVERSE_WEATHER_CONDITIONS_PRECIPITATION = 19~%uint8 SLOW_VEHICLE = 26~%uint8 DANGEROUS_END_OF_QUEUE = 27~%uint8 VEHICLE_BREAKDOWN = 91~%uint8 POST_CRASH = 92~%uint8 HUMAN_PROBLEM = 93~%uint8 STATIONARY_VEHICLE = 94~%uint8 EMERGENCY_VEHICLE_APPROACHING = 95~%uint8 HAZARDOUS_LOCATION_DANGEROUS_CURVE = 96~%uint8 COLLISION_RISK = 97~%uint8 SIGNAL_VIOLATION = 98~%uint8 DANGEROUS_SITUATION = 99~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CauseCode>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CauseCode>))
  "Converts a ROS message object to a list"
  (cl:list 'CauseCode
    (cl:cons ':cause_code (cause_code msg))
    (cl:cons ':sub_cause_code (sub_cause_code msg))
))
