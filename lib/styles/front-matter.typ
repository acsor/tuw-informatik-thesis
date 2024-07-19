#let front-matter = rest => {
  set page(numbering: "i")
  counter(page).update(1)
  counter(heading).update(0)
  set heading(numbering: none)

  rest
}