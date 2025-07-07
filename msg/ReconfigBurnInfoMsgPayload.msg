builtin_interfaces/Time stamp
int32 flag  # 0:not scheduled yet, 1:not burned yet, 2:already burned, 3:skipped (combined with another burn)
float64 t  # [s] simulation time of the scheduled burn since module reset
float64 thrustontime  # thrust on duration time [s]
float64[3] sigma_rn  # target attitude
