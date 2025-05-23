#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/lib/text.typ": spaced-title;
#import "/presettings/paper-presetting.typ": use-paper-presettings;
#import "/presettings/components-numbering.typ": appendix-components-numbering;
#import "/presettings/heading-numbering.typ": use-appendix-heading-numbering;
#import "/presettings/page-numbering.typ": use-arabic-pagenumber;
#import "/presettings/common-style.typ": numbered-section-heading;
#import "/presettings/common-style.typ": paragraph-style;

#let appendix-template(content) = [

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
    #counter(footnote).update(0)
  ])

  #show: appendix-components-numbering
  #show: use-appendix-heading-numbering
  #show: numbered-section-heading
  #show: paragraph-style

  #v(1em);
  #content

  #pagebreak();
]
