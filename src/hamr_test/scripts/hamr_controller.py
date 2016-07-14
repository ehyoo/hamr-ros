#!/usr/bin/env python
# license removed for brevity
import rospy
from hamr_test.msg import HamrCommand

class HamrController():
    def __init__(self):
        self.val_map = {
            # a dictionary of all the values delineated by the switch function in 
            # the commandCallback function located on the client
            'SIG_START_LOG': '[',
            'SIG_STOP_LOG': ']',
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
            # holonomic Z PID
            'SIG_HOLO_R_KP': 'U',
            'SIG_HOLO_R_KI': 'I',
            'SIG_HOLO_R_KD': 'O'
        } 

    def drive_control(self, msg):
        which_motor = raw_input('Which one? R, L, T')
        which_motor = str.strip(which_motor.lower())
        if which_motor == 'r':
            msg.type = ord(self.val_map.get('SIG_R_MOTOR'))
            self.get_val(msg, is_right=True)
        elif which_motor == 'l':
            msg.type = ord(self.val_map.get('SIG_L_MOTOR'))
            self.get_val(msg)
        elif which_motor == 't':
            msg.type = ord(self.val_map.get('SIG_T_MOTOR'))
            self.get_val(msg)
        else:
            # REMEMBER THAT RIGHT IS NEGATIVE.
            print "will write to right motor"
            msg.type = ord(self.val_map.get('SIG_R_MOTOR'))
            self.get_val(msg, is_right=True)

    def pid_control(self, msg):
        which_motor = raw_input("Which motor? R, L, T\n")
        which_motor = str.strip(which_motor.upper())
        if which_motor == 'R':
            print 'You chose right'
            which_val = raw_input("Which value? P, I, D\n")
            which_val = str.strip(which_val.upper())
            if which_val == 'P':
                msg.type = ord(self.val_map.get('SIG_R_KP'))
            elif which_val == 'I':
                msg.type = ord(self.val_map.get('SIG_R_KI'))
            elif which_val == 'D':
                msg.type = ord(self.val_map.get('SIG_R_KD'))
            else:
                msg.type = ord(self.val_map.get('SIG_R_KP'))
        elif which_motor == 'L':
            print 'You chose left'
            which_val = raw_input("Which value? P, I, D\n")
            which_val = str.strip(which_val.upper())
            if which_val == 'P':
                msg.type = ord(self.val_map.get('SIG_L_KP'))
            elif which_val == 'I':
                msg.type = ord(self.val_map.get('SIG_L_KI'))
            elif which_val == 'D':
                msg.type = ord(self.val_map.get('SIG_L_KD'))
            else:
                msg.type = ord(self.val_map.get('SIG_L_KP'))
        elif which_motor == 'T':
            print 'You chose the turret'
            which_val = raw_input("Which value? P, I, D\n")
            which_val = str.strip(which_val.upper())
            if which_val == 'P':
                msg.type = ord(self.val_map.get('SIG_T_KP'))
            elif which_val == 'I':
                msg.type = ord(self.val_map.get('SIG_T_KI'))
            elif which_val == 'D':
                msg.type = ord(self.val_map.get('SIG_T_KD'))
            else:
                print 'Not valid, will write to P'
                msg.type = ord(self.val_map.get('SIG_T_KP'))
        else:
            print 'Not valid, will publish to Right P'
            msg.type = ord(self.val_map.get('SIG_R_KP'))

    def kill_motors(self):
        right_msg = HamrCommand()
        left_msg = HamrCommand()
        turret_msg = HamrCommand()
        ddr_msg = HamrCommand()
        ddv_msg = HamrCommand()
        right_msg.type = ord(self.val_map.get('SIG_R_MOTOR'))
        left_msg.type = ord(self.val_map.get('SIG_L_MOTOR'))
        turret_msg.type = ord(self.val_map.get('SIG_T_MOTOR'))
        ddr_msg.type = ord(self.val_map.get('SIG_DD_R'))
        ddv_msg.type = ord(self.val_map.get('SIG_DD_V'))
        msg_list = [right_msg, left_msg, turret_msg, ddr_msg, ddv_msg]
        for msg in msg_list:
            msg.val = '0'
            self.pub.publish(msg)
        print 'killed'

    def get_val(self, msg, is_right=False):
        val_msg = raw_input('What amount?\n')
        try:
            float(val_msg)
            if is_right:
                msg.val = '-' + val_msg
            else:
                msg.val = val_msg
        except ValueError:
            print 'Not a valid number, will send 0'
            msg.val = '0'
        self.pub.publish(msg)

    def dd_set(self, msg):
        which = raw_input('V or R?\n')
        which = str.strip(which.lower())
        if which == 'v':
            # Right negative?
            print 'writing to V'
            msg.type = ord(self.val_map.get('SIG_DD_V'))
        else:
            print 'writing to R'
            msg.type = ord(self.val_map.get('SIG_DD_R'))
        val_msg = raw_input('What value?')
        try:
            float(val_msg)
            msg.val = val_msg
        except ValueError:
            print 'Not a valid number, will send 0'
            msg.val = '0'
        self.pub.publish(msg)

    def talker(self):
        self.pub = rospy.Publisher('hamr_command', HamrCommand, queue_size=10)
        rospy.init_node('hamr_controller', anonymous=True)
        rate = rospy.Rate(10) # 10hz
        msg = HamrCommand()
        while not rospy.is_shutdown():
            drive_or_pid = raw_input("Drive, PID, Kill all Motors (kill), DD Set (DDS) or Quit?\n")
            drive_or_pid = str.strip(drive_or_pid.lower())
            if drive_or_pid == 'drive':
                self.drive_control(msg)
            elif drive_or_pid == 'pid':
                self.pid_control(msg)
                self.get_val(msg)
            elif drive_or_pid == 'kill':
                print 'Killing all motors...'
                self.kill_motors()
            elif drive_or_pid == 'quit':
                rospy.signal_shutdown('Node shut down')
            elif drive_or_pid == 'dds':
                self.dd_set(msg)
            else:
                print "That's not a valid option"
            rate.sleep()

if __name__ == '__main__':
    try:
        HamrController().talker()
    except rospy.ROSInterruptException:
        pass