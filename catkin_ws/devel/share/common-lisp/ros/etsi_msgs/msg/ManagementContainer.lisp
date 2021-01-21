; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude ManagementContainer.msg.html

(cl:defclass <ManagementContainer> (roslisp-msg-protocol:ros-message)
  ((action_id
    :reader action_id
    :initarg :action_id
    :type etsi_msgs-msg:ActionID
    :initform (cl:make-instance 'etsi_msgs-msg:ActionID))
   (detection_time
    :reader detection_time
    :initarg :detection_time
    :type cl:integer
    :initform 0)
   (reference_time
    :reader reference_time
    :initarg :reference_time
    :type cl:integer
    :initform 0)
   (termination
    :reader termination
    :initarg :termination
    :type cl:fixnum
    :initform 0)
   (event_position
    :reader event_position
    :initarg :event_position
    :type etsi_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'etsi_msgs-msg:ReferencePosition))
   (relevance_distance
    :reader relevance_distance
    :initarg :relevance_distance
    :type etsi_msgs-msg:RelevanceDistance
    :initform (cl:make-instance 'etsi_msgs-msg:RelevanceDistance))
   (relevance_traffic_direction
    :reader relevance_traffic_direction
    :initarg :relevance_traffic_direction
    :type etsi_msgs-msg:RelevanceTrafficDirection
    :initform (cl:make-instance 'etsi_msgs-msg:RelevanceTrafficDirection))
   (validity_duration
    :reader validity_duration
    :initarg :validity_duration
    :type cl:integer
    :initform 0)
   (transmission_interval
    :reader transmission_interval
    :initarg :transmission_interval
    :type cl:integer
    :initform 0)
   (station_type
    :reader station_type
    :initarg :station_type
    :type etsi_msgs-msg:StationType
    :initform (cl:make-instance 'etsi_msgs-msg:StationType)))
)

(cl:defclass ManagementContainer (<ManagementContainer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManagementContainer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManagementContainer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<ManagementContainer> is deprecated: use etsi_msgs-msg:ManagementContainer instead.")))

(cl:ensure-generic-function 'action_id-val :lambda-list '(m))
(cl:defmethod action_id-val ((m <ManagementContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:action_id-val is deprecated.  Use etsi_msgs-msg:action_id instead.")
  (action_id m))

(cl:ensure-generic-function 'detection_time-val :lambda-list '(m))
(cl:defmethod detection_time-val ((m <ManagementContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:detection_time-val is deprecated.  Use etsi_msgs-msg:detection_time instead.")
  (detection_time m))

(cl:ensure-generic-function 'reference_time-val :lambda-list '(m))
(cl:defmethod reference_time-val ((m <ManagementContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:reference_time-val is deprecated.  Use etsi_msgs-msg:reference_time instead.")
  (reference_time m))

(cl:ensure-generic-function 'termination-val :lambda-list '(m))
(cl:defmethod termination-val ((m <ManagementContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:termination-val is deprecated.  Use etsi_msgs-msg:termination instead.")
  (termination m))

(cl:ensure-generic-function 'event_position-val :lambda-list '(m))
(cl:defmethod event_position-val ((m <ManagementContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:event_position-val is deprecated.  Use etsi_msgs-msg:event_position instead.")
  (event_position m))

(cl:ensure-generic-function 'relevance_distance-val :lambda-list '(m))
(cl:defmethod relevance_distance-val ((m <ManagementContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:relevance_distance-val is deprecated.  Use etsi_msgs-msg:relevance_distance instead.")
  (relevance_distance m))

(cl:ensure-generic-function 'relevance_traffic_direction-val :lambda-list '(m))
(cl:defmethod relevance_traffic_direction-val ((m <ManagementContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:relevance_traffic_direction-val is deprecated.  Use etsi_msgs-msg:relevance_traffic_direction instead.")
  (relevance_traffic_direction m))

(cl:ensure-generic-function 'validity_duration-val :lambda-list '(m))
(cl:defmethod validity_duration-val ((m <ManagementContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:validity_duration-val is deprecated.  Use etsi_msgs-msg:validity_duration instead.")
  (validity_duration m))

(cl:ensure-generic-function 'transmission_interval-val :lambda-list '(m))
(cl:defmethod transmission_interval-val ((m <ManagementContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:transmission_interval-val is deprecated.  Use etsi_msgs-msg:transmission_interval instead.")
  (transmission_interval m))

(cl:ensure-generic-function 'station_type-val :lambda-list '(m))
(cl:defmethod station_type-val ((m <ManagementContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:station_type-val is deprecated.  Use etsi_msgs-msg:station_type instead.")
  (station_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManagementContainer>)))
    "Constants for message type '<ManagementContainer>"
  '((:TERMINATION_CANCELLATION . 0)
    (:TERMINATION_NEGATION . 1)
    (:TERMINATION_UNAVAILABLE . 255)
    (:TRANSMISSION_INTERVAL_ONE_MILLISECOND . 1)
    (:TRANSMISSION_INTERVAL_TEN_SECONDS . 10000)
    (:TRANSMISSION_INTERVAL_UNAVAILABLE . 0)
    (:VALIDITY_DURATION_DEFAULT . 600)
    (:VALIDITY_DURATION_TIME_OF_DETECTION . 0)
    (:VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManagementContainer)))
    "Constants for message type 'ManagementContainer"
  '((:TERMINATION_CANCELLATION . 0)
    (:TERMINATION_NEGATION . 1)
    (:TERMINATION_UNAVAILABLE . 255)
    (:TRANSMISSION_INTERVAL_ONE_MILLISECOND . 1)
    (:TRANSMISSION_INTERVAL_TEN_SECONDS . 10000)
    (:TRANSMISSION_INTERVAL_UNAVAILABLE . 0)
    (:VALIDITY_DURATION_DEFAULT . 600)
    (:VALIDITY_DURATION_TIME_OF_DETECTION . 0)
    (:VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManagementContainer>) ostream)
  "Serializes a message object of type '<ManagementContainer>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detection_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detection_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'detection_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'detection_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'detection_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'detection_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'detection_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'detection_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reference_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reference_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reference_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reference_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reference_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reference_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reference_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reference_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'termination)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relevance_distance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relevance_traffic_direction) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'validity_duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'validity_duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'validity_duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'validity_duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transmission_interval)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'transmission_interval)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'transmission_interval)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'transmission_interval)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'station_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManagementContainer>) istream)
  "Deserializes a message object of type '<ManagementContainer>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detection_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detection_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'detection_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'detection_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'detection_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'detection_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'detection_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'detection_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reference_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reference_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reference_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reference_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reference_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reference_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reference_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reference_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'termination)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relevance_distance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relevance_traffic_direction) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'validity_duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'validity_duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'validity_duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'validity_duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transmission_interval)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'transmission_interval)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'transmission_interval)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'transmission_interval)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'station_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManagementContainer>)))
  "Returns string type for a message object of type '<ManagementContainer>"
  "etsi_msgs/ManagementContainer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManagementContainer)))
  "Returns string type for a message object of type 'ManagementContainer"
  "etsi_msgs/ManagementContainer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManagementContainer>)))
  "Returns md5sum for a message object of type '<ManagementContainer>"
  "9ce1c69ce5bfe1b0889eb5e906278318")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManagementContainer)))
  "Returns md5sum for a message object of type 'ManagementContainer"
  "9ce1c69ce5bfe1b0889eb5e906278318")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManagementContainer>)))
  "Returns full string definition for message of type '<ManagementContainer>"
  (cl:format cl:nil "ActionID action_id~%uint64 detection_time # ms since 2004~%uint64 reference_time # ms since 2004~%uint8 termination~%ReferencePosition event_position~%RelevanceDistance relevance_distance~%RelevanceTrafficDirection relevance_traffic_direction~%uint32 validity_duration # seconds~%uint32 transmission_interval # milliseconds~%StationType station_type~%~%uint8 TERMINATION_CANCELLATION = 0~%uint8 TERMINATION_NEGATION = 1~%uint8 TERMINATION_UNAVAILABLE = 255~%~%uint32 TRANSMISSION_INTERVAL_ONE_MILLISECOND = 1~%uint32 TRANSMISSION_INTERVAL_TEN_SECONDS = 10000~%uint32 TRANSMISSION_INTERVAL_UNAVAILABLE = 0~%~%uint32 VALIDITY_DURATION_DEFAULT = 600~%uint32 VALIDITY_DURATION_TIME_OF_DETECTION = 0~%uint32 VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION = 1~%~%================================================================================~%MSG: etsi_msgs/ActionID~%uint32 station_id~%uint16 sequence_number~%~%================================================================================~%MSG: etsi_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: etsi_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: etsi_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%================================================================================~%MSG: etsi_msgs/RelevanceDistance~%uint8 value~%~%uint8 LESS_THAN_50M = 0~%uint8 LESS_THAN_100M = 1~%uint8 LESS_THAN_200M = 2~%uint8 LESS_THAN_500M = 3~%uint8 LESS_THAN_1000M = 4~%uint8 LESS_THAN_5KM = 5~%uint8 LESS_THAN_10KM = 6~%uint8 OVER_10KM = 7~%uint8 UNAVAILABLE = 255~%~%================================================================================~%MSG: etsi_msgs/RelevanceTrafficDirection~%uint8 value~%~%uint8 ALL_TRAFFIC_DIRECTIONS = 0~%uint8 UPSTREAM_TRAFFIC = 1~%uint8 DOWNSTREAM_TRAFFIC = 2~%uint8 OPPOSITE_TRAFFIC = 3~%uint8 UNAVAILABLE = 255 # extension to encode optional traffic directions~%~%================================================================================~%MSG: etsi_msgs/StationType~%uint8 value~%~%uint8 UNKNOWN = 0~%uint8 PEDESTRIAN = 1~%uint8 CYCLIST = 2~%uint8 MOPED = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 BUS = 6~%uint8 LIGHT_TRUCK = 7~%uint8 HEAVY_TRUCK = 8~%uint8 TRAILER = 9~%uint8 SPECIAL_VEHICLE = 10~%uint8 TRAM = 11~%uint8 ROAD_SIDE_UNIT = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManagementContainer)))
  "Returns full string definition for message of type 'ManagementContainer"
  (cl:format cl:nil "ActionID action_id~%uint64 detection_time # ms since 2004~%uint64 reference_time # ms since 2004~%uint8 termination~%ReferencePosition event_position~%RelevanceDistance relevance_distance~%RelevanceTrafficDirection relevance_traffic_direction~%uint32 validity_duration # seconds~%uint32 transmission_interval # milliseconds~%StationType station_type~%~%uint8 TERMINATION_CANCELLATION = 0~%uint8 TERMINATION_NEGATION = 1~%uint8 TERMINATION_UNAVAILABLE = 255~%~%uint32 TRANSMISSION_INTERVAL_ONE_MILLISECOND = 1~%uint32 TRANSMISSION_INTERVAL_TEN_SECONDS = 10000~%uint32 TRANSMISSION_INTERVAL_UNAVAILABLE = 0~%~%uint32 VALIDITY_DURATION_DEFAULT = 600~%uint32 VALIDITY_DURATION_TIME_OF_DETECTION = 0~%uint32 VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION = 1~%~%================================================================================~%MSG: etsi_msgs/ActionID~%uint32 station_id~%uint16 sequence_number~%~%================================================================================~%MSG: etsi_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: etsi_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: etsi_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%================================================================================~%MSG: etsi_msgs/RelevanceDistance~%uint8 value~%~%uint8 LESS_THAN_50M = 0~%uint8 LESS_THAN_100M = 1~%uint8 LESS_THAN_200M = 2~%uint8 LESS_THAN_500M = 3~%uint8 LESS_THAN_1000M = 4~%uint8 LESS_THAN_5KM = 5~%uint8 LESS_THAN_10KM = 6~%uint8 OVER_10KM = 7~%uint8 UNAVAILABLE = 255~%~%================================================================================~%MSG: etsi_msgs/RelevanceTrafficDirection~%uint8 value~%~%uint8 ALL_TRAFFIC_DIRECTIONS = 0~%uint8 UPSTREAM_TRAFFIC = 1~%uint8 DOWNSTREAM_TRAFFIC = 2~%uint8 OPPOSITE_TRAFFIC = 3~%uint8 UNAVAILABLE = 255 # extension to encode optional traffic directions~%~%================================================================================~%MSG: etsi_msgs/StationType~%uint8 value~%~%uint8 UNKNOWN = 0~%uint8 PEDESTRIAN = 1~%uint8 CYCLIST = 2~%uint8 MOPED = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 BUS = 6~%uint8 LIGHT_TRUCK = 7~%uint8 HEAVY_TRUCK = 8~%uint8 TRAILER = 9~%uint8 SPECIAL_VEHICLE = 10~%uint8 TRAM = 11~%uint8 ROAD_SIDE_UNIT = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManagementContainer>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_id))
     8
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relevance_distance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relevance_traffic_direction))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'station_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManagementContainer>))
  "Converts a ROS message object to a list"
  (cl:list 'ManagementContainer
    (cl:cons ':action_id (action_id msg))
    (cl:cons ':detection_time (detection_time msg))
    (cl:cons ':reference_time (reference_time msg))
    (cl:cons ':termination (termination msg))
    (cl:cons ':event_position (event_position msg))
    (cl:cons ':relevance_distance (relevance_distance msg))
    (cl:cons ':relevance_traffic_direction (relevance_traffic_direction msg))
    (cl:cons ':validity_duration (validity_duration msg))
    (cl:cons ':transmission_interval (transmission_interval msg))
    (cl:cons ':station_type (station_type msg))
))
