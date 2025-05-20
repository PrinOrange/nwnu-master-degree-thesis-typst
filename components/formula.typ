#let formula(number: false, formula) = {
  if number {
    context {
      let heading-counter = counter(heading).get()
      let equation-counter = counter(math.equation)
      let chapter = if heading-counter.len() > 0 {
        let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
        numbering(current-heading.numbering, heading-counter.at(0))
      } else {
        "0"
      }
      set math.equation(numbering: (..args) => "(" + chapter + "-" + equation-counter.display("1") + ")")
      formula
    }
  } else {
    set math.equation(numbering: none)
    formula
  }
}