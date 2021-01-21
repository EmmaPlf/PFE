;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::RelevanceDistance)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'RelevanceDistance (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::RELEVANCEDISTANCE")
  (make-package "ETSI_MSGS::RELEVANCEDISTANCE"))

(in-package "ROS")
;;//! \htmlinclude RelevanceDistance.msg.html


(intern "*LESS_THAN_50M*" (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(shadow '*LESS_THAN_50M* (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(defconstant etsi_msgs::RelevanceDistance::*LESS_THAN_50M* 0)
(intern "*LESS_THAN_100M*" (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(shadow '*LESS_THAN_100M* (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(defconstant etsi_msgs::RelevanceDistance::*LESS_THAN_100M* 1)
(intern "*LESS_THAN_200M*" (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(shadow '*LESS_THAN_200M* (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(defconstant etsi_msgs::RelevanceDistance::*LESS_THAN_200M* 2)
(intern "*LESS_THAN_500M*" (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(shadow '*LESS_THAN_500M* (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(defconstant etsi_msgs::RelevanceDistance::*LESS_THAN_500M* 3)
(intern "*LESS_THAN_1000M*" (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(shadow '*LESS_THAN_1000M* (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(defconstant etsi_msgs::RelevanceDistance::*LESS_THAN_1000M* 4)
(intern "*LESS_THAN_5KM*" (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(shadow '*LESS_THAN_5KM* (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(defconstant etsi_msgs::RelevanceDistance::*LESS_THAN_5KM* 5)
(intern "*LESS_THAN_10KM*" (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(shadow '*LESS_THAN_10KM* (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(defconstant etsi_msgs::RelevanceDistance::*LESS_THAN_10KM* 6)
(intern "*OVER_10KM*" (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(shadow '*OVER_10KM* (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(defconstant etsi_msgs::RelevanceDistance::*OVER_10KM* 7)
(intern "*UNAVAILABLE*" (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(shadow '*UNAVAILABLE* (find-package "ETSI_MSGS::RELEVANCEDISTANCE"))
(defconstant etsi_msgs::RelevanceDistance::*UNAVAILABLE* 255)
(defclass etsi_msgs::RelevanceDistance
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::RelevanceDistance
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

(setf (get etsi_msgs::RelevanceDistance :md5sum-) "2e56ef7aa4489b7a0e715afdd14b85bd")
(setf (get etsi_msgs::RelevanceDistance :datatype-) "etsi_msgs/RelevanceDistance")
(setf (get etsi_msgs::RelevanceDistance :definition-)
      "uint8 value

uint8 LESS_THAN_50M = 0
uint8 LESS_THAN_100M = 1
uint8 LESS_THAN_200M = 2
uint8 LESS_THAN_500M = 3
uint8 LESS_THAN_1000M = 4
uint8 LESS_THAN_5KM = 5
uint8 LESS_THAN_10KM = 6
uint8 OVER_10KM = 7
uint8 UNAVAILABLE = 255

")



(provide :etsi_msgs/RelevanceDistance "2e56ef7aa4489b7a0e715afdd14b85bd")


