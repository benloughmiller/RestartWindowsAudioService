# RestartWindowsAudioService

## Overview
Occasionally, the audio on my Windows computer becomes distorted, typically resulting in:

- Quiet sound  
- Tinny output  
- Other audio glitches  

While restarting the computer fixes the issue, it’s not very convenient. This script provides a quicker solution by automatically resetting the necessary audio services.

## How the Script Works
The script restarts two core Windows services that manage audio:

- **Windows Audio** (`Audiosrv`)
- **Windows Audio Endpoint Builder** (`AudioEndpointBuilder`)

Script Steps:
- Stops the Audiosrv service
- Stops the AudioEndpointBuilder service
- Starts the Audiosrv service
- Starts the AudioEndpointBuilder service

If there are any issues while restarting a service, the script will notify the user before closing with an error. Otherwise, it will notify that the services were restarted successfully before closing.
