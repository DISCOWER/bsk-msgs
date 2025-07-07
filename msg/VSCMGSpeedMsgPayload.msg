# Structure used to define the output definition for VSCMG speeds

uint8 MAX_EFF_CNT = 36

builtin_interfaces/Time stamp
float64[36] wheelspeeds  # r/s The current angular velocities of the VSCMG wheel
float64[36] gimbalangles  # r The current angles of the VSCMG gimbal
float64[36] gimbalrates  # r/s The current angular velocities of the VSCMG gimbal
