;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Desinsertion)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Desinsertion (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::DESINSERTION")
  (make-package "ECE_MSGS::DESINSERTION"))

(in-package "ROS")
;;//! \htmlinclude Desinsertion.msg.html


(defclass ece_msgs::Desinsertion
  :super ros::object
  :slots (_demande_sortie _speed _point_sortie _position _confirmation_sortie ))

(defmethod ece_msgs::Desinsertion
  (:init
   (&key
    ((:demande_sortie __demande_sortie) nil)
    ((:speed __speed) (instance ece_msgs::Speed :init))
    ((:point_sortie __point_sortie) (instance ece_msgs::ReferencePosition :init))
    ((:position __position) 0)
    ((:confirmation_sortie __confirmation_sortie) nil)
    )
   (send-super :init)
   (setq _demande_sortie __demande_sortie)
   (setq _speed __speed)
   (setq _point_sortie __point_sortie)
   (setq _position (round __position))
   (setq _confirmation_sortie __confirmation_sortie)
   self)
  (:demande_sortie
   (&optional __demande_sortie)
   (if __demande_sortie (setq _demande_sortie __demande_sortie)) _demande_sortie)
  (:speed
   (&rest __speed)
   (if (keywordp (car __speed))
       (send* _speed __speed)
     (progn
       (if __speed (setq _speed (car __speed)))
       _speed)))
  (:point_sortie
   (&rest __point_sortie)
   (if (keywordp (car __point_sortie))
       (send* _point_sortie __point_sortie)
     (progn
       (if __point_sortie (setq _point_sortie (car __point_sortie)))
       _point_sortie)))
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:confirmation_sortie
   (&optional __confirmation_sortie)
   (if __confirmation_sortie (setq _confirmation_sortie __confirmation_sortie)) _confirmation_sortie)
  (:serialization-length
   ()
   (+
    ;; bool _demande_sortie
    1
    ;; ece_msgs/Speed _speed
    (send _speed :serialization-length)
    ;; ece_msgs/ReferencePosition _point_sortie
    (send _point_sortie :serialization-length)
    ;; uint8 _position
    1
    ;; bool _confirmation_sortie
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _demande_sortie
       (if _demande_sortie (write-byte -1 s) (write-byte 0 s))
     ;; ece_msgs/Speed _speed
       (send _speed :serialize s)
     ;; ece_msgs/ReferencePosition _point_sortie
       (send _point_sortie :serialize s)
     ;; uint8 _position
       (write-byte _position s)
     ;; bool _confirmation_sortie
       (if _confirmation_sortie (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _demande_sortie
     (setq _demande_sortie (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ece_msgs/Speed _speed
     (send _speed :deserialize buf ptr-) (incf ptr- (send _speed :serialization-length))
   ;; ece_msgs/ReferencePosition _point_sortie
     (send _point_sortie :deserialize buf ptr-) (incf ptr- (send _point_sortie :serialization-length))
   ;; uint8 _position
     (setq _position (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _confirmation_sortie
     (setq _confirmation_sortie (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ece_msgs::Desinsertion :md5sum-) "289d0b836799889abdfb4fb904e756c7")
(setf (get ece_msgs::Desinsertion :datatype-) "ece_msgs/Desinsertion")
(setf (get ece_msgs::Desinsertion :definition-)
      "# Demande de sortie : 1 octet
bool demande_sortie

# Vitesse de sortie : 6 bits 
Speed speed

# Point de sortie : 8 octets
ReferencePosition point_sortie

# Nouvelle position dans P : 2 bits
uint8 position

# Confirmation insertion
bool confirmation_sortie

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
MSG: ece_msgs/ReferencePosition
int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
int32 altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001
int32 ALTITUDE_UNAVAILABLE = 800001

")



(provide :ece_msgs/Desinsertion "289d0b836799889abdfb4fb904e756c7")


