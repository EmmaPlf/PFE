;; Auto-generated. Do not edit!


(when (boundp 'simu_msgs::ItsPduHeader)
  (if (not (find-package "SIMU_MSGS"))
    (make-package "SIMU_MSGS"))
  (shadow 'ItsPduHeader (find-package "SIMU_MSGS")))
(unless (find-package "SIMU_MSGS::ITSPDUHEADER")
  (make-package "SIMU_MSGS::ITSPDUHEADER"))

(in-package "ROS")
;;//! \htmlinclude ItsPduHeader.msg.html


(intern "*MESSAGE_ID_DENM*" (find-package "SIMU_MSGS::ITSPDUHEADER"))
(shadow '*MESSAGE_ID_DENM* (find-package "SIMU_MSGS::ITSPDUHEADER"))
(defconstant simu_msgs::ItsPduHeader::*MESSAGE_ID_DENM* 1)
(intern "*MESSAGE_ID_CAM*" (find-package "SIMU_MSGS::ITSPDUHEADER"))
(shadow '*MESSAGE_ID_CAM* (find-package "SIMU_MSGS::ITSPDUHEADER"))
(defconstant simu_msgs::ItsPduHeader::*MESSAGE_ID_CAM* 2)
(defclass simu_msgs::ItsPduHeader
  :super ros::object
  :slots (_protocol_version _message_id _station_id ))

(defmethod simu_msgs::ItsPduHeader
  (:init
   (&key
    ((:protocol_version __protocol_version) 0)
    ((:message_id __message_id) 0)
    ((:station_id __station_id) 0)
    )
   (send-super :init)
   (setq _protocol_version (round __protocol_version))
   (setq _message_id (round __message_id))
   (setq _station_id (round __station_id))
   self)
  (:protocol_version
   (&optional __protocol_version)
   (if __protocol_version (setq _protocol_version __protocol_version)) _protocol_version)
  (:message_id
   (&optional __message_id)
   (if __message_id (setq _message_id __message_id)) _message_id)
  (:station_id
   (&optional __station_id)
   (if __station_id (setq _station_id __station_id)) _station_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _protocol_version
    1
    ;; uint8 _message_id
    1
    ;; uint32 _station_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _protocol_version
       (write-byte _protocol_version s)
     ;; uint8 _message_id
       (write-byte _message_id s)
     ;; uint32 _station_id
       (write-long _station_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _protocol_version
     (setq _protocol_version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _message_id
     (setq _message_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _station_id
     (setq _station_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get simu_msgs::ItsPduHeader :md5sum-) "493dd45f242245ef547b44cf2be57f2d")
(setf (get simu_msgs::ItsPduHeader :datatype-) "simu_msgs/ItsPduHeader")
(setf (get simu_msgs::ItsPduHeader :definition-)
      "uint8 protocol_version
uint8 message_id
uint32 station_id

uint8 MESSAGE_ID_DENM = 1
uint8 MESSAGE_ID_CAM = 2

")



(provide :simu_msgs/ItsPduHeader "493dd45f242245ef547b44cf2be57f2d")


