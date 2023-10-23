;; Auto-generated. Do not edit!


(when (boundp 'autobots_calibration::CameraExtrinsics)
  (if (not (find-package "AUTOBOTS_CALIBRATION"))
    (make-package "AUTOBOTS_CALIBRATION"))
  (shadow 'CameraExtrinsics (find-package "AUTOBOTS_CALIBRATION")))
(unless (find-package "AUTOBOTS_CALIBRATION::CAMERAEXTRINSICS")
  (make-package "AUTOBOTS_CALIBRATION::CAMERAEXTRINSICS"))

(in-package "ROS")
;;//! \htmlinclude CameraExtrinsics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autobots_calibration::CameraExtrinsics
  :super ros::object
  :slots (_header _M_CL ))

(defmethod autobots_calibration::CameraExtrinsics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:M_CL __M_CL) (make-array 16 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _M_CL __M_CL)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:M_CL
   (&optional __M_CL)
   (if __M_CL (setq _M_CL __M_CL)) _M_CL)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[16] _M_CL
    (* 8    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[16] _M_CL
     (dotimes (i 16)
       (sys::poke (elt _M_CL i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[16] _M_CL
   (dotimes (i (length _M_CL))
     (setf (elt _M_CL i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get autobots_calibration::CameraExtrinsics :md5sum-) "41b9370e4bc1b05648a3ac16f68f4613")
(setf (get autobots_calibration::CameraExtrinsics :datatype-) "autobots_calibration/CameraExtrinsics")
(setf (get autobots_calibration::CameraExtrinsics :definition-)
      "std_msgs/Header header

# flattened 4x4 matrix representing the camera extrinsics
float64[16] M_CL

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



(provide :autobots_calibration/CameraExtrinsics "41b9370e4bc1b05648a3ac16f68f4613")


