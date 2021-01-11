; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude IDs.msg.html

(cl:defclass <IDs> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IDs (<IDs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IDs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IDs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<IDs> is deprecated: use ece_msgs-msg:IDs instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <IDs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:ID-val is deprecated.  Use ece_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <IDs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:position-val is deprecated.  Use ece_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IDs>) ostream)
  "Serializes a message object of type '<IDs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IDs>) istream)
  "Deserializes a message object of type '<IDs>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IDs>)))
  "Returns string type for a message object of type '<IDs>"
  "ece_msgs/IDs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IDs)))
  "Returns string type for a message object of type 'IDs"
  "ece_msgs/IDs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IDs>)))
  "Returns md5sum for a message object of type '<IDs>"
  "f033ee2c58d32e679065279d1059f93e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IDs)))
  "Returns md5sum for a message object of type 'IDs"
  "f033ee2c58d32e679065279d1059f93e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IDs>)))
  "Returns full string definition for message of type '<IDs>"
  (cl:format cl:nil "uint8 ID~%uint8 position~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IDs)))
  "Returns full string definition for message of type 'IDs"
  (cl:format cl:nil "uint8 ID~%uint8 position~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IDs>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IDs>))
  "Converts a ROS message object to a list"
  (cl:list 'IDs
    (cl:cons ':ID (ID msg))
    (cl:cons ':position (position msg))
))
