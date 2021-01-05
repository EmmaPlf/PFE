; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude EventPoint.msg.html

(cl:defclass <EventPoint> (roslisp-msg-protocol:ros-message)
  ((event_position
    :reader event_position
    :initarg :event_position
    :type etsi_msgs-msg:DeltaReferencePosition
    :initform (cl:make-instance 'etsi_msgs-msg:DeltaReferencePosition))
   (event_delta_time
    :reader event_delta_time
    :initarg :event_delta_time
    :type etsi_msgs-msg:PathDeltaTime
    :initform (cl:make-instance 'etsi_msgs-msg:PathDeltaTime))
   (information_quality
    :reader information_quality
    :initarg :information_quality
    :type etsi_msgs-msg:InformationQuality
    :initform (cl:make-instance 'etsi_msgs-msg:InformationQuality)))
)

(cl:defclass EventPoint (<EventPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EventPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EventPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<EventPoint> is deprecated: use etsi_msgs-msg:EventPoint instead.")))

(cl:ensure-generic-function 'event_position-val :lambda-list '(m))
(cl:defmethod event_position-val ((m <EventPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:event_position-val is deprecated.  Use etsi_msgs-msg:event_position instead.")
  (event_position m))

(cl:ensure-generic-function 'event_delta_time-val :lambda-list '(m))
(cl:defmethod event_delta_time-val ((m <EventPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:event_delta_time-val is deprecated.  Use etsi_msgs-msg:event_delta_time instead.")
  (event_delta_time m))

(cl:ensure-generic-function 'information_quality-val :lambda-list '(m))
(cl:defmethod information_quality-val ((m <EventPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:information_quality-val is deprecated.  Use etsi_msgs-msg:information_quality instead.")
  (information_quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EventPoint>) ostream)
  "Serializes a message object of type '<EventPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event_delta_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'information_quality) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EventPoint>) istream)
  "Deserializes a message object of type '<EventPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event_delta_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'information_quality) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EventPoint>)))
  "Returns string type for a message object of type '<EventPoint>"
  "etsi_msgs/EventPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EventPoint)))
  "Returns string type for a message object of type 'EventPoint"
  "etsi_msgs/EventPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EventPoint>)))
  "Returns md5sum for a message object of type '<EventPoint>"
  "b537fe840862e2b80e7cc1e698e9ac33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EventPoint)))
  "Returns md5sum for a message object of type 'EventPoint"
  "b537fe840862e2b80e7cc1e698e9ac33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EventPoint>)))
  "Returns full string definition for message of type '<EventPoint>"
  (cl:format cl:nil "DeltaReferencePosition event_position~%PathDeltaTime event_delta_time~%InformationQuality information_quality~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%================================================================================~%MSG: etsi_msgs/InformationQuality~%int8 value~%~%int8 UNAVAILABLE = 0~%int8 LOWEST = 1~%int8 HIGHEST = 7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EventPoint)))
  "Returns full string definition for message of type 'EventPoint"
  (cl:format cl:nil "DeltaReferencePosition event_position~%PathDeltaTime event_delta_time~%InformationQuality information_quality~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%================================================================================~%MSG: etsi_msgs/InformationQuality~%int8 value~%~%int8 UNAVAILABLE = 0~%int8 LOWEST = 1~%int8 HIGHEST = 7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EventPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event_delta_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'information_quality))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EventPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'EventPoint
    (cl:cons ':event_position (event_position msg))
    (cl:cons ':event_delta_time (event_delta_time msg))
    (cl:cons ':information_quality (information_quality msg))
))
