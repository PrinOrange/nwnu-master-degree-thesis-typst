#let spaced-title(text,size:1em) = {
  if text.clusters().len() == 2 {
    let chars = text.clusters()
    [#chars.at(0)#h(size)#chars.at(1)]
  } else {
    text
  }
}

#let spaced-text(text, size) = {
  let chars = text.clusters()
  let result = () 
  for (i, char) in chars.enumerate() {
    result.push(char)
    if i < chars.len() - 1 {
      result.push(h(size))
    }
  }
  result.join()
}

#let to-string(it) = {
  if type(it) == str {
    it
  } else if type(it) != content {
    str(it)
  } else if it.has("text") {
    it.text
  } else if it.has("children") {
    it.children.map(to-string).join()
  } else if it.has("body") {
    to-string(it.body)
  } else if it == [ ] {
    " "
  }
}
