# Traintastic CS :: Operating System

Traintastic CS consists of three projects:
- [PCB and schemetic](https://github.com/traintastic/traintastic-cs-pcb)
- [Firmware for Raspberry Pi Pico](https://github.com/traintastic/traintastic-cs-firmware)
- Operating System for Raspberry Pi (this project)


## Building

The Traintastic CS operating system is Embedded Linux, it is a bare minimum operating system just enough to run [Traintastic](https://github.com/traintastic/traintastic).
The Traintastic CS operating system is build using [Buildroot](https:://buildroot.org).
Buildroot requires a Linux system approx 15GB of disk space, building it takes time, depending on the PC it can take about 1 hour!


### Raspberry Pi 4

To build the Traintastic CS operating system for a **Raspberry Pi 4** (all models) run:
```shell
cd buildroot
make BR2_EXTERNAL=../traintastic-cs traintastic_cs_rpi4_defconfig
make all
```

