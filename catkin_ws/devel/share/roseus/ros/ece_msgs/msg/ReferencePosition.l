;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::ReferencePosition)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'ReferencePosition (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::REFERENCEPOSITION")
  (make-package "ECE_MSGS::REFERENCEPOSITION"))

(in-package "ROS")
;;//! \htmlinclude ReferencePosition.msg.html


(intern "*LATITUDE_UNAVAILABLE*" (find-package "ECE_MSGS::REFERENCEPOSITION"))
(shadow '*LATITUDE_UNAVAILABLE* (find-package "ECE_MSGS::REFERENCEPOSITION"))
(defconstant ece_msgs::ReferencePosition::*LATITUDE_UNAVAILABLE* 900000001)
(intern "*LONGITUDE_UNAVAILABLE*" (find-package "ECE_MSGS::REFERENCEPOSITION"))
(shadow '*LONGITUDE_UNAVAILABLE* (find-package "ECE_MSGS::REFERENCEPOSITION"))
(defconstant ece_msgs::ReferencePosition::*LONGITUDE_UNAVAILABLE* 1800000001)
(defclass ece_msgs::ReferencePosition
  :super ros::object
  :slots (_latitude _longitude _position_confidence _altitude ))

(defmethod ece_msgs::ReferencePosition
  (:init
   (&key
    ((:latitude __latitude) 0)
    ((:longitude __longitude) 0)
    ((:position_confidence __position_confidence) (instance ece_msgs::PositionConfidenceEllipse :init))
    ((:altitude __altitude) (instance ece_msgs::Altitude :init))
    )
   (send-super :init)
   (setq _latitude (round __latitude))
   (setq _longitude (round __longitude))
   (setq _position_confidence __position_confidence)
   (setq _altitude __altitude)
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:position_confidence
   (&rest __position_confidence)
   (if (keywordp (car __position_confidence))
       (send* _position_confidence __position_confidence)
     (progn
       (if __position_confidence (setq _position_confidence (car __position_confidence)))
       _position_confidence)))
  (:altitude
   (&rest __altitude)
   (if (keywordp (car __altitude))
       (send* _altitude __altitude)
     (progn
       (if __altitude (setq _altitude (car __altitude)))
       _altitude)))
  (:serialization-length
   ()
   (+
    ;; int64 _latitude
    8
    ;; int64 _longitude
    8
    ;; ece_msgs/PositionConfidenceEllipse _position_confidence
    (send _position_confidence :serialization-length)
    ;; ece_msgs/Altitude _altitude
    (send _altitude :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _latitude
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _latitude (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _latitude) (= (length (_latitude . bv)) 2)) ;; bignum
              (write-long (ash (elt (_latitude . bv) 0) 0) s)
              (write-long (ash (elt (_latitude . bv) 1) -1) s))
             ((and (class _latitude) (= (length (_latitude . bv)) 1)) ;; big1
              (write-long (elt (_latitude . bv) 0) s)
              (write-long (if (>= _latitude 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _latitude s)(write-long (if (>= _latitude 0) 0 #xffffffff) s)))
     ;; int64 _longitude
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _longitude (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _longitude) (= (length (_longitude . bv)) 2)) ;; bignum
              (write-long (ash (elt (_longitude . bv) 0) 0) s)
              (write-long (ash (elt (_longitude . bv) 1) -1) s))
             ((and (class _longitude) (= (length (_longitude . bv)) 1)) ;; big1
              (write-long (elt (_longitude . bv) 0) s)
              (write-long (if (>= _longitude 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _longitude s)(write-long (if (>= _longitude 0) 0 #xffffffff) s)))
     ;; ece_msgs/PositionConfidenceEllipse _position_confidence
       (send _position_confidence :serialize s)
     ;; ece_msgs/Altitude _altitude
       (send _altitude :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _latitude
#+(or :alpha :irix6 :x86_64)
      (setf _latitude (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _latitude (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _longitude
#+(or :alpha :irix6 :x86_64)
      (setf _longitude (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _longitude (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; ece_msgs/PositionConfidenceEllipse _position_confidence
     (send _position_confidence :deserialize buf ptr-) (incf ptr- (send _position_confidence :serialization-length))
   ;; ece_msgs/Altitude _altitude
     (send _altitude :deserialize buf ptr-) (incf ptr- (send _altitude :serialization-length))
   ;;
   self)
  )

(setf (get ece_msgs::ReferencePosition :md5sum-) "a3cec6171339bd488bc9f812c2670f12")
(setf (get ece_msgs::ReferencePosition :datatype-) "ece_msgs/ReferencePosition")
(setf (get ece_msgs::ReferencePosition :definition-)
      "int64 latitude # 0.1 micro degree
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



(provide :ece_msgs/ReferencePosition "a3cec6171339bd488bc9f812c2670f12")


