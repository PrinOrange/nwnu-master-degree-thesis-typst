#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ":spaced-title

#set page(
  margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
  header: [
    #align(center)[
      #box(stroke: (bottom: 0.5pt), width: 100%)[
        #text(font: "SimSun", baseline: -5pt)[
          #spaced-title("目录") \
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
#show outline.entry.where(level: 2): it => {
  block(
    text(
      font: "SimHei",
      size: zh(-4),
      weight: "bold",
      it,
    ),
  )
}
#show outline.entry.where(level: 3): it => {
  block(
    text(
      font: "SimSun",
      size: zh(5),
      weight: "regular",
      it,
    ),
  )
}

#outline(
  title: [
    #box(width: 100%)[
      #align(center)[#text(font: "SimHei", size: zh(3))[#spaced-title("目录")] ]
    ]
  ],
  indent: auto,
)

