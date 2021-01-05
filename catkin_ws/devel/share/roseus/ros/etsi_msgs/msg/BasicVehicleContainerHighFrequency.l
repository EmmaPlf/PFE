;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::BasicVehicleContainerHighFrequency)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'BasicVehicleContainerHighFrequency (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::BASICVEHICLECONTAINERHIGHFREQUENCY")
  (make-package "ETSI_MSGS::BASICVEHICLECONTAINERHIGHFREQUENCY"))

(in-package "ROS")
;;//! \htmlinclude BasicVehicleContainerHighFrequency.msg.html


(defclass etsi_msgs::BasicVehicleContainerHighFrequency
  :super ros::object
  :slots (_heading _speed _drive_direction _vehicle_length _vehicle_width _longitudinal_acceleration _curvature _curvature_calculation_mode _yaw_rate _has_acceleration_control _acceleration_control ))

(defmethod etsi_msgs::BasicVehicleContainerHighFrequency
  (:init
   (&key
    ((:heading __heading) (instance etsi_msgs::Heading :init))
    ((:speed __speed) (instance etsi_msgs::Speed :init))
    ((:drive_direction __drive_direction) (instance etsi_msgs::DriveDirection :init))
    ((:vehicle_length __vehicle_length) (instance etsi_msgs::VehicleLength :init))
    ((:vehicle_width __vehicle_width) (instance etsi_msgs::VehicleWidth :init))
    ((:longitudinal_acceleration __longitudinal_acceleration) (instance etsi_msgs::LongitudinalAcceleration :init))
    ((:curvature __curvature) (instance etsi_msgs::Curvature :init))
    ((:curvature_calculation_mode __curvature_calculation_mode) (instance etsi_msgs::CurvatureCalculationMode :init))
    ((:yaw_rate __yaw_rate) (instance etsi_msgs::YawRate :init))
    ((:has_acceleration_control __has_acceleration_control) nil)
    ((:acceleration_control __acceleration_control) (instance etsi_msgs::AccelerationControl :init))
    )
   (send-super :init)
   (setq _heading __heading)
   (setq _speed __speed)
   (setq _drive_direction __drive_direction)
   (setq _vehicle_length __vehicle_length)
   (setq _vehicle_width __vehicle_width)
   (setq _longitudinal_acceleration __longitudinal_acceleration)
   (setq _curvature __curvature)
   (setq _curvature_calculation_mode __curvature_calculation_mode)
   (setq _yaw_rate __yaw_rate)
   (setq _has_acceleration_control __has_acceleration_control)
   (setq _acceleration_control __acceleration_control)
   self)
  (:heading
   (&rest __heading)
   (if (keywordp (car __heading))
       (send* _heading __heading)
     (progn
       (if __heading (setq _heading (car __heading)))
       _heading)))
  (:speed
   (&rest __speed)
   (if (keywordp (car __speed))
       (send* _speed __speed)
     (progn
       (if __speed (setq _speed (car __speed)))
       _speed)))
  (:drive_direction
   (&rest __drive_direction)
   (if (keywordp (car __drive_direction))
       (send* _drive_direction __drive_direction)
     (progn
       (if __drive_direction (setq _drive_direction (car __drive_direction)))
       _drive_direction)))
  (:vehicle_length
   (&rest __vehicle_length)
   (if (keywordp (car __vehicle_length))
       (send* _vehicle_length __vehicle_length)
     (progn
       (if __vehicle_length (setq _vehicle_length (car __vehicle_length)))
       _vehicle_length)))
  (:vehicle_width
   (&rest __vehicle_width)
   (if (keywordp (car __vehicle_width))
       (send* _vehicle_width __vehicle_width)
     (progn
       (if __vehicle_width (setq _vehicle_width (car __vehicle_width)))
       _vehicle_width)))
  (:longitudinal_acceleration
   (&rest __longitudinal_acceleration)
   (if (keywordp (car __longitudinal_acceleration))
       (send* _longitudinal_acceleration __longitudinal_acceleration)
     (progn
       (if __longitudinal_acceleration (setq _longitudinal_acceleration (car __longitudinal_acceleration)))
       _longitudinal_acceleration)))
  (:curvature
   (&rest __curvature)
   (if (keywordp (car __curvature))
       (send* _curvature __curvature)
     (progn
       (if __curvature (setq _curvature (car __curvature)))
       _curvature)))
  (:curvature_calculation_mode
   (&rest __curvature_calculation_mode)
   (if (keywordp (car __curvature_calculation_mode))
       (send* _curvature_calculation_mode __curvature_calculation_mode)
     (progn
       (if __curvature_calculation_mode (setq _curvature_calculation_mode (car __curvature_calculation_mode)))
       _curvature_calculation_mode)))
  (:yaw_rate
   (&rest __yaw_rate)
   (if (keywordp (car __yaw_rate))
       (send* _yaw_rate __yaw_rate)
     (progn
       (if __yaw_rate (setq _yaw_rate (car __yaw_rate)))
       _yaw_rate)))
  (:has_acceleration_control
   (&optional __has_acceleration_control)
   (if __has_acceleration_control (setq _has_acceleration_control __has_acceleration_control)) _has_acceleration_control)
  (:acceleration_control
   (&rest __acceleration_control)
   (if (keywordp (car __acceleration_control))
       (send* _acceleration_control __acceleration_control)
     (progn
       (if __acceleration_control (setq _acceleration_control (car __acceleration_control)))
       _acceleration_control)))
  (:serialization-length
   ()
   (+
    ;; etsi_msgs/Heading _heading
    (send _heading :serialization-length)
    ;; etsi_msgs/Speed _speed
    (send _speed :serialization-length)
    ;; etsi_msgs/DriveDirection _drive_direction
    (send _drive_direction :serialization-length)
    ;; etsi_msgs/VehicleLength _vehicle_length
    (send _vehicle_length :serialization-length)
    ;; etsi_msgs/VehicleWidth _vehicle_width
    (send _vehicle_width :serialization-length)
    ;; etsi_msgs/LongitudinalAcceleration _longitudinal_acceleration
    (send _longitudinal_acceleration :serialization-length)
    ;; etsi_msgs/Curvature _curvature
    (send _curvature :serialization-length)
    ;; etsi_msgs/CurvatureCalculationMode _curvature_calculation_mode
    (send _curvature_calculation_mode :serialization-length)
    ;; etsi_msgs/YawRate _yaw_rate
    (send _yaw_rate :serialization-length)
    ;; bool _has_acceleration_control
    1
    ;; etsi_msgs/AccelerationControl _acceleration_control
    (send _acceleration_control :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; etsi_msgs/Heading _heading
       (send _heading :serialize s)
     ;; etsi_msgs/Speed _speed
       (send _speed :serialize s)
     ;; etsi_msgs/DriveDirection _drive_direction
       (send _drive_direction :serialize s)
     ;; etsi_msgs/VehicleLength _vehicle_length
       (send _vehicle_length :serialize s)
     ;; etsi_msgs/VehicleWidth _vehicle_width
       (send _vehicle_width :serialize s)
     ;; etsi_msgs/LongitudinalAcceleration _longitudinal_acceleration
       (send _longitudinal_acceleration :serialize s)
     ;; etsi_msgs/Curvature _curvature
       (send _curvature :serialize s)
     ;; etsi_msgs/CurvatureCalculationMode _curvature_calculation_mode
       (send _curvature_calculation_mode :serialize s)
     ;; etsi_msgs/YawRate _yaw_rate
       (send _yaw_rate :serialize s)
     ;; bool _has_acceleration_control
       (if _has_acceleration_control (write-byte -1 s) (write-byte 0 s))
     ;; etsi_msgs/AccelerationControl _acceleration_control
       (send _acceleration_control :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; etsi_msgs/Heading _heading
     (send _heading :deserialize buf ptr-) (incf ptr- (send _heading :serialization-length))
   ;; etsi_msgs/Speed _speed
     (send _speed :deserialize buf ptr-) (incf ptr- (send _speed :serialization-length))
   ;; etsi_msgs/DriveDirection _drive_direction
     (send _drive_direction :deserialize buf ptr-) (incf ptr- (send _drive_direction :serialization-length))
   ;; etsi_msgs/VehicleLength _vehicle_length
     (send _vehicle_length :deserialize buf ptr-) (incf ptr- (send _vehicle_length :serialization-length))
   ;; etsi_msgs/VehicleWidth _vehicle_width
     (send _vehicle_width :deserialize buf ptr-) (incf ptr- (send _vehicle_width :serialization-length))
   ;; etsi_msgs/LongitudinalAcceleration _longitudinal_acceleration
     (send _longitudinal_acceleration :deserialize buf ptr-) (incf ptr- (send _longitudinal_acceleration :serialization-length))
   ;; etsi_msgs/Curvature _curvature
     (send _curvature :deserialize buf ptr-) (incf ptr- (send _curvature :serialization-length))
   ;; etsi_msgs/CurvatureCalculationMode _curvature_calculation_mode
     (send _curvature_calculation_mode :deserialize buf ptr-) (incf ptr- (send _curvature_calculation_mode :serialization-length))
   ;; etsi_msgs/YawRate _yaw_rate
     (send _yaw_rate :deserialize buf ptr-) (incf ptr- (send _yaw_rate :serialization-length))
   ;; bool _has_acceleration_control
     (setq _has_acceleration_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; etsi_msgs/AccelerationControl _acceleration_control
     (send _acceleration_control :deserialize buf ptr-) (incf ptr- (send _acceleration_control :serialization-length))
   ;;
   self)
  )

(setf (get etsi_msgs::BasicVehicleContainerHighFrequency :md5sum-) "62bb6a047d37b6cdb33896921037161d")
(setf (get etsi_msgs::BasicVehicleContainerHighFrequency :datatype-) "etsi_msgs/BasicVehicleContainerHighFrequency")
(setf (get etsi_msgs::BasicVehicleContainerHighFrequency :definition-)
      "Heading heading
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

")



(provide :etsi_msgs/BasicVehicleContainerHighFrequency "62bb6a047d37b6cdb33896921037161d")


