# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from etsi_msgs/VehicleLength.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class VehicleLength(genpy.Message):
  _md5sum = "bf077d96b456d30e08df07f0d831fe92"
  _type = "etsi_msgs/VehicleLength"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint16 value # 0.1 meter
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
  # Pseudo-constants
  VALUE_TEN_CENTIMETERS = 1
  VALUE_OUT_OF_RANGE = 1022
  VALUE_UNAVAILABLE = 1023
  CONFIDENCE_INDICATION_NO_TRAILER = 0
  CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1
  CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2
  CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3
  CONFIDENCE_INDICATION_UNAVAILABLE = 4

  __slots__ = ['value','confidence_indication']
  _slot_types = ['uint16','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       value,confidence_indication

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VehicleLength, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.value is None:
        self.value = 0
      if self.confidence_indication is None:
        self.confidence_indication = 0
    else:
      self.value = 0
      self.confidence_indication = 0

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
      buff.write(_get_struct_HB().pack(_x.value, _x.confidence_indication))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 3
      (_x.value, _x.confidence_indication,) = _get_struct_HB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_HB().pack(_x.value, _x.confidence_indication))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 3
      (_x.value, _x.confidence_indication,) = _get_struct_HB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_HB = None
def _get_struct_HB():
    global _struct_HB
    if _struct_HB is None:
        _struct_HB = struct.Struct("<HB")
    return _struct_HB
