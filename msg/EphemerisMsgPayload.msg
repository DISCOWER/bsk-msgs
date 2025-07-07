# Message structure used to write ephemeris states out to other modules

builtin_interfaces/Time stamp
float64[3] r_bdyzero_n  # [m] Position of orbital body
float64[3] v_bdyzero_n  # [m/s] Velocity of orbital body
float64[3] sigma_bn  # MRP attitude of the orbital body fixed frame relative to inertial
float64[3] omega_bn_b  # [r/s] angular velocity of the orbital body relative to inertial
float64 timetag  # [s] vehicle Time-tag for state
