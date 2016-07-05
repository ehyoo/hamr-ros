#!/usr/bin/env python
# license removed for brevity
import rospy
from hamr_test.msg import HamrCommand

val_map = {
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

# ok so we publish to the node in the arduino
# we give some command, maps to the dictionary, value is turned into an int
# stored into the msg, with some value, then sent over. 
# once that is sent over, 

def talker():
    pub = rospy.Publisher('hamr_command', HamrCommand, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    msg = HamrCommand()

    while not rospy.is_shutdown():
        type_msg = raw_input('What value would you like to write to l/r motor?\n')
        msg.type = ord(val_map.get('SIG_R_MOTOR'))
        val_msg = raw_input('What amount?\n')
        msg.val = val_msg
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass