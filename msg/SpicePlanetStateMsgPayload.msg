uint8 MAX_BODY_NAME_LENGTH = 64

builtin_interfaces/Time stamp
float64 j2000current  # s Time of validity for the planet state
float64[3] positionvector  # m True position of the planet for the time
float64[3] velocityvector  # m/s True velocity of the planet for the time
int32 computeorient  # (-) Flag indicating whether the reference should be computed
int8[64] planetname  # -- Name of the planet for the state
