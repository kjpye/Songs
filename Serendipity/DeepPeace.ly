\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Deep Peace"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Bill Douglas"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key ees \major
  \time 4/4
  \tempo 4=120
%  \partial 4
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
%  \mark \markup { \circle "1a" }
%  s2 s2
}

solo = \relative c'' {
  \global
  \time 4/4 s1*3
  \time 5/4 s1 s4
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  s2.*8
  \time 4/4 ees1
  \time 3/4 d2(d8 c16 d)
  \time 4/4 f8 ees~2.~
  \time 3/4 ees8 d~d4~8 c16 bes
}

soprano = \relative c' {
  \global
  \clef bass
  \voiceOne
  bes2 c
  bes1
  aes2 f
  \time 5/4 g1 \oneVoice r4 \voiceOne
  \clef treble
  \time 4/4 g'4 g~g8 g16 g g8 aes
  \time 3/4 g8. f16 f2 
  \time 4/4 g4 g~g8 g16 g16 g8 g
  \time 3/4 g8. f16 f2
  \time 4/4 aes4 aes~aes8 aes16 aes aes8 bes
  \time 3/4 aes8. g16 g2
  \time 4/4 g4 g~g8 g16 g g8 aes
  \time 3/4 g8. f16 f2
  \time 4/4 c'4 c~c8 c16 c ees8. d16
  \time 3/4 c8. bes16 bes2
  \time 4/4 g8 g g4 g8 g bes aes
  \time 3/4 g8. f16 f2

  ees8 f g aes bes4
  bes2.
  aes8 g aes bes c d
  ees2.
  d8 c c4. ees8
  c4 bes2
  bes4 aes4. ees8
  g2.

  \time 4/4 g4 4~8 16 16 8 aes
  \time 3/4 g8. f16 2
  \time 4/4 g4 4~8 16 16 8 aes
  \time 3/4 g8. f16 2
  \time 4/4 c'4 4~8 16 16 8 d
  \time 3/4 c8. bes16 2
  \time 4/4 g4 4~8 16 16 bes8 aes
  \time 3/4 g8. f16 2
  \time 4/4 ees4 ees'-\fermata d8 c bes aes
  \time 3/4 aes8. g16 2
  \time 4/4 g8 8 4 8 8 bes aes
  \time 3/4 g8. f16 2

  \time 4/4
  g4 2 4
  g1
  g4 2 4
  g1

  r8 c8 bes aes g f g aes
  bes4 2.
  r8 bes aes g f ees f g
  g8 aes~2.
  g4 ees'2 d4
  c2(bes)
  g4 2 4
  g1
  g4 2 4
  g1
  aes2. g4
  bes1
  c2. bes8 c
  d1
  ees4 2 4
  c2(bes)
  g4 2 4
  g1-\fermata
  \bar "|."
}

dynamicsSop = {
}

alto = \relative c' {
  \global
  \clef bass
  \voiceTwo
  g2 aes
  f2 g
  ees2 d
  \time 5/4
  ees1 s4
  \clef treble
  \time 4/4 c'4 c~c8 c16 c16 c8 c
  \time 3/4 d8. d16 d2
  \time 4/4 ees4 ees~ees8 ees16 ees ees8 ees
  \time 3/4 d8. d16 d2
  \time 4/4 ees4 ees~ees8 ees16 ees ees8 ees
  \time 3/4 ees8. ees16 ees2
  \time 4/4 ees4 ees~ees8 ees16 ees ees8 ees
  \time 3/4 d8. d16 d2
  \time 4/4 aes'4 aes~aes8 aes16 aes c8 bes
  \time 3/4 aes8. g16 g2
  \time 4/4 ees8 ees ees4 ees8 ees g f
  \time 3/4 ees8. ees16 ees2

  c8 d ees2
  f2.
  ees4. g8 aes bes
  c2.
  aes2.
  g2.
  ees2.
  d2.

  \time 4/4 c4 4~8 16 16 8 8
  \time 3/4 d8. 16 2
  \time 4/4 ees4 4~8 16 16 8 8
  \time 3/4 d8. 16 2
  \time 4/4 aes'4 4~8 16 16 8 bes
  \time 3/4 aes8. g16 2
  \time 4/4 ees4 4~8 16 16 8 8
  \time 3/4 d8. 16 2
  \time 4/4 c4 c'-\fermata bes8 aes g f
  \time 3/4 f8. ees16 2
  \time 4/4 ees8 8 4 8 8 g8 f
  \time 3/4 ees8. d16 2

  \time 4/4
  ees4 2 4
  d1
  c4 2 4
  bes1
  c2 d
  d4. f8 ees4 d
  c2 d
  ees2 d
  ees4 2 4
  g4(ees <d f>2)
  c4 2 4
  d1
  ees4 2 4
  d1
  ees1
  g1
  g1
  f1
  g4 2 4
  <ees g>2(f)
  ees4 2 4
  ees1-\fermata
  \bar "|."
}

dynamicsAlto = {
}

tenor = \relative c {
  \global
  \voiceOne
  ees1
  d1
  c2 bes
  \time 5/4 bes1 \oneVoice r4 \voiceOne
  \time 4/4 ees4 ees~ees8 ees16 ees16 ees8 ees
  \time 3/4 f8. f16 f2
  \time 4/4 g4 g~g8 g16 g g8 g
  \time 3/4 aes8. aes16 aes2
  \time 4/4 c4 c~c8 c16 c c8 c
  \time 3/4 bes8. bes16 bes2
  \time 4/4 c4 c~c8 c16 c c8 c
  \time 3/4 d8. d16 d2
  \time 4/4 ees4 ees~ees8 ees16 ees ees8 ees
  \time 3/4 d8. d16 d2
  \time 4/4 c8 c c4 c8 c c c
  \time 3/4 bes8. bes16 bes2

  \clef treble
  c2.
  d2.
  c4. d8 ees f
  g2.
  ees2.
  d2.
  c2.
  bes2.

  \clef bass
  \time 4/4 ees,4 4~8 16 16 8 8
  \time 3/4 f8. 16 2
  \time 4/4 g4 4~8 16 16 8 8
  \time 3/4 bes8. 16 2
  \time 4/4 ees4 4~8 16 16 8 8
  \time 3/4 d8. 16 2
  \time 4/4 c4 4~8 16 16 8 8
  \time 3/4 bes8. 16 2
  \time 4/4 ees4 ees-\fermata 8 8 8 8
  \time 3/4 bes8. 16 2
  \time 4/4 c8 8 4 8 8 8 8
  \time 3/4 bes8. 16 2

  \time 4/4
  g4 2 4
  g1
  ees4 2 4
  d1
  ees2 f
  g1
  aes2 bes
  c2 bes
  g4 2 4
  g4.(aes8 bes2)
  aes4 2 4
  bes1
  c4 2 4
  bes1
  c1
  d1
  ees1
  d1
  g,4 2 4
  c2(d)
  bes4 2 4
  bes1-\fermata
  \bar "|."
}

dynamicsTenor = {
}

bass= \relative c, {
  \global
  \clef bass
  \voiceTwo
  ees2 aes
  bes2 g
  aes2 bes
  \time 5/4 ees,1 s4
  \time 4/4 aes4 aes~aes8 aes16 aes aes8 aes
  \time 3/4 bes8. bes16 bes2
  \time 4/4 c4 c~c8 c16 c c8 c
  \time 3/4 d8. d16 d2
  \time 4/4 ees4 ees~8 16 16 8 8
  \time 3/4 ees8. 16 2
  \time 4/4 aes4 4~8 16 16 8 8
  \time 3/4 bes8. 16 2
  \time 4/4 aes4 4~8 16 16 8 8
  \time 3/4 g8. 16 2
  \time 4/4 aes8 8 4 8 8 8 8
  \time 3/4 bes8. 16 2

  \clef treble
  s2.*8

  \clef bass
  \time 4/4 aes,4 4~8 16 16 8 8
  \time 3/4 bes8. 16 2
  \time 4/4 c4 4~8 16 16 8 8
  \time 3/4 d8. 16 2
  \time 4/4 aes'4 4~8 16 16 8 8
  \time 3/4 g8. 16 2
  \time 4/4 aes4 4~8 16 16 8 8
  \time 3/4 bes8. 16 2
  \time 4/4 c4 4-\fermata aes8 8 8 8
  \time 3/4 ees8. 16 2
  \time 4/4 aes,8 8 4 8 8 8 8
  \time 3/4 bes8. 16 2

  \time 4/4
  c4 2 4
  bes1
  aes4 2 4
  g1
  aes2 bes
  g2 c
  f,2 g
  aes2 bes
  c2 bes
  aes2 g
  f4 2 4
  g1
  aes4 2 4
  bes1
  f1
  g1
  aes1
  bes1
  c4 2 bes4
  aes2(bes)
  <ees, ees'>4 2 4
  q1-\fermata
  \bar "|."
}

dynamicsBass = {
}

dynamicsPiano = {
}

pianoRH = \relative c' {
  \global
  c4
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  c4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  c4
  \bar "|."
}

pianoLH = \relative c' {
  \global
  \oneVoice
  c4
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

wordsSolo = \lyricmode {
  Ah
}
  
wordsSop = \lyricmode {
  Ah __ _ __ _ __ _ __ _ __ _
  Deep peace of the run- ning wave to you,
  Deep peace of the flow- ing air to you,
  Deep peace of the qui- et earth to you,
  Deep peace of the shin- ing stars to you,
  Deep peace of the gen- tle night to you,
  Moon and stars pour their heal- ing light on you
  oo _ _ _ _ _ _ _ _ _ _ _ _
  oo _ _ _ _ _ _ _ _ _
  Deep peace of the run- ning wave to you,
  Deep peace of the flow- ing air to you,
  Deep peace of the qui- et earth to you,
  Deep peace of the shin- ing stars to you,
  Deep peace of the gen- tle night to you,
  Moon and stars pour their heal- ing light on you

  Deep peace to you
  Deep peace to you oo _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Deep peace to you
  Deep peace to you
  Deep peace to you oo _ _ _ _ _ _
  Deep peace to you
  Deep peace to you
}

wordsBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  oo _ _ _
  Deep...
}
  
\layout {
  indent = 1.5\cm
  \context {
    \Staff
    \RemoveAllEmptyStaves
  }
}
\score {
  <<
    \new ChoirStaff <<
      \new Staff \with { instrumentName = #"Solo" shortInstrumentName = #"Solo" } <<
        \new Voice = "solo" { \solo }
        \new Lyrics \lyricsto "solo" \wordsSolo
      >>
% Joint soprano/alto staff
%      \new Dynamics \dynamicsWomen
      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto"    { \voiceTwo \alto    }
        \new Lyrics \lyricsto "soprano" \wordsSop
      >>
% Joint tenor/bass staff
%      \new Dynamics \dynamicsMen
      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
        \new Voice = "tenor" \tenor
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsBass
      >>
    >>
  >>
  \layout {}
  \midi {
    \context {
      \Score
%      tempoWholesPerMinute = #(ly:make-moment 100 4)
       \RemoveAllEmptyStaves
    }
  }
}
