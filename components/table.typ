#import "@preview/tablem:0.2.0"

#let ntable(caption, content) = {
  show figure: set block(breakable: true)
  figure(caption: figure.caption(position: top)[#caption], kind: table)[
    #show table.cell.where(y: 0): cell => {
      set text(font: ("Times New Roman", "SimSun"), weight: "regular")
      cell
    }
    #tablem.tablem()[#content]
  ]
}

#let tltable(caption, content) = {
  show figure: set block(breakable: true)
  figure(caption: figure.caption(position: top)[#caption], kind: table)[
    #show figure.where(kind: table): set figure.caption(position: top)
    #show table.cell.where(y: 0): cell => {
      set text(font: ("Times New Roman", "SimSun"), weight: "regular")
      cell
    }
    #tablem.three-line-table()[#content]
  ]
}
