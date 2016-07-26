#!/usr/bin/env python

import rospy
from hamr_interface.msg import HamrCommand
from sensor_msgs.msg import Joy

class JoystickController():
    def __init__(self):
        self.val_map = {
            # holonomic inputs
            'SIG_HOLO_X': 'x',
            'SIG_HOLO_Y': 'y',
            'SIG_HOLO_R': 'a',
        }
        self.scalar = 0.3 # random scalar we use to cap HAMR Velocity
        rospy.init_node('joystick_controller', anonymous=True)
        rate = rospy.Rate(10)
        rospy.Subscriber('joy', Joy, self.callback)
        self.pub = rospy.Publisher('hamr_command', HamrCommand, queue_size=10)
        rospy.spin()

    def callback(self, msg):
        """ Sends x, y, and r commands on joystick command. """
        # List arranged as: x command, y command, r command
        # x is right joystick left/right, y is right joystick up/down
        # r command is left joystick left/right
        joystick_input_list = [msg.axes[2], msg.axes[3], msg.axes[0]]
        # Returns a float: left is +, right is -, up is +, down is -.
        command_order_list = ['SIG_HOLO_X', 'SIG_HOLO_Y', 'SIG_HOLO_R']
        for i in range(len(joystick_input_list)):
            msg = HamrCommand()
            msg.type = ord(self.val_map.get(command_order_list[i]))
            msg.val = str(
                round(float(joystick_input_list[i]), 2) * self.scalar)
            self.pub.publish(msg)

if __name__ == '__main__':
    try:
        JoystickController().JoystickController()
    except rospy.ROSInterruptException:
        # hello friend
        pass