#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-text
#import "../lib/date.typ": format-date-en, format-date-zh

#let cover-template(
  (
    title,
    subtitle,
    title-english,
    year,
    month,
    category-number,
    university-number,
    udc,
    secrecy,
    student-name,
    student-name-english,
    supervisor-name,
    supervisor-name-english,
    supervisor-title,
    supervisor-title-english,
    practical-tutor-name,
    practical-tutor-name-english,
    practical-tutor-title,
    practical-tutor-title-english,
    profession-category,
    profession-category-english,
    profession-major,
    profession-major-english,
    special-program,
  ),
) = [
  #set page(
    margin: (
      y: 2.5cm,
      x: 3.17cm,
    ),
    binding: auto,
    numbering: none,
  )

  #v(1.5cm)
  #text(font: ("Times New Roman", "FangSong_GB2312"), size: zh(4))[
    #grid(
      columns: (1fr, 10fr, 5fr),
      gutter: 0em,
      [],
      align(left)[
        #box(width: 1.7cm)[
          分~类~号~
        ]
        #box(width: 2cm, baseline: 0em, stroke: (bottom: 1pt))[
          #align(center)[
            #text(baseline: -0.2em)[
              #category-number
            ]
          ]
        ] \
        #v(0.5em)
        #box(width: 1.7cm)[
          U~D~C~
        ]
        #box(width: 2cm, baseline: 0em, stroke: (bottom: 1pt))[
          #align(center)[
            #text(baseline: -0.2em)[
              #udc
            ]
          ]
        ]
      ],
      align(left)[
        #box(width: 1.3cm)[
          密~级~
        ]
        #box(width: 2cm, baseline: 0em, stroke: (bottom: 1pt))[
          #align(center)[
            #text(baseline: -0.2em)[
              #secrecy
            ]
          ]
        ] \
        #v(0.5em)
        #box(width: 1.3cm)[
          编~号~
        ]
        #box(width: 2cm, baseline: 0em, stroke: (bottom: 1pt))[
          #align(center)[
            #text(baseline: -0.2em)[
              #university-number
            ]
          ]
        ]
      ],
    )
  ]

  #v(1.5cm)

  #align(center)[
    #image("/assets/logo.svg", width: 6.3cm, height: 1.03cm)
  ]

  #text(font: "simsun", size: zh(2))[
    #align(center)[
      #spaced-text("硕士学位论文", 0.3em)
    ]
  ]

  #v(-0.2cm)

  #text(size: zh(3), font: "SimSun")[
    #align(center)[
      （专 业 学 位）
    ]
  ]

  #v(1cm)

  #align(center)[
    #par(leading: 1.25em)[
      #text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(1))[
        #align(center)[
          #title
        ]
      ]
    ]

    #par(leading: 1.25em)[
      #text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(2))[
        #align(center)[
          #subtitle
        ]
      ]
    ]
  ]


  #v(2em)

  #text(font: ("Times New Roman", "simsun"), size: zh(4))[
    #align(center)[
      #box(width: 100%, inset: 4pt)[
        #box(width: 5cm)[
          #align(left)[
            研#h(1fr)究#h(1fr)生#h(1fr)姓#h(1fr)名：
          ]
        ]
        #box(width: 6cm, stroke: (bottom: 1pt), baseline: 2pt)[
          #align(center)[
            #text(baseline: -4pt)[
              #student-name
            ]
          ]
        ]
      ]
      #box(width: 100%, inset: 4pt)[
        #box(width: 5cm)[
          #align(left)[
            指#h(1fr)导#h(1fr)教#h(1fr)师#h(1fr)姓#h(1fr)名#h(1fr)、#h(1fr)职#h(1fr)称#h(1fr)：
          ]
        ]
        #box(width: 6cm, stroke: (bottom: 1pt), baseline: 2pt)[
          #align(center)[
            #text(baseline: -4pt)[
              #supervisor-name#h(0.5em)#supervisor-title
            ]
          ]
        ]
      ]
      #box(width: 100%, inset: 4pt)[
        #box(width: 6cm)[
          #align(left)[
            实践指导教师姓名、职称：
          ]
        ]
        #box(width: 5cm, stroke: (bottom: 1pt), baseline: 2pt)[
          #align(center)[
            #text(baseline: -4pt)[
              #practical-tutor-name#h(0.5em)#practical-tutor-title
            ]
          ]
        ]
      ]
      #box(width: 100%, inset: 4pt)[
        #box(width: 5cm)[
          #align(left)[
            专#h(1fr)业#h(1fr)学#h(1fr)位#h(1fr)类#h(1fr)别：
          ]
        ]
        #box(width: 6cm, stroke: (bottom: 1pt), baseline: 2pt)[
          #align(center)[
            #text(baseline: -4pt)[
              #profession-category
            ]
          ]
        ]
      ]
      #box(width: 100%, inset: 4pt)[
        #box(width: 5cm)[
          #align(left)[
            专#h(1fr)业#h(1fr)学#h(1fr)位#h(1fr)领#h(1fr)域：
          ]
        ]
        #box(width: 6cm, stroke: (bottom: 1pt), baseline: 2pt)[
          #align(center)[
            #text(baseline: -4pt)[
              #profession-major
            ]
          ]
        ]
      ]
      #box(width: 100%, inset: 4pt)[
        #box(width: 5cm)[
          #align(left)[
            专#h(1fr)项#h(1fr)计#h(1fr)划：
          ]
        ]
        #box(width: 6cm, stroke: (bottom: 1pt), baseline: 2pt)[
          #align(center)[
            #text(baseline: -4pt)[
              #special-program
            ]
          ]
        ]
      ]
    ]
  ]

  #v(1cm)

  #text(font: "SimHei", size: zh(3))[
    #align(center)[
      #format-date-zh(year, month)
    ]
  ]

  #pagebreak();

  #v(5cm)

  #set text(font: "Times New Roman", size: 20pt, weight: "bold")
  #align(center)[
    #title-english
  ]

  #v(2cm)

  #set text(font: "Times New Roman", size: zh(4), weight: "regular")
  #align(center)[
    #par(leading: 1.5em)[
      A Thesis Submitted to \
      Northwest Normal University \
      in partial fulfillment of the requirement \
      for the degree of \
      Master of #profession-category-english / #profession-major-english \
      by \
      #student-name-english \
      Supervisor: #supervisor-title-english #supervisor-name-english \
      Supervisor for Practice Guiding: #practical-tutor-title-english #practical-tutor-name-english \
    ]
  ]

  #v(3cm)

  #set text(font: "Times New Roman", size: zh(3), weight: "regular")
  #align(center)[
    #format-date-en(year, month)
  ]

  #pagebreak()

]
