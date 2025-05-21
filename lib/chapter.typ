#let get-current-chapter-num() = {
  let chapter = {
    let heading-counter = counter(heading).get()
    if heading-counter.len() > 0 {
      let current-heading = query(selector(heading.where(level: 1)).before(
        here(),
      )).last()
      heading-counter.at(0)
    } else {
      0
    }
  }
  chapter
}
