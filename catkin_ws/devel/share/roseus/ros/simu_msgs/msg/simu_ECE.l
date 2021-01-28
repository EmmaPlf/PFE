;; Auto-generated. Do not edit!


(when (boundp 'simu_msgs::simu_ECE)
  (if (not (find-package "SIMU_MSGS"))
    (make-package "SIMU_MSGS"))
  (shadow 'simu_ECE (find-package "SIMU_MSGS")))
(unless (find-package "SIMU_MSGS::SIMU_ECE")
  (make-package "SIMU_MSGS::SIMU_ECE"))

(in-package "ROS")
;;//! \htmlinclude simu_ECE.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass simu_msgs::simu_ECE
  :super ros::object
  :slots (_header _dest _permission ))

(defmethod simu_msgs::simu_ECE
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:dest __dest) 0)
    ((:permission __permission) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _dest (round __dest))
   (setq _permission __permission)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:dest
   (&optional __dest)
   (if __dest (setq _dest __dest)) _dest)
  (:permission
   (&optional __permission)
   (if __permission (setq _permission __permission)) _permission)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _dest
    1
    ;; bool _permission
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _dest
       (write-byte _dest s)
     ;; bool _permission
       (if _permission (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _dest
     (setq _dest (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _permission
     (setq _permission (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get simu_msgs::simu_ECE :md5sum-) "854a5d894bacb9cbd8c41eec28f11a31")
(setf (get simu_msgs::simu_ECE :datatype-) "simu_msgs/simu_ECE")
(setf (get simu_msgs::simu_ECE :definition-)
      "Header header 

uint8 dest

bool permission
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

")



(provide :simu_msgs/simu_ECE "854a5d894bacb9cbd8c41eec28f11a31")


