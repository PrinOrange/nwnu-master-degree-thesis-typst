#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/components/reasoning.typ": reset-reasoning-counter

#let use-mainmatter-heading-numbering(content) = [
  #show heading.where(level: 1): set heading(numbering: "第 1 章")
  #show heading.where(level: 2): set heading(numbering: "1.1")
  #show heading.where(level: 3): set heading(numbering: "1.1.1")
  #content
]

#let use-appendix-heading-numbering(content) = [
  #show heading.where(level: 1): set heading(numbering: "附录A")
  #show heading.where(level: 2): set heading(numbering: "1.1")
  #show heading.where(level: 3): set heading(numbering: "1.1.1")
  #content
]
