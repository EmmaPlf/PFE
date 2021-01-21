; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude ecemsg.msg.html

(cl:defclass <ecemsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (its_header
    :reader its_header
    :initarg :its_header
    :type ece_msgs-msg:ItsPduHeader
    :initform (cl:make-instance 'ece_msgs-msg:ItsPduHeader))
   (generation_delta_time
    :reader generation_delta_time
    :initarg :generation_delta_time
    :type cl:fixnum
    :initform 0)
   (basic_container
    :reader basic_container
    :initarg :basic_container
    :type ece_msgs-msg:BasicContainer
    :initform (cl:make-instance 'ece_msgs-msg:BasicContainer))
   (init
    :reader init
    :initarg :init
    :type ece_msgs-msg:Init
    :initform (cl:make-instance 'ece_msgs-msg:Init))
   (insertion
    :reader insertion
    :initarg :insertion
    :type ece_msgs-msg:Insertion
    :initform (cl:make-instance 'ece_msgs-msg:Insertion))
   (desinsertion
    :reader desinsertion
    :initarg :desinsertion
    :type ece_msgs-msg:Desinsertion
    :initform (cl:make-instance 'ece_msgs-msg:Desinsertion))
   (freinage_urgence
    :reader freinage_urgence
    :initarg :freinage_urgence
    :type ece_msgs-msg:FreinageUrgence
    :initform (cl:make-instance 'ece_msgs-msg:FreinageUrgence))
   (feu
    :reader feu
    :initarg :feu
    :type ece_msgs-msg:Feu
    :initform (cl:make-instance 'ece_msgs-msg:Feu)))
)

(cl:defclass ecemsg (<ecemsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ecemsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ecemsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<ecemsg> is deprecated: use ece_msgs-msg:ecemsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ecemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:header-val is deprecated.  Use ece_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'its_header-val :lambda-list '(m))
(cl:defmethod its_header-val ((m <ecemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:its_header-val is deprecated.  Use ece_msgs-msg:its_header instead.")
  (its_header m))

(cl:ensure-generic-function 'generation_delta_time-val :lambda-list '(m))
(cl:defmethod generation_delta_time-val ((m <ecemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:generation_delta_time-val is deprecated.  Use ece_msgs-msg:generation_delta_time instead.")
  (generation_delta_time m))

(cl:ensure-generic-function 'basic_container-val :lambda-list '(m))
(cl:defmethod basic_container-val ((m <ecemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:basic_container-val is deprecated.  Use ece_msgs-msg:basic_container instead.")
  (basic_container m))

(cl:ensure-generic-function 'init-val :lambda-list '(m))
(cl:defmethod init-val ((m <ecemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:init-val is deprecated.  Use ece_msgs-msg:init instead.")
  (init m))

(cl:ensure-generic-function 'insertion-val :lambda-list '(m))
(cl:defmethod insertion-val ((m <ecemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:insertion-val is deprecated.  Use ece_msgs-msg:insertion instead.")
  (insertion m))

(cl:ensure-generic-function 'desinsertion-val :lambda-list '(m))
(cl:defmethod desinsertion-val ((m <ecemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:desinsertion-val is deprecated.  Use ece_msgs-msg:desinsertion instead.")
  (desinsertion m))

(cl:ensure-generic-function 'freinage_urgence-val :lambda-list '(m))
(cl:defmethod freinage_urgence-val ((m <ecemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:freinage_urgence-val is deprecated.  Use ece_msgs-msg:freinage_urgence instead.")
  (freinage_urgence m))

(cl:ensure-generic-function 'feu-val :lambda-list '(m))
(cl:defmethod feu-val ((m <ecemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:feu-val is deprecated.  Use ece_msgs-msg:feu instead.")
  (feu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ecemsg>) ostream)
  "Serializes a message object of type '<ecemsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'its_header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'generation_delta_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'generation_delta_time)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'basic_container) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'insertion) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desinsertion) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'freinage_urgence) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'feu) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ecemsg>) istream)
  "Deserializes a message object of type '<ecemsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'its_header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'generation_delta_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'generation_delta_time)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'basic_container) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'insertion) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desinsertion) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'freinage_urgence) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'feu) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ecemsg>)))
  "Returns string type for a message object of type '<ecemsg>"
  "ece_msgs/ecemsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ecemsg)))
  "Returns string type for a message object of type 'ecemsg"
  "ece_msgs/ecemsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ecemsg>)))
  "Returns md5sum for a message object of type '<ecemsg>"
  "8f00b78410e3cd01986d5339f8ac6fc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ecemsg)))
  "Returns md5sum for a message object of type 'ecemsg"
  "8f00b78410e3cd01986d5339f8ac6fc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ecemsg>)))
  "Returns full string definition for message of type '<ecemsg>"
  (cl:format cl:nil "Header header~%ItsPduHeader its_header~%uint16 generation_delta_time # milliseconds since 2004 modulo 2^16~%~%# basic container~%BasicContainer basic_container~%~%# Init~%Init init~%~%# Insertion~%Insertion insertion~%~%# Desinsertion~%Desinsertion desinsertion ~%~%# Freinage d'urgence~%FreinageUrgence freinage_urgence~%~%# Feu~%Feu feu~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ece_msgs/ItsPduHeader~%uint8 protocol_version~%uint8 message_id~%uint32 station_id~%~%uint8 MESSAGE_ID_DENM = 1~%uint8 MESSAGE_ID_CAM = 2~%uint8 MESSAGE_ID_ECE = 8~%================================================================================~%MSG: ece_msgs/BasicContainer~%# ID expediteur~%uint8 ID_exp~%~%# ID destinataire~%uint8 ID_dest~%~%# Phase de plattoning~%Phase phase~%~%# Type de station~%StationType station_type~%================================================================================~%MSG: ece_msgs/Phase~%# Phase de plattoning~%uint8 value~%~%uint8 INIT = 0~%uint8 INSERTION = 1~%uint8 DESINSERTION = 2~%uint8 FEU = 3~%uint8 FREINAGE_URG = 4~%================================================================================~%MSG: ece_msgs/StationType~%uint8 value~%~%uint8 UNKNOWN = 0~%uint8 PEDESTRIAN = 1~%uint8 CYCLIST = 2~%uint8 MOPED = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 BUS = 6~%uint8 LIGHT_TRUCK = 7~%uint8 HEAVY_TRUCK = 8~%uint8 TRAILER = 9~%uint8 SPECIAL_VEHICLE = 10~%uint8 TRAM = 11~%uint8 ROAD_SIDE_UNIT = 15~%================================================================================~%MSG: ece_msgs/Init~%# Destination : 8 octets~%ReferencePosition destination~%~%# Actual position : 8 octets~%ReferencePosition actual_position~%~%# Platoon~%Platoon platoon~%~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%================================================================================~%MSG: ece_msgs/Platoon~%# ID platoon : 3 bits~%uint8 id_platoon~%~%# ID autres véhicules platoon~%IDs[] ids ~%~%# Nombre de véhicules : 3 bits~%uint8 nombre_vehicules~%~%# Destination : 8 octets~%ReferencePosition destination~%~%# Vitesse et interdistance~%VitesseInterdistance vitesse_interdistance~%================================================================================~%MSG: ece_msgs/IDs~%uint8 ID~%uint8 position~%================================================================================~%MSG: ece_msgs/VitesseInterdistance~%# Vitesse : 6 bits~%Speed speed~%~%# Interdistance : 2 bits~%uint8 interdistance~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: ece_msgs/Insertion~%# Point d'insertion : 8 octet ~%ReferencePosition point_insertion~%~%# Confirmation insertion : 1 octet~%bool confirmation_insertion~%================================================================================~%MSG: ece_msgs/Desinsertion~%# Demande de sortie : 1 octet~%bool demande_sortie~%~%# Vitesse de sortie : 6 bits ~%Speed speed~%~%# Point de sortie : 8 octets~%ReferencePosition point_sortie~%~%# Nouvelle position dans P : 2 bits~%uint8 position~%~%# Confirmation insertion~%bool confirmation_sortie~%~%================================================================================~%MSG: ece_msgs/FreinageUrgence~%# Position P : 2 bits~%uint8 position~%================================================================================~%MSG: ece_msgs/Feu~%# Permission de passer le feu : 1 octet~%bool permission_feu~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ecemsg)))
  "Returns full string definition for message of type 'ecemsg"
  (cl:format cl:nil "Header header~%ItsPduHeader its_header~%uint16 generation_delta_time # milliseconds since 2004 modulo 2^16~%~%# basic container~%BasicContainer basic_container~%~%# Init~%Init init~%~%# Insertion~%Insertion insertion~%~%# Desinsertion~%Desinsertion desinsertion ~%~%# Freinage d'urgence~%FreinageUrgence freinage_urgence~%~%# Feu~%Feu feu~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ece_msgs/ItsPduHeader~%uint8 protocol_version~%uint8 message_id~%uint32 station_id~%~%uint8 MESSAGE_ID_DENM = 1~%uint8 MESSAGE_ID_CAM = 2~%uint8 MESSAGE_ID_ECE = 8~%================================================================================~%MSG: ece_msgs/BasicContainer~%# ID expediteur~%uint8 ID_exp~%~%# ID destinataire~%uint8 ID_dest~%~%# Phase de plattoning~%Phase phase~%~%# Type de station~%StationType station_type~%================================================================================~%MSG: ece_msgs/Phase~%# Phase de plattoning~%uint8 value~%~%uint8 INIT = 0~%uint8 INSERTION = 1~%uint8 DESINSERTION = 2~%uint8 FEU = 3~%uint8 FREINAGE_URG = 4~%================================================================================~%MSG: ece_msgs/StationType~%uint8 value~%~%uint8 UNKNOWN = 0~%uint8 PEDESTRIAN = 1~%uint8 CYCLIST = 2~%uint8 MOPED = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 BUS = 6~%uint8 LIGHT_TRUCK = 7~%uint8 HEAVY_TRUCK = 8~%uint8 TRAILER = 9~%uint8 SPECIAL_VEHICLE = 10~%uint8 TRAM = 11~%uint8 ROAD_SIDE_UNIT = 15~%================================================================================~%MSG: ece_msgs/Init~%# Destination : 8 octets~%ReferencePosition destination~%~%# Actual position : 8 octets~%ReferencePosition actual_position~%~%# Platoon~%Platoon platoon~%~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%================================================================================~%MSG: ece_msgs/Platoon~%# ID platoon : 3 bits~%uint8 id_platoon~%~%# ID autres véhicules platoon~%IDs[] ids ~%~%# Nombre de véhicules : 3 bits~%uint8 nombre_vehicules~%~%# Destination : 8 octets~%ReferencePosition destination~%~%# Vitesse et interdistance~%VitesseInterdistance vitesse_interdistance~%================================================================================~%MSG: ece_msgs/IDs~%uint8 ID~%uint8 position~%================================================================================~%MSG: ece_msgs/VitesseInterdistance~%# Vitesse : 6 bits~%Speed speed~%~%# Interdistance : 2 bits~%uint8 interdistance~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: ece_msgs/Insertion~%# Point d'insertion : 8 octet ~%ReferencePosition point_insertion~%~%# Confirmation insertion : 1 octet~%bool confirmation_insertion~%================================================================================~%MSG: ece_msgs/Desinsertion~%# Demande de sortie : 1 octet~%bool demande_sortie~%~%# Vitesse de sortie : 6 bits ~%Speed speed~%~%# Point de sortie : 8 octets~%ReferencePosition point_sortie~%~%# Nouvelle position dans P : 2 bits~%uint8 position~%~%# Confirmation insertion~%bool confirmation_sortie~%~%================================================================================~%MSG: ece_msgs/FreinageUrgence~%# Position P : 2 bits~%uint8 position~%================================================================================~%MSG: ece_msgs/Feu~%# Permission de passer le feu : 1 octet~%bool permission_feu~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ecemsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'its_header))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'basic_container))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'insertion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desinsertion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'freinage_urgence))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'feu))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ecemsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ecemsg
    (cl:cons ':header (header msg))
    (cl:cons ':its_header (its_header msg))
    (cl:cons ':generation_delta_time (generation_delta_time msg))
    (cl:cons ':basic_container (basic_container msg))
    (cl:cons ':init (init msg))
    (cl:cons ':insertion (insertion msg))
    (cl:cons ':desinsertion (desinsertion msg))
    (cl:cons ':freinage_urgence (freinage_urgence msg))
    (cl:cons ':feu (feu msg))
))
