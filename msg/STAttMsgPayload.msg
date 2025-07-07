# Output structure for ST attitude measurement in vehicle body frame

builtin_interfaces/Time stamp
uint64 timetag  # [ns] Vehicle time code associated with measurement
float64[3] mrp_bdyinrtl  # [-] MRP estimate of inertial to body transformation
