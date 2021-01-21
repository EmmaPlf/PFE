;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Feu)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Feu (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::FEU")
  (make-package "ECE_MSGS::FEU"))

(in-package "ROS")
;;//! \htmlinclude Feu.msg.html


(defclass ece_msgs::Feu
  :super ros::object
  :slots (_permission_feu ))

(defmethod ece_msgs::Feu
  (:init
   (&key
    ((:permission_feu __permission_feu) nil)
    )
   (send-super :init)
   (setq _permission_feu __permission_feu)
   self)
  (:permission_feu
   (&optional __permission_feu)
   (if __permission_feu (setq _permission_feu __permission_feu)) _permission_feu)
  (:serialization-length
   ()
   (+
    ;; bool _permission_feu
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _permission_feu
       (if _permission_feu (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _permission_feu
     (setq _permission_feu (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ece_msgs::Feu :md5sum-) "ffdb5a2e101258db4bee4b8b92ac56a9")
(setf (get ece_msgs::Feu :datatype-) "ece_msgs/Feu")
(setf (get ece_msgs::Feu :definition-)
      "# Permission de passer le feu : 1 octet
bool permission_feu
")



(provide :ece_msgs/Feu "ffdb5a2e101258db4bee4b8b92ac56a9")


