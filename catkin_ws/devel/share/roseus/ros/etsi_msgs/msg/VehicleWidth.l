;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::VehicleWidth)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'VehicleWidth (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::VEHICLEWIDTH")
  (make-package "ETSI_MSGS::VEHICLEWIDTH"))

(in-package "ROS")
;;//! \htmlinclude VehicleWidth.msg.html


(intern "*TEN_CENTIMETERS*" (find-package "ETSI_MSGS::VEHICLEWIDTH"))
(shadow '*TEN_CENTIMETERS* (find-package "ETSI_MSGS::VEHICLEWIDTH"))
(defconstant etsi_msgs::VehicleWidth::*TEN_CENTIMETERS* 1)
(intern "*OUT_OF_RANGE*" (find-package "ETSI_MSGS::VEHICLEWIDTH"))
(shadow '*OUT_OF_RANGE* (find-package "ETSI_MSGS::VEHICLEWIDTH"))
(defconstant etsi_msgs::VehicleWidth::*OUT_OF_RANGE* 61)
(intern "*UNAVAILABLE*" (find-package "ETSI_MSGS::VEHICLEWIDTH"))
(shadow '*UNAVAILABLE* (find-package "ETSI_MSGS::VEHICLEWIDTH"))
(defconstant etsi_msgs::VehicleWidth::*UNAVAILABLE* 62)
(defclass etsi_msgs::VehicleWidth
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::VehicleWidth
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

(setf (get etsi_msgs::VehicleWidth :md5sum-) "e63c01375861937c95cc07a981f79e09")
(setf (get etsi_msgs::VehicleWidth :datatype-) "etsi_msgs/VehicleWidth")
(setf (get etsi_msgs::VehicleWidth :definition-)
      "uint8 value # 0.1 meter

uint8 TEN_CENTIMETERS = 1
uint8 OUT_OF_RANGE = 61
uint8 UNAVAILABLE = 62

")



(provide :etsi_msgs/VehicleWidth "e63c01375861937c95cc07a981f79e09")


