\version "2.19.80"

\header {
  title = "Across the Snow"
  composer = "Joseph C. Bridge"
  poet = "Sandys Wason"
}

soprano = \relative c'' {
  \key f \major
  \time 6/8
  \oneVoice
  \partial 8 c8 \(
    f4. e8 d c
    \voiceOne
    d4 a8 <g c>4 \) <e a>8 \(
      f8 g a f4 g8
      a4.~a8 \) r d,
  d4 bes'8 a r f
  d4 bes'8 a4 f8
  d4 f8 d(e) f
  a4.~a4 a8
  a4 a8 a(g) c
  c4 c8 c(a) c
  d4. d
  e4.~e4 e8
  f4 d8 c4 c8
  d4 c8 f,4 f8
  f8(g) a c4 bes8
  g4.~g4 g8
  a4 a8 a4 a8
  a4 a8 a4 a8
  a4.(g8 a) g
}

alto = \relative c' {
  \voiceTwo
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

tenor = \relative c' {
  \key f \major
  \time 6/8
  \oneVoice
  \partial 8 r8
  r4 r8 r4 c8
  f4. e8 d c
  d4 <a c>8 <bes d>4.
  \voiceOne d4.(cis8)r d,
  d4 bes'8 a r f
  d4 bes'8 a4 f8
  d'4 c8 bes4 a8
  g4.~g4 a8
  f4 a8 bes4 c8
  c4 c8 c4 c8
  a4. a8( g a)
  bes4.~bes4 bes8
  a4 a8 c4 a8
  a4 c8 c(bes) c
  d4 d8 d4 d8
  c4.~c4 c8
  c4 c8 d4 d8
  c4 c8 b4 b8
  c4.~c4 c8
}

bass = \relative c' {
  \voiceTwo
  \partial 8 s8
  s2.
  s2.
  s2.
  a4.~a8 r d,
  d4 bes'8 a r f
  d4 bes'8 a4 f8
  bes4 a8 g4 f8
  e4.~e4 f8
  d4 d8 c4 bes'8
  a4 gis8 a(f) a
  f4(e8) d4.
  c4.~c4 c8
  d4 bes'8 a4 f8
  d4 bes'8 a(g) a
  bes4 a8 g4 <bes, g'>8
  <c g'>4.~q4 c8
  f4 a,8 bes4 bes8
  c4 c8 d4 d8
  c4.~c4 c8
}

words = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  The night was dark, the fend- ed flame in Ma- ry's lamp was low, __
  As from the East the wise men came a- cross the snow. __
  The cam- els knwlt be- fore the babe, the ma- gi- ans out- spread. __
  The hoard- ed hom- a- ges of Kings be- fore __ his bed. __
}

\score {
  \new Choirstaff <<
    \new Staff <<
      \context Voice = soprano { \soprano }
      \context Voice = alto    { \alto    }
    >>
    \new Lyrics \lyricsto soprano { \words }
    \new Staff <<
      \new Voice = tenor { \clef bass \tenor }
      \new Voice = bass  { \clef bass \bass  }
    >>
  >>
  \layout {}
}
