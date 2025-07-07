# Output structure for ST structure in vehicle body frame

builtin_interfaces/Time stamp
uint64 timetag  # [ns] Time tag placed on the output state
float64[4] qinrtl2case  # [-] Quaternion to go from the inertial to case
