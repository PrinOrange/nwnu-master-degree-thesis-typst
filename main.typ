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

#import "templates/outline.typ": outline-template
#outline-template()

#import "templates/paratext.typ": paratext-template
#counter(page).update(1)
#paratext-template(include "contents/conclusion.typ")
#paratext-template(include "contents/acknowledgement.typ")
#paratext-template(include "contents/appendixes/appendix-A.typ")
#paratext-template(include "contents/appendixes/appendix-B.typ")
#paratext-template(include "contents/introduction/biology.typ")
