;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::StationType)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'StationType (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::STATIONTYPE")
  (make-package "ETSI_MSGS::STATIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude StationType.msg.html


(intern "*UNKNOWN*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*UNKNOWN* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*UNKNOWN* 0)
(intern "*PEDESTRIAN*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*PEDESTRIAN* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*PEDESTRIAN* 1)
(intern "*CYCLIST*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*CYCLIST* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*CYCLIST* 2)
(intern "*MOPED*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*MOPED* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*MOPED* 3)
(intern "*MOTORCYCLE*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*MOTORCYCLE* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*MOTORCYCLE* 4)
(intern "*PASSENGER_CAR*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*PASSENGER_CAR* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*PASSENGER_CAR* 5)
(intern "*BUS*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*BUS* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*BUS* 6)
(intern "*LIGHT_TRUCK*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*LIGHT_TRUCK* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*LIGHT_TRUCK* 7)
(intern "*HEAVY_TRUCK*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*HEAVY_TRUCK* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*HEAVY_TRUCK* 8)
(intern "*TRAILER*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*TRAILER* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*TRAILER* 9)
(intern "*SPECIAL_VEHICLE*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*SPECIAL_VEHICLE* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*SPECIAL_VEHICLE* 10)
(intern "*TRAM*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*TRAM* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*TRAM* 11)
(intern "*ROAD_SIDE_UNIT*" (find-package "ETSI_MSGS::STATIONTYPE"))
(shadow '*ROAD_SIDE_UNIT* (find-package "ETSI_MSGS::STATIONTYPE"))
(defconstant etsi_msgs::StationType::*ROAD_SIDE_UNIT* 15)
(defclass etsi_msgs::StationType
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::StationType
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get etsi_msgs::StationType :md5sum-) "11f2c0aead214582d10e882ec072ef97")
(setf (get etsi_msgs::StationType :datatype-) "etsi_msgs/StationType")
(setf (get etsi_msgs::StationType :definition-)
      "uint8 value

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



(provide :etsi_msgs/StationType "11f2c0aead214582d10e882ec072ef97")


