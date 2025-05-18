#set page(numbering: none)
#import "templates/cover.typ": cover-template
#import "templates/statement.typ": statement-template
#import "templates/abstract.typ": abstract-template
#import "templates/mainmatter.typ": mainmatter-template
#import "templates/paratext.typ": paratext-template
#import "templates/references.typ": references-template
#import "templates/appendix.typ": appendix-template

#import "contents/cover.typ": cover-content
#cover-template(cover-content);

#statement-template(include "contents/statements/originality.typ");
#statement-template(include "contents/statements/copyright.typ");

#counter(page).update(1)
#abstract-template(include "contents/abstracts/chinese.typ")
#abstract-template(include "contents/abstracts/english.typ")

#include "templates/outline.typ"
#counter(page).update(1)
#counter(heading).update(1);
#mainmatter-template(include "contents/mainmatter/chapter-1/content.typ");
#mainmatter-template(include "contents/mainmatter/chapter-2/content.typ");
#mainmatter-template(include "contents/mainmatter/chapter-3/content.typ");

#paratext-template(include "contents/conclusion.typ")

#references-template(bibliography(
  "./contents/references/ref.bib",
  title: "参考文献",
  full: true,
));
#paratext-template(include "contents/acknowledgement.typ")

#counter(heading).update(0);
#appendix-template(include "contents/appendixes/appendix-a/content.typ")
#appendix-template(include "contents/appendixes/appendix-b/content.typ")
#paratext-template(include "contents/introduction/biology.typ")
