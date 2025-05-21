#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title;
#import "@preview/hydra:0.6.1": hydra
#import "/presettings/paper-presetting.typ": use-paper-presettings;
#import "/presettings/page-numbering.typ": use-roman-pagenumber;
#import "/presettings/common-style.typ": unnumbered-heading-style;

#let abstract-template(content) = [
  #show: use-paper-presettings
  #show: use-roman-pagenumber
  // Page settings.
  #set page(header: context [
    #align(center)[
      #box(stroke: (bottom: 0.5pt), width: 100%)[
        #text(font: ("Times New Roman", "SimSun"), baseline: -5pt)[
          #spaced-title(hydra(1, use-last: true))
        ]
      ]
    ]
  ])

  #set heading(outlined: false)

  #show: unnumbered-heading-style;
  #set par(leading: 10pt, justify: true, first-line-indent: (
    amount: 2em,
    all: true,
  ))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #v(0.5em);
  #content
]
