### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ d1e8bbf9-c687-42da-88e4-95d731fc85ad
md"""# 熟悉Julia"""

# ╔═╡ a94472c3-8a03-4398-b8c0-1cf71ee4152d
md"""## 安装Julia 1.6.2

到[Julia的官方站点](https://julialang.org/)下载最新的Julia（目前版本是1.6.2），我们可以使用[适用于Windows的x64免安装版本](https://julialang-s3.julialang.org/bin/winnt/x64/1.6/julia-1.6.2-win64.zip)。也可以在国内的镜像站点下载，比如直接从[清华的镜像](https://mirrors.tuna.tsinghua.edu.cn/julia-releases/bin/winnt/x64/1.6/julia-1.6.2-win64.zip)下载。下载完后解压到合适的目录，比如 D:\soft_using\julia-1.6.2。

接下来，我们*需要把julia的可执行文件julia.exe的目录 D:\soft_using\julia-1.6.2\bin 加到环境变量PATH中去*。如果不清楚什么是环境变量或者什么是PATH，请[参阅此文](https://www.cnblogs.com/qtiger/p/13903609.html)。
"""

# ╔═╡ f5d320e6-e8bd-455d-9ce9-f2a9e37ffc29
md"""## 安装VSCode
Visual Studio Code(简称VSCode/VSC)是当今最流行的免费开源代码编辑器，由微软出品。它支持几乎所有主流的开发语言的语法高亮、智能代码补全、自定义热键、括号匹配、代码片段、代码对比Diff、Git等特性，支持插件扩展，并针对网页开发和云端应用开发做了优化。软件跨平台支持 Win、Mac 以及 Linux，运行流畅。

到[VSCode的官方站点](https://code.visualstudio.com/)下载最新的安装包，根据向导安装即可。可把vscode加到文件夹和文件的右键菜单中，便于使用。接下来给vscode装上Julia插件。关于VSCode的入门操作，可以参考[菜鸟教程上的VScode教程](https://www.runoob.com/w3cnote/vscode-tutorial.html)。"""

# ╔═╡ d4b9d09d-58d1-4d3b-8754-180b27874b6a
md"""## Julia安装Pluto包
首先参考[Julia中文文档](https://docs.juliacn.com/latest/manual/getting-started/)了解一些Julia的入门基础知识。

在julia提示符下，通过以下命令安装Pluto包：


```
using Pkg
Pkg.add("Pluto")
```
"""

# ╔═╡ 48e4cc4c-eec8-4768-a7b4-339607b323bc
md"""
在Julia提示符下通过如下命令启动Pluto：

```
using Pluto
Pluto.run()```

通常系统会自动调用默认的浏览器打开一个页面，然后就开始Pluto之旅吧。
"""

# ╔═╡ 52b492d0-85c6-4e21-8efd-7d9a25f06cde
md"""# 测试一下

我们这里简要测试一下Julia的命令，看看系统运行的样子。"""

# ╔═╡ f8240954-d993-4229-a438-96e00ef461ce
x=2.0

# ╔═╡ 6811adfd-6403-427c-97ea-47cb0b06ee33
sin(x)

# ╔═╡ 90608d89-2b8a-4efb-99f2-a3f0fa13b40d
@bind y html"<input type=range>"

# ╔═╡ 1d59eb51-24a2-49d2-8d11-fdd681e417bf
md"""我们通过以上这个命令，把y与拖拉杆绑定，下面我们使用一下这个变量y试试，并且计算一下sin（y）看看""" 

# ╔═╡ 28d55a1e-7f63-4505-8ab7-cb475eef55f3
y

# ╔═╡ b105c8da-174b-4820-8bf1-55d855ba0edd
sin(y)

# ╔═╡ Cell order:
# ╟─d1e8bbf9-c687-42da-88e4-95d731fc85ad
# ╟─a94472c3-8a03-4398-b8c0-1cf71ee4152d
# ╟─f5d320e6-e8bd-455d-9ce9-f2a9e37ffc29
# ╟─d4b9d09d-58d1-4d3b-8754-180b27874b6a
# ╠═48e4cc4c-eec8-4768-a7b4-339607b323bc
# ╟─52b492d0-85c6-4e21-8efd-7d9a25f06cde
# ╠═f8240954-d993-4229-a438-96e00ef461ce
# ╠═6811adfd-6403-427c-97ea-47cb0b06ee33
# ╠═90608d89-2b8a-4efb-99f2-a3f0fa13b40d
# ╟─1d59eb51-24a2-49d2-8d11-fdd681e417bf
# ╠═28d55a1e-7f63-4505-8ab7-cb475eef55f3
# ╠═b105c8da-174b-4820-8bf1-55d855ba0edd
