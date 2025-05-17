#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title

#let outline-template() = [

  #set page(
    margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
    header: [
      #align(center)[
        #box(stroke: (bottom: 0.5pt), width: 100%)[
          #text(font: ("Times New Roman", "SimSun"), baseline: -5pt)[
            #spaced-title("目录")
          ]
        ]
      ]
    ],
    footer: context [
      #box(width: 100%)[
        #align(center)[
          #counter(page).display("I")
        ]
      ]
    ],
  )

  #set par(leading: 10pt, justify: true, first-line-indent: (amount: 2em, all: true))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

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
    title: align(center)[
      #box(width: 100%)[
        #text(font: "SimHei", weight: "bold")[
          #spaced-title("目录")
        ]
      ]
      #v(1em)
    ],
    indent: 0em,
  )
]
