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
  d4 bes'8 a r f % 5
  d4 bes'8 a4 f8
  d4 f8 d(e) f
  a4.~a4 a8
  a4 a8 a(g) c
  c4 c8 c(a) c % 10
  d4. d
  e4.~e4 e8
  f4 d8 c4 c8
  d4 c8 f,4 f8
  f8(g) a c4 bes8 % 15
  g4.~g4 g8
  a4 a8 a4 a8
  a4 a8 a4 a8
  a4.(g8 a) g
  f4.~f8 r c' \( % 20
    f4. e8 d c
    d4 a8 <g c>4 \) <e a>8 \(
      f8 g a f4 g8
      a4.~a8\) r f^\p \(
	a4 d8 c4 \) a8 \( % 25
	  f4 bes8 a4 \) f8
  g4-> f8 g4-> f8
  a4.(g4) g8
  c4 d8 a4 b8
  c4 d8 a4 b8 % 30
  c4.(g4) g8
  g4.~g4 a8 \(
    g4 c,8 c'4.~
    c4.~c4\) c8\(
      f4. e8 d c % 35
      d4 a8 <g c>4\) <e a>8\(
	f8 g a
	f4 g8
	a4. ~ a4 \) \( d,8
		       d4 d'8 a \) r f % 40
  d4 bes'8 a4 f8
  d4 f8 d(e) f
  a4.~a4 a8
  a4 a8 a(g) c
  c4 c8 c(a) c % 45
  d4. d4.
  e4.~e4 e8
  f4 d8 c4 c8
  d4 c8 f,4 f8
  a4 a8 a4 a8 % 50
  a4 a8 a4 a8
  a4.(g8 a) g
  f4.~f8 r f
  g4 g8 bes4 bes8
  g4.(~g8 a) g % 55
  f4 f8 a4 a8
  f4.~f4 f8
  f4 r8 f4 r8
  f4 r8 f4 r8
  f4 r8 f4 r8 % 60
  f2.~
  f4 r8 f4 r8
  f2.~
  f2.~
  f8 r r r4 r8 % 65
  r2.
  \bar "||"
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
  d4 bes'8 a r f % 5
  d4 bes'8 a4 f8
  bes4 a8 g4 f8
  e4.~e4 f8
  d4 d8 c4 bes'8
  a4 gis8 a(f) a % 10
  f4(e8) d4.
  c4.~c4 c8
  d4 bes'8 a4 f8
  d4 bes'8 a(g) a
  bes4 a8 g4 <bes, g'>8 % 15
  <c g'>4.~q4 c8
  f4 a,8 bes4 bes8
  c4 c8 d4 d8
  c4.~c4 c8
  f4.~f8 r r % 20
  s2.
  s2.
  d'4 <a c>8 bes4~bes8)
  f4.~f8 r r
  r2.
  r4 r8 r4 a8
}

words = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  The night was dark, the fend- ed flame in Ma- ry's lamp was low, __
  As from the East the wise men came a- cross the snow. __
  The cam- els knelt be- fore the babe, the ma- gi- ans out- spread. __
  The hoard- ed hom- a- ges of Kings be- fore __ his bed.

  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  His ba- by hands stray'd o'er the gold, up- on the myrrh did cling, __
  A- mid the grains of frank- in- cense groped won- __ der- ing.
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  The night was dark the fend- ed flame in Ma- ry's lamp was low, __
  As to the East the Kings re- turned a- cross the snow., __
  as to the East the Kings re- turned, as to the East the Kings re- turned a- cross __ the snow, __
  re- turned a- cross the snow, __
  re- turned a- cross the snow, __
  re- turned a- cross the snow, __
  a- cross, the snow. __
}

altwords = \lyricmode {
  \partial 8 _8
  _2.*24
  _4. _4 His8 ba-4 by8 hands4 _8
  _2.*18
  cross4. _4 the8
  _2.*14
  _4. a-4.
  cross4.
}

\score {
  \new Choirstaff <<
    \new Staff <<
      \context Voice = soprano { \soprano }
      \context Voice = alto    { \alto    }
    >>
    \new Lyrics \lyricsto soprano { \words }
    \new Lyrics { \altwords }
    \new Staff <<
      \new Voice = tenor { \clef bass \tenor }
      \new Voice = bass  { \clef bass \bass  }
    >>
  >>
  \layout {}
}
