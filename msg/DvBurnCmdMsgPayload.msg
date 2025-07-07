# Input burn command structure used to configure the burn

builtin_interfaces/Time stamp
float64[3] dvinrtlcmd  # [m/s] The commanded DV we need in inertial
float64[3] dvrotvecunit  # [-] The commanded vector we need to rotate about
float64 dvrotvecmag  # [r/s] The commanded rotation rate for the vector
uint64 burnstarttime  # [ns]  The commanded time to start the burn
