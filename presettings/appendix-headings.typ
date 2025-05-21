#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/components/reasoning.typ": reset-reasoning-counter

#let use-appendix-heading-presettings(content) = [

  #show heading.where(level: 1): set heading(numbering: "A")
  #show heading.where(level: 2): set heading(numbering: "1.1")
  #show heading.where(level: 3): set heading(numbering: "1.1.1")

  #show heading.where(level: 1): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(-2), weight: "regular")[
      #align(center)[
        附录 #context (counter(heading).display(it.numbering)) #it.body
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
