\version "2.18.2"

SopranoLyrics = \lyricmode {
}  

tempotrack = {
  \key f \major
  \time 4/4
  \tempo 4=126
}

dynamics = {
}

UnisonMusic = \relative c' {
  \key f \major
  \time 4/4
  \tempo 4=126
  s1
  s1
  s1
  s1
  s1 % 5
  s1
  c4^\markup{UNISON} f g a
  a8 bes g2 d4
  a'4 g8 e(e) d(e g)
  c,1 % 10
  c4 f g a
  b4 c8 g(g4.) c,8
  bes'4 a f8(bes,) a' g~
  g2. r4
  c,8 f g a(a4) a % 15
  a8(bes) g2.
  c,8 g' a bes~bes a(g) a(~
  a8 c4. ~ c4) f,8(a)
  d4 c bes a
  c4(f,8) f~f4 f % 20
  bes4 a f8(bes,) a' g~
  g2. r4
}

NoMusic = {
  s1*22
}

SopranoMusic = \relative c' {
  c4 f g a
  a8 bes g2 d4
  a'4 g8 e~e d(e g) % 25
  c,1
  c4 f a c
  c4 d8 f,~f f f4
  e'2 f % 30
  f,2 g
  f1 ~
  f2 r
  \key c \major
  r1
  r1 % 35
  r1
  r1
  r1
  r1
  r1 % 40
  r2 r4 c'4
  bes4 bes4~(bes8 a) bes c
  a4(d,8) d~d4 d
  a'4 a a b8 g~
  g2 r4 d8(e) % 45
  g4 fis e d
  a'4(b8) d,~d4 d
  cis'4 d d, e
  d1
  \key g \major
  d4 g a b % 50
  b8 c a2 e4
  b'4 a8 fis~fis e(fis a)
  d,1
  d4 g a b
  cis4 d8 a~a4. d,8 % 55
  c'4 b g8(c,) b' a~
  a2. r4
  d,8 g a b~ b4 b
  b8(c)
  a2 a4 % 60
  d,8 a'(b) c~c b(a) b~(
  b8 d4.~d4) g,8(b)
  e4 d c b
  d4(g,8) g~g4 g
  c4 b g8(c,) b' a~ % 65
  a2. r4
  \key bes \major
  f4 bes c d
  d8 ees c2 g4
  d'4 c8 a~a g(a c)
  f,1
  f4 bes d <c f>
  <d f>4 <ees g>8 bes~bes2 % 70
  r1
  r2 r4 bes4
  f'2 f
  bes,2 c
  c8(d bes2.)
  s1
  s1 % 80
  s1
  \bar "|."
}

AltoMusic = \relative c' {
  \key f \major
  \time 4/4
  c1(
  d1
  e1 % 25
  c1)
  c2(ees
  d2.) f4
  c'2 c
  f,2 d4(e) % 30
  f1 ~
  f2 r
  \key c \major
  r1
  r1
  r1 % 35
  r1
  r1
  r1
  r1
  r2 r4 c'4 % 40
  bes4 bes4~(bes8 a) bes c
  a4(d,8) d~d4 d
  a'4 a a b8 g~
  g2 r4 d4
  d4 d a d
  d4. b8~b4 d
  d4 d d cis
  d2(c)
  \key g \major
  b4 d d d
  e8 e e2 e4
  fis4 fis8 fis~fis e(fis a)
  d,1
  d4 g a b
  a4 a8  a~a4. d,8
  g4 g g8(c,) b' a~
  a2. r4
  d,8 g a b~ b4 d,
  e4 e2 a4
  d,8 a'(b) c~c b(a) a~
  a8 g4.(g4) g
  fis4 fis f f
  e4. e8~e4 e
  e4 e e e
  ees2. r4
  \key bes \major
  f4 bes, c d
  d8 ees c2 g'4
  ees4 ees8 ees ~ ees4 ees
  d1
  f4 bes aes aes
  g4 g8 g~g2
  r1
  r2 r4 g4 % 75
  a2 bes
  g2 a
  f1
  s1
  s1 % 80
  s1
  \bar "|."
}

TenorMusic = \relative c' {
  \key f \major
  \time 4/4
  a1(
  bes1~
  bes1 % 25
  a1)
  a2(g4 a
  bes1)
  a1(bes1~
  bes1
  a2) r4 f4
  \key c \major
  e4 e e a
  e4 e2 bes'4
  e,4 4 4 c' % 35
  bes2. bes8(c)
  d4 c bes a
  c4(g8) g~g4 c,
  f4 g8 a~a c(b) c~
  c2 r % 40
  r1
  r1
  r1
  r2 r4 d,8(e)
  a4 a a a % 45
  b4. a8~a4 b
  a4 a b g
  a1
  \key g \major
  b4 b b b
  c8 c c2 c4 % 50
  c4 c8 c~c4 c
  b1
  b4 b d b
  a4 a8 d~d4. a8
  g4 g c c8 c~ % 55
  c2. r4
  b8 g a b~ b4 d
  c4 c2 c4
  c8 a(b) c~c b(a) d~
  d2. g,8(b) % 60
  e4 d c b
  d4(g,8) g~g4 g
  c4 c c c c2. r4
  \key bes \major
  f,4 bes c d
  d8 ees c2 ees4
  c4 c8 c~c4 c
  c2(bes)
  f4 bes c d
  bes4 bes8 ees8~ees2
  r1
  r2 r4 ees4
  d2 d
  ees2 ees
  d1
  s1
  s1
  s1
  \bar "|."
}

BassMusic = \relative c {
  \key f \major
  \time 4/4
  f1~
  f1~
  f1~ % 25
  f1
  f1~
  <f bes,>1
  c1~
  c1 % 30
  <f, d'>1~
  q2 r4 f'4
  \key c \major
  e4 e e a
  e4 e2 b'4
  e,4 4 4 c' % 35
  b2. b8(c)
  d4 c b a
  c4(g8) g~g4 c,
  f4 g8 a~a c(b) c~
  c2 r % 40
  r1
  r1
  r1
  r2 r4 d,4
  a4 d e fis % 45
  d4. d8~d4 g
  fis4 fis g e
  g2.(fis4)
  \key g \major
  g4 g d d
  <g, e'>8 q q2 g'4 % 50
  d4 d8 d~d4 d
  <g, d'>1
  g'4 g b g
  fis4 fis8 fis~fis4. fis8
  e4 e e g8 d~
  d2. r4
  d8 g a b~ b4 b
  b8(c) a2 a4
  d,8 a'(b)c~c b(a) b~
  b2. g4
  g4 g g g
  g4. g8~g4 g
  a4 a g g
  f2. r4
  \key bes \major
  f4 bes c d
  d8 ees c2 bes4
  a4 a8 a~a bes c a
  f1
  f4 bes bes bes
  ees,4 g8 bes~bes2
  r1
  r2 r4 bes4
  f2 f
  f2 f <bes, f'>1
  s1
  s1
  s1
  \bar "|."
}

PianoRHhigh = \relative c''' {
  \voiceOne
  \key f \major
  c1^\pp
  s1
  c,1
  s1*13
}

PianoRHlow = \relative c''' {
  \voiceTwo
  \key f \major
  g8^\pp(a) f2.
  bes,8(c4 <d bes'>8~q <c a'> <bes f'>4)
  g8(a f2.)
  \oneVoice
  bes,8(c4 <d bes'>8  ~ q <c a'> <bes f'>4)
  r8 c f a c g a f
  r8 c f a c g a f
  r8 c f a c g a f
  r8 d g bes d a bes g
  r8e g c e bes c g
  r8 g a c f a, c f,
  r8 a c f a c, d a
  r8 g c e g d e c
  r8 f, bes d f bes, d f,
  r8 g bes f'~f g e4
  r8 f, a c~c g a c
  r8 g bes d ~ d a bes d
}

PianoLHhigh = \relative c {
  \oneVoice
  \key f \major
  f4.^\pp(c'8 a'g a c)
  <f,, d'>4.(f'8 bes2)
  \clef bass
  f,,4. c'8(a' g a c)
  <f,, d'>4.(f'8 bes2)
  <f,c'a'>2 ~ q4. c'8(
  f1
  f1
  f1
  f1
  f2~f4. c8(
  f1)
  e1
  d1
  \voiceOne
  c2 c'
  f,2 c'
  f,2 d'
}

PianoLHlow  = \relative c {
  \voiceTwo
  \key f \major
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  c1
  f1
  f1
}

\header {
  title    = "All Things Bright and Beautiful"
  composer = "John Rutter(1945-)"
  poet     = "C. F. Alexander (1823-1895)"
}

\score {
  \context GrandStaff <<
    \context ChoirStaff <<
      \new Staff <<
        \new Voice = sopranos { \voiceOne \UnisonMusic \SopranoMusic }
        \new Voice = altos    { \voiceTwo \UnisonMusic     \AltoMusic }
      >>
      \new Dynamics \dynamics
      \new Lyrics \lyricsto sopranos \SopranoLyrics
      \new Staff <<
        \clef "bass"
        \new Voice = tenors { \voiceOne \transpose c c, \UnisonMusic \TenorMusic }
        \new Voice = basses { \voiceTwo \transpose c c, \UnisonMusic \BassMusic }
      >>
    >>
    \context PianoStaff <<
      \new Staff <<
        \new Voice { \PianoRHhigh }
        \new Voice { \PianoRHlow  }
      >>
      \new Staff <<
        \new Voice { \PianoLHhigh }
	\new Voice { \PianoLHlow  }
      >>
    >>
  >>
  \layout {}
  \midi {}
}

\score { % soprano
  \context GrandStaff <<
    \context ChoirStaff <<
      \new Staff <<
        \new Voice { \UnisonMusic \SopranoMusic }
      >>
    >>
  >>
  \midi {}
}

\score { % alto
  \context GrandStaff <<
    \context ChoirStaff <<
      \new Staff <<
        \new Voice { \UnisonMusic \AltoMusic }
      >>
    >>
  >>
  \midi {}
}

\score { % tenor
  \context GrandStaff <<
    \context ChoirStaff <<
      \new Staff <<
        \new Voice { \transpose c c, \UnisonMusic \TenorMusic }
      >>
    >>
  >>
  \midi {}
}

\score { % bass
  \context GrandStaff <<
    \context ChoirStaff <<
      \new Staff <<
        \new Voice { \transpose c c, \UnisonMusic \BassMusic }
      >>
    >>
  >>
  \midi {}
}
