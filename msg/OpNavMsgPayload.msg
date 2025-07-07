# structure for filter-states output for the unscented kalman filter  implementation of the sunline state estimator

builtin_interfaces/Time stamp
float64 timetag  # [s] Current time of validity for output
int32 valid  # Valid measurement if 1, invalid if 0
float64[3] r_bn_n  # [m] Current estimated state of the filter
float64[3] r_bn_b  # [m] Current estimated state of the filter
float64[3] r_bn_c  # [m] Current estimated state of the filter
int32 planetid  # [-] Planet being navigated, Earth=1, Mars=2, Jupiter=3
int32 faultdetected  # [-] Bool if a fault is detected
