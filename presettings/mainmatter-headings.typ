#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/components/reasoning.typ": reset-reasoning-counter

#let use-mainmatter-heading-presettings(content) = [

  #show heading.where(level: 1): set heading(numbering: "第 1 章")
  #show heading.where(level: 2): set heading(numbering: "1.1")
  #show heading.where(level: 3): set heading(numbering: "1.1.1")

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
