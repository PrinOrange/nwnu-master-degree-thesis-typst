#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title;

#let mainmatter-template(content) = [
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

  #set heading(numbering: "1.1.1")
  #show heading.where(level: 1): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(-2), weight: "regular")[
      #align(center)[
        #counter(heading).display("第 1 章") #h(1em) #spaced-title(it.body)
      ]
    ]
  ]

  #show heading.where(level: 2): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(4), weight: "regular")[
      #set par(leading: 10pt, justify: true, first-line-indent: 0em)
      #counter(heading).display("1.1") #it.body
    ]
  ]

  #show heading.where(level: 3): it => [
    #text(font: ("arial", "SimHei"), size: zh(4), weight: "regular")[
      #set par(leading: 10pt, justify: true, first-line-indent: 0em)
      #counter(heading).display("1.1.1") #it.body
    ]
  ]

  #set par(leading: 10pt, justify: true, first-line-indent: (amount: 2em, all: true))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #v(1em);
  #content

  #pagebreak();
]
