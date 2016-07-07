#!/usr/bin/env python
# A node that subscribes to 'hamr_state' and plots the previous 100 
# readings in a plot that updates as it gets messages from the arduino.
# Plots current and desired velocity with respect to time.

import rospy
from hamr_test.msg import HamrStatus
from hamr_test.msg import MotorStatus
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import time
# we need to import matplotlib.pyplot as plt
# import math
# import time/datetime? if necessary? 
class LivePlotter():
	def __init__(self):
		self.desired_velocity = 0
		self.current_x_list = [] # This should never grow larger than LIST_SIZE
		self.current_y_list = []
		self.LIST_SIZE = 100 # Number of points we're allowed to graph.
		self.GRAPH_PER = 0.25 # Graphing period
		self.init_time = 0 # The timestamp we get from our very first message. 
		self.prev_time = 0 # The time of the message before the most recent message
		self.init_time_set = False
		# Matplotlib setup
		self.fig = plt.figure()
		self.ax1 = self.fig.add_subplot(1,1,1)

	def callback(self, hamr_status):
		# Graphs the streaming messages at a set, but adjustable, frequency.
		msg_time = round((hamr_status.timestamp.secs + (hamr_status.timestamp.nsecs * 1e-9)), 4)
		if self.init_time_set:
			# Initial time set, get relative time from init
			rel_time = msg_time - self.init_time
			if self.prev_time - rel_time > self.GRAPH_PER:
				# If it is time, graph.
				print 'hits' 
				self.list_controller(rel_time, hamr_status.right_motor.velocity)
				self.ax1.clear()
				self.ax1.plot(self.current_x_list, self.current_y_list)
				self.prev_time = rel_time
				plt.draw()
				plt.pause(0.0001)

		else:
			# Initial time not set, meaning this is the first message.
			self.init_time = msg_time
			self.prev_time = msg_time
			self.init_time_set = True

	def list_controller(self, x, y):
		# Adds points to the list 
		# If the list is too long, then pop the first member and push the current
		# If not, just push.
		if len(self.current_x_list) >= self.LIST_SIZE and len(self.current_y_list) >= self.LIST_SIZE:
			self.current_x_list.pop(0)
			self.current_y_list.pop(0)
		self.current_x_list.append(x)
		self.current_y_list.append(y)

	def listener(self):
	    rospy.init_node('custom_listener', anonymous=True)
	    # Subscribe to hamr_state
	    rospy.Subscriber('hamr_state', HamrStatus, self.callback)
	    # spin() simply keeps python from exiting until this node is stopped
	    rospy.spin()

if __name__ == '__main__':
	LivePlotter().listener()