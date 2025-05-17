#let spaced-title(text, size: 1em) = {
  let text-str = if type(text) == str {
    text
  } else if type(text) == content and text.has("body") {
    let body = text.body
    if type(body) == str {
      body
    } else {
      let flat-text = ""
      if type(body) == content {
        if body.has("text") {
          flat-text = body.text
        } else if body.has("children") {
          flat-text = body.children.map(c => if type(c) == str { c } else if c.has("text") { c.text } else { "" }).join()
        } else {
          flat-text = str(body)
        }
      }
      flat-text
    }
  } else {
    if type(text) == content and text.has("text") {
      text.text
    } else {
      ""
    }
  }
  
  let chars = text-str.clusters()
  if chars.len() == 2 {
    [#chars.at(0)#h(size)#chars.at(1)]
  } else {
    text-str
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
