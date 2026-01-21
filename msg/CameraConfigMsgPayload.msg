# Structure used to define the camera parameters

int32 MAX_STRING_LENGTH = 256

builtin_interfaces/Time stamp
int64 cameraid  # [-]   ID of the camera that took the snapshot*/
int32 ison  # The camera is taking images at rendering rate if 1, 0 if not*/
int8[256] parentname  # [-] Name of the parent body to which the camera should be attached
float64 fieldofview  # [rad]   Camera Field of View, edge-to-edge along camera y-axis */
int32[2] resolution  # [-] Camera resolution, width/height in pixels (pixelWidth/pixelHeight in Unity) in pixels*/
uint64 renderrate  # [ns] Frame time interval at which to capture images in units of nanosecond */
float64[3] camerapos_b  # [m] Camera position in body frame */
float64[3] sigma_cb  # [-] MRP defining the orientation of the camera frame relative to the body frame */
int8[256] skybox  # string containing the star field preference
int32 postprocessingon  # (Optional) Enable post-processing of camera image. Value of 0 (protobuffer default) to use viz default which is off, -1 for false, 1 for true
float64 ppfocusdistance  # (Optional) Distance to the point of focus, minimum value of 0.1, Value of 0 to turn off this parameter entirely.
float64 ppaperture  # (Optional) Ratio of the aperture (known as f-stop or f-number). The smaller the value is, the shallower the depth of field is. Valid Setting Range: 0.05 to 32. Value of 0 to turn off this parameter entirely.
float64 ppfocallength  # [m] (Optional) Valid setting range: 0.001m to 0.3m. Value of 0 to turn off this parameter entirely.
int32 ppmaxblursize  # (Optional) Convolution kernel size of the bokeh filter, which determines the maximum radius of bokeh. It also affects the performance (the larger the kernel is, the longer the GPU time is required). Depth textures Value of 1 for Small, 2 for Medium, 3 for Large, 4 for Extra Large. Value of 0 to turn off this parameter entirely.
int32 updatecameraparameters  # If true, commands camera to update Instrument Camera to current message's parameters
int32 rendermode  # (Optional) Value of 0 to render visual image (default), value of 1 to render depth buffer to image
float64[2] depthmapclippingplanes  # (Optional) [m] Set the bounds of rendered depth map by setting the near and far clipping planes when in renderMode=1 (depthMap mode). Default values of 0.1 and 100.
int32 showhudelementsinimage  # (Optional) Value of 0 (protobuffer default) to use viz default, -1 for false, 1 for true
