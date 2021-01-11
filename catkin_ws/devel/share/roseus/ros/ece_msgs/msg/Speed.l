;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Speed)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Speed (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::SPEED")
  (make-package "ECE_MSGS::SPEED"))

(in-package "ROS")
;;//! \htmlinclude Speed.msg.html


(intern "*VALUE_STANDSTILL*" (find-package "ECE_MSGS::SPEED"))
(shadow '*VALUE_STANDSTILL* (find-package "ECE_MSGS::SPEED"))
(defconstant ece_msgs::Speed::*VALUE_STANDSTILL* 0)
(intern "*VALUE_ONE_CENTIMETER_PER_SECOND*" (find-package "ECE_MSGS::SPEED"))
(shadow '*VALUE_ONE_CENTIMETER_PER_SECOND* (find-package "ECE_MSGS::SPEED"))
(defconstant ece_msgs::Speed::*VALUE_ONE_CENTIMETER_PER_SECOND* 1)
(intern "*VALUE_UNAVAILABLE*" (find-package "ECE_MSGS::SPEED"))
(shadow '*VALUE_UNAVAILABLE* (find-package "ECE_MSGS::SPEED"))
(defconstant ece_msgs::Speed::*VALUE_UNAVAILABLE* 16383)
(intern "*CONFIDENCE_OUT_OF_RANGE*" (find-package "ECE_MSGS::SPEED"))
(shadow '*CONFIDENCE_OUT_OF_RANGE* (find-package "ECE_MSGS::SPEED"))
(defconstant ece_msgs::Speed::*CONFIDENCE_OUT_OF_RANGE* 126)
(intern "*CONFIDENCE_UNAVAILABLE*" (find-package "ECE_MSGS::SPEED"))
(shadow '*CONFIDENCE_UNAVAILABLE* (find-package "ECE_MSGS::SPEED"))
(defconstant ece_msgs::Speed::*CONFIDENCE_UNAVAILABLE* 127)
(defclass ece_msgs::Speed
  :super ros::object
  :slots (_value _confidence ))

(defmethod ece_msgs::Speed
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

(setf (get ece_msgs::Speed :md5sum-) "5b56eda5b1e0934b6981a564e8935c18")
(setf (get ece_msgs::Speed :datatype-) "ece_msgs/Speed")
(setf (get ece_msgs::Speed :definition-)
      "uint16 value # 0.01 m/s
uint8 confidence # 0.01 m/s

uint16 VALUE_STANDSTILL = 0
uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
uint16 VALUE_UNAVAILABLE = 16383

uint8 CONFIDENCE_OUT_OF_RANGE = 126
uint8 CONFIDENCE_UNAVAILABLE = 127

")



(provide :ece_msgs/Speed "5b56eda5b1e0934b6981a564e8935c18")


