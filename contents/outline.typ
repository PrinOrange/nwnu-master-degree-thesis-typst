#import "/templates/outline.typ": outline-template
#import "/lib/text.typ": spaced-title
#show: outline-template;

#outline(indent: 1em, title: align(center)[
  #box(width: 100%)[
    #text(font: "SimHei", weight: "bold")[
      #spaced-title("目录")
    ]
  ]
  #v(1em)
])
