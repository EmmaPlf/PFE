;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::ExteriorLights)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'ExteriorLights (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::EXTERIORLIGHTS")
  (make-package "ETSI_MSGS::EXTERIORLIGHTS"))

(in-package "ROS")
;;//! \htmlinclude ExteriorLights.msg.html


(intern "*LOW_BEAM_HEADLIGHTS*" (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(shadow '*LOW_BEAM_HEADLIGHTS* (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(defconstant etsi_msgs::ExteriorLights::*LOW_BEAM_HEADLIGHTS* 1)
(intern "*HIGH_BEAM_HEADLIGHTS*" (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(shadow '*HIGH_BEAM_HEADLIGHTS* (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(defconstant etsi_msgs::ExteriorLights::*HIGH_BEAM_HEADLIGHTS* 2)
(intern "*LEFT_TURN_SIGNAL*" (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(shadow '*LEFT_TURN_SIGNAL* (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(defconstant etsi_msgs::ExteriorLights::*LEFT_TURN_SIGNAL* 4)
(intern "*RIGHT_TURN_SIGNAL*" (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(shadow '*RIGHT_TURN_SIGNAL* (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(defconstant etsi_msgs::ExteriorLights::*RIGHT_TURN_SIGNAL* 8)
(intern "*DAYTIME_RUNNING_LIGHTS*" (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(shadow '*DAYTIME_RUNNING_LIGHTS* (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(defconstant etsi_msgs::ExteriorLights::*DAYTIME_RUNNING_LIGHTS* 16)
(intern "*REVERSE_LIGHT*" (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(shadow '*REVERSE_LIGHT* (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(defconstant etsi_msgs::ExteriorLights::*REVERSE_LIGHT* 32)
(intern "*FOG_LIGHT*" (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(shadow '*FOG_LIGHT* (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(defconstant etsi_msgs::ExteriorLights::*FOG_LIGHT* 64)
(intern "*PARKING_LIGHTS*" (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(shadow '*PARKING_LIGHTS* (find-package "ETSI_MSGS::EXTERIORLIGHTS"))
(defconstant etsi_msgs::ExteriorLights::*PARKING_LIGHTS* 128)
(defclass etsi_msgs::ExteriorLights
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::ExteriorLights
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

(setf (get etsi_msgs::ExteriorLights :md5sum-) "345ae8f2de1fe5f50829808e9f147b8c")
(setf (get etsi_msgs::ExteriorLights :datatype-) "etsi_msgs/ExteriorLights")
(setf (get etsi_msgs::ExteriorLights :definition-)
      "uint8 value

uint8 LOW_BEAM_HEADLIGHTS = 1
uint8 HIGH_BEAM_HEADLIGHTS = 2
uint8 LEFT_TURN_SIGNAL = 4
uint8 RIGHT_TURN_SIGNAL = 8
uint8 DAYTIME_RUNNING_LIGHTS = 16
uint8 REVERSE_LIGHT = 32
uint8 FOG_LIGHT = 64
uint8 PARKING_LIGHTS = 128

")



(provide :etsi_msgs/ExteriorLights "345ae8f2de1fe5f50829808e9f147b8c")


