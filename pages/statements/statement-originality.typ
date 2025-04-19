#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../../layouts/statement.typ": statement-page
#import "../../components/format.typ": statement-paragraph

#statement-page(title: "西北师范大学学位论文原创性声明")[
  #statement-paragraph()[
    本人郑重声明：所呈交的学位论文是本人在导师的指导下独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。因本学位论文引起的法律后果完全由本人承担。
  ]
  #v(5em)
  #align(right)[
    #box(width:30em)[
      #text(font: "SimSun", size: zh(4))[
        学位论文作者签名:#h(7em)
      ]
      #v(1em)
    ] \
    #box(width:30em)[
      #text(font: "SimSun", size: zh(4))[
        导师签名:#h(11em)
      ]
      #v(1em)
    ] \
    #box(width:30em)[
      #text(font: "SimSun", size: zh(4))[
        签字日期:#h(4em)年#h(2em)月#h(2em)日
      ]
    ]
  ]
]
