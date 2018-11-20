\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Maria Walks Amid the Thorn"
  copyright = \today
}

global = {
  \key bes \major
  \time 4/4
  \tempo 4 = 60
}

sopwordsone = \lyricmode {
  Ma- ri- a walks a- mid the thorn,
  Ky- rie e- lei- son.
  which se- ven years no leaf has borne,
  She walks a- mid the wood of thorn,
  Je- sus and Ma- ri- a.
  What
}

sopwordstwo = \lyricmode {
  What 'neath her heart does Ma- ry bear?
  Ky- rie e- lei- son.
  A lit- tle child does Ma- ry bear,
  Be- neath her heart He nest- les there.
  Je- sus and Ma- ri- a.
  And
}

sopwordsthree = \lyricmode {
  And as the two are pas- sing near,
  Ky- rie e- lei- son.
  Lo! ros- es on the thorns ap- pear,
  Lo! ros- es on the thorns ap- pear,
  Je- sus and Ma- _ _ _ ri- a.
}

altwordsone = \lyricmode {
  Ma- ri- a walks a- mid the thorn,
  Ky- rie e- lei- son.
  which se- ven years no leaf has borne,
  She walks a- mid the wood of thorn,
  Je- sus and Ma- ri- a.
}

altwordstwo = \lyricmode {
  What 'neath her heart does Ma- ry bear?
  Ky- rie e- lei- son.
  A lit- tle child does Ma- ry bear,
  Be- neath her heart He nest- les there.
  Je- sus and Ma- ri- a.
}

altwordsthree = \lyricmode {
  And as the two are pas- sing near,
  Ky- rie e- lei- son.
  Lo! ros- es on the thorns ap- pear,
  Lo! ros- es on the thorns ap- pear,
  Je- sus and Ma- _ _ ri- a.
}

Msopwordsone = \lyricmode {
  Ma ri "a " "walks " a "mid " "the " "thorn,"
  "/Ky" "rie " "e" "lei" "son."
  "/which " "se" "ven " "years " "no " "leaf " "has " "borne,"
  "/She " "walks " "a" "mid " "the " "wood " "of " "thorn,"
  "/Je" "sus " "and " "Ma" "ri" "a."
}

Msopwordstwo = \lyricmode {
  "\What" "'neath " "her " "heart " "does " "Ma" "ry " "bear?"
  "/Ky" "rie " "e" "lei" "son."
  "/A " "lit" "tle " "child " "does " "Ma" "ry " "bear,"
  "/Be" "neath " "her " "heart " "He " "nest" "les " "there."
  "/Je" "sus " "and " "Ma" "ri" "a."
}

Msopwordsthree = \lyricmode {
  "\And " "as " "the " "two " "are " "pas" "sing " "near,"
  "/Ky" "rie " "e" "lei" "son."
  "/Lo! " "ros" "es " "on " "the " "thorns " "ap" "pear,"
  "/Lo! " "ros" "es " "on " "the " "thorns " "ap" "pear,"
  "/Je" "sus " "and " "Ma" "ri" "a."
}

sopmelody = \relative c' {
  \partial 4 d4
  \repeat volta 3 {
    g4. a8 bes4 d
    bes4 a8(g) a2
    bes4 bes8 bes c2
    d2 r4 bes8(c)
    d4. c8 d4 ees8(d)
    c4. bes8 c4 d8(c)
    bes4. a8 bes4 c8(bes)
    a4. g8 a2
    g4. a8 bes4 d
  }
  \alternative {
    { bes8(a) g2 d4 }
    { bes'8(a) g2 r4 }
  }
}

altmelody = \relative c' {
  \partial 4 r4
  \repeat volta 3 {
    r4 ees4 d8 c bes a
    g4 ees' d2
    r2 ees4 ees8 ees
    f2 g
    r4 f bes8 a g f
    e4 d e fis
    g4 d g8(f) ees(g)
    c,4 ees d2
    r4 g8 g g4 d8(f)
    } \alternative {
      { fis4 g2 r4 }
      { fis4 g2 r4 }
  }
}
  
\score {
  <<
    \new ChoirStaff <<
      \new Staff = sopmelody <<
        \new Voice = "sopmelody" { \global \sopmelody }
      >>
      \new Lyrics = soplyricsone   { s1 }
      \new Lyrics = soplyricstwo   { s1 }
      \new Lyrics = soplyricsthree { s1 }
      \new Staff = altmelody <<
        \new Voice = "altmelody" { \global \altmelody }
      >>
      \new Lyrics = altlyricsone   { s1 }
      \new Lyrics = altlyricstwo   { s1 }
      \new Lyrics = altlyricsthree { s1 }
    >>
    \context Lyrics = soplyricsone   \lyricsto sopmelody  \sopwordsone
    \context Lyrics = soplyricstwo   \lyricsto sopmelody  \sopwordstwo
    \context Lyrics = soplyricsthree \lyricsto sopmelody  \sopwordsthree
    \context Lyrics = altlyricsone   \lyricsto altmelody  \altwordsone
    \context Lyrics = altlyricstwo   \lyricsto altmelody  \altwordstwo
    \context Lyrics = altlyricsthree \lyricsto altmelody  \altwordsthree
  >>
    
  \layout {
    \context {
    			% a little smaller so lyrics
       			% can be closer to the staff
      \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
    }
  }
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff = sopmelody <<
        \new Voice = "sopmelody" { \global \unfoldRepeats \sopmelody }
      >>
      \new Staff = altmelody <<
        \new Voice = "altmelody" { \global \unfoldRepeats \altmelody }
      >>
    >>
    
    \context Lyrics = soplyricsone  \lyricsto sopmelody  { \Msopwordsone \Msopwordstwo \Msopwordsthree}
  >>
  
  \midi { }
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff = sopmelody <<
        \new Voice = "sopmelody" { \global \unfoldRepeats \sopmelody }
      >>
      \new Staff = altmelody <<
        \new Voice = "altmelody" { \global \unfoldRepeats \altmelody }
      >>
    >>
    
    \context Lyrics = altlyricsone  \lyricsto altmelody  { \Msopwordsone \Msopwordstwo \Msopwordsthree}
  >>
  
  \midi { }
}
