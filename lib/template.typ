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
  title: (:),
  subtitle: (:),
  lang: "en",
  author: (:),
  advisor: (:),
  assitants: (),
  curriculum: none,
  keywords: (),
  date: datetime.today(),
  // TODO: check how the Latex template uses these fields
  // thesis-type: "master",
  // academic-title: "dipl",
  doc,
) = {
  title.insert("de", title.at("de", default: ""))
  title.insert("en", title.at("en", default: ""))
  subtitle.insert("de", subtitle.at("de", default: ""))
  subtitle.insert("en", subtitle.at("en", default: ""))
  let main-title = title.de
  if lang == "en" {
    main-title = title.en
  }
  set document(
    title: main-title,
    author: author.at("name", default: none),
    keywords: keywords,
    date: date,
  )

  init_database(title, subtitle)


  text(lang: "de")[
    #frontpage(author: author, advisor: advisor, assitants: assitants, curriculum: curriculum, date: date)
    #pagebreak()
    #pagebreak()
  ]
  text(lang: "en")[
    #frontpage(author: author, advisor: advisor, assitants: assitants, curriculum: curriculum, date: date)
    #pagebreak()
  ]

  show: global-styles

  erklaerung(author, date)


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

#let in-outline = state("in-outline", false)
#let use-flex-caption = rest => {
  show outline: it => {
    in-outline.update(true)
    it
    in-outline.update(false)
  }
  rest
}

#let flex-caption(long, short) = (
  context (
    if in-outline.get() {
      short
    } else {
      long
    }
  )
)