;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::PathHistory)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'PathHistory (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::PATHHISTORY")
  (make-package "ETSI_MSGS::PATHHISTORY"))

(in-package "ROS")
;;//! \htmlinclude PathHistory.msg.html


(defclass etsi_msgs::PathHistory
  :super ros::object
  :slots (_points ))

(defmethod etsi_msgs::PathHistory
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance etsi_msgs::PathPoint :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; etsi_msgs/PathPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; etsi_msgs/PathPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; etsi_msgs/PathPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance etsi_msgs::PathPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get etsi_msgs::PathHistory :md5sum-) "8167006200782b25e11922b1f6d79b6c")
(setf (get etsi_msgs::PathHistory :datatype-) "etsi_msgs/PathHistory")
(setf (get etsi_msgs::PathHistory :definition-)
      "PathPoint[] points

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



(provide :etsi_msgs/PathHistory "8167006200782b25e11922b1f6d79b6c")


