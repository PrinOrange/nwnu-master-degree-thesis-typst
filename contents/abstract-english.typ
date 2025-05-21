#import "@preview/pointless-size:0.1.1": zh, zihao
#import "/templates/abstract.typ": abstract-template;
#show: abstract-template;

#let format-keywords(..keywords) = {
  let formatted = keywords.pos().join("; ")
  [#formatted]
}

= Abstract

The master's thesis is a critical component of postgraduate education and serves as a key indicator of a student’s ability to conduct independent academic research. The quality of the thesis directly affects the conferral of the degree and reflects the student’s research competence, academic writing skills, logical reasoning, and awareness of academic integrity. Although the structure and requirements of theses may vary across institutions and disciplines, there are generally accepted principles and methodologies that guide the writing process. This paper aims to provide a systematic and practical guide to writing a master’s thesis, focusing on the entire process—from topic selection and structural planning to research methods, academic standards, and writing techniques—while offering insights into common pitfalls and how to address them effectively.

Topic selection is the foundation of a successful thesis. A well-defined research topic should be academically valuable, practically meaningful, and feasible in scope. It should neither be too broad to lack depth nor too narrow to lose relevance. Ideally, the topic should align with the student’s academic interests, current research frontiers, and the guidance of their supervisor. A thorough review of existing literature is essential to identify knowledge gaps and establish a clear research motivation and innovation point.

The thesis should follow a logical and coherent structure. A standard master’s thesis typically includes the title, abstract, keywords, introduction, literature review, theoretical framework and methodology, empirical or case study analysis, conclusions and recommendations, references, and appendices. Each section should be tightly connected, progressing from theory to evidence and analysis, thereby ensuring the overall integrity and coherence of the research.

In terms of methodology, students should select appropriate qualitative, quantitative, or mixed research methods based on their research questions and disciplinary conventions. Whether using surveys, interviews, statistical models, or comparative analysis, it is essential to clearly justify the methodological choices and discuss their strengths and limitations. A well-grounded methodology enhances the scientific rigor and persuasiveness of the study.

Academic integrity and citation practices are also crucial throughout the writing process. Proper attribution of ideas and data from other sources is necessary to avoid plagiarism and uphold ethical standards. Students must strictly follow the citation style required by their institution or field—such as APA, MLA, or Chicago—and can utilize reference management tools like EndNote or Zotero to ensure accuracy and efficiency.

Moreover, the language of the thesis should be precise, concise, and logically structured. Avoid vague statements, excessive jargon, or overly complex sentence structures. Multiple rounds of revision, peer review, and supervisor feedback are essential to improve clarity and polish. A well-designed layout, clear charts and tables, and visually consistent formatting also contribute to the professional quality of the thesis.

Writing a thesis is not merely the culmination of a master’s program—it is also the beginning of a student’s journey as an independent researcher or professional. The process fosters a mindset of critical thinking, inquiry, and continuous improvement, laying a solid foundation for future doctoral research or career development.

In conclusion, writing a master’s thesis is a comprehensive and systematic endeavor that encompasses multiple dimensions, including topic formulation, structural planning, research methodology, academic ethics, and writing proficiency. Only through sustained effort, adherence to standards, and iterative refinement can students produce a thesis that reflects both academic rigor and personal insight. This paper seeks to offer a clear roadmap and practical guidance for graduate students navigating the thesis-writing process and transitioning from learners to contributors in their academic fields.

#v(1em)
#box()[
  #text(font: "Times New Roman", weight: "bold")[Keywords:]
  #text(font: "Times New Roman")[
    // 在这下面写上你要添加的英文关键词
    #format-keywords(
      "Master's thesis",
      "academic integrity",
      "writing strategies",
    )
  ]
]
