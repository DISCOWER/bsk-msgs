# RW array configuration FSW msg

uint8 MAX_EFF_CNT = 36

builtin_interfaces/Time stamp
float64[36] jslist  # [kgm2] The spin axis inertia for RWs
int32 numrw  # [-]    The number of reaction wheels available on vehicle
float64[36] umax  # [Nm]   The maximum RW motor torque
