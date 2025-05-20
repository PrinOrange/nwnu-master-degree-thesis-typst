#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title;
#import "/presettings/paper-presetting.typ": use-paper-presettings;
#import "/presettings/foot-pagenumbers.typ": use-arabic-pagenumber;

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

  #show heading.where(level: 1): it => [
    #text(font: ("arial", "SimHei"), size: zh(-2), weight: "regular")[
      #align(center)[
        #spaced-title(it.body)
      ]
    ]
    #v(0.5em);
  ]

  #set par(leading: 10pt, justify: true, first-line-indent: (
    amount: 2em,
    all: true,
  ))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #v(0.5em);
  #content

]
