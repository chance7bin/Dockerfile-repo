# 一. MPI的安装

## 1.下载MPI 安装包

到官网：http://www.mpich.org/downloads/ 下载mpi-3.2.1版本的MPI 包。

## 2.解压安装包

到下载安装包的目录下，可以看到有mpi-3.2.1.tar.gz的压缩包，在终端运行如下命令：

`tar -zxvf mpich-3.2.1.tar.gz`

可以解压安装包。若无法解压，尝试 tar -xvf mpich-3.2.1.tar.gz。

## 3.进入解压出来的目录下

`cd mpich-3.2.1`

cd 是come into directory 的缩写。

## 4.配置编译环境

`./configure  --prefix=/usr/local/mpich-3.2.1`

其中 `--prefix` 表示其安装路径。

## 5.编译

`make`

## 6.安装

`make install`

或者将编译和安装一块执行：

`make && make install`

## 7.设置环境变量

 用vi或vim打开bashrc文件

 `vi ~/.bashrc`

然后在最下面添加环境变量, 这里需要vi编辑的基础知识，可以学习下三种模式：插入模式，命令行模式和底行模式。给个学习链接：http://www.runoob.com/linux/linux-vim.html

`export PATH=/usr/local/mpi-3.2.1/bin:$PATH`

设置环境变量是为了在执行mpi命令时可以让计算机自己找到相应的一些函数库，而不至于报错找不到命令或文件。

## 8.更新（激活）环境变量

`source ~/.bashrc`

此时已经完成了mpi的安装。

>
>注意：
>
>（1）prefix参数表示安装路径
>
>（2）在配置时可能会遇到缺少C++的编译环境之类的，运行命令在线安装即可：
>
>`sudo apt-get install fort77, sudo apt-get install gfortran`
>
>（3）命令（如`mpicc`、`mpirun`）是我们新添加的，必须添加绝对路径才能正常使用。因此，我们需要配置一下环境变量。
>

# 二. 通过mpi接口运行“Hello World”, 检测安装效果

## 1.进入刚才解压的mpi-3.2.1目录

`cd mpich-3.2.1`

然后

`ls`

## 2.可以看到里面有一个hellow.c的c源文件，我们通过mpi接口对其进行编译

`mpicc hellow.c -o hellow`

-o 是objective的缩写，hellow是文件名，意思是把hellow.c 源文件编译成名字为hellow的目标（可执行）文件。编译完成后发现examples目录下会多出一个hellow文件。

## 3.运行hellow文件

`mpirun -np N ./hellow`

`-np` 表示number of processors, 即进程数，N 自己取值。

比如我的命令和结果为：

```sh
~/mpich-3.2.1/examples$ mpirun -np 4 ./hellow
Hello world from process 0 of 4
Hello world from process 1 of 4
Hello world from process 2 of 4
Hello world from process 3 of 4

[root@localhost mpich-3.3.1]# mpirun -np 10 ./examples/cpi
```

至此，mpi安装成功。

>参考链接
>
>https://blog.csdn.net/She_Said/article/details/95040921
>
>https://blog.csdn.net/qq_39709535/article/details/82858793
