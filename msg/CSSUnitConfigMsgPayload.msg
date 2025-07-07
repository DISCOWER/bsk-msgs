# Structure used to contain the configuration information for  each sun sensor

builtin_interfaces/Time stamp
float64[3] nhat_b  # [-] CSS unit normal expressed in structure
float64 cbias  # [W]  Individual calibration coefficient bias for CSS.  If all CSS have the same gain, then this is set to 1.0. If one CSS has a 10% stronger response for the same input, then the value would be 1.10
