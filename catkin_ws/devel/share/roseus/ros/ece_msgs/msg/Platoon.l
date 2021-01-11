;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Platoon)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Platoon (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::PLATOON")
  (make-package "ECE_MSGS::PLATOON"))

(in-package "ROS")
;;//! \htmlinclude Platoon.msg.html


(defclass ece_msgs::Platoon
  :super ros::object
  :slots (_id_vt _id_platoon _ids _nombre_vehicules _reference_position ))

(defmethod ece_msgs::Platoon
  (:init
   (&key
    ((:id_vt __id_vt) 0)
    ((:id_platoon __id_platoon) 0)
    ((:ids __ids) (instance ece_msgs::IDs :init))
    ((:nombre_vehicules __nombre_vehicules) 0)
    ((:reference_position __reference_position) (instance ece_msgs::ReferencePosition :init))
    )
   (send-super :init)
   (setq _id_vt (round __id_vt))
   (setq _id_platoon (round __id_platoon))
   (setq _ids __ids)
   (setq _nombre_vehicules (round __nombre_vehicules))
   (setq _reference_position __reference_position)
   self)
  (:id_vt
   (&optional __id_vt)
   (if __id_vt (setq _id_vt __id_vt)) _id_vt)
  (:id_platoon
   (&optional __id_platoon)
   (if __id_platoon (setq _id_platoon __id_platoon)) _id_platoon)
  (:ids
   (&rest __ids)
   (if (keywordp (car __ids))
       (send* _ids __ids)
     (progn
       (if __ids (setq _ids (car __ids)))
       _ids)))
  (:nombre_vehicules
   (&optional __nombre_vehicules)
   (if __nombre_vehicules (setq _nombre_vehicules __nombre_vehicules)) _nombre_vehicules)
  (:reference_position
   (&rest __reference_position)
   (if (keywordp (car __reference_position))
       (send* _reference_position __reference_position)
     (progn
       (if __reference_position (setq _reference_position (car __reference_position)))
       _reference_position)))
  (:serialization-length
   ()
   (+
    ;; uint8 _id_vt
    1
    ;; uint8 _id_platoon
    1
    ;; ece_msgs/IDs _ids
    (send _ids :serialization-length)
    ;; uint8 _nombre_vehicules
    1
    ;; ece_msgs/ReferencePosition _reference_position
    (send _reference_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id_vt
       (write-byte _id_vt s)
     ;; uint8 _id_platoon
       (write-byte _id_platoon s)
     ;; ece_msgs/IDs _ids
       (send _ids :serialize s)
     ;; uint8 _nombre_vehicules
       (write-byte _nombre_vehicules s)
     ;; ece_msgs/ReferencePosition _reference_position
       (send _reference_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id_vt
     (setq _id_vt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id_platoon
     (setq _id_platoon (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ece_msgs/IDs _ids
     (send _ids :deserialize buf ptr-) (incf ptr- (send _ids :serialization-length))
   ;; uint8 _nombre_vehicules
     (setq _nombre_vehicules (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ece_msgs/ReferencePosition _reference_position
     (send _reference_position :deserialize buf ptr-) (incf ptr- (send _reference_position :serialization-length))
   ;;
   self)
  )

(setf (get ece_msgs::Platoon :md5sum-) "e04a40bb6fe3969e75a1973bd60b5977")
(setf (get ece_msgs::Platoon :datatype-) "ece_msgs/Platoon")
(setf (get ece_msgs::Platoon :definition-)
      "# ID Vt : 3 bits 
uint8 id_vt

# ID platoon : 3 bits
uint8 id_platoon

# ID autres véhicules platoon : 3 bits
IDs ids 

# Nombre de véhicules : 3 bits
uint8 nombre_vehicules

# Destination : 8 octets
ReferencePosition reference_position
================================================================================
MSG: ece_msgs/IDs
uint8 ID
uint8 position
================================================================================
MSG: ece_msgs/ReferencePosition
int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
PositionConfidenceEllipse position_confidence
Altitude altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001

================================================================================
MSG: ece_msgs/PositionConfidenceEllipse
uint16 semi_major_confidence # cm
uint16 semi_minor_confidence # cm
uint16 semi_major_orientation # 0.1 degree

uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095

================================================================================
MSG: ece_msgs/Altitude
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

")



(provide :ece_msgs/Platoon "e04a40bb6fe3969e75a1973bd60b5977")


