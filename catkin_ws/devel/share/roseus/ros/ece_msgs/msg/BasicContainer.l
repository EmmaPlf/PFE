;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::BasicContainer)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'BasicContainer (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::BASICCONTAINER")
  (make-package "ECE_MSGS::BASICCONTAINER"))

(in-package "ROS")
;;//! \htmlinclude BasicContainer.msg.html


(defclass ece_msgs::BasicContainer
  :super ros::object
  :slots (_ID_exp _ID_dest _phase ))

(defmethod ece_msgs::BasicContainer
  (:init
   (&key
    ((:ID_exp __ID_exp) 0)
    ((:ID_dest __ID_dest) 0)
    ((:phase __phase) (instance ece_msgs::Phase :init))
    )
   (send-super :init)
   (setq _ID_exp (round __ID_exp))
   (setq _ID_dest (round __ID_dest))
   (setq _phase __phase)
   self)
  (:ID_exp
   (&optional __ID_exp)
   (if __ID_exp (setq _ID_exp __ID_exp)) _ID_exp)
  (:ID_dest
   (&optional __ID_dest)
   (if __ID_dest (setq _ID_dest __ID_dest)) _ID_dest)
  (:phase
   (&rest __phase)
   (if (keywordp (car __phase))
       (send* _phase __phase)
     (progn
       (if __phase (setq _phase (car __phase)))
       _phase)))
  (:serialization-length
   ()
   (+
    ;; uint8 _ID_exp
    1
    ;; uint8 _ID_dest
    1
    ;; ece_msgs/Phase _phase
    (send _phase :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ID_exp
       (write-byte _ID_exp s)
     ;; uint8 _ID_dest
       (write-byte _ID_dest s)
     ;; ece_msgs/Phase _phase
       (send _phase :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ID_exp
     (setq _ID_exp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ID_dest
     (setq _ID_dest (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ece_msgs/Phase _phase
     (send _phase :deserialize buf ptr-) (incf ptr- (send _phase :serialization-length))
   ;;
   self)
  )

(setf (get ece_msgs::BasicContainer :md5sum-) "3f4b2605638c093c7a78f93ee5ddc5aa")
(setf (get ece_msgs::BasicContainer :datatype-) "ece_msgs/BasicContainer")
(setf (get ece_msgs::BasicContainer :definition-)
      "# ID expediteur
uint8 ID_exp

# ID destinataire
uint8 ID_dest

# Phase de plattoning
Phase phase

================================================================================
MSG: ece_msgs/Phase
# Phase de plattoning
uint8 value

uint8 INIT = 0
uint8 INSERTION = 1
uint8 DESINSERTION = 2
uint8 FEU = 3
uint8 FREINAGE_URG = 4
")



(provide :ece_msgs/BasicContainer "3f4b2605638c093c7a78f93ee5ddc5aa")


