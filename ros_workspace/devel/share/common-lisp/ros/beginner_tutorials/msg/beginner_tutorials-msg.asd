
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ecemsg" :depends-on ("_package_ecemsg"))
    (:file "_package_ecemsg" :depends-on ("_package"))
  ))