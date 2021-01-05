;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::InformationQuality)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'InformationQuality (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::INFORMATIONQUALITY")
  (make-package "ETSI_MSGS::INFORMATIONQUALITY"))

(in-package "ROS")
;;//! \htmlinclude InformationQuality.msg.html


(intern "*UNAVAILABLE*" (find-package "ETSI_MSGS::INFORMATIONQUALITY"))
(shadow '*UNAVAILABLE* (find-package "ETSI_MSGS::INFORMATIONQUALITY"))
(defconstant etsi_msgs::InformationQuality::*UNAVAILABLE* 0)
(intern "*LOWEST*" (find-package "ETSI_MSGS::INFORMATIONQUALITY"))
(shadow '*LOWEST* (find-package "ETSI_MSGS::INFORMATIONQUALITY"))
(defconstant etsi_msgs::InformationQuality::*LOWEST* 1)
(intern "*HIGHEST*" (find-package "ETSI_MSGS::INFORMATIONQUALITY"))
(shadow '*HIGHEST* (find-package "ETSI_MSGS::INFORMATIONQUALITY"))
(defconstant etsi_msgs::InformationQuality::*HIGHEST* 7)
(defclass etsi_msgs::InformationQuality
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::InformationQuality
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
    ;; int8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _value 127) (setq _value (- _value 256)))
   ;;
   self)
  )

(setf (get etsi_msgs::InformationQuality :md5sum-) "b06931e013e257f658419d4d45f44c4a")
(setf (get etsi_msgs::InformationQuality :datatype-) "etsi_msgs/InformationQuality")
(setf (get etsi_msgs::InformationQuality :definition-)
      "int8 value

int8 UNAVAILABLE = 0
int8 LOWEST = 1
int8 HIGHEST = 7

")



(provide :etsi_msgs/InformationQuality "b06931e013e257f658419d4d45f44c4a")


