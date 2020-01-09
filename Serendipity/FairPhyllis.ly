\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Fair Phyllis"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Farmer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key f \major
  \time 4/4
  \tempo 4=120
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "1a" } s1 s1 s1 s1
  \mark \markup { \circle "1b" } s1 s1 s1 s1
  \mark \markup { \circle "2a" } s1 s1
  \mark \markup { \circle "2b" } s1 s1
  \mark \markup { \circle "2c" } s1 s1 s1
  \mark \markup { \circle "2d" } s1 s1 s1
  \mark \markup { \circle "3a" } s1 s1
  \mark \markup { \circle "3b" } s1 s1
  \mark \markup { \circle "3c" } s1 s1 s1
  \mark \markup { \circle "3d" } s1 s1
  \mark \markup { \circle "4a" } s1 s1 s1
  \mark \markup { \circle "4b" } s1 s1 s2. s2.
  \mark \markup { \circle "4c" } s1 s2. s2. s2. s2.
  \mark \markup { \circle "4d" } s2. s2. s1 s2.
}

soprano = \relative c' {
  \global
  \repeat volta 2 {
    r2 f
    a4. bes8 c4 c
    bes4 a g f
    c'2 c4. c8
    c4 f2 c4
    bes4 a g g
  }
  \alternative {
    { a1 }
    { a2 r4 f }
  }
  c'4. c8 a4 a8 c
  bes4 a g8 f g g
  a2 r
  r1
  f4 a8 bes c4 c~
  c8 a c4 c2
  a4 a c a8 d
  c4 a r2
  r4 c c b
  c2 r % 18
  \repeat volta 2 {
    r2 r4 d8 c
    bes4. a8 g4 f
    r4 d'8 c bes4. a8
    g4 f r2
    r4 c'2 g4
    e4. f8 g4 g
    r4 c8 c g4 a
    e4 f g8 bes a4
    g4 f2(e4)
    f4 r r2
    r4 a a b
    c4 g a2
    g2 f
    e2 r
    \time 3/4 r2.
    r2.
    \time 4/4 r2 c'
    \time 3/4 d2 a4
    bes4 g2
    a4. bes8 c4
    c4. bes8 a4
    g2 f4
    f4 e2
  }
  \alternative {
    { \time 4/4 f4 f r2 }
    { \time 3/4 f4 f2^\fermata }
  }
  \bar "|."
}

wordsSop = \lyricmode {
  Fair Phyl- lis I saw sit- ting all a- lone,
  Feed- ing her flock near to the mount- ain side;

  side. The shep- herds knew not,
  they knew not whi- ther she was gone.
  But aft- er her lov- er, her lov- er,
  but aft- er her lov- er A- myn- tas hied.

  Up and down he wan- dered,
  up and down he wan- dered,
  up and down he wan- dered,
  up and down he wan- dered,
  up and down he wan- dered,
  whilst she was mis- sing;
  When he found her,
  O, then they fell a- kiss- ing,
  a- kis- sing,
  O, then they fell a- kiss- ing,
  kiss- ing.
}

alto = \relative c' {
  \global
  \repeat volta 2 {
    r1
    r1
    r1
    r2 f4. f8
    f4 f2 f4 % 5
    f8 f f2 e4
  }
  \alternative {
    { f1 }
    { f2 r }
  }
  r4 c f4. f8
  d4 f e8 d e e % 10
  f2 r
  r2 r4 f
  a8 bes c4 a f~
  f4 e f2
  f4 f a f8 bes % 15
  a4 f r2
  r4 f g4. f8
  e4 r r2
  \repeat volta 2 {
    r4 f8 e d2
    r4 d'8 c bes4. a8 % 20
    g4 f r d'8 c
    bes4. a8 g4(f)
    e2 r4 c'~
    c4 g e4. f8
    g4 g r c8 c % 25
    g4 a e(f)
    e4 c c2
    c4 r r2
    r4 f f d
    c4 c r d~ % 30
    d8 c c2(b4)
    c2 g'
    \time 3/4 a2 g4
    f4 d2
    \time 4/4 e4 e g2 % 35
    \time 3/4 g4 f2
    g4 e2
    f4. g8 a4
    a4. g8 f4
    e2 c4 % 40
    d4 c2
  }
  \alternative {
    { \time 4/4 c4 c r2 }
    { \time 3/4 c4 c2^\fermata }
  }
%  \bar "|."
}

wordsAlto = \lyricmode {
  Feed- ing her flock near to the mount- ain side;
  side.

  The shep- herds knew not whi- ther she was gone.
  But aft- er her lov- er, her lov- er,
  but aft- er her lov- er A- myn- tas hied.

  Up and down
  up and down he wan- dered,
  up and down he wan- dered,
  up and down he wan- dered,
  up and down he wan- dered,
  he wan- dered,
  whilst she was mis- sing;
  When he found her,
  O, then they fell a- kiss- ing,
  O, then they fell a- kiss- ing,
  a- kis- sing,
  O, then they fell a- kiss- ing,
  kiss- ing.
}

tenor = \relative c' {
  \global
  \clef "treble_8"
  \repeat volta 2 {
    r1
    r1
    r1
    r2 a4. a8
    a4 bes2 c4
    d8 d c2 c4
  }
  \alternative {
  { c1 }
  { c2 r }
  }
  r1 r4 f, c'4. c8
  a4 a8 c bes4 a
  g8 a bes g a2
  r4 f a8 bes c4
  c4 g8 g a2
  c2 r
  r4 a c a8 d
  c8 a c4 d d
  c4 c8 bes a4. g8
  \repeat volta 2 {
    f2 f4 f'8 e
    d2 r4 d8 c
    bes4. a8 g4 f
    r4 d'8 c bes4. a8
    g2 e
    r4 c'2 g4
    e4. f8 g4 e
    r4 c'8 c g g a f
    g8 bes a a g2
    f4 c' d e
    f4 c r2
    r2 r4 a
    c4 g(a g8 f)
    g2 c
    \time 3/4 c2 c4
    d4 b2
    \time 4/4 c4 g g2
    \time 3/4 bes2 c4
    d4 c2
    c4. bes8 a4
    c4 c c
    c2 a4
    bes4 g2
  }
  \alternative {
    { \time 4/4 a8 a c bes a4. g8}
    { \time 3/4 a4 a2^\fermata }
  }
%  \bar "|."
}

wordsTenor = \lyricmode {
  Feed- ing her flock near to the mount- ain side;
  side.

  The shep- herds knew not,
  they knew not whi- ther she was gone.
  But aft- er her lov- er, her lov- er,
  but aft- er her lov- er A- myn- tas hied.

  Up and down he wan- dered,
  up and down
  up and down he wan- dered,
  up and down he wan- dered,
  up and down he wan- dered,
  up and down he wan- dered,
  up and down he wan- dered,
  whilst she was mis- sing;
  When he found her,
  O, then they fell a- kiss- ing,
  O, then they fell a- kiss- ing,
  a- kis- sing,
  O, then they fell a- kiss- ing;
  Up and down he

  kiss- ing.
}

bass= \relative c {
  \global
  \clef bass
  \repeat volta 2 {
    r1
    r1
    r1
    r2 f4. f8
    f4 bes,2 a4
    bes4 f c' c
  }
  \alternative {
  { f1 }
  { f2 r }
  }
  r1
  r2 r4 c
  f4. f8 e4 f
  e8 f g e f2
  r2 f,4 a8 bes
  c2 f~
  f4 f, r2
  r4 f'4 a f8 bes
  a8 f a4 g g
  c,2 r4 f8 e
  \repeat volta 2 {
    d4. c8 bes2~
    bes4 bes bes2
    bes1
    bes1
    c1
    c1
    c1
    c1
    c1
    f,4 f' bes g
    f4 f r2
    r2 f
    e2 d
    c2 c
    \time 3/4 f2 e4
    d4 g2
    \time 4/4 c,4 c c2
    \time 3/4 bes2 a4
    g4 c2
    f,4 f f
    f'4 f f
    c2 f4
    bes,4 c2
  }
  \alternative {
    { \time 4/4 f,4 f r f'8 e }
    { \time 3/4 f,4 f2^\fermata }
  }
%  \bar "|."
}

wordsBass = \lyricmode {
  Feed- ing her flock near to the mount- ain side;
  side.
  
  The shep- herds knew not whi- ther she was gone.
  But aft- er her lov- er,
  but aft- er her lov- er A- myn- tas hied.

  Up and down he wan- dered,
  he wan- dered,
  up and down he wan- dered,
  whilst she was mis- sing;
  When he found her,
  O, then they fell a- kiss- ing,
  O, then they fell a- kiss- ing,
  a- kis- sing,
  O, then they fell a- kiss- ing;
  Up and

  kiss- ing.
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSop
      >>
% Single alto staff
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "alto" \alto
        \new Lyrics \lyricsto "alto" \wordsAlto
      >>
% Single tenor staff
      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \new Voice = "tenor" \tenor
        \new Lyrics \lyricsto "tenor" \wordsTenor
      >>
% Single bass staff
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsBass
      >>
    >>
  >>
  \layout {
    indent = 1.5\cm
    \context {
      \Staff \RemoveAllEmptyStaves
    }
  }
  \midi {}
}
