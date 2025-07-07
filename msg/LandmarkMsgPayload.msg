# Message that defines visibility of a landmark by the on-board camera providing the landmark pixel using            the pinhole camera model

builtin_interfaces/Time stamp
int32 isvisible  # [-] 1 when the landmark is visible by the camera, 0 otherwise.
int32[2] pl  # [-] landmark pixel as view from pinhole camera
