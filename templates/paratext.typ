#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title;

#let paratext-template(content) = [
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
    footer: context [
      #box(width: 100%)[
        #align(center)[
          #counter(page).display("1")
        ]
      ]
    ],
  )

  #show heading.where(level: 2): it => [
    #text(font: ("arial", "SimHei"), size: zh(-2))[
      #align(center)[
        #spaced-title(it.body)
      ]
    ]
  ]

  #set par(leading: 10pt, justify: true, first-line-indent: (amount: 2em, all: true))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #v(1em);
  #content
  
]
