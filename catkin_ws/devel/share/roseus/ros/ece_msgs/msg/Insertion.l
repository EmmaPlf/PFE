;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Insertion)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Insertion (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::INSERTION")
  (make-package "ECE_MSGS::INSERTION"))

(in-package "ROS")
;;//! \htmlinclude Insertion.msg.html


(defclass ece_msgs::Insertion
  :super ros::object
  :slots (_point_insertion _confirmation_insertion ))

(defmethod ece_msgs::Insertion
  (:init
   (&key
    ((:point_insertion __point_insertion) (instance ece_msgs::ReferencePosition :init))
    ((:confirmation_insertion __confirmation_insertion) nil)
    )
   (send-super :init)
   (setq _point_insertion __point_insertion)
   (setq _confirmation_insertion __confirmation_insertion)
   self)
  (:point_insertion
   (&rest __point_insertion)
   (if (keywordp (car __point_insertion))
       (send* _point_insertion __point_insertion)
     (progn
       (if __point_insertion (setq _point_insertion (car __point_insertion)))
       _point_insertion)))
  (:confirmation_insertion
   (&optional __confirmation_insertion)
   (if __confirmation_insertion (setq _confirmation_insertion __confirmation_insertion)) _confirmation_insertion)
  (:serialization-length
   ()
   (+
    ;; ece_msgs/ReferencePosition _point_insertion
    (send _point_insertion :serialization-length)
    ;; bool _confirmation_insertion
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ece_msgs/ReferencePosition _point_insertion
       (send _point_insertion :serialize s)
     ;; bool _confirmation_insertion
       (if _confirmation_insertion (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ece_msgs/ReferencePosition _point_insertion
     (send _point_insertion :deserialize buf ptr-) (incf ptr- (send _point_insertion :serialization-length))
   ;; bool _confirmation_insertion
     (setq _confirmation_insertion (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ece_msgs::Insertion :md5sum-) "445e7910d0486ca2159677b916542c18")
(setf (get ece_msgs::Insertion :datatype-) "ece_msgs/Insertion")
(setf (get ece_msgs::Insertion :definition-)
      "# Point d'insertion : 8 octet 
ReferencePosition point_insertion

# Confirmation insertion : 1 octet
bool confirmation_insertion
================================================================================
MSG: ece_msgs/ReferencePosition
int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
int32 altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001
int32 ALTITUDE_UNAVAILABLE = 800001

")



(provide :ece_msgs/Insertion "445e7910d0486ca2159677b916542c18")


