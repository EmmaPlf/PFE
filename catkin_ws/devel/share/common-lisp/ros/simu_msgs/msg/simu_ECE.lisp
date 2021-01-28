; Auto-generated. Do not edit!


(cl:in-package simu_msgs-msg)


;//! \htmlinclude simu_ECE.msg.html

(cl:defclass <simu_ECE> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (dest
    :reader dest
    :initarg :dest
    :type cl:fixnum
    :initform 0)
   (permission
    :reader permission
    :initarg :permission
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass simu_ECE (<simu_ECE>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simu_ECE>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simu_ECE)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simu_msgs-msg:<simu_ECE> is deprecated: use simu_msgs-msg:simu_ECE instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <simu_ECE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:header-val is deprecated.  Use simu_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'dest-val :lambda-list '(m))
(cl:defmethod dest-val ((m <simu_ECE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:dest-val is deprecated.  Use simu_msgs-msg:dest instead.")
  (dest m))

(cl:ensure-generic-function 'permission-val :lambda-list '(m))
(cl:defmethod permission-val ((m <simu_ECE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:permission-val is deprecated.  Use simu_msgs-msg:permission instead.")
  (permission m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simu_ECE>) ostream)
  "Serializes a message object of type '<simu_ECE>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'permission) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simu_ECE>) istream)
  "Deserializes a message object of type '<simu_ECE>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dest)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'permission) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simu_ECE>)))
  "Returns string type for a message object of type '<simu_ECE>"
  "simu_msgs/simu_ECE")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simu_ECE)))
  "Returns string type for a message object of type 'simu_ECE"
  "simu_msgs/simu_ECE")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simu_ECE>)))
  "Returns md5sum for a message object of type '<simu_ECE>"
  "854a5d894bacb9cbd8c41eec28f11a31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simu_ECE)))
  "Returns md5sum for a message object of type 'simu_ECE"
  "854a5d894bacb9cbd8c41eec28f11a31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simu_ECE>)))
  "Returns full string definition for message of type '<simu_ECE>"
  (cl:format cl:nil "Header header ~%~%uint8 dest~%~%bool permission~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simu_ECE)))
  "Returns full string definition for message of type 'simu_ECE"
  (cl:format cl:nil "Header header ~%~%uint8 dest~%~%bool permission~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simu_ECE>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simu_ECE>))
  "Converts a ROS message object to a list"
  (cl:list 'simu_ECE
    (cl:cons ':header (header msg))
    (cl:cons ':dest (dest msg))
    (cl:cons ':permission (permission msg))
))
