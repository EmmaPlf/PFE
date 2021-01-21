;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::Curvature)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'Curvature (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::CURVATURE")
  (make-package "ETSI_MSGS::CURVATURE"))

(in-package "ROS")
;;//! \htmlinclude Curvature.msg.html


(intern "*VALUE_RIGHTMOST*" (find-package "ETSI_MSGS::CURVATURE"))
(shadow '*VALUE_RIGHTMOST* (find-package "ETSI_MSGS::CURVATURE"))
(defconstant etsi_msgs::Curvature::*VALUE_RIGHTMOST* -1023)
(intern "*VALUE_LEFTMOST*" (find-package "ETSI_MSGS::CURVATURE"))
(shadow '*VALUE_LEFTMOST* (find-package "ETSI_MSGS::CURVATURE"))
(defconstant etsi_msgs::Curvature::*VALUE_LEFTMOST* 1022)
(intern "*VALUE_MIN*" (find-package "ETSI_MSGS::CURVATURE"))
(shadow '*VALUE_MIN* (find-package "ETSI_MSGS::CURVATURE"))
(defconstant etsi_msgs::Curvature::*VALUE_MIN* -1023)
(intern "*VALUE_MAX*" (find-package "ETSI_MSGS::CURVATURE"))
(shadow '*VALUE_MAX* (find-package "ETSI_MSGS::CURVATURE"))
(defconstant etsi_msgs::Curvature::*VALUE_MAX* 1022)
(intern "*VALUE_STRAIGHT*" (find-package "ETSI_MSGS::CURVATURE"))
(shadow '*VALUE_STRAIGHT* (find-package "ETSI_MSGS::CURVATURE"))
(defconstant etsi_msgs::Curvature::*VALUE_STRAIGHT* 0)
(intern "*VALUE_UNAVAILABLE*" (find-package "ETSI_MSGS::CURVATURE"))
(shadow '*VALUE_UNAVAILABLE* (find-package "ETSI_MSGS::CURVATURE"))
(defconstant etsi_msgs::Curvature::*VALUE_UNAVAILABLE* 1023)
(intern "*CONFIDENCE_OUT_OF_RANGE*" (find-package "ETSI_MSGS::CURVATURE"))
(shadow '*CONFIDENCE_OUT_OF_RANGE* (find-package "ETSI_MSGS::CURVATURE"))
(defconstant etsi_msgs::Curvature::*CONFIDENCE_OUT_OF_RANGE* 6)
(intern "*CONFIDENCE_UNAVAILABLE*" (find-package "ETSI_MSGS::CURVATURE"))
(shadow '*CONFIDENCE_UNAVAILABLE* (find-package "ETSI_MSGS::CURVATURE"))
(defconstant etsi_msgs::Curvature::*CONFIDENCE_UNAVAILABLE* 7)
(defclass etsi_msgs::Curvature
  :super ros::object
  :slots (_value _confidence ))

(defmethod etsi_msgs::Curvature
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

(setf (get etsi_msgs::Curvature :md5sum-) "c2041e49b4ba27809ff1352001f20437")
(setf (get etsi_msgs::Curvature :datatype-) "etsi_msgs/Curvature")
(setf (get etsi_msgs::Curvature :definition-)
      "int16 value # m^-1
uint8 confidence

int16 VALUE_RIGHTMOST = -1023
int16 VALUE_LEFTMOST = 1022
int16 VALUE_MIN = -1023
int16 VALUE_MAX = 1022
int16 VALUE_STRAIGHT = 0
int16 VALUE_UNAVAILABLE = 1023

uint8 CONFIDENCE_OUT_OF_RANGE = 6
uint8 CONFIDENCE_UNAVAILABLE = 7

")



(provide :etsi_msgs/Curvature "c2041e49b4ba27809ff1352001f20437")


