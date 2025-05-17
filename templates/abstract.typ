#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title;

#let abstract-template(content) = [
  // Page settings.
  #set page(
    margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
    header: [
      #align(center)[
        #box(stroke: (bottom: 0.5pt), width: 100%)[
          #text(font: ("Times New Roman", "SimSun"), baseline: -5pt)[
            #spaced-title("目录")
          ]
        ]
      ]
    ],
    numbering: "I",
    footer: context [
      #box(width: 100%)[
        #align(center)[
          #counter(page).display("I")
        ]
      ]
    ],
  )
  #set heading(outlined: false)
  #show heading.where(level: 1): it => [
    #text(font: ("Arial", "SimHei"), size: zh(-2))[
      #align(center)[
        #spaced-title(it)
      ]
    ]
    #v(1em)
  ]

  #set par(leading: 10pt, justify: true, first-line-indent: (amount: 2em, all: true))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #v(1em);
  #content
]
