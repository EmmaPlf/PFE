;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::ecemsg)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'ecemsg (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::ECEMSG")
  (make-package "ECE_MSGS::ECEMSG"))

(in-package "ROS")
;;//! \htmlinclude ecemsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ece_msgs::ecemsg
  :super ros::object
  :slots (_header _its_header _generation_delta_time _station_type _platoon _vitesse_interdistance _insertion _desinsertion _freinage_urgence _feu ))

(defmethod ece_msgs::ecemsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:its_header __its_header) (instance ece_msgs::ItsPduHeader :init))
    ((:generation_delta_time __generation_delta_time) 0)
    ((:station_type __station_type) (instance ece_msgs::StationType :init))
    ((:platoon __platoon) (instance ece_msgs::Platoon :init))
    ((:vitesse_interdistance __vitesse_interdistance) (instance ece_msgs::VitesseInterdistance :init))
    ((:insertion __insertion) (instance ece_msgs::Insertion :init))
    ((:desinsertion __desinsertion) (instance ece_msgs::Desinsertion :init))
    ((:freinage_urgence __freinage_urgence) (instance ece_msgs::FreinageUrgence :init))
    ((:feu __feu) (instance ece_msgs::Feu :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _its_header __its_header)
   (setq _generation_delta_time (round __generation_delta_time))
   (setq _station_type __station_type)
   (setq _platoon __platoon)
   (setq _vitesse_interdistance __vitesse_interdistance)
   (setq _insertion __insertion)
   (setq _desinsertion __desinsertion)
   (setq _freinage_urgence __freinage_urgence)
   (setq _feu __feu)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:its_header
   (&rest __its_header)
   (if (keywordp (car __its_header))
       (send* _its_header __its_header)
     (progn
       (if __its_header (setq _its_header (car __its_header)))
       _its_header)))
  (:generation_delta_time
   (&optional __generation_delta_time)
   (if __generation_delta_time (setq _generation_delta_time __generation_delta_time)) _generation_delta_time)
  (:station_type
   (&rest __station_type)
   (if (keywordp (car __station_type))
       (send* _station_type __station_type)
     (progn
       (if __station_type (setq _station_type (car __station_type)))
       _station_type)))
  (:platoon
   (&rest __platoon)
   (if (keywordp (car __platoon))
       (send* _platoon __platoon)
     (progn
       (if __platoon (setq _platoon (car __platoon)))
       _platoon)))
  (:vitesse_interdistance
   (&rest __vitesse_interdistance)
   (if (keywordp (car __vitesse_interdistance))
       (send* _vitesse_interdistance __vitesse_interdistance)
     (progn
       (if __vitesse_interdistance (setq _vitesse_interdistance (car __vitesse_interdistance)))
       _vitesse_interdistance)))
  (:insertion
   (&rest __insertion)
   (if (keywordp (car __insertion))
       (send* _insertion __insertion)
     (progn
       (if __insertion (setq _insertion (car __insertion)))
       _insertion)))
  (:desinsertion
   (&rest __desinsertion)
   (if (keywordp (car __desinsertion))
       (send* _desinsertion __desinsertion)
     (progn
       (if __desinsertion (setq _desinsertion (car __desinsertion)))
       _desinsertion)))
  (:freinage_urgence
   (&rest __freinage_urgence)
   (if (keywordp (car __freinage_urgence))
       (send* _freinage_urgence __freinage_urgence)
     (progn
       (if __freinage_urgence (setq _freinage_urgence (car __freinage_urgence)))
       _freinage_urgence)))
  (:feu
   (&rest __feu)
   (if (keywordp (car __feu))
       (send* _feu __feu)
     (progn
       (if __feu (setq _feu (car __feu)))
       _feu)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ece_msgs/ItsPduHeader _its_header
    (send _its_header :serialization-length)
    ;; uint16 _generation_delta_time
    2
    ;; ece_msgs/StationType _station_type
    (send _station_type :serialization-length)
    ;; ece_msgs/Platoon _platoon
    (send _platoon :serialization-length)
    ;; ece_msgs/VitesseInterdistance _vitesse_interdistance
    (send _vitesse_interdistance :serialization-length)
    ;; ece_msgs/Insertion _insertion
    (send _insertion :serialization-length)
    ;; ece_msgs/Desinsertion _desinsertion
    (send _desinsertion :serialization-length)
    ;; ece_msgs/FreinageUrgence _freinage_urgence
    (send _freinage_urgence :serialization-length)
    ;; ece_msgs/Feu _feu
    (send _feu :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ece_msgs/ItsPduHeader _its_header
       (send _its_header :serialize s)
     ;; uint16 _generation_delta_time
       (write-word _generation_delta_time s)
     ;; ece_msgs/StationType _station_type
       (send _station_type :serialize s)
     ;; ece_msgs/Platoon _platoon
       (send _platoon :serialize s)
     ;; ece_msgs/VitesseInterdistance _vitesse_interdistance
       (send _vitesse_interdistance :serialize s)
     ;; ece_msgs/Insertion _insertion
       (send _insertion :serialize s)
     ;; ece_msgs/Desinsertion _desinsertion
       (send _desinsertion :serialize s)
     ;; ece_msgs/FreinageUrgence _freinage_urgence
       (send _freinage_urgence :serialize s)
     ;; ece_msgs/Feu _feu
       (send _feu :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ece_msgs/ItsPduHeader _its_header
     (send _its_header :deserialize buf ptr-) (incf ptr- (send _its_header :serialization-length))
   ;; uint16 _generation_delta_time
     (setq _generation_delta_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; ece_msgs/StationType _station_type
     (send _station_type :deserialize buf ptr-) (incf ptr- (send _station_type :serialization-length))
   ;; ece_msgs/Platoon _platoon
     (send _platoon :deserialize buf ptr-) (incf ptr- (send _platoon :serialization-length))
   ;; ece_msgs/VitesseInterdistance _vitesse_interdistance
     (send _vitesse_interdistance :deserialize buf ptr-) (incf ptr- (send _vitesse_interdistance :serialization-length))
   ;; ece_msgs/Insertion _insertion
     (send _insertion :deserialize buf ptr-) (incf ptr- (send _insertion :serialization-length))
   ;; ece_msgs/Desinsertion _desinsertion
     (send _desinsertion :deserialize buf ptr-) (incf ptr- (send _desinsertion :serialization-length))
   ;; ece_msgs/FreinageUrgence _freinage_urgence
     (send _freinage_urgence :deserialize buf ptr-) (incf ptr- (send _freinage_urgence :serialization-length))
   ;; ece_msgs/Feu _feu
     (send _feu :deserialize buf ptr-) (incf ptr- (send _feu :serialization-length))
   ;;
   self)
  )

(setf (get ece_msgs::ecemsg :md5sum-) "c7b2cb36ce6de0044edf394d8a8fc5ca")
(setf (get ece_msgs::ecemsg :datatype-) "ece_msgs/ecemsg")
(setf (get ece_msgs::ecemsg :definition-)
      "Header header
ItsPduHeader its_header
uint16 generation_delta_time # milliseconds since 2004 modulo 2^16

# basic container
StationType station_type

Platoon platoon

VitesseInterdistance vitesse_interdistance

Insertion insertion 
Desinsertion desinsertion 

FreinageUrgence freinage_urgence

Feu feu

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: ece_msgs/ItsPduHeader
uint8 protocol_version
uint8 message_id
uint32 station_id

uint8 MESSAGE_ID_DENM = 1
uint8 MESSAGE_ID_CAM = 2
uint8 MESSAGE_ID_ECE = 3
================================================================================
MSG: ece_msgs/StationType
uint8 value

uint8 UNKNOWN = 0
uint8 PEDESTRIAN = 1
uint8 CYCLIST = 2
uint8 MOPED = 3
uint8 MOTORCYCLE = 4
uint8 PASSENGER_CAR = 5
uint8 BUS = 6
uint8 LIGHT_TRUCK = 7
uint8 HEAVY_TRUCK = 8
uint8 TRAILER = 9
uint8 SPECIAL_VEHICLE = 10
uint8 TRAM = 11
uint8 ROAD_SIDE_UNIT = 15
================================================================================
MSG: ece_msgs/Platoon
# ID Vt : 3 bits 
uint8 id_vt

# ID platoon : 3 bits
uint8 id_platoon

# ID autres véhicules platoon : 3 bits
IDs ids 

# Nombre de véhicules : 3 bits
uint8 nombre_vehicules

# Destination : 8 octets
ReferencePosition reference_position
================================================================================
MSG: ece_msgs/IDs
uint8 ID
uint8 position
================================================================================
MSG: ece_msgs/ReferencePosition
int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
PositionConfidenceEllipse position_confidence
Altitude altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001

================================================================================
MSG: ece_msgs/PositionConfidenceEllipse
uint16 semi_major_confidence # cm
uint16 semi_minor_confidence # cm
uint16 semi_major_orientation # 0.1 degree

uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095

================================================================================
MSG: ece_msgs/Altitude
int32 value # 0.01 meter
uint8 confidence

int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0
int32 VALUE_ONE_CENTIMETER = 1
int32 VALUE_UNAVAILABLE = 800001

uint8 CONFIDENCE_1CM = 0
uint8 CONFIDENCE_2CM = 1
uint8 CONFIDENCE_5CM = 2
uint8 CONFIDENCE_10CM = 3
uint8 CONFIDENCE_20CM = 4
uint8 CONFIDENCE_50CM = 5
uint8 CONFIDENCE_1M = 6
uint8 CONFIDENCE_2M = 7
uint8 CONFIDENCE_5M = 8
uint8 CONFIDENCE_10M = 9
uint8 CONFIDENCE_20M = 10
uint8 CONFIDENCE_50M = 11
uint8 CONFIDENCE_100M = 12
uint8 CONFIDENCE_200M = 13
uint8 CONFIDENCE_OUT_OF_RANGE = 14
uint8 CONFIDENCE_UNAVAILABLE = 15

================================================================================
MSG: ece_msgs/VitesseInterdistance
# Vitesse : 6 bits
Speed speed

# Interdistance : 2 bits
uint8 interdistance
================================================================================
MSG: ece_msgs/Speed
uint16 value # 0.01 m/s
uint8 confidence # 0.01 m/s

uint16 VALUE_STANDSTILL = 0
uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
uint16 VALUE_UNAVAILABLE = 16383

uint8 CONFIDENCE_OUT_OF_RANGE = 126
uint8 CONFIDENCE_UNAVAILABLE = 127

================================================================================
MSG: ece_msgs/Insertion
# Point d'insertion : 8 octet 
ReferencePosition reference_position

# Confirmation insertion : 1 bits
bool confirmation_insertion
================================================================================
MSG: ece_msgs/Desinsertion
# Demande de sortie : 1 bit

# Vitesse de sortie : 6 bits 
Speed speed

# Point de sortie : 8 octets
ReferencePosition reference_position

# Nouvelle position dans P : 2 bits
uint8 position
================================================================================
MSG: ece_msgs/FreinageUrgence
# Position P : 2 bits
uint8 position
================================================================================
MSG: ece_msgs/Feu
# Permission de passer le feu : 1 bit
bool permission_feu
")



(provide :ece_msgs/ecemsg "c7b2cb36ce6de0044edf394d8a8fc5ca")


