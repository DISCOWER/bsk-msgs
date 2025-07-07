# Structure used to define the image

builtin_interfaces/Time stamp
uint64 timetag  # --[ns]   Current vehicle time-tag associated with measurements*/
int32 valid  # --  A valid image is present for 1, 0 if not*/
int64 cameraid  # -- [-]   ID of the camera that took the snapshot*/
int32 imagebufferlength  # -- Length of the buffer for recasting
int8 imagetype  # -- Number of channels in each pixel, RGB = 3, RGBA = 4
