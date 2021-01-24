; Auto-generated. Do not edit!


(cl:in-package simu_msgs-msg)


;//! \htmlinclude simu_CAM.msg.html

(cl:defclass <simu_CAM> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (its_header
    :reader its_header
    :initarg :its_header
    :type simu_msgs-msg:ItsPduHeader
    :initform (cl:make-instance 'simu_msgs-msg:ItsPduHeader))
   (speed
    :reader speed
    :initarg :speed
    :type simu_msgs-msg:Speed
    :initform (cl:make-instance 'simu_msgs-msg:Speed))
   (reference_position
    :reader reference_position
    :initarg :reference_position
    :type simu_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'simu_msgs-msg:ReferencePosition))
   (vehicle_length
    :reader vehicle_length
    :initarg :vehicle_length
    :type simu_msgs-msg:VehicleLength
    :initform (cl:make-instance 'simu_msgs-msg:VehicleLength))
   (rank
    :reader rank
    :initarg :rank
    :type cl:fixnum
    :initform 0)
   (interdistance
    :reader interdistance
    :initarg :interdistance
    :type cl:integer
    :initform 0)
   (dest
    :reader dest
    :initarg :dest
    :type cl:fixnum
    :initform 0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass simu_CAM (<simu_CAM>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simu_CAM>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simu_CAM)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simu_msgs-msg:<simu_CAM> is deprecated: use simu_msgs-msg:simu_CAM instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <simu_CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:header-val is deprecated.  Use simu_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'its_header-val :lambda-list '(m))
(cl:defmethod its_header-val ((m <simu_CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:its_header-val is deprecated.  Use simu_msgs-msg:its_header instead.")
  (its_header m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <simu_CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:speed-val is deprecated.  Use simu_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'reference_position-val :lambda-list '(m))
(cl:defmethod reference_position-val ((m <simu_CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:reference_position-val is deprecated.  Use simu_msgs-msg:reference_position instead.")
  (reference_position m))

(cl:ensure-generic-function 'vehicle_length-val :lambda-list '(m))
(cl:defmethod vehicle_length-val ((m <simu_CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:vehicle_length-val is deprecated.  Use simu_msgs-msg:vehicle_length instead.")
  (vehicle_length m))

(cl:ensure-generic-function 'rank-val :lambda-list '(m))
(cl:defmethod rank-val ((m <simu_CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:rank-val is deprecated.  Use simu_msgs-msg:rank instead.")
  (rank m))

(cl:ensure-generic-function 'interdistance-val :lambda-list '(m))
(cl:defmethod interdistance-val ((m <simu_CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:interdistance-val is deprecated.  Use simu_msgs-msg:interdistance instead.")
  (interdistance m))

(cl:ensure-generic-function 'dest-val :lambda-list '(m))
(cl:defmethod dest-val ((m <simu_CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:dest-val is deprecated.  Use simu_msgs-msg:dest instead.")
  (dest m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <simu_CAM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simu_msgs-msg:yaw_rate-val is deprecated.  Use simu_msgs-msg:yaw_rate instead.")
  (yaw_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simu_CAM>) ostream)
  "Serializes a message object of type '<simu_CAM>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'its_header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_length) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rank)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interdistance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'interdistance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'interdistance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'interdistance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dest)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'yaw_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simu_CAM>) istream)
  "Deserializes a message object of type '<simu_CAM>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'its_header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_length) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rank)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interdistance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'interdistance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'interdistance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'interdistance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dest)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw_rate) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simu_CAM>)))
  "Returns string type for a message object of type '<simu_CAM>"
  "simu_msgs/simu_CAM")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simu_CAM)))
  "Returns string type for a message object of type 'simu_CAM"
  "simu_msgs/simu_CAM")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simu_CAM>)))
  "Returns md5sum for a message object of type '<simu_CAM>"
  "57b39355d3eb18289ce69aca4d0b91b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simu_CAM)))
  "Returns md5sum for a message object of type 'simu_CAM"
  "57b39355d3eb18289ce69aca4d0b91b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simu_CAM>)))
  "Returns full string definition for message of type '<simu_CAM>"
  (cl:format cl:nil "Header header ~%ItsPduHeader its_header~%Speed speed~%ReferencePosition reference_position~%VehicleLength vehicle_length~%uint8 rank~%uint32 interdistance~%uint8 dest~%int16 yaw_rate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: simu_msgs/ItsPduHeader~%uint8 protocol_version~%uint8 message_id~%uint32 station_id~%~%uint8 MESSAGE_ID_DENM = 1~%uint8 MESSAGE_ID_CAM = 2~%~%================================================================================~%MSG: simu_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: simu_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: simu_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: simu_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%================================================================================~%MSG: simu_msgs/VehicleLength~%uint16 value # 0.1 meter~%uint8 confidence_indication~%~%uint16 VALUE_TEN_CENTIMETERS = 1~%uint16 VALUE_OUT_OF_RANGE = 1022~%uint16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2~%uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3~%uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simu_CAM)))
  "Returns full string definition for message of type 'simu_CAM"
  (cl:format cl:nil "Header header ~%ItsPduHeader its_header~%Speed speed~%ReferencePosition reference_position~%VehicleLength vehicle_length~%uint8 rank~%uint32 interdistance~%uint8 dest~%int16 yaw_rate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: simu_msgs/ItsPduHeader~%uint8 protocol_version~%uint8 message_id~%uint32 station_id~%~%uint8 MESSAGE_ID_DENM = 1~%uint8 MESSAGE_ID_CAM = 2~%~%================================================================================~%MSG: simu_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: simu_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: simu_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: simu_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%================================================================================~%MSG: simu_msgs/VehicleLength~%uint16 value # 0.1 meter~%uint8 confidence_indication~%~%uint16 VALUE_TEN_CENTIMETERS = 1~%uint16 VALUE_OUT_OF_RANGE = 1022~%uint16 VALUE_UNAVAILABLE = 1023~%~%uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1~%uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2~%uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3~%uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simu_CAM>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'its_header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_length))
     1
     4
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simu_CAM>))
  "Converts a ROS message object to a list"
  (cl:list 'simu_CAM
    (cl:cons ':header (header msg))
    (cl:cons ':its_header (its_header msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':reference_position (reference_position msg))
    (cl:cons ':vehicle_length (vehicle_length msg))
    (cl:cons ':rank (rank msg))
    (cl:cons ':interdistance (interdistance msg))
    (cl:cons ':dest (dest msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
))
