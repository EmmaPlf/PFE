
(cl:in-package :asdf)

(defsystem "simu_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Altitude" :depends-on ("_package_Altitude"))
    (:file "_package_Altitude" :depends-on ("_package"))
    (:file "ItsPduHeader" :depends-on ("_package_ItsPduHeader"))
    (:file "_package_ItsPduHeader" :depends-on ("_package"))
    (:file "PositionConfidenceEllipse" :depends-on ("_package_PositionConfidenceEllipse"))
    (:file "_package_PositionConfidenceEllipse" :depends-on ("_package"))
    (:file "ReferencePosition" :depends-on ("_package_ReferencePosition"))
    (:file "_package_ReferencePosition" :depends-on ("_package"))
    (:file "Speed" :depends-on ("_package_Speed"))
    (:file "_package_Speed" :depends-on ("_package"))
    (:file "VehicleLength" :depends-on ("_package_VehicleLength"))
    (:file "_package_VehicleLength" :depends-on ("_package"))
    (:file "simu_CAM" :depends-on ("_package_simu_CAM"))
    (:file "_package_simu_CAM" :depends-on ("_package"))
  ))