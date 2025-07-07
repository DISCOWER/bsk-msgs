# Structure used to define the message containing planet limb data for opNav

builtin_interfaces/Time stamp
float64 timetag  # --[s]   Current vehicle time-tag associated with measurements
int32 valid  # --  Valid measurement if 1, not if 0
int32 numlimbpoints  # -- [-] Number of limb points found
int64 cameraid  # -- [-]   ID of the camera that took the snapshot
float64 planetids  # -- [-]   ID for identified celestial body
