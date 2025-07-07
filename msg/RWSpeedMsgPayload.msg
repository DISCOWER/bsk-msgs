# Structure used to define the output definition for reaction wheel speeds

uint8 MAX_EFF_CNT = 36

builtin_interfaces/Time stamp
float64[36] wheelspeeds  # r/s The current angular velocities of the RW wheel
float64[36] wheelthetas  # rad The current angle of the RW if jitter is enabled
