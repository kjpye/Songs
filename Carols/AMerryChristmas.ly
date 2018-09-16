\version "2.19.80"

\header {
  title = "A Merry Christmas"
  arranger = "Arthur Warrell"
}

commonlyrics = \lyricmode {
  We wish you a Mer- ry Christ- mas
}  
mc = \lyricmode {
  We wish you a Mer- ry Christ- mas
}
ny = \lyricmode {
  And a hap- py New Year.
}
gt = \lyricmode {
  Good tid- ings we bring
}
gtk = \lyricmode {
  \gt To you and your kin
}
bring = \lyricmode {
  Now bring us some fig- gy pud- ding,
}
here = \lyricmode {
  bring some out here.
}
like = \lyricmode {
  all like fig- gy pud- ding
}
wg = \lyricmode {
  won't go,
}

tempotrack = {
  \key bes \major
  \time 3/4
}

SopranoMusic = \relative c' {
  \key bes \major
  \time 3/4
  \tempo "Allegro con spirito" 4 = 132
  \partial 4 f4-\f
  bes4 bes8 c bes a
  g4 g g
  c4 8 d c bes
  a4 f f
  d'4 8 ees d c % 5
  bes4 g f8 f
  g4 c a
  bes2 f4-\ff
  bes4 4 4
  a2 4 % 10
  bes4 a g
  f2 c'4
  d4 c8 c bes bes
  f'4 f, f8 f
  g4 c a % 15
  bes2. ~
  bes2 r4
  r2.
  r2.
  r2. % 20
  r2.
  r2.
  r2.
  r2.
  r4 r bes4 % 25
  f'4 c f
  d4(c8 d) c8(bes)
  bes4 a f
  f2 bes4-\mf
  f'2.\< ~ % 30
  f4-\f ees c
  d2 c8. c16
  bes4 bes8(c) bes a
  g4 g g
  c4 c8(d) c8 bes % 35
  a4 f f8. 16
  d'4 d8(ees) d c
  bes4 g f
  g4 c a
  bes2 f4 % 40
  bes4 bes bes
  a2 a4
  bes4 a g
  f2 c'4
  d4 c8 c bes bes % 45
  f'4 f, f8 f
  g4 c a
  bes2 f8. f16
  f4 f r
  ees4-> ees-> r % 50
  g4-> g-> r
  f4-> f-> f8. f16
  f'4\< f fis8. 16
  g8\>(ees) bes4 f' \!
  bes,4 ees c% 55
  d2 f,4
  bes4 bes bes
  a2 4
  bes4 a g
  f2 c'4 % 60
  d4 c8 c bes bes
  f'4 f, f8 8
  g4^\markup{\bold \italic accel.} c a
  d4(bes) ees
  c4 f d % 65
  g4(ees) g^\markup{\bold \italic {molto rall.}}
  bes4 a8 g f ees
  d8(c) d(ees) f f
  g,4 c a
  bes2.-\fermata % 70
  \bar "|."
}

SopranoLyrics = \lyricmode {
  \mc \mc \mc \ny
  \gtk
  \mc \ny
  \gtk
  A hap -py New Year
  For we \like We \like
  For we \like
  So \here \gtk \mc \ny
  And we \wg \wg \wg \wg
  And we won't go till we've got some
  So \here \gtk \mc \ny
  A hap- py new year, \mc \ny
}

AltoMusic = \relative c' {
  \key bes \major
  \time 3/4
  \partial 4 f4-\f
  bes4 bes8 c bes a
  g4 g g
  c4 8 d c bes
  a4 f f
  d'4 8 ees d c % 5
  bes4 g f8 f
  g4 c a
  bes2 f8-\ff(ees)
  ees8(c) bes(c) d(ees)
  f2 fis4 % 10
  g4 f e
  f2 f4
  f4 f8 f bes bes
  a8(g) f4 f8 f
  ees4 g f % 15
  <d f>2. ~
  q2 r4
  r2.
  r2.
  r2. % 20
  r2.
  r2.
  r2.
  r4 r f
  bes4 bes bes % 25
  a2 4
  bes4 a g
  f2 c'4
  d4 c8 c bes bes
  a4 f f8 f % 30
  g4 c a
  bes2 a8. a16
  bes8(f) d(ees) f f
  ees4 bes r
  r8 g' e f g g % 35
  f4 c f8. f16
  f4 bes,8(c) d f
  bes8(g) ees4 f
  ees4 g f
  f4 g ees % 40
  d2 e4
  fis4. e8 d(c)
  bes4 c8(d) e4
  f2 4
  f4  g8 g bes bes % 45
  a8(g) f4 8 8
  d4 g8(f) ees4
  f2 f8. 16
  bes4-> bes8->(c) bes8. a16
  g4 g g % 50
  c4 c8(d) c8. bes16
  a4 f f8. 16
  d'4\< d8(ees) d8. c16
  bes4\> g f \!
  g4 c a % 55
  bes2 f4
  f8(ees) d(ees) f(g)
  c,2 c4
  bes4 c8(d) e4
  f2 4 % 60
  f4 f8 f bes bes
  a8(g) f4 f8 f
  ees4^\markup{\bold \italic accel.} g f
  a4(g) bes
  aes4 c bes % 65
  bes2 c4^\markup{\bold \italic {molto rall.}}
  bes4 8 8 a a
  bes8(a) bes(c) d bes
  g4 g f
  f2.-\fermata % 70
  \bar "|."
}

AltoLyrics = \lyricmode {
  \mc \mc \mc \ny
  \gtk
  \mc \ny
  \gtk \mc
  \ny For we \like We \like
  For we \like
  So bring some, so \here
  Good tid- ings we bring to your kin; \mc \ny
  And we won't go till we've got some, We won't go till we've got some,
  And we won't go till we've got some
  So \here \gtk \mc \ny
  A hap- py new year, \mc \ny
}

TenorMusic = \relative c' {
  \key bes \major
  \time 3/4
  \partial 4 r4
  r2.
  r2.
  r2.
  r2.
  r2. % 5
  r2.
  r2.
  r2.
  r2 d4-\ff
  c4 c d % 10
  d4 c4. bes8
  a2 c4
  bes4 c8 d e e
  f8(c) a4 bes8 8
  bes4 ees8(d) c4 % 15
  bes2 f4
  bes4 bes8 c bes a
  g4 g g
  c4 c8 d c bes
  a4 f f % 20
  d'4 d8 ees d c
  bes4 g f
  g4 c a
  bes2 f4
  bes4 bes d % 25
  c4(f) c
  d8(e) f4 e
  c2 f4
  d4(ees2
  c4) a bes % 30
  bes4 g' f
  f2 f,8. 16
  bes8(d) f(ees) d c
  bes8(a) g4 g8. 16
  c8(e) g(f) ees d % 35
  c8(bes) a4 c8. c16
  f8(ees) d(c) bes aes
  g4 bes bes
  ees4. d8 c4
  bes2. ~ % 40
  bes4 r r
  r4 d(fis)
  g4 f e8(d)
  c4 bes a
  bes4 r f' % 45
  ees4. d8 c4
  bes8(a) g4 c
  d4(bes) f8. 16
  d'4-> d-> r
  bes4-> bes-> r % 50
  ees4-> ees-> r
  c4-> a-> c8. 16
  bes8\<(d) f4 aes8. 16
  g4\> ees bes \!
  bes4 g' f % 55
  f2 ees4
  d8(c) bes(c) d(ees)
  f2 4
  f4 f c
  c4(bes) a % 60
  bes4 c8 d e e
  f8(c) a4 bes8 bes
  bes4^\markup{\bold \italic accel.} f'8(d) c4
  f4(d) g
  ees4 aes8(g) f4 % 65
  ees4(g) a8(g^\markup{\bold \italic {molto rall.}})
  f4 ees8 8 8 8
  f4 bes, f8 bes
  bes4 ees8(d) c4
  d2.-\fermata % 70
  \bar "|."
}

TenorLyrics = \lyricmode {
  Good Tid- ings, \gt
  \mc \ny \bring \bring
  \bring So \here \gtk \mc
  For we \like For we \like
  For we \like
  So \here
  Good tid- ings we bring to your kin;
  We wish you a hap- py New Year.
  And we \wg \wg \wg \wg
  And we won't go till we've got some
  So \here \gtk \mc \ny
  A hap- py new year, \mc \ny
}

BassMusic = \relative c {
  \key bes \major
  \time 3/4
  \partial 4 r4
  r2.
  r2.
  r2.
  r2.
  r2. % 5
  r2.
  r2.
  r2.
  r2 bes4-\ff
  f'4 f d % 10
  g4 c c,
  f2 a4
  bes4 a8 a g g
  f4 f8(ees) d d
  ees8(d) c4 f % 15
  bes,2. ~
  bes2 bes4
  ees4 ees8 f ees d
  c4 c e
  f4 f8 g f ees % 20
  d8(e) fis4 d
  g4. f8 ees d
  ees8(d) c4 f
  bes,2 f'4
  bes4 bes bes, % 25
  f'2 f4
  bes4 c c,
  f2 bes4
  bes4 a8 a g g
  f4 f8(ees) d d % 30
  ees8(d) c4 f
  bes,4(d) f8. 16
  bes2(bes,4)
  ees2(g4)
  c2 c,4 % 35
  f4 f a8. a16
  bes4 bes bes,8 bes
  ees4 ees d
  c2 ees4
  d4 ees c % 40
  bes4 bes'(c)
  d4 d d,
  g4 c bes
  a4(g) f
  bes4 ees8 ees d d % 45
  c4. bes8 a a
  g8(f) ees(d) c4
  bes8(c d ees) f8. 16
  bes4-> bes-> r
  ees,4-> ees-> r % 50
  c4-> c-> r
  f4-> f-> a8. 16
  bes4\< bes bes,8. 16
  ees4\> ees d \!
  ees8(d) c4 f % 55
  bes4 d(c)
  bes4 bes bes,
  f'8(g f ees) d(c)
  d4 c c'8(bes)
  a4(g) f % 60
  bes4 a8 a g g
  f4 f8(ees) d d
  ees4^\markup{\bold \italic accel.} c f
  d4(g) ees
  aes4 f bes % 65
  ees2 4^\markup{\bold \italic {molto rall.}}
  d4 ees8 d c c
  bes4 g d8 d
  ees8(d) c4 f
  bes,2.-\fermata % 70
  \bar "|."
}


BassLyrics = \lyricmode {
  Good Tid- ings, \gt
  \mc \ny \bring \bring
  Now bring us fig- gy pud- ding out here. \gtk \mc
  \ny For we \like For we \like
  So bring some, bring some out here.
  Good tid- ings we bring to your kin. \mc
  \ny And we \wg \wg \wg \wg
  And we won't go till we've got some
  So \here \gtk \mc \ny
  A hap- py new year, \mc \ny
}

Staff.RemoveEmptyStaves = ##f
VerticalAxisGroup.remove-first = ##f

% TwoVoicesPerStaff = ##t
\include "satb.ly"
