# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hamr_test/VelocityStatus.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class VelocityStatus(genpy.Message):
  _md5sum = "7b5b1bb227b7302d7a37dfb6950287a7"
  _type = "hamr_test/VelocityStatus"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 sensed_t_motor_enc_value
int16 sensed_t_motor_velocity
int16 sensed_turret_position
int16 sensed_turret_velocity		
int16 desired_turret_velocity
int16 pid_error"""
  __slots__ = ['sensed_t_motor_enc_value','sensed_t_motor_velocity','sensed_turret_position','sensed_turret_velocity','desired_turret_velocity','pid_error']
  _slot_types = ['int16','int16','int16','int16','int16','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       sensed_t_motor_enc_value,sensed_t_motor_velocity,sensed_turret_position,sensed_turret_velocity,desired_turret_velocity,pid_error

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VelocityStatus, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.sensed_t_motor_enc_value is None:
        self.sensed_t_motor_enc_value = 0
      if self.sensed_t_motor_velocity is None:
        self.sensed_t_motor_velocity = 0
      if self.sensed_turret_position is None:
        self.sensed_turret_position = 0
      if self.sensed_turret_velocity is None:
        self.sensed_turret_velocity = 0
      if self.desired_turret_velocity is None:
        self.desired_turret_velocity = 0
      if self.pid_error is None:
        self.pid_error = 0
    else:
      self.sensed_t_motor_enc_value = 0
      self.sensed_t_motor_velocity = 0
      self.sensed_turret_position = 0
      self.sensed_turret_velocity = 0
      self.desired_turret_velocity = 0
      self.pid_error = 0

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
      buff.write(_struct_6h.pack(_x.sensed_t_motor_enc_value, _x.sensed_t_motor_velocity, _x.sensed_turret_position, _x.sensed_turret_velocity, _x.desired_turret_velocity, _x.pid_error))
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
      end += 12
      (_x.sensed_t_motor_enc_value, _x.sensed_t_motor_velocity, _x.sensed_turret_position, _x.sensed_turret_velocity, _x.desired_turret_velocity, _x.pid_error,) = _struct_6h.unpack(str[start:end])
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
      buff.write(_struct_6h.pack(_x.sensed_t_motor_enc_value, _x.sensed_t_motor_velocity, _x.sensed_turret_position, _x.sensed_turret_velocity, _x.desired_turret_velocity, _x.pid_error))
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
      end += 12
      (_x.sensed_t_motor_enc_value, _x.sensed_t_motor_velocity, _x.sensed_turret_position, _x.sensed_turret_velocity, _x.desired_turret_velocity, _x.pid_error,) = _struct_6h.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6h = struct.Struct("<6h")
