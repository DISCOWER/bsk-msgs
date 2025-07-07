# This structure is used in the messaging system to communicate what the  state of the vehicle is currently.

builtin_interfaces/Time stamp
float64[3] r_bn_n  # m  Current position vector (inertial)
float64[3] v_bn_n  # m/s Current velocity vector (inertial)
float64[3] r_cn_n  # m  Current position of CoM vector (inertial)
float64[3] v_cn_n  # m/s Current velocity of CoM vector (inertial)
float64[3] sigma_bn  # -- Current MRPs (inertial)
float64[3] omega_bn_b  # r/s Current angular velocity
float64[3] omegadot_bn_b  # r/s/s Current angular acceleration
float64[3] totalaccumdvbdy  # m/s Accumulated DV of center of mass in body frame coordinates
float64[3] totalaccumdv_bn_b  # m/s Accumulated DV of body frame in body frame coordinates
float64[3] totalaccumdv_cn_n  # m/s Accumulated DV of center of mass in inertial frame coordinates
float64[3] nonconservativeaccelpntb_b  # m/s/s Current Spacecraft non-conservative body frame accel
uint64 mrpswitchcount  # -- Number of times that MRPs have switched
