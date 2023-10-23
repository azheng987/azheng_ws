
(cl:in-package :asdf)

(defsystem "autobots_calibration-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CameraExtrinsics" :depends-on ("_package_CameraExtrinsics"))
    (:file "_package_CameraExtrinsics" :depends-on ("_package"))
    (:file "CameraStatus" :depends-on ("_package_CameraStatus"))
    (:file "_package_CameraStatus" :depends-on ("_package"))
  ))