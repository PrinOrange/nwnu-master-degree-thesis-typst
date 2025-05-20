#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title
#import "@preview/hydra:0.6.1": hydra

#let outline-template(content) = [
  #set page(
    margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
    header: context [
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

  #set heading(outlined: false)
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))
  #set par(leading: 1em)

  #show heading.where(level: 1): it => [
    #text(font: ("Arial", "SimHei"), size: zh(-2), weight: "regular")[
      #align(center)[
        #spaced-title(it)
      ]
    ]
    #v(0.5em);
  ]

  #show outline.entry.where(level: 4): none
  #show outline.entry.where(level: 5): none
  #show outline.entry.where(level: 6): none
  #show outline.entry.where(level: 7): none

  #show outline.entry.where(level: 1): it => {
    block[
      #text(font: ("Times New Roman", "SimHei"), size: zh(-4))[#it]
    ]
  }

  #show outline.entry.where(level: 2): it => {
    block[
      #text(
        font: ("Times New Roman", "SimSun"),
        size: zh(5),
        weight: "regular",
      )[#it]
    ]
  }

  #show outline.entry.where(level: 3): it => {
    block[
      #text(
        font: ("Times New Roman", "SimSun"),
        size: zh(5),
        weight: "regular",
      )[#it]
    ]
  }

  #content
]
