; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude StationType.msg.html

(cl:defclass <StationType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StationType (<StationType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<StationType> is deprecated: use ece_msgs-msg:StationType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <StationType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:value-val is deprecated.  Use ece_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StationType>)))
    "Constants for message type '<StationType>"
  '((:UNKNOWN . 0)
    (:PEDESTRIAN . 1)
    (:CYCLIST . 2)
    (:MOPED . 3)
    (:MOTORCYCLE . 4)
    (:PASSENGER_CAR . 5)
    (:BUS . 6)
    (:LIGHT_TRUCK . 7)
    (:HEAVY_TRUCK . 8)
    (:TRAILER . 9)
    (:SPECIAL_VEHICLE . 10)
    (:TRAM . 11)
    (:ROAD_SIDE_UNIT . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StationType)))
    "Constants for message type 'StationType"
  '((:UNKNOWN . 0)
    (:PEDESTRIAN . 1)
    (:CYCLIST . 2)
    (:MOPED . 3)
    (:MOTORCYCLE . 4)
    (:PASSENGER_CAR . 5)
    (:BUS . 6)
    (:LIGHT_TRUCK . 7)
    (:HEAVY_TRUCK . 8)
    (:TRAILER . 9)
    (:SPECIAL_VEHICLE . 10)
    (:TRAM . 11)
    (:ROAD_SIDE_UNIT . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationType>) ostream)
  "Serializes a message object of type '<StationType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationType>) istream)
  "Deserializes a message object of type '<StationType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationType>)))
  "Returns string type for a message object of type '<StationType>"
  "ece_msgs/StationType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationType)))
  "Returns string type for a message object of type 'StationType"
  "ece_msgs/StationType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationType>)))
  "Returns md5sum for a message object of type '<StationType>"
  "11f2c0aead214582d10e882ec072ef97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationType)))
  "Returns md5sum for a message object of type 'StationType"
  "11f2c0aead214582d10e882ec072ef97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationType>)))
  "Returns full string definition for message of type '<StationType>"
  (cl:format cl:nil "uint8 value~%~%uint8 UNKNOWN = 0~%uint8 PEDESTRIAN = 1~%uint8 CYCLIST = 2~%uint8 MOPED = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 BUS = 6~%uint8 LIGHT_TRUCK = 7~%uint8 HEAVY_TRUCK = 8~%uint8 TRAILER = 9~%uint8 SPECIAL_VEHICLE = 10~%uint8 TRAM = 11~%uint8 ROAD_SIDE_UNIT = 15~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationType)))
  "Returns full string definition for message of type 'StationType"
  (cl:format cl:nil "uint8 value~%~%uint8 UNKNOWN = 0~%uint8 PEDESTRIAN = 1~%uint8 CYCLIST = 2~%uint8 MOPED = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 BUS = 6~%uint8 LIGHT_TRUCK = 7~%uint8 HEAVY_TRUCK = 8~%uint8 TRAILER = 9~%uint8 SPECIAL_VEHICLE = 10~%uint8 TRAM = 11~%uint8 ROAD_SIDE_UNIT = 15~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationType>))
  "Converts a ROS message object to a list"
  (cl:list 'StationType
    (cl:cons ':value (value msg))
))
