#import "@preview/pointless-size:0.1.1": zh, zihao
#import "@preview/pointless-size:0.1.1": zh, zihao

#let intro-list(content, title: str) = [
  #par(first-line-indent: (all: true, amount: 1em))[
    #text(font: ("Times New Roman", "SimHei"), size: zh(4))[
      #title
    ]
  ]
  #set enum(
    numbering: "[1]",
    indent: 1em,
    body-indent: 0.5em,
  )
  #set par(justify: true, leading: 1em)
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))
  #content
  #v(2pt);
]


== 个人简历、在学期间发表的学术论文及研究成果
#intro-list(title: "1. 个人简历")[
  + 2002年05月15日出生于河南省郑州市。
  + XXXX年XX月——20XX年XX月，在XX大学XX学院（系）XX专业本科毕业并获得XX学学士学位。
  + 20XX年XX月——至今，在西北师范大学XX院（系）XX学科攻读XX学硕士学位。
]
#intro-list(title: "2. 在学期间发表的学术论文")[
  + XXX, XXX. Static Oxidation Model of Al-Mg/C Dissipation Thermal Protection Materials[J]. Rare Metal Materials and Engineering, 2010, 39(Suppl.1):520–524. (SCI收录, IDS号为669JS, IF=0.16)
  + XXX, XXX. 精密超声振动切削单晶铜的计算机仿真研究[J]. 系统仿真学报, 2007, 19(4):738–741, 753. (EI收录号: 20071310514841)
  + XXX, XXX. 局部多孔质气体静压轴向轴承静态特性的数值求解[J]. 摩擦学学报, 2007(1):68–72. (EI收录号: 20071510544816)
  + XXX, XXX. 硬脆光学晶体材料超精密切削理论研究综述[J].机械工程学报, 2003, 39(8):15–22.
]
#intro-list(title: "3. 在学期间申请的软件著作权及专利")[
  + XXX,XXX. 基于大数据的智慧商城微信小程序软件V1.0.登记号：XXXX（软件著作权,已登记）
  + XXX, XXX. 一种基于物联网的温控机构.申请号：XXXXXX（实用新型,已授权）
]
#intro-list(title: "4. 在学期间主持和参与的科研项目")[
  + 2022年度甘肃省教育厅优秀研究生“创新之星”项目：基于信息新鲜度的多接入传感网络调度策略研究,项目编号:XXXX。（主持）
  + 国家自然科学基金项目: 面向B5G的毫米波大规模MIMO低空无人机异构网络信道模型及其回程应用，项目编号：XXXX,执行期限：2019/01-2022/12。（参与）
]
