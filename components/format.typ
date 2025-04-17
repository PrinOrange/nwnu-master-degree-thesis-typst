#import "@preview/pointless-size:0.1.1": zh, zihao

#let statement-paragraph(content) = [
  #par(leading: 1.5em, justify: true, first-line-indent: (amount: 2em, all: true))[
    #text(font: "SimSun", size: zh(4))[
      #content
    ]
  ]
]

#let paragraph(content) = [
  #set par(leading: 10pt, justify: true, first-line-indent: (amount: 2em, all: true))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))
  #par[#content]
]