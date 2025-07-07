# Structure used to define the individual RW configuration data message

builtin_interfaces/Time stamp
float64[3] rwb_b  # [m], position vector of the RW relative to the spacecraft body frame
float64[3] gshat_b  # [-] spin axis unit vector in body frame
float64[3] w2hat0_b  # [-] initial torque axis unit vector in body frame
float64[3] w3hat0_b  # [-] initial gimbal axis unit vector in body frame
float64 mass  # [kg], reaction wheel rotor mass
float64 theta  # [rad], wheel angle
float64 omega  # [rad/s], wheel speed
float64 js  # [kg-m^2], spin axis gsHat rotor moment of inertia
float64 jt  # [kg-m^2], gtHat axis rotor moment of inertia
float64 jg  # [kg-m^2], ggHat axis rotor moment of inertia
float64 u_s  # [kg-m], static imbalance
float64 u_d  # [kg-m^2], dynamic imbalance
float64 d  # [m], wheel center of mass offset from wheel frame origin
float64 j13  # [kg-m^2], x-z inertia of wheel about wheel center in wheel frame (imbalance)
float64 u_current  # [N-m], current motor torque
float64 frictiontorque  # [N-m], friction Torque
float64 u_max  # [N-m], Max torque
float64 u_min  # [N-m], Min torque
float64 u_f  # [N-m], Coulomb friction torque magnitude
float64 omega_max  # [rad/s], max wheel speed
float64 p_max  # [N-m/s], maximum wheel power
float64 linearfrictionratio  # [%] ratio relative to max speed value up to which the friction behaves linearly
