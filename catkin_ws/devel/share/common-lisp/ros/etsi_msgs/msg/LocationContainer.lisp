; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude LocationContainer.msg.html

(cl:defclass <LocationContainer> (roslisp-msg-protocol:ros-message)
  ((event_speed
    :reader event_speed
    :initarg :event_speed
    :type etsi_msgs-msg:Speed
    :initform (cl:make-instance 'etsi_msgs-msg:Speed))
   (event_position_heading
    :reader event_position_heading
    :initarg :event_position_heading
    :type etsi_msgs-msg:Heading
    :initform (cl:make-instance 'etsi_msgs-msg:Heading))
   (traces
    :reader traces
    :initarg :traces
    :type (cl:vector etsi_msgs-msg:PathHistory)
   :initform (cl:make-array 0 :element-type 'etsi_msgs-msg:PathHistory :initial-element (cl:make-instance 'etsi_msgs-msg:PathHistory)))
   (road_type
    :reader road_type
    :initarg :road_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LocationContainer (<LocationContainer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocationContainer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocationContainer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<LocationContainer> is deprecated: use etsi_msgs-msg:LocationContainer instead.")))

(cl:ensure-generic-function 'event_speed-val :lambda-list '(m))
(cl:defmethod event_speed-val ((m <LocationContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:event_speed-val is deprecated.  Use etsi_msgs-msg:event_speed instead.")
  (event_speed m))

(cl:ensure-generic-function 'event_position_heading-val :lambda-list '(m))
(cl:defmethod event_position_heading-val ((m <LocationContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:event_position_heading-val is deprecated.  Use etsi_msgs-msg:event_position_heading instead.")
  (event_position_heading m))

(cl:ensure-generic-function 'traces-val :lambda-list '(m))
(cl:defmethod traces-val ((m <LocationContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:traces-val is deprecated.  Use etsi_msgs-msg:traces instead.")
  (traces m))

(cl:ensure-generic-function 'road_type-val :lambda-list '(m))
(cl:defmethod road_type-val ((m <LocationContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:road_type-val is deprecated.  Use etsi_msgs-msg:road_type instead.")
  (road_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LocationContainer>)))
    "Constants for message type '<LocationContainer>"
  '((:ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES . 0)
    (:ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES . 1)
    (:ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES . 2)
    (:ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES . 3)
    (:ROAD_TYPE_UNAVAILABLE . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LocationContainer)))
    "Constants for message type 'LocationContainer"
  '((:ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES . 0)
    (:ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES . 1)
    (:ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES . 2)
    (:ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES . 3)
    (:ROAD_TYPE_UNAVAILABLE . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocationContainer>) ostream)
  "Serializes a message object of type '<LocationContainer>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event_speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event_position_heading) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traces))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocationContainer>) istream)
  "Deserializes a message object of type '<LocationContainer>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event_speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event_position_heading) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'etsi_msgs-msg:PathHistory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocationContainer>)))
  "Returns string type for a message object of type '<LocationContainer>"
  "etsi_msgs/LocationContainer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationContainer)))
  "Returns string type for a message object of type 'LocationContainer"
  "etsi_msgs/LocationContainer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocationContainer>)))
  "Returns md5sum for a message object of type '<LocationContainer>"
  "a09dcf7fff0ab0b3181252f05813385c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocationContainer)))
  "Returns md5sum for a message object of type 'LocationContainer"
  "a09dcf7fff0ab0b3181252f05813385c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocationContainer>)))
  "Returns full string definition for message of type '<LocationContainer>"
  (cl:format cl:nil "Speed event_speed~%Heading event_position_heading~%PathHistory[] traces~%uint8 road_type~%~%uint8 ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 0~%uint8 ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 1~%uint8 ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 2~%uint8 ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 3~%uint8 ROAD_TYPE_UNAVAILABLE = 255~%~%================================================================================~%MSG: etsi_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/Heading~%uint16 value # 0.1 degree~%uint8 confidence~%~%uint16 VALUE_NORTH = 0~%uint16 VALUE_EAST = 900~%uint16 VALUE_SOUTH = 1800~%uint16 VALUE_WEST = 2700~%uint16 VALUE_UNAVAILABLE = 3601~%~%uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1~%uint8 CONFIDENCE_ONE_DEGREE = 10~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/PathHistory~%PathPoint[] points~%~%================================================================================~%MSG: etsi_msgs/PathPoint~%DeltaReferencePosition path_position~%PathDeltaTime path_delta_time~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocationContainer)))
  "Returns full string definition for message of type 'LocationContainer"
  (cl:format cl:nil "Speed event_speed~%Heading event_position_heading~%PathHistory[] traces~%uint8 road_type~%~%uint8 ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 0~%uint8 ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 1~%uint8 ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 2~%uint8 ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 3~%uint8 ROAD_TYPE_UNAVAILABLE = 255~%~%================================================================================~%MSG: etsi_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/Heading~%uint16 value # 0.1 degree~%uint8 confidence~%~%uint16 VALUE_NORTH = 0~%uint16 VALUE_EAST = 900~%uint16 VALUE_SOUTH = 1800~%uint16 VALUE_WEST = 2700~%uint16 VALUE_UNAVAILABLE = 3601~%~%uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1~%uint8 CONFIDENCE_ONE_DEGREE = 10~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/PathHistory~%PathPoint[] points~%~%================================================================================~%MSG: etsi_msgs/PathPoint~%DeltaReferencePosition path_position~%PathDeltaTime path_delta_time~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocationContainer>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event_speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event_position_heading))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocationContainer>))
  "Converts a ROS message object to a list"
  (cl:list 'LocationContainer
    (cl:cons ':event_speed (event_speed msg))
    (cl:cons ':event_position_heading (event_position_heading msg))
    (cl:cons ':traces (traces msg))
    (cl:cons ':road_type (road_type msg))
))
