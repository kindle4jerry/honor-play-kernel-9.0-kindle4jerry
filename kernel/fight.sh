###Mengmengda add

#注释很详细的

#开头环境配置，可以参考官方文档，也可以把我的路径改改

export PATH=$PATH:/home/lumia/aarch64-linux-android-4.9/bin
export CROSS_COMPILE=aarch64-linux-android-

##以下是官方文档给出的命令 看不懂可以不改
mkdir ../out

make ARCH=arm64 O=../out merge_kirin970_defconfig


#这个-j的参数可以自己选择，据不可靠消息表明可以设置为cpu线程数的1-2倍

make ARCH=arm64 O=../out -j40

