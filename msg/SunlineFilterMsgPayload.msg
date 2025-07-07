# structure for filter-states output for the unscented kalman filter  implementation of the sunline state estimator

uint8 MAX_N_CSS_MEAS = 32
uint8 SKF_N_STATES = 6

builtin_interfaces/Time stamp
float64 timetag  # [s] Current time of validity for output
float64[6] state  # [-] Current estimated state of the filter
float64[6] stateerror  # [-] Current deviation of the state from the reference state
float64[32] postfitres  # [-] PostFit Residuals
int32 numobs  # [-] Valid observation count for this frame
