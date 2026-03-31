# Structure containing stepper motor state information

builtin_interfaces/Time stamp
float64 theta  # [rad] Current motor angle
float64 thetadot  # [rad/s] Current motor angle rate
float64 thetaddot  # [rad/s^2] Current motor angular acceleration
int32 stepscommanded  # Current number of commanded motor steps
int32 stepcount  # Current motor step count (number of steps taken)
