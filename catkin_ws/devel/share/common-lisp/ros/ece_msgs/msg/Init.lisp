; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Init.msg.html

(cl:defclass <Init> (roslisp-msg-protocol:ros-message)
  ((destination
    :reader destination
    :initarg :destination
    :type ece_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'ece_msgs-msg:ReferencePosition))
   (actual_position
    :reader actual_position
    :initarg :actual_position
    :type ece_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'ece_msgs-msg:ReferencePosition))
   (platoon
    :reader platoon
    :initarg :platoon
    :type ece_msgs-msg:Platoon
    :initform (cl:make-instance 'ece_msgs-msg:Platoon)))
)

(cl:defclass Init (<Init>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Init>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Init)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<Init> is deprecated: use ece_msgs-msg:Init instead.")))

(cl:ensure-generic-function 'destination-val :lambda-list '(m))
(cl:defmethod destination-val ((m <Init>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:destination-val is deprecated.  Use ece_msgs-msg:destination instead.")
  (destination m))

(cl:ensure-generic-function 'actual_position-val :lambda-list '(m))
(cl:defmethod actual_position-val ((m <Init>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:actual_position-val is deprecated.  Use ece_msgs-msg:actual_position instead.")
  (actual_position m))

(cl:ensure-generic-function 'platoon-val :lambda-list '(m))
(cl:defmethod platoon-val ((m <Init>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:platoon-val is deprecated.  Use ece_msgs-msg:platoon instead.")
  (platoon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Init>) ostream)
  "Serializes a message object of type '<Init>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'destination) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'platoon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Init>) istream)
  "Deserializes a message object of type '<Init>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'destination) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'platoon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Init>)))
  "Returns string type for a message object of type '<Init>"
  "ece_msgs/Init")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Init)))
  "Returns string type for a message object of type 'Init"
  "ece_msgs/Init")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Init>)))
  "Returns md5sum for a message object of type '<Init>"
  "f34eabbe979642b92d826c50c7719f17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Init)))
  "Returns md5sum for a message object of type 'Init"
  "f34eabbe979642b92d826c50c7719f17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Init>)))
  "Returns full string definition for message of type '<Init>"
  (cl:format cl:nil "# Destination : 8 octets~%ReferencePosition destination~%~%# Actual position : 8 octets~%ReferencePosition actual_position~%~%# Platoon~%Platoon platoon~%~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%================================================================================~%MSG: ece_msgs/Platoon~%# ID platoon : 3 bits~%uint8 id_platoon~%~%# ID autres véhicules platoon~%IDs[] ids ~%~%# Nombre de véhicules : 3 bits~%uint8 nombre_vehicules~%~%# Destination : 8 octets~%ReferencePosition destination~%~%# Vitesse et interdistance~%VitesseInterdistance vitesse_interdistance~%================================================================================~%MSG: ece_msgs/IDs~%uint8 ID~%uint8 position~%================================================================================~%MSG: ece_msgs/VitesseInterdistance~%# Vitesse : 6 bits~%Speed speed~%~%# Interdistance : 2 bits~%uint8 interdistance~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Init)))
  "Returns full string definition for message of type 'Init"
  (cl:format cl:nil "# Destination : 8 octets~%ReferencePosition destination~%~%# Actual position : 8 octets~%ReferencePosition actual_position~%~%# Platoon~%Platoon platoon~%~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%================================================================================~%MSG: ece_msgs/Platoon~%# ID platoon : 3 bits~%uint8 id_platoon~%~%# ID autres véhicules platoon~%IDs[] ids ~%~%# Nombre de véhicules : 3 bits~%uint8 nombre_vehicules~%~%# Destination : 8 octets~%ReferencePosition destination~%~%# Vitesse et interdistance~%VitesseInterdistance vitesse_interdistance~%================================================================================~%MSG: ece_msgs/IDs~%uint8 ID~%uint8 position~%================================================================================~%MSG: ece_msgs/VitesseInterdistance~%# Vitesse : 6 bits~%Speed speed~%~%# Interdistance : 2 bits~%uint8 interdistance~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Init>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'destination))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'platoon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Init>))
  "Converts a ROS message object to a list"
  (cl:list 'Init
    (cl:cons ':destination (destination msg))
    (cl:cons ':actual_position (actual_position msg))
    (cl:cons ':platoon (platoon msg))
))
