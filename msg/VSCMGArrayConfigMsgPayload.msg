# VSCMG array configuration FSW msg

uint8 MAX_EFF_CNT = 36

builtin_interfaces/Time stamp
float64[36] jslist  # [kgm2] The first axis inertia for VSCMGs
float64[36] jtlist  # [kgm2] The second axis inertia for VSCMGs
float64[36] jglist  # [kgm2] The third axis inertia for VSCMGs
float64[36] iwslist  # [kgm2] The wheel spin axis inertia for VSCMGs
float64[36] omega0list  # [rad/s] The initial wheel speeds for VSCMGs
float64[36] gamma0list  # [rad] The initial gimbal angles for VSCMGs
float64[36] gammadot0list  # [rad/s] The initial gimbal rates for VSCMGs
int32 numvscmg  # [-]    The number of VSCMGs available on vehicle
