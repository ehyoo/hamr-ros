#!/usr/bin/env python

import rospy
from hamr_interface.msg import HamrCommand

class HamrController():
    def __init__(self, node_name='hamr_controller'):
        self.val_map = {
            # a dictionary of all the values delineated by the switch function
            # in the embedded arduino code.
            # holonomic inputs
            'SIG_UNINITIALIZED': '!',
            'SIG_HOLO_X': 'x',
            'SIG_HOLO_Y': 'y',
            'SIG_HOLO_R': 'a',
            # differential drive inputs
            'SIG_DD_V': 'd',
            'SIG_DD_R': 'D',
            # Motor Velocities
            'SIG_R_MOTOR': 'r',
            'SIG_L_MOTOR': 'l',
            'SIG_T_MOTOR': 't',
            # right motor PID
            'SIG_R_KP': '1',
            'SIG_R_KI': '2',
            'SIG_R_KD': '3',
            # left motor PID
            'SIG_L_KP': '4',
            'SIG_L_KI': '5',
            'SIG_L_KD': '6',
            # turret motor PID
            'SIG_T_KP': '7',
            'SIG_T_KI': '8',
            'SIG_T_KD': '9',
            # holonomic x PID
            'SIG_HOLO_X_KP': 'Q',
            'SIG_HOLO_X_KI': 'W',
            'SIG_HOLO_X_KD': 'E',
            # holonomic Y PID
            'SIG_HOLO_Y_KP': 'R',
            'SIG_HOLO_Y_KI': 'T',
            'SIG_HOLO_Y_KD': 'Y',
            # holonomic R PID
            'SIG_HOLO_R_KP': 'U',
            'SIG_HOLO_R_KI': 'I',
            'SIG_HOLO_R_KD': 'O'
        }
        rospy.init_node(node_name, anonymous=True)
        self.pub = rospy.Publisher('hamr_command', HamrCommand, queue_size=10) 

    def send_x(self, value=0.0):
        """ Sends a holonomic x command """
        self._send_msg('SIG_HOLO_X', value)

    def send_y(self, value=0.0):
        """ Sends a holonomic y command """
        self._send_msg('SIG_HOLO_Y', value)

    def send_r(self, value=0.0):
        """ Sends a holonomic r command """
        self._send_msg('SIG_HOLO_R', value)

    def send_pid(self, drive_side='right', p=0.0, i=0.0, d=0.0):
        """
        Adjusts the low level PID
        drive_side: accepts 'right', 'left', 'turret' 
        """
        drive_opt = ['right', 'left', 'turret']
        if not drive_side.lower() in drive_opt:
            print 'send_pid: drive_side only accepts right, left, or turret'
            return
        if drive_side == 'right':
            self._send_msg('SIG_R_KP', p)
            self._send_msg('SIG_R_KI', i)
            self._send_msg('SIG_R_KD', d)
        elif drive_side == 'left':
            self._send_msg('SIG_L_KP', p)
            self._send_msg('SIG_L_KI', i)
            self._send_msg('SIG_L_KD', d)
        elif drive_side == 'turret':
            self._send_msg('SIG_T_KP', p)
            self._send_msg('SIG_T_KI', i)
            self._send_msg('SIG_T_KD', d)

    def send_holo_pid(self, drive_type='', p=0.0, i=0.0, d=0.0):
        """
        Adjusts holonomic PID
        drive_type accepts 'x', 'y', or 'z'.
        """
        if not drive_type.lower() in ['x', 'y', 'r']:
            print 'send_holo_pid: only accepts x, y, or r'
            return
        if drive_type == 'x':
            self._send_msg('SIG_HOLO_X_KP', p)
            self._send_msg('SIG_HOLO_X_KI', i)
            self._send_msg('SIG_HOLO_X_KD', d)
        elif drive_type == 'y':
            self._send_msg('SIG_HOLO_Y_KP', p)
            self._send_msg('SIG_HOLO_Y_KI', i)
            self._send_msg('SIG_HOLO_Y_KD', d)
        elif drive_type == 'r':
            self._send_msg('SIG_R_KP', p)
            self._send_msg('SIG_R_KI', i)
            self._send_msg('SIG_R_KD', d)

    def send_dif_drive(self, drive_type='', value=0.0):
        if not drive_type.lower() in ['v', 'r']:
            print 'send_dif_drive: accepts only v or r'
            return
        if drive_type == 'v':
            self._send_msg('SIG_DD_V', value)
        elif drive_type == 'r':
            self._send_msg('SIG_DD_R', value)

    def _send_msg(self, msg_type, val):
        """ sends some message of some type and value """
        msg = HamrCommand()
        try:
            float(val)
            msg.type = ord(self.val_map.get(msg_type))
            msg.val = str(val)
            self.pub.publish(msg)
        except ValueError:
            print 'The value of ' + msg_type + ' only accepts numerical values'

    def kill_motors(self):
    	""" Soft software stop by sending 0 to all motors """
        self.send_x(0.0)
        self.send_y(0.0)
        self.send_r(0.0)
        self.send_dif_drive('v', 0.0)
        self.send_dif_drive('r', 0.0)