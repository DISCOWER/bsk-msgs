# Structure used to define the prescribed motion state effector translational state data message

builtin_interfaces/Time stamp
float64[3] r_pm_m  # [m] Position vector from the M frame origin to the P frame origin expressed in M frame components
float64[3] rprime_pm_m  # [m/s] B/M frame time derivative of r_PM_M
float64[3] rprimeprime_pm_m  # [m/s^2] B/M frame time derivative of rPrime_PM_M
