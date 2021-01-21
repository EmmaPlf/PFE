; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude DeltaReferencePosition.msg.html

(cl:defclass <DeltaReferencePosition> (roslisp-msg-protocol:ros-message)
  ((delta_latitude
    :reader delta_latitude
    :initarg :delta_latitude
    :type cl:integer
    :initform 0)
   (delta_longitude
    :reader delta_longitude
    :initarg :delta_longitude
    :type cl:integer
    :initform 0)
   (delta_altitude
    :reader delta_altitude
    :initarg :delta_altitude
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DeltaReferencePosition (<DeltaReferencePosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeltaReferencePosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeltaReferencePosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<DeltaReferencePosition> is deprecated: use etsi_msgs-msg:DeltaReferencePosition instead.")))

(cl:ensure-generic-function 'delta_latitude-val :lambda-list '(m))
(cl:defmethod delta_latitude-val ((m <DeltaReferencePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:delta_latitude-val is deprecated.  Use etsi_msgs-msg:delta_latitude instead.")
  (delta_latitude m))

(cl:ensure-generic-function 'delta_longitude-val :lambda-list '(m))
(cl:defmethod delta_longitude-val ((m <DeltaReferencePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:delta_longitude-val is deprecated.  Use etsi_msgs-msg:delta_longitude instead.")
  (delta_longitude m))

(cl:ensure-generic-function 'delta_altitude-val :lambda-list '(m))
(cl:defmethod delta_altitude-val ((m <DeltaReferencePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:delta_altitude-val is deprecated.  Use etsi_msgs-msg:delta_altitude instead.")
  (delta_altitude m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DeltaReferencePosition>)))
    "Constants for message type '<DeltaReferencePosition>"
  '((:ONE_MICRODEGREE_NORTH . 10)
    (:ONE_MICRODEGREE_SOUTH . -10)
    (:ONE_MICRODEGREE_EAST . 10)
    (:ONE_MICRODEGREE_WEST . -10)
    (:ONE_CENTIMETER_UP . 1)
    (:ONE_CENTIMETER_DOWN . -1)
    (:LATITUDE_UNAVAILABLE . 131072)
    (:LONGITUDE_UNAVAILABLE . 131072)
    (:ALTITUDE_UNAVAILABLE . 12800))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DeltaReferencePosition)))
    "Constants for message type 'DeltaReferencePosition"
  '((:ONE_MICRODEGREE_NORTH . 10)
    (:ONE_MICRODEGREE_SOUTH . -10)
    (:ONE_MICRODEGREE_EAST . 10)
    (:ONE_MICRODEGREE_WEST . -10)
    (:ONE_CENTIMETER_UP . 1)
    (:ONE_CENTIMETER_DOWN . -1)
    (:LATITUDE_UNAVAILABLE . 131072)
    (:LONGITUDE_UNAVAILABLE . 131072)
    (:ALTITUDE_UNAVAILABLE . 12800))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeltaReferencePosition>) ostream)
  "Serializes a message object of type '<DeltaReferencePosition>"
  (cl:let* ((signed (cl:slot-value msg 'delta_latitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'delta_longitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'delta_altitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeltaReferencePosition>) istream)
  "Deserializes a message object of type '<DeltaReferencePosition>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'delta_latitude) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'delta_longitude) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'delta_altitude) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeltaReferencePosition>)))
  "Returns string type for a message object of type '<DeltaReferencePosition>"
  "etsi_msgs/DeltaReferencePosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeltaReferencePosition)))
  "Returns string type for a message object of type 'DeltaReferencePosition"
  "etsi_msgs/DeltaReferencePosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeltaReferencePosition>)))
  "Returns md5sum for a message object of type '<DeltaReferencePosition>"
  "5b49a8a9b72b511ff5a77cf9b108e1e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeltaReferencePosition)))
  "Returns md5sum for a message object of type 'DeltaReferencePosition"
  "5b49a8a9b72b511ff5a77cf9b108e1e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeltaReferencePosition>)))
  "Returns full string definition for message of type '<DeltaReferencePosition>"
  (cl:format cl:nil "int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeltaReferencePosition)))
  "Returns full string definition for message of type 'DeltaReferencePosition"
  (cl:format cl:nil "int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeltaReferencePosition>))
  (cl:+ 0
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeltaReferencePosition>))
  "Converts a ROS message object to a list"
  (cl:list 'DeltaReferencePosition
    (cl:cons ':delta_latitude (delta_latitude msg))
    (cl:cons ':delta_longitude (delta_longitude msg))
    (cl:cons ':delta_altitude (delta_altitude msg))
))
