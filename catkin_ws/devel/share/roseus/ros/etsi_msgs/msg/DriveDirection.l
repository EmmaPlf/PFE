;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::DriveDirection)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'DriveDirection (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::DRIVEDIRECTION")
  (make-package "ETSI_MSGS::DRIVEDIRECTION"))

(in-package "ROS")
;;//! \htmlinclude DriveDirection.msg.html


(intern "*FORWARD*" (find-package "ETSI_MSGS::DRIVEDIRECTION"))
(shadow '*FORWARD* (find-package "ETSI_MSGS::DRIVEDIRECTION"))
(defconstant etsi_msgs::DriveDirection::*FORWARD* 0)
(intern "*BACKWARD*" (find-package "ETSI_MSGS::DRIVEDIRECTION"))
(shadow '*BACKWARD* (find-package "ETSI_MSGS::DRIVEDIRECTION"))
(defconstant etsi_msgs::DriveDirection::*BACKWARD* 1)
(intern "*UNAVAILABLE*" (find-package "ETSI_MSGS::DRIVEDIRECTION"))
(shadow '*UNAVAILABLE* (find-package "ETSI_MSGS::DRIVEDIRECTION"))
(defconstant etsi_msgs::DriveDirection::*UNAVAILABLE* 2)
(defclass etsi_msgs::DriveDirection
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::DriveDirection
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

(setf (get etsi_msgs::DriveDirection :md5sum-) "e7c4468e05dd718a6e0b85eb1d7fb26f")
(setf (get etsi_msgs::DriveDirection :datatype-) "etsi_msgs/DriveDirection")
(setf (get etsi_msgs::DriveDirection :definition-)
      "uint8 value

uint8 FORWARD = 0
uint8 BACKWARD = 1
uint8 UNAVAILABLE = 2

")



(provide :etsi_msgs/DriveDirection "e7c4468e05dd718a6e0b85eb1d7fb26f")


