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
(intern "*ALTITUDE_UNAVAILABLE*" (find-package "ECE_MSGS::REFERENCEPOSITION"))
(shadow '*ALTITUDE_UNAVAILABLE* (find-package "ECE_MSGS::REFERENCEPOSITION"))
(defconstant ece_msgs::ReferencePosition::*ALTITUDE_UNAVAILABLE* 800001)
(defclass ece_msgs::ReferencePosition
  :super ros::object
  :slots (_latitude _longitude _altitude ))

(defmethod ece_msgs::ReferencePosition
  (:init
   (&key
    ((:latitude __latitude) 0)
    ((:longitude __longitude) 0)
    ((:altitude __altitude) 0)
    )
   (send-super :init)
   (setq _latitude (round __latitude))
   (setq _longitude (round __longitude))
   (setq _altitude (round __altitude))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; int64 _latitude
    8
    ;; int64 _longitude
    8
    ;; int32 _altitude
    4
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
     ;; int32 _altitude
       (write-long _altitude s)
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
   ;; int32 _altitude
     (setq _altitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ece_msgs::ReferencePosition :md5sum-) "5708c6f048e72dcc331b2c7a9cb6ac7f")
(setf (get ece_msgs::ReferencePosition :datatype-) "ece_msgs/ReferencePosition")
(setf (get ece_msgs::ReferencePosition :definition-)
      "int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
int32 altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001
int32 ALTITUDE_UNAVAILABLE = 800001

")



(provide :ece_msgs/ReferencePosition "5708c6f048e72dcc331b2c7a9cb6ac7f")


