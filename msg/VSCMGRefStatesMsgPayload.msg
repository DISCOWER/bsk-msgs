# Structure used to define the desired VSCMG RW accelerations and gimbal rates

uint8 MAX_EFF_CNT = 36

builtin_interfaces/Time stamp
float64[36] wheelaccels  # [rad/s^2] The desired wheel accelerations for the VSCMGs
float64[36] gimbalrates  # [rad/s] The desired gimbal rates for the VSCMGs
