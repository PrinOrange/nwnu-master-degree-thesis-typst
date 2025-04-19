#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title
#import "../templates/paratext.typ": paratext-page
#import "../components/format.typ": paragraph

#paratext-page(numbering: "I", header-text: "目录", in-toc: false, title: "目录")[
  #show outline.entry.where(level: 1): none
  #show outline.entry.where(level: 4): none
  #show outline.entry.where(level: 5): none
  #show outline.entry.where(level: 6): none
  #show outline.entry.where(level: 7): none

  // 只显示 2、3 级别的标题
  #show outline.entry.where(level: 2): it => {
    block(
      text(
        font: "SimHei",
        size: zh(-4),
        weight: "bold",
        it,
      ),
    )
  }
  #show outline.entry.where(level: 3): it => {
    block(
      text(
        font: "SimSun",
        size: zh(5),
        weight: "regular",
        it,
      ),
    )
  }

  #outline(
    title: none,
    indent: 0em,
  )
]


