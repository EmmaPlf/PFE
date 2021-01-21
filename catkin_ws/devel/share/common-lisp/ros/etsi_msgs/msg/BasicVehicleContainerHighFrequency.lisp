; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude BasicVehicleContainerHighFrequency.msg.html

(cl:defclass <BasicVehicleContainerHighFrequency> (roslisp-msg-protocol:ros-message)
  ((heading
    :reader heading
    :initarg :heading
    :type etsi_msgs-msg:Heading
    :initform (cl:make-instance 'etsi_msgs-msg:Heading))
   (speed
    :reader speed
    :initarg :speed
    :type etsi_msgs-msg:Speed
    :initform (cl:make-instance 'etsi_msgs-msg:Speed))
   (drive_direction
    :reader drive_direction
    :initarg :drive_direction
    :type etsi_msgs-msg:DriveDirection
    :initform (cl:make-instance 'etsi_msgs-msg:DriveDirection))
   (vehicle_length
    :reader vehicle_length
    :initarg :vehicle_length
    :type etsi_msgs-msg:VehicleLength
    :initform (cl:make-instance 'etsi_msgs-msg:VehicleLength))
   (vehicle_width
    :reader vehicle_width
    :initarg :vehicle_width
    :type etsi_msgs-msg:VehicleWidth
    :initform (cl:make-instance 'etsi_msgs-msg:VehicleWidth))
   (longitudinal_acceleration
    :reader longitudinal_acceleration
    :initarg :longitudinal_acceleration
    :type etsi_msgs-msg:LongitudinalAcceleration
    :initform (cl:make-instance 'etsi_msgs-msg:LongitudinalAcceleration))
   (curvature
    :reader curvature
    :initarg :curvature
    :type etsi_msgs-msg:Curvature
    :initform (cl:make-instance 'etsi_msgs-msg:Curvature))
   (curvature_calculation_mode
    :reader curvature_calculation_mode
    :initarg :curvature_calculation_mode
    :type etsi_msgs-msg:CurvatureCalculationMode
    :initform (cl:make-instance 'etsi_msgs-msg:CurvatureCalculationMode))
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type etsi_msgs-msg:YawRate
    :initform (cl:make-instance 'etsi_msgs-msg:YawRate))
   (has_acceleration_control
    :reader has_acceleration_control
    :initarg :has_acceleration_control
    :type cl:boolean
    :initform cl:nil)
   (acceleration_control
    :reader acceleration_control
    :initarg :acceleration_control
    :type etsi_msgs-msg:AccelerationControl
    :initform (cl:make-instance 'etsi_msgs-msg:AccelerationControl)))
)

(cl:defclass BasicVehicleContainerHighFrequency (<BasicVehicleContainerHighFrequency>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BasicVehicleContainerHighFrequency>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BasicVehicleContainerHighFrequency)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<BasicVehicleContainerHighFrequency> is deprecated: use etsi_msgs-msg:BasicVehicleContainerHighFrequency instead.")))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:heading-val is deprecated.  Use etsi_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:speed-val is deprecated.  Use etsi_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'drive_direction-val :lambda-list '(m))
(cl:defmethod drive_direction-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:drive_direction-val is deprecated.  Use etsi_msgs-msg:drive_direction instead.")
  (drive_direction m))

(cl:ensure-generic-function 'vehicle_length-val :lambda-list '(m))
(cl:defmethod vehicle_length-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:vehicle_length-val is deprecated.  Use etsi_msgs-msg:vehicle_length instead.")
  (vehicle_length m))

(cl:ensure-generic-function 'vehicle_width-val :lambda-list '(m))
(cl:defmethod vehicle_width-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:vehicle_width-val is deprecated.  Use etsi_msgs-msg:vehicle_width instead.")
  (vehicle_width m))

(cl:ensure-generic-function 'longitudinal_acceleration-val :lambda-list '(m))
(cl:defmethod longitudinal_acceleration-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:longitudinal_acceleration-val is deprecated.  Use etsi_msgs-msg:longitudinal_acceleration instead.")
  (longitudinal_acceleration m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:curvature-val is deprecated.  Use etsi_msgs-msg:curvature instead.")
  (curvature m))

(cl:ensure-generic-function 'curvature_calculation_mode-val :lambda-list '(m))
(cl:defmethod curvature_calculation_mode-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:curvature_calculation_mode-val is deprecated.  Use etsi_msgs-msg:curvature_calculation_mode instead.")
  (curvature_calculation_mode m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:yaw_rate-val is deprecated.  Use etsi_msgs-msg:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'has_acceleration_control-val :lambda-list '(m))
(cl:defmethod has_acceleration_control-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:has_acceleration_control-val is deprecated.  Use etsi_msgs-msg:has_acceleration_control instead.")
  (has_acceleration_control m))

(cl:ensure-generic-function 'acceleration_control-val :lambda-list '(m))
(cl:defmethod acceleration_control-val ((m <BasicVehicleContainerHighFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:acceleration_control-val is deprecated.  Use etsi_msgs-msg:acceleration_control instead.")
  (acceleration_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BasicVehicleContainerHighFrequency>) ostream)
  "Serializes a message object of type '<BasicVehicleContainerHighFrequency>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'heading) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drive_direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_length) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_width) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'longitudinal_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curvature) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curvature_calculation_mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'yaw_rate) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_acceleration_control) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BasicVehicleContainerHighFrequency>) istream)
  "Deserializes a message object of type '<BasicVehicleContainerHighFrequency>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'heading) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drive_direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_length) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_width) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'longitudinal_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curvature) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curvature_calculation_mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'yaw_rate) istream)
    (cl:setf (cl:slot-value msg 'has_acceleration_control) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BasicVehicleContainerHighFrequency>)))
  "Returns string type for a message object of type '<BasicVehicleContainerHighFrequency>"
  "etsi_msgs/BasicVehicleContainerHighFrequency")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BasicVehicleContainerHighFrequency)))
  "Returns string type for a message object of type 'BasicVehicleContainerHighFrequency"
  "etsi_msgs/BasicVehicleContainerHighFrequency")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BasicVehicleContainerHighFrequency>)))
  "Returns md5sum for a message object of type '<BasicVehicleContainerHighFrequency>"
  "62bb6a047d37b6cdb33896921037161d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BasicVehicleContainerHighFrequency)))
  "Returns md5sum for a message object of type 'BasicVehicleContainerHighFrequency"
  "62bb6a047d37b6cdb33896921037161d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BasicVehicleContainerHighFrequency>)))
  "Returns full string definition for message of type '<BasicVehicleContainerHighFrequency>"
  (cl:format cl:nil "Heading heading~%Speed speed~%DriveDirection drive_direction~%VehicleLength vehicle_length~%VehicleWidth vehicle_width~%LongitudinalAcceleration longitudinal_acceleration~%Curvature curvature~%CurvatureCalculationMode curvature_calculation_mode~%YawRate yaw_rate~%~%# optional data fields~%bool has_acceleration_control~%AccelerationControl acceleration_control~%~%# TODO further (optional) data fields are missing~%~%================================================================================~%MSG: etsi_msgs/Heading~%uint16 value # 0.1 degree~%uint8 confidence~%~%uint16 VALUE_NORTH = 0~%uint16 VALUE_EAST = 900~%uint16 VALUE_SOUTH = 1800~%uint16 VALUE_WEST = 2700~%uint16 VALUE_UNAVAILABLE = 3601~%~%uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1~%uint8 CONFIDENCE_ONE_DEGREE = 10~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/DriveDirection~%uint8 value~%~%uint8 FORWARD = 0~%uint8 BACKWARD = 1~%uint8 UNAVAILABLE = 2~%~%================================================================================~%MSG: etsi_msgs/VehicleLength~%uint16 value # 0.1 meter~%uint8 confidence_indication~%~%uint16 VALUE_TEN_CENTIMETERS = 1~%uint16 VALUE_OUT_OF_RANGE = 1022~%uint16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2~%uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3~%uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4~%~%================================================================================~%MSG: etsi_msgs/VehicleWidth~%uint8 value # 0.1 meter~%~%uint8 TEN_CENTIMETERS = 1~%uint8 OUT_OF_RANGE = 61~%uint8 UNAVAILABLE = 62~%~%================================================================================~%MSG: etsi_msgs/LongitudinalAcceleration~%int16 value # 0.1 m/s^2~%uint8 confidence # 0.1 m/s^2~%~%int16 VALUE_UNAVAILABLE = 161~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 101~%uint8 CONFIDENCE_UNAVAILABLE = 102~%~%================================================================================~%MSG: etsi_msgs/Curvature~%int16 value # m^-1~%uint8 confidence~%~%int16 VALUE_RIGHTMOST = -1023~%int16 VALUE_LEFTMOST = 1022~%int16 VALUE_MIN = -1023~%int16 VALUE_MAX = 1022~%int16 VALUE_STRAIGHT = 0~%int16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 6~%uint8 CONFIDENCE_UNAVAILABLE = 7~%~%================================================================================~%MSG: etsi_msgs/CurvatureCalculationMode~%uint8 value~%~%uint8 YAW_RATE_USED = 0~%uint8 YAW_RATE_NOT_USED = 1~%uint8 UNAVAILABLE = 2~%~%================================================================================~%MSG: etsi_msgs/YawRate~%int16 value # 0.01 degree/s~%uint8 confidence~%~%int16 VALUE_UNAVAILABLE = 32767~%~%uint8 CONFIDENCE_0DOT01_DEGSEC = 0~%uint8 CONFIDENCE_0DOT05_DEGSEC = 1~%uint8 CONFIDENCE_0DOT1_DEGSEC = 2~%uint8 CONFIDENCE_1_DEGSEC = 3~%uint8 CONFIDENCE_5_DEGSEC = 4~%uint8 CONFIDENCE_10_DEGSEC = 5~%uint8 CONFIDENCE_100_DEGSEC = 6~%uint8 CONFIDENCE_OUT_OF_RANGE = 7~%uint8 CONFIDENCE_UNAVAILABLE = 8~%~%================================================================================~%MSG: etsi_msgs/AccelerationControl~%uint8 value~%~%uint8 BRAKE_PEDAL_ENGAGED = 1~%uint8 GAS_PEDAL_ENGAGED = 2~%uint8 EMERGENCY_BRAKE_ENGAGED = 4~%uint8 COLLISION_WARNING_ENGAGED = 8~%uint8 ACC_ENGAGED = 16~%uint8 CRUISE_CONTROL_ENGAGED = 32~%uint8 SPEED_LIMITER_ENGAGED = 64~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BasicVehicleContainerHighFrequency)))
  "Returns full string definition for message of type 'BasicVehicleContainerHighFrequency"
  (cl:format cl:nil "Heading heading~%Speed speed~%DriveDirection drive_direction~%VehicleLength vehicle_length~%VehicleWidth vehicle_width~%LongitudinalAcceleration longitudinal_acceleration~%Curvature curvature~%CurvatureCalculationMode curvature_calculation_mode~%YawRate yaw_rate~%~%# optional data fields~%bool has_acceleration_control~%AccelerationControl acceleration_control~%~%# TODO further (optional) data fields are missing~%~%================================================================================~%MSG: etsi_msgs/Heading~%uint16 value # 0.1 degree~%uint8 confidence~%~%uint16 VALUE_NORTH = 0~%uint16 VALUE_EAST = 900~%uint16 VALUE_SOUTH = 1800~%uint16 VALUE_WEST = 2700~%uint16 VALUE_UNAVAILABLE = 3601~%~%uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1~%uint8 CONFIDENCE_ONE_DEGREE = 10~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: etsi_msgs/DriveDirection~%uint8 value~%~%uint8 FORWARD = 0~%uint8 BACKWARD = 1~%uint8 UNAVAILABLE = 2~%~%================================================================================~%MSG: etsi_msgs/VehicleLength~%uint16 value # 0.1 meter~%uint8 confidence_indication~%~%uint16 VALUE_TEN_CENTIMETERS = 1~%uint16 VALUE_OUT_OF_RANGE = 1022~%uint16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2~%uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3~%uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4~%~%================================================================================~%MSG: etsi_msgs/VehicleWidth~%uint8 value # 0.1 meter~%~%uint8 TEN_CENTIMETERS = 1~%uint8 OUT_OF_RANGE = 61~%uint8 UNAVAILABLE = 62~%~%================================================================================~%MSG: etsi_msgs/LongitudinalAcceleration~%int16 value # 0.1 m/s^2~%uint8 confidence # 0.1 m/s^2~%~%int16 VALUE_UNAVAILABLE = 161~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 101~%uint8 CONFIDENCE_UNAVAILABLE = 102~%~%================================================================================~%MSG: etsi_msgs/Curvature~%int16 value # m^-1~%uint8 confidence~%~%int16 VALUE_RIGHTMOST = -1023~%int16 VALUE_LEFTMOST = 1022~%int16 VALUE_MIN = -1023~%int16 VALUE_MAX = 1022~%int16 VALUE_STRAIGHT = 0~%int16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 6~%uint8 CONFIDENCE_UNAVAILABLE = 7~%~%================================================================================~%MSG: etsi_msgs/CurvatureCalculationMode~%uint8 value~%~%uint8 YAW_RATE_USED = 0~%uint8 YAW_RATE_NOT_USED = 1~%uint8 UNAVAILABLE = 2~%~%================================================================================~%MSG: etsi_msgs/YawRate~%int16 value # 0.01 degree/s~%uint8 confidence~%~%int16 VALUE_UNAVAILABLE = 32767~%~%uint8 CONFIDENCE_0DOT01_DEGSEC = 0~%uint8 CONFIDENCE_0DOT05_DEGSEC = 1~%uint8 CONFIDENCE_0DOT1_DEGSEC = 2~%uint8 CONFIDENCE_1_DEGSEC = 3~%uint8 CONFIDENCE_5_DEGSEC = 4~%uint8 CONFIDENCE_10_DEGSEC = 5~%uint8 CONFIDENCE_100_DEGSEC = 6~%uint8 CONFIDENCE_OUT_OF_RANGE = 7~%uint8 CONFIDENCE_UNAVAILABLE = 8~%~%================================================================================~%MSG: etsi_msgs/AccelerationControl~%uint8 value~%~%uint8 BRAKE_PEDAL_ENGAGED = 1~%uint8 GAS_PEDAL_ENGAGED = 2~%uint8 EMERGENCY_BRAKE_ENGAGED = 4~%uint8 COLLISION_WARNING_ENGAGED = 8~%uint8 ACC_ENGAGED = 16~%uint8 CRUISE_CONTROL_ENGAGED = 32~%uint8 SPEED_LIMITER_ENGAGED = 64~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BasicVehicleContainerHighFrequency>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'heading))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drive_direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_length))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_width))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'longitudinal_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curvature))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curvature_calculation_mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'yaw_rate))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BasicVehicleContainerHighFrequency>))
  "Converts a ROS message object to a list"
  (cl:list 'BasicVehicleContainerHighFrequency
    (cl:cons ':heading (heading msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':drive_direction (drive_direction msg))
    (cl:cons ':vehicle_length (vehicle_length msg))
    (cl:cons ':vehicle_width (vehicle_width msg))
    (cl:cons ':longitudinal_acceleration (longitudinal_acceleration msg))
    (cl:cons ':curvature (curvature msg))
    (cl:cons ':curvature_calculation_mode (curvature_calculation_mode msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':has_acceleration_control (has_acceleration_control msg))
    (cl:cons ':acceleration_control (acceleration_control msg))
))
