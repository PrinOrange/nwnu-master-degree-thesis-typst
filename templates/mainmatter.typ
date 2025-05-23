#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/lib/text.typ": spaced-title;
#import "/components/reasoning.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold
#import "@preview/hydra:0.6.1": hydra
#show: show-cn-fakebold
#import "/presettings/paper-presetting.typ": use-paper-presettings;
#import "/presettings/components-numbering.typ": (
  mainmatter-components-numbering,
);
#import "/presettings/heading-numbering.typ": use-mainmatter-heading-numbering;
#import "/presettings/page-numbering.typ": use-arabic-pagenumber;
#import "/presettings/common-style.typ": numbered-section-heading;
#import "/presettings/common-style.typ": paragraph-style;

#let mainmatter-template(content) = [
  #show: use-paper-presettings
  #show: use-arabic-pagenumber
  // Page settings.
  #set page(header: context {
    align(center)[
      #box(stroke: (bottom: 0.5pt), width: 100%)[
        #text(font: ("Times New Roman", "SimSun"), baseline: -5pt)[
          #hydra(1, use-last: true)
        ]
      ]
    ]
    counter(footnote).update(0)
  })

  #show: mainmatter-components-numbering
  #show: use-mainmatter-heading-numbering
  #show: numbered-section-heading
  #show: paragraph-style

  #v(1em);
  #content
  #pagebreak()
]
