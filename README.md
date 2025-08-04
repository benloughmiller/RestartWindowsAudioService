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
- If not already running with admin privileges, it will relaunch itself as an administrator
- Stops the Audiosrv service
- Stops the AudioEndpointBuilder service
- Starts the Audiosrv service
- Starts the AudioEndpointBuilder service

If there are any issues while restarting a service, the script will notify the user before closing with an error. Otherwise, it will notify that the services were restarted successfully before closing.

## To Run the Script
1. Download the (`restart-audio-service.ps1`) file
2. Right click on the file and select **Run with PowerShell** in the context menu that opens
3. The script will restart itself if it is not run as admin. Approve the file script to run as an admin
4. The script will now run. If the script runs successfully, test your audio device to see if the issue has resolved
