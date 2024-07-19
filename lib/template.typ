#import "translations/translations.typ": init_translations
#import "frontpage.typ": frontpage
#import "erklaerung.typ": erklaerung

#let thesis(
  lang: "en",
  title: (:),
  subtitle: (:),
  thesis-type: (en: "Diploma Thesis", de: "Diplomarbeit"),
  academic-title: (en: "Diplom-Ingenieur", de: "Diplom-Ingenieur"),
  curriculum: (en: "Software Engineering & Internet Computing", de: "Software Engineering & Internet Computing "),
  author: (:),
  advisor: (:),
  assitants: (),
  keywords: (),
  date: datetime.today(),
  doc,
) = {
  assert(lang in ("en", "de"))
  set text(lang: lang)

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
    #frontpage(author: author, advisor: advisor, assitants: assitants, date: date)
    #pagebreak()
    #pagebreak()
  ]
  text(lang: "en")[
    #frontpage(author: author, advisor: advisor, assitants: assitants, date: date)
    #pagebreak()
  ]

  erklaerung(author, date)

  doc
}

// export styles
#import "styles/all.typ": *