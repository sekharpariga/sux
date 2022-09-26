# OS  Arch: x86 Intel

Giving another try to build the OS from scratch for x86 intel architecture

#### Steps followed in BIOS

	1. POST (Power-on self-test):
		This tests the hardware of the computer before loading running OS
	2. Bootstrap Loader
		This locates the OS
	3. Software/Drivers
		This locates the software and drivers that interface with the OS once running
	4. CMOS Setup (Complementary Metal-oxide Semiconductor)
		This is a configuration program that enable users to alter hardware and system settings. CMOS is the name of BIOS’ non-volatile memory.


#### Adapting "Release Candidate" development model (Window Size : 1 Month)
	* After each mainline release, there is a 3-week "merge window" period during which new major
		features are introduced into the kernel (Initial 1-week for gathering the features, 2-weeks for development)
	* After merge window closes, there is a 1-week bugfix and stabilization period with daily "release candidate" snapshots
	* rc7 is usually the release candidate

### Tools

	1. nasm
	2. qemu
	3. make
	4. gcc
