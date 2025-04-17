# 西北师范大学 硕士研究生学位论文模板

本 Typst 模板适用于西北师范大学硕士研究生学位论文。在开始之前，你需要先
[学习了解 Typst](https://typst.app/docs/) ，或者你可以参考
[中文教程](https://typst-doc-cn.github.io/guide/) 。

## 快速开始

本工程构建脚本需要 GNU Make 工具。如果你在 Windows 平台上，请先在安装并配置 GNU Make 工具。

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

## 免责声明

本 Typst 模板
**非官方模板**，而为在校生自己根据西北师范大学硕士学位论文格式要求编写。\
已尽可能按照学校的格式要求完整复现论文模板。但仍然可能存在部分误差。可能会有检查不通过的风险，请谨慎使用。**对于用户使用本模板所造成的一切后果，由用户本人负责。**

## 开源协议

除部分涉及学校单位相关的资源（如 LOGO、字体等），本项目其余部分以 MIT 协议开源。
