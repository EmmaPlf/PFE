; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude CurvatureCalculationMode.msg.html

(cl:defclass <CurvatureCalculationMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CurvatureCalculationMode (<CurvatureCalculationMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurvatureCalculationMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurvatureCalculationMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<CurvatureCalculationMode> is deprecated: use etsi_msgs-msg:CurvatureCalculationMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CurvatureCalculationMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:value-val is deprecated.  Use etsi_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CurvatureCalculationMode>)))
    "Constants for message type '<CurvatureCalculationMode>"
  '((:YAW_RATE_USED . 0)
    (:YAW_RATE_NOT_USED . 1)
    (:UNAVAILABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CurvatureCalculationMode)))
    "Constants for message type 'CurvatureCalculationMode"
  '((:YAW_RATE_USED . 0)
    (:YAW_RATE_NOT_USED . 1)
    (:UNAVAILABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurvatureCalculationMode>) ostream)
  "Serializes a message object of type '<CurvatureCalculationMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurvatureCalculationMode>) istream)
  "Deserializes a message object of type '<CurvatureCalculationMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurvatureCalculationMode>)))
  "Returns string type for a message object of type '<CurvatureCalculationMode>"
  "etsi_msgs/CurvatureCalculationMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurvatureCalculationMode)))
  "Returns string type for a message object of type 'CurvatureCalculationMode"
  "etsi_msgs/CurvatureCalculationMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurvatureCalculationMode>)))
  "Returns md5sum for a message object of type '<CurvatureCalculationMode>"
  "46ebf604228ff7c0dfdb747adbeb4d5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurvatureCalculationMode)))
  "Returns md5sum for a message object of type 'CurvatureCalculationMode"
  "46ebf604228ff7c0dfdb747adbeb4d5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurvatureCalculationMode>)))
  "Returns full string definition for message of type '<CurvatureCalculationMode>"
  (cl:format cl:nil "uint8 value~%~%uint8 YAW_RATE_USED = 0~%uint8 YAW_RATE_NOT_USED = 1~%uint8 UNAVAILABLE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurvatureCalculationMode)))
  "Returns full string definition for message of type 'CurvatureCalculationMode"
  (cl:format cl:nil "uint8 value~%~%uint8 YAW_RATE_USED = 0~%uint8 YAW_RATE_NOT_USED = 1~%uint8 UNAVAILABLE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurvatureCalculationMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurvatureCalculationMode>))
  "Converts a ROS message object to a list"
  (cl:list 'CurvatureCalculationMode
    (cl:cons ':value (value msg))
))
