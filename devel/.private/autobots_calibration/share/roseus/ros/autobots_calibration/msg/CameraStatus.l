;; Auto-generated. Do not edit!


(when (boundp 'autobots_calibration::CameraStatus)
  (if (not (find-package "AUTOBOTS_CALIBRATION"))
    (make-package "AUTOBOTS_CALIBRATION"))
  (shadow 'CameraStatus (find-package "AUTOBOTS_CALIBRATION")))
(unless (find-package "AUTOBOTS_CALIBRATION::CAMERASTATUS")
  (make-package "AUTOBOTS_CALIBRATION::CAMERASTATUS"))

(in-package "ROS")
;;//! \htmlinclude CameraStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*WAITING*" (find-package "AUTOBOTS_CALIBRATION::CAMERASTATUS"))
(shadow '*WAITING* (find-package "AUTOBOTS_CALIBRATION::CAMERASTATUS"))
(defconstant autobots_calibration::CameraStatus::*WAITING* 0)
(intern "*CALIBRATING*" (find-package "AUTOBOTS_CALIBRATION::CAMERASTATUS"))
(shadow '*CALIBRATING* (find-package "AUTOBOTS_CALIBRATION::CAMERASTATUS"))
(defconstant autobots_calibration::CameraStatus::*CALIBRATING* 1)
(intern "*STABLE*" (find-package "AUTOBOTS_CALIBRATION::CAMERASTATUS"))
(shadow '*STABLE* (find-package "AUTOBOTS_CALIBRATION::CAMERASTATUS"))
(defconstant autobots_calibration::CameraStatus::*STABLE* 2)

(defun autobots_calibration::CameraStatus-to-symbol (const)
  (cond
        ((= const 0) 'autobots_calibration::CameraStatus::*WAITING*)
        ((= const 1) 'autobots_calibration::CameraStatus::*CALIBRATING*)
        ((= const 2) 'autobots_calibration::CameraStatus::*STABLE*)
        (t nil)))

(defclass autobots_calibration::CameraStatus
  :super ros::object
  :slots (_header _status ))

(defmethod autobots_calibration::CameraStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (round __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(setf (get autobots_calibration::CameraStatus :md5sum-) "55e58e15dd4e1ec3ae16c21d57a733c3")
(setf (get autobots_calibration::CameraStatus :datatype-) "autobots_calibration/CameraStatus")
(setf (get autobots_calibration::CameraStatus :definition-)
      "std_msgs/Header header

int8 WAITING = 0
int8 CALIBRATING = 1
int8 STABLE = 2

int8 status

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :autobots_calibration/CameraStatus "55e58e15dd4e1ec3ae16c21d57a733c3")


