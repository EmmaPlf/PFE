;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Altitude)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Altitude (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::ALTITUDE")
  (make-package "ECE_MSGS::ALTITUDE"))

(in-package "ROS")
;;//! \htmlinclude Altitude.msg.html


(intern "*VALUE_REFERENCE_ELLIPSOID_SURFACE*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*VALUE_REFERENCE_ELLIPSOID_SURFACE* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*VALUE_REFERENCE_ELLIPSOID_SURFACE* 0)
(intern "*VALUE_ONE_CENTIMETER*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*VALUE_ONE_CENTIMETER* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*VALUE_ONE_CENTIMETER* 1)
(intern "*VALUE_UNAVAILABLE*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*VALUE_UNAVAILABLE* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*VALUE_UNAVAILABLE* 800001)
(intern "*CONFIDENCE_1CM*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_1CM* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_1CM* 0)
(intern "*CONFIDENCE_2CM*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_2CM* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_2CM* 1)
(intern "*CONFIDENCE_5CM*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_5CM* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_5CM* 2)
(intern "*CONFIDENCE_10CM*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_10CM* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_10CM* 3)
(intern "*CONFIDENCE_20CM*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_20CM* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_20CM* 4)
(intern "*CONFIDENCE_50CM*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_50CM* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_50CM* 5)
(intern "*CONFIDENCE_1M*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_1M* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_1M* 6)
(intern "*CONFIDENCE_2M*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_2M* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_2M* 7)
(intern "*CONFIDENCE_5M*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_5M* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_5M* 8)
(intern "*CONFIDENCE_10M*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_10M* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_10M* 9)
(intern "*CONFIDENCE_20M*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_20M* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_20M* 10)
(intern "*CONFIDENCE_50M*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_50M* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_50M* 11)
(intern "*CONFIDENCE_100M*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_100M* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_100M* 12)
(intern "*CONFIDENCE_200M*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_200M* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_200M* 13)
(intern "*CONFIDENCE_OUT_OF_RANGE*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_OUT_OF_RANGE* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_OUT_OF_RANGE* 14)
(intern "*CONFIDENCE_UNAVAILABLE*" (find-package "ECE_MSGS::ALTITUDE"))
(shadow '*CONFIDENCE_UNAVAILABLE* (find-package "ECE_MSGS::ALTITUDE"))
(defconstant ece_msgs::Altitude::*CONFIDENCE_UNAVAILABLE* 15)
(defclass ece_msgs::Altitude
  :super ros::object
  :slots (_value _confidence ))

(defmethod ece_msgs::Altitude
  (:init
   (&key
    ((:value __value) 0)
    ((:confidence __confidence) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _confidence (round __confidence))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ;; uint8 _confidence
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;; uint8 _confidence
       (write-byte _confidence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _confidence
     (setq _confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ece_msgs::Altitude :md5sum-) "968c3c0b85fd51b834ff2ab741786e5b")
(setf (get ece_msgs::Altitude :datatype-) "ece_msgs/Altitude")
(setf (get ece_msgs::Altitude :definition-)
      "int32 value # 0.01 meter
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



(provide :ece_msgs/Altitude "968c3c0b85fd51b834ff2ab741786e5b")


