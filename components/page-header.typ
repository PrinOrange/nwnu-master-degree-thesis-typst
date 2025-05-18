

#let alternative-pageheader() = {
  context {
    // 获取当前页面位置
    let current-loc = here()
    // 查询当前页面之前的所有一级标题
    let headings = query(selector(heading.where(level: 1)).before(current-loc))
    let display-content = none

    // 查找最近的一级标题
    let last-heading = if headings.len() > 0 { headings.last().body } else {
      none
    }

    // 如果有新的一级标题，更新状态并重置计数器
    if last-heading != none and header-state.get() != last-heading {
      header-state.update(last-heading)
      alternate-counter.update(0)
    }

    // 获取当前页眉内容
    let header-content = header-state.get()

    // 实现交替逻辑
    let count = alternate-counter.get()
    if calc.even(count) {
      display-content = header-content
    } else {
      display-content = "硕士论文"
    }

    // 调试输出计数器
    // [#count] // 用于调试，确认计数器值

    // 在页面结束时增加计数器以实现交替
    // 移到 page 规则中，确保在页面渲染后更新
    display-content
  }
}
