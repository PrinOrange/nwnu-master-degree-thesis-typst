#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title;
#import "/presettings/paper-presetting.typ": use-paper-presettings;
#import "/presettings/page-numbering.typ": use-arabic-pagenumber;
#import "/presettings/common-style.typ": unnumbered-heading-style;

#let paratext-template(content) = [
  #show: use-paper-presettings
  #show: use-arabic-pagenumber
  // Page settings.
  #set page(header: [
    #align(center)[
      #box(stroke: (bottom: 0.5pt), width: 100%)[
        #text(font: ("Times New Roman", "SimSun"), baseline: -5pt)[
          #spaced-title("目录")
        ]
      ]
    ]
  ])

  #show: unnumbered-heading-style

  #set par(leading: 10pt, justify: true, first-line-indent: (
    amount: 2em,
    all: true,
  ))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #v(0.5em);
  #content

]
