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

    def send_pid(self, drive_side='right', x=0.0, y=0.0, z=0.0):
        # self._send_msg('')

    def send_holo_pid(self, drive_type='', x=0.0, y=0.0, z=0.0):
        print 'no'

    def send_dif_drive(self, drive_type='', value=0.0):
        print 'hi'

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
    	# sends a series of desired messages with value 0
    	# this is a rather soft stop, so if things go wrong the only real
    	# emergency full stop is to kill the power.
    	print 'hello. this is not implemented yet'
        # msg_type_list = ['SIG_R_MOTOR', 
    	# 				'SIG_L_MOTOR',
    	# 				'SIG_T_MOTOR',
    	# 				'SIG_DD_R',
    	# 				'SIG_DD_V',
    	# 				'SIG_HOLO_X',
    	# 				'SIG_HOLO_Y',
    	# 				'SIG_HOLO_R']
    	# msg_list = []
    	# for i in range(len(msg_type_list)):
    	# 	arb_msg = HamrCommand()
    	# 	arb_msg.type = ord(self.val_map.get(msg_type_list[i]))
    	# 	arb_msg.val = '0'
    	# 	self.pub.publish(arb_msg)
     #    print 'killed'
