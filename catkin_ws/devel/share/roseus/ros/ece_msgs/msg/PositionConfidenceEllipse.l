;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::PositionConfidenceEllipse)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'PositionConfidenceEllipse (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::POSITIONCONFIDENCEELLIPSE")
  (make-package "ECE_MSGS::POSITIONCONFIDENCEELLIPSE"))

(in-package "ROS")
;;//! \htmlinclude PositionConfidenceEllipse.msg.html


(intern "*SEMI_AXIS_LENGTH_OUT_OF_RANGE*" (find-package "ECE_MSGS::POSITIONCONFIDENCEELLIPSE"))
(shadow '*SEMI_AXIS_LENGTH_OUT_OF_RANGE* (find-package "ECE_MSGS::POSITIONCONFIDENCEELLIPSE"))
(defconstant ece_msgs::PositionConfidenceEllipse::*SEMI_AXIS_LENGTH_OUT_OF_RANGE* 4094)
(intern "*SEMI_AXIS_LENGTH_UNAVAILABLE*" (find-package "ECE_MSGS::POSITIONCONFIDENCEELLIPSE"))
(shadow '*SEMI_AXIS_LENGTH_UNAVAILABLE* (find-package "ECE_MSGS::POSITIONCONFIDENCEELLIPSE"))
(defconstant ece_msgs::PositionConfidenceEllipse::*SEMI_AXIS_LENGTH_UNAVAILABLE* 4095)
(defclass ece_msgs::PositionConfidenceEllipse
  :super ros::object
  :slots (_semi_major_confidence _semi_minor_confidence _semi_major_orientation ))

(defmethod ece_msgs::PositionConfidenceEllipse
  (:init
   (&key
    ((:semi_major_confidence __semi_major_confidence) 0)
    ((:semi_minor_confidence __semi_minor_confidence) 0)
    ((:semi_major_orientation __semi_major_orientation) 0)
    )
   (send-super :init)
   (setq _semi_major_confidence (round __semi_major_confidence))
   (setq _semi_minor_confidence (round __semi_minor_confidence))
   (setq _semi_major_orientation (round __semi_major_orientation))
   self)
  (:semi_major_confidence
   (&optional __semi_major_confidence)
   (if __semi_major_confidence (setq _semi_major_confidence __semi_major_confidence)) _semi_major_confidence)
  (:semi_minor_confidence
   (&optional __semi_minor_confidence)
   (if __semi_minor_confidence (setq _semi_minor_confidence __semi_minor_confidence)) _semi_minor_confidence)
  (:semi_major_orientation
   (&optional __semi_major_orientation)
   (if __semi_major_orientation (setq _semi_major_orientation __semi_major_orientation)) _semi_major_orientation)
  (:serialization-length
   ()
   (+
    ;; uint16 _semi_major_confidence
    2
    ;; uint16 _semi_minor_confidence
    2
    ;; uint16 _semi_major_orientation
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _semi_major_confidence
       (write-word _semi_major_confidence s)
     ;; uint16 _semi_minor_confidence
       (write-word _semi_minor_confidence s)
     ;; uint16 _semi_major_orientation
       (write-word _semi_major_orientation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _semi_major_confidence
     (setq _semi_major_confidence (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _semi_minor_confidence
     (setq _semi_minor_confidence (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _semi_major_orientation
     (setq _semi_major_orientation (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ece_msgs::PositionConfidenceEllipse :md5sum-) "c20c3376bfa1f7fa4fce4f692844e203")
(setf (get ece_msgs::PositionConfidenceEllipse :datatype-) "ece_msgs/PositionConfidenceEllipse")
(setf (get ece_msgs::PositionConfidenceEllipse :definition-)
      "uint16 semi_major_confidence # cm
uint16 semi_minor_confidence # cm
uint16 semi_major_orientation # 0.1 degree

uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095

")



(provide :ece_msgs/PositionConfidenceEllipse "c20c3376bfa1f7fa4fce4f692844e203")


