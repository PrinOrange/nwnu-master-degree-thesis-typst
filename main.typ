#set page(numbering: none)
#import "contents/cover.typ": cover-page

#cover-page((
  // 论文标题名称
  title: "面向6G物联网系统的多源优化调度与信息及时性研究",
  // 论文标题名称（英文）
  title-english: "Multi-source Optimal Scheduling and Information Timeliness for 6G Internet of Things System",
  // 发表年份，通常是毕业年份
  year: "2027",
  // 发表月份，通常是答辩日期月份
  month: "5",
  // 一般应注明《中国图书资料分类法》的类号
  category-number: "",
  // 高校代码，西北师范大学的高校代码为 10736，不必更改
  university-number: "10736",
  // 《国际十进分类法UDC》的类号。例如计算机类软件工程为 004.4，具体以学校要求为准
  udc: "",
  // 按国家规定的保密条例注明密级（公开型论文可不注明密级）
  secrecy: "",
  // 研究生姓名
  student-name: "李伟明",
  // 研究生姓名（英文）
  student-name-english: "Li Weiming",
  // 导师姓名
  supervisor-name: "张伟明",
  // 导师姓名（英文）
  supervisor-name-english: "Zhang Weiming",
  // 导师职称
  supervisor-title: "教授",
  // 导师职称（英文），如教授为 Professor，副教授为 (Associate) Professor
  supervisor-title-english: "Professor",
  // 实践指导教师姓名
  practical-tutor-name: "王伟明",
  // 实践指导教师姓名（英文）
  practical-tutor-name-english: "Wang Weiming",
  // 实践指导导师职称
  practical-tutor-title: "高级工程师",
  // 实践指导教师职称（英文）
  practical-tutor-title-english: "Senior Engineer",
  // 专业学位类别，如电子信息、土木水利、交通运输等
  profession-category: "电子信息",
  // 专业学位类别（英文）
  profession-category-english: "Electronic Information",
  // 专业学位领域，通常为专业名称，如软件工程
  profession-major: "软件工程",
  // 专业学位领域（英文）
  profession-major-english: "Software Engineering",
  // 专项计划，若无，可不填
  special-program: "",
))

#include "contents/statements/statement-originality.typ"
#include "contents/statements/statement-copyright.typ"

#counter(page).update(1)
#include "contents/abstracts/abstract-chinese.typ"
#include "contents/abstracts/abstract-english.typ"
#include "contents/outline.typ"

#counter(page).update(1)
#include "contents/conclusion.typ"
#include "contents/acknowledgements.typ"
#include "contents/appendixes/appendix-A.typ"
#include "contents/appendixes/appendix-B.typ"
#include "contents/biology.typ"
