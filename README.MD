<p align="center">
  <img src="./assets/logo.svg" width="200px" />
</p>

<h1 align="center">
硕士研究生学位论文模板
</h1>

> [!WARNING]
> 本模板仍然在开发中，欢迎贡献本项目。

本 Typst 模板适用于西北师范大学硕士研究生学位论文。在开始之前，你需要先
[学习了解 Typst](https://typst.app/docs/) ，或者你可以参考
[中文教程](https://typst-doc-cn.github.io/guide/) 。

<p align="center">
  <img src="./assets/preview.png" style="max-width: 300px;border: 2px solid black;" />
</p>

## 快速开始

本工程构建脚本需要 GNU Make 工具。如果你在 Windows 平台上，请先在安装并配置 GNU Make 工具。

```bash
choco install make
```

安装完后在本目录下用命令行检查 make 是否正常工作

```bash
make ping # 预期输出： "Pong"
```

首先确保你在本机[安装了 Typst 软件并配置环境](https://github.com/typst/typst?tab=readme-ov-file#installation)
。推荐使用 Visual Studio Code 作为编辑器。

然后安装本论文必需的字体文件。为方便使用，所需字体已储存在本仓库下的
`./assets/font` 目录下。本论文涉及的字体列表如下：

- 宋体（中易宋体，SimSun）
- 黑体（中易黑体，SimHei）
- Times New Roman
- 楷体 GB2312
- 仿宋 GB2312

可以执行安装字体的命令，一键安装所有必需字体。

```bash
make install-fonts
```

如果希望在编辑时动态预览文档，可执行 

```bash
make watch
```

若编译文档，可以执行

```bash
make compile
```

## 免责声明

本 Typst 模板
**非官方模板**，虽已可能按论文格式标准完整复现模板。但仍可能存在部分误差。**用户对使用本模板自负。**

## 协议

除部分涉及学校单位相关的资源（如西北师范大学文字 LOGO、字体等），本项目其余部分以 MIT 协议开源。

PS：如果你喜欢本模板，不妨把我和本项目添加到你的论文致谢中吧 😋~
