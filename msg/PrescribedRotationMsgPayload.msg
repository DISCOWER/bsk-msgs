# Structure used to define the prescribed motion state effector rotational state data message

builtin_interfaces/Time stamp
float64[3] omega_pm_p  # [rad/s] Angular velocity of the P frame wrt the M frame in P frame components
float64[3] omegaprime_pm_p  # [rad/s^2] B/M frame time derivative of omega_PM_P
float64[3] sigma_pm  # MRP attitude parameters for the P frame relative to the M frame
