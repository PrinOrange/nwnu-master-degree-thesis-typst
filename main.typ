#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

#include "contents/cover.typ"
#include "contents/statements/originality.typ";
#include "contents/statements/copyright.typ";

// 更新页码计数器，摘要到目录，使用罗马数字页码
#counter(page).update(1)
#include "contents/abstracts/chinese.typ"
#include "contents/abstracts/english.typ"
#include "contents/outline.typ"

// 更新页码计数器，正文之后的页面，使用阿拉伯数字页码
#counter(page).update(1)
// 更新大标题计数器，正文之后的一级标题作为每个章节的编号
#counter(heading).update(0);
#include "contents/mainmatter/chapter-1/content.typ";
#include "contents/mainmatter/chapter-2/content.typ";
#include "contents/mainmatter/chapter-3/content.typ";

#include "contents/paratext/conclusion.typ"
#include "contents/paratext/references/references.typ"
#include "contents/paratext/acknowledgement.typ"

// 更新大标题计数器，附录之后的一级标题作为每个附录的编号
#counter(heading).update(0);
#include "contents/appendixes/appendix-a/content.typ"
#include "contents/appendixes/appendix-b/content.typ"

#include "contents/paratext/introduction/biology.typ";
