; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude VitesseInterdistance.msg.html

(cl:defclass <VitesseInterdistance> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type ece_msgs-msg:Speed
    :initform (cl:make-instance 'ece_msgs-msg:Speed))
   (interdistance
    :reader interdistance
    :initarg :interdistance
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VitesseInterdistance (<VitesseInterdistance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VitesseInterdistance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VitesseInterdistance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<VitesseInterdistance> is deprecated: use ece_msgs-msg:VitesseInterdistance instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <VitesseInterdistance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:speed-val is deprecated.  Use ece_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'interdistance-val :lambda-list '(m))
(cl:defmethod interdistance-val ((m <VitesseInterdistance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:interdistance-val is deprecated.  Use ece_msgs-msg:interdistance instead.")
  (interdistance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VitesseInterdistance>) ostream)
  "Serializes a message object of type '<VitesseInterdistance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interdistance)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VitesseInterdistance>) istream)
  "Deserializes a message object of type '<VitesseInterdistance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interdistance)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VitesseInterdistance>)))
  "Returns string type for a message object of type '<VitesseInterdistance>"
  "ece_msgs/VitesseInterdistance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VitesseInterdistance)))
  "Returns string type for a message object of type 'VitesseInterdistance"
  "ece_msgs/VitesseInterdistance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VitesseInterdistance>)))
  "Returns md5sum for a message object of type '<VitesseInterdistance>"
  "d850ec0c0095939e4604e424c6859708")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VitesseInterdistance)))
  "Returns md5sum for a message object of type 'VitesseInterdistance"
  "d850ec0c0095939e4604e424c6859708")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VitesseInterdistance>)))
  "Returns full string definition for message of type '<VitesseInterdistance>"
  (cl:format cl:nil "# Vitesse : 6 bits~%Speed speed~%~%# Interdistance : 2 bits~%uint8 interdistance~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VitesseInterdistance)))
  "Returns full string definition for message of type 'VitesseInterdistance"
  (cl:format cl:nil "# Vitesse : 6 bits~%Speed speed~%~%# Interdistance : 2 bits~%uint8 interdistance~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VitesseInterdistance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VitesseInterdistance>))
  "Converts a ROS message object to a list"
  (cl:list 'VitesseInterdistance
    (cl:cons ':speed (speed msg))
    (cl:cons ':interdistance (interdistance msg))
))
