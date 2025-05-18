#let formula(number: false, formula) = [
  #if number [
    #set math.equation(
      numbering: (..args) => {
        let heading-counter = counter(heading).get()
        let equation-counter = counter(math.equation).get().at(0)
        let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else { 0 }
        numbering("(1-1)", chapter, equation-counter)
      },
    )
    #formula
  ] else [
    #set math.equation(numbering: none)
    #formula
  ]
]
