# Structure used to define CM estimation output data

builtin_interfaces/Time stamp
float64 atterror  # [-]   attitude convergence error
float64[3] state  # [m]   estimated cm location
float64[3] stateerror  # [m]   errpr w.r.t. truth
float64[3] covariance  # [m^2] CM estimated covariance
float64[3] prefitres  # [Nm]  pre-fit torque residuals
float64[3] postfitres  # [Nm]  post-fit torque residuals
