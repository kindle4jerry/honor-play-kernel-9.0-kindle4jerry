# honor-play-kernel-9.0-kindle4jerry
官方开源内核9.0小改
## 功能
解锁SELinux

解锁一些官方隐藏的CPU，GPU调度器。
## 已知问题
gpu频率暂在部分rom中不可控或可靠性不高。
## 已知bug
## 未知bug
## 疑似编译教程
###第零步 环境配置
编辑/kernel/fight.sh，里面开头有环境配置，里面有注释。
###第一步
输入 源码
cd到kernel下面执行 sh fight.sh
/kernel下的fight.sh用于编译内核，但是我建议你在编译之前打开文件配置一下环境,可以去翻sh里面的注释。
输出 /out/arch/arm64/boot/Image.gz
###第二步
输入 把Image.gz丢到/kernel/tools里
/Kernel/tools/pk.sh用于打包内核，文件里有参数的相关注释。
输出 kernel.img 就能用了
## 关于菊花如何解锁selinux
/kernel/arch/arm64/configs/merge_kirin970_defconfig中找到并且设置CONFIG_SECURITY_SELINUX_DEVELOP=y
