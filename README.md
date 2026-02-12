# Basilisk-ROS 2 Messages

ROS 2 message definitions automatically converted from the [Basilisk astrodynamics framework](https://hanspeterschaub.info/basilisk/) C/C++ message definitions.

This package provides the ROS 2 message interface used by the [Basilisk-ROS 2 Bridge](https://github.com/DISCOWER/bsk-ros2-bridge) to enable communication between Basilisk and ROS 2 nodes. It includes a conversion tool that can be re-run to update message definitions as Basilisk evolves.

## Install

```bash
cd your_ros2_workspace/src
git clone https://github.com/DISCOWER/bsk-msgs.git
cd ..
colcon build --packages-select bsk-msgs
source install/setup.bash
```

## Usage

Once built and sourced, import the message types in your ROS 2 nodes:

**Example:**

```python
from bsk_msgs.msg import CmdForceBodyMsgPayload, CmdTorqueBodyMsgPayload, SCStatesMsgPayload
```

All converted messages should include a `builtin_interfaces/Time stamp` field for ROS 2 compatibility, along with the original Basilisk fields and preserved documentation comments.

## Message Conversion Tool

The conversion tool regenerates the ROS 2 `.msg` files from Basilisk source code. It handles C/C++ to ROS 2 type mapping, fixed-size array processing via BSK macro resolution, and comment preservation from the original headers.

```bash
export BSK_PATH=/path/to/basilisk
python3 tools/bsk_message_converter.py
```

## References

- [Basilisk Astrodynamics Simulation](https://hanspeterschaub.info/basilisk/)
- [ROS 2 Documentation](https://www.ros.org/)
- [Basilisk-ROS 2 Bridge](https://github.com/DISCOWER/bsk-ros2-bridge)