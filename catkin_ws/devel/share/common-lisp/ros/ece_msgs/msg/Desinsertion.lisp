; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Desinsertion.msg.html

(cl:defclass <Desinsertion> (roslisp-msg-protocol:ros-message)
  ((demande_sortie
    :reader demande_sortie
    :initarg :demande_sortie
    :type cl:boolean
    :initform cl:nil)
   (speed
    :reader speed
    :initarg :speed
    :type ece_msgs-msg:Speed
    :initform (cl:make-instance 'ece_msgs-msg:Speed))
   (point_sortie
    :reader point_sortie
    :initarg :point_sortie
    :type ece_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'ece_msgs-msg:ReferencePosition))
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Desinsertion (<Desinsertion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Desinsertion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Desinsertion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<Desinsertion> is deprecated: use ece_msgs-msg:Desinsertion instead.")))

(cl:ensure-generic-function 'demande_sortie-val :lambda-list '(m))
(cl:defmethod demande_sortie-val ((m <Desinsertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:demande_sortie-val is deprecated.  Use ece_msgs-msg:demande_sortie instead.")
  (demande_sortie m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Desinsertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:speed-val is deprecated.  Use ece_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'point_sortie-val :lambda-list '(m))
(cl:defmethod point_sortie-val ((m <Desinsertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:point_sortie-val is deprecated.  Use ece_msgs-msg:point_sortie instead.")
  (point_sortie m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Desinsertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:position-val is deprecated.  Use ece_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Desinsertion>) ostream)
  "Serializes a message object of type '<Desinsertion>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'demande_sortie) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_sortie) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Desinsertion>) istream)
  "Deserializes a message object of type '<Desinsertion>"
    (cl:setf (cl:slot-value msg 'demande_sortie) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_sortie) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Desinsertion>)))
  "Returns string type for a message object of type '<Desinsertion>"
  "ece_msgs/Desinsertion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Desinsertion)))
  "Returns string type for a message object of type 'Desinsertion"
  "ece_msgs/Desinsertion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Desinsertion>)))
  "Returns md5sum for a message object of type '<Desinsertion>"
  "737935e1f42b0a7edea1212ba87b7938")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Desinsertion)))
  "Returns md5sum for a message object of type 'Desinsertion"
  "737935e1f42b0a7edea1212ba87b7938")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Desinsertion>)))
  "Returns full string definition for message of type '<Desinsertion>"
  (cl:format cl:nil "# Demande de sortie : 1 bit~%bool demande_sortie~%~%# Vitesse de sortie : 6 bits ~%Speed speed~%~%# Point de sortie : 8 octets~%ReferencePosition point_sortie~%~%# Nouvelle position dans P : 2 bits~%uint8 position~%~%~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: ece_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: ece_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Desinsertion)))
  "Returns full string definition for message of type 'Desinsertion"
  (cl:format cl:nil "# Demande de sortie : 1 bit~%bool demande_sortie~%~%# Vitesse de sortie : 6 bits ~%Speed speed~%~%# Point de sortie : 8 octets~%ReferencePosition point_sortie~%~%# Nouvelle position dans P : 2 bits~%uint8 position~%~%~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: ece_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: ece_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Desinsertion>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_sortie))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Desinsertion>))
  "Converts a ROS message object to a list"
  (cl:list 'Desinsertion
    (cl:cons ':demande_sortie (demande_sortie msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':point_sortie (point_sortie msg))
    (cl:cons ':position (position msg))
))
