; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude PathHistory.msg.html

(cl:defclass <PathHistory> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector etsi_msgs-msg:PathPoint)
   :initform (cl:make-array 0 :element-type 'etsi_msgs-msg:PathPoint :initial-element (cl:make-instance 'etsi_msgs-msg:PathPoint))))
)

(cl:defclass PathHistory (<PathHistory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathHistory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathHistory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<PathHistory> is deprecated: use etsi_msgs-msg:PathHistory instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PathHistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:points-val is deprecated.  Use etsi_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathHistory>) ostream)
  "Serializes a message object of type '<PathHistory>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathHistory>) istream)
  "Deserializes a message object of type '<PathHistory>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'etsi_msgs-msg:PathPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathHistory>)))
  "Returns string type for a message object of type '<PathHistory>"
  "etsi_msgs/PathHistory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathHistory)))
  "Returns string type for a message object of type 'PathHistory"
  "etsi_msgs/PathHistory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathHistory>)))
  "Returns md5sum for a message object of type '<PathHistory>"
  "8167006200782b25e11922b1f6d79b6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathHistory)))
  "Returns md5sum for a message object of type 'PathHistory"
  "8167006200782b25e11922b1f6d79b6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathHistory>)))
  "Returns full string definition for message of type '<PathHistory>"
  (cl:format cl:nil "PathPoint[] points~%~%================================================================================~%MSG: etsi_msgs/PathPoint~%DeltaReferencePosition path_position~%PathDeltaTime path_delta_time~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathHistory)))
  "Returns full string definition for message of type 'PathHistory"
  (cl:format cl:nil "PathPoint[] points~%~%================================================================================~%MSG: etsi_msgs/PathPoint~%DeltaReferencePosition path_position~%PathDeltaTime path_delta_time~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathHistory>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathHistory>))
  "Converts a ROS message object to a list"
  (cl:list 'PathHistory
    (cl:cons ':points (points msg))
))
