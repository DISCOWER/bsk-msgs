# Structure used to define the output definition for vehicle effectors

uint8 MAX_EFF_CNT = 36

builtin_interfaces/Time stamp
float64[36] wheeltorque  # [N-m] VSCMG wheel torque array
float64[36] gimbaltorque  # [N-m] VSCMG gimbal torque array
