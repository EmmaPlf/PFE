;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Insertion)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Insertion (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::INSERTION")
  (make-package "ECE_MSGS::INSERTION"))

(in-package "ROS")
;;//! \htmlinclude Insertion.msg.html


(defclass ece_msgs::Insertion
  :super ros::object
  :slots (_reference_position _confirmation_insertion ))

(defmethod ece_msgs::Insertion
  (:init
   (&key
    ((:reference_position __reference_position) (instance ece_msgs::ReferencePosition :init))
    ((:confirmation_insertion __confirmation_insertion) nil)
    )
   (send-super :init)
   (setq _reference_position __reference_position)
   (setq _confirmation_insertion __confirmation_insertion)
   self)
  (:reference_position
   (&rest __reference_position)
   (if (keywordp (car __reference_position))
       (send* _reference_position __reference_position)
     (progn
       (if __reference_position (setq _reference_position (car __reference_position)))
       _reference_position)))
  (:confirmation_insertion
   (&optional __confirmation_insertion)
   (if __confirmation_insertion (setq _confirmation_insertion __confirmation_insertion)) _confirmation_insertion)
  (:serialization-length
   ()
   (+
    ;; ece_msgs/ReferencePosition _reference_position
    (send _reference_position :serialization-length)
    ;; bool _confirmation_insertion
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ece_msgs/ReferencePosition _reference_position
       (send _reference_position :serialize s)
     ;; bool _confirmation_insertion
       (if _confirmation_insertion (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ece_msgs/ReferencePosition _reference_position
     (send _reference_position :deserialize buf ptr-) (incf ptr- (send _reference_position :serialization-length))
   ;; bool _confirmation_insertion
     (setq _confirmation_insertion (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ece_msgs::Insertion :md5sum-) "2e657a43fd2874194e72382f85cbab1d")
(setf (get ece_msgs::Insertion :datatype-) "ece_msgs/Insertion")
(setf (get ece_msgs::Insertion :definition-)
      "# Point d'insertion : 8 octet 
ReferencePosition reference_position

# Confirmation insertion : 1 bits
bool confirmation_insertion
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

")



(provide :ece_msgs/Insertion "2e657a43fd2874194e72382f85cbab1d")


