\version "2.25.13"

\include "kjp.ly"
\include "articulate.ly"

\header {
  title = "Across the Snow"
  composer = "Joseph C. Bridge"
  poet = "Sandys Wason"
}

RehearsalTrack = {
  \textMark \markup \box "1a" s8 s2.*4
  \textMark \markup \box "1b"    s2.*5
  \textMark \markup \box "1c"    s2.*5
  \textMark \markup \box "1d"    s2.*5
  \textMark \markup \box "2a"    s2.*5
  \textMark \markup \box "2b"    s2.*5
  \textMark \markup \box "2c"    s2.*5
  \textMark \markup \box "2d"    s2.*5
  \textMark \markup \box "2e"    s2.*5
  \textMark \markup \box "3a"    s2.*5
  \textMark \markup \box "3b"    s2.*5
  \textMark \markup \box "3c"    s2.*5
  \textMark \markup \box "3d"    s2.*6
}

dynamicsOrgan = {
  s8 | s2.*51 |
  s2. | s\< | s\> | % 3b
  s2.\! | s\> | s\! | s2.*2 |
  s2.*2 | s4. s\< | s\! s\> | s2.\! | s |
}

organ = \relative {
  \key f \major
  r8 | R2.*51 |
  f'2.^\markup{ ORGAN \italic "(Orchestral Oboe)" } ~ | 2. | f'8(d bes g a g |
  d4.) r4 r8 | d'8(c a f a c,) | f2.~ | f~ | f4 r8 r4 r8 |
  R2. | R | f8^\markup\italic "Voix Celestes" (g a c4 a8 | g8 a f g a c) |
  <<{\vo f2.~ f\fermata} \new Voice {\vt r4 r8 <f, a>4 r8 | q2.\fermata |}>>
}

dynamicsWomen = {
  s8 | s2.*3 s2 s8 s\p |
  s4\< s8\> s4\! s8\< | s4 s8\> s4.\! | s2.*2 | s4. s\cresc |
  s2.*2 | s2.\f | s4. s\> | s4 s2\! |
  s2.\< | s2\f\> s8 s\p | s2.\< | s2 s8 s\! | s2.\> |
  s4. s\! | s2.*2 | s4.\< s\> | s s4\! s8\p | % 2a
  s2.*4 | s2.\< |
  s2 s8 s\! | s4 s2\> | s2.\! | s2.*2 |
  s2.*3 | s2 s8 s\p | s4\< s8\> s4.\! |
  s4\< s\> s\! | s4. s\< | s\> s\! | s2 s4\cresc | s2. |
  s2. | s\f | s | s2\> s8\! s\p | s2.\< | % 3a
  s4.\< s\f | s2.\> | s2\p s8 s\< | s4. s\> | s2.\! |
  s4.\< s\> | s2.\! | s4. s\omit\dim-\markup\italic "sempre dim." | s2. | s4. s\pp\omit\dim |
  s2.*2 | s2.\ppp | s2.*3 |
}

soprano = \relative c'' {
  \key f \major
  \time 6/8
  \partial 8 c8 \(
    f4. e8 d c
    d4 a8 c4 \) a8 \(
      f8 g a f4 g8
      a4.~a8 \) r d,
  d4 \( bes'8 a \) r f \( % 5
    d4 bes'8 a4 \) f8
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
      a4.~a8\) r f \(
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
	a4. ~ a4 \) d,8 \(
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
  \bar "|."
}

alto = \relative c' {
  \partial 8 s8 \(
    s2.
    s4. g'4 \) e8 \( |
                     f4 \apart f8 \auto f4~f8
                     f4.(e8) \) r d
  d4 bes'8 a r f % 5
  d4 bes'8 a4 f8
  d4 d8 d4 d8
  d4.(cis4) d8
  f4 f8 e4 e8
  f4 e8 f4 f8 % 10
  f4. f
  e4.~e4 g8
  f4 f8 f4 f8
  f4 e8 f4 f8
  f4 f8 a4 g8 % 15
  e4.~e4 e8
  f4 f8 f4 f8
  f4 f8 f4 f8
  f4.(e8 f) e
  c4.~c8 s4 % 20
  s2.
  s2.
  f4 f8 f4~f8
  f4.~f8 r4
  r2. % 25
  r4 r8 r4 f8
  e4 f8 e4 f8
  f4.~f4 f8
  g4 a8 f4 g8
  g4 a8 f4 g8 % 30
  g4.(d8 e)f8
  e4.~e4 s8
  s2.
  s2.
  s2. % 35
  s2.
  f4 f8 f4~f8
  f4.(e4) d8
  d4 bes'8 a r f
  d4 bes'8 a4 f8 % 40
  d4 d8 d4 d8
  d4.(cis4) d8
  g4 g8 e4 e8
  f4 e8 f4 f8
  f4. f % 45
  g4.~g4 g8
  f4 f8 f4 f8
  f4 e8 f4 f8
  f4 f8 f4 f8
  f4 f8 f4 f8 % 50
  f4.(e8 f) e
  c4.~c8 r c
  d4 d8 d4 d8
  d4.~d4 d8
  d4 d8 f4 f8 % 55
  d4.(c4) c8
  e4 r8 c8(d c)
  d4 r8 c8(d c)
  d4 r8 d4 r8
  d4 r8 d(c d) % 60
  bes4 r8 c4 r8
  c2.~
  c2.~
  c8 r r r4 r8
  r2. % 65
}

dynamicsMen = {
  s8\< | s2. | s4. s\! | s2.\> | s4. s4\! s8\p |
  s4\< s8\> s4\! s8\< | s4 s8\> s4.\! | s2.*2 | s4. s\cresc |
  s2.*2 | s2.\f | s4. s\> | s4 s2\! |
  s2.\< | s2\f\> s8 s\p | s2.\< | s2 s8 s\! | s2.\> |
  s4. s\! | s4.\< s\! | s\> s\! | s4.\< s\> | s s\! | % 2a
  s2 s8 s\p | s2.*3 | s2.\< |
  s2 s8 s\! | s4 s2\> | s2.\! | s2.*2 |
  s4.\< s\> | s s\! | s\< s\> | s2\! s8 s\p | s4\< s8\> s4.\! |
  s4\< s\> s\! | s4. s\< | s\> s\! | s2 s4\cresc | s2. |
  s2. | s\f | s | s2\> s8\! s\p | s2.\< | % 3a
  s4.\< s\f | s2.\> | s2\p s8 s\< | s4. s\> | s2.\! |
  s4.\< s\> | s2.\! | s4. s\omit\dim-\markup\italic "sempre dim." | s2. | s4. s\pp\omit\dim |
  s2.*2 | s2.\ppp | s2.*3 |
}

tenor = \relative c' {
  \key f \major
  \time 6/8
  \partial 8 r8
  r4 r8 r4 c8
  f4. e8 d c
  d4 <a c>8 <bes d>4.
  d4.(cis8)r d,
  d4 bes'8 a r f % 5
  d4 bes'8 a4 f8
  d'4 c8 bes4 a8
  g4.~g4 a8
  f4 a8 bes4 c8
  c4 c8 c4 c8 % 10
  a4. a8( g a)
  bes4.~bes4 bes8
  a4 a8 c4 a8
  a4 c8 c(bes) c
  d4 d8 d4 d8 % 15
  c4.~c4 c8
  c4 c8 d4 d8
  c4 c8 b4 b8
  c4.~c4 c8
  a4.~a8 r r % 20
  r4 r8 r4 c8
  f4. e8 d c
  d4 s8 d4(ees8)
  c4.~c8 r r
  r4 r8 r4 f,8 % 25
  a4 d8 c4 c8
  des4 c8 des4 c8
  c4.(b4)b8
  c4 a8 e'4 d8
  c4 a8 e'4 d8 % 30
  c4.~c4 b8
  c4.~c4 r8
  r4 r8 r4 a8
  g4 c,8 c'4.
  r4 r8 r4 c8 % 35
  f4. e8 d c
  d4 <a c>8 <bes d>4.
  d4.(cis4) d,8
  d4 bes'8 a r f
  d4 bes'8 a4 f8 % 40
  d'4 c8 bes4 a8
  g4.~g4 a8
  f4 a8 bes4 c8
  c4 c8 c(f) e
  d8(c bes a g) f % 45
  e4(g8 c4) bes8
  a4 bes8 c4 a8
  a4 c8 c4 c8
  c4 c8 c4 c8
  d4 d8 d4 d8 % 50
  c4.~c4 c8
  a4.~a8 r f
  f4 f8 f4 f8
  f4.(f4) f8
  f4 a8 c(bes) a % 55
  a4.~a4 a8
  a4 r8 a8(g a)
  a4 r8 a(g a)
  f4 r8 f4 r8
  f4 r8 f4 r8 % 60
  f4 r8 f4 r8
  a2.~
  a2.~
  a8 r r r4.
  <f a>2.^\fermata % 65
} 

bass = \relative c' {
  \partial 8 r8
  r4 r8 r4 s8 |
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
  d'4 <a c>8 bes4~bes8
  f4.~f8 r r
  r2. % 25
  r4 r8 r4 a8
  a4 a8 a4 a8
  d,4.~d4 d8
  e4 f8 g4 f8
  e4 f8 g4 f8 % 30
  e4.(g4) g8
  c,4.~c4 s8
  s2.
  s2.
  s2. % 35
  s2.
  s2.
  s4. s4 d8
  d4 bes'8 a r f
  d4 bes'8 a4 f8 % 40
  bes4 a8 g4 f8
  e4.~e4 f8
  d4 d8 c4 bes'8
  a4 gis8 a(f) a
  bes8(a g f e) d % 45
  c4.~c4 c8
  d4 bes'8 a4 f8
  d4 bes'8 a4 a8
  f4 f8 a,4 a8
  bes4 bes8 b4 b8
  c4.~c4 c8
  f4.~f8 r a,
  bes4 bes8 d4 d8
  bes4.~bes4 bes8
  d4 d8 d4 d8
  f4.~f4 f8
  d4 r8 f4 r8
  d4 r8f4 r8
  d4 r8 bes4 r8
  g4 r8 bes4 r8
  g4 r8 a4 r8
  <f c'>2.~
  q2.~
  q8 r r r4 r8
  q2.
}

words = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  The night was dark, the fend -- ed flame in Ma -- ry's lamp was low, __
  As from the East the wise men came a -- cross the snow. __
  The cam -- els knelt be -- fore the babe, the ma -- gi -- ans out -- spread. __
  The hoard -- ed hom -- a -- ges of Kings be -- fore __ his bed.

  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  His ba -- by hands stray'd o'er the gold, up -- on the myrrh did cling, __
  A -- mid the grains of frank -- in -- cense groped won -- __ der -- ing.
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  The night was dark the fend -- ed flame in Ma -- ry's lamp was low, __
  As to the East the Kings re -- turned a -- cross the snow., __
  as to the East the Kings re -- turned, as to the East the Kings re -- turned a -- cross __ the snow, __
  re -- turned a -- cross the snow, __
  re -- turned a -- cross the snow, __
  re -- turned a -- cross the snow, __
  a -- cross, the snow. __
}

wordsSop = \lyricmode {
  \repeat unfold 15 \skip 1
  The night was dark, the fend -- ed flame in Ma -- ry's lamp was low, __
  As from the East the wise men came a -- cross the snow. __
  The cam -- els knelt be -- fore the babe, the ma -- gi -- ans out -- spread. __
  The hoard -- ed hom -- a -- ges of Kings be -- fore __ his bed.

  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  His ba -- by hands stray'd o'er the gold, up -- on the myrrh did cling, __
  A -- mid the grains of frank -- in -- cense groped won -- __ der -- ing.
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  The night was dark the fend -- ed flame in Ma -- ry's lamp was low, __
  As to the East the Kings re -- turned a -- cross the snow., __
  as to the East the Kings re -- turned, as to the East the Kings re -- turned a -- cross __ the snow, __
  re -- turned a -- cross the snow, __
  re -- turned a -- cross the snow, __
  re -- turned a -- cross the snow, __
  a -- cross, the snow. __
}

wordsAlto = \lyricmode {
  \repeat unfold 6 \skip 1
  The night was dark, the fend -- ed flame in Ma -- ry's lamp was low, __
  As from the East the wise men came a -- cross the snow. __
  The cam -- els knelt be -- fore the babe, the ma -- gi -- ans out -- spread. __
  The hoard -- ed hom -- a -- ges of Kings be -- fore __ his bed.

  \repeat unfold 4 \skip 1
  up -- on the myrrh did cling, __
  A -- mid the grains of frank -- in -- cense groped won -- __ der -- ing.
  \repeat unfold 4 \skip 1
  The night was dark the fend -- ed flame in Ma -- ry's lamp was low, __
  As to the East the Kings re -- turned a -- cross the snow., __
  as to the East the Kings re -- turned, as to the East the Kings re -- turned a -- cross __ the snow, __
  re -- turned a -- cross the snow, __
  re -- turned a -- cross the snow, __
  re -- turned a -- cross the snow, __
  a -- cross, a -- cross the snow. __
}

wordsTenor = \lyricmode {
  \repeat unfold 9 \skip 1
  The night was dark, the fend -- ed flame in Ma -- ry's lamp was low, __
  As from the East the wise men came a -- cross the snow. __
  The cam -- els knelt be -- fore the babe, the ma -- gi -- ans out -- spread. __
  The hoard -- ed hom -- a -- ges of Kings be -- fore __ his bed.

  \repeat unfold 8 \skip 1
  His ba -- by hands up -- on the myrrh did cling, __
  A -- mid the grains of frank -- in -- cense groped won -- __ der -- ing.
  \repeat unfold 13 \skip 1
  The night was dark the fend -- ed flame in Ma -- ry's lamp was low, __
  As to the East the Kings re -- turned a -- cross the snow., __
  as to the East the Kings re -- turned, as to the East the Kings re -- turned a -- cross __ the snow, __
  re -- turned a -- cross the snow, __
  re -- turned a -- cross the snow, __
  re -- turned a -- cross the snow, __
  a -- cross, a -- cross the snow. __
}

wordsBass = \lyricmode {
  \skip 1
  The night was dark, the fend -- ed flame in Ma -- ry's lamp was low, __
  As from the East the wise men came a -- cross the snow. __
  The cam -- els knelt be -- fore the babe, the ma -- gi -- ans out -- spread. __
  The hoard -- ed hom -- a -- ges of Kings be -- fore __ his bed.

  \repeat unfold 4 \skip 1
  up -- on the myrrh did cling, __
  A -- mid the grains of frank -- in -- cense groped won -- __ der -- ing.
  The night was dark the fend -- ed flame in Ma -- ry's lamp was low, __
  As to the East the Kings re -- turned a -- cross the snow., __
  as to the East the Kings re -- turned, as to the East the Kings re -- turned a -- cross __ the snow, __
  re -- turned a -- cross the snow, __
  re -- turned a -- cross the snow, __
  re -- turned a -- cross the snow, __
  a -- cross, a -- cross the snow. __
}

wordsMidiSop = \lyricmode {
  "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" ""
  "The " "night " "was " "dark, " "the " fend "ed " "flame " "in " Ma "ry's " "lamp " "was " "low, " 
  "\nAs " "from " "the " "East " "the " "wise " "men " "came " a "cross " "the " "snow. " 
  "\nThe " cam "els " "knelt " be "fore " "the " "babe, " "the " ma gi "ans " out "spread. " 
  "\nThe " hoard "ed " hom a "ges " "of " "Kings " be "fore "  "his " "bed. "

  "" "" "" "" "" "" "" "" "" "" "" "" "" "" ""
  "\nHis " ba "by " "hands " "stray'd " "o'er " "the " "gold, " up "on " "the " "myrrh " "did " "cling, " 
  "\nA" "mid " "the " "grains " "of " frank in "cense " "groped " won  der "ing. "
  "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" ""
  "\nThe " "night " "was " "dark " "the " fend "ed " "flame " "in " Ma "ry's " "lamp " "was " "low, " 
  "\nAs " "to " "the " "East " "the " "Kings " re "turned " a "cross " "the " "snow., " 
  "\nas " "to " "the " "East " "the " "Kings " re "turned, " "as " "to " "the " "East " "the " "Kings " re "turned " a "cross "  "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\na" "cross, " "the " "snow. " 
}

wordsMidiAlto = \lyricmode {
  "" "" "" ""
  "The " "night " "was " "dark, " "the " fend "ed " "flame " "in " Ma "ry's " "lamp " "was " "low, " 
  "\nAs " "from " "the " "East " "the " "wise " "men " "came " a "cross " "the " "snow. " 
  "\nThe " cam "els " "knelt " be "fore " "the " "babe, " "the " ma gi "ans " out "spread. " 
  "\nThe " hoard "ed " hom a "ges " "of " "Kings " be "fore "  "his " "bed. "

  "" "" "" ""
  "\nup" "on " "the " "myrrh " "did " "cling, " 
  "\nA" "mid " "the " "grains " "of " frank in "cense " "groped " won  der "ing. "
  "" "" "" ""
  "\nThe " "night " "was " "dark " "the " fend "ed " "flame " "in " Ma "ry's " "lamp " "was " "low, " 
  "\nAs " "to " "the " "East " "the " "Kings " re "turned " a "cross " "the " "snow., " 
  "\nas " "to " "the " "East " "the " "Kings " re "turned, " "as " "to " "the " "East " "the " "Kings " re "turned " a "cross "  "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\na" "cross, " a "cross " "the " "snow. " 
}

wordsMidiTenor = \lyricmode {
  "" "" "" "" "" "" "" "" ""
  "The " "night " "was " "dark, " "the " fend "ed " "flame " "in " Ma "ry's " "lamp " "was " "low, " 
  "\nAs " "from " "the " "East " "the " "wise " "men " "came " a "cross " "the " "snow. " 
  "\nThe " cam "els " "knelt " be "fore " "the " "babe, " "the " ma gi "ans " out "spread. " 
  "\nThe " hoard "ed " hom a "ges " "of " "Kings " be "fore "  "his " "bed. "

  "" "" "" "" "" "" "" ""
  "\nHis " ba "by " "hands " up "on " "the " "myrrh " "did " "cling, " 
  "\nA" "mid " "the " "grains " "of " frank in "cense " "groped " won  der "ing. "
  "" "" "" "" "" "" "" "" "" "" "" "" ""
  "\nThe " "night " "was " "dark " "the " fend "ed " "flame " "in " Ma "ry's " "lamp " "was " "low, " 
  "\nAs " "to " "the " "East " "the " "Kings " re "turned " a "cross " "the " "snow., " 
  "\nas " "to " "the " "East " "the " "Kings " re "turned, " "as " "to " "the " "East " "the " "Kings " re "turned " a "cross "  "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\na" "cross, " a "cross " "the " "snow. " 
}

wordsMidiBass = \lyricmode {
  ""
  "The " "night " "was " "dark, " "the " fend "ed " "flame " "in " Ma "ry's " "lamp " "was " "low, " 
  "\nAs " "from " "the " "East " "the " "wise " "men " "came " a "cross " "the " "snow. " 
  "\nThe " cam "els " "knelt " be "fore " "the " "babe, " "the " ma gi "ans " out "spread. " 
  "\nThe " hoard "ed " hom a "ges " "of " "Kings " be "fore "  "his " "bed. "

  "" "" "" ""
  "\nup" "on " "the " "myrrh " "did " "cling, " 
  "\nA" "mid " "the " "grains " "of " frank in "cense " "groped " won  der "ing. "

  "\nThe " "night " "was " "dark " "the " fend "ed " "flame " "in " Ma "ry's " "lamp " "was " "low, " 
  "\nAs " "to " "the " "East " "the " "Kings " re "turned " a "cross " "the " "snow., " 
  "\nas " "to " "the " "East " "the " "Kings " re "turned, " "as " "to " "the " "East " "the " "Kings " re "turned " a "cross "  "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\nre" "turned " a "cross " "the " "snow, " 
  "\na" "cross, " a "cross " "the " "snow. " 
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      \new Staff = organ
      <<
        \new Dynamics \with {alignAboveContext = organ} \dynamicsOrgan
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = women \with {
          printPartCombineTexts = ##f
        }
        <<
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
                                %          \new Voice \partCombine #'(0 . 88) \soprano \alto
          \new Voice {\vo \soprano}
          \new Voice {\vt \alto}
          \new NullVoice \soprano
          \addlyrics \words
        >>
        \new Staff = men \with {
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = men} \dynamicsMen
                                %          \new Voice \partCombine #'(0 . 88) \tenor \bass
          \new Voice {\vo \tenor}
          \new Voice {\vt \bass}
          \new Lyrics \with {alignAboveContext = men} \altwords
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
                                %        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
                                %        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new Staff = organ \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org"
      }
      <<
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = organ} \dynamicsOrgan
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = women \with {
          printPartCombineTexts = ##f
        }
        <<
          \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
                                %        \new Voice \partCombine #'(0 . 88) \soprano \alto
          \new Voice {\vo \soprano}
          \new Voice {\vt \alto}
          \new NullVoice \soprano
          \addlyrics \words
        >>
        \new Staff = men \with {
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = men} \dynamicsMen
                                %        \new Voice \partCombine #'(0 . 88) \tenor \bass
          \new Voice {\vo \tenor}
          \new Voice {\vt \bass}
          \new Lyrics \with {alignAboveContext = men} \altwords
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
                                %        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
                                %        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new Staff = organ \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org"
      }
      <<
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = organ} \dynamicsOrgan
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
          \new Voice \soprano
          \addlyrics \wordsSop
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
          \new Voice \alto
          \addlyrics \wordsAlto
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
          \new Voice \tenor
          \addlyrics \wordsTenor
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
          \new Voice \bass
          \addlyrics \wordsBass
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
                                %        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
                                %        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new Staff = organ \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org"
      }
      <<
        \magnifyStaff #4/7
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = organ} {\teeny \dynamicsOrgan}
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
          \new Voice \soprano
          \addlyrics \wordsSop
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
          \new Voice \alto
          \addlyrics {\tiny \wordsAlto}
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenor}
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
          \new Voice \bass
          \addlyrics {\tiny \wordsBass}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
                                %        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
                                %        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new Staff = organ \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org"
      }
      <<
        \magnifyStaff #4/7
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = organ} {\teeny \dynamicsOrgan}
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
          \new Voice \soprano
          \addlyrics {\tiny \wordsSop}
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
          \new Voice \alto
          \addlyrics \wordsAlto
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenor}
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
          \new Voice \bass
          \addlyrics {\tiny \wordsBass}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
                                %        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
                                %        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new Staff = organ \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org"
      }
      <<
        \magnifyStaff #4/7
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = organ} {\teeny \dynamicsOrgan}
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
          \new Voice \soprano
          \addlyrics {\tiny \wordsSop}
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
          \new Voice \alto
          \addlyrics {\tiny \wordsAlto}
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
          \new Voice \tenor
          \addlyrics \wordsTenor
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
          \new Voice \bass
          \addlyrics {\tiny \wordsBass}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
                                %        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
                                %        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new Staff = organ \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org"
      }
      <<
        \magnifyStaff #4/7
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = organ} {\teeny \dynamicsOrgan}
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
          \new Voice \soprano
          \addlyrics {\tiny \wordsSop}
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
          \new Voice \alto
          \addlyrics {\tiny \wordsAlto}
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenor}
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
          \new Voice \bass
          \addlyrics \wordsBass
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
                                %        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
                                %        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
    <<
      \new Staff = organ
      <<
        \new Dynamics \dynamicsOrgan
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = soprano
        <<
          \new Dynamics \dynamicsWomen
          \new Voice \soprano
          \addlyrics \wordsMidiSop
        >>
        \new Staff = alto
        <<
          \new Dynamics \dynamicsWomen
          \new Voice \alto
        >>
        \new Staff = tenor
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsMen
          \new Voice \tenor
        >>
        \new Staff = bass
        <<
          \clef bass
          \new Dynamics \dynamicsMen
          \new Voice \bass
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
    <<
      \new Staff = organ
      <<
        \new Dynamics \dynamicsOrgan
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = soprano
        <<
          \new Dynamics \dynamicsWomen
          \new Voice \soprano
        >>
        \new Staff = alto
        <<
          \new Dynamics \dynamicsWomen
          \new Voice \alto
          \addlyrics \wordsMidiAlto
        >>
        \new Staff = tenor
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsMen
          \new Voice \tenor
        >>
        \new Staff = bass
        <<
          \clef bass
          \new Dynamics \dynamicsMen
          \new Voice \bass
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
    <<
      \new Staff = organ
      <<
        \new Dynamics \dynamicsOrgan
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = soprano
        <<
          \new Dynamics \dynamicsWomen
          \new Voice \soprano
        >>
        \new Staff = alto
        <<
          \new Dynamics \dynamicsWomen
          \new Voice \alto
        >>
        \new Staff = tenor
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsMen
          \new Voice \tenor
          \addlyrics \wordsMidiTenor
        >>
        \new Staff = bass
        <<
          \clef bass
          \new Dynamics \dynamicsMen
          \new Voice \bass
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
    <<
      \new Staff = organ
      <<
        \new Dynamics \dynamicsOrgan
        \new Voice \organ
      >>
      \new ChoirStaff <<
        \new Staff = soprano
        <<
          \new Dynamics \dynamicsWomen
          \new Voice \soprano
        >>
        \new Staff = alto
        <<
          \new Dynamics \dynamicsWomen
          \new Voice \alto
        >>
        \new Staff = tenor
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsMen
          \new Voice \tenor
        >>
        \new Staff = bass
        <<
          \clef bass
          \new Dynamics \dynamicsMen
          \new Voice \bass
          \addlyrics \wordsMidiBass
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
