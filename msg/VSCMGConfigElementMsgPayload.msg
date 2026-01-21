# VSCMG array configuration FSW msg

builtin_interfaces/Time stamp
float64[3] gshat0_b  # [-]    The initial VSCMG first axis matrix in body frame components
float64[3] gthat0_b  # [-]    The initial VSCMG second axis matrix in body frame components
float64[3] gghat_b  # [-]    The VSCMG third axis matrix in body frame components
float64 js  # [kgm2] The first axis inertia for VSCMG
float64 jt  # [kgm2] The second axis inertia for VSCMG
float64 jg  # [kgm2] The third axis inertia for VSCMG
float64 iws  # [kgm2] The wheel spin axis inertia for VSCMG
float64 omega0  # [rad/s] The initial wheel speed for VSCMG
float64 gamma0  # [rad] The initial gimbal angle for VSCMG
float64 gammadot0  # [rad/s] The initial gimbal rate for VSCMG
