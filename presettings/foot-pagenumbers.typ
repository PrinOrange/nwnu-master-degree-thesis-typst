#let use-roman-pagenumber(content) = [
  #set page(numbering: "I", footer: context [
    #box(width: 100%)[
      #align(center)[
        #counter(page).display("I")
      ]
    ]
  ])
  #content
]

#let use-arabic-pagenumber(content) = [
  #set page(numbering: "1", footer: context [
    #box(width: 100%)[
      #align(center)[
        #counter(page).display("1")
      ]
    ]
  ])
  #content
]

