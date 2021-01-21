; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude SituationContainer.msg.html

(cl:defclass <SituationContainer> (roslisp-msg-protocol:ros-message)
  ((information_quality
    :reader information_quality
    :initarg :information_quality
    :type etsi_msgs-msg:InformationQuality
    :initform (cl:make-instance 'etsi_msgs-msg:InformationQuality))
   (event_type
    :reader event_type
    :initarg :event_type
    :type etsi_msgs-msg:CauseCode
    :initform (cl:make-instance 'etsi_msgs-msg:CauseCode))
   (has_linked_cause
    :reader has_linked_cause
    :initarg :has_linked_cause
    :type cl:boolean
    :initform cl:nil)
   (linked_cause
    :reader linked_cause
    :initarg :linked_cause
    :type etsi_msgs-msg:CauseCode
    :initform (cl:make-instance 'etsi_msgs-msg:CauseCode))
   (event_history
    :reader event_history
    :initarg :event_history
    :type (cl:vector etsi_msgs-msg:EventPoint)
   :initform (cl:make-array 0 :element-type 'etsi_msgs-msg:EventPoint :initial-element (cl:make-instance 'etsi_msgs-msg:EventPoint))))
)

(cl:defclass SituationContainer (<SituationContainer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SituationContainer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SituationContainer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<SituationContainer> is deprecated: use etsi_msgs-msg:SituationContainer instead.")))

(cl:ensure-generic-function 'information_quality-val :lambda-list '(m))
(cl:defmethod information_quality-val ((m <SituationContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:information_quality-val is deprecated.  Use etsi_msgs-msg:information_quality instead.")
  (information_quality m))

(cl:ensure-generic-function 'event_type-val :lambda-list '(m))
(cl:defmethod event_type-val ((m <SituationContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:event_type-val is deprecated.  Use etsi_msgs-msg:event_type instead.")
  (event_type m))

(cl:ensure-generic-function 'has_linked_cause-val :lambda-list '(m))
(cl:defmethod has_linked_cause-val ((m <SituationContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:has_linked_cause-val is deprecated.  Use etsi_msgs-msg:has_linked_cause instead.")
  (has_linked_cause m))

(cl:ensure-generic-function 'linked_cause-val :lambda-list '(m))
(cl:defmethod linked_cause-val ((m <SituationContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:linked_cause-val is deprecated.  Use etsi_msgs-msg:linked_cause instead.")
  (linked_cause m))

(cl:ensure-generic-function 'event_history-val :lambda-list '(m))
(cl:defmethod event_history-val ((m <SituationContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:event_history-val is deprecated.  Use etsi_msgs-msg:event_history instead.")
  (event_history m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SituationContainer>) ostream)
  "Serializes a message object of type '<SituationContainer>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'information_quality) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_linked_cause) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linked_cause) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'event_history))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'event_history))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SituationContainer>) istream)
  "Deserializes a message object of type '<SituationContainer>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'information_quality) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event_type) istream)
    (cl:setf (cl:slot-value msg 'has_linked_cause) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linked_cause) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'event_history) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'event_history)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'etsi_msgs-msg:EventPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SituationContainer>)))
  "Returns string type for a message object of type '<SituationContainer>"
  "etsi_msgs/SituationContainer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SituationContainer)))
  "Returns string type for a message object of type 'SituationContainer"
  "etsi_msgs/SituationContainer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SituationContainer>)))
  "Returns md5sum for a message object of type '<SituationContainer>"
  "d9a79cc76182211b632e0fb2d42e16d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SituationContainer)))
  "Returns md5sum for a message object of type 'SituationContainer"
  "d9a79cc76182211b632e0fb2d42e16d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SituationContainer>)))
  "Returns full string definition for message of type '<SituationContainer>"
  (cl:format cl:nil "InformationQuality information_quality~%CauseCode event_type~%bool has_linked_cause~%CauseCode linked_cause~%EventPoint[] event_history~%~%================================================================================~%MSG: etsi_msgs/InformationQuality~%int8 value~%~%int8 UNAVAILABLE = 0~%int8 LOWEST = 1~%int8 HIGHEST = 7~%~%================================================================================~%MSG: etsi_msgs/CauseCode~%uint8 cause_code~%uint8 sub_cause_code~%~%uint8 RESERVED = 0~%uint8 TRAFFIC_CONDITION = 1~%uint8 ACCIDENT = 2~%uint8 ROADWORKS = 3~%uint8 ADVERSE_WEATHER_CONDITIONS_ADHESION = 4~%uint8 HAZARDOUS_LOCATION_SURFACE_CONDITION = 9~%uint8 HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD = 10~%uint8 HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD = 11~%uint8 HUMAN_PRESENCE_ON_THE_ROAD = 12~%uint8 WRONG_WAY_DRIVING = 14~%uint8 RESCUE_AND_RECOVERY_WORK_IN_PROGRESS = 15~%uint8 ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION = 17~%uint8 ADVERSE_WEATHER_CONDITIONS_VISIBILITY = 18~%uint8 ADVERSE_WEATHER_CONDITIONS_PRECIPITATION = 19~%uint8 SLOW_VEHICLE = 26~%uint8 DANGEROUS_END_OF_QUEUE = 27~%uint8 VEHICLE_BREAKDOWN = 91~%uint8 POST_CRASH = 92~%uint8 HUMAN_PROBLEM = 93~%uint8 STATIONARY_VEHICLE = 94~%uint8 EMERGENCY_VEHICLE_APPROACHING = 95~%uint8 HAZARDOUS_LOCATION_DANGEROUS_CURVE = 96~%uint8 COLLISION_RISK = 97~%uint8 SIGNAL_VIOLATION = 98~%uint8 DANGEROUS_SITUATION = 99~%~%================================================================================~%MSG: etsi_msgs/EventPoint~%DeltaReferencePosition event_position~%PathDeltaTime event_delta_time~%InformationQuality information_quality~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SituationContainer)))
  "Returns full string definition for message of type 'SituationContainer"
  (cl:format cl:nil "InformationQuality information_quality~%CauseCode event_type~%bool has_linked_cause~%CauseCode linked_cause~%EventPoint[] event_history~%~%================================================================================~%MSG: etsi_msgs/InformationQuality~%int8 value~%~%int8 UNAVAILABLE = 0~%int8 LOWEST = 1~%int8 HIGHEST = 7~%~%================================================================================~%MSG: etsi_msgs/CauseCode~%uint8 cause_code~%uint8 sub_cause_code~%~%uint8 RESERVED = 0~%uint8 TRAFFIC_CONDITION = 1~%uint8 ACCIDENT = 2~%uint8 ROADWORKS = 3~%uint8 ADVERSE_WEATHER_CONDITIONS_ADHESION = 4~%uint8 HAZARDOUS_LOCATION_SURFACE_CONDITION = 9~%uint8 HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD = 10~%uint8 HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD = 11~%uint8 HUMAN_PRESENCE_ON_THE_ROAD = 12~%uint8 WRONG_WAY_DRIVING = 14~%uint8 RESCUE_AND_RECOVERY_WORK_IN_PROGRESS = 15~%uint8 ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION = 17~%uint8 ADVERSE_WEATHER_CONDITIONS_VISIBILITY = 18~%uint8 ADVERSE_WEATHER_CONDITIONS_PRECIPITATION = 19~%uint8 SLOW_VEHICLE = 26~%uint8 DANGEROUS_END_OF_QUEUE = 27~%uint8 VEHICLE_BREAKDOWN = 91~%uint8 POST_CRASH = 92~%uint8 HUMAN_PROBLEM = 93~%uint8 STATIONARY_VEHICLE = 94~%uint8 EMERGENCY_VEHICLE_APPROACHING = 95~%uint8 HAZARDOUS_LOCATION_DANGEROUS_CURVE = 96~%uint8 COLLISION_RISK = 97~%uint8 SIGNAL_VIOLATION = 98~%uint8 DANGEROUS_SITUATION = 99~%~%================================================================================~%MSG: etsi_msgs/EventPoint~%DeltaReferencePosition event_position~%PathDeltaTime event_delta_time~%InformationQuality information_quality~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SituationContainer>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'information_quality))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event_type))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linked_cause))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'event_history) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SituationContainer>))
  "Converts a ROS message object to a list"
  (cl:list 'SituationContainer
    (cl:cons ':information_quality (information_quality msg))
    (cl:cons ':event_type (event_type msg))
    (cl:cons ':has_linked_cause (has_linked_cause msg))
    (cl:cons ':linked_cause (linked_cause msg))
    (cl:cons ':event_history (event_history msg))
))
