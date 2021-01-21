# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from etsi_msgs/ItsPduHeader.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ItsPduHeader(genpy.Message):
  _md5sum = "493dd45f242245ef547b44cf2be57f2d"
  _type = "etsi_msgs/ItsPduHeader"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 protocol_version
uint8 message_id
uint32 station_id

uint8 MESSAGE_ID_DENM = 1
uint8 MESSAGE_ID_CAM = 2
"""
  # Pseudo-constants
  MESSAGE_ID_DENM = 1
  MESSAGE_ID_CAM = 2

  __slots__ = ['protocol_version','message_id','station_id']
  _slot_types = ['uint8','uint8','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       protocol_version,message_id,station_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ItsPduHeader, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.protocol_version is None:
        self.protocol_version = 0
      if self.message_id is None:
        self.message_id = 0
      if self.station_id is None:
        self.station_id = 0
    else:
      self.protocol_version = 0
      self.message_id = 0
      self.station_id = 0

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
      buff.write(_get_struct_2BI().pack(_x.protocol_version, _x.message_id, _x.station_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.protocol_version, _x.message_id, _x.station_id,) = _get_struct_2BI().unpack(str[start:end])
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
      buff.write(_get_struct_2BI().pack(_x.protocol_version, _x.message_id, _x.station_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.protocol_version, _x.message_id, _x.station_id,) = _get_struct_2BI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2BI = None
def _get_struct_2BI():
    global _struct_2BI
    if _struct_2BI is None:
        _struct_2BI = struct.Struct("<2BI")
    return _struct_2BI
