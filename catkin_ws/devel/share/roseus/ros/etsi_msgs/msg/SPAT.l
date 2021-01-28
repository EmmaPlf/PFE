;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::SPAT)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'SPAT (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::SPAT")
  (make-package "ETSI_MSGS::SPAT"))

(in-package "ROS")
;;//! \htmlinclude SPAT.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass etsi_msgs::SPAT
  :super ros::object
  :slots (_header _its_header _state ))

(defmethod etsi_msgs::SPAT
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:its_header __its_header) (instance etsi_msgs::ItsPduHeader :init))
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _its_header __its_header)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:its_header
   (&rest __its_header)
   (if (keywordp (car __its_header))
       (send* _its_header __its_header)
     (progn
       (if __its_header (setq _its_header (car __its_header)))
       _its_header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; etsi_msgs/ItsPduHeader _its_header
    (send _its_header :serialization-length)
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; etsi_msgs/ItsPduHeader _its_header
       (send _its_header :serialize s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; etsi_msgs/ItsPduHeader _its_header
     (send _its_header :deserialize buf ptr-) (incf ptr- (send _its_header :serialization-length))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get etsi_msgs::SPAT :md5sum-) "86077f2fe3b8fc4d55f087e7369c55b0")
(setf (get etsi_msgs::SPAT :datatype-) "etsi_msgs/SPAT")
(setf (get etsi_msgs::SPAT :definition-)
      "Header header
ItsPduHeader its_header

bool state
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: etsi_msgs/ItsPduHeader
uint8 protocol_version
uint8 message_id
uint32 station_id

uint8 MESSAGE_ID_DENM = 1
uint8 MESSAGE_ID_CAM = 2

")



(provide :etsi_msgs/SPAT "86077f2fe3b8fc4d55f087e7369c55b0")


