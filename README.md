# Basilisk-ROS2 Messages (bsk-msgs)

ROS 2 message definitions automatically converted from the Basilisk Astrodynamics Framework (BSK) C/C++ message definitions.

This repository provides the ROS 2 message interface used by the [BSK-ROS2-Bridge](https://github.com/DISCOWER/bsk-ros2-bridge) to enable communication between the [Basilisk astrodynamics framework](https://hanspeterschaub.info/basilisk/) and ROS 2 nodes.

## Overview

This repository contains ROS 2 message definitions that have been automatically converted from Basilisk Astrodynamics Framework's (BSK) C/C++ message definitions. The conversion tool ensures compatibility between BSK's internal messaging system and ROS 2, enabling seamless integration of BSK modules within ROS 2 environments.

## Features

- **Automatic Conversion**: Includes a tool to automatically convert BSK's message definitions to ROS 2 `.msg` files
- **Future-Proof**: The conversion tool can be re-run to update message definitions as BSK evolves
- **Type Mapping**: Intelligent mapping from C/C++ types to ROS 2 message types
- **Comment Preservation**: Maintains documentation and comments from original BSK headers
- **Macro Support**: Handles BSK macro definitions for array sizes and constants

## Installation

### Build Instructions

1. Clone the repository into your ROS 2 workspace:
   ```bash
   cd your_ros2_workspace/src
   git clone https://github.com/DISCOWER/bsk-msgs.git
   ```

2. Build the package:
   ```bash
   cd ..
   colcon build --packages-select bsk-msgs
   ```

3. Source the workspace:
   ```bash
   source install/setup.bash
   ```

## Usage

Once built and sourced, you can import and use the BSK message types in your ROS 2 nodes:

```python
from bsk_msgs.msg import CmdForceBodyMsgPayload, CmdTorqueBodyMsgPayload, SCStatesMsgPayload
# Use the message types in your ROS 2 nodes
```

## Message Conversion Tool

The repository includes a conversion tool that can regenerate the ROS 2 message definitions from BSK source code.

### Running the Converter

1. Ensure the `BSK_PATH` environment variable points to your Basilisk installation:
   ```bash
   export BSK_PATH=/path/to/basilisk
   ```

2. Run the conversion tool:
   ```bash
   python3 tools/bsk_message_converter.py
   ```

### Conversion Features

The conversion tool (`tools/bsk_message_converter.py`) provides:

- **Type Mapping**: Converts C/C++ types to appropriate ROS 2 types
- **Array Handling**: Processes fixed-size arrays using BSK macro definitions
- **Comment Conversion**: Preserves documentation from BSK headers
- **Timestamp Addition**: Automatically adds ROS 2 timestamp fields
- **Macro Resolution**: Resolves BSK macro definitions for array sizes and constants

## Message Structure

All converted messages include:
- **Timestamp**: `builtin_interfaces/Time stamp` field for ROS 2 compatibility
- **Original Fields**: All fields from the BSK message definition
- **Documentation**: Preserved comments and documentation from BSK headers

## Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test the conversion tool if modifying it
5. Submit a pull request

## References

- [Basilisk Astrodynamics Simulation](https://hanspeterschaub.info/basilisk/)
- [ROS 2 Documentation](https://www.ros.org/)
- [BSK-ROS2 Bridge](https://github.com/DISCOWER/bsk-ros2-bridge.git)

## License

This project is licensed under the BSD-3-Clause License - see the [LICENSE](LICENSE) file for details.

## Authors

**Elias Krantz**  
Email: eliaskra@kth.se

