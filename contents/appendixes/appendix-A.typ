#import "@preview/pointless-size:0.1.1": zh, zihao

#set page(
  margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
  header: [
    #align(center)[
      #box(stroke: (bottom: 0.5pt), width: 100%)[
        #text(font: "SimSun", baseline: -5pt)[
          附#h(2em)录 \
        ]
      ]
    ]
  ],
  footer: context [
    #box(width: 100%)[
      #align(center)[
        #counter(page).display("1")
      ]
    ]
  ],
)

#align(center)[
  #text(font: ("Arial", "SimHei"), size: 13pt)[
    == 附#h(1em)录#h(1em)A
  ]
]

#h(1em);

#text(font: ("Times New Roman", "SimSun"), size: zh(-4))[
  #par(first-line-indent: 2.0em, justify: true, leading: 10pt)[
    附录是与论文内容密切相关、但编入正文又影响整篇论文编排的条理和逻辑
    性的一些资料，如某些重要的数据表格、计算程序、统计表等，是论文主体的补充内容，可根据需要设置。
  ]
  #par(first-line-indent: 2.0em, justify: true, leading: 10pt)[
    附录的格式与正文相同，并依顺序用大写字母“A，B，C，……”或汉字“一，二，三，……”编序号，如“附录A，附录B，附录C，……”或“附录一，附录二，附录三，……”。只有一个附录时也要编序号，即附录A。每个附录应有标题。附录序号与附录标题之间空一个字符，例如：“附录A甘肃省2018 年度人口统计数据”。
  ]
  #par(first-line-indent: 2.0em, justify: true, leading: 10pt)[
    附录中的图、表、数学表达式、参考文献等另行编序号，与正文分开，一律用阿拉伯数字编码，但在数码前冠以附录的序号，例如“图A-1”，“表B-2”，“式（C-3）”等。
  ]
]
