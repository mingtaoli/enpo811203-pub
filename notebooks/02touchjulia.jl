### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ e6d02bc0-103b-11ec-17ab-652d07c170a7
md"""
# Julia简要介绍

## 启动julia

双击Julia.exe，或者我们在命令行模式下输入julia后回车（前提是之前已经设置好PATH环境变量），就能打开Julia的REPL界面。

## Julia的四种模式
四种模式分别是REPL模式、Help模式、shell模式、包管理模式。

打开julia之后的模式直接就是REPL模式。

在REPL下输入?就会进入Help模式。退格键退回REPL模式。

输入;则进入shell模式，如果不清楚shell是什么，可以通俗的理解，就当时windows下的命令提示符，可以输入并执行命令。同样的退格退出该模式。

在REPL模式下输入]就进入Pkg模式，可以执行包管理的操作。我们这里暂时不展开。同样的退格退出该模式。

**因为我们现在不是在Julia的REPL下，所以此段不在这里做演示。**
"""

# ╔═╡ 66fcd604-aa15-4215-85a7-bbcb8dda34c7
md"""## 让我们来熟悉一下Julia的一些基本操作

在Julia的REPL界面，输入 pwd() ，就可以输出当前工作目录
"""

# ╔═╡ 3bc9cddb-2d83-47e5-be1a-fe664ff5ceb4
pwd()

# ╔═╡ Cell order:
# ╠═e6d02bc0-103b-11ec-17ab-652d07c170a7
# ╟─66fcd604-aa15-4215-85a7-bbcb8dda34c7
# ╠═3bc9cddb-2d83-47e5-be1a-fe664ff5ceb4
