;; Auto-generated. Do not edit!


(when (boundp 'simu_msgs::simu_CAM)
  (if (not (find-package "SIMU_MSGS"))
    (make-package "SIMU_MSGS"))
  (shadow 'simu_CAM (find-package "SIMU_MSGS")))
(unless (find-package "SIMU_MSGS::SIMU_CAM")
  (make-package "SIMU_MSGS::SIMU_CAM"))

(in-package "ROS")
;;//! \htmlinclude simu_CAM.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass simu_msgs::simu_CAM
  :super ros::object
  :slots (_header _its_header _speed _reference_position _vehicle_length _rank _interdistance _dest ))

(defmethod simu_msgs::simu_CAM
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:its_header __its_header) (instance simu_msgs::ItsPduHeader :init))
    ((:speed __speed) (instance simu_msgs::Speed :init))
    ((:reference_position __reference_position) (instance simu_msgs::ReferencePosition :init))
    ((:vehicle_length __vehicle_length) (instance simu_msgs::VehicleLength :init))
    ((:rank __rank) 0)
    ((:interdistance __interdistance) 0)
    ((:dest __dest) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _its_header __its_header)
   (setq _speed __speed)
   (setq _reference_position __reference_position)
   (setq _vehicle_length __vehicle_length)
   (setq _rank (round __rank))
   (setq _interdistance (round __interdistance))
   (setq _dest (round __dest))
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
  (:speed
   (&rest __speed)
   (if (keywordp (car __speed))
       (send* _speed __speed)
     (progn
       (if __speed (setq _speed (car __speed)))
       _speed)))
  (:reference_position
   (&rest __reference_position)
   (if (keywordp (car __reference_position))
       (send* _reference_position __reference_position)
     (progn
       (if __reference_position (setq _reference_position (car __reference_position)))
       _reference_position)))
  (:vehicle_length
   (&rest __vehicle_length)
   (if (keywordp (car __vehicle_length))
       (send* _vehicle_length __vehicle_length)
     (progn
       (if __vehicle_length (setq _vehicle_length (car __vehicle_length)))
       _vehicle_length)))
  (:rank
   (&optional __rank)
   (if __rank (setq _rank __rank)) _rank)
  (:interdistance
   (&optional __interdistance)
   (if __interdistance (setq _interdistance __interdistance)) _interdistance)
  (:dest
   (&optional __dest)
   (if __dest (setq _dest __dest)) _dest)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; simu_msgs/ItsPduHeader _its_header
    (send _its_header :serialization-length)
    ;; simu_msgs/Speed _speed
    (send _speed :serialization-length)
    ;; simu_msgs/ReferencePosition _reference_position
    (send _reference_position :serialization-length)
    ;; simu_msgs/VehicleLength _vehicle_length
    (send _vehicle_length :serialization-length)
    ;; uint8 _rank
    1
    ;; uint32 _interdistance
    4
    ;; uint8 _dest
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; simu_msgs/ItsPduHeader _its_header
       (send _its_header :serialize s)
     ;; simu_msgs/Speed _speed
       (send _speed :serialize s)
     ;; simu_msgs/ReferencePosition _reference_position
       (send _reference_position :serialize s)
     ;; simu_msgs/VehicleLength _vehicle_length
       (send _vehicle_length :serialize s)
     ;; uint8 _rank
       (write-byte _rank s)
     ;; uint32 _interdistance
       (write-long _interdistance s)
     ;; uint8 _dest
       (write-byte _dest s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; simu_msgs/ItsPduHeader _its_header
     (send _its_header :deserialize buf ptr-) (incf ptr- (send _its_header :serialization-length))
   ;; simu_msgs/Speed _speed
     (send _speed :deserialize buf ptr-) (incf ptr- (send _speed :serialization-length))
   ;; simu_msgs/ReferencePosition _reference_position
     (send _reference_position :deserialize buf ptr-) (incf ptr- (send _reference_position :serialization-length))
   ;; simu_msgs/VehicleLength _vehicle_length
     (send _vehicle_length :deserialize buf ptr-) (incf ptr- (send _vehicle_length :serialization-length))
   ;; uint8 _rank
     (setq _rank (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _interdistance
     (setq _interdistance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _dest
     (setq _dest (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get simu_msgs::simu_CAM :md5sum-) "5589f115a74e70bb753446994398051e")
(setf (get simu_msgs::simu_CAM :datatype-) "simu_msgs/simu_CAM")
(setf (get simu_msgs::simu_CAM :definition-)
      "Header header 
ItsPduHeader its_header
Speed speed
ReferencePosition reference_position
VehicleLength vehicle_length
uint8 rank
uint32 interdistance
uint8 dest
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
MSG: simu_msgs/ItsPduHeader
uint8 protocol_version
uint8 message_id
uint32 station_id

uint8 MESSAGE_ID_DENM = 1
uint8 MESSAGE_ID_CAM = 2

================================================================================
MSG: simu_msgs/Speed
uint16 value # 0.01 m/s
uint8 confidence # 0.01 m/s

uint16 VALUE_STANDSTILL = 0
uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
uint16 VALUE_UNAVAILABLE = 16383

uint8 CONFIDENCE_OUT_OF_RANGE = 126
uint8 CONFIDENCE_UNAVAILABLE = 127

================================================================================
MSG: simu_msgs/ReferencePosition
int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
PositionConfidenceEllipse position_confidence
Altitude altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001

================================================================================
MSG: simu_msgs/PositionConfidenceEllipse
uint16 semi_major_confidence # cm
uint16 semi_minor_confidence # cm
uint16 semi_major_orientation # 0.1 degree

uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095

================================================================================
MSG: simu_msgs/Altitude
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
MSG: simu_msgs/VehicleLength
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

")



(provide :simu_msgs/simu_CAM "5589f115a74e70bb753446994398051e")


