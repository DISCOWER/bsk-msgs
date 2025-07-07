# Output structure for CSS array or constellation interface.  Each element contains the raw measurement which should be a cosine value nominally

uint8 MAX_NUM_CSS_SENSORS = 32

builtin_interfaces/Time stamp
float64 timetag  # [s]   Current vehicle time-tag associated with measurements
float64[32] cosvalue  # Current measured CSS value (ideally a cosine value) for the constellation of CSS sensors
