;; Auto-generated. Do not edit!


(when (boundp 'simu_msgs::VehicleLength)
  (if (not (find-package "SIMU_MSGS"))
    (make-package "SIMU_MSGS"))
  (shadow 'VehicleLength (find-package "SIMU_MSGS")))
(unless (find-package "SIMU_MSGS::VEHICLELENGTH")
  (make-package "SIMU_MSGS::VEHICLELENGTH"))

(in-package "ROS")
;;//! \htmlinclude VehicleLength.msg.html


(intern "*VALUE_TEN_CENTIMETERS*" (find-package "SIMU_MSGS::VEHICLELENGTH"))
(shadow '*VALUE_TEN_CENTIMETERS* (find-package "SIMU_MSGS::VEHICLELENGTH"))
(defconstant simu_msgs::VehicleLength::*VALUE_TEN_CENTIMETERS* 1)
(intern "*VALUE_OUT_OF_RANGE*" (find-package "SIMU_MSGS::VEHICLELENGTH"))
(shadow '*VALUE_OUT_OF_RANGE* (find-package "SIMU_MSGS::VEHICLELENGTH"))
(defconstant simu_msgs::VehicleLength::*VALUE_OUT_OF_RANGE* 1022)
(intern "*VALUE_UNAVAILABLE*" (find-package "SIMU_MSGS::VEHICLELENGTH"))
(shadow '*VALUE_UNAVAILABLE* (find-package "SIMU_MSGS::VEHICLELENGTH"))
(defconstant simu_msgs::VehicleLength::*VALUE_UNAVAILABLE* 1023)
(intern "*CONFIDENCE_INDICATION_NO_TRAILER*" (find-package "SIMU_MSGS::VEHICLELENGTH"))
(shadow '*CONFIDENCE_INDICATION_NO_TRAILER* (find-package "SIMU_MSGS::VEHICLELENGTH"))
(defconstant simu_msgs::VehicleLength::*CONFIDENCE_INDICATION_NO_TRAILER* 0)
(intern "*CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH*" (find-package "SIMU_MSGS::VEHICLELENGTH"))
(shadow '*CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH* (find-package "SIMU_MSGS::VEHICLELENGTH"))
(defconstant simu_msgs::VehicleLength::*CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH* 1)
(intern "*CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH*" (find-package "SIMU_MSGS::VEHICLELENGTH"))
(shadow '*CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH* (find-package "SIMU_MSGS::VEHICLELENGTH"))
(defconstant simu_msgs::VehicleLength::*CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH* 2)
(intern "*CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE*" (find-package "SIMU_MSGS::VEHICLELENGTH"))
(shadow '*CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE* (find-package "SIMU_MSGS::VEHICLELENGTH"))
(defconstant simu_msgs::VehicleLength::*CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE* 3)
(intern "*CONFIDENCE_INDICATION_UNAVAILABLE*" (find-package "SIMU_MSGS::VEHICLELENGTH"))
(shadow '*CONFIDENCE_INDICATION_UNAVAILABLE* (find-package "SIMU_MSGS::VEHICLELENGTH"))
(defconstant simu_msgs::VehicleLength::*CONFIDENCE_INDICATION_UNAVAILABLE* 4)
(defclass simu_msgs::VehicleLength
  :super ros::object
  :slots (_value _confidence_indication ))

(defmethod simu_msgs::VehicleLength
  (:init
   (&key
    ((:value __value) 0)
    ((:confidence_indication __confidence_indication) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _confidence_indication (round __confidence_indication))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:confidence_indication
   (&optional __confidence_indication)
   (if __confidence_indication (setq _confidence_indication __confidence_indication)) _confidence_indication)
  (:serialization-length
   ()
   (+
    ;; uint16 _value
    2
    ;; uint8 _confidence_indication
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;; uint8 _confidence_indication
       (write-byte _confidence_indication s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _confidence_indication
     (setq _confidence_indication (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get simu_msgs::VehicleLength :md5sum-) "bf077d96b456d30e08df07f0d831fe92")
(setf (get simu_msgs::VehicleLength :datatype-) "simu_msgs/VehicleLength")
(setf (get simu_msgs::VehicleLength :definition-)
      "uint16 value # 0.1 meter
uint8 confidence_indication

uint16 VALUE_TEN_CENTIMETERS = 1
uint16 VALUE_OUT_OF_RANGE = 1022
uint16 VALUE_UNAVAILABLE = 1023

uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0
uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1
uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2
uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3
uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4

")



(provide :simu_msgs/VehicleLength "bf077d96b456d30e08df07f0d831fe92")


