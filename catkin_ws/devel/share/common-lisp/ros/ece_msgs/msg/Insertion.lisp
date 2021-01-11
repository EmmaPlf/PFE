; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Insertion.msg.html

(cl:defclass <Insertion> (roslisp-msg-protocol:ros-message)
  ((reference_position
    :reader reference_position
    :initarg :reference_position
    :type ece_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'ece_msgs-msg:ReferencePosition))
   (confirmation_insertion
    :reader confirmation_insertion
    :initarg :confirmation_insertion
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Insertion (<Insertion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Insertion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Insertion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<Insertion> is deprecated: use ece_msgs-msg:Insertion instead.")))

(cl:ensure-generic-function 'reference_position-val :lambda-list '(m))
(cl:defmethod reference_position-val ((m <Insertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:reference_position-val is deprecated.  Use ece_msgs-msg:reference_position instead.")
  (reference_position m))

(cl:ensure-generic-function 'confirmation_insertion-val :lambda-list '(m))
(cl:defmethod confirmation_insertion-val ((m <Insertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:confirmation_insertion-val is deprecated.  Use ece_msgs-msg:confirmation_insertion instead.")
  (confirmation_insertion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Insertion>) ostream)
  "Serializes a message object of type '<Insertion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_position) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'confirmation_insertion) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Insertion>) istream)
  "Deserializes a message object of type '<Insertion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_position) istream)
    (cl:setf (cl:slot-value msg 'confirmation_insertion) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Insertion>)))
  "Returns string type for a message object of type '<Insertion>"
  "ece_msgs/Insertion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Insertion)))
  "Returns string type for a message object of type 'Insertion"
  "ece_msgs/Insertion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Insertion>)))
  "Returns md5sum for a message object of type '<Insertion>"
  "2e657a43fd2874194e72382f85cbab1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Insertion)))
  "Returns md5sum for a message object of type 'Insertion"
  "2e657a43fd2874194e72382f85cbab1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Insertion>)))
  "Returns full string definition for message of type '<Insertion>"
  (cl:format cl:nil "# Point d'insertion : 8 octet ~%ReferencePosition reference_position~%~%# Confirmation insertion : 1 bits~%bool confirmation_insertion~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: ece_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: ece_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Insertion)))
  "Returns full string definition for message of type 'Insertion"
  (cl:format cl:nil "# Point d'insertion : 8 octet ~%ReferencePosition reference_position~%~%# Confirmation insertion : 1 bits~%bool confirmation_insertion~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%PositionConfidenceEllipse position_confidence~%Altitude altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%~%================================================================================~%MSG: ece_msgs/PositionConfidenceEllipse~%uint16 semi_major_confidence # cm~%uint16 semi_minor_confidence # cm~%uint16 semi_major_orientation # 0.1 degree~%~%uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094~%uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095~%~%================================================================================~%MSG: ece_msgs/Altitude~%int32 value # 0.01 meter~%uint8 confidence~%~%int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0~%int32 VALUE_ONE_CENTIMETER = 1~%int32 VALUE_UNAVAILABLE = 800001~%~%uint8 CONFIDENCE_1CM = 0~%uint8 CONFIDENCE_2CM = 1~%uint8 CONFIDENCE_5CM = 2~%uint8 CONFIDENCE_10CM = 3~%uint8 CONFIDENCE_20CM = 4~%uint8 CONFIDENCE_50CM = 5~%uint8 CONFIDENCE_1M = 6~%uint8 CONFIDENCE_2M = 7~%uint8 CONFIDENCE_5M = 8~%uint8 CONFIDENCE_10M = 9~%uint8 CONFIDENCE_20M = 10~%uint8 CONFIDENCE_50M = 11~%uint8 CONFIDENCE_100M = 12~%uint8 CONFIDENCE_200M = 13~%uint8 CONFIDENCE_OUT_OF_RANGE = 14~%uint8 CONFIDENCE_UNAVAILABLE = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Insertion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_position))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Insertion>))
  "Converts a ROS message object to a list"
  (cl:list 'Insertion
    (cl:cons ':reference_position (reference_position msg))
    (cl:cons ':confirmation_insertion (confirmation_insertion msg))
))
