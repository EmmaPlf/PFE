;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Phase)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Phase (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::PHASE")
  (make-package "ECE_MSGS::PHASE"))

(in-package "ROS")
;;//! \htmlinclude Phase.msg.html


(intern "*INIT*" (find-package "ECE_MSGS::PHASE"))
(shadow '*INIT* (find-package "ECE_MSGS::PHASE"))
(defconstant ece_msgs::Phase::*INIT* 0)
(intern "*INSERTION*" (find-package "ECE_MSGS::PHASE"))
(shadow '*INSERTION* (find-package "ECE_MSGS::PHASE"))
(defconstant ece_msgs::Phase::*INSERTION* 1)
(intern "*DESINSERTION*" (find-package "ECE_MSGS::PHASE"))
(shadow '*DESINSERTION* (find-package "ECE_MSGS::PHASE"))
(defconstant ece_msgs::Phase::*DESINSERTION* 2)
(intern "*FEU*" (find-package "ECE_MSGS::PHASE"))
(shadow '*FEU* (find-package "ECE_MSGS::PHASE"))
(defconstant ece_msgs::Phase::*FEU* 3)
(intern "*FREINAGE_URG*" (find-package "ECE_MSGS::PHASE"))
(shadow '*FREINAGE_URG* (find-package "ECE_MSGS::PHASE"))
(defconstant ece_msgs::Phase::*FREINAGE_URG* 4)
(defclass ece_msgs::Phase
  :super ros::object
  :slots (_value ))

(defmethod ece_msgs::Phase
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

(setf (get ece_msgs::Phase :md5sum-) "250a84fbe16f4f28908dcca677c4b00e")
(setf (get ece_msgs::Phase :datatype-) "ece_msgs/Phase")
(setf (get ece_msgs::Phase :definition-)
      "# Phase de plattoning
uint8 value

uint8 INIT = 0
uint8 INSERTION = 1
uint8 DESINSERTION = 2
uint8 FEU = 3
uint8 FREINAGE_URG = 4
")



(provide :ece_msgs/Phase "250a84fbe16f4f28908dcca677c4b00e")


