# Structure used to define the output definition for attitude guidance

builtin_interfaces/Time stamp
float64[3] omega_bastr_b  # [r/s]   Desired body rate relative to R
float64[3] omegap_bastr_b  # [r/s^2] Body-frame derivative of omega_BastR_B
