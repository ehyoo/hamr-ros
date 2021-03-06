# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hamr_test/TestWrap.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import hamr_test.msg

class TestWrap(genpy.Message):
  _md5sum = "93a3439ce135a9d10c7ca5e21b2e55ad"
  _type = "hamr_test/TestWrap"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string name
TestMod first_pair
TestMod second_pair
================================================================================
MSG: hamr_test/TestMod
int8 num_one
int8 num_two"""
  __slots__ = ['name','first_pair','second_pair']
  _slot_types = ['string','hamr_test/TestMod','hamr_test/TestMod']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       name,first_pair,second_pair

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TestWrap, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.name is None:
        self.name = ''
      if self.first_pair is None:
        self.first_pair = hamr_test.msg.TestMod()
      if self.second_pair is None:
        self.second_pair = hamr_test.msg.TestMod()
    else:
      self.name = ''
      self.first_pair = hamr_test.msg.TestMod()
      self.second_pair = hamr_test.msg.TestMod()

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
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_4b.pack(_x.first_pair.num_one, _x.first_pair.num_two, _x.second_pair.num_one, _x.second_pair.num_two))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.first_pair is None:
        self.first_pair = hamr_test.msg.TestMod()
      if self.second_pair is None:
        self.second_pair = hamr_test.msg.TestMod()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8')
      else:
        self.name = str[start:end]
      _x = self
      start = end
      end += 4
      (_x.first_pair.num_one, _x.first_pair.num_two, _x.second_pair.num_one, _x.second_pair.num_two,) = _struct_4b.unpack(str[start:end])
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
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_4b.pack(_x.first_pair.num_one, _x.first_pair.num_two, _x.second_pair.num_one, _x.second_pair.num_two))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.first_pair is None:
        self.first_pair = hamr_test.msg.TestMod()
      if self.second_pair is None:
        self.second_pair = hamr_test.msg.TestMod()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8')
      else:
        self.name = str[start:end]
      _x = self
      start = end
      end += 4
      (_x.first_pair.num_one, _x.first_pair.num_two, _x.second_pair.num_one, _x.second_pair.num_two,) = _struct_4b.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4b = struct.Struct("<4b")
