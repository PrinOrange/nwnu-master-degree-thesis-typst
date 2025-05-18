#import "@preview/tablem:0.2.0"

#let ntable(caption, content) = {
  figure(
    caption: figure.caption(position: top)[#caption],
    kind: table,
  )[
    #show table.cell.where(y: 0): cell => {
      set text(font: ("Times New Roman", "SimSun"), weight: "bold")
      cell
    }
    #tablem.tablem()[#content]
  ]
}

#let tltable(caption, content) = {
  figure(
    caption: figure.caption(position: top)[#caption],
    kind: table,
  )[
    #show figure.where(kind: table): set figure.caption(position: top)
    #show table.cell.where(y: 0): cell => {
      set text(font: ("Times New Roman", "SimSun"), weight: "bold")
      cell
    }
    #tablem.three-line-table()[#content]
  ]
}
