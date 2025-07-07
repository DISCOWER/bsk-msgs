# magnetic torque bar array configuration msg

uint8 MAX_EFF_CNT = 36

builtin_interfaces/Time stamp
int32 nummtb  # [-] number of magnetic torque bars on the spacecraft
float64[36] maxmtbdipoles  # [A-m2] maximum commandable dipole for each magnetic torque bar
