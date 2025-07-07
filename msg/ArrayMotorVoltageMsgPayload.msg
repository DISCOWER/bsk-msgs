# Structure used to define the message format of the motor voltage input

uint8 MAX_EFF_CNT = 36

builtin_interfaces/Time stamp
float64[36] voltage  # [V]     Motor voltage input value
