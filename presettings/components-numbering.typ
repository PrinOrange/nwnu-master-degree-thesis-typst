#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/components/reasoning.typ": reset-reasoning-counter
#import "/lib/chapter.typ": get-current-chapter-num
#import "/states/numbering-style.typ": chapter-numbering-state;

// 附录的组件编号规则
#let appendix-components-numbering(content) = [
  #chapter-numbering-state.update("A")

  #counter(math.equation).update(0)
  #counter(figure.where(kind: "algorithm")).update(0)
  #counter(figure.where(kind: image)).update(0)
  #counter(figure.where(kind: table)).update(0)
  #counter(figure.where(kind: raw)).update(0)
  #reset-reasoning-counter()

  #set math.equation(number-align: bottom, numbering: (..args) => [
    #let heading-counter = counter(heading).get()
    #let equation-counter = counter(math.equation)
    #let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else {
      0
    }
    #[(#numbering("A", chapter)-#equation-counter.display("1"))]
  ])

  #show enum: set enum(indent: 2em)
  #show list: set list(indent: 2em)

  #show footnote: set footnote(numbering: "①")
  #show footnote.entry: set text(size: zh(-5))
  #show footnote.entry: set par(spacing: 0em, justify: true, leading: 1em)

  #show figure.caption: set text(size: zh(5))
  #show figure.where(kind: table): set figure(supplement: "表", numbering: (
    ..args,
  ) => {
    let elem-counter = counter(heading).get()
    let image-counter = counter(figure.where(kind: table)).get().at(0)
    let chapter = if elem-counter.len() > 0 { elem-counter.at(0) } else {
      0
    }
    numbering("A-1", chapter, image-counter)
  })
  #show figure.where(kind: image): set figure(supplement: "图", numbering: (
    ..args,
  ) => {
    let heading-counter = counter(heading).get()
    let elem-counter = counter(figure.where(kind: image)).get().at(0)
    let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else {
      0
    }
    numbering("A-1", chapter, elem-counter)
  })
  #show figure.where(kind: raw): set figure(supplement: "代码", numbering: (
    ..args,
  ) => {
    let heading-counter = counter(heading).get()
    let elem-counter = counter(figure.where(kind: raw)).get().at(0)
    let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else {
      0
    }
    numbering("A-1", chapter, elem-counter)
  })
  #content
]

// 正文的组件编号规则
#let mainmatter-components-numbering(content) = [
  #chapter-numbering-state.update("1")

  #counter(math.equation).update(0)
  #counter(figure.where(kind: "algorithm")).update(0)
  #counter(figure.where(kind: image)).update(0)
  #counter(figure.where(kind: table)).update(0)
  #counter(figure.where(kind: raw)).update(0)
  #reset-reasoning-counter()

  #set math.equation(number-align: bottom, numbering: (..args) => [
    #let heading-counter = counter(heading).get()
    #let equation-counter = counter(math.equation)
    #let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else {
      0
    }
    #[(#numbering("1", chapter)-#equation-counter.display("1"))]
  ])

  #show enum: set enum(indent: 2em)
  #show list: set list(indent: 2em)

  #show footnote: set footnote(numbering: "①")
  #show footnote.entry: set text(size: zh(-5))
  #show footnote.entry: set par(spacing: 0em, justify: true, leading: 1em)

  #show figure.caption: set text(size: zh(5))
  #show figure.where(kind: table): set figure(supplement: "表", numbering: (
    ..args,
  ) => {
    let elem-counter = counter(heading).get()
    let image-counter = counter(figure.where(kind: table)).get().at(0)
    let chapter = if elem-counter.len() > 0 { elem-counter.at(0) } else {
      0
    }
    numbering("1-1", chapter, image-counter)
  })
  #show figure.where(kind: image): set figure(supplement: "图", numbering: (
    ..args,
  ) => {
    let heading-counter = counter(heading).get()
    let elem-counter = counter(figure.where(kind: image)).get().at(0)
    let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else {
      0
    }
    numbering("1-1", chapter, elem-counter)
  })
  #show figure.where(kind: raw): set figure(supplement: "代码", numbering: (
    ..args,
  ) => {
    let heading-counter = counter(heading).get()
    let elem-counter = counter(figure.where(kind: raw)).get().at(0)
    let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else {
      0
    }
    numbering("1-1", chapter, elem-counter)
  })

  #content
]

