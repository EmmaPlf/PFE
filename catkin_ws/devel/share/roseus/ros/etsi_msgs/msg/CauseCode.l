;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::CauseCode)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'CauseCode (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::CAUSECODE")
  (make-package "ETSI_MSGS::CAUSECODE"))

(in-package "ROS")
;;//! \htmlinclude CauseCode.msg.html


(intern "*RESERVED*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*RESERVED* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*RESERVED* 0)
(intern "*TRAFFIC_CONDITION*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*TRAFFIC_CONDITION* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*TRAFFIC_CONDITION* 1)
(intern "*ACCIDENT*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*ACCIDENT* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*ACCIDENT* 2)
(intern "*ROADWORKS*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*ROADWORKS* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*ROADWORKS* 3)
(intern "*ADVERSE_WEATHER_CONDITIONS_ADHESION*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*ADVERSE_WEATHER_CONDITIONS_ADHESION* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*ADVERSE_WEATHER_CONDITIONS_ADHESION* 4)
(intern "*HAZARDOUS_LOCATION_SURFACE_CONDITION*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*HAZARDOUS_LOCATION_SURFACE_CONDITION* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*HAZARDOUS_LOCATION_SURFACE_CONDITION* 9)
(intern "*HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD* 10)
(intern "*HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD* 11)
(intern "*HUMAN_PRESENCE_ON_THE_ROAD*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*HUMAN_PRESENCE_ON_THE_ROAD* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*HUMAN_PRESENCE_ON_THE_ROAD* 12)
(intern "*WRONG_WAY_DRIVING*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*WRONG_WAY_DRIVING* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*WRONG_WAY_DRIVING* 14)
(intern "*RESCUE_AND_RECOVERY_WORK_IN_PROGRESS*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*RESCUE_AND_RECOVERY_WORK_IN_PROGRESS* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*RESCUE_AND_RECOVERY_WORK_IN_PROGRESS* 15)
(intern "*ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION* 17)
(intern "*ADVERSE_WEATHER_CONDITIONS_VISIBILITY*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*ADVERSE_WEATHER_CONDITIONS_VISIBILITY* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*ADVERSE_WEATHER_CONDITIONS_VISIBILITY* 18)
(intern "*ADVERSE_WEATHER_CONDITIONS_PRECIPITATION*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*ADVERSE_WEATHER_CONDITIONS_PRECIPITATION* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*ADVERSE_WEATHER_CONDITIONS_PRECIPITATION* 19)
(intern "*SLOW_VEHICLE*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*SLOW_VEHICLE* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*SLOW_VEHICLE* 26)
(intern "*DANGEROUS_END_OF_QUEUE*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*DANGEROUS_END_OF_QUEUE* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*DANGEROUS_END_OF_QUEUE* 27)
(intern "*VEHICLE_BREAKDOWN*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*VEHICLE_BREAKDOWN* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*VEHICLE_BREAKDOWN* 91)
(intern "*POST_CRASH*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*POST_CRASH* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*POST_CRASH* 92)
(intern "*HUMAN_PROBLEM*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*HUMAN_PROBLEM* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*HUMAN_PROBLEM* 93)
(intern "*STATIONARY_VEHICLE*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*STATIONARY_VEHICLE* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*STATIONARY_VEHICLE* 94)
(intern "*EMERGENCY_VEHICLE_APPROACHING*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*EMERGENCY_VEHICLE_APPROACHING* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*EMERGENCY_VEHICLE_APPROACHING* 95)
(intern "*HAZARDOUS_LOCATION_DANGEROUS_CURVE*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*HAZARDOUS_LOCATION_DANGEROUS_CURVE* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*HAZARDOUS_LOCATION_DANGEROUS_CURVE* 96)
(intern "*COLLISION_RISK*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*COLLISION_RISK* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*COLLISION_RISK* 97)
(intern "*SIGNAL_VIOLATION*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*SIGNAL_VIOLATION* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*SIGNAL_VIOLATION* 98)
(intern "*DANGEROUS_SITUATION*" (find-package "ETSI_MSGS::CAUSECODE"))
(shadow '*DANGEROUS_SITUATION* (find-package "ETSI_MSGS::CAUSECODE"))
(defconstant etsi_msgs::CauseCode::*DANGEROUS_SITUATION* 99)
(defclass etsi_msgs::CauseCode
  :super ros::object
  :slots (_cause_code _sub_cause_code ))

(defmethod etsi_msgs::CauseCode
  (:init
   (&key
    ((:cause_code __cause_code) 0)
    ((:sub_cause_code __sub_cause_code) 0)
    )
   (send-super :init)
   (setq _cause_code (round __cause_code))
   (setq _sub_cause_code (round __sub_cause_code))
   self)
  (:cause_code
   (&optional __cause_code)
   (if __cause_code (setq _cause_code __cause_code)) _cause_code)
  (:sub_cause_code
   (&optional __sub_cause_code)
   (if __sub_cause_code (setq _sub_cause_code __sub_cause_code)) _sub_cause_code)
  (:serialization-length
   ()
   (+
    ;; uint8 _cause_code
    1
    ;; uint8 _sub_cause_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cause_code
       (write-byte _cause_code s)
     ;; uint8 _sub_cause_code
       (write-byte _sub_cause_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cause_code
     (setq _cause_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sub_cause_code
     (setq _sub_cause_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get etsi_msgs::CauseCode :md5sum-) "fc8877aef6cd5537c1ab4131c260e325")
(setf (get etsi_msgs::CauseCode :datatype-) "etsi_msgs/CauseCode")
(setf (get etsi_msgs::CauseCode :definition-)
      "uint8 cause_code
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

")



(provide :etsi_msgs/CauseCode "fc8877aef6cd5537c1ab4131c260e325")


