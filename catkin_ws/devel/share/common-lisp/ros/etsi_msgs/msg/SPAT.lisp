; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude SPAT.msg.html

(cl:defclass <SPAT> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (its_header
    :reader its_header
    :initarg :its_header
    :type etsi_msgs-msg:ItsPduHeader
    :initform (cl:make-instance 'etsi_msgs-msg:ItsPduHeader))
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SPAT (<SPAT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SPAT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SPAT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<SPAT> is deprecated: use etsi_msgs-msg:SPAT instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SPAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:header-val is deprecated.  Use etsi_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'its_header-val :lambda-list '(m))
(cl:defmethod its_header-val ((m <SPAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:its_header-val is deprecated.  Use etsi_msgs-msg:its_header instead.")
  (its_header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SPAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:state-val is deprecated.  Use etsi_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SPAT>) ostream)
  "Serializes a message object of type '<SPAT>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'its_header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SPAT>) istream)
  "Deserializes a message object of type '<SPAT>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'its_header) istream)
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SPAT>)))
  "Returns string type for a message object of type '<SPAT>"
  "etsi_msgs/SPAT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SPAT)))
  "Returns string type for a message object of type 'SPAT"
  "etsi_msgs/SPAT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SPAT>)))
  "Returns md5sum for a message object of type '<SPAT>"
  "86077f2fe3b8fc4d55f087e7369c55b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SPAT)))
  "Returns md5sum for a message object of type 'SPAT"
  "86077f2fe3b8fc4d55f087e7369c55b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SPAT>)))
  "Returns full string definition for message of type '<SPAT>"
  (cl:format cl:nil "Header header~%ItsPduHeader its_header~%~%bool state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: etsi_msgs/ItsPduHeader~%uint8 protocol_version~%uint8 message_id~%uint32 station_id~%~%uint8 MESSAGE_ID_DENM = 1~%uint8 MESSAGE_ID_CAM = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SPAT)))
  "Returns full string definition for message of type 'SPAT"
  (cl:format cl:nil "Header header~%ItsPduHeader its_header~%~%bool state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: etsi_msgs/ItsPduHeader~%uint8 protocol_version~%uint8 message_id~%uint32 station_id~%~%uint8 MESSAGE_ID_DENM = 1~%uint8 MESSAGE_ID_CAM = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SPAT>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'its_header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SPAT>))
  "Converts a ROS message object to a list"
  (cl:list 'SPAT
    (cl:cons ':header (header msg))
    (cl:cons ':its_header (its_header msg))
    (cl:cons ':state (state msg))
))
