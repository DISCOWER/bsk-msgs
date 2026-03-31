# Structure holding individual current components used in spacecraftChargingEquilibrium.

builtin_interfaces/Time stamp
float64 electroncurrent  # [A] ambient plasma electron current
float64 ioncurrent  # [A] ambient plasma ion current
float64 seeelectroncurrent  # [A] secondary electron emission from ambient electrons
float64 seeioncurrent  # [A] secondary electron emission from ambient ions
float64 backscatteringcurrent  # [A] ambient electron backscattering current
float64 photoelectriccurrent  # [A] photoelectric current
float64 nonbeamcurrent  # [A] sum of all non-beam current components
float64 beamcurrent  # [A] primary beam current term (servicer emit or target receive)
float64 beamseecurrent  # [A] beam-induced secondary electron emission current
float64 beambackscatteringcurrent  # [A] beam-induced backscattering current
float64 totalcurrent  # [A] total current used in equilibrium solve
