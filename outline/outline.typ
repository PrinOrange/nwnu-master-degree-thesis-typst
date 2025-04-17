#import "@preview/pointless-size:0.1.1": zh, zihao

#set page(
  margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
  header: [
    #align(center)[
      #box(stroke: (bottom: 0.5pt), width: 100%)[
        #text(font: "SimSun", baseline: -5pt)[
          目#h(2em)录 \
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

#show outline.entry.where(level: 1): none
#show outline.entry.where(level: 4): none
#show outline.entry.where(level: 5): none
#show outline.entry.where(level: 6): none
#show outline.entry.where(level: 7): none
#outline(
  title: [
    #box(width: 100%)[
      #align(center)[#text(font: "SimHei",size: zh(3))[目#h(1em)录]]
    ]
  ],
  indent: auto,
)

#show outline.entry.where(level: 2): it => {
  block(
    above: 0.8em,
    below: 0.8em,
    text(
      size: 12pt,
      weight: "semibold",
      fill: rgb("#2a2a2a"),
      it,
    ),
  )
}

#show outline.entry.where(level: 3): it => {
  block(
    above: 0.6em,
    below: 0.6em,
    text(
      size: 11pt,
      weight: "regular",
      fill: rgb("#4a4a4a"),
      it,
    ),
  )
}


