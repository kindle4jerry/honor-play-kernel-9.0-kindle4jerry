#!/bin/bash
./mkbootimg --kernel Image.gz --base 0x0 --cmdline "loglevel=4 initcall_debug=n page_tracker=on unmovable_isolate1=2:192M,3:224M,4:256M printktimer=0xfff0a000,0x534,0x538 androidboot.selinux=enforcing buildvariant=user" --tags_offset 0x07A00000 --kernel_offset 0x00080000 --ramdisk_offset 0x07C00000 --header_version 1 --os_version 9 --os_patch_level 2018-11-01  --output kernel.img

# Image.gz是你编译出来的产物，丢到这里，然后后面的kernel.img是这里的打包产物。中间几个参数按照官方来没啥问题，注意中间时间os_patch_level需要参考你原来内核的系统的安卓安全补丁版本
