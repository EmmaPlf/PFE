;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::LocationContainer)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'LocationContainer (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::LOCATIONCONTAINER")
  (make-package "ETSI_MSGS::LOCATIONCONTAINER"))

(in-package "ROS")
;;//! \htmlinclude LocationContainer.msg.html


(intern "*ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES*" (find-package "ETSI_MSGS::LOCATIONCONTAINER"))
(shadow '*ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES* (find-package "ETSI_MSGS::LOCATIONCONTAINER"))
(defconstant etsi_msgs::LocationContainer::*ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES* 0)
(intern "*ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES*" (find-package "ETSI_MSGS::LOCATIONCONTAINER"))
(shadow '*ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES* (find-package "ETSI_MSGS::LOCATIONCONTAINER"))
(defconstant etsi_msgs::LocationContainer::*ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES* 1)
(intern "*ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES*" (find-package "ETSI_MSGS::LOCATIONCONTAINER"))
(shadow '*ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES* (find-package "ETSI_MSGS::LOCATIONCONTAINER"))
(defconstant etsi_msgs::LocationContainer::*ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES* 2)
(intern "*ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES*" (find-package "ETSI_MSGS::LOCATIONCONTAINER"))
(shadow '*ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES* (find-package "ETSI_MSGS::LOCATIONCONTAINER"))
(defconstant etsi_msgs::LocationContainer::*ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES* 3)
(intern "*ROAD_TYPE_UNAVAILABLE*" (find-package "ETSI_MSGS::LOCATIONCONTAINER"))
(shadow '*ROAD_TYPE_UNAVAILABLE* (find-package "ETSI_MSGS::LOCATIONCONTAINER"))
(defconstant etsi_msgs::LocationContainer::*ROAD_TYPE_UNAVAILABLE* 255)
(defclass etsi_msgs::LocationContainer
  :super ros::object
  :slots (_event_speed _event_position_heading _traces _road_type ))

(defmethod etsi_msgs::LocationContainer
  (:init
   (&key
    ((:event_speed __event_speed) (instance etsi_msgs::Speed :init))
    ((:event_position_heading __event_position_heading) (instance etsi_msgs::Heading :init))
    ((:traces __traces) (let (r) (dotimes (i 0) (push (instance etsi_msgs::PathHistory :init) r)) r))
    ((:road_type __road_type) 0)
    )
   (send-super :init)
   (setq _event_speed __event_speed)
   (setq _event_position_heading __event_position_heading)
   (setq _traces __traces)
   (setq _road_type (round __road_type))
   self)
  (:event_speed
   (&rest __event_speed)
   (if (keywordp (car __event_speed))
       (send* _event_speed __event_speed)
     (progn
       (if __event_speed (setq _event_speed (car __event_speed)))
       _event_speed)))
  (:event_position_heading
   (&rest __event_position_heading)
   (if (keywordp (car __event_position_heading))
       (send* _event_position_heading __event_position_heading)
     (progn
       (if __event_position_heading (setq _event_position_heading (car __event_position_heading)))
       _event_position_heading)))
  (:traces
   (&rest __traces)
   (if (keywordp (car __traces))
       (send* _traces __traces)
     (progn
       (if __traces (setq _traces (car __traces)))
       _traces)))
  (:road_type
   (&optional __road_type)
   (if __road_type (setq _road_type __road_type)) _road_type)
  (:serialization-length
   ()
   (+
    ;; etsi_msgs/Speed _event_speed
    (send _event_speed :serialization-length)
    ;; etsi_msgs/Heading _event_position_heading
    (send _event_position_heading :serialization-length)
    ;; etsi_msgs/PathHistory[] _traces
    (apply #'+ (send-all _traces :serialization-length)) 4
    ;; uint8 _road_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; etsi_msgs/Speed _event_speed
       (send _event_speed :serialize s)
     ;; etsi_msgs/Heading _event_position_heading
       (send _event_position_heading :serialize s)
     ;; etsi_msgs/PathHistory[] _traces
     (write-long (length _traces) s)
     (dolist (elem _traces)
       (send elem :serialize s)
       )
     ;; uint8 _road_type
       (write-byte _road_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; etsi_msgs/Speed _event_speed
     (send _event_speed :deserialize buf ptr-) (incf ptr- (send _event_speed :serialization-length))
   ;; etsi_msgs/Heading _event_position_heading
     (send _event_position_heading :deserialize buf ptr-) (incf ptr- (send _event_position_heading :serialization-length))
   ;; etsi_msgs/PathHistory[] _traces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traces (let (r) (dotimes (i n) (push (instance etsi_msgs::PathHistory :init) r)) r))
     (dolist (elem- _traces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _road_type
     (setq _road_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get etsi_msgs::LocationContainer :md5sum-) "a09dcf7fff0ab0b3181252f05813385c")
(setf (get etsi_msgs::LocationContainer :datatype-) "etsi_msgs/LocationContainer")
(setf (get etsi_msgs::LocationContainer :definition-)
      "Speed event_speed
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



(provide :etsi_msgs/LocationContainer "a09dcf7fff0ab0b3181252f05813385c")


