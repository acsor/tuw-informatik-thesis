#import "lib/template.typ": thesis, front-matter, main-matter, back-matter

#show: thesis.with(
  title-en: "T-RACE: Tracing race condition attacks between Ethereum transactions.",
  title-de: "T-RACE: Eine Analyse von race condition Angriffen bei Ethereum Transaktionen",
  lang: "en",
  author: (name: "Othmar Lechner", student-number: 11841833, email: "x@x.com"),
  advisor: (
    name: "Monika di Angelo",
    pre-title: "Ass.Prof.in Dipl.-Ing.in Mag.a rer.soc.oec. Dr.in techn.",
    post-title: none,
  ),
  assitants: ((name: "Gernot Salzer", pre-title: "Ao.Univ.Prof. Dr."),),
  curriculum: "Software Engineering & Internet Computing",
)

#show: front-matter

= Danksagung

= Acknowledgements

= Kurzfassung

= Abstract

#outline()

#show: main-matter

= Introduction

= And more

= Chapters

#show: back-matter

= Overview of Generative AI Tools Used

#outline(title: "List of Figures", target: figure.where(kind: image))
#outline(title: "List of Tables", target: figure.where(kind: table))
#outline(title: "List of Algorithms", target: figure.where(kind: "algorithm"))

#bibliography("refs.bib")
