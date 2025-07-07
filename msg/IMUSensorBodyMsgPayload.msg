# Output structure for IMU structure in vehicle body frame

builtin_interfaces/Time stamp
float64[3] dvframebody  # m/s Accumulated DVs in body
float64[3] accelbody  # m/s2 Apparent acceleration of the body
float64[3] drframebody  # r  Accumulated DRs in body
float64[3] angvelbody  # r/s Angular velocity in platform body
