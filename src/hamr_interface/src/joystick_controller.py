#!/usr/bin/env python

import rospy
from hamr_interface.msg import HamrCommand
from sensor_msgs.msg import Joy
import hamr_controller as hc

class JoystickController(hc.HamrController):
    def __init__(self):
        hc.HamrController.__init__(self, node_name='joystick_controller')
        self.scalar = 0.3 # random scalar we use to cap HAMR Velocity
        rate = rospy.Rate(10)
        rospy.Subscriber('joy', Joy, self.callback)
        rospy.spin()

    def callback(self, msg):
        """ Sends x, y, and r commands on joystick command. """
        print 'hi'
        # List arranged as: x command, y command, r command
        # x is right joystick left/right, y is right joystick up/down
        # r command is left joystick left/right
        joystick_input_list = [msg.axes[2], msg.axes[3], msg.axes[0]]
        # Returns a float: left is +, right is -, up is +, down is -.
        self.send_x(msg.axes[2])
        self.send_y(msg.axes[3])
        self.send_r(msg.axes[0])

if __name__ == '__main__':
    try:
        # hc = hamr_controller.HamrController()
        JoystickController()
    except rospy.ROSInterruptException:
        # hello friend
        pass