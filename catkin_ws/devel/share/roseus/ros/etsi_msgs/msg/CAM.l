;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::CAM)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'CAM (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::CAM")
  (make-package "ETSI_MSGS::CAM"))

(in-package "ROS")
;;//! \htmlinclude CAM.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass etsi_msgs::CAM
  :super ros::object
  :slots (_header _its_header _generation_delta_time _station_type _reference_position _high_frequency_container _has_low_frequency_container _low_frequency_container ))

(defmethod etsi_msgs::CAM
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:its_header __its_header) (instance etsi_msgs::ItsPduHeader :init))
    ((:generation_delta_time __generation_delta_time) 0)
    ((:station_type __station_type) (instance etsi_msgs::StationType :init))
    ((:reference_position __reference_position) (instance etsi_msgs::ReferencePosition :init))
    ((:high_frequency_container __high_frequency_container) (instance etsi_msgs::BasicVehicleContainerHighFrequency :init))
    ((:has_low_frequency_container __has_low_frequency_container) nil)
    ((:low_frequency_container __low_frequency_container) (instance etsi_msgs::BasicVehicleContainerLowFrequency :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _its_header __its_header)
   (setq _generation_delta_time (round __generation_delta_time))
   (setq _station_type __station_type)
   (setq _reference_position __reference_position)
   (setq _high_frequency_container __high_frequency_container)
   (setq _has_low_frequency_container __has_low_frequency_container)
   (setq _low_frequency_container __low_frequency_container)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:its_header
   (&rest __its_header)
   (if (keywordp (car __its_header))
       (send* _its_header __its_header)
     (progn
       (if __its_header (setq _its_header (car __its_header)))
       _its_header)))
  (:generation_delta_time
   (&optional __generation_delta_time)
   (if __generation_delta_time (setq _generation_delta_time __generation_delta_time)) _generation_delta_time)
  (:station_type
   (&rest __station_type)
   (if (keywordp (car __station_type))
       (send* _station_type __station_type)
     (progn
       (if __station_type (setq _station_type (car __station_type)))
       _station_type)))
  (:reference_position
   (&rest __reference_position)
   (if (keywordp (car __reference_position))
       (send* _reference_position __reference_position)
     (progn
       (if __reference_position (setq _reference_position (car __reference_position)))
       _reference_position)))
  (:high_frequency_container
   (&rest __high_frequency_container)
   (if (keywordp (car __high_frequency_container))
       (send* _high_frequency_container __high_frequency_container)
     (progn
       (if __high_frequency_container (setq _high_frequency_container (car __high_frequency_container)))
       _high_frequency_container)))
  (:has_low_frequency_container
   (&optional __has_low_frequency_container)
   (if __has_low_frequency_container (setq _has_low_frequency_container __has_low_frequency_container)) _has_low_frequency_container)
  (:low_frequency_container
   (&rest __low_frequency_container)
   (if (keywordp (car __low_frequency_container))
       (send* _low_frequency_container __low_frequency_container)
     (progn
       (if __low_frequency_container (setq _low_frequency_container (car __low_frequency_container)))
       _low_frequency_container)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; etsi_msgs/ItsPduHeader _its_header
    (send _its_header :serialization-length)
    ;; uint16 _generation_delta_time
    2
    ;; etsi_msgs/StationType _station_type
    (send _station_type :serialization-length)
    ;; etsi_msgs/ReferencePosition _reference_position
    (send _reference_position :serialization-length)
    ;; etsi_msgs/BasicVehicleContainerHighFrequency _high_frequency_container
    (send _high_frequency_container :serialization-length)
    ;; bool _has_low_frequency_container
    1
    ;; etsi_msgs/BasicVehicleContainerLowFrequency _low_frequency_container
    (send _low_frequency_container :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; etsi_msgs/ItsPduHeader _its_header
       (send _its_header :serialize s)
     ;; uint16 _generation_delta_time
       (write-word _generation_delta_time s)
     ;; etsi_msgs/StationType _station_type
       (send _station_type :serialize s)
     ;; etsi_msgs/ReferencePosition _reference_position
       (send _reference_position :serialize s)
     ;; etsi_msgs/BasicVehicleContainerHighFrequency _high_frequency_container
       (send _high_frequency_container :serialize s)
     ;; bool _has_low_frequency_container
       (if _has_low_frequency_container (write-byte -1 s) (write-byte 0 s))
     ;; etsi_msgs/BasicVehicleContainerLowFrequency _low_frequency_container
       (send _low_frequency_container :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; etsi_msgs/ItsPduHeader _its_header
     (send _its_header :deserialize buf ptr-) (incf ptr- (send _its_header :serialization-length))
   ;; uint16 _generation_delta_time
     (setq _generation_delta_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; etsi_msgs/StationType _station_type
     (send _station_type :deserialize buf ptr-) (incf ptr- (send _station_type :serialization-length))
   ;; etsi_msgs/ReferencePosition _reference_position
     (send _reference_position :deserialize buf ptr-) (incf ptr- (send _reference_position :serialization-length))
   ;; etsi_msgs/BasicVehicleContainerHighFrequency _high_frequency_container
     (send _high_frequency_container :deserialize buf ptr-) (incf ptr- (send _high_frequency_container :serialization-length))
   ;; bool _has_low_frequency_container
     (setq _has_low_frequency_container (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; etsi_msgs/BasicVehicleContainerLowFrequency _low_frequency_container
     (send _low_frequency_container :deserialize buf ptr-) (incf ptr- (send _low_frequency_container :serialization-length))
   ;;
   self)
  )

(setf (get etsi_msgs::CAM :md5sum-) "d9e063e63c0b4bc09200e32f37bfbef3")
(setf (get etsi_msgs::CAM :datatype-) "etsi_msgs/CAM")
(setf (get etsi_msgs::CAM :definition-)
      "Header header
ItsPduHeader its_header
uint16 generation_delta_time # milliseconds since 2004 modulo 2^16

# basic container
StationType station_type
ReferencePosition reference_position

# TODO either BasicVehicle or RSU
BasicVehicleContainerHighFrequency high_frequency_container

bool has_low_frequency_container
BasicVehicleContainerLowFrequency low_frequency_container

# TODO special vehicle container is missing

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: etsi_msgs/ItsPduHeader
uint8 protocol_version
uint8 message_id
uint32 station_id

uint8 MESSAGE_ID_DENM = 1
uint8 MESSAGE_ID_CAM = 2
uint8 MESSAGE_ID_ECE = 3

================================================================================
MSG: etsi_msgs/StationType
uint8 value

uint8 UNKNOWN = 0
uint8 PEDESTRIAN = 1
uint8 CYCLIST = 2
uint8 MOPED = 3
uint8 MOTORCYCLE = 4
uint8 PASSENGER_CAR = 5
uint8 BUS = 6
uint8 LIGHT_TRUCK = 7
uint8 HEAVY_TRUCK = 8
uint8 TRAILER = 9
uint8 SPECIAL_VEHICLE = 10
uint8 TRAM = 11
uint8 ROAD_SIDE_UNIT = 15

================================================================================
MSG: etsi_msgs/ReferencePosition
int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
PositionConfidenceEllipse position_confidence
Altitude altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001

================================================================================
MSG: etsi_msgs/PositionConfidenceEllipse
uint16 semi_major_confidence # cm
uint16 semi_minor_confidence # cm
uint16 semi_major_orientation # 0.1 degree

uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095

================================================================================
MSG: etsi_msgs/Altitude
int32 value # 0.01 meter
uint8 confidence

int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0
int32 VALUE_ONE_CENTIMETER = 1
int32 VALUE_UNAVAILABLE = 800001

uint8 CONFIDENCE_1CM = 0
uint8 CONFIDENCE_2CM = 1
uint8 CONFIDENCE_5CM = 2
uint8 CONFIDENCE_10CM = 3
uint8 CONFIDENCE_20CM = 4
uint8 CONFIDENCE_50CM = 5
uint8 CONFIDENCE_1M = 6
uint8 CONFIDENCE_2M = 7
uint8 CONFIDENCE_5M = 8
uint8 CONFIDENCE_10M = 9
uint8 CONFIDENCE_20M = 10
uint8 CONFIDENCE_50M = 11
uint8 CONFIDENCE_100M = 12
uint8 CONFIDENCE_200M = 13
uint8 CONFIDENCE_OUT_OF_RANGE = 14
uint8 CONFIDENCE_UNAVAILABLE = 15

================================================================================
MSG: etsi_msgs/BasicVehicleContainerHighFrequency
Heading heading
Speed speed
DriveDirection drive_direction
VehicleLength vehicle_length
VehicleWidth vehicle_width
LongitudinalAcceleration longitudinal_acceleration
Curvature curvature
CurvatureCalculationMode curvature_calculation_mode
YawRate yaw_rate

# optional data fields
bool has_acceleration_control
AccelerationControl acceleration_control

# TODO further (optional) data fields are missing

================================================================================
MSG: etsi_msgs/Heading
uint16 value # 0.1 degree
uint8 confidence

uint16 VALUE_NORTH = 0
uint16 VALUE_EAST = 900
uint16 VALUE_SOUTH = 1800
uint16 VALUE_WEST = 2700
uint16 VALUE_UNAVAILABLE = 3601

uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1
uint8 CONFIDENCE_ONE_DEGREE = 10
uint8 CONFIDENCE_OUT_OF_RANGE = 126
uint8 CONFIDENCE_UNAVAILABLE = 127

================================================================================
MSG: etsi_msgs/Speed
uint16 value # 0.01 m/s
uint8 confidence # 0.01 m/s

uint16 VALUE_STANDSTILL = 0
uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
uint16 VALUE_UNAVAILABLE = 16383

uint8 CONFIDENCE_OUT_OF_RANGE = 126
uint8 CONFIDENCE_UNAVAILABLE = 127

================================================================================
MSG: etsi_msgs/DriveDirection
uint8 value

uint8 FORWARD = 0
uint8 BACKWARD = 1
uint8 UNAVAILABLE = 2

================================================================================
MSG: etsi_msgs/VehicleLength
uint16 value # 0.1 meter
uint8 confidence_indication

uint16 VALUE_TEN_CENTIMETERS = 1
uint16 VALUE_OUT_OF_RANGE = 1022
uint16 VALUE_UNAVAILABLE = 1023

uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0
uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1
uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2
uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3
uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4

================================================================================
MSG: etsi_msgs/VehicleWidth
uint8 value # 0.1 meter

uint8 TEN_CENTIMETERS = 1
uint8 OUT_OF_RANGE = 61
uint8 UNAVAILABLE = 62

================================================================================
MSG: etsi_msgs/LongitudinalAcceleration
int16 value # 0.1 m/s^2
uint8 confidence # 0.1 m/s^2

int16 VALUE_UNAVAILABLE = 161

uint8 CONFIDENCE_OUT_OF_RANGE = 101
uint8 CONFIDENCE_UNAVAILABLE = 102

================================================================================
MSG: etsi_msgs/Curvature
int16 value # m^-1
uint8 confidence

int16 VALUE_RIGHTMOST = -1023
int16 VALUE_LEFTMOST = 1022
int16 VALUE_MIN = -1023
int16 VALUE_MAX = 1022
int16 VALUE_STRAIGHT = 0
int16 VALUE_UNAVAILABLE = 1023

uint8 CONFIDENCE_OUT_OF_RANGE = 6
uint8 CONFIDENCE_UNAVAILABLE = 7

================================================================================
MSG: etsi_msgs/CurvatureCalculationMode
uint8 value

uint8 YAW_RATE_USED = 0
uint8 YAW_RATE_NOT_USED = 1
uint8 UNAVAILABLE = 2

================================================================================
MSG: etsi_msgs/YawRate
int16 value # 0.01 degree/s
uint8 confidence

int16 VALUE_UNAVAILABLE = 32767

uint8 CONFIDENCE_0DOT01_DEGSEC = 0
uint8 CONFIDENCE_0DOT05_DEGSEC = 1
uint8 CONFIDENCE_0DOT1_DEGSEC = 2
uint8 CONFIDENCE_1_DEGSEC = 3
uint8 CONFIDENCE_5_DEGSEC = 4
uint8 CONFIDENCE_10_DEGSEC = 5
uint8 CONFIDENCE_100_DEGSEC = 6
uint8 CONFIDENCE_OUT_OF_RANGE = 7
uint8 CONFIDENCE_UNAVAILABLE = 8

================================================================================
MSG: etsi_msgs/AccelerationControl
uint8 value

uint8 BRAKE_PEDAL_ENGAGED = 1
uint8 GAS_PEDAL_ENGAGED = 2
uint8 EMERGENCY_BRAKE_ENGAGED = 4
uint8 COLLISION_WARNING_ENGAGED = 8
uint8 ACC_ENGAGED = 16
uint8 CRUISE_CONTROL_ENGAGED = 32
uint8 SPEED_LIMITER_ENGAGED = 64

================================================================================
MSG: etsi_msgs/BasicVehicleContainerLowFrequency
VehicleRole vehicle_role
ExteriorLights exterior_lights
PathHistory path_history

================================================================================
MSG: etsi_msgs/VehicleRole
uint8 value

uint8 DEFAULT = 0
uint8 PUBLIC_TRANSPORT = 1
uint8 SPECIAL_TRANSPORT = 2
uint8 DANGEROUS_GOODS = 3
uint8 ROAD_WORK = 4
uint8 RESCUE = 5
uint8 EMERGENCY = 6
uint8 SAFETY_CAR = 7
uint8 AGRICULTURE = 8
uint8 COMMERCIAL = 9
uint8 MILITARY = 10
uint8 ROAD_OPERATOR = 11
uint8 TAXI = 12

================================================================================
MSG: etsi_msgs/ExteriorLights
uint8 value

uint8 LOW_BEAM_HEADLIGHTS = 1
uint8 HIGH_BEAM_HEADLIGHTS = 2
uint8 LEFT_TURN_SIGNAL = 4
uint8 RIGHT_TURN_SIGNAL = 8
uint8 DAYTIME_RUNNING_LIGHTS = 16
uint8 REVERSE_LIGHT = 32
uint8 FOG_LIGHT = 64
uint8 PARKING_LIGHTS = 128

================================================================================
MSG: etsi_msgs/PathHistory
PathPoint[] points

================================================================================
MSG: etsi_msgs/PathPoint
DeltaReferencePosition path_position
PathDeltaTime path_delta_time

================================================================================
MSG: etsi_msgs/DeltaReferencePosition
int32 delta_latitude # 0.1 micro degree
int32 delta_longitude # 0.1 micro degree
int16 delta_altitude # centimeter

int32 ONE_MICRODEGREE_NORTH = 10
int32 ONE_MICRODEGREE_SOUTH = -10
int32 ONE_MICRODEGREE_EAST = 10
int32 ONE_MICRODEGREE_WEST = -10
int32 ONE_CENTIMETER_UP = 1
int32 ONE_CENTIMETER_DOWN = -1
int32 LATITUDE_UNAVAILABLE = 131072
int32 LONGITUDE_UNAVAILABLE = 131072
int16 ALTITUDE_UNAVAILABLE = 12800

================================================================================
MSG: etsi_msgs/PathDeltaTime
uint16 value # 10 ms

uint16 UNAVAILABLE = 0
uint16 TEN_MILLISECONDS_IN_PAST = 1

")



(provide :etsi_msgs/CAM "d9e063e63c0b4bc09200e32f37bfbef3")


