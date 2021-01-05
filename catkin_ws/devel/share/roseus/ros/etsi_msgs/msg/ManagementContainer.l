;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::ManagementContainer)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'ManagementContainer (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::MANAGEMENTCONTAINER")
  (make-package "ETSI_MSGS::MANAGEMENTCONTAINER"))

(in-package "ROS")
;;//! \htmlinclude ManagementContainer.msg.html


(intern "*TERMINATION_CANCELLATION*" (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(shadow '*TERMINATION_CANCELLATION* (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(defconstant etsi_msgs::ManagementContainer::*TERMINATION_CANCELLATION* 0)
(intern "*TERMINATION_NEGATION*" (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(shadow '*TERMINATION_NEGATION* (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(defconstant etsi_msgs::ManagementContainer::*TERMINATION_NEGATION* 1)
(intern "*TERMINATION_UNAVAILABLE*" (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(shadow '*TERMINATION_UNAVAILABLE* (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(defconstant etsi_msgs::ManagementContainer::*TERMINATION_UNAVAILABLE* 255)
(intern "*TRANSMISSION_INTERVAL_ONE_MILLISECOND*" (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(shadow '*TRANSMISSION_INTERVAL_ONE_MILLISECOND* (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(defconstant etsi_msgs::ManagementContainer::*TRANSMISSION_INTERVAL_ONE_MILLISECOND* 1)
(intern "*TRANSMISSION_INTERVAL_TEN_SECONDS*" (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(shadow '*TRANSMISSION_INTERVAL_TEN_SECONDS* (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(defconstant etsi_msgs::ManagementContainer::*TRANSMISSION_INTERVAL_TEN_SECONDS* 10000)
(intern "*TRANSMISSION_INTERVAL_UNAVAILABLE*" (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(shadow '*TRANSMISSION_INTERVAL_UNAVAILABLE* (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(defconstant etsi_msgs::ManagementContainer::*TRANSMISSION_INTERVAL_UNAVAILABLE* 0)
(intern "*VALIDITY_DURATION_DEFAULT*" (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(shadow '*VALIDITY_DURATION_DEFAULT* (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(defconstant etsi_msgs::ManagementContainer::*VALIDITY_DURATION_DEFAULT* 600)
(intern "*VALIDITY_DURATION_TIME_OF_DETECTION*" (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(shadow '*VALIDITY_DURATION_TIME_OF_DETECTION* (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(defconstant etsi_msgs::ManagementContainer::*VALIDITY_DURATION_TIME_OF_DETECTION* 0)
(intern "*VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION*" (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(shadow '*VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION* (find-package "ETSI_MSGS::MANAGEMENTCONTAINER"))
(defconstant etsi_msgs::ManagementContainer::*VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION* 1)
(defclass etsi_msgs::ManagementContainer
  :super ros::object
  :slots (_action_id _detection_time _reference_time _termination _event_position _relevance_distance _relevance_traffic_direction _validity_duration _transmission_interval _station_type ))

(defmethod etsi_msgs::ManagementContainer
  (:init
   (&key
    ((:action_id __action_id) (instance etsi_msgs::ActionID :init))
    ((:detection_time __detection_time) 0)
    ((:reference_time __reference_time) 0)
    ((:termination __termination) 0)
    ((:event_position __event_position) (instance etsi_msgs::ReferencePosition :init))
    ((:relevance_distance __relevance_distance) (instance etsi_msgs::RelevanceDistance :init))
    ((:relevance_traffic_direction __relevance_traffic_direction) (instance etsi_msgs::RelevanceTrafficDirection :init))
    ((:validity_duration __validity_duration) 0)
    ((:transmission_interval __transmission_interval) 0)
    ((:station_type __station_type) (instance etsi_msgs::StationType :init))
    )
   (send-super :init)
   (setq _action_id __action_id)
   (setq _detection_time (round __detection_time))
   (setq _reference_time (round __reference_time))
   (setq _termination (round __termination))
   (setq _event_position __event_position)
   (setq _relevance_distance __relevance_distance)
   (setq _relevance_traffic_direction __relevance_traffic_direction)
   (setq _validity_duration (round __validity_duration))
   (setq _transmission_interval (round __transmission_interval))
   (setq _station_type __station_type)
   self)
  (:action_id
   (&rest __action_id)
   (if (keywordp (car __action_id))
       (send* _action_id __action_id)
     (progn
       (if __action_id (setq _action_id (car __action_id)))
       _action_id)))
  (:detection_time
   (&optional __detection_time)
   (if __detection_time (setq _detection_time __detection_time)) _detection_time)
  (:reference_time
   (&optional __reference_time)
   (if __reference_time (setq _reference_time __reference_time)) _reference_time)
  (:termination
   (&optional __termination)
   (if __termination (setq _termination __termination)) _termination)
  (:event_position
   (&rest __event_position)
   (if (keywordp (car __event_position))
       (send* _event_position __event_position)
     (progn
       (if __event_position (setq _event_position (car __event_position)))
       _event_position)))
  (:relevance_distance
   (&rest __relevance_distance)
   (if (keywordp (car __relevance_distance))
       (send* _relevance_distance __relevance_distance)
     (progn
       (if __relevance_distance (setq _relevance_distance (car __relevance_distance)))
       _relevance_distance)))
  (:relevance_traffic_direction
   (&rest __relevance_traffic_direction)
   (if (keywordp (car __relevance_traffic_direction))
       (send* _relevance_traffic_direction __relevance_traffic_direction)
     (progn
       (if __relevance_traffic_direction (setq _relevance_traffic_direction (car __relevance_traffic_direction)))
       _relevance_traffic_direction)))
  (:validity_duration
   (&optional __validity_duration)
   (if __validity_duration (setq _validity_duration __validity_duration)) _validity_duration)
  (:transmission_interval
   (&optional __transmission_interval)
   (if __transmission_interval (setq _transmission_interval __transmission_interval)) _transmission_interval)
  (:station_type
   (&rest __station_type)
   (if (keywordp (car __station_type))
       (send* _station_type __station_type)
     (progn
       (if __station_type (setq _station_type (car __station_type)))
       _station_type)))
  (:serialization-length
   ()
   (+
    ;; etsi_msgs/ActionID _action_id
    (send _action_id :serialization-length)
    ;; uint64 _detection_time
    8
    ;; uint64 _reference_time
    8
    ;; uint8 _termination
    1
    ;; etsi_msgs/ReferencePosition _event_position
    (send _event_position :serialization-length)
    ;; etsi_msgs/RelevanceDistance _relevance_distance
    (send _relevance_distance :serialization-length)
    ;; etsi_msgs/RelevanceTrafficDirection _relevance_traffic_direction
    (send _relevance_traffic_direction :serialization-length)
    ;; uint32 _validity_duration
    4
    ;; uint32 _transmission_interval
    4
    ;; etsi_msgs/StationType _station_type
    (send _station_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; etsi_msgs/ActionID _action_id
       (send _action_id :serialize s)
     ;; uint64 _detection_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _detection_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _detection_time) (= (length (_detection_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_detection_time . bv) 0) 0) s)
              (write-long (ash (elt (_detection_time . bv) 1) -1) s))
             ((and (class _detection_time) (= (length (_detection_time . bv)) 1)) ;; big1
              (write-long (elt (_detection_time . bv) 0) s)
              (write-long (if (>= _detection_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _detection_time s)(write-long (if (>= _detection_time 0) 0 #xffffffff) s)))
     ;; uint64 _reference_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _reference_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _reference_time) (= (length (_reference_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_reference_time . bv) 0) 0) s)
              (write-long (ash (elt (_reference_time . bv) 1) -1) s))
             ((and (class _reference_time) (= (length (_reference_time . bv)) 1)) ;; big1
              (write-long (elt (_reference_time . bv) 0) s)
              (write-long (if (>= _reference_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _reference_time s)(write-long (if (>= _reference_time 0) 0 #xffffffff) s)))
     ;; uint8 _termination
       (write-byte _termination s)
     ;; etsi_msgs/ReferencePosition _event_position
       (send _event_position :serialize s)
     ;; etsi_msgs/RelevanceDistance _relevance_distance
       (send _relevance_distance :serialize s)
     ;; etsi_msgs/RelevanceTrafficDirection _relevance_traffic_direction
       (send _relevance_traffic_direction :serialize s)
     ;; uint32 _validity_duration
       (write-long _validity_duration s)
     ;; uint32 _transmission_interval
       (write-long _transmission_interval s)
     ;; etsi_msgs/StationType _station_type
       (send _station_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; etsi_msgs/ActionID _action_id
     (send _action_id :deserialize buf ptr-) (incf ptr- (send _action_id :serialization-length))
   ;; uint64 _detection_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _detection_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _detection_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _reference_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _reference_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _reference_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _termination
     (setq _termination (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; etsi_msgs/ReferencePosition _event_position
     (send _event_position :deserialize buf ptr-) (incf ptr- (send _event_position :serialization-length))
   ;; etsi_msgs/RelevanceDistance _relevance_distance
     (send _relevance_distance :deserialize buf ptr-) (incf ptr- (send _relevance_distance :serialization-length))
   ;; etsi_msgs/RelevanceTrafficDirection _relevance_traffic_direction
     (send _relevance_traffic_direction :deserialize buf ptr-) (incf ptr- (send _relevance_traffic_direction :serialization-length))
   ;; uint32 _validity_duration
     (setq _validity_duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _transmission_interval
     (setq _transmission_interval (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; etsi_msgs/StationType _station_type
     (send _station_type :deserialize buf ptr-) (incf ptr- (send _station_type :serialization-length))
   ;;
   self)
  )

(setf (get etsi_msgs::ManagementContainer :md5sum-) "9ce1c69ce5bfe1b0889eb5e906278318")
(setf (get etsi_msgs::ManagementContainer :datatype-) "etsi_msgs/ManagementContainer")
(setf (get etsi_msgs::ManagementContainer :definition-)
      "ActionID action_id
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

")



(provide :etsi_msgs/ManagementContainer "9ce1c69ce5bfe1b0889eb5e906278318")


