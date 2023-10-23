; Auto-generated. Do not edit!


(cl:in-package autobots_calibration-msg)


;//! \htmlinclude CameraStatus.msg.html

(cl:defclass <CameraStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraStatus (<CameraStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autobots_calibration-msg:<CameraStatus> is deprecated: use autobots_calibration-msg:CameraStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CameraStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autobots_calibration-msg:header-val is deprecated.  Use autobots_calibration-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CameraStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autobots_calibration-msg:status-val is deprecated.  Use autobots_calibration-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CameraStatus>)))
    "Constants for message type '<CameraStatus>"
  '((:WAITING . 0)
    (:CALIBRATING . 1)
    (:STABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CameraStatus)))
    "Constants for message type 'CameraStatus"
  '((:WAITING . 0)
    (:CALIBRATING . 1)
    (:STABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStatus>) ostream)
  "Serializes a message object of type '<CameraStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStatus>) istream)
  "Deserializes a message object of type '<CameraStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStatus>)))
  "Returns string type for a message object of type '<CameraStatus>"
  "autobots_calibration/CameraStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStatus)))
  "Returns string type for a message object of type 'CameraStatus"
  "autobots_calibration/CameraStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStatus>)))
  "Returns md5sum for a message object of type '<CameraStatus>"
  "55e58e15dd4e1ec3ae16c21d57a733c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStatus)))
  "Returns md5sum for a message object of type 'CameraStatus"
  "55e58e15dd4e1ec3ae16c21d57a733c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStatus>)))
  "Returns full string definition for message of type '<CameraStatus>"
  (cl:format cl:nil "std_msgs/Header header~%~%int8 WAITING = 0~%int8 CALIBRATING = 1~%int8 STABLE = 2~%~%int8 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStatus)))
  "Returns full string definition for message of type 'CameraStatus"
  (cl:format cl:nil "std_msgs/Header header~%~%int8 WAITING = 0~%int8 CALIBRATING = 1~%int8 STABLE = 2~%~%int8 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStatus
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
))
