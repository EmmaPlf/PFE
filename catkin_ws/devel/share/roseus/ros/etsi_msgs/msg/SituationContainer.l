;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::SituationContainer)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'SituationContainer (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::SITUATIONCONTAINER")
  (make-package "ETSI_MSGS::SITUATIONCONTAINER"))

(in-package "ROS")
;;//! \htmlinclude SituationContainer.msg.html


(defclass etsi_msgs::SituationContainer
  :super ros::object
  :slots (_information_quality _event_type _has_linked_cause _linked_cause _event_history ))

(defmethod etsi_msgs::SituationContainer
  (:init
   (&key
    ((:information_quality __information_quality) (instance etsi_msgs::InformationQuality :init))
    ((:event_type __event_type) (instance etsi_msgs::CauseCode :init))
    ((:has_linked_cause __has_linked_cause) nil)
    ((:linked_cause __linked_cause) (instance etsi_msgs::CauseCode :init))
    ((:event_history __event_history) (let (r) (dotimes (i 0) (push (instance etsi_msgs::EventPoint :init) r)) r))
    )
   (send-super :init)
   (setq _information_quality __information_quality)
   (setq _event_type __event_type)
   (setq _has_linked_cause __has_linked_cause)
   (setq _linked_cause __linked_cause)
   (setq _event_history __event_history)
   self)
  (:information_quality
   (&rest __information_quality)
   (if (keywordp (car __information_quality))
       (send* _information_quality __information_quality)
     (progn
       (if __information_quality (setq _information_quality (car __information_quality)))
       _information_quality)))
  (:event_type
   (&rest __event_type)
   (if (keywordp (car __event_type))
       (send* _event_type __event_type)
     (progn
       (if __event_type (setq _event_type (car __event_type)))
       _event_type)))
  (:has_linked_cause
   (&optional __has_linked_cause)
   (if __has_linked_cause (setq _has_linked_cause __has_linked_cause)) _has_linked_cause)
  (:linked_cause
   (&rest __linked_cause)
   (if (keywordp (car __linked_cause))
       (send* _linked_cause __linked_cause)
     (progn
       (if __linked_cause (setq _linked_cause (car __linked_cause)))
       _linked_cause)))
  (:event_history
   (&rest __event_history)
   (if (keywordp (car __event_history))
       (send* _event_history __event_history)
     (progn
       (if __event_history (setq _event_history (car __event_history)))
       _event_history)))
  (:serialization-length
   ()
   (+
    ;; etsi_msgs/InformationQuality _information_quality
    (send _information_quality :serialization-length)
    ;; etsi_msgs/CauseCode _event_type
    (send _event_type :serialization-length)
    ;; bool _has_linked_cause
    1
    ;; etsi_msgs/CauseCode _linked_cause
    (send _linked_cause :serialization-length)
    ;; etsi_msgs/EventPoint[] _event_history
    (apply #'+ (send-all _event_history :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; etsi_msgs/InformationQuality _information_quality
       (send _information_quality :serialize s)
     ;; etsi_msgs/CauseCode _event_type
       (send _event_type :serialize s)
     ;; bool _has_linked_cause
       (if _has_linked_cause (write-byte -1 s) (write-byte 0 s))
     ;; etsi_msgs/CauseCode _linked_cause
       (send _linked_cause :serialize s)
     ;; etsi_msgs/EventPoint[] _event_history
     (write-long (length _event_history) s)
     (dolist (elem _event_history)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; etsi_msgs/InformationQuality _information_quality
     (send _information_quality :deserialize buf ptr-) (incf ptr- (send _information_quality :serialization-length))
   ;; etsi_msgs/CauseCode _event_type
     (send _event_type :deserialize buf ptr-) (incf ptr- (send _event_type :serialization-length))
   ;; bool _has_linked_cause
     (setq _has_linked_cause (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; etsi_msgs/CauseCode _linked_cause
     (send _linked_cause :deserialize buf ptr-) (incf ptr- (send _linked_cause :serialization-length))
   ;; etsi_msgs/EventPoint[] _event_history
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _event_history (let (r) (dotimes (i n) (push (instance etsi_msgs::EventPoint :init) r)) r))
     (dolist (elem- _event_history)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get etsi_msgs::SituationContainer :md5sum-) "d9a79cc76182211b632e0fb2d42e16d2")
(setf (get etsi_msgs::SituationContainer :datatype-) "etsi_msgs/SituationContainer")
(setf (get etsi_msgs::SituationContainer :definition-)
      "InformationQuality information_quality
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

")



(provide :etsi_msgs/SituationContainer "d9a79cc76182211b632e0fb2d42e16d2")


