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

sopTwo = \relative c' { % 48-53
  \key d \major
  a'4. b8 d4
  fis2 fis4
  fis4 e d
  e8 d~d4 b
  a4. b8 d4
  fis2 fis4
  fis4 e d
  e4 d r8 b
}

sopThree = \relative c' {
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
  8 fis~fis4 e
  d4 r8 e fis4
  g4. fis8 e4
  d4 b r8 a
  a4. b8 e4
  d2.~
  d4 r r
}

sopFour = \relative c' {
  d2.~d2.
  r2.
  r2.
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
  \sopTwo % 48-53
  \sopThree % 54-77
  \sopTwo   % 48-53 again
  \sopFour  % 78-end
  \bar "|."
}

dynamicsSop = {
}

alto = \relative c' {
  \global
  \repeat volta 2 {
    r2.
    r2.
    r2.
    r2.
  }
  cis4.^\mf cis8 e4
  \bar "|."
}

dynamicsAlto = {
}

tenor = \relative c {
  \global
  \clef "treble_8"
  \repeat volta 2 {
    r2.
    r2.
    r2.
    r2.
  }
  a4.^\mf a8 cis4
  \bar "|."
}

dynamicsTenor = {
}

bass= \relative c {
  \global
  \clef bass
  \repeat volta 2 {
    r2.
    r2.
    r2.
    r2.
  }
  e4.^\mf fis8 a4
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

pianoRH = \relative c' {
  \global
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  \repeat volta 2 {
    e4. fis8 a4
    cis2.
    b4. cis8 e4
    <b, d gis>2.
  }
  e4. fis8 a4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  \repeat volta 2 {
    r4 <a cis> <cis e>
    r4 <e a> q
    r4 <d gis> <gis b>
    s2.
  }
  r4 <a, cis> <cis e>
  \bar "|."
}

pianoLH = \relative c'' {
  \global
  \oneVoice
  \repeat volta 2 {
    a2.
    e'2.
    e,2.
    e4 fis gis
  }
  a2.
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  c4
  \bar "|."
}

pianoLHtwo = \relative c' {
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
  and the times of the Mull of Kin- tyre. __

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
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSop
      >>
% Single alto staff
%     \new Dynamics \dynamicsAlto
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "alto" \alto
        \new Lyrics \lyricsto "alto" \wordsAlto
      >>
% Single tenor staff
%     \new Dynamics \dynamicsTenor
      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \new Voice = "tenor" \tenor
        \new Lyrics \lyricsto "tenor" \wordsTenor
      >>
% Single bass staff
%     \new Dynamics \dynamicsBass
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsBass
      >>
% Joint soprano/alto staff
%     \new Dynamics \dynamicsWomen
%     \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
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
%       \new Voice \pianoRH
        \new Voice \pianoRHone
        \new Voice \pianoRHtwo
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
