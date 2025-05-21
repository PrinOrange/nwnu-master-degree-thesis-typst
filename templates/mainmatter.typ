#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/lib/text.typ": spaced-title;
#import "/components/reasoning.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold
#import "@preview/hydra:0.6.1": hydra
#show: show-cn-fakebold
#import "/presettings/paper-presetting.typ": use-paper-presettings;
#import "/presettings/mainmatter-components-numbering.typ": (
  use-mainmatter-components-numbering,
);
#import "/presettings/mainmatter-headings.typ": (
  use-mainmatter-heading-numbering,
);
#import "/presettings/foot-pagenumbers.typ": use-arabic-pagenumber;
#import "/presettings/common-style.typ": numbered-heading-style;

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

  #show: use-mainmatter-components-numbering
  #show: use-mainmatter-heading-numbering
  #show: numbered-heading-style

  #set par(leading: 10pt, justify: true, first-line-indent: (
    amount: 2em,
    all: true,
  ))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #v(1em);
  #content
  #pagebreak()
]
