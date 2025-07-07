# structure for filter-states output for the unscented kalman filter implementation of the inertial state estimator

uint8 AKF_N_STATES = 6

builtin_interfaces/Time stamp
float64 timetag  # [s] Current time of validity for output
float64[6] state  # [-] Current estimated state of the filter
int32 numobs  # [-] Valid observation count for this frame
