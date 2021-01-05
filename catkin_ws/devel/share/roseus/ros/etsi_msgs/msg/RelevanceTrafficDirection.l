;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::RelevanceTrafficDirection)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'RelevanceTrafficDirection (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION")
  (make-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))

(in-package "ROS")
;;//! \htmlinclude RelevanceTrafficDirection.msg.html


(intern "*ALL_TRAFFIC_DIRECTIONS*" (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))
(shadow '*ALL_TRAFFIC_DIRECTIONS* (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))
(defconstant etsi_msgs::RelevanceTrafficDirection::*ALL_TRAFFIC_DIRECTIONS* 0)
(intern "*UPSTREAM_TRAFFIC*" (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))
(shadow '*UPSTREAM_TRAFFIC* (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))
(defconstant etsi_msgs::RelevanceTrafficDirection::*UPSTREAM_TRAFFIC* 1)
(intern "*DOWNSTREAM_TRAFFIC*" (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))
(shadow '*DOWNSTREAM_TRAFFIC* (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))
(defconstant etsi_msgs::RelevanceTrafficDirection::*DOWNSTREAM_TRAFFIC* 2)
(intern "*OPPOSITE_TRAFFIC*" (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))
(shadow '*OPPOSITE_TRAFFIC* (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))
(defconstant etsi_msgs::RelevanceTrafficDirection::*OPPOSITE_TRAFFIC* 3)
(intern "*UNAVAILABLE*" (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))
(shadow '*UNAVAILABLE* (find-package "ETSI_MSGS::RELEVANCETRAFFICDIRECTION"))
(defconstant etsi_msgs::RelevanceTrafficDirection::*UNAVAILABLE* 255)
(defclass etsi_msgs::RelevanceTrafficDirection
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::RelevanceTrafficDirection
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

(setf (get etsi_msgs::RelevanceTrafficDirection :md5sum-) "77aec5a7651c0ef00896308be8f8300e")
(setf (get etsi_msgs::RelevanceTrafficDirection :datatype-) "etsi_msgs/RelevanceTrafficDirection")
(setf (get etsi_msgs::RelevanceTrafficDirection :definition-)
      "uint8 value

uint8 ALL_TRAFFIC_DIRECTIONS = 0
uint8 UPSTREAM_TRAFFIC = 1
uint8 DOWNSTREAM_TRAFFIC = 2
uint8 OPPOSITE_TRAFFIC = 3
uint8 UNAVAILABLE = 255 # extension to encode optional traffic directions

")



(provide :etsi_msgs/RelevanceTrafficDirection "77aec5a7651c0ef00896308be8f8300e")


