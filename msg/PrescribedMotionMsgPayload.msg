# Structure used to define the individual prescribed motion state effector data message

builtin_interfaces/Time stamp
float64[3] r_pm_m  # [m] position vector from the M frame origin to the P frame origin in M frame components
float64[3] rprime_pm_m  # [m/s] B frame time derivative of r_PM_M
float64[3] rprimeprime_pm_m  # [m/s^2] B frame time derivative of rPrime_PM_M
float64[3] omega_pm_p  # [rad/s] Angular velocity of the P frame wrt the M frame in P frame components
float64[3] omegaprime_pm_p  # [rad/s^2] B frame time derivative of omega_PM_P
float64[3] sigma_pm  # MRP attitude parameters for the P frame relative to the M frame
