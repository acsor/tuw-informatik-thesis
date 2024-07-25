#import "translations/translations.typ": init_translations
#import "frontpage.typ": frontpage
#import "statement.typ": statement

#let thesis(
  lang: "en",
  title: (:),
  subtitle: (:),
  thesis-type: (en: "Diploma Thesis", de: "Diplomarbeit"),
  academic-title: (en: "Diplom-Ingenieur", de: "Diplom-Ingenieur"),
  curriculum: none,
  author: (:),
  advisor: (:),
  assistants: (),
  reviewers: (),
  keywords: (),
  date: datetime.today(),
  doc,
) = {
  assert(lang in ("en", "de"))
  set text(lang: lang)
  let show-curriculum = curriculum != none

  let main-language-title = title.at("de", default: "")
  if lang == "en" {
    main-language-title = title.at("en", default: "")
  }
  set document(
    title: main-language-title,
    author: author.at("name", default: none),
    keywords: keywords,
    date: date,
  )

  let additional-translations = (
    title: title,
    subtitle: subtitle,
    academic-title: academic-title,
    thesis-type: thesis-type,
    curriculum: curriculum,
  )
  init_translations(additional-translations)


  text(lang: "de")[
    #frontpage(author, advisor, assistants, reviewers, show-curriculum, date)
    #pagebreak()
    #pagebreak()
  ]
  text(lang: "en")[
    #frontpage(author, advisor, assistants, reviewers, show-curriculum, date)
    #pagebreak()
  ]

  statement(author, date)

  doc
}

// export styles
#import "styles/all.typ": *