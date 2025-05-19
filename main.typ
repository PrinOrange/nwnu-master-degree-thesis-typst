#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold
#set page(numbering: none)

#import "templates/cover.typ": cover-template
#import "contents/cover.typ": cover-content
#cover-template(cover-content);

#include "contents/statements/originality.typ";
#include "contents/statements/copyright.typ";

#counter(page).update(1)
#include "contents/abstracts/chinese.typ"
#include "contents/abstracts/english.typ"

#include "templates/outline.typ"
#counter(page).update(1)
#counter(heading).update(0);
#include "contents/mainmatter/chapter-1/content.typ";
#include "contents/mainmatter/chapter-2/content.typ";
#include "contents/mainmatter/chapter-3/content.typ";

#include "contents/conclusion.typ"

#include "contents/references/references.typ"
#include "contents/acknowledgement.typ"

#counter(heading).update(0);
#include "contents/appendixes/appendix-a/content.typ"
#include "contents/appendixes/appendix-b/content.typ"
#include "contents/introduction/biology.typ"
