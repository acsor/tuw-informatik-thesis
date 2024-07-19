#import "@local/unofficial-tu-wien-thesis:0.0.1": *

#show: general-styles

#show: thesis.with(
  lang: "en",
  title: (
    en: "An ode for Lord Ipsum",
    de: "Eine Ode an Lord Ipsum",
  ),
  subtitle: (:),
  thesis-type: (en: "Diploma Thesis", de: "Diplomarbeit"),
  academic-title: (de: "Diplom-Ingenieur", en: "Diplom-Ingenieur"),
  curriculum: (en: "Software Engineering & Internet Computing", de: "Software Engineering & Internet Computing "),
  author: (name: "Lord Ipsus", student-number: 11223344),
  advisor: (name: "Darth Ipsus", pre-title: "Univ.Prof.Dr."),
  assitants: ((name: "Ipsinator", pre-title: "Sir"),),
  keywords: ("Lorem Ipsum"),
  date: datetime.today(),
)

#show: flex-caption-styles
#show: toc-styles
#show: front-matter-styles

// set the default "supplement" for all "algorithm" figures. The supplement is shown when referencing it (e.g. @my-alg)
#show figure.where(kind: "algorithm"): set figure(supplement: "Algorithm")

#include "content/front-matter.typ"
#outline()

#show: main-matter-styles
#show: page-header-styles

#include "content/main.typ"

#show: back-matter-styles
#set page(header: none)

#outline(title: "List of Figures", target: figure.where(kind: image))
#outline(title: "List of Tables", target: figure.where(kind: table))
#outline(title: "List of Algorithms", target: figure.where(kind: "algorithm"))

#bibliography("refs.bib")

#show: appendix-styles

#include "content/appendix.typ"