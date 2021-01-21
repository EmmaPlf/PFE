; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude ItsPduHeader.msg.html

(cl:defclass <ItsPduHeader> (roslisp-msg-protocol:ros-message)
  ((protocol_version
    :reader protocol_version
    :initarg :protocol_version
    :type cl:fixnum
    :initform 0)
   (message_id
    :reader message_id
    :initarg :message_id
    :type cl:fixnum
    :initform 0)
   (station_id
    :reader station_id
    :initarg :station_id
    :type cl:integer
    :initform 0))
)

(cl:defclass ItsPduHeader (<ItsPduHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ItsPduHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ItsPduHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<ItsPduHeader> is deprecated: use ece_msgs-msg:ItsPduHeader instead.")))

(cl:ensure-generic-function 'protocol_version-val :lambda-list '(m))
(cl:defmethod protocol_version-val ((m <ItsPduHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:protocol_version-val is deprecated.  Use ece_msgs-msg:protocol_version instead.")
  (protocol_version m))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <ItsPduHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:message_id-val is deprecated.  Use ece_msgs-msg:message_id instead.")
  (message_id m))

(cl:ensure-generic-function 'station_id-val :lambda-list '(m))
(cl:defmethod station_id-val ((m <ItsPduHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:station_id-val is deprecated.  Use ece_msgs-msg:station_id instead.")
  (station_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ItsPduHeader>)))
    "Constants for message type '<ItsPduHeader>"
  '((:MESSAGE_ID_DENM . 1)
    (:MESSAGE_ID_CAM . 2)
    (:MESSAGE_ID_ECE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ItsPduHeader)))
    "Constants for message type 'ItsPduHeader"
  '((:MESSAGE_ID_DENM . 1)
    (:MESSAGE_ID_CAM . 2)
    (:MESSAGE_ID_ECE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ItsPduHeader>) ostream)
  "Serializes a message object of type '<ItsPduHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'protocol_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'station_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ItsPduHeader>) istream)
  "Deserializes a message object of type '<ItsPduHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'protocol_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ItsPduHeader>)))
  "Returns string type for a message object of type '<ItsPduHeader>"
  "ece_msgs/ItsPduHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ItsPduHeader)))
  "Returns string type for a message object of type 'ItsPduHeader"
  "ece_msgs/ItsPduHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ItsPduHeader>)))
  "Returns md5sum for a message object of type '<ItsPduHeader>"
  "11c9ba5f62074a5d8d5f31309d5b72b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ItsPduHeader)))
  "Returns md5sum for a message object of type 'ItsPduHeader"
  "11c9ba5f62074a5d8d5f31309d5b72b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ItsPduHeader>)))
  "Returns full string definition for message of type '<ItsPduHeader>"
  (cl:format cl:nil "uint8 protocol_version~%uint8 message_id~%uint32 station_id~%~%uint8 MESSAGE_ID_DENM = 1~%uint8 MESSAGE_ID_CAM = 2~%uint8 MESSAGE_ID_ECE = 8~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ItsPduHeader)))
  "Returns full string definition for message of type 'ItsPduHeader"
  (cl:format cl:nil "uint8 protocol_version~%uint8 message_id~%uint32 station_id~%~%uint8 MESSAGE_ID_DENM = 1~%uint8 MESSAGE_ID_CAM = 2~%uint8 MESSAGE_ID_ECE = 8~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ItsPduHeader>))
  (cl:+ 0
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ItsPduHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'ItsPduHeader
    (cl:cons ':protocol_version (protocol_version msg))
    (cl:cons ':message_id (message_id msg))
    (cl:cons ':station_id (station_id msg))
))
