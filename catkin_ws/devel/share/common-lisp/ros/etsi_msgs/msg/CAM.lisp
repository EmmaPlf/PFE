; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude CAM.msg.html

(cl:defclass <CAM> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (its_header
    :reader its_header
    :initarg :its_header
    :type etsi_msgs-msg:ItsPduHeader
    :initform (cl:make-instance 'etsi_msgs-msg:ItsPduHeader))
   (generation_delta_time
    :reader generation_delta_time
    :initarg :generation_delta_time
    :type cl:fixnum
    :initform 0)
   (station_type
    :reader station_type
    :initarg :station_type
    :type etsi_msgs-msg:StationType
    :initform (cl:make-instance 'etsi_msgs-msg:StationType))
   (reference_position
    :reader reference_position
    :initarg :reference_position
    :type etsi_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'etsi_msgs-msg:ReferencePosition))
   (high_frequency_container
    :reader high_frequency_container
    :initarg :high_frequency_container
    :type etsi_msgs-msg:BasicVehicleContainerHighFrequency
    :initform (cl:make-instance 'etsi_msgs-msg:BasicVehicleContainerHighFrequency))
   (has_low_frequency_container
    :reader has_low_frequency_container
    :initarg :has_low_frequency_container
    :type cl:boolean
    :initform cl:nil)
   (low_frequency_container
    :reader low_frequency_container
    :initarg :low_frequency_container
    :type etsi_msgs-msg:BasicVehicleContainerLowFrequency
    :initform (cl:make-instance 'etsi_msgs-msg:BasicVehicleContainerLowFrequency)))
)

(cl:defclass CAM (<CAM>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CAM>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CAM)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<CAM> is deprecated: use etsi_msgs-msg:CAM instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:header-val is deprecated.  Use etsi_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'its_header-val :lambda-list '(m))
(cl:defmethod its_header-val ((m <CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:its_header-val is deprecated.  Use etsi_msgs-msg:its_header instead.")
  (its_header m))

(cl:ensure-generic-function 'generation_delta_time-val :lambda-list '(m))
(cl:defmethod generation_delta_time-val ((m <CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:generation_delta_time-val is deprecated.  Use etsi_msgs-msg:generation_delta_time instead.")
  (generation_delta_time m))

(cl:ensure-generic-function 'station_type-val :lambda-list '(m))
(cl:defmethod station_type-val ((m <CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:station_type-val is deprecated.  Use etsi_msgs-msg:station_type instead.")
  (station_type m))

(cl:ensure-generic-function 'reference_position-val :lambda-list '(m))
(cl:defmethod reference_position-val ((m <CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:reference_position-val is deprecated.  Use etsi_msgs-msg:reference_position instead.")
  (reference_position m))

(cl:ensure-generic-function 'high_frequency_container-val :lambda-list '(m))
(cl:defmethod high_frequency_container-val ((m <CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:high_frequency_container-val is deprecated.  Use etsi_msgs-msg:high_frequency_container instead.")
  (high_frequency_container m))

(cl:ensure-generic-function 'has_low_frequency_container-val :lambda-list '(m))
(cl:defmethod has_low_frequency_container-val ((m <CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:has_low_frequency_container-val is deprecated.  Use etsi_msgs-msg:has_low_frequency_container instead.")
  (has_low_frequency_container m))

(cl:ensure-generic-function 'low_frequency_container-val :lambda-list '(m))
(cl:defmethod low_frequency_container-val ((m <CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:low_frequency_container-val is deprecated.  Use etsi_msgs-msg:low_frequency_container instead.")
  (low_frequency_container m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CAM>) ostream)
  "Serializes a message object of type '<CAM>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'its_header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'generation_delta_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'generation_delta_time)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'station_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'high_frequency_container) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_low_frequency_container) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'low_frequency_container) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CAM>) istream)
  "Deserializes a message object of type '<CAM>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'its_header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'generation_delta_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'generation_delta_time)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'station_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'high_frequency_container) istream)
    (cl:setf (cl:slot-value msg 'has_low_frequency_container) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'low_frequency_container) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CAM>)))
  "Returns string type for a message object of type '<CAM>"
  "etsi_msgs/CAM")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CAM)))
  "Returns string type for a message object of type 'CAM"
  "etsi_msgs/CAM")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CAM>)))
  "Returns md5sum for a message object of type '<CAM>"
  "9c2e1d050ad79cf1fc0a55266577e7c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CAM)))
  "Returns md5sum for a message object of type 'CAM"
  "9c2e1d050ad79cf1fc0a55266577e7c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CAM>)))
  "Returns full string definition for message of type '<CAM>"
  (cl:format cl:nil "Header header~%ItsPduHeader its_header~%uint16 generation_delta_time # milliseconds since 2004 modulo 2^16~%~%# basic container~%StationType station_type~%ReferencePosition reference_position~%~%# TODO either BasicVehicle or RSU~%BasicVehicleContainerHighFrequency high_frequency_container~%~%bool has_low_frequency_container~%BasicVehicleContainerLowFrequency low_frequency_container~%~%# TODO special vehicle container is missing~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: etsi_msgs/ItsPduHeader~%uint8 protocol_version~%uint8 message_id~%uint32 station_id~%~%uint8 MESSAGE_ID_DENM = 1~%uint8 MESSAGE_ID_CAM = 2~%~%================================================================================~%MSG: etsi_msgs/StationType~%uint8 value~%~%uint8 UNKNOWN = 0~%uint8 PEDESTRIAN = 1~%uint8 CYCLIST = 2~%uint8 MOPED = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 BUS = 6~%uint8 LIGHT_TRUCK = 7~%uint8 HEAVY_TRUCK = 8~%uint8 TRAILER = 9~%uint8 SPECIAL_VEHICLE = 10~%uint8 TRAM = 11~%uint8 ROAD_SIDE_UNIT = 15~%~%================================================================================~%MSG: etsi_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: etsi_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: etsi_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%================================================================================~%MSG: etsi_msgs/BasicVehicleContainerHighFrequency~%Heading heading~%Speed speed~%DriveDirection drive_direction~%VehicleLength vehicle_length~%VehicleWidth vehicle_width~%LongitudinalAcceleration longitudinal_acceleration~%Curvature curvature~%CurvatureCalculationMode curvature_calculation_mode~%YawRate yaw_rate~%~%# optional data fields~%bool has_acceleration_control~%AccelerationControl acceleration_control~%~%# TODO further (optional) data fields are missing~%~%================================================================================~%MSG: etsi_msgs/Heading~%uint16 value # 0.1 degree~%uint8 confidence~%~%uint16 VALUE_NORTH = 0~%uint16 VALUE_EAST = 900~%uint16 VALUE_SOUTH = 1800~%uint16 VALUE_WEST = 2700~%uint16 VALUE_UNAVAILABLE = 3601~%~%uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1~%uint8 CONFIDENCE_ONE_DEGREE = 10~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/DriveDirection~%uint8 value~%~%uint8 FORWARD = 0~%uint8 BACKWARD = 1~%uint8 UNAVAILABLE = 2~%~%================================================================================~%MSG: etsi_msgs/VehicleLength~%uint16 value # 0.1 meter~%uint8 confidence_indication~%~%uint16 VALUE_TEN_CENTIMETERS = 1~%uint16 VALUE_OUT_OF_RANGE = 1022~%uint16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2~%uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3~%uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4~%~%================================================================================~%MSG: etsi_msgs/VehicleWidth~%uint8 value # 0.1 meter~%~%uint8 TEN_CENTIMETERS = 1~%uint8 OUT_OF_RANGE = 61~%uint8 UNAVAILABLE = 62~%~%================================================================================~%MSG: etsi_msgs/LongitudinalAcceleration~%int16 value # 0.1 m/s^2~%uint8 confidence # 0.1 m/s^2~%~%int16 VALUE_UNAVAILABLE = 161~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 101~%uint8 CONFIDENCE_UNAVAILABLE = 102~%~%================================================================================~%MSG: etsi_msgs/Curvature~%int16 value # m^-1~%uint8 confidence~%~%int16 VALUE_RIGHTMOST = -1023~%int16 VALUE_LEFTMOST = 1022~%int16 VALUE_MIN = -1023~%int16 VALUE_MAX = 1022~%int16 VALUE_STRAIGHT = 0~%int16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 6~%uint8 CONFIDENCE_UNAVAILABLE = 7~%~%================================================================================~%MSG: etsi_msgs/CurvatureCalculationMode~%uint8 value~%~%uint8 YAW_RATE_USED = 0~%uint8 YAW_RATE_NOT_USED = 1~%uint8 UNAVAILABLE = 2~%~%================================================================================~%MSG: etsi_msgs/YawRate~%int16 value # 0.01 degree/s~%uint8 confidence~%~%int16 VALUE_UNAVAILABLE = 32767~%~%uint8 CONFIDENCE_0DOT01_DEGSEC = 0~%uint8 CONFIDENCE_0DOT05_DEGSEC = 1~%uint8 CONFIDENCE_0DOT1_DEGSEC = 2~%uint8 CONFIDENCE_1_DEGSEC = 3~%uint8 CONFIDENCE_5_DEGSEC = 4~%uint8 CONFIDENCE_10_DEGSEC = 5~%uint8 CONFIDENCE_100_DEGSEC = 6~%uint8 CONFIDENCE_OUT_OF_RANGE = 7~%uint8 CONFIDENCE_UNAVAILABLE = 8~%~%================================================================================~%MSG: etsi_msgs/AccelerationControl~%uint8 value~%~%uint8 BRAKE_PEDAL_ENGAGED = 1~%uint8 GAS_PEDAL_ENGAGED = 2~%uint8 EMERGENCY_BRAKE_ENGAGED = 4~%uint8 COLLISION_WARNING_ENGAGED = 8~%uint8 ACC_ENGAGED = 16~%uint8 CRUISE_CONTROL_ENGAGED = 32~%uint8 SPEED_LIMITER_ENGAGED = 64~%~%================================================================================~%MSG: etsi_msgs/BasicVehicleContainerLowFrequency~%VehicleRole vehicle_role~%ExteriorLights exterior_lights~%PathHistory path_history~%~%================================================================================~%MSG: etsi_msgs/VehicleRole~%uint8 value~%~%uint8 DEFAULT = 0~%uint8 PUBLIC_TRANSPORT = 1~%uint8 SPECIAL_TRANSPORT = 2~%uint8 DANGEROUS_GOODS = 3~%uint8 ROAD_WORK = 4~%uint8 RESCUE = 5~%uint8 EMERGENCY = 6~%uint8 SAFETY_CAR = 7~%uint8 AGRICULTURE = 8~%uint8 COMMERCIAL = 9~%uint8 MILITARY = 10~%uint8 ROAD_OPERATOR = 11~%uint8 TAXI = 12~%~%================================================================================~%MSG: etsi_msgs/ExteriorLights~%uint8 value~%~%uint8 LOW_BEAM_HEADLIGHTS = 1~%uint8 HIGH_BEAM_HEADLIGHTS = 2~%uint8 LEFT_TURN_SIGNAL = 4~%uint8 RIGHT_TURN_SIGNAL = 8~%uint8 DAYTIME_RUNNING_LIGHTS = 16~%uint8 REVERSE_LIGHT = 32~%uint8 FOG_LIGHT = 64~%uint8 PARKING_LIGHTS = 128~%~%================================================================================~%MSG: etsi_msgs/PathHistory~%PathPoint[] points~%~%================================================================================~%MSG: etsi_msgs/PathPoint~%DeltaReferencePosition path_position~%PathDeltaTime path_delta_time~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CAM)))
  "Returns full string definition for message of type 'CAM"
  (cl:format cl:nil "Header header~%ItsPduHeader its_header~%uint16 generation_delta_time # milliseconds since 2004 modulo 2^16~%~%# basic container~%StationType station_type~%ReferencePosition reference_position~%~%# TODO either BasicVehicle or RSU~%BasicVehicleContainerHighFrequency high_frequency_container~%~%bool has_low_frequency_container~%BasicVehicleContainerLowFrequency low_frequency_container~%~%# TODO special vehicle container is missing~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: etsi_msgs/ItsPduHeader~%uint8 protocol_version~%uint8 message_id~%uint32 station_id~%~%uint8 MESSAGE_ID_DENM = 1~%uint8 MESSAGE_ID_CAM = 2~%~%================================================================================~%MSG: etsi_msgs/StationType~%uint8 value~%~%uint8 UNKNOWN = 0~%uint8 PEDESTRIAN = 1~%uint8 CYCLIST = 2~%uint8 MOPED = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 BUS = 6~%uint8 LIGHT_TRUCK = 7~%uint8 HEAVY_TRUCK = 8~%uint8 TRAILER = 9~%uint8 SPECIAL_VEHICLE = 10~%uint8 TRAM = 11~%uint8 ROAD_SIDE_UNIT = 15~%~%================================================================================~%MSG: etsi_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: etsi_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: etsi_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%================================================================================~%MSG: etsi_msgs/BasicVehicleContainerHighFrequency~%Heading heading~%Speed speed~%DriveDirection drive_direction~%VehicleLength vehicle_length~%VehicleWidth vehicle_width~%LongitudinalAcceleration longitudinal_acceleration~%Curvature curvature~%CurvatureCalculationMode curvature_calculation_mode~%YawRate yaw_rate~%~%# optional data fields~%bool has_acceleration_control~%AccelerationControl acceleration_control~%~%# TODO further (optional) data fields are missing~%~%================================================================================~%MSG: etsi_msgs/Heading~%uint16 value # 0.1 degree~%uint8 confidence~%~%uint16 VALUE_NORTH = 0~%uint16 VALUE_EAST = 900~%uint16 VALUE_SOUTH = 1800~%uint16 VALUE_WEST = 2700~%uint16 VALUE_UNAVAILABLE = 3601~%~%uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1~%uint8 CONFIDENCE_ONE_DEGREE = 10~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/DriveDirection~%uint8 value~%~%uint8 FORWARD = 0~%uint8 BACKWARD = 1~%uint8 UNAVAILABLE = 2~%~%================================================================================~%MSG: etsi_msgs/VehicleLength~%uint16 value # 0.1 meter~%uint8 confidence_indication~%~%uint16 VALUE_TEN_CENTIMETERS = 1~%uint16 VALUE_OUT_OF_RANGE = 1022~%uint16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2~%uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3~%uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4~%~%================================================================================~%MSG: etsi_msgs/VehicleWidth~%uint8 value # 0.1 meter~%~%uint8 TEN_CENTIMETERS = 1~%uint8 OUT_OF_RANGE = 61~%uint8 UNAVAILABLE = 62~%~%================================================================================~%MSG: etsi_msgs/LongitudinalAcceleration~%int16 value # 0.1 m/s^2~%uint8 confidence # 0.1 m/s^2~%~%int16 VALUE_UNAVAILABLE = 161~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 101~%uint8 CONFIDENCE_UNAVAILABLE = 102~%~%================================================================================~%MSG: etsi_msgs/Curvature~%int16 value # m^-1~%uint8 confidence~%~%int16 VALUE_RIGHTMOST = -1023~%int16 VALUE_LEFTMOST = 1022~%int16 VALUE_MIN = -1023~%int16 VALUE_MAX = 1022~%int16 VALUE_STRAIGHT = 0~%int16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 6~%uint8 CONFIDENCE_UNAVAILABLE = 7~%~%================================================================================~%MSG: etsi_msgs/CurvatureCalculationMode~%uint8 value~%~%uint8 YAW_RATE_USED = 0~%uint8 YAW_RATE_NOT_USED = 1~%uint8 UNAVAILABLE = 2~%~%================================================================================~%MSG: etsi_msgs/YawRate~%int16 value # 0.01 degree/s~%uint8 confidence~%~%int16 VALUE_UNAVAILABLE = 32767~%~%uint8 CONFIDENCE_0DOT01_DEGSEC = 0~%uint8 CONFIDENCE_0DOT05_DEGSEC = 1~%uint8 CONFIDENCE_0DOT1_DEGSEC = 2~%uint8 CONFIDENCE_1_DEGSEC = 3~%uint8 CONFIDENCE_5_DEGSEC = 4~%uint8 CONFIDENCE_10_DEGSEC = 5~%uint8 CONFIDENCE_100_DEGSEC = 6~%uint8 CONFIDENCE_OUT_OF_RANGE = 7~%uint8 CONFIDENCE_UNAVAILABLE = 8~%~%================================================================================~%MSG: etsi_msgs/AccelerationControl~%uint8 value~%~%uint8 BRAKE_PEDAL_ENGAGED = 1~%uint8 GAS_PEDAL_ENGAGED = 2~%uint8 EMERGENCY_BRAKE_ENGAGED = 4~%uint8 COLLISION_WARNING_ENGAGED = 8~%uint8 ACC_ENGAGED = 16~%uint8 CRUISE_CONTROL_ENGAGED = 32~%uint8 SPEED_LIMITER_ENGAGED = 64~%~%================================================================================~%MSG: etsi_msgs/BasicVehicleContainerLowFrequency~%VehicleRole vehicle_role~%ExteriorLights exterior_lights~%PathHistory path_history~%~%================================================================================~%MSG: etsi_msgs/VehicleRole~%uint8 value~%~%uint8 DEFAULT = 0~%uint8 PUBLIC_TRANSPORT = 1~%uint8 SPECIAL_TRANSPORT = 2~%uint8 DANGEROUS_GOODS = 3~%uint8 ROAD_WORK = 4~%uint8 RESCUE = 5~%uint8 EMERGENCY = 6~%uint8 SAFETY_CAR = 7~%uint8 AGRICULTURE = 8~%uint8 COMMERCIAL = 9~%uint8 MILITARY = 10~%uint8 ROAD_OPERATOR = 11~%uint8 TAXI = 12~%~%================================================================================~%MSG: etsi_msgs/ExteriorLights~%uint8 value~%~%uint8 LOW_BEAM_HEADLIGHTS = 1~%uint8 HIGH_BEAM_HEADLIGHTS = 2~%uint8 LEFT_TURN_SIGNAL = 4~%uint8 RIGHT_TURN_SIGNAL = 8~%uint8 DAYTIME_RUNNING_LIGHTS = 16~%uint8 REVERSE_LIGHT = 32~%uint8 FOG_LIGHT = 64~%uint8 PARKING_LIGHTS = 128~%~%================================================================================~%MSG: etsi_msgs/PathHistory~%PathPoint[] points~%~%================================================================================~%MSG: etsi_msgs/PathPoint~%DeltaReferencePosition path_position~%PathDeltaTime path_delta_time~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CAM>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'its_header))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'station_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'high_frequency_container))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'low_frequency_container))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CAM>))
  "Converts a ROS message object to a list"
  (cl:list 'CAM
    (cl:cons ':header (header msg))
    (cl:cons ':its_header (its_header msg))
    (cl:cons ':generation_delta_time (generation_delta_time msg))
    (cl:cons ':station_type (station_type msg))
    (cl:cons ':reference_position (reference_position msg))
    (cl:cons ':high_frequency_container (high_frequency_container msg))
    (cl:cons ':has_low_frequency_container (has_low_frequency_container msg))
    (cl:cons ':low_frequency_container (low_frequency_container msg))
))
