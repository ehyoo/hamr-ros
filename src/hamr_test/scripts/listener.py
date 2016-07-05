#!/usr/bin/env python
import rospy
from hamr_test.msg import HamrStatus
from hamr_test.msg import MotorStatus

def callback(data):
	print 'received data:'
	print data.timestamp
	print data.left_motor.velocity

def listener():
    rospy.init_node('custom_listener', anonymous=True)
    rospy.Subscriber("hamr_test_publisher", HamrStatus, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()