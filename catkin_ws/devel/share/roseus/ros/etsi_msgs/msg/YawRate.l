;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::YawRate)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'YawRate (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::YAWRATE")
  (make-package "ETSI_MSGS::YAWRATE"))

(in-package "ROS")
;;//! \htmlinclude YawRate.msg.html


(intern "*VALUE_UNAVAILABLE*" (find-package "ETSI_MSGS::YAWRATE"))
(shadow '*VALUE_UNAVAILABLE* (find-package "ETSI_MSGS::YAWRATE"))
(defconstant etsi_msgs::YawRate::*VALUE_UNAVAILABLE* 32767)
(intern "*CONFIDENCE_0DOT01_DEGSEC*" (find-package "ETSI_MSGS::YAWRATE"))
(shadow '*CONFIDENCE_0DOT01_DEGSEC* (find-package "ETSI_MSGS::YAWRATE"))
(defconstant etsi_msgs::YawRate::*CONFIDENCE_0DOT01_DEGSEC* 0)
(intern "*CONFIDENCE_0DOT05_DEGSEC*" (find-package "ETSI_MSGS::YAWRATE"))
(shadow '*CONFIDENCE_0DOT05_DEGSEC* (find-package "ETSI_MSGS::YAWRATE"))
(defconstant etsi_msgs::YawRate::*CONFIDENCE_0DOT05_DEGSEC* 1)
(intern "*CONFIDENCE_0DOT1_DEGSEC*" (find-package "ETSI_MSGS::YAWRATE"))
(shadow '*CONFIDENCE_0DOT1_DEGSEC* (find-package "ETSI_MSGS::YAWRATE"))
(defconstant etsi_msgs::YawRate::*CONFIDENCE_0DOT1_DEGSEC* 2)
(intern "*CONFIDENCE_1_DEGSEC*" (find-package "ETSI_MSGS::YAWRATE"))
(shadow '*CONFIDENCE_1_DEGSEC* (find-package "ETSI_MSGS::YAWRATE"))
(defconstant etsi_msgs::YawRate::*CONFIDENCE_1_DEGSEC* 3)
(intern "*CONFIDENCE_5_DEGSEC*" (find-package "ETSI_MSGS::YAWRATE"))
(shadow '*CONFIDENCE_5_DEGSEC* (find-package "ETSI_MSGS::YAWRATE"))
(defconstant etsi_msgs::YawRate::*CONFIDENCE_5_DEGSEC* 4)
(intern "*CONFIDENCE_10_DEGSEC*" (find-package "ETSI_MSGS::YAWRATE"))
(shadow '*CONFIDENCE_10_DEGSEC* (find-package "ETSI_MSGS::YAWRATE"))
(defconstant etsi_msgs::YawRate::*CONFIDENCE_10_DEGSEC* 5)
(intern "*CONFIDENCE_100_DEGSEC*" (find-package "ETSI_MSGS::YAWRATE"))
(shadow '*CONFIDENCE_100_DEGSEC* (find-package "ETSI_MSGS::YAWRATE"))
(defconstant etsi_msgs::YawRate::*CONFIDENCE_100_DEGSEC* 6)
(intern "*CONFIDENCE_OUT_OF_RANGE*" (find-package "ETSI_MSGS::YAWRATE"))
(shadow '*CONFIDENCE_OUT_OF_RANGE* (find-package "ETSI_MSGS::YAWRATE"))
(defconstant etsi_msgs::YawRate::*CONFIDENCE_OUT_OF_RANGE* 7)
(intern "*CONFIDENCE_UNAVAILABLE*" (find-package "ETSI_MSGS::YAWRATE"))
(shadow '*CONFIDENCE_UNAVAILABLE* (find-package "ETSI_MSGS::YAWRATE"))
(defconstant etsi_msgs::YawRate::*CONFIDENCE_UNAVAILABLE* 8)
(defclass etsi_msgs::YawRate
  :super ros::object
  :slots (_value _confidence ))

(defmethod etsi_msgs::YawRate
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

(setf (get etsi_msgs::YawRate :md5sum-) "dca9682f2a1621772f3f01aff9d9e072")
(setf (get etsi_msgs::YawRate :datatype-) "etsi_msgs/YawRate")
(setf (get etsi_msgs::YawRate :definition-)
      "int16 value # 0.01 degree/s
uint8 confidence

int16 VALUE_UNAVAILABLE = 32767

uint8 CONFIDENCE_0DOT01_DEGSEC = 0
uint8 CONFIDENCE_0DOT05_DEGSEC = 1
uint8 CONFIDENCE_0DOT1_DEGSEC = 2
uint8 CONFIDENCE_1_DEGSEC = 3
uint8 CONFIDENCE_5_DEGSEC = 4
uint8 CONFIDENCE_10_DEGSEC = 5
uint8 CONFIDENCE_100_DEGSEC = 6
uint8 CONFIDENCE_OUT_OF_RANGE = 7
uint8 CONFIDENCE_UNAVAILABLE = 8

")



(provide :etsi_msgs/YawRate "dca9682f2a1621772f3f01aff9d9e072")


