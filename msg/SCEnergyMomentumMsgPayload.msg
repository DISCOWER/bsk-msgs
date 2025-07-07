# This structure is used in the messaging system to communicate what the  state of the vehicle is currently.

builtin_interfaces/Time stamp
float64 spacecraftorbenergy  # [J] Total orbital kinetic energy
float64 spacecraftrotenergy  # [J] Total rotational energy
float64[3] spacecraftorbangmompntn_n  # [kg m^2/s] Total orbital angular momentum about N in N frame components
float64[3] spacecraftrotangmompntc_n  # [kg m^2/s] Total rotational angular momentum about C in N frame components
