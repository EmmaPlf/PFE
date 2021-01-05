;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::EventPoint)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'EventPoint (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::EVENTPOINT")
  (make-package "ETSI_MSGS::EVENTPOINT"))

(in-package "ROS")
;;//! \htmlinclude EventPoint.msg.html


(defclass etsi_msgs::EventPoint
  :super ros::object
  :slots (_event_position _event_delta_time _information_quality ))

(defmethod etsi_msgs::EventPoint
  (:init
   (&key
    ((:event_position __event_position) (instance etsi_msgs::DeltaReferencePosition :init))
    ((:event_delta_time __event_delta_time) (instance etsi_msgs::PathDeltaTime :init))
    ((:information_quality __information_quality) (instance etsi_msgs::InformationQuality :init))
    )
   (send-super :init)
   (setq _event_position __event_position)
   (setq _event_delta_time __event_delta_time)
   (setq _information_quality __information_quality)
   self)
  (:event_position
   (&rest __event_position)
   (if (keywordp (car __event_position))
       (send* _event_position __event_position)
     (progn
       (if __event_position (setq _event_position (car __event_position)))
       _event_position)))
  (:event_delta_time
   (&rest __event_delta_time)
   (if (keywordp (car __event_delta_time))
       (send* _event_delta_time __event_delta_time)
     (progn
       (if __event_delta_time (setq _event_delta_time (car __event_delta_time)))
       _event_delta_time)))
  (:information_quality
   (&rest __information_quality)
   (if (keywordp (car __information_quality))
       (send* _information_quality __information_quality)
     (progn
       (if __information_quality (setq _information_quality (car __information_quality)))
       _information_quality)))
  (:serialization-length
   ()
   (+
    ;; etsi_msgs/DeltaReferencePosition _event_position
    (send _event_position :serialization-length)
    ;; etsi_msgs/PathDeltaTime _event_delta_time
    (send _event_delta_time :serialization-length)
    ;; etsi_msgs/InformationQuality _information_quality
    (send _information_quality :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; etsi_msgs/DeltaReferencePosition _event_position
       (send _event_position :serialize s)
     ;; etsi_msgs/PathDeltaTime _event_delta_time
       (send _event_delta_time :serialize s)
     ;; etsi_msgs/InformationQuality _information_quality
       (send _information_quality :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; etsi_msgs/DeltaReferencePosition _event_position
     (send _event_position :deserialize buf ptr-) (incf ptr- (send _event_position :serialization-length))
   ;; etsi_msgs/PathDeltaTime _event_delta_time
     (send _event_delta_time :deserialize buf ptr-) (incf ptr- (send _event_delta_time :serialization-length))
   ;; etsi_msgs/InformationQuality _information_quality
     (send _information_quality :deserialize buf ptr-) (incf ptr- (send _information_quality :serialization-length))
   ;;
   self)
  )

(setf (get etsi_msgs::EventPoint :md5sum-) "b537fe840862e2b80e7cc1e698e9ac33")
(setf (get etsi_msgs::EventPoint :datatype-) "etsi_msgs/EventPoint")
(setf (get etsi_msgs::EventPoint :definition-)
      "DeltaReferencePosition event_position
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
MSG: etsi_msgs/InformationQuality
int8 value

int8 UNAVAILABLE = 0
int8 LOWEST = 1
int8 HIGHEST = 7

")



(provide :etsi_msgs/EventPoint "b537fe840862e2b80e7cc1e698e9ac33")


