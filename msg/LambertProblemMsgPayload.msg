# Structure used to define the input for Lambert problem

builtin_interfaces/Time stamp
float64[3] r1_n  # [m] position vector at t0
float64[3] r2_n  # [m] position vector at t1
float64 transfertime  # [s] time of flight between r1_N and r2_N (t1-t0)
float64 mu  # [m^3 s^-2] gravitational parameter of body
int32 numrevolutions  # [-] number of revolutions to be completed (completed orbits)
