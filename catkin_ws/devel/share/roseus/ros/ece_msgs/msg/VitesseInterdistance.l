;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::VitesseInterdistance)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'VitesseInterdistance (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::VITESSEINTERDISTANCE")
  (make-package "ECE_MSGS::VITESSEINTERDISTANCE"))

(in-package "ROS")
;;//! \htmlinclude VitesseInterdistance.msg.html


(defclass ece_msgs::VitesseInterdistance
  :super ros::object
  :slots (_speed _interdistance ))

(defmethod ece_msgs::VitesseInterdistance
  (:init
   (&key
    ((:speed __speed) (instance ece_msgs::Speed :init))
    ((:interdistance __interdistance) 0)
    )
   (send-super :init)
   (setq _speed __speed)
   (setq _interdistance (round __interdistance))
   self)
  (:speed
   (&rest __speed)
   (if (keywordp (car __speed))
       (send* _speed __speed)
     (progn
       (if __speed (setq _speed (car __speed)))
       _speed)))
  (:interdistance
   (&optional __interdistance)
   (if __interdistance (setq _interdistance __interdistance)) _interdistance)
  (:serialization-length
   ()
   (+
    ;; ece_msgs/Speed _speed
    (send _speed :serialization-length)
    ;; uint8 _interdistance
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ece_msgs/Speed _speed
       (send _speed :serialize s)
     ;; uint8 _interdistance
       (write-byte _interdistance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ece_msgs/Speed _speed
     (send _speed :deserialize buf ptr-) (incf ptr- (send _speed :serialization-length))
   ;; uint8 _interdistance
     (setq _interdistance (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ece_msgs::VitesseInterdistance :md5sum-) "d850ec0c0095939e4604e424c6859708")
(setf (get ece_msgs::VitesseInterdistance :datatype-) "ece_msgs/VitesseInterdistance")
(setf (get ece_msgs::VitesseInterdistance :definition-)
      "# Vitesse : 6 bits
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



(provide :ece_msgs/VitesseInterdistance "d850ec0c0095939e4604e424c6859708")


