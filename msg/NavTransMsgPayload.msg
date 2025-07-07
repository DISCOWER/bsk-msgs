# Structure used to define the output definition for translatoin guidance

builtin_interfaces/Time stamp
float64 timetag  # [s]   Current vehicle time-tag associated with measurements*/
float64[3] r_bn_n  # [m]   Current inertial spacecraft position vector in inertial frame N components
float64[3] v_bn_n  # [m/s] Current inertial velocity of the spacecraft in inertial frame N components
float64[3] vehaccumdv  # [m/s] Total accumulated delta-velocity for s/c
