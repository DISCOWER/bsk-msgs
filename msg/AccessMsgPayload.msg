# Message that defines access to spacecraft from a groundLocation, providing access, range, and elevation with  * repect to a ground location.

builtin_interfaces/Time stamp
uint64 hasaccess  # [-] 1 when the writer has access to a spacecraft; 0 otherwise.
float64 slantrange  # [m] Range from a location to the spacecraft.
float64 elevation  # [rad] Elevation angle for a given spacecraft.
float64 azimuth  # [rad] Azimuth angle for a spacecraft.
float64 range_dot  # [m/s] Range rate of a given spacecraft relative to a location in the SEZ rotating frame.
float64 el_dot  # [rad/s] Elevation angle rate for a given spacecraft in the SEZ rotating frame.
float64 az_dot  # [rad/s] Azimuth angle rate for a given spacecraft in the SEZ rotating frame.
float64[3] r_bl_l  # [m] Spacecraft position relative to the groundLocation in the SEZ frame.
float64[3] v_bl_l  # [m/s] SEZ relative time derivative of r_BL vector in SEZ vector components.
