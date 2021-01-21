; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude BasicContainer.msg.html

(cl:defclass <BasicContainer> (roslisp-msg-protocol:ros-message)
  ((ID_exp
    :reader ID_exp
    :initarg :ID_exp
    :type cl:fixnum
    :initform 0)
   (ID_dest
    :reader ID_dest
    :initarg :ID_dest
    :type cl:fixnum
    :initform 0)
   (phase
    :reader phase
    :initarg :phase
    :type ece_msgs-msg:Phase
    :initform (cl:make-instance 'ece_msgs-msg:Phase))
   (station_type
    :reader station_type
    :initarg :station_type
    :type ece_msgs-msg:StationType
    :initform (cl:make-instance 'ece_msgs-msg:StationType)))
)

(cl:defclass BasicContainer (<BasicContainer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BasicContainer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BasicContainer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<BasicContainer> is deprecated: use ece_msgs-msg:BasicContainer instead.")))

(cl:ensure-generic-function 'ID_exp-val :lambda-list '(m))
(cl:defmethod ID_exp-val ((m <BasicContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:ID_exp-val is deprecated.  Use ece_msgs-msg:ID_exp instead.")
  (ID_exp m))

(cl:ensure-generic-function 'ID_dest-val :lambda-list '(m))
(cl:defmethod ID_dest-val ((m <BasicContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:ID_dest-val is deprecated.  Use ece_msgs-msg:ID_dest instead.")
  (ID_dest m))

(cl:ensure-generic-function 'phase-val :lambda-list '(m))
(cl:defmethod phase-val ((m <BasicContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:phase-val is deprecated.  Use ece_msgs-msg:phase instead.")
  (phase m))

(cl:ensure-generic-function 'station_type-val :lambda-list '(m))
(cl:defmethod station_type-val ((m <BasicContainer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:station_type-val is deprecated.  Use ece_msgs-msg:station_type instead.")
  (station_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BasicContainer>) ostream)
  "Serializes a message object of type '<BasicContainer>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID_exp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID_dest)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'phase) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'station_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BasicContainer>) istream)
  "Deserializes a message object of type '<BasicContainer>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID_exp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID_dest)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'phase) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'station_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BasicContainer>)))
  "Returns string type for a message object of type '<BasicContainer>"
  "ece_msgs/BasicContainer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BasicContainer)))
  "Returns string type for a message object of type 'BasicContainer"
  "ece_msgs/BasicContainer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BasicContainer>)))
  "Returns md5sum for a message object of type '<BasicContainer>"
  "b89e5ecc81a0e7b1d5b7bf77ae93b6d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BasicContainer)))
  "Returns md5sum for a message object of type 'BasicContainer"
  "b89e5ecc81a0e7b1d5b7bf77ae93b6d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BasicContainer>)))
  "Returns full string definition for message of type '<BasicContainer>"
  (cl:format cl:nil "# ID expediteur~%uint8 ID_exp~%~%# ID destinataire~%uint8 ID_dest~%~%# Phase de plattoning~%Phase phase~%~%# Type de station~%StationType station_type~%================================================================================~%MSG: ece_msgs/Phase~%# Phase de plattoning~%uint8 value~%~%uint8 INIT = 0~%uint8 INSERTION = 1~%uint8 DESINSERTION = 2~%uint8 FEU = 3~%uint8 FREINAGE_URG = 4~%================================================================================~%MSG: ece_msgs/StationType~%uint8 value~%~%uint8 UNKNOWN = 0~%uint8 PEDESTRIAN = 1~%uint8 CYCLIST = 2~%uint8 MOPED = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 BUS = 6~%uint8 LIGHT_TRUCK = 7~%uint8 HEAVY_TRUCK = 8~%uint8 TRAILER = 9~%uint8 SPECIAL_VEHICLE = 10~%uint8 TRAM = 11~%uint8 ROAD_SIDE_UNIT = 15~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BasicContainer)))
  "Returns full string definition for message of type 'BasicContainer"
  (cl:format cl:nil "# ID expediteur~%uint8 ID_exp~%~%# ID destinataire~%uint8 ID_dest~%~%# Phase de plattoning~%Phase phase~%~%# Type de station~%StationType station_type~%================================================================================~%MSG: ece_msgs/Phase~%# Phase de plattoning~%uint8 value~%~%uint8 INIT = 0~%uint8 INSERTION = 1~%uint8 DESINSERTION = 2~%uint8 FEU = 3~%uint8 FREINAGE_URG = 4~%================================================================================~%MSG: ece_msgs/StationType~%uint8 value~%~%uint8 UNKNOWN = 0~%uint8 PEDESTRIAN = 1~%uint8 CYCLIST = 2~%uint8 MOPED = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 BUS = 6~%uint8 LIGHT_TRUCK = 7~%uint8 HEAVY_TRUCK = 8~%uint8 TRAILER = 9~%uint8 SPECIAL_VEHICLE = 10~%uint8 TRAM = 11~%uint8 ROAD_SIDE_UNIT = 15~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BasicContainer>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'phase))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'station_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BasicContainer>))
  "Converts a ROS message object to a list"
  (cl:list 'BasicContainer
    (cl:cons ':ID_exp (ID_exp msg))
    (cl:cons ':ID_dest (ID_dest msg))
    (cl:cons ':phase (phase msg))
    (cl:cons ':station_type (station_type msg))
))
