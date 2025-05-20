#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/lib/text.typ": spaced-title;
#import "/components/reasoning.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold
#import "@preview/hydra:0.6.1": hydra
#show: show-cn-fakebold
#import "/presettings/paper-presetting.typ": use-paper-presettings;
#import "/presettings/components-numbering.typ": (
  use-components-numbering-presettings,
);
#import "/presettings/mainmatter-headings.typ": (
  use-mainmatter-heading-presettings,
);
#import "/presettings/foot-pagenumbers.typ": use-arabic-pagenumber;

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

  #show: use-components-numbering-presettings
  #show: use-mainmatter-heading-presettings

  #set par(leading: 10pt, justify: true, first-line-indent: (
    amount: 2em,
    all: true,
  ))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #v(1em);
  #content
  #pagebreak()
]
