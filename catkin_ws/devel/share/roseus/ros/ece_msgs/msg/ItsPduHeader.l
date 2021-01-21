;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::ItsPduHeader)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'ItsPduHeader (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::ITSPDUHEADER")
  (make-package "ECE_MSGS::ITSPDUHEADER"))

(in-package "ROS")
;;//! \htmlinclude ItsPduHeader.msg.html


(intern "*MESSAGE_ID_DENM*" (find-package "ECE_MSGS::ITSPDUHEADER"))
(shadow '*MESSAGE_ID_DENM* (find-package "ECE_MSGS::ITSPDUHEADER"))
(defconstant ece_msgs::ItsPduHeader::*MESSAGE_ID_DENM* 1)
(intern "*MESSAGE_ID_CAM*" (find-package "ECE_MSGS::ITSPDUHEADER"))
(shadow '*MESSAGE_ID_CAM* (find-package "ECE_MSGS::ITSPDUHEADER"))
(defconstant ece_msgs::ItsPduHeader::*MESSAGE_ID_CAM* 2)
(intern "*MESSAGE_ID_ECE*" (find-package "ECE_MSGS::ITSPDUHEADER"))
(shadow '*MESSAGE_ID_ECE* (find-package "ECE_MSGS::ITSPDUHEADER"))
(defconstant ece_msgs::ItsPduHeader::*MESSAGE_ID_ECE* 8)
(defclass ece_msgs::ItsPduHeader
  :super ros::object
  :slots (_protocol_version _message_id _station_id ))

(defmethod ece_msgs::ItsPduHeader
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

(setf (get ece_msgs::ItsPduHeader :md5sum-) "11c9ba5f62074a5d8d5f31309d5b72b6")
(setf (get ece_msgs::ItsPduHeader :datatype-) "ece_msgs/ItsPduHeader")
(setf (get ece_msgs::ItsPduHeader :definition-)
      "uint8 protocol_version
uint8 message_id
uint32 station_id

uint8 MESSAGE_ID_DENM = 1
uint8 MESSAGE_ID_CAM = 2
uint8 MESSAGE_ID_ECE = 8
")



(provide :ece_msgs/ItsPduHeader "11c9ba5f62074a5d8d5f31309d5b72b6")


