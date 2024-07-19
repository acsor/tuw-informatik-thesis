#import "@local/unofficial-tu-wien-thesis:0.0.1": thesis, front-matter-styles, main-matter-styles, back-matter-styles, appendix-styles, flex-caption-styles, toc-styles, general-styles, page-header-styles

#show: thesis.with(
  title: (
    en: "An ode for Lord Ipsum",
    de: "Eine Ode an Lord Ipsum",
  ),
  subtitle: (:),
  lang: "en",
  author: (name: "Lord Ipsus", student-number: 11223344),
  advisor: (
    name: "Darth Ipsus",
    pre-title: "Univ.Prof.Dr.",
    post-title: none,
  ),
  assitants: ((name: "Ipsinator", pre-title: "Sir"),),
  curriculum: "Software Engineering & Internet Computing",
  keywords: ("Pizza"),
  date: datetime.today(),
)

#show: flex-caption-styles
#show: toc-styles
#show: general-styles
#show: front-matter-styles

// set the default "supplement" for all "algorithm" figures. The supplement is shown when referencing it (e.g. @my-alg)
#show figure.where(kind: "algorithm"): set figure(supplement: "Algorithm")

#include "front-matter.typ"
#outline()

#show: main-matter-styles
#show: page-header-styles

#include "main.typ"

#show: back-matter-styles
#set page(header: none)

#outline(title: "List of Figures", target: figure.where(kind: image))
#outline(title: "List of Tables", target: figure.where(kind: table))
#outline(title: "List of Algorithms", target: figure.where(kind: "algorithm"))

#bibliography("refs.bib")

#show: appendix-styles

#include "appendix.typ"