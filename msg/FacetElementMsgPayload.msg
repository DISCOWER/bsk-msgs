# Message used to define a single facet geometry configuration message

builtin_interfaces/Time stamp
float64 area  # [m^2] Facet area
float64[3] r_copf_f  # [m] Facet center of pressure location wrt facet frame origin point F
float64[3] nhat_f  # [-] Facet normal vector expressed in facet frame F components
float64[3] rothat_f  # [-] Facet rotation axis expressed in facet frame F components
float64[3] r_fb_b  # [m] Facet location relative to hub frame origin point B
float64 c_diffuse  # [-] Facet diffuse reflection optical coefficient
float64 c_specular  # [-] Facet specular reflection optical coefficient
