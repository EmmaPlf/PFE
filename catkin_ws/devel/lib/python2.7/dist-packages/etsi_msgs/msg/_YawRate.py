# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from etsi_msgs/YawRate.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class YawRate(genpy.Message):
  _md5sum = "dca9682f2a1621772f3f01aff9d9e072"
  _type = "etsi_msgs/YawRate"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 value # 0.01 degree/s
uint8 confidence

int16 VALUE_UNAVAILABLE = 32767

uint8 CONFIDENCE_0DOT01_DEGSEC = 0
uint8 CONFIDENCE_0DOT05_DEGSEC = 1
uint8 CONFIDENCE_0DOT1_DEGSEC = 2
uint8 CONFIDENCE_1_DEGSEC = 3
uint8 CONFIDENCE_5_DEGSEC = 4
uint8 CONFIDENCE_10_DEGSEC = 5
uint8 CONFIDENCE_100_DEGSEC = 6
uint8 CONFIDENCE_OUT_OF_RANGE = 7
uint8 CONFIDENCE_UNAVAILABLE = 8
"""
  # Pseudo-constants
  VALUE_UNAVAILABLE = 32767
  CONFIDENCE_0DOT01_DEGSEC = 0
  CONFIDENCE_0DOT05_DEGSEC = 1
  CONFIDENCE_0DOT1_DEGSEC = 2
  CONFIDENCE_1_DEGSEC = 3
  CONFIDENCE_5_DEGSEC = 4
  CONFIDENCE_10_DEGSEC = 5
  CONFIDENCE_100_DEGSEC = 6
  CONFIDENCE_OUT_OF_RANGE = 7
  CONFIDENCE_UNAVAILABLE = 8

  __slots__ = ['value','confidence']
  _slot_types = ['int16','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       value,confidence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(YawRate, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.value is None:
        self.value = 0
      if self.confidence is None:
        self.confidence = 0
    else:
      self.value = 0
      self.confidence = 0

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
      buff.write(_get_struct_hB().pack(_x.value, _x.confidence))
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
      end += 3
      (_x.value, _x.confidence,) = _get_struct_hB().unpack(str[start:end])
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
      buff.write(_get_struct_hB().pack(_x.value, _x.confidence))
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
      end += 3
      (_x.value, _x.confidence,) = _get_struct_hB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_hB = None
def _get_struct_hB():
    global _struct_hB
    if _struct_hB is None:
        _struct_hB = struct.Struct("<hB")
    return _struct_hB
