\header {
  title = "Across the Snow"
  composer = "Joseph C. Bridge"
  poet = "Sandys Wason"
}

soprano = \relative c' {
  \key f \major
  \time 6/8
  \partial 8 c8 \(
    f4. e8 d c
    d4 a8 <g c>4 \) <e a>8 \(
      f8 g a f4 g8
      a4.~a8 \) r d,
  d4 bes'8 a r f
}

alto = \relative c' {
  \partial 8 s8
  s2.
  s2.
  f4 f8 f4~f8
  f4.(e8) r d
  d4 bes'8 a r f
  d4 bes'8 a4 f8
  d4 d8 d4 d8
  d4.(cis4) d8
  f4 f8 e4 e8
  f4 e8 f4 f8
  f4. f
  e4.~e4 g8
  f4 f8 f4 f8
  f4 e8 f4 f8
  f4 f8 a4 g8
  e4.~e4 e8
  f4 f8 f4 f8
  f4 f8 f4 f8
  f4.(e8 f) e
}

tenor = \relative c {
}

bass = \relative c {
}

words = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  The night was dark
}

\score {
  \new Choirstaff <<
    \new Staff <<
      \new Voice soprano { \soprano }
      \new Voice alto    { \alto    }
    >>
    \lyricsto soprano { \words }
    \new Staff <<
      \new Voice tenor { \clef bass \tenor }
      \new Voice bass  { \clef bass \bass  }
    >>
  >>
  \layout {}
}
