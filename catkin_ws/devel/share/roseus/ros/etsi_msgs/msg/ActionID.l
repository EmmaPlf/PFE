;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::ActionID)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'ActionID (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::ACTIONID")
  (make-package "ETSI_MSGS::ACTIONID"))

(in-package "ROS")
;;//! \htmlinclude ActionID.msg.html


(defclass etsi_msgs::ActionID
  :super ros::object
  :slots (_station_id _sequence_number ))

(defmethod etsi_msgs::ActionID
  (:init
   (&key
    ((:station_id __station_id) 0)
    ((:sequence_number __sequence_number) 0)
    )
   (send-super :init)
   (setq _station_id (round __station_id))
   (setq _sequence_number (round __sequence_number))
   self)
  (:station_id
   (&optional __station_id)
   (if __station_id (setq _station_id __station_id)) _station_id)
  (:sequence_number
   (&optional __sequence_number)
   (if __sequence_number (setq _sequence_number __sequence_number)) _sequence_number)
  (:serialization-length
   ()
   (+
    ;; uint32 _station_id
    4
    ;; uint16 _sequence_number
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _station_id
       (write-long _station_id s)
     ;; uint16 _sequence_number
       (write-word _sequence_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _station_id
     (setq _station_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _sequence_number
     (setq _sequence_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get etsi_msgs::ActionID :md5sum-) "11aa5c3558afdafb4f3a2fc76d0b6ed8")
(setf (get etsi_msgs::ActionID :datatype-) "etsi_msgs/ActionID")
(setf (get etsi_msgs::ActionID :definition-)
      "uint32 station_id
uint16 sequence_number

")



(provide :etsi_msgs/ActionID "11aa5c3558afdafb4f3a2fc76d0b6ed8")


