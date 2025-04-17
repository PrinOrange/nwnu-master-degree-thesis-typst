#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title;

#let paratext-page(content, title: str, addInTOC: true, numbering: str, headerText: none, enablePagebreak: true) = [
  #set page(
    margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
    header: [
      #align(center)[
        #box(stroke: (bottom: 0.5pt), width: 100%)[
          #text(font: ("Times New Roman", "SimSun"), baseline: -5pt)[
            #if headerText == none {
              [#spaced-title(title)]
            } else {
              [#spaced-title(headerText)]
            }
          ]
        ]
      ]
    ],
    footer: context [
      #box(width: 100%)[
        #align(center)[
          #counter(page).display(numbering)
        ]
      ]
    ],
  )
  #align(center)[
    #text(font: ("Arial", "SimHei"), size: zh(3))[
      #if addInTOC {
        [== #spaced-title(title)]
      } else {
        [#spaced-title(title)]
      }
    ]
  ]
  #v(1em);
  #content
  #if enablePagebreak {
    [#pagebreak()]
  } else { [] }
]
