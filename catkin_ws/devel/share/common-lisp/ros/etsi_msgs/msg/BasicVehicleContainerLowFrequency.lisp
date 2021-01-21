; Auto-generated. Do not edit!


(cl:in-package etsi_msgs-msg)


;//! \htmlinclude BasicVehicleContainerLowFrequency.msg.html

(cl:defclass <BasicVehicleContainerLowFrequency> (roslisp-msg-protocol:ros-message)
  ((vehicle_role
    :reader vehicle_role
    :initarg :vehicle_role
    :type etsi_msgs-msg:VehicleRole
    :initform (cl:make-instance 'etsi_msgs-msg:VehicleRole))
   (exterior_lights
    :reader exterior_lights
    :initarg :exterior_lights
    :type etsi_msgs-msg:ExteriorLights
    :initform (cl:make-instance 'etsi_msgs-msg:ExteriorLights))
   (path_history
    :reader path_history
    :initarg :path_history
    :type etsi_msgs-msg:PathHistory
    :initform (cl:make-instance 'etsi_msgs-msg:PathHistory)))
)

(cl:defclass BasicVehicleContainerLowFrequency (<BasicVehicleContainerLowFrequency>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BasicVehicleContainerLowFrequency>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BasicVehicleContainerLowFrequency)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etsi_msgs-msg:<BasicVehicleContainerLowFrequency> is deprecated: use etsi_msgs-msg:BasicVehicleContainerLowFrequency instead.")))

(cl:ensure-generic-function 'vehicle_role-val :lambda-list '(m))
(cl:defmethod vehicle_role-val ((m <BasicVehicleContainerLowFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:vehicle_role-val is deprecated.  Use etsi_msgs-msg:vehicle_role instead.")
  (vehicle_role m))

(cl:ensure-generic-function 'exterior_lights-val :lambda-list '(m))
(cl:defmethod exterior_lights-val ((m <BasicVehicleContainerLowFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:exterior_lights-val is deprecated.  Use etsi_msgs-msg:exterior_lights instead.")
  (exterior_lights m))

(cl:ensure-generic-function 'path_history-val :lambda-list '(m))
(cl:defmethod path_history-val ((m <BasicVehicleContainerLowFrequency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etsi_msgs-msg:path_history-val is deprecated.  Use etsi_msgs-msg:path_history instead.")
  (path_history m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BasicVehicleContainerLowFrequency>) ostream)
  "Serializes a message object of type '<BasicVehicleContainerLowFrequency>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_role) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'exterior_lights) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_history) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BasicVehicleContainerLowFrequency>) istream)
  "Deserializes a message object of type '<BasicVehicleContainerLowFrequency>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_role) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'exterior_lights) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_history) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BasicVehicleContainerLowFrequency>)))
  "Returns string type for a message object of type '<BasicVehicleContainerLowFrequency>"
  "etsi_msgs/BasicVehicleContainerLowFrequency")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BasicVehicleContainerLowFrequency)))
  "Returns string type for a message object of type 'BasicVehicleContainerLowFrequency"
  "etsi_msgs/BasicVehicleContainerLowFrequency")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BasicVehicleContainerLowFrequency>)))
  "Returns md5sum for a message object of type '<BasicVehicleContainerLowFrequency>"
  "5482aab88df6146441146840b8322331")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BasicVehicleContainerLowFrequency)))
  "Returns md5sum for a message object of type 'BasicVehicleContainerLowFrequency"
  "5482aab88df6146441146840b8322331")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BasicVehicleContainerLowFrequency>)))
  "Returns full string definition for message of type '<BasicVehicleContainerLowFrequency>"
  (cl:format cl:nil "VehicleRole vehicle_role~%ExteriorLights exterior_lights~%PathHistory path_history~%~%================================================================================~%MSG: etsi_msgs/VehicleRole~%uint8 value~%~%uint8 DEFAULT = 0~%uint8 PUBLIC_TRANSPORT = 1~%uint8 SPECIAL_TRANSPORT = 2~%uint8 DANGEROUS_GOODS = 3~%uint8 ROAD_WORK = 4~%uint8 RESCUE = 5~%uint8 EMERGENCY = 6~%uint8 SAFETY_CAR = 7~%uint8 AGRICULTURE = 8~%uint8 COMMERCIAL = 9~%uint8 MILITARY = 10~%uint8 ROAD_OPERATOR = 11~%uint8 TAXI = 12~%~%================================================================================~%MSG: etsi_msgs/ExteriorLights~%uint8 value~%~%uint8 LOW_BEAM_HEADLIGHTS = 1~%uint8 HIGH_BEAM_HEADLIGHTS = 2~%uint8 LEFT_TURN_SIGNAL = 4~%uint8 RIGHT_TURN_SIGNAL = 8~%uint8 DAYTIME_RUNNING_LIGHTS = 16~%uint8 REVERSE_LIGHT = 32~%uint8 FOG_LIGHT = 64~%uint8 PARKING_LIGHTS = 128~%~%================================================================================~%MSG: etsi_msgs/PathHistory~%PathPoint[] points~%~%================================================================================~%MSG: etsi_msgs/PathPoint~%DeltaReferencePosition path_position~%PathDeltaTime path_delta_time~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BasicVehicleContainerLowFrequency)))
  "Returns full string definition for message of type 'BasicVehicleContainerLowFrequency"
  (cl:format cl:nil "VehicleRole vehicle_role~%ExteriorLights exterior_lights~%PathHistory path_history~%~%================================================================================~%MSG: etsi_msgs/VehicleRole~%uint8 value~%~%uint8 DEFAULT = 0~%uint8 PUBLIC_TRANSPORT = 1~%uint8 SPECIAL_TRANSPORT = 2~%uint8 DANGEROUS_GOODS = 3~%uint8 ROAD_WORK = 4~%uint8 RESCUE = 5~%uint8 EMERGENCY = 6~%uint8 SAFETY_CAR = 7~%uint8 AGRICULTURE = 8~%uint8 COMMERCIAL = 9~%uint8 MILITARY = 10~%uint8 ROAD_OPERATOR = 11~%uint8 TAXI = 12~%~%================================================================================~%MSG: etsi_msgs/ExteriorLights~%uint8 value~%~%uint8 LOW_BEAM_HEADLIGHTS = 1~%uint8 HIGH_BEAM_HEADLIGHTS = 2~%uint8 LEFT_TURN_SIGNAL = 4~%uint8 RIGHT_TURN_SIGNAL = 8~%uint8 DAYTIME_RUNNING_LIGHTS = 16~%uint8 REVERSE_LIGHT = 32~%uint8 FOG_LIGHT = 64~%uint8 PARKING_LIGHTS = 128~%~%================================================================================~%MSG: etsi_msgs/PathHistory~%PathPoint[] points~%~%================================================================================~%MSG: etsi_msgs/PathPoint~%DeltaReferencePosition path_position~%PathDeltaTime path_delta_time~%~%================================================================================~%MSG: etsi_msgs/DeltaReferencePosition~%int32 delta_latitude # 0.1 micro degree~%int32 delta_longitude # 0.1 micro degree~%int16 delta_altitude # centimeter~%~%int32 ONE_MICRODEGREE_NORTH = 10~%int32 ONE_MICRODEGREE_SOUTH = -10~%int32 ONE_MICRODEGREE_EAST = 10~%int32 ONE_MICRODEGREE_WEST = -10~%int32 ONE_CENTIMETER_UP = 1~%int32 ONE_CENTIMETER_DOWN = -1~%int32 LATITUDE_UNAVAILABLE = 131072~%int32 LONGITUDE_UNAVAILABLE = 131072~%int16 ALTITUDE_UNAVAILABLE = 12800~%~%================================================================================~%MSG: etsi_msgs/PathDeltaTime~%uint16 value # 10 ms~%~%uint16 UNAVAILABLE = 0~%uint16 TEN_MILLISECONDS_IN_PAST = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BasicVehicleContainerLowFrequency>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_role))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'exterior_lights))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_history))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BasicVehicleContainerLowFrequency>))
  "Converts a ROS message object to a list"
  (cl:list 'BasicVehicleContainerLowFrequency
    (cl:cons ':vehicle_role (vehicle_role msg))
    (cl:cons ':exterior_lights (exterior_lights msg))
    (cl:cons ':path_history (path_history msg))
))
