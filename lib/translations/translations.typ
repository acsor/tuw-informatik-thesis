#import "@preview/linguify:0.4.1": linguify, set-database

#set text(lang: "en")

#let init_database = (title, subtitle) => {
  let lang_data = toml("translations.toml")
  lang_data.lang.en.insert("title", title.en)
  lang_data.lang.de.insert("title", title.de)
  lang_data.lang.en.insert("subtitle", subtitle.en)
  lang_data.lang.de.insert("subtitle", subtitle.de)
  set-database(lang_data);
}

#let translate = key => {
  linguify(key)
}
