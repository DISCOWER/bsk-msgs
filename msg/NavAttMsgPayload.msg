# Structure used to define the output definition for attitude guidance

builtin_interfaces/Time stamp
float64 timetag  # [s]   Current vehicle time-tag associated with measurements*/
float64[3] sigma_bn  # Current spacecraft attitude (MRPs) of body relative to inertial */
float64[3] omega_bn_b  # [r/s] Current spacecraft angular velocity vector of body frame B relative to inertial frame N, in B frame components
float64[3] vehsunpntbdy  # Current sun pointing vector in body frame
