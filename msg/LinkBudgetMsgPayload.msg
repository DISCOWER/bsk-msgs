builtin_interfaces/Time stamp
int8[20] antennaname1  # [-]     Antenna identifier
int8[20] antennaname2  # [-]     Antenna identifier
uint32 antennastate2  # [-]     Current state of the antenna 2 (0: off, 1: Rx, 2: Tx, 3: RxTx)
uint32 antennastate1  # [-]     Current state of the antenna 1 (0: off, 1: Rx, 2: Tx, 3: RxTx)
float64 cnr1  # [-]     Carrier to noise ratio at antenna 1
float64 cnr2  # [-]     Carrier to noise ratio at antenna 2
float64 distance  # [m]     Distance between the two antennas
float64 bandwidth  # [Hz]    Bandwidth of the communication link
float64 frequency  # [Hz]    Operating frequency of the communication link
