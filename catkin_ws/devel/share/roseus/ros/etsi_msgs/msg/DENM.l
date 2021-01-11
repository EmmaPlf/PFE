;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::DENM)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'DENM (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::DENM")
  (make-package "ETSI_MSGS::DENM"))

(in-package "ROS")
;;//! \htmlinclude DENM.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass etsi_msgs::DENM
  :super ros::object
  :slots (_header _its_header _management _has_situation _situation _has_location _location ))

(defmethod etsi_msgs::DENM
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:its_header __its_header) (instance etsi_msgs::ItsPduHeader :init))
    ((:management __management) (instance etsi_msgs::ManagementContainer :init))
    ((:has_situation __has_situation) nil)
    ((:situation __situation) (instance etsi_msgs::SituationContainer :init))
    ((:has_location __has_location) nil)
    ((:location __location) (instance etsi_msgs::LocationContainer :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _its_header __its_header)
   (setq _management __management)
   (setq _has_situation __has_situation)
   (setq _situation __situation)
   (setq _has_location __has_location)
   (setq _location __location)
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
  (:management
   (&rest __management)
   (if (keywordp (car __management))
       (send* _management __management)
     (progn
       (if __management (setq _management (car __management)))
       _management)))
  (:has_situation
   (&optional __has_situation)
   (if __has_situation (setq _has_situation __has_situation)) _has_situation)
  (:situation
   (&rest __situation)
   (if (keywordp (car __situation))
       (send* _situation __situation)
     (progn
       (if __situation (setq _situation (car __situation)))
       _situation)))
  (:has_location
   (&optional __has_location)
   (if __has_location (setq _has_location __has_location)) _has_location)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; etsi_msgs/ItsPduHeader _its_header
    (send _its_header :serialization-length)
    ;; etsi_msgs/ManagementContainer _management
    (send _management :serialization-length)
    ;; bool _has_situation
    1
    ;; etsi_msgs/SituationContainer _situation
    (send _situation :serialization-length)
    ;; bool _has_location
    1
    ;; etsi_msgs/LocationContainer _location
    (send _location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; etsi_msgs/ItsPduHeader _its_header
       (send _its_header :serialize s)
     ;; etsi_msgs/ManagementContainer _management
       (send _management :serialize s)
     ;; bool _has_situation
       (if _has_situation (write-byte -1 s) (write-byte 0 s))
     ;; etsi_msgs/SituationContainer _situation
       (send _situation :serialize s)
     ;; bool _has_location
       (if _has_location (write-byte -1 s) (write-byte 0 s))
     ;; etsi_msgs/LocationContainer _location
       (send _location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; etsi_msgs/ItsPduHeader _its_header
     (send _its_header :deserialize buf ptr-) (incf ptr- (send _its_header :serialization-length))
   ;; etsi_msgs/ManagementContainer _management
     (send _management :deserialize buf ptr-) (incf ptr- (send _management :serialization-length))
   ;; bool _has_situation
     (setq _has_situation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; etsi_msgs/SituationContainer _situation
     (send _situation :deserialize buf ptr-) (incf ptr- (send _situation :serialization-length))
   ;; bool _has_location
     (setq _has_location (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; etsi_msgs/LocationContainer _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;;
   self)
  )

(setf (get etsi_msgs::DENM :md5sum-) "d0bac7531dd1fb966b1efa93ca520d89")
(setf (get etsi_msgs::DENM :datatype-) "etsi_msgs/DENM")
(setf (get etsi_msgs::DENM :definition-)
      "Header header
ItsPduHeader its_header

ManagementContainer management

bool has_situation
SituationContainer situation

bool has_location
LocationContainer location

# TODO AlacarteContainer is missing

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
MSG: etsi_msgs/ManagementContainer
ActionID action_id
uint64 detection_time # ms since 2004
uint64 reference_time # ms since 2004
uint8 termination
ReferencePosition event_position
RelevanceDistance relevance_distance
RelevanceTrafficDirection relevance_traffic_direction
uint32 validity_duration # seconds
uint32 transmission_interval # milliseconds
StationType station_type

uint8 TERMINATION_CANCELLATION = 0
uint8 TERMINATION_NEGATION = 1
uint8 TERMINATION_UNAVAILABLE = 255

uint32 TRANSMISSION_INTERVAL_ONE_MILLISECOND = 1
uint32 TRANSMISSION_INTERVAL_TEN_SECONDS = 10000
uint32 TRANSMISSION_INTERVAL_UNAVAILABLE = 0

uint32 VALIDITY_DURATION_DEFAULT = 600
uint32 VALIDITY_DURATION_TIME_OF_DETECTION = 0
uint32 VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION = 1

================================================================================
MSG: etsi_msgs/ActionID
uint32 station_id
uint16 sequence_number

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
MSG: etsi_msgs/RelevanceDistance
uint8 value

uint8 LESS_THAN_50M = 0
uint8 LESS_THAN_100M = 1
uint8 LESS_THAN_200M = 2
uint8 LESS_THAN_500M = 3
uint8 LESS_THAN_1000M = 4
uint8 LESS_THAN_5KM = 5
uint8 LESS_THAN_10KM = 6
uint8 OVER_10KM = 7
uint8 UNAVAILABLE = 255

================================================================================
MSG: etsi_msgs/RelevanceTrafficDirection
uint8 value

uint8 ALL_TRAFFIC_DIRECTIONS = 0
uint8 UPSTREAM_TRAFFIC = 1
uint8 DOWNSTREAM_TRAFFIC = 2
uint8 OPPOSITE_TRAFFIC = 3
uint8 UNAVAILABLE = 255 # extension to encode optional traffic directions

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
MSG: etsi_msgs/SituationContainer
InformationQuality information_quality
CauseCode event_type
bool has_linked_cause
CauseCode linked_cause
EventPoint[] event_history

================================================================================
MSG: etsi_msgs/InformationQuality
int8 value

int8 UNAVAILABLE = 0
int8 LOWEST = 1
int8 HIGHEST = 7

================================================================================
MSG: etsi_msgs/CauseCode
uint8 cause_code
uint8 sub_cause_code

uint8 RESERVED = 0
uint8 TRAFFIC_CONDITION = 1
uint8 ACCIDENT = 2
uint8 ROADWORKS = 3
uint8 ADVERSE_WEATHER_CONDITIONS_ADHESION = 4
uint8 HAZARDOUS_LOCATION_SURFACE_CONDITION = 9
uint8 HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD = 10
uint8 HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD = 11
uint8 HUMAN_PRESENCE_ON_THE_ROAD = 12
uint8 WRONG_WAY_DRIVING = 14
uint8 RESCUE_AND_RECOVERY_WORK_IN_PROGRESS = 15
uint8 ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION = 17
uint8 ADVERSE_WEATHER_CONDITIONS_VISIBILITY = 18
uint8 ADVERSE_WEATHER_CONDITIONS_PRECIPITATION = 19
uint8 SLOW_VEHICLE = 26
uint8 DANGEROUS_END_OF_QUEUE = 27
uint8 VEHICLE_BREAKDOWN = 91
uint8 POST_CRASH = 92
uint8 HUMAN_PROBLEM = 93
uint8 STATIONARY_VEHICLE = 94
uint8 EMERGENCY_VEHICLE_APPROACHING = 95
uint8 HAZARDOUS_LOCATION_DANGEROUS_CURVE = 96
uint8 COLLISION_RISK = 97
uint8 SIGNAL_VIOLATION = 98
uint8 DANGEROUS_SITUATION = 99

================================================================================
MSG: etsi_msgs/EventPoint
DeltaReferencePosition event_position
PathDeltaTime event_delta_time
InformationQuality information_quality

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

================================================================================
MSG: etsi_msgs/LocationContainer
Speed event_speed
Heading event_position_heading
PathHistory[] traces
uint8 road_type

uint8 ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 0
uint8 ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 1
uint8 ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 2
uint8 ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 3
uint8 ROAD_TYPE_UNAVAILABLE = 255

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
MSG: etsi_msgs/PathHistory
PathPoint[] points

================================================================================
MSG: etsi_msgs/PathPoint
DeltaReferencePosition path_position
PathDeltaTime path_delta_time

")



(provide :etsi_msgs/DENM "d0bac7531dd1fb966b1efa93ca520d89")


