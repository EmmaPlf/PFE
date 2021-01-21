;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::VehicleRole)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'VehicleRole (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::VEHICLEROLE")
  (make-package "ETSI_MSGS::VEHICLEROLE"))

(in-package "ROS")
;;//! \htmlinclude VehicleRole.msg.html


(intern "*DEFAULT*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*DEFAULT* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*DEFAULT* 0)
(intern "*PUBLIC_TRANSPORT*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*PUBLIC_TRANSPORT* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*PUBLIC_TRANSPORT* 1)
(intern "*SPECIAL_TRANSPORT*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*SPECIAL_TRANSPORT* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*SPECIAL_TRANSPORT* 2)
(intern "*DANGEROUS_GOODS*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*DANGEROUS_GOODS* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*DANGEROUS_GOODS* 3)
(intern "*ROAD_WORK*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*ROAD_WORK* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*ROAD_WORK* 4)
(intern "*RESCUE*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*RESCUE* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*RESCUE* 5)
(intern "*EMERGENCY*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*EMERGENCY* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*EMERGENCY* 6)
(intern "*SAFETY_CAR*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*SAFETY_CAR* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*SAFETY_CAR* 7)
(intern "*AGRICULTURE*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*AGRICULTURE* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*AGRICULTURE* 8)
(intern "*COMMERCIAL*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*COMMERCIAL* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*COMMERCIAL* 9)
(intern "*MILITARY*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*MILITARY* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*MILITARY* 10)
(intern "*ROAD_OPERATOR*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*ROAD_OPERATOR* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*ROAD_OPERATOR* 11)
(intern "*TAXI*" (find-package "ETSI_MSGS::VEHICLEROLE"))
(shadow '*TAXI* (find-package "ETSI_MSGS::VEHICLEROLE"))
(defconstant etsi_msgs::VehicleRole::*TAXI* 12)
(defclass etsi_msgs::VehicleRole
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::VehicleRole
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

(setf (get etsi_msgs::VehicleRole :md5sum-) "d6cea9b95e10cef110efe27272e9c052")
(setf (get etsi_msgs::VehicleRole :datatype-) "etsi_msgs/VehicleRole")
(setf (get etsi_msgs::VehicleRole :definition-)
      "uint8 value

uint8 DEFAULT = 0
uint8 PUBLIC_TRANSPORT = 1
uint8 SPECIAL_TRANSPORT = 2
uint8 DANGEROUS_GOODS = 3
uint8 ROAD_WORK = 4
uint8 RESCUE = 5
uint8 EMERGENCY = 6
uint8 SAFETY_CAR = 7
uint8 AGRICULTURE = 8
uint8 COMMERCIAL = 9
uint8 MILITARY = 10
uint8 ROAD_OPERATOR = 11
uint8 TAXI = 12

")



(provide :etsi_msgs/VehicleRole "d6cea9b95e10cef110efe27272e9c052")


