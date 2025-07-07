# Structure used to define the output definition for attitude reference generation

builtin_interfaces/Time stamp
float64[3] sigma_rn  # MRP Reference attitude of R relative to N
float64[3] omega_rn_n  # [r/s]  Reference frame rate vector of the of R relative to N in N frame components
float64[3] domega_rn_n  # [r/s2] Reference frame inertial acceleration of  R relative to N in N frame components
