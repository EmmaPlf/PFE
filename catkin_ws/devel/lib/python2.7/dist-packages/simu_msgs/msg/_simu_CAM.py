# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from simu_msgs/simu_CAM.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import simu_msgs.msg
import std_msgs.msg

class simu_CAM(genpy.Message):
  _md5sum = "5589f115a74e70bb753446994398051e"
  _type = "simu_msgs/simu_CAM"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header 
ItsPduHeader its_header
Speed speed
ReferencePosition reference_position
VehicleLength vehicle_length
uint8 rank
uint32 interdistance
uint8 dest
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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: simu_msgs/ItsPduHeader
uint8 protocol_version
uint8 message_id
uint32 station_id

uint8 MESSAGE_ID_DENM = 1
uint8 MESSAGE_ID_CAM = 2

================================================================================
MSG: simu_msgs/Speed
uint16 value # 0.01 m/s
uint8 confidence # 0.01 m/s

uint16 VALUE_STANDSTILL = 0
uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
uint16 VALUE_UNAVAILABLE = 16383

uint8 CONFIDENCE_OUT_OF_RANGE = 126
uint8 CONFIDENCE_UNAVAILABLE = 127

================================================================================
MSG: simu_msgs/ReferencePosition
int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
PositionConfidenceEllipse position_confidence
Altitude altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001

================================================================================
MSG: simu_msgs/PositionConfidenceEllipse
uint16 semi_major_confidence # cm
uint16 semi_minor_confidence # cm
uint16 semi_major_orientation # 0.1 degree

uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095

================================================================================
MSG: simu_msgs/Altitude
int32 value # 0.01 meter
uint8 confidence

int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0
int32 VALUE_ONE_CENTIMETER = 1
int32 VALUE_UNAVAILABLE = 800001

uint8 CONFIDENCE_1CM = 0
uint8 CONFIDENCE_2CM = 1
uint8 CONFIDENCE_5CM = 2
uint8 CONFIDENCE_10CM = 3
uint8 CONFIDENCE_20CM = 4
uint8 CONFIDENCE_50CM = 5
uint8 CONFIDENCE_1M = 6
uint8 CONFIDENCE_2M = 7
uint8 CONFIDENCE_5M = 8
uint8 CONFIDENCE_10M = 9
uint8 CONFIDENCE_20M = 10
uint8 CONFIDENCE_50M = 11
uint8 CONFIDENCE_100M = 12
uint8 CONFIDENCE_200M = 13
uint8 CONFIDENCE_OUT_OF_RANGE = 14
uint8 CONFIDENCE_UNAVAILABLE = 15

================================================================================
MSG: simu_msgs/VehicleLength
uint16 value # 0.1 meter
uint8 confidence_indication

uint16 VALUE_TEN_CENTIMETERS = 1
uint16 VALUE_OUT_OF_RANGE = 1022
uint16 VALUE_UNAVAILABLE = 1023

uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0
uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1
uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2
uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3
uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4
"""
  __slots__ = ['header','its_header','speed','reference_position','vehicle_length','rank','interdistance','dest']
  _slot_types = ['std_msgs/Header','simu_msgs/ItsPduHeader','simu_msgs/Speed','simu_msgs/ReferencePosition','simu_msgs/VehicleLength','uint8','uint32','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,its_header,speed,reference_position,vehicle_length,rank,interdistance,dest

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(simu_CAM, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.its_header is None:
        self.its_header = simu_msgs.msg.ItsPduHeader()
      if self.speed is None:
        self.speed = simu_msgs.msg.Speed()
      if self.reference_position is None:
        self.reference_position = simu_msgs.msg.ReferencePosition()
      if self.vehicle_length is None:
        self.vehicle_length = simu_msgs.msg.VehicleLength()
      if self.rank is None:
        self.rank = 0
      if self.interdistance is None:
        self.interdistance = 0
      if self.dest is None:
        self.dest = 0
    else:
      self.header = std_msgs.msg.Header()
      self.its_header = simu_msgs.msg.ItsPduHeader()
      self.speed = simu_msgs.msg.Speed()
      self.reference_position = simu_msgs.msg.ReferencePosition()
      self.vehicle_length = simu_msgs.msg.VehicleLength()
      self.rank = 0
      self.interdistance = 0
      self.dest = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2BIHB2q3HiBH2BIB().pack(_x.its_header.protocol_version, _x.its_header.message_id, _x.its_header.station_id, _x.speed.value, _x.speed.confidence, _x.reference_position.latitude, _x.reference_position.longitude, _x.reference_position.position_confidence.semi_major_confidence, _x.reference_position.position_confidence.semi_minor_confidence, _x.reference_position.position_confidence.semi_major_orientation, _x.reference_position.altitude.value, _x.reference_position.altitude.confidence, _x.vehicle_length.value, _x.vehicle_length.confidence_indication, _x.rank, _x.interdistance, _x.dest))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.its_header is None:
        self.its_header = simu_msgs.msg.ItsPduHeader()
      if self.speed is None:
        self.speed = simu_msgs.msg.Speed()
      if self.reference_position is None:
        self.reference_position = simu_msgs.msg.ReferencePosition()
      if self.vehicle_length is None:
        self.vehicle_length = simu_msgs.msg.VehicleLength()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 45
      (_x.its_header.protocol_version, _x.its_header.message_id, _x.its_header.station_id, _x.speed.value, _x.speed.confidence, _x.reference_position.latitude, _x.reference_position.longitude, _x.reference_position.position_confidence.semi_major_confidence, _x.reference_position.position_confidence.semi_minor_confidence, _x.reference_position.position_confidence.semi_major_orientation, _x.reference_position.altitude.value, _x.reference_position.altitude.confidence, _x.vehicle_length.value, _x.vehicle_length.confidence_indication, _x.rank, _x.interdistance, _x.dest,) = _get_struct_2BIHB2q3HiBH2BIB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2BIHB2q3HiBH2BIB().pack(_x.its_header.protocol_version, _x.its_header.message_id, _x.its_header.station_id, _x.speed.value, _x.speed.confidence, _x.reference_position.latitude, _x.reference_position.longitude, _x.reference_position.position_confidence.semi_major_confidence, _x.reference_position.position_confidence.semi_minor_confidence, _x.reference_position.position_confidence.semi_major_orientation, _x.reference_position.altitude.value, _x.reference_position.altitude.confidence, _x.vehicle_length.value, _x.vehicle_length.confidence_indication, _x.rank, _x.interdistance, _x.dest))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.its_header is None:
        self.its_header = simu_msgs.msg.ItsPduHeader()
      if self.speed is None:
        self.speed = simu_msgs.msg.Speed()
      if self.reference_position is None:
        self.reference_position = simu_msgs.msg.ReferencePosition()
      if self.vehicle_length is None:
        self.vehicle_length = simu_msgs.msg.VehicleLength()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 45
      (_x.its_header.protocol_version, _x.its_header.message_id, _x.its_header.station_id, _x.speed.value, _x.speed.confidence, _x.reference_position.latitude, _x.reference_position.longitude, _x.reference_position.position_confidence.semi_major_confidence, _x.reference_position.position_confidence.semi_minor_confidence, _x.reference_position.position_confidence.semi_major_orientation, _x.reference_position.altitude.value, _x.reference_position.altitude.confidence, _x.vehicle_length.value, _x.vehicle_length.confidence_indication, _x.rank, _x.interdistance, _x.dest,) = _get_struct_2BIHB2q3HiBH2BIB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_2BIHB2q3HiBH2BIB = None
def _get_struct_2BIHB2q3HiBH2BIB():
    global _struct_2BIHB2q3HiBH2BIB
    if _struct_2BIHB2q3HiBH2BIB is None:
        _struct_2BIHB2q3HiBH2BIB = struct.Struct("<2BIHB2q3HiBH2BIB")
    return _struct_2BIHB2q3HiBH2BIB
