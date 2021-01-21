;; Auto-generated. Do not edit!


(when (boundp 'etsi_msgs::BasicVehicleContainerLowFrequency)
  (if (not (find-package "ETSI_MSGS"))
    (make-package "ETSI_MSGS"))
  (shadow 'BasicVehicleContainerLowFrequency (find-package "ETSI_MSGS")))
(unless (find-package "ETSI_MSGS::BASICVEHICLECONTAINERLOWFREQUENCY")
  (make-package "ETSI_MSGS::BASICVEHICLECONTAINERLOWFREQUENCY"))

(in-package "ROS")
;;//! \htmlinclude BasicVehicleContainerLowFrequency.msg.html


(defclass etsi_msgs::BasicVehicleContainerLowFrequency
  :super ros::object
  :slots (_vehicle_role _exterior_lights _path_history ))

(defmethod etsi_msgs::BasicVehicleContainerLowFrequency
  (:init
   (&key
    ((:vehicle_role __vehicle_role) (instance etsi_msgs::VehicleRole :init))
    ((:exterior_lights __exterior_lights) (instance etsi_msgs::ExteriorLights :init))
    ((:path_history __path_history) (instance etsi_msgs::PathHistory :init))
    )
   (send-super :init)
   (setq _vehicle_role __vehicle_role)
   (setq _exterior_lights __exterior_lights)
   (setq _path_history __path_history)
   self)
  (:vehicle_role
   (&rest __vehicle_role)
   (if (keywordp (car __vehicle_role))
       (send* _vehicle_role __vehicle_role)
     (progn
       (if __vehicle_role (setq _vehicle_role (car __vehicle_role)))
       _vehicle_role)))
  (:exterior_lights
   (&rest __exterior_lights)
   (if (keywordp (car __exterior_lights))
       (send* _exterior_lights __exterior_lights)
     (progn
       (if __exterior_lights (setq _exterior_lights (car __exterior_lights)))
       _exterior_lights)))
  (:path_history
   (&rest __path_history)
   (if (keywordp (car __path_history))
       (send* _path_history __path_history)
     (progn
       (if __path_history (setq _path_history (car __path_history)))
       _path_history)))
  (:serialization-length
   ()
   (+
    ;; etsi_msgs/VehicleRole _vehicle_role
    (send _vehicle_role :serialization-length)
    ;; etsi_msgs/ExteriorLights _exterior_lights
    (send _exterior_lights :serialization-length)
    ;; etsi_msgs/PathHistory _path_history
    (send _path_history :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; etsi_msgs/VehicleRole _vehicle_role
       (send _vehicle_role :serialize s)
     ;; etsi_msgs/ExteriorLights _exterior_lights
       (send _exterior_lights :serialize s)
     ;; etsi_msgs/PathHistory _path_history
       (send _path_history :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; etsi_msgs/VehicleRole _vehicle_role
     (send _vehicle_role :deserialize buf ptr-) (incf ptr- (send _vehicle_role :serialization-length))
   ;; etsi_msgs/ExteriorLights _exterior_lights
     (send _exterior_lights :deserialize buf ptr-) (incf ptr- (send _exterior_lights :serialization-length))
   ;; etsi_msgs/PathHistory _path_history
     (send _path_history :deserialize buf ptr-) (incf ptr- (send _path_history :serialization-length))
   ;;
   self)
  )

(setf (get etsi_msgs::BasicVehicleContainerLowFrequency :md5sum-) "5482aab88df6146441146840b8322331")
(setf (get etsi_msgs::BasicVehicleContainerLowFrequency :datatype-) "etsi_msgs/BasicVehicleContainerLowFrequency")
(setf (get etsi_msgs::BasicVehicleContainerLowFrequency :definition-)
      "VehicleRole vehicle_role
ExteriorLights exterior_lights
PathHistory path_history

================================================================================
MSG: etsi_msgs/VehicleRole
uint8 value

uint8 DEFAULT = 0
uint8 PUBLIC_TRANSPORT = 1
uint8 SPECIAL_TRANSPORT = 2
uint8 DANGEROUS_GOODS = 3
uint8 ROAD_WORK = 4
uint8 RESCUE = 5
uint8 EMERGENCY = 6
uint8 SAFETY_CAR = 7
uint8 AGRICULTURE = 8
uint8 COMMERCIAL = 9
uint8 MILITARY = 10
uint8 ROAD_OPERATOR = 11
uint8 TAXI = 12

================================================================================
MSG: etsi_msgs/ExteriorLights
uint8 value

uint8 LOW_BEAM_HEADLIGHTS = 1
uint8 HIGH_BEAM_HEADLIGHTS = 2
uint8 LEFT_TURN_SIGNAL = 4
uint8 RIGHT_TURN_SIGNAL = 8
uint8 DAYTIME_RUNNING_LIGHTS = 16
uint8 REVERSE_LIGHT = 32
uint8 FOG_LIGHT = 64
uint8 PARKING_LIGHTS = 128

================================================================================
MSG: etsi_msgs/PathHistory
PathPoint[] points

================================================================================
MSG: etsi_msgs/PathPoint
DeltaReferencePosition path_position
PathDeltaTime path_delta_time

================================================================================
MSG: etsi_msgs/DeltaReferencePosition
int32 delta_latitude # 0.1 micro degree
int32 delta_longitude # 0.1 micro degree
int16 delta_altitude # centimeter

int32 ONE_MICRODEGREE_NORTH = 10
int32 ONE_MICRODEGREE_SOUTH = -10
int32 ONE_MICRODEGREE_EAST = 10
int32 ONE_MICRODEGREE_WEST = -10
int32 ONE_CENTIMETER_UP = 1
int32 ONE_CENTIMETER_DOWN = -1
int32 LATITUDE_UNAVAILABLE = 131072
int32 LONGITUDE_UNAVAILABLE = 131072
int16 ALTITUDE_UNAVAILABLE = 12800

================================================================================
MSG: etsi_msgs/PathDeltaTime
uint16 value # 10 ms

uint16 UNAVAILABLE = 0
uint16 TEN_MILLISECONDS_IN_PAST = 1

")



(provide :etsi_msgs/BasicVehicleContainerLowFrequency "5482aab88df6146441146840b8322331")


