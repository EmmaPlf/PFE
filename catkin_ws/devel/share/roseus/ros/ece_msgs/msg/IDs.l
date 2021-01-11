;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::IDs)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'IDs (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::IDS")
  (make-package "ECE_MSGS::IDS"))

(in-package "ROS")
;;//! \htmlinclude IDs.msg.html


(defclass ece_msgs::IDs
  :super ros::object
  :slots (_ID _position ))

(defmethod ece_msgs::IDs
  (:init
   (&key
    ((:ID __ID) 0)
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _position (round __position))
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; uint8 _ID
    1
    ;; uint8 _position
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ID
       (write-byte _ID s)
     ;; uint8 _position
       (write-byte _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ID
     (setq _ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _position
     (setq _position (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ece_msgs::IDs :md5sum-) "f033ee2c58d32e679065279d1059f93e")
(setf (get ece_msgs::IDs :datatype-) "ece_msgs/IDs")
(setf (get ece_msgs::IDs :definition-)
      "uint8 ID
uint8 position
")



(provide :ece_msgs/IDs "f033ee2c58d32e679065279d1059f93e")


