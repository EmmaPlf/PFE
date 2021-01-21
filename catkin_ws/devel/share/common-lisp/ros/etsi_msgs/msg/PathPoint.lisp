; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude PathPoint.msg.html

(cl:defclass <PathPoint> (roslisp-msg-protocol:ros-message)
  ((path_position
    :reader path_position
    :initarg :path_position
    :type etsi_msgs-msg:DeltaReferencePosition
    :initform (cl:make-instance 'etsi_msgs-msg:DeltaReferencePosition))
   (path_delta_time
    :reader path_delta_time
    :initarg :path_delta_time
    :type etsi_msgs-msg:PathDeltaTime
    :initform (cl:make-instance 'etsi_msgs-msg:PathDeltaTime)))
)

(cl:defclass PathPoint (<PathPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<PathPoint> is deprecated: use etsi_msgs-msg:PathPoint instead.")))

(cl:ensure-generic-function 'path_position-val :lambda-list '(m))
(cl:defmethod path_position-val ((m <PathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:path_position-val is deprecated.  Use etsi_msgs-msg:path_position instead.")
  (path_position m))

(cl:ensure-generic-function 'path_delta_time-val :lambda-list '(m))
(cl:defmethod path_delta_time-val ((m <PathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:path_delta_time-val is deprecated.  Use etsi_msgs-msg:path_delta_time instead.")
  (path_delta_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathPoint>) ostream)
  "Serializes a message object of type '<PathPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_delta_time) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathPoint>) istream)
  "Deserializes a message object of type '<PathPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_delta_time) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathPoint>)))
  "Returns string type for a message object of type '<PathPoint>"
  "etsi_msgs/PathPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPoint)))
  "Returns string type for a message object of type 'PathPoint"
  "etsi_msgs/PathPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathPoint>)))
  "Returns md5sum for a message object of type '<PathPoint>"
  "4cde4f877b443788c447e4b7ce3042d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathPoint)))
  "Returns md5sum for a message object of type 'PathPoint"
  "4cde4f877b443788c447e4b7ce3042d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathPoint>)))
  "Returns full string definition for message of type '<PathPoint>"
  (cl:format cl:nil "DeltaReferencePosition path_position~%PathDeltaTime path_delta_time~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathPoint)))
  "Returns full string definition for message of type 'PathPoint"
  (cl:format cl:nil "DeltaReferencePosition path_position~%PathDeltaTime path_delta_time~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_delta_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'PathPoint
    (cl:cons ':path_position (path_position msg))
    (cl:cons ':path_delta_time (path_delta_time msg))
))
