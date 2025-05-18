#import "@preview/pointless-size:0.1.1": zh

#let axiom(content) = [
  #let elem-counter = counter("axiom")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #text(
    weight: "bold",
  )[公理#context [#counter(heading).get().at(0)-#elem-counter.display("1")]： ]#content
]

#let definition(content) = [
  #let elem-counter = counter("definition")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #text(
    weight: "bold",
  )[定义#context [#counter(heading).get().at(0)-#elem-counter.display("1")]： ]#content
]

#let proposition(content) = [
  #let elem-counter = counter("proposition")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #text(
    weight: "bold",
  )[命题#context [#counter(heading).get().at(0)-#elem-counter.display("1")]： ]#content
]

#let lemma(content) = [
  #let elem-counter = counter("lemma")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #text(
    weight: "bold",
  )[引理#context [#counter(heading).get().at(0)-#elem-counter.display("1")]： ]#content
]

#let theorem(content) = [
  #let elem-counter = counter("theorem")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #text(
    weight: "bold",
  )[定理#context [#counter(heading).get().at(0)-#elem-counter.display("1")]： ]#content
]

#let corollary(content) = [
  #let elem-counter = counter("corollary")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #text(
    weight: "bold",
  )[推论#context [#counter(heading).get().at(0)-#elem-counter.display("1")]： ]#content
]

#let remark(content) = [
  #let elem-counter = counter("remark")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #text(
    weight: "bold",
  )[注#context [#counter(heading).get().at(0)-#elem-counter.display("1")]： ]#content
]

#let example(content) = [
  #let elem-counter = counter("example")
  #elem-counter.step()
  #set text(font: ("Times New Roman", "KaiTi_GB2312"), size: zh(-4))
  #text(
    weight: "bold",
  )[例#context [#counter(heading).get().at(0)-#elem-counter.display("1")]： ]#content
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
