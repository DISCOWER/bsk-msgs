# Structure used to define accelerometer package data

builtin_interfaces/Time stamp
uint64 meastime  # [Tick] Measurement time for accel
float64[3] gyro_b  # [r/s] Angular rate measurement from gyro
float64[3] accel_b  # [m/s2] Acceleration in platform frame
