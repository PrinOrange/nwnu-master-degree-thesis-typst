#import "@preview/pointless-size:0.1.1": zh, zihao

#set page(
  margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
  header: [
    #align(center)[
      #box(stroke: (bottom: 0.5pt), width: 100%)[
        #text(font: "SimSun", baseline: -5pt)[
          结#h(2em)论 \
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
    == 结#h(1em)论
  ]
]

#h(1em);

#text(font: ("Times New Roman", "SimSun"), size: zh(-4))[
  #par(first-line-indent: 2.0em, justify: true, leading: 10pt)[
    论文的结论部分通常是对全文的高度概括与升华，应简洁明了地总结研究目标与主要发现，强调研究的核心贡献与实际意义，并适当指出研究中的局限性及未来的改进方向。在撰写时，应与引言呼应，避免重复正文内容或引入新概念，用精炼有力的语言突出成果与价值，同时保持客观态度，不夸大研究影响。结论不是摘要的复述，而是对研究的整体把握与深层反思，力求在有限篇幅内使读者明确作者解决了什么问题、达成了哪些成果、留下了哪些思考。
  ]
  #par(first-line-indent: 2.0em, justify: true, leading: 10pt)[
    本研究旨在……通过……方法，解决了……问题。研究结果表明……
    本研究的主要贡献在于……，与已有研究相比，本研究……。
    尽管如此，仍存在一些局限性：……，这些限制可能影响……
    未来的研究可以进一步从以下几个方面展开：……。
    综上所述，……（总结性的升华语句，体现整体价值）。
  ]
]
