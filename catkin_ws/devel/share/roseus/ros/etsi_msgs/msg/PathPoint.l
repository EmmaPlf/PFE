;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::PathPoint)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'PathPoint (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::PATHPOINT")
  (make-package "ETSI_MSGS::PATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude PathPoint.msg.html


(defclass etsi_msgs::PathPoint
  :super ros::object
  :slots (_path_position _path_delta_time ))

(defmethod etsi_msgs::PathPoint
  (:init
   (&key
    ((:path_position __path_position) (instance etsi_msgs::DeltaReferencePosition :init))
    ((:path_delta_time __path_delta_time) (instance etsi_msgs::PathDeltaTime :init))
    )
   (send-super :init)
   (setq _path_position __path_position)
   (setq _path_delta_time __path_delta_time)
   self)
  (:path_position
   (&rest __path_position)
   (if (keywordp (car __path_position))
       (send* _path_position __path_position)
     (progn
       (if __path_position (setq _path_position (car __path_position)))
       _path_position)))
  (:path_delta_time
   (&rest __path_delta_time)
   (if (keywordp (car __path_delta_time))
       (send* _path_delta_time __path_delta_time)
     (progn
       (if __path_delta_time (setq _path_delta_time (car __path_delta_time)))
       _path_delta_time)))
  (:serialization-length
   ()
   (+
    ;; etsi_msgs/DeltaReferencePosition _path_position
    (send _path_position :serialization-length)
    ;; etsi_msgs/PathDeltaTime _path_delta_time
    (send _path_delta_time :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; etsi_msgs/DeltaReferencePosition _path_position
       (send _path_position :serialize s)
     ;; etsi_msgs/PathDeltaTime _path_delta_time
       (send _path_delta_time :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; etsi_msgs/DeltaReferencePosition _path_position
     (send _path_position :deserialize buf ptr-) (incf ptr- (send _path_position :serialization-length))
   ;; etsi_msgs/PathDeltaTime _path_delta_time
     (send _path_delta_time :deserialize buf ptr-) (incf ptr- (send _path_delta_time :serialization-length))
   ;;
   self)
  )

(setf (get etsi_msgs::PathPoint :md5sum-) "4cde4f877b443788c447e4b7ce3042d4")
(setf (get etsi_msgs::PathPoint :datatype-) "etsi_msgs/PathPoint")
(setf (get etsi_msgs::PathPoint :definition-)
      "DeltaReferencePosition path_position
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



(provide :etsi_msgs/PathPoint "4cde4f877b443788c447e4b7ce3042d4")


