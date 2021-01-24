# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from etsi_msgs/DeltaReferencePosition.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class DeltaReferencePosition(genpy.Message):
  _md5sum = "5b49a8a9b72b511ff5a77cf9b108e1e3"
  _type = "etsi_msgs/DeltaReferencePosition"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 delta_latitude # 0.1 micro degree
int32 delta_longitude # 0.1 micro degree
int16 delta_altitude # centimeter

int32 ONE_MICRODEGREE_NORTH = 10
int32 ONE_MICRODEGREE_SOUTH = -10
int32 ONE_MICRODEGREE_EAST = 10
int32 ONE_MICRODEGREE_WEST = -10
int32 ONE_CENTIMETER_UP = 1
int32 ONE_CENTIMETER_DOWN = -1
int32 LATITUDE_UNAVAILABLE = 131072
int32 LONGITUDE_UNAVAILABLE = 131072
int16 ALTITUDE_UNAVAILABLE = 12800
"""
  # Pseudo-constants
  ONE_MICRODEGREE_NORTH = 10
  ONE_MICRODEGREE_SOUTH = -10
  ONE_MICRODEGREE_EAST = 10
  ONE_MICRODEGREE_WEST = -10
  ONE_CENTIMETER_UP = 1
  ONE_CENTIMETER_DOWN = -1
  LATITUDE_UNAVAILABLE = 131072
  LONGITUDE_UNAVAILABLE = 131072
  ALTITUDE_UNAVAILABLE = 12800

  __slots__ = ['delta_latitude','delta_longitude','delta_altitude']
  _slot_types = ['int32','int32','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       delta_latitude,delta_longitude,delta_altitude

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DeltaReferencePosition, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.delta_latitude is None:
        self.delta_latitude = 0
      if self.delta_longitude is None:
        self.delta_longitude = 0
      if self.delta_altitude is None:
        self.delta_altitude = 0
    else:
      self.delta_latitude = 0
      self.delta_longitude = 0
      self.delta_altitude = 0

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
      buff.write(_get_struct_2ih().pack(_x.delta_latitude, _x.delta_longitude, _x.delta_altitude))
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
      end += 10
      (_x.delta_latitude, _x.delta_longitude, _x.delta_altitude,) = _get_struct_2ih().unpack(str[start:end])
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
      buff.write(_get_struct_2ih().pack(_x.delta_latitude, _x.delta_longitude, _x.delta_altitude))
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
      end += 10
      (_x.delta_latitude, _x.delta_longitude, _x.delta_altitude,) = _get_struct_2ih().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2ih = None
def _get_struct_2ih():
    global _struct_2ih
    if _struct_2ih is None:
        _struct_2ih = struct.Struct("<2ih")
    return _struct_2ih
