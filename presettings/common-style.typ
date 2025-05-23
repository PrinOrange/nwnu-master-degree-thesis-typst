#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title

// 使用带编号的标题样式
#let numbered-section-heading(content) = [
  #show heading.where(level: 1): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(-2), weight: "regular")[
      #align(center)[
        #it
        #v(1em)
      ]
    ]
  ]
  #show heading.where(level: 2): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(4), weight: "regular")[
      #it
    ]
    #v(0.5em)
  ]
  #show heading.where(level: 3): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(4), weight: "regular")[
      #it
    ]
    #v(0.5em)
  ]
  #content
]

// 使用不带编号的标题样式
#let unnumbered-chapter-heading(content) = [
  #show heading.where(level: 1): it => [
    #text(font: ("Arial", "SimHei"), size: zh(-2), weight: "regular")[
      #align(center)[
        #spaced-title(it)
      ]
    ]
    #v(0.5em);
  ]
  #show heading.where(level: 2): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(4), weight: "regular")[
      #it
    ]
    #v(0.5em)
  ]
  #show heading.where(level: 3): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(4), weight: "regular")[
      #it
    ]
    #v(0.5em)
  ]
  #content
]

#let paragraph-style(content) = [
  #set par(leading: 10pt, justify: true, first-line-indent: (
    amount: 2em,
    all: true,
  ));
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))
  #content
]

#let quote-style(content) = [
  #show quote: set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #show quote: set quote(quotes: false, block: true)
  #show quote: set par(leading: 10pt, justify: true, first-line-indent: (
    amount: 2em,
    all: true,
  ))

  #content
]
