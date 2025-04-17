#import "@preview/pointless-size:0.1.1": zh, zihao

#set page(
  margin: (top: 4cm, bottom: 3cm, x: 3.05cm),
  header: [
    #align(center)[
      #box(stroke: (bottom: 0.5pt), width: 100%)[
        #text(font: "SimSun", baseline: -5pt)[
          个人简历、在学期间发表的学术论文及研究成果 \
        ]
      ]
    ]
  ],
  footer: context [
    #box(width: 100%)[
      #align(center)[
        #counter(page).display("1")
      ]
    ]
  ],
)

#text(font: ("Arial", "SimHei"), size: zh(3))[
  #align(center)[
    个人简历、在学期间发表的学术论文及研究成果
  ]
]

#h(1em);

#text(font: ("Times New Roman", "SimHei"), size: zh(4))[
  1.个人简历
]
