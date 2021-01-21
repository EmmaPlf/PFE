;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Platoon)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Platoon (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::PLATOON")
  (make-package "ECE_MSGS::PLATOON"))

(in-package "ROS")
;;//! \htmlinclude Platoon.msg.html


(defclass ece_msgs::Platoon
  :super ros::object
  :slots (_id_platoon _ids _nombre_vehicules _destination _vitesse_interdistance ))

(defmethod ece_msgs::Platoon
  (:init
   (&key
    ((:id_platoon __id_platoon) 0)
    ((:ids __ids) (let (r) (dotimes (i 0) (push (instance ece_msgs::IDs :init) r)) r))
    ((:nombre_vehicules __nombre_vehicules) 0)
    ((:destination __destination) (instance ece_msgs::ReferencePosition :init))
    ((:vitesse_interdistance __vitesse_interdistance) (instance ece_msgs::VitesseInterdistance :init))
    )
   (send-super :init)
   (setq _id_platoon (round __id_platoon))
   (setq _ids __ids)
   (setq _nombre_vehicules (round __nombre_vehicules))
   (setq _destination __destination)
   (setq _vitesse_interdistance __vitesse_interdistance)
   self)
  (:id_platoon
   (&optional __id_platoon)
   (if __id_platoon (setq _id_platoon __id_platoon)) _id_platoon)
  (:ids
   (&rest __ids)
   (if (keywordp (car __ids))
       (send* _ids __ids)
     (progn
       (if __ids (setq _ids (car __ids)))
       _ids)))
  (:nombre_vehicules
   (&optional __nombre_vehicules)
   (if __nombre_vehicules (setq _nombre_vehicules __nombre_vehicules)) _nombre_vehicules)
  (:destination
   (&rest __destination)
   (if (keywordp (car __destination))
       (send* _destination __destination)
     (progn
       (if __destination (setq _destination (car __destination)))
       _destination)))
  (:vitesse_interdistance
   (&rest __vitesse_interdistance)
   (if (keywordp (car __vitesse_interdistance))
       (send* _vitesse_interdistance __vitesse_interdistance)
     (progn
       (if __vitesse_interdistance (setq _vitesse_interdistance (car __vitesse_interdistance)))
       _vitesse_interdistance)))
  (:serialization-length
   ()
   (+
    ;; uint8 _id_platoon
    1
    ;; ece_msgs/IDs[] _ids
    (apply #'+ (send-all _ids :serialization-length)) 4
    ;; uint8 _nombre_vehicules
    1
    ;; ece_msgs/ReferencePosition _destination
    (send _destination :serialization-length)
    ;; ece_msgs/VitesseInterdistance _vitesse_interdistance
    (send _vitesse_interdistance :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id_platoon
       (write-byte _id_platoon s)
     ;; ece_msgs/IDs[] _ids
     (write-long (length _ids) s)
     (dolist (elem _ids)
       (send elem :serialize s)
       )
     ;; uint8 _nombre_vehicules
       (write-byte _nombre_vehicules s)
     ;; ece_msgs/ReferencePosition _destination
       (send _destination :serialize s)
     ;; ece_msgs/VitesseInterdistance _vitesse_interdistance
       (send _vitesse_interdistance :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id_platoon
     (setq _id_platoon (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ece_msgs/IDs[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (let (r) (dotimes (i n) (push (instance ece_msgs::IDs :init) r)) r))
     (dolist (elem- _ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _nombre_vehicules
     (setq _nombre_vehicules (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ece_msgs/ReferencePosition _destination
     (send _destination :deserialize buf ptr-) (incf ptr- (send _destination :serialization-length))
   ;; ece_msgs/VitesseInterdistance _vitesse_interdistance
     (send _vitesse_interdistance :deserialize buf ptr-) (incf ptr- (send _vitesse_interdistance :serialization-length))
   ;;
   self)
  )

(setf (get ece_msgs::Platoon :md5sum-) "fff69630e9a6bd2b20508f0fab73dfb5")
(setf (get ece_msgs::Platoon :datatype-) "ece_msgs/Platoon")
(setf (get ece_msgs::Platoon :definition-)
      "# ID platoon : 3 bits
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
MSG: ece_msgs/ReferencePosition
int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
int32 altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001
int32 ALTITUDE_UNAVAILABLE = 800001

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



(provide :ece_msgs/Platoon "fff69630e9a6bd2b20508f0fab73dfb5")


