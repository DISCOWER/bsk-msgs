# Structure used to define the output definition for attitude guidance

builtin_interfaces/Time stamp
float64[3] sigma_br  # Current attitude error estimate (MRPs) of B relative to R*/
float64[3] omega_br_b  # [r/s]  Current body error estimate of B relateive to R in B frame compoonents */
float64[3] omega_rn_b  # [r/s]  Reference frame rate vector of the of R relative to N in B frame components */
float64[3] domega_rn_b  # [r/s2] Reference frame inertial body acceleration of R relative to N in B frame components */
