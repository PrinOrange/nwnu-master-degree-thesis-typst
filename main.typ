#set page(numbering: none)

#import "templates/cover.typ": cover-template
#import "contents/cover.typ":cover-content
#cover-template(cover-content);

#import "templates/statement.typ": statement-template
#statement-template(include "contents/statements/originality.typ");
#statement-template(include "contents/statements/copyright.typ");

#import "templates/abstract.typ": abstract-template
#counter(page).update(1)
#abstract-template(include "contents/abstracts/chinese.typ")
#abstract-template(include "contents/abstracts/english.typ")

#include "templates/outline.typ"

#import "templates/mainmatter.typ": mainmatter-template
#counter(page).update(1)
#mainmatter-template(include "contents/mainmatter/chapter-1/content.typ");
#mainmatter-template(include "contents/mainmatter/chapter-2/content.typ");
#mainmatter-template(include "contents/mainmatter/chapter-3/content.typ");

#import "templates/paratext.typ": paratext-template
#paratext-template(include "contents/conclusion.typ")
#paratext-template(include "contents/acknowledgement.typ")
#paratext-template(include "contents/appendixes/appendix-A.typ")
#paratext-template(include "contents/appendixes/appendix-B.typ")
#paratext-template(include "contents/introduction/biology.typ")
