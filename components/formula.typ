#let numbered-formula(formula) = [
  // 设置公式编号格式，结合章节编号和公式序号
  #set math.equation(
    numbering: (..args) => {
      let heading-counter = counter(heading).get()
      let equation-counter = counter(math.equation).get().at(0) // 提取整数
      // 如果在章节内，获取一级标题的编号
      let chapter = if heading-counter.len() > 0 { heading-counter.at(0) } else { 0 }
      // 返回章节-公式的编号格式
      numbering("(1-1)", chapter, equation-counter)
    },
  )
  #formula
]

#let unnumbered-formula(formula) = [
  // 设置公式编号格式，结合章节编号和公式序号
  #set math.equation(
    numbering: none
  )
  #formula
]
