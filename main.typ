#import "template.typ": *
#import "chap01.typ": *
#import "chap02.typ": *
#import "chap03.typ": *
#import "chap04.typ": *
#import "chap05.typ": *
#import "chap06.typ": *


// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Troika!",
  authors: ( 
    "Melsonian Ars Council", 
  ),
  date: "November 15, 2023",
  logo: "fortle.svg",
  cover: "troika_cover.png"
  
  
)



#show heading.where(
  level: 1
): it => block(width: 100%)[
  #set align(center)
  #set par(justify: false)

  #set text(size:40pt, hyphenate: false, weight: 700 , font: "Bokor")
  #it.body
]

#show heading.where(
  level: 2
): it => block(width: 100%)[
  #set align(left)
  #set par(justify: false)
  #set text(size:1.4em,hyphenate: false, weight: 700,  font: "Bokor")
  #it.body
  #v(6pt)
]


#show heading.where(
  level: 3
): it => block(width: 100%)[
  #set align(left)
  #set par(justify: false)
  #set text(size:1.2em,hyphenate: false, weight: 700, font: "Bokor")
  #it.body
]

#show heading.where(
  level: 4
): it => block(width: 100%)[
  #set align(left)
  #set par(justify: false)
  #set text(size:1.1em,hyphenate: false, weight: 400, style: "italic", font: "Averia Serif Libre")
  #it.body
]

#set page(header: locate(loc => {
  let elems = query(
    selector(heading).after(loc),
    loc,
  )
  let academy = smallcaps[
    Troika!
  ]
  if elems == () {
    align(right, academy)
  } else {
    let body = elems.first().body
    academy + h(1fr) + emph(body)
  }
}))

#show outline.entry.where(
  level: 1
): it => {
  v(10pt, weak: true)
  strong(it)
}

#show outline.entry.where(
  level: 1
): it => {
  v(6pt, weak: true)
  text(size: 1.1em, weight:700,it)
}

#set page(
  background: locate(loc => if calc.even(loc.page()) {
    if loc.page() > 6  {
      image(
        "troika-left-border.png",
      )
    }
} else {
  if loc.page() > 6 {
    image(
      "troika-right-border.png",
    )
  }// odd page
}))

#pagebreak()

#chapterLayout(chap01_title, 1, chap01)


#pagebreak()

#chapterLayout([ = Contents], 3, outline( indent: 3mm, depth: 3, title: none))


#pagebreak()

#chapterLayout(chap02_title, 2, chap02)

// #pagebreak()

#chapterLayout(chap03_title, 2, chap03)

#pagebreak() 

#chapterLayout(chap04_title, 2, chap04)

// #pagebreak()

#chapterLayout(chap05_title, 2, chap05)

#pagebreak()

#chapterLayout(chap06_title, 1, chap06)


