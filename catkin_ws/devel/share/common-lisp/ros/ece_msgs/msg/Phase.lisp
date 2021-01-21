; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Phase.msg.html

(cl:defclass <Phase> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Phase (<Phase>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Phase>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Phase)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<Phase> is deprecated: use ece_msgs-msg:Phase instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Phase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:value-val is deprecated.  Use ece_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Phase>)))
    "Constants for message type '<Phase>"
  '((:INIT . 0)
    (:INSERTION . 1)
    (:DESINSERTION . 2)
    (:FEU . 3)
    (:FREINAGE_URG . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Phase)))
    "Constants for message type 'Phase"
  '((:INIT . 0)
    (:INSERTION . 1)
    (:DESINSERTION . 2)
    (:FEU . 3)
    (:FREINAGE_URG . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Phase>) ostream)
  "Serializes a message object of type '<Phase>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Phase>) istream)
  "Deserializes a message object of type '<Phase>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Phase>)))
  "Returns string type for a message object of type '<Phase>"
  "ece_msgs/Phase")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Phase)))
  "Returns string type for a message object of type 'Phase"
  "ece_msgs/Phase")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Phase>)))
  "Returns md5sum for a message object of type '<Phase>"
  "250a84fbe16f4f28908dcca677c4b00e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Phase)))
  "Returns md5sum for a message object of type 'Phase"
  "250a84fbe16f4f28908dcca677c4b00e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Phase>)))
  "Returns full string definition for message of type '<Phase>"
  (cl:format cl:nil "# Phase de plattoning~%uint8 value~%~%uint8 INIT = 0~%uint8 INSERTION = 1~%uint8 DESINSERTION = 2~%uint8 FEU = 3~%uint8 FREINAGE_URG = 4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Phase)))
  "Returns full string definition for message of type 'Phase"
  (cl:format cl:nil "# Phase de plattoning~%uint8 value~%~%uint8 INIT = 0~%uint8 INSERTION = 1~%uint8 DESINSERTION = 2~%uint8 FEU = 3~%uint8 FREINAGE_URG = 4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Phase>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Phase>))
  "Converts a ROS message object to a list"
  (cl:list 'Phase
    (cl:cons ':value (value msg))
))
