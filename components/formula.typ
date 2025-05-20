#let formula(number: false, formula) = {
  if number {
    context {
      let heading-counter = counter(heading).get()
      let equation-counter = counter(math.equation).get().at(0)
      let chapter = if heading-counter.len() > 0 {
        // 使用当前标题的 numbering 规则格式化一级标题编号
        let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
        numbering(current-heading.numbering, heading-counter.at(0))
      } else {
        "0" // 无标题时默认值
      }
      // 设置公式编号，结合章节编号
      set math.equation(numbering: (..args) => "(" + chapter + "-" + str(args.pos().at(0)) + ")")
      formula
    }
  } else {
    set math.equation(numbering: none)
    formula
  }
}