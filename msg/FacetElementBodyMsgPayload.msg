# Message used to define a single facet geometry configuration message

builtin_interfaces/Time stamp
float64 area  # [m^2] Facet area
float64[3] r_copb_b  # [m] Facet center of pressure location wrt point B expressed in B frame components
float64[3] nhat_b  # [-] Facet normal vector expressed in hub B frame components
float64[3] rothat_b  # [-] Facet rotation axis expressed in hub B frame components
float64 c_diffuse  # [-] Facet diffuse reflection optical coefficient
float64 c_specular  # [-] Facet specular reflection optical coefficient
