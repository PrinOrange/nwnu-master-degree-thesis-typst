#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/lib/text.typ": spaced-title;
#import "/components/reasoning.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold
#import "/states/header-state.typ": header-alternative-status, header-status;
#import "@preview/hydra:0.6.1": hydra
#show: show-cn-fakebold

#let mainmatter-template(content) = [
  // Page settings.
  #set page(
    margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
    header: context {
      align(center)[
        #box(stroke: (bottom: 0.5pt), width: 100%)[
          #text(font: ("Times New Roman", "SimSun"), baseline: -5pt)[
            #hydra(1, use-last: true)
          ]
        ]
      ]
      counter(footnote).update(0)
    },
    footer: context [
      #box(width: 100%)[
        #align(center)[
          #counter(page).display("1")
        ]
      ]
    ],
  )

  #show enum: set enum(indent: 2em)
  #show list: set list(indent: 2em)

  #show footnote: set footnote(numbering: "①")
  #show footnote.entry: set text(size: zh(-5))
  #show footnote.entry: set par(spacing: 0em, justify: true, leading: 1em)

  #show figure.caption: set text(size: zh(5))
  #show figure.where(kind: table): set figure(supplement: "表", numbering: (
    ..args,
  ) => {
    let heading-counter = counter(heading).get()
    let image-counter = counter(figure.where(kind: table)).get().at(0)
    let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else {
      0
    }
    numbering("1-1", chapter, image-counter)
  })
  #show figure.where(kind: image): set figure(supplement: "图", numbering: (
    ..args,
  ) => {
    let heading-counter = counter(heading).get()
    let image-counter = counter(figure.where(kind: image)).get().at(0)
    let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else {
      0
    }
    numbering("1-1", chapter, image-counter)
  })
  #show figure.where(kind: raw): set figure(supplement: "代码", numbering: (
    ..args,
  ) => {
    let heading-counter = counter(heading).get()
    let codeblock-counter = counter(figure.where(kind: raw)).get().at(0)
    let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else {
      0
    }
    numbering("1-1", chapter, codeblock-counter)
  })

  #show heading.where(level: 1): set heading(numbering: "第 1 章")
  #show heading.where(level: 2): set heading(numbering: "1.1")
  #show heading.where(level: 3): set heading(numbering: "1.1.1")

  #show heading.where(level: 1): it => [
    #counter(math.equation).update(0)
    #counter(figure).update(0)
    #reset-reasoning-counter()
    #text(font: ("Times New Roman", "SimHei"), size: zh(-2), weight: "regular")[
      #align(center)[
        #it
        #v(1em)
      ]
    ]
  ]
  #show heading.where(level: 2): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(4), weight: "regular")[
      #set par(leading: 10pt, justify: true, first-line-indent: 0em)
      #it
    ]
    #v(1em)
  ]
  #show heading.where(level: 3): it => [
    #text(font: ("Times New Roman", "SimHei"), size: zh(4), weight: "regular")[
      #set par(leading: 10pt, justify: true, first-line-indent: 0em)
      #it
    ]
    #v(1em)
  ]

  #set par(leading: 10pt, justify: true, first-line-indent: (
    amount: 2em,
    all: true,
  ))
  #set text(font: ("Times New Roman", "SimSun"), size: zh(-4))

  #v(1em);
  #content
  #pagebreak()
]
