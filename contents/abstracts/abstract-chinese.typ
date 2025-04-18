#import "@preview/pointless-size:0.1.1": zh, zihao
#import "../../layouts/paratext.typ": paratext-page
#import "../../components/format.typ": paragraph

#let format-keywords(..keywords) = {
  let formatted = keywords.pos().join("； ")
  [#formatted]
}

#paratext-page(in-toc: false, title: "摘要", numbering: "I")[
  #paragraph[
    摘要内容，用宋体小4号字，两端对齐，左缩进2个汉字符，行距为固定值20磅，段前空0磅，段后空0磅。论文摘要中不应出现图片、图表、表格或其他插图材料。论文关键词是为了文献标引工作从论文中选取出来用以表示全文主题内容信息的单词或术语，3-7个，用宋体小4号字，每个关键词之间用分号间隔，两端对齐。
  ]
  #paragraph[
    摘要是论文内容的高度概括，应具有独立性和自含性，即不阅读论文的全文，就能获得必要的信息。摘要应包括本论文的目的、主要研究内容、研究方法、创造性成果及其理论与实际意义。
  ]
  #paragraph[
    摘要中不宜使用公式、化学结构式、图表和非公知公用的符号与术语，不标注引用文献编号，同时避免将摘要写成目录式的内容介绍。
  ]
  #paragraph[
    论文的摘要，是对论文研究内容的高度概括，其他人会根据摘要检索一篇学位论文，因此摘要应包括：对问题及研究目的的描述、对使用的方法和研究过程进行的简要介绍、对研究结论的简要概括等内容。摘要应具有独立性、自明性，应是一篇简短但意义完整的文章。
  ]
  #paragraph[
    通过阅读论文摘要，读者应该能够对论文的研究方法及结论有一个整体性的了解，因此摘要的写法应力求精确简明。论文摘要切忌写成全文的提纲，尤其要避免“第1 章……；第2 章……；……”这样的陈述方式。
  ]
  #v(1em)
  #text(size: zh(-4))[
    #box()[
      #h(2em)#text(font: "SimHei")[关键词：]
      #text(font: ("Times New Roman", "SimSun"))[
        #format-keywords("关键词 1","关键词 2","关键词 3")
      ]
    ]
  ]
]
