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

  // #show raw: it => [
  //   #set text(font: ("Consolas", "Microsoft YaHei"), size: 11pt)
  //   #set line()
  //   #if it.block [
  //     #set text(size: 10pt)
  //     #align(center)[
  //       #box(
  //         stroke: (paint: black, thickness: 1pt, dash: "solid"),
  //         inset: 8pt,
  //       )[#it]
  //     ]
  //   ] else [
  //     #it
  //   ]
  // ]

  #show heading.where(level: 1): set heading(numbering: "第 1 章")
  #show heading.where(level: 2): set heading(numbering: "1.1")
  #show heading.where(level: 3): set heading(numbering: "1.1.1")

  #show heading.where(level: 1): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(-2), weight: "regular")[
      #align(center)[
        #it
      ]
    ]
    #v(1em)
    #counter(math.equation).update(0)
  ]

  #show heading.where(level: 2): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(4), weight: "regular")[
      #set par(leading: 10pt, justify: true, first-line-indent: 0em)
      #it
    ]
    #v(1em)
  ]

  #show heading.where(level: 3): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(4), weight: "regular")[
      #set par(leading: 10pt, justify: true, first-line-indent: 0em)
      #it
    ]
    #v(1em)
  ]

  #set par(leading: 10pt, justify: true, first-line-indent: (amount: 2em, all: true))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #v(1em);
  #content

  #pagebreak();
]
