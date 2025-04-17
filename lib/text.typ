#let spaced-title(text,size:1em) = {
  if text.clusters().len() == 2 {
    let chars = text.clusters()
    [#chars.at(0)#h(size)#chars.at(1)]
  } else {
    text
  }
}
