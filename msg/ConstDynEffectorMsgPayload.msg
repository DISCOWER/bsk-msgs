# Structure used to Constraint Dynamic Effector output message

builtin_interfaces/Time stamp
float64[3] fc_n  # [N] Constraint force applied in Inertial frame
float64[3] l1_b1  # [N.m] Constraint torque applied on s/c 1 in B1 frame
float64[3] l2_b2  # [N.m] Constraint torque applied on s/c 2 in B2 frame
float64[3] psi_n  # [m] Direction constraint violation
float64 fc_mag_filtered  # [N] Magnitude of filtered constraint force applied in Inertial frame
float64 l1_mag_filtered  # [N.m] Magnitude of filtered constraint torque on s/c 1 applied in B1 frame
float64 l2_mag_filtered  # [N.m] Magnitude of filtered constraint torque on s/c 2 applied in B2 frame
