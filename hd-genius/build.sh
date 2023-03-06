#! /bin/bash
make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabihf- -j $(nproc)

# copy files to output folder
mkdir output/boot
make INSTALL_MOD_PATH=./output/ modules_install > /dev/null
cp -r hd-genius/boot output
cp arch/arm/boot/zImage output/boot/zImage
cp arch/arm/boot/dts/tegra30-microsoft-surface-rt-efi.dtb output/boot/tegra30-microsoft-surface-rt-efi.dtb
