// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!

#let leftMargin = locate(loc => if calc.even(loc.page()) { 1.5cm } else { 2.5cm })

#let rightMargin = locate(loc => if calc.even(loc.page()) { 2.5cm } else { 1.5cm })


#let project(title: "", authors: (), date: none, logo: none, cover: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(lang: "en", size: 9pt, font:"Averia Serif Libre")
  set page(
    margin: (
      top: 1.6cm,
      bottom: 2.0cm,
      inside: 1.8cm,
      outside: 2.2cm,
    ),
  )

  if cover != none {
    set page(background: image(cover))
    align(center)[
      #v(2em, weak: true)
      #block(text(fill: white, weight: 700, 10.75em,  title))
      #v(10em, weak: true)
      #block(text(fill: white, weight: 700, 1.75em,  "A science Fantasy RPG"))
    ]
    pagebreak()
    set page(background: none)
  }
  

  // Title row.
  align(center)[
    #v(2em, weak: true)
    #block(text(weight: 700, 10.75em,  title))
    #v(10em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  // logo
  if logo != none {
    align(center)[
      #v(24pt)
      #image(logo, width:33%)
      #v(24pt)
    ]
  }


  

  // Main body.
  set par(justify: true)
  body
}



#let chapterLayout(title,numCol, content) = {
  line(length: 100%, stroke: 2pt + gradient.linear(..color.map.rainbow))
  title 
  v(18pt)
  line(length: 100%, stroke: 2pt + gradient.linear(..color.map.rainbow))
  v(30pt)
  
  if numCol == 1 {
    content
  } else {
    columns(numCol, gutter: 5mm, content)
  }  
}  