; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Platoon.msg.html

(cl:defclass <Platoon> (roslisp-msg-protocol:ros-message)
  ((id_platoon
    :reader id_platoon
    :initarg :id_platoon
    :type cl:fixnum
    :initform 0)
   (ids
    :reader ids
    :initarg :ids
    :type (cl:vector ece_msgs-msg:IDs)
   :initform (cl:make-array 0 :element-type 'ece_msgs-msg:IDs :initial-element (cl:make-instance 'ece_msgs-msg:IDs)))
   (nombre_vehicules
    :reader nombre_vehicules
    :initarg :nombre_vehicules
    :type cl:fixnum
    :initform 0)
   (destination
    :reader destination
    :initarg :destination
    :type ece_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'ece_msgs-msg:ReferencePosition))
   (vitesse_interdistance
    :reader vitesse_interdistance
    :initarg :vitesse_interdistance
    :type ece_msgs-msg:VitesseInterdistance
    :initform (cl:make-instance 'ece_msgs-msg:VitesseInterdistance)))
)

(cl:defclass Platoon (<Platoon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Platoon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Platoon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<Platoon> is deprecated: use ece_msgs-msg:Platoon instead.")))

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

(cl:ensure-generic-function 'destination-val :lambda-list '(m))
(cl:defmethod destination-val ((m <Platoon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:destination-val is deprecated.  Use ece_msgs-msg:destination instead.")
  (destination m))

(cl:ensure-generic-function 'vitesse_interdistance-val :lambda-list '(m))
(cl:defmethod vitesse_interdistance-val ((m <Platoon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:vitesse_interdistance-val is deprecated.  Use ece_msgs-msg:vitesse_interdistance instead.")
  (vitesse_interdistance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Platoon>) ostream)
  "Serializes a message object of type '<Platoon>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_platoon)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ids))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nombre_vehicules)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'destination) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vitesse_interdistance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Platoon>) istream)
  "Deserializes a message object of type '<Platoon>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_platoon)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ece_msgs-msg:IDs))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nombre_vehicules)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'destination) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vitesse_interdistance) istream)
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
  "fff69630e9a6bd2b20508f0fab73dfb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Platoon)))
  "Returns md5sum for a message object of type 'Platoon"
  "fff69630e9a6bd2b20508f0fab73dfb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Platoon>)))
  "Returns full string definition for message of type '<Platoon>"
  (cl:format cl:nil "# ID platoon : 3 bits~%uint8 id_platoon~%~%# ID autres véhicules platoon~%IDs[] ids ~%~%# Nombre de véhicules : 3 bits~%uint8 nombre_vehicules~%~%# Destination : 8 octets~%ReferencePosition destination~%~%# Vitesse et interdistance~%VitesseInterdistance vitesse_interdistance~%================================================================================~%MSG: ece_msgs/IDs~%uint8 ID~%uint8 position~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%================================================================================~%MSG: ece_msgs/VitesseInterdistance~%# Vitesse : 6 bits~%Speed speed~%~%# Interdistance : 2 bits~%uint8 interdistance~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Platoon)))
  "Returns full string definition for message of type 'Platoon"
  (cl:format cl:nil "# ID platoon : 3 bits~%uint8 id_platoon~%~%# ID autres véhicules platoon~%IDs[] ids ~%~%# Nombre de véhicules : 3 bits~%uint8 nombre_vehicules~%~%# Destination : 8 octets~%ReferencePosition destination~%~%# Vitesse et interdistance~%VitesseInterdistance vitesse_interdistance~%================================================================================~%MSG: ece_msgs/IDs~%uint8 ID~%uint8 position~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%================================================================================~%MSG: ece_msgs/VitesseInterdistance~%# Vitesse : 6 bits~%Speed speed~%~%# Interdistance : 2 bits~%uint8 interdistance~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Platoon>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'destination))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vitesse_interdistance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Platoon>))
  "Converts a ROS message object to a list"
  (cl:list 'Platoon
    (cl:cons ':id_platoon (id_platoon msg))
    (cl:cons ':ids (ids msg))
    (cl:cons ':nombre_vehicules (nombre_vehicules msg))
    (cl:cons ':destination (destination msg))
    (cl:cons ':vitesse_interdistance (vitesse_interdistance msg))
))
