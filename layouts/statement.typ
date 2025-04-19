#import "@preview/pointless-size:0.1.1": zh, zihao

#set page(
  margin: (
    y: 3cm,
    x: 3cm,
  ),
  binding: auto,
  numbering: none,
)

#let statement-page(content,title: str ) = [
  #v(10em)
  #text(font: "SimHei", size: zh(-2))[
    #align(center)[
      #title
    ]
  ]
  #v(3em)
  #content
  #pagebreak()
]
