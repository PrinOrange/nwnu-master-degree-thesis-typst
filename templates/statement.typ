#import "@preview/pointless-size:0.1.1": zh, zihao

#let statement-template(content) = [
  #set page(
    margin: (
      y: 3cm,
      x: 3cm,
    ),
    binding: auto,
    numbering: none,
  )
  #v(10em)

  #set heading(outlined: false)
  #show heading.where(level: 1): it => [
    #text(font: "SimHei", size: zh(-2), weight: "regular")[
      #align(center)[
        #set heading(outlined: false)
        #it
      ]
    ]
    #v(3em)
  ]

  #set par(leading: 10pt, justify: true, first-line-indent: (
    amount: 2em,
    all: true,
  ))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #content
]
