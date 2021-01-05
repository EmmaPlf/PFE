;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::CurvatureCalculationMode)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'CurvatureCalculationMode (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::CURVATURECALCULATIONMODE")
  (make-package "ETSI_MSGS::CURVATURECALCULATIONMODE"))

(in-package "ROS")
;;//! \htmlinclude CurvatureCalculationMode.msg.html


(intern "*YAW_RATE_USED*" (find-package "ETSI_MSGS::CURVATURECALCULATIONMODE"))
(shadow '*YAW_RATE_USED* (find-package "ETSI_MSGS::CURVATURECALCULATIONMODE"))
(defconstant etsi_msgs::CurvatureCalculationMode::*YAW_RATE_USED* 0)
(intern "*YAW_RATE_NOT_USED*" (find-package "ETSI_MSGS::CURVATURECALCULATIONMODE"))
(shadow '*YAW_RATE_NOT_USED* (find-package "ETSI_MSGS::CURVATURECALCULATIONMODE"))
(defconstant etsi_msgs::CurvatureCalculationMode::*YAW_RATE_NOT_USED* 1)
(intern "*UNAVAILABLE*" (find-package "ETSI_MSGS::CURVATURECALCULATIONMODE"))
(shadow '*UNAVAILABLE* (find-package "ETSI_MSGS::CURVATURECALCULATIONMODE"))
(defconstant etsi_msgs::CurvatureCalculationMode::*UNAVAILABLE* 2)
(defclass etsi_msgs::CurvatureCalculationMode
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::CurvatureCalculationMode
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

(setf (get etsi_msgs::CurvatureCalculationMode :md5sum-) "46ebf604228ff7c0dfdb747adbeb4d5b")
(setf (get etsi_msgs::CurvatureCalculationMode :datatype-) "etsi_msgs/CurvatureCalculationMode")
(setf (get etsi_msgs::CurvatureCalculationMode :definition-)
      "uint8 value

uint8 YAW_RATE_USED = 0
uint8 YAW_RATE_NOT_USED = 1
uint8 UNAVAILABLE = 2

")



(provide :etsi_msgs/CurvatureCalculationMode "46ebf604228ff7c0dfdb747adbeb4d5b")


