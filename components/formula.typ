#import "../lib/chapter.typ": get-current-chapter-num;

#let formula(number: false, formula) = {
  if number {
    context {
      let equation-counter = counter(math.equation)
      let chapter = get-current-chapter-num()
      set math.equation(numbering: (..args) => (
        "(" + chapter + "-" + equation-counter.display("1") + ")"
      ))
      formula
    }
  } else {
    set math.equation(numbering: none)
    formula
  }
}
