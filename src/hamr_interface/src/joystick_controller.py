#!/usr/bin/env python
"""
Controlling the HAMR with the Logitech controller. 
Be sure to set the params to /dev/input/js[x]

Also use this as an example usage of HamrController.
"""

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
        # x is right joystick left/right, y is right joystick up/down
        # r command is left joystick left/right
        # left is +, right is -, up is +, down is -.
        self.send_x(float(msg.axes[2]) * self.scalar)
        self.send_y(float(msg.axes[3]) * self.scalar)
        self.send_r(float(msg.axes[4]) * self.scalar)
        if int(msg.buttons[0]) == 0: # Press button 1 to kill motors
            self.kill_motors()

if __name__ == '__main__':
    try:
        JoystickController()
    except rospy.ROSInterruptException:
        pass