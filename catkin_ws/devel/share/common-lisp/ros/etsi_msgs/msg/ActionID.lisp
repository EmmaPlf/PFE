; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude ActionID.msg.html

(cl:defclass <ActionID> (roslisp-msg-protocol:ros-message)
  ((station_id
    :reader station_id
    :initarg :station_id
    :type cl:integer
    :initform 0)
   (sequence_number
    :reader sequence_number
    :initarg :sequence_number
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ActionID (<ActionID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<ActionID> is deprecated: use etsi_msgs-msg:ActionID instead.")))

(cl:ensure-generic-function 'station_id-val :lambda-list '(m))
(cl:defmethod station_id-val ((m <ActionID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:station_id-val is deprecated.  Use etsi_msgs-msg:station_id instead.")
  (station_id m))

(cl:ensure-generic-function 'sequence_number-val :lambda-list '(m))
(cl:defmethod sequence_number-val ((m <ActionID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:sequence_number-val is deprecated.  Use etsi_msgs-msg:sequence_number instead.")
  (sequence_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionID>) ostream)
  "Serializes a message object of type '<ActionID>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence_number)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionID>) istream)
  "Deserializes a message object of type '<ActionID>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence_number)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionID>)))
  "Returns string type for a message object of type '<ActionID>"
  "etsi_msgs/ActionID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionID)))
  "Returns string type for a message object of type 'ActionID"
  "etsi_msgs/ActionID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionID>)))
  "Returns md5sum for a message object of type '<ActionID>"
  "11aa5c3558afdafb4f3a2fc76d0b6ed8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionID)))
  "Returns md5sum for a message object of type 'ActionID"
  "11aa5c3558afdafb4f3a2fc76d0b6ed8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionID>)))
  "Returns full string definition for message of type '<ActionID>"
  (cl:format cl:nil "uint32 station_id~%uint16 sequence_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionID)))
  "Returns full string definition for message of type 'ActionID"
  (cl:format cl:nil "uint32 station_id~%uint16 sequence_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionID>))
  (cl:+ 0
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionID>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionID
    (cl:cons ':station_id (station_id msg))
    (cl:cons ':sequence_number (sequence_number msg))
))
