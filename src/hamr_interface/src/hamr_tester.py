#!/usr/bin/env python
# A test suite for running direct motor control, diff drive, and holonomic 
# control, as well as PID adjustment for both motor control and holonomic. 
# Be wary that direct motor control and differential drive depends on
# the state of the embedded code. By default holonomic control should be the
# only function that works.
# This is mostly for debugging purposes.
import rospy
from hamr_interface.msg import HamrCommand

class HamrTester():
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

    def call_tests(self, msg):
    	# Runs set defined tests written in the embedded code.
        print 'you picked tests'
        ans = raw_input('Which tests? Options: Square, Right \n')
        ans = str.strip(ans.lower())
        if ans == 'square':
            print 'You picked the Square test'
            # The following message types are arbitrarily defined 
            # in order to match the cases in the embedded code. 
            msg.type = -100 
            msg.val = '0'
        elif ans == 'right':
            print 'You picked the Right Angle test'
            msg.type = -101 
            msg.val = '0'
        self.pub.publish(msg)

    def holonomic_control(self, msg):
    	# All things holonomic- both PID and XYR commands
        print 'You picked holonomic control'
        ans = raw_input('Input or PID Control?\n')
        ans = str.strip(ans.lower())
        if ans == 'input':
            print 'You picked input'
            input_ans = raw_input('X, Y, or R?\n')
            input_ans = str.strip(input_ans.lower())
            if input_ans == 'x':
                print 'picked x'
                msg.type = ord(self.val_map.get('SIG_HOLO_X'))
            elif input_ans == 'y':
                print 'picked y'
                msg.type = ord(self.val_map.get('SIG_HOLO_Y'))
            elif input_ans == 'r':
                print 'picked r'
                msg.type = ord(self.val_map.get('SIG_HOLO_R'))
            else:
                print 'Invalid, will write to x'
                msg.type = ord(self.val_map.get('SIG_HOLO_X'))
        else:
            print 'You picked PID Control'
            pid_ans = raw_input('X PID, Y PID, or R PID? Input pair, like XP')
            pid_ans = str.strip(pid_ans.lower())
            if pid_ans == 'xp':
                print 'you picked xp'
                msg.type = ord(self.val_map.get('SIG_HOLO_X_KP'))
            elif pid_ans == 'xi':
                print 'you picked xi'
                msg.type = ord(self.val_map.get('SIG_HOLO_X_KI'))
            elif pid_ans == 'xd':
                print 'you picked xd'
                msg.type = ord(self.val_map.get('SIG_HOLO_X_KD'))
            elif pid_ans == 'yp':
                print 'you picked yp'
                msg.type = ord(self.val_map.get('SIG_HOLO_Y_KP'))
            elif pid_ans == 'yi':
                print 'you picked yi'
                msg.type = ord(self.val_map.get('SIG_HOLO_Y_KI'))
            elif pid_ans == 'yd':
                print 'you picked yd'
                msg.type = ord(self.val_map.get('SIG_HOLO_Y_KD'))
            elif pid_ans == 'rp':
                print 'you picked rp'
                msg.type = ord(self.val_map.get('SIG_HOLO_R_KP'))
            elif pid_ans == 'ri':
                print 'you picked ri'
                msg.type = ord(self.val_map.get('SIG_HOLO_R_KI'))
            elif pid_ans == 'rd':
                print 'you picked rd'
                msg.type = ord(self.val_map.get('SIG_HOLO_R_KD'))
            else:
                print 'you picked an invalid value, will write to xi'
                msg.type = ord(self.val_map.get('SIG_HOLO_X_KI'))
        val_ans = raw_input('What value?\n')
        try:
            float(val_ans)
            if float(val_ans) > 0.5 or float(val_ans) < -0.5:
            	print 'Woah there'
            	print 'Too big, will write 0'
            	msg.val = '0.0'
            else:
	            msg.val = val_ans
        except ValueError:
            print 'That is invalid, will write 0'
            msg.val = '0'
        self.pub.publish(msg)

    def drive_control(self, msg):
    	# direct drive control
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
    	# Direct drive PID adjustment
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
    	# sends a series of desired messages with value 0
    	# this is a rather soft stop, so if things go wrong the only real
    	# emergency full stop is to kill the power.
    	msg_type_list = ['SIG_R_MOTOR', 
    					'SIG_L_MOTOR',
    					'SIG_T_MOTOR',
    					'SIG_DD_R',
    					'SIG_DD_V',
    					'SIG_HOLO_X',
    					'SIG_HOLO_Y',
    					'SIG_HOLO_R']
    	msg_list = []
    	for i in range(len(msg_type_list)):
    		arb_msg = HamrCommand()
    		arb_msg.type = ord(self.val_map.get(msg_type_list[i]))
    		arb_msg.val = '0'
    		self.pub.publish(arb_msg)
        print 'killed'

    def get_val(self, msg, is_right=False):
        # Gets the value of what to send
        # If the given value is right then make it negative because of our
        # schematic of the HAMR (flipped reference frames)
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
    	# Differential Drive command
        which = raw_input('V or R?\n')
        which = str.strip(which.lower())
        if which == 'v':
            # Right negative?
            # ^^^ This should be accounted for in our calculations
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
    	# Main publisher logic- app branches out from here
        self.pub = rospy.Publisher('hamr_command', HamrCommand, queue_size=10)
        rospy.init_node('hamr_tester', anonymous=True)
        rate = rospy.Rate(10) # 10hz
        msg = HamrCommand()
        while not rospy.is_shutdown():
            drive_or_pid = raw_input("Drive, PID, Kill all Motors (kill), DD Set (DDS), Holonomic (holo), tests or Quit?\n")
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
            elif drive_or_pid == 'holo':
                self.holonomic_control(msg)
            elif drive_or_pid == 'test':
                self.call_tests(msg)
            else:
                print "That's not a valid option"
            rate.sleep()

if __name__ == '__main__':
    try:
        HamrController().talker()
    except rospy.ROSInterruptException:
        # hello friend
        pass