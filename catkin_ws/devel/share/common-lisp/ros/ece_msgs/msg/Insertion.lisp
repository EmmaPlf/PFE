; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Insertion.msg.html

(cl:defclass <Insertion> (roslisp-msg-protocol:ros-message)
  ((point_insertion
    :reader point_insertion
    :initarg :point_insertion
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

(cl:ensure-generic-function 'point_insertion-val :lambda-list '(m))
(cl:defmethod point_insertion-val ((m <Insertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:point_insertion-val is deprecated.  Use ece_msgs-msg:point_insertion instead.")
  (point_insertion m))

(cl:ensure-generic-function 'confirmation_insertion-val :lambda-list '(m))
(cl:defmethod confirmation_insertion-val ((m <Insertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:confirmation_insertion-val is deprecated.  Use ece_msgs-msg:confirmation_insertion instead.")
  (confirmation_insertion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Insertion>) ostream)
  "Serializes a message object of type '<Insertion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_insertion) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'confirmation_insertion) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Insertion>) istream)
  "Deserializes a message object of type '<Insertion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_insertion) istream)
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
  "445e7910d0486ca2159677b916542c18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Insertion)))
  "Returns md5sum for a message object of type 'Insertion"
  "445e7910d0486ca2159677b916542c18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Insertion>)))
  "Returns full string definition for message of type '<Insertion>"
  (cl:format cl:nil "# Point d'insertion : 8 octet ~%ReferencePosition point_insertion~%~%# Confirmation insertion : 1 octet~%bool confirmation_insertion~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Insertion)))
  "Returns full string definition for message of type 'Insertion"
  (cl:format cl:nil "# Point d'insertion : 8 octet ~%ReferencePosition point_insertion~%~%# Confirmation insertion : 1 octet~%bool confirmation_insertion~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Insertion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_insertion))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Insertion>))
  "Converts a ROS message object to a list"
  (cl:list 'Insertion
    (cl:cons ':point_insertion (point_insertion msg))
    (cl:cons ':confirmation_insertion (confirmation_insertion msg))
))
