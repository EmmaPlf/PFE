; Auto-generated. Do not edit!


(cl:in-package simu_msgs-msg)


;//! \htmlinclude ReferencePosition.msg.html

(cl:defclass <ReferencePosition> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:integer
    :initform 0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:integer
    :initform 0)
   (position_confidence
    :reader position_confidence
    :initarg :position_confidence
    :type simu_msgs-msg:PositionConfidenceEllipse
    :initform (cl:make-instance 'simu_msgs-msg:PositionConfidenceEllipse))
   (altitude
    :reader altitude
    :initarg :altitude
    :type simu_msgs-msg:Altitude
    :initform (cl:make-instance 'simu_msgs-msg:Altitude)))
)

(cl:defclass ReferencePosition (<ReferencePosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferencePosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferencePosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simu_msgs-msg:<ReferencePosition> is deprecated: use simu_msgs-msg:ReferencePosition instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <ReferencePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:latitude-val is deprecated.  Use simu_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <ReferencePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:longitude-val is deprecated.  Use simu_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'position_confidence-val :lambda-list '(m))
(cl:defmethod position_confidence-val ((m <ReferencePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:position_confidence-val is deprecated.  Use simu_msgs-msg:position_confidence instead.")
  (position_confidence m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <ReferencePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:altitude-val is deprecated.  Use simu_msgs-msg:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ReferencePosition>)))
    "Constants for message type '<ReferencePosition>"
  '((:LATITUDE_UNAVAILABLE . 900000001)
    (:LONGITUDE_UNAVAILABLE . 1800000001))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ReferencePosition)))
    "Constants for message type 'ReferencePosition"
  '((:LATITUDE_UNAVAILABLE . 900000001)
    (:LONGITUDE_UNAVAILABLE . 1800000001))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferencePosition>) ostream)
  "Serializes a message object of type '<ReferencePosition>"
  (cl:let* ((signed (cl:slot-value msg 'latitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'longitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_confidence) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'altitude) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferencePosition>) istream)
  "Deserializes a message object of type '<ReferencePosition>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latitude) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'longitude) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_confidence) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'altitude) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferencePosition>)))
  "Returns string type for a message object of type '<ReferencePosition>"
  "simu_msgs/ReferencePosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferencePosition)))
  "Returns string type for a message object of type 'ReferencePosition"
  "simu_msgs/ReferencePosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferencePosition>)))
  "Returns md5sum for a message object of type '<ReferencePosition>"
  "a3cec6171339bd488bc9f812c2670f12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferencePosition)))
  "Returns md5sum for a message object of type 'ReferencePosition"
  "a3cec6171339bd488bc9f812c2670f12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferencePosition>)))
  "Returns full string definition for message of type '<ReferencePosition>"
  (cl:format cl:nil "int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: simu_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: simu_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferencePosition)))
  "Returns full string definition for message of type 'ReferencePosition"
  (cl:format cl:nil "int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: simu_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: simu_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferencePosition>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_confidence))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'altitude))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferencePosition>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferencePosition
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':position_confidence (position_confidence msg))
    (cl:cons ':altitude (altitude msg))
))
