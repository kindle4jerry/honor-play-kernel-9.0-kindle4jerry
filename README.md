# honor-play-kernel-9.0-kindle4jerry
官方开源内核9.0小改
## 功能
解锁SELinux

解锁一些官方隐藏的CPU，GPU调度器。
## 已知问题
gpu频率调节暂在部分rom中不可靠。
## 注意
仅适用于emui9.0为基础的系统，9.1就不太行  
已经测试可以用的系统 9.0.0.156,或者以156作底包刷的原生  
已经测试不可用的系统 9.0.0.181或更高  
## 疑似编译教程
### 第零步 环境配置
编辑/kernel/fight.sh，里面开头有环境配置，里面有注释。
### 第一步 编译
输入 源码

cd到kernel下面执行 sh fight.sh

/kernel下的fight.sh用于编译内核，但是我建议你在编译之前打开文件配置一下环境,可以去翻sh里面的注释。

(p.s.这个过程可能会非常慢，表急，慢慢等，也可能会出错，表慌，错了就再跑一遍)

输出 /out/arch/arm64/boot/Image.gz
### 第二步 打包
输入 把Image.gz丢到/kernel/tools里

/Kernel/tools/pk.sh用于打包内核，文件里有参数的相关注释。

输出 kernel.img 就能用了
## 关于菊花如何解锁selinux
/kernel/arch/arm64/configs/merge_kirin970_defconfig中找到并且设置CONFIG_SECURITY_SELINUX_DEVELOP=y

同时慎用cmdline那个方法停用selinux，菊花会让你开不开机的。
## p.s.
我就搬运了这个玩意才知道原来gayhub的语言识别是有数量限制的，太多了不让你识别
