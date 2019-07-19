\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mull of Kintyre"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "McCartney - Laine"
  arranger    = "arr. Clive Sansom"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
  tagline   = ##f
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
  \key a \major
  \time 3/4
  \tempo 2.=44
% \partial 4
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
  \mark \markup { \circle "1a" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "1b" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "2a" }
  s2. s2. s2. s2. s2. s2.
  \mark \markup { \circle "2b" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "3a" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "3b" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "4a" }
  s2. s2.
  \mark \markup { \circle "1a.5" }
  s2.
  \mark \markup { \circle "1b" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "2a" }
  s2. s2. s2. s2. s2. s2.
  \mark \markup { \circle "2b" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "3a" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "3b" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "4a" }
  s2. s2.
  \mark \markup { \circle "5b" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "6a" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "6b" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "7a" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "7b" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "8a" }
  s2. s2. s2. s2.
  \mark \markup { \circle "5b" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "6a" }
  s2. s2. s2.
  \mark \markup { \circle "8b.3" }
}

sopOne = \relative c' { % 5-33
  e4.^\mf fis8 a4 % 5
  cis2 cis4
  cis4 b a
  b8 a~a4 fis
  e4. fis8 a4
  cis2 cis4% 10
  cis4 b a
  b4 a r8 fis
  e4. fis8 b4
  a2.~
  a2.~ % 15
  a4 r r \bar "||"
  e4 a4. fis8
  e8 cis~cis4 e
  a4 cis b
  a2. % 20
  f4 a4. gis8
  fis8 e~ e4 d
  e4 a fis
  e2.
  e4 a4. fis8
  e8 c~c4 e
  a4 cis b
  a4. b8 cis4
  d4. cis8 b4
  a4 fis r8 e
  e4. fis8 b4
  a2.~
  a4 r r \bar "||" % 33
}

sopTwo = \relative c' { % 48-55
  a'4. b8 d4
  fis2 fis4
  fis4 e d
  e8 d~d4 b
  a4. b8 d4
  fis2 fis4
  fis4 e d
  e4 d r8 b
}

sopThree = \relative c'' { % 56-77
  a4. b8 e4
  d2.~
  d2.~
  d4 r r \bar "||"
  a4 d4. b8
  a8 fis~fis4 a
  d4 fis e
  d2.
  b8 d~d4 cis
  b4 a g
  a4 d b
  a2.
  a4 d b
  a4 fis a
  d8 fis~fis4 e
  d4 r8 e fis4
  g4. fis8 e4
  d4 b r8 a
  a4. b8 e4
  d2.~
  d4 r r
}

sopFour = \relative c'' {
  a4. b8 e4
  d2.~
  d2.~
  d2.^\fermata
}

soprano = \relative c' {
  \global
  \repeat volta 2 {
    r2.
    r2.
    r2.
    r2.
  }
  \sopOne % 5-33
  \sopOne % 5-33 again
  \key d \major
  \sopTwo % 48-55
  \sopThree % 56-77
  \sopTwo   % 48-53 again
  \sopFour  % 78-end
  \bar "|."
}

dynamicsSop = {
}

altOne = \relative c' { % 5-33
  cis4.^\mf cis8 e4
  a2 a4
  fis4 fis fis
  fis8 fis~fis4 d
  cis4. cis8 e4
  a2 a4
  fis4 fis fis
  fis4 fis r8 d
  cis4. cis8 e4
  e2.~
  e2.~
  e4 r r
  e4 a4. fis8
  e8 cis~cis4 e
  a4 cis b
  a2.
  fis4 a4. gis8
  fis8 e~e4 d
  e4 a fis
  e2.
  cis4 e4. cis8
  cis8 a~a4 cis
  e4 a e
  e4. e8 a4
  a4. a8 fis4
  fis4 d r8 d
  d4. d8 e4
  a2.~
  a4 r r
}

altTwo = \relative c' { % 48-55
  fis4. fis8 fis4
  fis2 fis4
  g4 g g
  g8 g~g4 g
  fis4. fis8 fis4
  fis2 fis4
  g4 g g
  g4 g r8 g
}

altThree = \relative c' { % 56-77
  fis4. fis8 fis4
  fis2.~
  fis2.~
  fis4 r r \bar "||"
  fis4 a4. g8
  fis8 d~d4 fis
  fis4 a g
  fis2.
  g8 b~b4 a
  g4 d d
  fis4 a g
  fis2.
  fis4 a g
  fis4 d fis
  fis8 a~a4 g
  fis4 r8 g a4
  b4. a8 g4
  g4 d r8 d
  cis4. e8 g4
  fis2.~
  fis4 r r
}

altFour = \relative c' { % 78-end
  fis4. fis8 fis4
  fis2.(
  g2.
  fis2.^\fermata)
}

alto = \relative c' {
  \global
  \repeat volta 2 {
    r2.
    r2.
    r2.
    r2.
  }
  \altOne % 5-33
  \altOne % 5-33 again
  \key d \major
  \altTwo % 48-55
  \altThree % 56-77
  \altTwo   % 48-53 again
  \altFour  % 78-end
  \bar "|."
}

dynamicsAlto = {
}

tenOne = \relative c' {
  a4.^\mf a8 cis4
  e2 e4
  d4 d d
  d8 d~d4 a
  a4. a8 cis4
  e2 e4
  d4 d d
  d4 d r8 a
  a4. a8 cis4
  cis2.~
  cis2.~
  cis4 r r \bar "||"
  e,4 a4. fis8
  e8 cis~cis4 e
  a4 cis b
  a2.
  fis4 a4. g8
  fis8 e~e4 d
  e4 a fis
  e2.
  a4 cis4. a8
  a8 e~e4 a
  cis4 e cis
  cis4. cis8 e4
  f4. f8 d4
  d4 a r8 a
  b4. b8 b4
  cis2.~
  cis4 r r
}

tenTwo = \relative c' { % 48-55
  a4. a8 a4
  a2 a4
  b4 b b
  b8 b~b4 b
  a4. a8 a4
  a2 a4
  b4 b b
  b4 b r8 b
}

tenThree = \relative c' {% 56-77
  a4. a8 a4
  a2.~
  a2.~
  a4 r r \bar "||"
  a4 d4. b8
  a8 fis~fis4 a
  d4 fis e
  d2.
  b8 d~d4 cis
  b4 a g
  a4 d b
  a2.
  a4 d b
  a4 fis a
  d8 fis~fis4 e
  d4 r8 e fis4
  g4. fis8 e4
  e4 b r8 b
  a4. cis8 e4
  d2.~d4 r r
}

tenFour = \relative c' {
  a4. a8 a4
  a2.(
  b2.
  a2.^\fermata)
}

tenor = \relative c' {
  \global
  \repeat volta 2 {
    r2.
    r2.
    r2.
    r2.
  }
  \tenOne % 5-33
  \tenOne % 5-33 again
  \key d \major
  \tenTwo % 48-55
  \tenThree % 56-77
  \tenTwo   % 48-53 again
  \tenFour  % 78-end
  \bar "|."
}

dynamicsTenor = {
}

bassOne = \relative c {
  e4.^\mf fis8 a4
  cis2 cis4
  cis4 b a
  b8 a~a4 fis
  e4. fis8 a4
  cis2 cis4
  cis4 b a
  b4 a r8 fis
  e4. fis8 a4
  a2.~
  a2.~
  a4 r r \bar "||"
  e4 a4. fis8
  e8 cis~cis4 e
  a4 cis b
  a2.
  fis4 a4. g8
  fis8 e~e4 d
  e4 a fis
  e2.
  e4 a4. fis8
  e8 cis~cis4 e
  a4 cis b
  a4. b8 cis4
  d4. cis8 b4
  a4 fis r8 e
  e4. fis8 b4
  a2.~
  a4 r r
}

bassTwo = \relative c {
  d4. d8 d4
  d2 d4
  g,4 g g
  g8 g~g4 g
  d'4. d8 d4
  d2 d4
  g,4 g g
  g4 g r8 g
}

bassThree = \relative c {
  d4. d8 d4
  d2.~
  d2.~
  d4 r r \bar "||"
  fis4 a4. g8
  fis8 d~d4 fis
  fis4 a g
  fis2.
  g8 b~b4 a
  g4 d d
  fis4 a g
  fis2.
  fis4 a g
  fis4 d fis
  fis8 a~a4 g
  fis4 r8 g a4
  b4. a8 g4
  g4 d r8d
  cis4. e8 g4
  fis2.~fis4 r r
}

bassFour = \relative c {
  d4. d8 d4
  d2.(
  g,2.
  d'2.^\fermata)
}

bass = \relative c' {
  \clef bass
  \global
  \repeat volta 2 {
    r2.
    r2.
    r2.
    r2.
  }
  \bassOne % 5-33
  \bassOne % 5-33 again
  \key d \major
  \bassTwo % 48-55
  \bassThree % 56-77
  \bassTwo   % 48-53 again
  \bassFour  % 78-end
  \bar "|."
}

dynamicsBass = {
}

dynamicsPiano = {
  \repeat volta 2 {
    s2.^\mf
    s2.
    s2.
    s2.
  }
  s2.
}

pianoRHone = {
  s2.*29
}

pianoRHtwo = {
  s2.*8
}

pianoRHthree = \relative c'' {
  s2. % 38 ???
  s2.
  s2.
  s2. \bar "||"
  <fis, a>4 <a d>4. <g b>8
  <fis a>8 <d fis> ~ q4 <fis a>4
  <fis d'> <a fis'> <g e'>
  <fis d'>2.
  <g b>8 <b d>~q4 <a cis>
  <g b>4 <d a><d g>
  <fis a>4 <a d> <g b>
  <fis a>2.
  <fis a>4 <a d> <g b>
  <fis a>4 <d fis> <fis a>
  <fis d'>8 <a fis'>~q4 <g e'>
  <fis d'> <g e'> <a fis'>
  <b g'>4. <a fis'>8 <g e'>4
  <g d'>4 <d b'> r8 <d a'>
  <cis a'>4. <e b'>8 <g e'>4
  <fis d'>2.~
  q4 r r
}

pianoRHfour = \relative c' {
  s2.
  s2.
  s2.
  s2.
}

pianoRH = \relative c' {
  \global
  s2.
  s2.
  s2.
  s2.
  \pianoRHone
  \pianoRHone
  \key d \major
  \pianoRHtwo
  \pianoRHthree
  \pianoRHtwo
  \pianoRHfour
  \bar "|."
}

pianoRHOneOne = \relative c' {
  e4. fis8 a4 % 5 in original
  cis2 cis4
  cis4 b a
  b8 a~a4 fis
  e4. fis8 a4
  cis2 cis4 % 10
  cis4 b a
  b4 a r8 fis
  a4. fis8 b4
  a2.~
  a2.~ % 15
  a4 r r \bar "||"
  e4 a4. fis8
  e8 cis~cis4 e
  a4 cis b
  <cis, e a>2. % 20
  fis4 a4. g8
  fis8 e~e4 d
  e4 a fis
  e2.
  e4 a4. fis8 % 25
  e cis~cis4 e
  a4 cis b
  a4. b8 cis4
  d4. cis8 b4
  a4 fis r8 e % 30
  e4. fis8 b4
  a2.~
  a4 r r
}

pianoRHOneTwo = \relative c'' {
  a4. b8 d4 % 48 in original
  fis2 fis4
  fis4 e d % 50
  e8 d~d4 b
  a4. b8 d4
  fis2 fis4
  fis4 e d
  e4 d r8 b % 55
}

pianoRHOneThree = \relative c' { % 56-77
  a4. b8 e4 % 56 in original
  d2.~
  d2.~
  d4 r r
  s2. % 60
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
}

pianoRHOneFour = \relative c'' {
  a4. b8 e4
  d2.~
  d2.~
  <fis, a d>2.^\fermata
}

pianoRHOne = \relative c' {
  \global
  \voiceOne
  \repeat volta 2 {
    e4. fis8 a4
    cis2.
    b4. cis8 e4
    <b, d gis>2.
  }
  \pianoRHOneOne
  \pianoRHOneOne
  \key d \major
  \pianoRHOneTwo
  \pianoRHOneThree
  \pianoRHOneTwo
  \pianoRHOneFour
  \bar "|."
}

pianoRHTwoOne = \relative c'' {
  r4 <a, cis> <cis e> % 5 in original
  r4 <e a> q
  r4 <d fis> q
  r4 q <a d>
  r4 <a cis> <cis e>
  r4 <e a> q % 10
  r4 <d fis> q
  r4 q <a d>
  r4 <a cis> <cis e>
  r4 q q
  r4 q q % 15
  r4 q q
  r4 q <a cis>
  r4 <e a> <a cis>
  r4 <e' a> <cis e>
  s2. % 20
  r4 <d fis> <a d>
  r4 <fis a> q
  r4 <cis' e> <a cis>
  r4 q q
  r4 <cis e> <a cis> % 25
  r4 <e a> <a cis>
  r4 <e a> <cis e>
  q2 <e a>4
  r4 <fis a> < fis> 
  r4 <a d> <fis a> % 30
  r4 <gis d'> <d' gis>
  r4 <cis e> q
  r4 <cis e> q
}

pianoRHTwoTwo = \relative c' { % 48 - 56
  r4 <d fis> <fis a>
  r4 <a d> q
  r4 <g b> q
  r4 q <d g>
  r4 <d fis> <fis a>
  r4 <a d> q
  r4 <g b> q
  r4 q <d g>
}

pianoRHTwoThree = \relative c' { % 56 - 77
  r4 <d fis> <fis a>
  r4 <fis a> q
  r4 q q
  r4 q q
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
}

pianoRHTwoFour = \relative c' {
  r4 <d fis> <fis a>
  r4 q q
  r4 <g b> q
  s2.
}

pianoRHTwo = \relative c' {
  \global
  \voiceTwo
  \repeat volta 2 {
    r4 <a cis> <cis e>
    r4 <e a> q
    r4 <d gis> <gis b>
    s2.
  }
  \pianoRHTwoOne
  \pianoRHTwoOne
  \key d \major
  \pianoRHTwoTwo
  \pianoRHTwoThree
  \pianoRHTwoTwo
  \pianoRHTwoFour
  \bar "|."
}

pianoLHone = \relative c {
  a2.
  e'2.
  d2.
  d,2.
  a'2.
  e'2.
  d2.
  d,2.
  a'2.
  e'2.
  a,2.
  e'2.
  a,2.
  a2.
  a2.
  a4 b cis
  d2.
  d,2.
  a'2.
  e'2.
  a,2.
  a2.
  a2.
  a4 b cis
  d2.
  d,2.
  e'2.
  a,2. e'2.
}

pianoLHtwo = \relative c {
  d2.
  a'2.
  g2.
  g,2.
  d'2.
  a'2.
  g2.
  g,2.
}

pianoLHthree = \relative c {
  d2.
  a'2.
  d,2.
  a'2. \bar "||"
  <d, a'>2 q4
  q2 q4
  q2 q4
  q2 q4
  <g, d'>2 q4
  q2 q4
  <d' a'>2 q4
  q2 q4
  q2 q4
  q2 q4
  q2 q4
  q2 q4
  <g, d'>2 q4
  q2 q4
  <a e'>2 q4
  <d' a'>2 q4
  q2 q4
}

pianoLHfour = \relative c {
  d2.
  a'2.
  g2.
  d4 d,2^\fermata
}

pianoLH = \relative c {
  \global
  \clef bass
  \oneVoice
  \repeat volta 2 {
    a2.
    e'2.
    e,2.
    e4 fis gis
  }
  \pianoLHone
  \pianoLHone
  \key d \major
  \pianoLHtwo
  \pianoLHthree
  \pianoLHtwo
  \pianoLHfour
  \bar "|."
}

pianoLHOne = \relative c' {
  \global
  \clef bass
  \voiceOne
  c4
  \bar "|."
}

pianoLHTwo = \relative c' {
  \global
  \clef bass
  \voiceTwo
  c4
  \bar "|."
}

wordsSop = \lyricmode {
  Mull of Kin- tyre oh mist rol- ling in
  from the sea, my de- sire is al- ways to be here
  oh Mull of Kin- tyre.
  Far have I trav- elled __ and much have I seen,
  dark dis- tant moun- tains __ with val- leys of green,
  past pain- ted des- erts, __ the sun- set's on fire
  as he car- ries me home to the Mull of Kin- tyre. __

  Mull of Kin- tyre oh mist rol- ling in
  from the sea, my de- sire is al- ways to be here
  oh Mull of Kin- tyre.
  Smiles in the sun- shine __ and tears in the rain,
  still take me back where __ my mem- 'ries re- main.
  Flick- er- ing em- bers __ grow high- er and high'r
  as they car- ry me back to the Mull of Kin- tyre. __

  Mull of Kin- tyre oh mist rol- ling in
  from the sea, my de- sire is al- ways to be here
  oh Mull of Kin- tyre.
  Sweep through the heath- er __ like deer in the glen,
  car- ry me back to the days I knew then.
  Nights when we sang like a heav- en- ly choir
  of the life and the times of the Mull of Kin- tyre. __

  Mull of Kin- tyre oh mist rol- ling in
  from the sea, my de- sire is al- ways to be here
  oh Mull of Kin- tyre.
}

wordsAlto = \lyricmode {
  Mull of Kin- tyre
}

wordsTenor = \lyricmode {
  Mull of Kin- tyre
}

wordsBass = \lyricmode {
  Mull of Kin- tyre
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
%     \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSop
      >>
% Single alto staff
%     \new Dynamics \dynamicsAlto
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "alto" \alto
        \new Lyrics \lyricsto "alto" \wordsSop
      >>
% Single tenor staff
%     \new Dynamics \dynamicsTenor
      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \new Voice = "tenor" { \clef "treble_9" \tenor }
        \new Lyrics \lyricsto "tenor" \wordsSop
      >>
% Single bass staff
%     \new Dynamics \dynamicsBass
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsSop
      >>
% Joint soprano/alto staff
%     \new Dynamics \dynamicsWomen
%     \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
%       \new Voice \RehearsalTrack
%       \new Voice = "soprano" { \voiceOne \soprano }
%       \new Voice = "alto"    { \voiceTwo \alto    }
%       \new Lyrics \lyricsto "soprano" \words
%     >>
% Joint tenor/bass staff
%     \new Dynamics \dynamicsMen
%     \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
%       \new Voice = "tenor" \tenor
%       \new Voice = "bass" \bass
%     >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \pianoRH
        \new Voice \pianoRHOne
        \new Voice \pianoRHTwo
      >>
      \new Dynamics \dynamicsPiano
      \new Staff <<
        \new Voice \pianoLH
%       \new Voice \pianoLHone
%       \new Voice \pianoLHtwo
      >>
    >>
  >>
  \layout { indent = 1.5\cm }
  \midi {
    \context {
      \Score
%      tempoWholesPerMinute = #(ly:make-moment 100 4)
       RemoveAllEmptyStaves = ##t
    }
  }
}
