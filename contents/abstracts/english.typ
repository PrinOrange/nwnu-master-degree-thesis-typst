#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/templates/abstract.typ": abstract-template;
#show: abstract-template;

#let format-keywords(..keywords) = {
  let formatted = keywords.pos().join("; ")
  [#formatted]
}

= Abstract

The content of the abstract should be in Times New Roman, size 4, justified, with 2 characters indented to the left, and a fixed line spacing of 20 pounds. There should be no pictures, charts, tables or other illustrations in the abstract. The keywords of the paper are words or terms selected from the paper for the purpose of document indexing to represent the subject content of the full text, 3-7 words, in Times New Roman, size 4, with each keyword separated by a semicolon, justified.

The abstract is a high-level summary of the paper's content and should be independent and self-contained, that is, the necessary information can be obtained without reading the full text of the paper. The abstract should include the purpose of the paper, the main research content, research methods, creative results and their theoretical and practical significance.

The abstract should not use formulas, chemical structures, charts, and non-publicly known symbols and terms. The reference numbers should not be marked. Also, avoid writing the abstract as a directory-style content introduction.

The abstract of a paper is a high-level summary of the research content of the paper. Others will search for a degree thesis based on the abstract, so the abstract should include: a description of the problem and research purpose, a brief introduction to the methods used and the research process, a brief summary of the research conclusions, etc. The abstract should be independent and self-explanatory, and should be a short but complete article.

By reading the paper abstract, readers should be able to have a holistic understanding of the research methods and conclusions of the paper, so the writing of the abstract should be precise and concise. The paper abstract should not be written as an outline of the full paper, especially avoid statements such as "Chapter 1...; Chapter 2...;..."

#v(1em)
#box()[
  #text(font: "Times New Roman", weight: "bold")[Keywords:]
  #text(font: "Times New Roman")[
    // 在这下面写上你要添加的英文关键词
    #format-keywords("keyword 1", "keyword 2", "keyword 3", "keyword 4")
  ]
]
