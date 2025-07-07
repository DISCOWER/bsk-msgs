# Structure used to define circles processed from image

uint8 MAX_CIRCLE_NUM = 10

builtin_interfaces/Time stamp
uint64 timetag  # --[ns]   Current vehicle time-tag associated with measurements
int32 valid  # --  Valid measurement if 1, not if 0
int64 cameraid  # -- [-]   ID of the camera that took the snapshot
float64[10] planetids  # -- [-]   Ids for identified celestial bodies
float64[10] circlesradii  # -- [-]   Radius rho in pixels of the circles
