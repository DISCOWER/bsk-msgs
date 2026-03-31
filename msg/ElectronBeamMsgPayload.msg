# Message that defines the parameters of an onboard electron beam gun.

builtin_interfaces/Time stamp
float64 energyeb  # [eV] Energy of the primary electron beam
float64 currenteb  # [A]  Primary beam current (positive value represents electrons leaving)
float64 alphaeb  # [-] A number from [0,1] representing the fraction of current actually reaching the target (to simulate beam divergence)
