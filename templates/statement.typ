#import "@preview/pointless-size:0.1.1": zh, zihao

#set page(
  margin: (
    y: 3cm,
    x: 3cm,
  ),
  binding: auto,
  numbering: none,
)

#let statement-page = (title: str, content: content) => [
  #v(10em)

  #text(font: "SimHei", size: zh(-2))[
    #align(center)[
      #title
    ]
  ]

  #v(3em)

  #content

  #par(leading: 1.5em, justify: true, first-line-indent: 2.2em)[
    #text(font: "SimSun", size: zh(4))[
      本学位论文作者完全了解西北师范大学有关保留、使用学位论文的规定，有权保留并向国家有关部门或机构送交论文的纸质版和电子版，允许论文被查阅和借阅。本人授权西北师范大学可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编学位论文，可以公开学位论文的全部或部分内容。
    ]
  ]
  #par(leading: 1.5em, justify: true, first-line-indent: 2.5em)[
    #text(font: "SimSun", size: zh(4))[
      （保密的学位论文在解密后适用本授权书）
    ]
  ]

  #v(5em)
  #box()[
    #h(20em)
    #text(font: "SimSun", size: zh(4))[
      学位论文作者签名:
    ]
    #v(1em)
  ]
  #box()[
    #h(20em)
    #text(font: "SimSun", size: zh(4))[
      签字日期:~~~~~~年~~~~月~~~~日
    ]
  ]
]

#pagebreak()
