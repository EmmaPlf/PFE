;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::FreinageUrgence)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'FreinageUrgence (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::FREINAGEURGENCE")
  (make-package "ECE_MSGS::FREINAGEURGENCE"))

(in-package "ROS")
;;//! \htmlinclude FreinageUrgence.msg.html


(defclass ece_msgs::FreinageUrgence
  :super ros::object
  :slots (_position ))

(defmethod ece_msgs::FreinageUrgence
  (:init
   (&key
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _position (round __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; uint8 _position
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _position
       (write-byte _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _position
     (setq _position (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ece_msgs::FreinageUrgence :md5sum-) "6dd1aa2cda989887d566114cab493168")
(setf (get ece_msgs::FreinageUrgence :datatype-) "ece_msgs/FreinageUrgence")
(setf (get ece_msgs::FreinageUrgence :definition-)
      "# Position P : 2 bits
uint8 position
")



(provide :ece_msgs/FreinageUrgence "6dd1aa2cda989887d566114cab493168")


