;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::LongitudinalAcceleration)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'LongitudinalAcceleration (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::LONGITUDINALACCELERATION")
  (make-package "ETSI_MSGS::LONGITUDINALACCELERATION"))

(in-package "ROS")
;;//! \htmlinclude LongitudinalAcceleration.msg.html


(intern "*VALUE_UNAVAILABLE*" (find-package "ETSI_MSGS::LONGITUDINALACCELERATION"))
(shadow '*VALUE_UNAVAILABLE* (find-package "ETSI_MSGS::LONGITUDINALACCELERATION"))
(defconstant etsi_msgs::LongitudinalAcceleration::*VALUE_UNAVAILABLE* 161)
(intern "*CONFIDENCE_OUT_OF_RANGE*" (find-package "ETSI_MSGS::LONGITUDINALACCELERATION"))
(shadow '*CONFIDENCE_OUT_OF_RANGE* (find-package "ETSI_MSGS::LONGITUDINALACCELERATION"))
(defconstant etsi_msgs::LongitudinalAcceleration::*CONFIDENCE_OUT_OF_RANGE* 101)
(intern "*CONFIDENCE_UNAVAILABLE*" (find-package "ETSI_MSGS::LONGITUDINALACCELERATION"))
(shadow '*CONFIDENCE_UNAVAILABLE* (find-package "ETSI_MSGS::LONGITUDINALACCELERATION"))
(defconstant etsi_msgs::LongitudinalAcceleration::*CONFIDENCE_UNAVAILABLE* 102)
(defclass etsi_msgs::LongitudinalAcceleration
  :super ros::object
  :slots (_value _confidence ))

(defmethod etsi_msgs::LongitudinalAcceleration
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
    ;; int16 _value
    2
    ;; uint8 _confidence
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _value
       (write-word _value s)
     ;; uint8 _confidence
       (write-byte _confidence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _confidence
     (setq _confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get etsi_msgs::LongitudinalAcceleration :md5sum-) "1817cb5901a9c214183a59333522d9fb")
(setf (get etsi_msgs::LongitudinalAcceleration :datatype-) "etsi_msgs/LongitudinalAcceleration")
(setf (get etsi_msgs::LongitudinalAcceleration :definition-)
      "int16 value # 0.1 m/s^2
uint8 confidence # 0.1 m/s^2

int16 VALUE_UNAVAILABLE = 161

uint8 CONFIDENCE_OUT_OF_RANGE = 101
uint8 CONFIDENCE_UNAVAILABLE = 102

")



(provide :etsi_msgs/LongitudinalAcceleration "1817cb5901a9c214183a59333522d9fb")


