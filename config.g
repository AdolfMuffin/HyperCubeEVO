; Configuration file for Duet WiFi (firmware version 2.03)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Mon Nov 16 2020 20:32:17 GMT+0300 (Moscow Standard Time)

; General preferences
G90                                       ; send absolute coordinates...
M83                                       ; ...but relative extruder moves
M550 P"Croco"                             ; set printer name
M669 K1                                   ; select CoreXY mode
G29 S1;

; Network
M552 S1                                   ; enable network
M586 P0 S1                                ; enable HTTP
M586 P1 S0                                ; disable FTP
M586 P2 S0                                ; disable Telnet

; Drives
M569 P0 S1                                ; physical drive 0 goes forwards
M569 P1 S1                                ; physical drive 1 goes forwards
M569 P2 S1                                ; physical drive 2 goes forwards
M569 P3 S0                                ; physical drive 3 goes backwards
M584 X0 Y1 Z2 E3                          ; set drive mapping
M350 X16 Y16 Z16 E16 I1                   ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z2400.00 E400.00        ; set steps per mm
M566 X1200.00 Y1200.00 Z12.00 E120.00     ; set maximum instantaneous speed changes (mm/min)
M203 X15000.00 Y15000.00 Z180.00 E1200.00 ; set maximum speeds (mm/min)
M201 X3000.00 Y3000.00 Z20.00 E250.00     ; set accelerations (mm/s^2)
M906 X1500 Y1500 Z400 E300 I30            ; set motor currents (mA) and motor idle factor in per cent
M84 S60                                   ; Set idle timeout

; Axis Limits
M208 X80 Y0 Z0 S1                         ; set axis minima
M208 X360 Y305 Z230 S0                    ; set axis maxima

; Endstops
M574 X2 Y2 S1                             ; set active high endstops
M574 Z1 S2                                ; set endstops controlled by probe

; Z-Probe
M307 H7 A-1 C-1 D-1 ; Disable Heater 7
M574 Z1 S2 ; Set endstops controlled by probe
M558 P5 H7 F120 T8000 ; Set Z probe type to switch and the dive height + speeds
G31 P500 X10 Y-50 Z0.5                   ; set Z probe trigger value, offset and trigger height
M557 X70:360 Y0:300 S50                  ; define mesh grid

; Heaters
M307 H0 B0 S1.00                          ; disable bang-bang mode for the bed heater and set PWM limit
M305 P0 T100000 B4100 R4700                     ; set thermistor + ADC parameters for heater 0
M143 H0 S150                              ; set temperature limit for heater 0 to 150C
M305 P1 T100000 B4725               ; set thermistor + ADC parameters for heater 1
M143 H1 S300                              ; set temperature limit for heater 1 to 300C

; Fans
M106 P0 S0 I0 F500 H-1                    ; set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H1 T80                 ; set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Tools
M563 P1 D0 H1 F0:1                        ; define tool 1
G10 P1 X0 Y0 Z0                           ; set tool 1 axis offsets
G10 P1 R0 S0                              ; set initial tool 1 active and standby temperatures to 0C

; Custom settings are not defined

