; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Feu.msg.html

(cl:defclass <Feu> (roslisp-msg-protocol:ros-message)
  ((permission_feu
    :reader permission_feu
    :initarg :permission_feu
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Feu (<Feu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Feu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Feu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<Feu> is deprecated: use ece_msgs-msg:Feu instead.")))

(cl:ensure-generic-function 'permission_feu-val :lambda-list '(m))
(cl:defmethod permission_feu-val ((m <Feu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:permission_feu-val is deprecated.  Use ece_msgs-msg:permission_feu instead.")
  (permission_feu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Feu>) ostream)
  "Serializes a message object of type '<Feu>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'permission_feu) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Feu>) istream)
  "Deserializes a message object of type '<Feu>"
    (cl:setf (cl:slot-value msg 'permission_feu) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Feu>)))
  "Returns string type for a message object of type '<Feu>"
  "ece_msgs/Feu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Feu)))
  "Returns string type for a message object of type 'Feu"
  "ece_msgs/Feu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Feu>)))
  "Returns md5sum for a message object of type '<Feu>"
  "ffdb5a2e101258db4bee4b8b92ac56a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Feu)))
  "Returns md5sum for a message object of type 'Feu"
  "ffdb5a2e101258db4bee4b8b92ac56a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Feu>)))
  "Returns full string definition for message of type '<Feu>"
  (cl:format cl:nil "# Permission de passer le feu : 1 octet~%bool permission_feu~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Feu)))
  "Returns full string definition for message of type 'Feu"
  (cl:format cl:nil "# Permission de passer le feu : 1 octet~%bool permission_feu~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Feu>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Feu>))
  "Converts a ROS message object to a list"
  (cl:list 'Feu
    (cl:cons ':permission_feu (permission_feu msg))
))
