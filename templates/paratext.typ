#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title;

#let paratext-page(content, title: str, in-toc: true, numbering: str, header-text: none, enable-pagebreak: true) = [
  // Page settings.
  #set page(
    margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
    header: [
      #align(center)[
        #box(stroke: (bottom: 0.5pt), width: 100%)[
          #text(font: ("Times New Roman", "SimSun"), baseline: -5pt)[
            #if header-text == none {
              [#spaced-title(title)]
            } else {
              [#spaced-title(header-text)]
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

  // Title
  #align(center)[
    #text(font: ("Arial", "SimHei"), size: zh(3))[
      #if in-toc {
        [== #spaced-title(title)]
      } else {
        [#spaced-title(title)]
      }
    ]
  ]
  #v(1em);
  #content

  // Pagebreak
  #if enable-pagebreak {
    [#pagebreak()]
  } else { [] }
]
