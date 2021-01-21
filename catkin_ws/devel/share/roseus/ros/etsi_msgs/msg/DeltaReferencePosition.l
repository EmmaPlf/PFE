;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::DeltaReferencePosition)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'DeltaReferencePosition (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION")
  (make-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))

(in-package "ROS")
;;//! \htmlinclude DeltaReferencePosition.msg.html


(intern "*ONE_MICRODEGREE_NORTH*" (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(shadow '*ONE_MICRODEGREE_NORTH* (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(defconstant etsi_msgs::DeltaReferencePosition::*ONE_MICRODEGREE_NORTH* 10)
(intern "*ONE_MICRODEGREE_SOUTH*" (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(shadow '*ONE_MICRODEGREE_SOUTH* (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(defconstant etsi_msgs::DeltaReferencePosition::*ONE_MICRODEGREE_SOUTH* -10)
(intern "*ONE_MICRODEGREE_EAST*" (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(shadow '*ONE_MICRODEGREE_EAST* (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(defconstant etsi_msgs::DeltaReferencePosition::*ONE_MICRODEGREE_EAST* 10)
(intern "*ONE_MICRODEGREE_WEST*" (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(shadow '*ONE_MICRODEGREE_WEST* (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(defconstant etsi_msgs::DeltaReferencePosition::*ONE_MICRODEGREE_WEST* -10)
(intern "*ONE_CENTIMETER_UP*" (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(shadow '*ONE_CENTIMETER_UP* (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(defconstant etsi_msgs::DeltaReferencePosition::*ONE_CENTIMETER_UP* 1)
(intern "*ONE_CENTIMETER_DOWN*" (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(shadow '*ONE_CENTIMETER_DOWN* (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(defconstant etsi_msgs::DeltaReferencePosition::*ONE_CENTIMETER_DOWN* -1)
(intern "*LATITUDE_UNAVAILABLE*" (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(shadow '*LATITUDE_UNAVAILABLE* (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(defconstant etsi_msgs::DeltaReferencePosition::*LATITUDE_UNAVAILABLE* 131072)
(intern "*LONGITUDE_UNAVAILABLE*" (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(shadow '*LONGITUDE_UNAVAILABLE* (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(defconstant etsi_msgs::DeltaReferencePosition::*LONGITUDE_UNAVAILABLE* 131072)
(intern "*ALTITUDE_UNAVAILABLE*" (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(shadow '*ALTITUDE_UNAVAILABLE* (find-package "ETSI_MSGS::DELTAREFERENCEPOSITION"))
(defconstant etsi_msgs::DeltaReferencePosition::*ALTITUDE_UNAVAILABLE* 12800)
(defclass etsi_msgs::DeltaReferencePosition
  :super ros::object
  :slots (_delta_latitude _delta_longitude _delta_altitude ))

(defmethod etsi_msgs::DeltaReferencePosition
  (:init
   (&key
    ((:delta_latitude __delta_latitude) 0)
    ((:delta_longitude __delta_longitude) 0)
    ((:delta_altitude __delta_altitude) 0)
    )
   (send-super :init)
   (setq _delta_latitude (round __delta_latitude))
   (setq _delta_longitude (round __delta_longitude))
   (setq _delta_altitude (round __delta_altitude))
   self)
  (:delta_latitude
   (&optional __delta_latitude)
   (if __delta_latitude (setq _delta_latitude __delta_latitude)) _delta_latitude)
  (:delta_longitude
   (&optional __delta_longitude)
   (if __delta_longitude (setq _delta_longitude __delta_longitude)) _delta_longitude)
  (:delta_altitude
   (&optional __delta_altitude)
   (if __delta_altitude (setq _delta_altitude __delta_altitude)) _delta_altitude)
  (:serialization-length
   ()
   (+
    ;; int32 _delta_latitude
    4
    ;; int32 _delta_longitude
    4
    ;; int16 _delta_altitude
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _delta_latitude
       (write-long _delta_latitude s)
     ;; int32 _delta_longitude
       (write-long _delta_longitude s)
     ;; int16 _delta_altitude
       (write-word _delta_altitude s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _delta_latitude
     (setq _delta_latitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _delta_longitude
     (setq _delta_longitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _delta_altitude
     (setq _delta_altitude (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get etsi_msgs::DeltaReferencePosition :md5sum-) "5b49a8a9b72b511ff5a77cf9b108e1e3")
(setf (get etsi_msgs::DeltaReferencePosition :datatype-) "etsi_msgs/DeltaReferencePosition")
(setf (get etsi_msgs::DeltaReferencePosition :definition-)
      "int32 delta_latitude # 0.1 micro degree
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

")



(provide :etsi_msgs/DeltaReferencePosition "5b49a8a9b72b511ff5a77cf9b108e1e3")


