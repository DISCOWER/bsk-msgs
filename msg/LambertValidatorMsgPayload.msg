# Structure used to log results of lambert validator, such as constraint violations.     Specifies why lambertValidator failed to write a non-zero DV command message

builtin_interfaces/Time stamp
int32 failedvalidlambert  # [-] no valid lambert solution if 1, otherwise 0
int32 failednumiterationslambert  # [-] Lambert solver root finder iterations for x too high if 1, otherwise 0
int32 failedxtolerancelambert  # [-] Lambert solver root finder for x not converged if 1, otherwise 0
int32 failedxsolutionconvergence  # [-] x solution too different from previous time step if 1, otherwise 0
int32 faileddvsolutionconvergence  # [-] Delta-V solution too different from previous time step if 1, otherwise 0
int32 faileddistancetargetconstraint  # [-] violated the maximum distance from target constraint if 1, otherwise 0
int32 failedorbitradiusconstraint  # [-] violated the minimum orbit radius constraint if 1, otherwise 0
float64 xsolutiondifference  # [-] difference in solution for free variable (iteration variable) to previous time
float64 dvsolutiondifference  # [m/s] difference in Delta-V solution magnitude to previous time step
int32 violationsdistancetarget  # [-] number of violations of the maximum distance from target constraint
int32 violationsorbitradius  # [-] number of violations of the minimum orbit radius constraint
float64[3] dv_n  # [m/s] Delta-V vector that would be commanded at maneuver time if all checks passed
