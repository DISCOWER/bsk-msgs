# structure for filter-states output for the unscented kalman filter  implementation of the sunline state estimator

uint8 ODUKF_N_MEAS = 3
uint8 ODUKF_N_STATES = 6

builtin_interfaces/Time stamp
float64 timetag  # [s] Current time of validity for output
float64[6] state  # [-] Current estimated state of the filter
float64[6] stateerror  # [-] Current deviation of the state from the reference state
float64[3] postfitres  # [-] PostFit Residuals
int32 numobs  # [-] Valid observation count for this frame
