# Structure used to define the output euler set for attitude reference generation

builtin_interfaces/Time stamp
float64[3] state  # []   3D attitude orientation coordinate set The units depend on the attitude coordinate chosen and can be either radians (i.e. Euler angles) or dimensionless (i.e. MRP, quaternions, etc.)
float64[3] rate  # []   3D attitude rate coordinate set.  These rate coordinates can be either omega (in rad/sec) or attitude coordiante rates with appropriate units
