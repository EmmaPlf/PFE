; Auto-generated. Do not edit!


(cl:in-package simu_msgs-msg)


;//! \htmlinclude PositionConfidenceEllipse.msg.html

(cl:defclass <PositionConfidenceEllipse> (roslisp-msg-protocol:ros-message)
  ((semi_major_confidence
    :reader semi_major_confidence
    :initarg :semi_major_confidence
    :type cl:fixnum
    :initform 0)
   (semi_minor_confidence
    :reader semi_minor_confidence
    :initarg :semi_minor_confidence
    :type cl:fixnum
    :initform 0)
   (semi_major_orientation
    :reader semi_major_orientation
    :initarg :semi_major_orientation
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PositionConfidenceEllipse (<PositionConfidenceEllipse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionConfidenceEllipse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionConfidenceEllipse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simu_msgs-msg:<PositionConfidenceEllipse> is deprecated: use simu_msgs-msg:PositionConfidenceEllipse instead.")))

(cl:ensure-generic-function 'semi_major_confidence-val :lambda-list '(m))
(cl:defmethod semi_major_confidence-val ((m <PositionConfidenceEllipse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:semi_major_confidence-val is deprecated.  Use simu_msgs-msg:semi_major_confidence instead.")
  (semi_major_confidence m))

(cl:ensure-generic-function 'semi_minor_confidence-val :lambda-list '(m))
(cl:defmethod semi_minor_confidence-val ((m <PositionConfidenceEllipse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:semi_minor_confidence-val is deprecated.  Use simu_msgs-msg:semi_minor_confidence instead.")
  (semi_minor_confidence m))

(cl:ensure-generic-function 'semi_major_orientation-val :lambda-list '(m))
(cl:defmethod semi_major_orientation-val ((m <PositionConfidenceEllipse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:semi_major_orientation-val is deprecated.  Use simu_msgs-msg:semi_major_orientation instead.")
  (semi_major_orientation m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PositionConfidenceEllipse>)))
    "Constants for message type '<PositionConfidenceEllipse>"
  '((:SEMI_AXIS_LENGTH_OUT_OF_RANGE . 4094)
    (:SEMI_AXIS_LENGTH_UNAVAILABLE . 4095))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PositionConfidenceEllipse)))
    "Constants for message type 'PositionConfidenceEllipse"
  '((:SEMI_AXIS_LENGTH_OUT_OF_RANGE . 4094)
    (:SEMI_AXIS_LENGTH_UNAVAILABLE . 4095))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionConfidenceEllipse>) ostream)
  "Serializes a message object of type '<PositionConfidenceEllipse>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'semi_major_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'semi_major_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'semi_minor_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'semi_minor_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'semi_major_orientation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'semi_major_orientation)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionConfidenceEllipse>) istream)
  "Deserializes a message object of type '<PositionConfidenceEllipse>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'semi_major_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'semi_major_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'semi_minor_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'semi_minor_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'semi_major_orientation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'semi_major_orientation)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionConfidenceEllipse>)))
  "Returns string type for a message object of type '<PositionConfidenceEllipse>"
  "simu_msgs/PositionConfidenceEllipse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionConfidenceEllipse)))
  "Returns string type for a message object of type 'PositionConfidenceEllipse"
  "simu_msgs/PositionConfidenceEllipse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionConfidenceEllipse>)))
  "Returns md5sum for a message object of type '<PositionConfidenceEllipse>"
  "c20c3376bfa1f7fa4fce4f692844e203")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionConfidenceEllipse)))
  "Returns md5sum for a message object of type 'PositionConfidenceEllipse"
  "c20c3376bfa1f7fa4fce4f692844e203")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionConfidenceEllipse>)))
  "Returns full string definition for message of type '<PositionConfidenceEllipse>"
  (cl:format cl:nil "uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionConfidenceEllipse)))
  "Returns full string definition for message of type 'PositionConfidenceEllipse"
  (cl:format cl:nil "uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionConfidenceEllipse>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionConfidenceEllipse>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionConfidenceEllipse
    (cl:cons ':semi_major_confidence (semi_major_confidence msg))
    (cl:cons ':semi_minor_confidence (semi_minor_confidence msg))
    (cl:cons ':semi_major_orientation (semi_major_orientation msg))
))
