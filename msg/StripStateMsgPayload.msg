# Message that defines the inertial location of the current target groundlocation on the central line of the strip and its velocity

builtin_interfaces/Time stamp
float64[3] r_ln_n  # [m] Position vector of the current target w.r.t.the inertial origin in the inertial frame
float64[3] r_lp_n  # [m] Position vector of the current target w.r.t the planet center in the inertial frame
float64[3] v_ln_n  # [m/s] Velocity vector of the current target w.r.t the inertial origin in the inertial frame
float64[3] v_lp_n  # [m/s] Velocity vector of the current target w.r.t the planet center in the inertial frame
