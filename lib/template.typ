#import "translations/translations.typ": init_database
#import "frontpage.typ": frontpage
#import "erklaerung.typ": erklaerung

#let global-styles = body => {
  show heading.where(level: 1): it => {
    pagebreak()
    it
  }
  body
}


#let thesis(
  title-de: "",
  title-en: "",
  lang: "en",
  author: (:),
  advisor: (:),
  assitants: (),
  curriculum: none,
  // TODO: check how the Latex template uses these fields
  // thesis-type: "master",
  // academic-title: "dipl",
  doc,
) = {
  // TODO: document metadata
  init_database((en: title-en, de: title-de))

  text(lang: "de")[
    #frontpage(author: author, advisor: advisor, assitants: assitants, curriculum: curriculum)
    #pagebreak()
    #pagebreak()
  ]
  text(lang: "en")[
    #frontpage(author: author, advisor: advisor, assitants: assitants, curriculum: curriculum)
    #pagebreak()
  ]

  show: global-styles

  erklaerung(author)


  doc
}


#let front-matter = it => {
  it
}

#let main-matter = it => {
  it
}

#let back-matter = it => {
  it
}