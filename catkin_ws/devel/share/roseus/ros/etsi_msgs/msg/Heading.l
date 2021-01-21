;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::Heading)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'Heading (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::HEADING")
  (make-package "ETSI_MSGS::HEADING"))

(in-package "ROS")
;;//! \htmlinclude Heading.msg.html


(intern "*VALUE_NORTH*" (find-package "ETSI_MSGS::HEADING"))
(shadow '*VALUE_NORTH* (find-package "ETSI_MSGS::HEADING"))
(defconstant etsi_msgs::Heading::*VALUE_NORTH* 0)
(intern "*VALUE_EAST*" (find-package "ETSI_MSGS::HEADING"))
(shadow '*VALUE_EAST* (find-package "ETSI_MSGS::HEADING"))
(defconstant etsi_msgs::Heading::*VALUE_EAST* 900)
(intern "*VALUE_SOUTH*" (find-package "ETSI_MSGS::HEADING"))
(shadow '*VALUE_SOUTH* (find-package "ETSI_MSGS::HEADING"))
(defconstant etsi_msgs::Heading::*VALUE_SOUTH* 1800)
(intern "*VALUE_WEST*" (find-package "ETSI_MSGS::HEADING"))
(shadow '*VALUE_WEST* (find-package "ETSI_MSGS::HEADING"))
(defconstant etsi_msgs::Heading::*VALUE_WEST* 2700)
(intern "*VALUE_UNAVAILABLE*" (find-package "ETSI_MSGS::HEADING"))
(shadow '*VALUE_UNAVAILABLE* (find-package "ETSI_MSGS::HEADING"))
(defconstant etsi_msgs::Heading::*VALUE_UNAVAILABLE* 3601)
(intern "*CONFIDENCE_ZERO_POINT_ONE_DEGREE*" (find-package "ETSI_MSGS::HEADING"))
(shadow '*CONFIDENCE_ZERO_POINT_ONE_DEGREE* (find-package "ETSI_MSGS::HEADING"))
(defconstant etsi_msgs::Heading::*CONFIDENCE_ZERO_POINT_ONE_DEGREE* 1)
(intern "*CONFIDENCE_ONE_DEGREE*" (find-package "ETSI_MSGS::HEADING"))
(shadow '*CONFIDENCE_ONE_DEGREE* (find-package "ETSI_MSGS::HEADING"))
(defconstant etsi_msgs::Heading::*CONFIDENCE_ONE_DEGREE* 10)
(intern "*CONFIDENCE_OUT_OF_RANGE*" (find-package "ETSI_MSGS::HEADING"))
(shadow '*CONFIDENCE_OUT_OF_RANGE* (find-package "ETSI_MSGS::HEADING"))
(defconstant etsi_msgs::Heading::*CONFIDENCE_OUT_OF_RANGE* 126)
(intern "*CONFIDENCE_UNAVAILABLE*" (find-package "ETSI_MSGS::HEADING"))
(shadow '*CONFIDENCE_UNAVAILABLE* (find-package "ETSI_MSGS::HEADING"))
(defconstant etsi_msgs::Heading::*CONFIDENCE_UNAVAILABLE* 127)
(defclass etsi_msgs::Heading
  :super ros::object
  :slots (_value _confidence ))

(defmethod etsi_msgs::Heading
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
    ;; uint16 _value
    2
    ;; uint8 _confidence
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;; uint8 _confidence
       (write-byte _confidence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _confidence
     (setq _confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get etsi_msgs::Heading :md5sum-) "c491303b4798d5acaf220800ce478c5d")
(setf (get etsi_msgs::Heading :datatype-) "etsi_msgs/Heading")
(setf (get etsi_msgs::Heading :definition-)
      "uint16 value # 0.1 degree
uint8 confidence

uint16 VALUE_NORTH = 0
uint16 VALUE_EAST = 900
uint16 VALUE_SOUTH = 1800
uint16 VALUE_WEST = 2700
uint16 VALUE_UNAVAILABLE = 3601

uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1
uint8 CONFIDENCE_ONE_DEGREE = 10
uint8 CONFIDENCE_OUT_OF_RANGE = 126
uint8 CONFIDENCE_UNAVAILABLE = 127

")



(provide :etsi_msgs/Heading "c491303b4798d5acaf220800ce478c5d")


