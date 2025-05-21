#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title

#let numbered-heading-style(content) = [
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

#let unnumbered-heading-style(content) = [
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
