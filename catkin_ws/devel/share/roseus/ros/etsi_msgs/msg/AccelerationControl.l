;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::AccelerationControl)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'AccelerationControl (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::ACCELERATIONCONTROL")
  (make-package "ETSI_MSGS::ACCELERATIONCONTROL"))

(in-package "ROS")
;;//! \htmlinclude AccelerationControl.msg.html


(intern "*BRAKE_PEDAL_ENGAGED*" (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(shadow '*BRAKE_PEDAL_ENGAGED* (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(defconstant etsi_msgs::AccelerationControl::*BRAKE_PEDAL_ENGAGED* 1)
(intern "*GAS_PEDAL_ENGAGED*" (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(shadow '*GAS_PEDAL_ENGAGED* (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(defconstant etsi_msgs::AccelerationControl::*GAS_PEDAL_ENGAGED* 2)
(intern "*EMERGENCY_BRAKE_ENGAGED*" (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(shadow '*EMERGENCY_BRAKE_ENGAGED* (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(defconstant etsi_msgs::AccelerationControl::*EMERGENCY_BRAKE_ENGAGED* 4)
(intern "*COLLISION_WARNING_ENGAGED*" (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(shadow '*COLLISION_WARNING_ENGAGED* (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(defconstant etsi_msgs::AccelerationControl::*COLLISION_WARNING_ENGAGED* 8)
(intern "*ACC_ENGAGED*" (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(shadow '*ACC_ENGAGED* (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(defconstant etsi_msgs::AccelerationControl::*ACC_ENGAGED* 16)
(intern "*CRUISE_CONTROL_ENGAGED*" (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(shadow '*CRUISE_CONTROL_ENGAGED* (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(defconstant etsi_msgs::AccelerationControl::*CRUISE_CONTROL_ENGAGED* 32)
(intern "*SPEED_LIMITER_ENGAGED*" (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(shadow '*SPEED_LIMITER_ENGAGED* (find-package "ETSI_MSGS::ACCELERATIONCONTROL"))
(defconstant etsi_msgs::AccelerationControl::*SPEED_LIMITER_ENGAGED* 64)
(defclass etsi_msgs::AccelerationControl
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::AccelerationControl
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

(setf (get etsi_msgs::AccelerationControl :md5sum-) "95585d5f00fa07f89453fa3109d62a8a")
(setf (get etsi_msgs::AccelerationControl :datatype-) "etsi_msgs/AccelerationControl")
(setf (get etsi_msgs::AccelerationControl :definition-)
      "uint8 value

uint8 BRAKE_PEDAL_ENGAGED = 1
uint8 GAS_PEDAL_ENGAGED = 2
uint8 EMERGENCY_BRAKE_ENGAGED = 4
uint8 COLLISION_WARNING_ENGAGED = 8
uint8 ACC_ENGAGED = 16
uint8 CRUISE_CONTROL_ENGAGED = 32
uint8 SPEED_LIMITER_ENGAGED = 64

")



(provide :etsi_msgs/AccelerationControl "95585d5f00fa07f89453fa3109d62a8a")


