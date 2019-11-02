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
/kernel下的fight.sh用于编译内核，但是我建议你在编译之前打开文件配置一下环境,可以去翻sh里面的注释。

/Kernel/tools/pk.sh用于打包内核，把编译好的内核丢进去就可以了，有注释。
## 关于菊花如何解锁selinux
/kernel/arch/arm64/configs/merge_kirin970_defconfig中找到并且设置CONFIG_SECURITY_SELINUX_DEVELOP=y
