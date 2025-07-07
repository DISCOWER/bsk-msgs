# structure for filter-states output for the unscented kalman filter  implementation of the sunline state estimator

uint8 PIXLINE_N_MEAS = 6
uint8 PIXLINE_N_STATES = 9

builtin_interfaces/Time stamp
float64 timetag  # [s] Current time of validity for output
float64[9] state  # [-] Current estimated state of the filter
float64[9] stateerror  # [-] Current deviation of the state from the reference state
float64[6] postfitres  # [-] PostFit Residuals
int32 numobs  # [-] Valid observation count for this frame
