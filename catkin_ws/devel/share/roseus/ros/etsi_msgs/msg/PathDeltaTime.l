;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::PathDeltaTime)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'PathDeltaTime (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::PATHDELTATIME")
  (make-package "ETSI_MSGS::PATHDELTATIME"))

(in-package "ROS")
;;//! \htmlinclude PathDeltaTime.msg.html


(intern "*UNAVAILABLE*" (find-package "ETSI_MSGS::PATHDELTATIME"))
(shadow '*UNAVAILABLE* (find-package "ETSI_MSGS::PATHDELTATIME"))
(defconstant etsi_msgs::PathDeltaTime::*UNAVAILABLE* 0)
(intern "*TEN_MILLISECONDS_IN_PAST*" (find-package "ETSI_MSGS::PATHDELTATIME"))
(shadow '*TEN_MILLISECONDS_IN_PAST* (find-package "ETSI_MSGS::PATHDELTATIME"))
(defconstant etsi_msgs::PathDeltaTime::*TEN_MILLISECONDS_IN_PAST* 1)
(defclass etsi_msgs::PathDeltaTime
  :super ros::object
  :slots (_value ))

(defmethod etsi_msgs::PathDeltaTime
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
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get etsi_msgs::PathDeltaTime :md5sum-) "5c0695d8e0c2e70267666b597c8d9aee")
(setf (get etsi_msgs::PathDeltaTime :datatype-) "etsi_msgs/PathDeltaTime")
(setf (get etsi_msgs::PathDeltaTime :definition-)
      "uint16 value # 10 ms

uint16 UNAVAILABLE = 0
uint16 TEN_MILLISECONDS_IN_PAST = 1

")



(provide :etsi_msgs/PathDeltaTime "5c0695d8e0c2e70267666b597c8d9aee")


