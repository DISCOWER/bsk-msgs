# structure for filter-states output for the unscented kalman filter  implementation of the sunline state estimator

uint8 HEAD_N_STATES_SWITCH = 5

builtin_interfaces/Time stamp
float64 timetag
float64[5] state
float64[5] stateerror
float64[3] postfitres
