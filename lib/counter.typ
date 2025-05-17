#let is-odd-page() = {
  let page-number = counter(page).get().at(0)
  calc.odd(page-number)
}

// 获取当前所属的二级标题
#let get-current-heading(level: 2) = {
  let headings = query(
    selector(heading.where(level: level)).before(here()),
    here()
  )
  if headings.len() > 0 {
    headings.last().body // 返回最近的二级标题内容
  } else {
    [No Heading] // 回退值，防止空标题
  }
}
