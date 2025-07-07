# Structure used to define the output definition for vehicle effectors

uint8 MAX_EFF_CNT = 36

builtin_interfaces/Time stamp
int32[36] effectorlockflag  # effector lock flag; 0 : do not lock; 1 : lock
