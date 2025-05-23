#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../lib/text.typ": spaced-title
#import "@preview/hydra:0.6.1": hydra
#import "/presettings/paper-presetting.typ": use-paper-presettings;
#import "/presettings/page-numbering.typ": use-roman-pagenumber;
#import "/presettings/common-style.typ": unnumbered-chapter-heading;
#import "/presettings/common-style.typ": paragraph-style;

#let outline-template(content) = [
  #show: use-paper-presettings
  #show: use-roman-pagenumber
  #set page(header: context [
    #align(center)[
      #box(stroke: (bottom: 0.5pt), width: 100%)[
        #text(font: ("Times New Roman", "SimSun"), baseline: -5pt)[
          #spaced-title("目录")
        ]
      ]
    ]
  ])

  #set heading(outlined: false)


  #show: unnumbered-chapter-heading
  #show: paragraph-style

  #show block: set block(inset: 0em, outset: 0em)

  #show outline.entry.where(level: 4): none
  #show outline.entry.where(level: 5): none
  #show outline.entry.where(level: 6): none
  #show outline.entry.where(level: 7): none

  #show outline.entry.where(level: 1): it => {
    box[
      #text(font: ("Times New Roman", "SimHei"), size: zh(-4))[#it]
    ]
  }

  #show outline.entry.where(level: 2): it => {
    block[
      #text(
        font: ("Times New Roman", "SimSun"),
        size: zh(5),
        weight: "regular",
      )[#it]
    ]
  }

  #show outline.entry.where(level: 3): it => {
    block[
      #text(
        font: ("Times New Roman", "SimSun"),
        size: zh(5),
        weight: "regular",
      )[#it]
    ]
  }

  #content
]
