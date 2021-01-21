;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Init)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Init (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::INIT")
  (make-package "ECE_MSGS::INIT"))

(in-package "ROS")
;;//! \htmlinclude Init.msg.html


(defclass ece_msgs::Init
  :super ros::object
  :slots (_destination _actual_position _platoon ))

(defmethod ece_msgs::Init
  (:init
   (&key
    ((:destination __destination) (instance ece_msgs::ReferencePosition :init))
    ((:actual_position __actual_position) (instance ece_msgs::ReferencePosition :init))
    ((:platoon __platoon) (instance ece_msgs::Platoon :init))
    )
   (send-super :init)
   (setq _destination __destination)
   (setq _actual_position __actual_position)
   (setq _platoon __platoon)
   self)
  (:destination
   (&rest __destination)
   (if (keywordp (car __destination))
       (send* _destination __destination)
     (progn
       (if __destination (setq _destination (car __destination)))
       _destination)))
  (:actual_position
   (&rest __actual_position)
   (if (keywordp (car __actual_position))
       (send* _actual_position __actual_position)
     (progn
       (if __actual_position (setq _actual_position (car __actual_position)))
       _actual_position)))
  (:platoon
   (&rest __platoon)
   (if (keywordp (car __platoon))
       (send* _platoon __platoon)
     (progn
       (if __platoon (setq _platoon (car __platoon)))
       _platoon)))
  (:serialization-length
   ()
   (+
    ;; ece_msgs/ReferencePosition _destination
    (send _destination :serialization-length)
    ;; ece_msgs/ReferencePosition _actual_position
    (send _actual_position :serialization-length)
    ;; ece_msgs/Platoon _platoon
    (send _platoon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ece_msgs/ReferencePosition _destination
       (send _destination :serialize s)
     ;; ece_msgs/ReferencePosition _actual_position
       (send _actual_position :serialize s)
     ;; ece_msgs/Platoon _platoon
       (send _platoon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ece_msgs/ReferencePosition _destination
     (send _destination :deserialize buf ptr-) (incf ptr- (send _destination :serialization-length))
   ;; ece_msgs/ReferencePosition _actual_position
     (send _actual_position :deserialize buf ptr-) (incf ptr- (send _actual_position :serialization-length))
   ;; ece_msgs/Platoon _platoon
     (send _platoon :deserialize buf ptr-) (incf ptr- (send _platoon :serialization-length))
   ;;
   self)
  )

(setf (get ece_msgs::Init :md5sum-) "f34eabbe979642b92d826c50c7719f17")
(setf (get ece_msgs::Init :datatype-) "ece_msgs/Init")
(setf (get ece_msgs::Init :definition-)
      "# Destination : 8 octets
ReferencePosition destination

# Actual position : 8 octets
ReferencePosition actual_position

# Platoon
Platoon platoon

================================================================================
MSG: ece_msgs/ReferencePosition
int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
int32 altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001
int32 ALTITUDE_UNAVAILABLE = 800001

================================================================================
MSG: ece_msgs/Platoon
# ID platoon : 3 bits
uint8 id_platoon

# ID autres véhicules platoon
IDs[] ids 

# Nombre de véhicules : 3 bits
uint8 nombre_vehicules

# Destination : 8 octets
ReferencePosition destination

# Vitesse et interdistance
VitesseInterdistance vitesse_interdistance
================================================================================
MSG: ece_msgs/IDs
uint8 ID
uint8 position
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

")



(provide :ece_msgs/Init "f34eabbe979642b92d826c50c7719f17")


