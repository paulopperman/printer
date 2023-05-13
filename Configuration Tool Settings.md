General Preferences

| **Board**                                                | **Duet 3 MB 6HC**       |      |
| -------------------------------------------------------- | ----------------------- | ---- |
| **Firmware version**                                     | 3.3 or later   (stable) |      |
| **Run in standalone mode without SBC**                   | False                   |      |
| **Read config-overide.g file at end of startup process** | False                   |      |
| **Save print state on power failure**                    | False                   |      |

Printer Geometry

| **Printer Geometry** | **CoreXY** |      |
| -------------------- | ---------- | ---- |
| **X minimum**        | 0 mm       |      |
| **X maximum**        | 2040 mm    |      |
| **Y minimum**        | 0 mm       |      |
| **Y maximum**        | 960 mm     |      |
| **Z minimum**        | 0 mm       |      |
| **Z maximum**        | 960 mm     |      |

Homing Preferences

| **Homing Speed (First Pass)**                       | **30 mm/s** |      |
| --------------------------------------------------- | ----------- | ---- |
| **Homing Speed (Second Pass)**                      | 6 mm/s      |      |
| **Travel Speed**                                    | 100 m/s     |      |
| **Z Dive Height**                                   | 5 mm        |      |
| **Set dive height to 30mm for initial calibration** | False       |      |

Expansion Boards

| **EXP3HC** | **3 count** | **Add 3 boards, info is auto populated from the data in the config tool** |
| ---------- | ----------- | ------------------------------------------------------------ |
|            |             |                                                              |

Drives

| **Drive X – Driver**      | **Board 3 – Driver 0** |                                                              |
| ------------------------- | ---------------------- | ------------------------------------------------------------ |
| **Drive X – Endstop Pin** | io1.in                 |                                                              |
| **Drive Y – Driver**      | Board 3 –   Driver 1   |                                                              |
| **Drive Y – Endstop Pin** | io2.in                 |                                                              |
| **Drive Z – Driver**      | Driver 0               | There are   actually 6 drives (0-5) on the main board for Z axis.  Can’t seem to configure this in the tool. |
| **Drive Z – Endstop Pin** | Not assigned           |                                                              |
| **Drive E0**              | Board 3 –   Driver 2   | Extruder   drive                                             |

Heaters

| **0 – Type**   | **Nozzle**       |                                              |
| -------------- | ---------------- | -------------------------------------------- |
| **0 – Output** | Board 3 –   out0 |                                              |
| **0 – Sensor** | Board 3 – temp0  |                                              |
|                |                  | More heaters   for the bed to be added later |

Fan Mapping

| **Fan 0 - Output** | **Board 3 – out4** | **12V extruder fan** |
| ------------------ | ------------------ | -------------------- |
| **Fan 1 – Output** | Board 2 – out5     | Water fan            |
| **Fan 2 – Output** | Board 3 –   out6   | Water pump           |

Z Probe

| **Input Pin**           | **Board 3 – io1.in** |      |
| ----------------------- | -------------------- | ---- |
| **Modulation Pin**      | Not assigned         |      |
| **PWM Control Channel** | Not assigned         |      |

Axes

| **X - Direction**               | **Backwards** |                                     |
| ------------------------------- | ------------- | ----------------------------------- |
| **X - Microstepping**           | x16 (on)      | Default                             |
| **X – Steps per mm**            | 80            | Default                             |
| **X – Max Speed Change (mm/s)** | 15 mm/s       | Default                             |
| **X – Max Speed (mm/s)**        | 100 mm/s      | Default                             |
| **X – Acceleration (mm/s^2)**   | 500 mm/s^2    | Default                             |
| **X – Motor Current (mA)**      | 2800 mA       | From notes,   not existing firmware |
| **Y - Direction**               | Backwards     |                                     |
| **Y - Microstepping**           | x16 (on)      | Default                             |
| **Y – Steps per mm**            | 80            | Default                             |
| **Y – Max Speed Change (mm/s)** | 15 mm/s       | Default                             |
| **Y – Max Speed (mm/s)**        | 100 mm/s      | Default                             |
| **Y – Acceleration (mm/s^2)**   | 500 mm/s^2    | Default                             |
| **Y – Motor Current (mA)**      | 2800 mA       | From notes,   not existing firmware |
| **Z - Direction**               | Forwards      |                                     |
| **Z - Microstepping**           | x16 (on)      | Default                             |
| **Z – Steps per mm**            | 400           | Default                             |
| **Z – Max Speed Change (mm/s)** | 1 mm/s        | Default                             |
| **Z – Max Speed (mm/s)**        | 3 mm/s        | Default                             |
| **Z – Acceleration (mm/s^2)**   | 20 mm/s^2     | Default                             |
| **Z – Motor Current (mA)**      | 800 mA        | Default,   notes say 1000           |

Extruders

| **E0 - Direction**               | **Forwards** |                          |
| -------------------------------- | ------------ | ------------------------ |
| **E0 - Microstepping**           | x16(on)      |                          |
| **E0 – Steps per mm**            | 837          | From existing   firmware |
| **E0 – Max Speed Change (mm/s)** | 2 mm/s       |                          |
| **E0 – Max Speed (mm/s)**        | 20 mm/s      | default                  |
| **E0 – Acceleration (mm/s^2)**   | 250 mm/s^2   | Default                  |
| **E0 – Motor Current (mA)**      | 800 mA       | default                  |

Motor Current Reduction

| **Reduce motor currents when idle** | **True** | **Disabled on existing firmware** |
| ----------------------------------- | -------- | --------------------------------- |
| **Idle Current Percentage**         | 30 %     | default                           |
| **Idle Timeout**                    | 30 s     | Default                           |

Endstop Configuration

| **X – Endstop Type**        | **Switch** |      |
| --------------------------- | ---------- | ---- |
| **X – Endstop Location at** | Low End    |      |
| **Y – Endstop Type**        | Switch     |      |
| **Y – Endstop Location at** | High End   |      |
| **Z – Endstop Type**        | Z-Probe    |      |
| **Z – Endstop Location at** | Low End    |      |

Z Probe

| **Probe X Offset**       | **0 mm** | **Verify this**                    |
| ------------------------ | -------- | ---------------------------------- |
| **Probe Y Offset**       | 0 mm     | Verify This                        |
| **Probing Speed**        | 2 mm/s   | default                            |
| **Deploy/Retract Probe** | false    |                                    |
| **Probe Type**           | Switch   | Verify this – what is the   probe? |
| **Trigger Height**       | 2.5 mm   | default                            |
| **Trigger Value**        | 500      | default                            |

General Heater Settings

| **General Heater Settings** |      |                                     |
| --------------------------- | ---- | ----------------------------------- |
|                             |      | Fill in when applying   bed heaters |

Heater Configuration

| **Heater 0 Nozzle – Temp Limit** | **240 C**   | **Higher than default, lower than current firmware.  Allow 200C for PLA** |
| -------------------------------- | ----------- | ------------------------------------------------------------ |
| **Heater 0 Nozzle – PWM Limit**  | 100 %       | default                                                      |
| **Heater 0 Nozzle – R25**        | 100000 Ohms | default                                                      |
| **Heater 0 Nozzle – Beta**       | 4138 K      | default                                                      |
| **Heater 0 Nozzle – C**          | **0**       | **default**                                                  |

Cooling Fans

| **Fan 0 – Speed**                                   | **0 %** | **Fan 0 – Extruder fan default** |
| --------------------------------------------------- | ------- | -------------------------------- |
| **Fan 0 – Frequency**                               | 500 Hz  | default                          |
| **Fan 0 – Thermostatic Control**                    | No      |                                  |
| **Fan 0 – Monitored Heaters**                       | N/A     | No   thermostatic control        |
| **Fan 0 – Thermostatic Mode Triggered Temperature** | N/A     | No   thermostatic control        |
| **Fan 1 – Speed**                                   | 100 %   | default                          |
| **Fan 1 – Frequency**                               | 500 Hz  | default                          |
| **Fan 1 – Thermostatic Control**                    | Yes     |                                  |
| **Fan 1 – Monitored Heaters**                       | H0      | Monitor   extruder               |
| **Fan 1 – Thermostatic Mode Triggered Temperature** | 45 C    |                                  |
| **Fan 2 – Speed**                                   | 100 %   | default                          |
| **Fan 2 – Frequency**                               | 500 Hz  | default                          |
| **Fan 2 – Thermostatic Control**                    | Yes     |                                  |
| **Fan 2 – Monitored Heaters**                       | H0      | Monitor   extruder               |
| **Fan 2 – Thermostatic Mode Triggered Temperature** | 45 C    |                                  |

Tool Preferences

| **Wait for temperatures to be reached on tool change** | **True** | **default**                                       |
| ------------------------------------------------------ | -------- | ------------------------------------------------- |
| **Select the First Tool on start-up**                  | True     | Only one tool   right now, start with it selected |

Tools

| **Tool 0 – Number**             | **0**        | **default**        |
| ------------------------------- | ------------ | ------------------ |
| **Tool 0 – Name**               | SuperVolcano | Print head         |
| **Tool 0 – Extruders**          | E0           |                    |
| **Tool 0 – Heaters**            | Not selected |                    |
| **Tool 0 – Print Cooling Fans** | FAN0         |                    |
| **Tool 0 – XYZ Offsets**        | (0,0,0)      | No offsets, Verify |

Bed Probing for Mesh Bed Compensation

| **X Minimum**    | **15 mm** | **default** |
| ---------------- | --------- | ----------- |
| **X Maximum**    | 215 mm    | default     |
| **Y Minimum**    | 15 mm     | default     |
| **Y Maximum**    | 195 mm    | default     |
| **Grid Spacing** | 20 mm     | default     |

Orthogonal Axis Compensation

| **Enable Orthogonal Axis Compensation** | **False** |      |
| --------------------------------------- | --------- | ---- |
|                                         |           |      |

Miscellaneous

| **Enable support for PanelDue**  | **True** |                                  |
| -------------------------------- | -------- | -------------------------------- |
| **Custom Settings for config.g** | None     | Add further   customization here |

