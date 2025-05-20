#import "@preview/pointless-size:0.1.1": zh

#let axiom(content) = context [
  #let elem-counter = counter("axiom")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #let heading-counter = counter(heading).get()
  #let chapter = if heading-counter.len() > 0 {
    let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
    numbering(current-heading.numbering, heading-counter.at(0))
  } else { "0" }
  #text(weight: "bold")[
    公理#chapter\-#context elem-counter.display("1")]：#content
]

#let definition(content) = context [
  #let elem-counter = counter("definition")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #let heading-counter = counter(heading).get()
  #let chapter = if heading-counter.len() > 0 {
    let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
    numbering(current-heading.numbering, heading-counter.at(0))
  } else { "0" }
  #text(weight: "bold")[
    定义#chapter\-#context elem-counter.display("1")]：#content
]

#let proposition(content) = context [
  #let elem-counter = counter("proposition")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #let heading-counter = counter(heading).get()
  #let chapter = if heading-counter.len() > 0 {
    let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
    numbering(current-heading.numbering, heading-counter.at(0))
  } else { "0" }
  #text(weight: "bold")[命题#chapter\-#context elem-counter.display("1")]：#content
]

#let lemma(content) = context [
  #let elem-counter = counter("lemma")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #let heading-counter = counter(heading).get()
  #let chapter = if heading-counter.len() > 0 {
    let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
    numbering(current-heading.numbering, heading-counter.at(0))
  } else { "0" }
  #text(weight: "bold")[引理#chapter\-#context elem-counter.display("1")]：#content
]

#let theorem(content) = context [
  #let elem-counter = counter("theorem")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #let heading-counter = counter(heading).get()
  #let chapter = if heading-counter.len() > 0 {
    let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
    numbering(current-heading.numbering, heading-counter.at(0))
  } else { "0" }
  #text(weight: "bold")[定理#chapter\-#context elem-counter.display("1")]：#content
]

#let corollary(content) = context [
  #let elem-counter = counter("corollary")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #let heading-counter = counter(heading).get()
  #let chapter = if heading-counter.len() > 0 {
    let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
    numbering(current-heading.numbering, heading-counter.at(0))
  } else { "0" }
  #text(weight: "bold")[推论#chapter\-#context elem-counter.display("1")]：#content
]

#let remark(content) = context [
  #let elem-counter = counter("remark")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #let heading-counter = counter(heading).get()
  #let chapter = if heading-counter.len() > 0 {
    let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
    numbering(current-heading.numbering, heading-counter.at(0))
  } else { "0" }
  #text(weight: "bold")[注#chapter\-#context elem-counter.display("1")]：#content
]

#let example(content) = context [
  #let elem-counter = counter("example")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #let heading-counter = counter(heading).get()
  #let chapter = if heading-counter.len() > 0 {
    let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
    numbering(current-heading.numbering, heading-counter.at(0))
  } else { "0" }
  #text(weight: "bold")[例#chapter\-#context elem-counter.display("1")]：#content
]

#let reset-reasoning-counter() = {
  counter("axiom").update(0)
  counter("definition").update(0)
  counter("proposition").update(0)
  counter("lemma").update(0)
  counter("theorem").update(0)
  counter("corollary").update(0)
  counter("remark").update(0)
  counter("example").update(0)
}
