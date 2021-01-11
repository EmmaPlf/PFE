; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Platoon.msg.html

(cl:defclass <Platoon> (roslisp-msg-protocol:ros-message)
  ((id_vt
    :reader id_vt
    :initarg :id_vt
    :type cl:fixnum
    :initform 0)
   (id_platoon
    :reader id_platoon
    :initarg :id_platoon
    :type cl:fixnum
    :initform 0)
   (ids
    :reader ids
    :initarg :ids
    :type ece_msgs-msg:IDs
    :initform (cl:make-instance 'ece_msgs-msg:IDs))
   (nombre_vehicules
    :reader nombre_vehicules
    :initarg :nombre_vehicules
    :type cl:fixnum
    :initform 0)
   (reference_position
    :reader reference_position
    :initarg :reference_position
    :type ece_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'ece_msgs-msg:ReferencePosition)))
)

(cl:defclass Platoon (<Platoon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Platoon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Platoon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<Platoon> is deprecated: use ece_msgs-msg:Platoon instead.")))

(cl:ensure-generic-function 'id_vt-val :lambda-list '(m))
(cl:defmethod id_vt-val ((m <Platoon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:id_vt-val is deprecated.  Use ece_msgs-msg:id_vt instead.")
  (id_vt m))

(cl:ensure-generic-function 'id_platoon-val :lambda-list '(m))
(cl:defmethod id_platoon-val ((m <Platoon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:id_platoon-val is deprecated.  Use ece_msgs-msg:id_platoon instead.")
  (id_platoon m))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <Platoon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:ids-val is deprecated.  Use ece_msgs-msg:ids instead.")
  (ids m))

(cl:ensure-generic-function 'nombre_vehicules-val :lambda-list '(m))
(cl:defmethod nombre_vehicules-val ((m <Platoon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:nombre_vehicules-val is deprecated.  Use ece_msgs-msg:nombre_vehicules instead.")
  (nombre_vehicules m))

(cl:ensure-generic-function 'reference_position-val :lambda-list '(m))
(cl:defmethod reference_position-val ((m <Platoon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:reference_position-val is deprecated.  Use ece_msgs-msg:reference_position instead.")
  (reference_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Platoon>) ostream)
  "Serializes a message object of type '<Platoon>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_vt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_platoon)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ids) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nombre_vehicules)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Platoon>) istream)
  "Deserializes a message object of type '<Platoon>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_vt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_platoon)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ids) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nombre_vehicules)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Platoon>)))
  "Returns string type for a message object of type '<Platoon>"
  "ece_msgs/Platoon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Platoon)))
  "Returns string type for a message object of type 'Platoon"
  "ece_msgs/Platoon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Platoon>)))
  "Returns md5sum for a message object of type '<Platoon>"
  "e04a40bb6fe3969e75a1973bd60b5977")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Platoon)))
  "Returns md5sum for a message object of type 'Platoon"
  "e04a40bb6fe3969e75a1973bd60b5977")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Platoon>)))
  "Returns full string definition for message of type '<Platoon>"
  (cl:format cl:nil "# ID Vt : 3 bits ~%uint8 id_vt~%~%# ID platoon : 3 bits~%uint8 id_platoon~%~%# ID autres véhicules platoon : 3 bits~%IDs ids ~%~%# Nombre de véhicules : 3 bits~%uint8 nombre_vehicules~%~%# Destination : 8 octets~%ReferencePosition reference_position~%================================================================================~%MSG: ece_msgs/IDs~%uint8 ID~%uint8 position~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: ece_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: ece_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Platoon)))
  "Returns full string definition for message of type 'Platoon"
  (cl:format cl:nil "# ID Vt : 3 bits ~%uint8 id_vt~%~%# ID platoon : 3 bits~%uint8 id_platoon~%~%# ID autres véhicules platoon : 3 bits~%IDs ids ~%~%# Nombre de véhicules : 3 bits~%uint8 nombre_vehicules~%~%# Destination : 8 octets~%ReferencePosition reference_position~%================================================================================~%MSG: ece_msgs/IDs~%uint8 ID~%uint8 position~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: ece_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: ece_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Platoon>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ids))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Platoon>))
  "Converts a ROS message object to a list"
  (cl:list 'Platoon
    (cl:cons ':id_vt (id_vt msg))
    (cl:cons ':id_platoon (id_platoon msg))
    (cl:cons ':ids (ids msg))
    (cl:cons ':nombre_vehicules (nombre_vehicules msg))
    (cl:cons ':reference_position (reference_position msg))
))
