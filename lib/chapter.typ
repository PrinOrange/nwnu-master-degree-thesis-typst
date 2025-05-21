#let get-current-chapter-num() = context {
  let heading-counter = counter(heading).get()
  let chapter = if heading-counter.len() > 0 {
    let current-heading = query(selector(heading.where(level: 1)).before(here())).last()
    return numbering(current-heading.numbering, heading-counter.at(0)).trim()
  } else { "0" }
  return chapter.trim()
}
