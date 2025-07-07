# Structure used to define the output of the Lambert problem solution

builtin_interfaces/Time stamp
float64[3] v1_n  # [m/s] velocity solution at t1
float64[3] v2_n  # [m/s] velocity solution at t2
int32 valid  # [-] valid solution if 1, not if 0
float64[3] v1sol2_n  # [m/s] second velocity solution at t1 (for multi-revolution solutions)
float64[3] v2sol2_n  # [m/s] second velocity solution at t2 (for multi-revolution solutions)
int32 validsol2  # [-] valid second solution if 1, not if 0
