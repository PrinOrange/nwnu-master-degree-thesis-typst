#import "@preview/tablem:0.2.0"
#import "/lib/chapter.typ": get-current-chapter-num

#let algorithm((title, input, output), steps) = {
  let elem-counter = counter("algorithm")
  elem-counter.step()
  figure(kind: "algorithm", supplement: "算法")[
    #show table.cell.where(y: 0): cell => {
      set text(font: ("Times New Roman", "SimSun"), weight: "regular")
      cell
    }
    #show enum: set enum(indent: 0em)
    #show enum: set enum(numbering: (it => strong[#numbering("1.", it)]))
    #table(
      columns: 100%,
      align: (left),
      inset: (x: 0em, y: 6pt),
      stroke: none,
      table.hline(stroke: 0.8pt),
      table.header(context [#text(font: ("times new roman", "SimHei"))[*算法#get-current-chapter-num()-#elem-counter.display("1")*]：#title]),
      table.hline(stroke: 0.8pt),
      [
        #h(1em)#text(font: ("times new roman", "SimHei"))[*输入*：]#input \
        #h(1em)#text(font: ("times new roman", "SimHei"))[*输出*：]#output
      ],
      table.hline(stroke: 0.8pt),
      steps,
      // 底部线
      table.hline(stroke: 0.8pt),
    )
  ]
}
