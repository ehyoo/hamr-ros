## hamr_test  
This is a preliminary package for HAMR where I defined:  
1) Initial intuitions for custom msgs to be sent over custom topics (subject to change)  
2) A test suite for debugging the HAMR, including a basic interface for writing specific velocities to each motor and updating PID on command. This suite will soon include live-plotting the velocities (both sensed and desired) with respect to time. 

## Documentation
### Topics  
`hamr_status`

####`hamr_command`
Published to by:  
`hamr_controller`  

Subscribed to by:  
Arduino  

Publishes:  
`HamrCommand.msg`  

Contains a certain value that a certain variable in the Arduino code should be changed to. For now, we have control over velocity and PID. 

####`hamr_state`  
Published to by:  
Arduino  
  
Subscribed to by:
`velocity_live_plotter`  

Publishes:  
`HamrStatus.msg`

Streams the current status of the HAMR: the position, sensed, and desired velocity of each of the motors. 