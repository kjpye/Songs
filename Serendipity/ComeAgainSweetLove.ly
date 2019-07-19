\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come Again, Sweet Love"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Dowland"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
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
  \key g \major
  \time 2/4
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

soprano = \relative c'' {
  \global
  r4 b8. c16
  d2
  r4 d
  e4 d
  c4. c8
  b2
  r4 d
  d4 c
  b4 b
  a2
  r4 a
  b4 g
  a4. a8
  a2
  \repeat volta 2 {
    r8 d, g4
    r8 e a4
    r8 fis b4
    r8 g c4
    r8 a d4~
    d2~
    d2
    r8 d c b
    a4 r8 b
    a8 g g4~(
    g8 fis16 e) fis4
    g2
  }
}

dynamicsSop = {
}

alto = \relative c'' {
  \global
  g4. g8
  g2
  r4 b
  a8 g g4~
  g4 fis
  g2
  r4 g
  g4 e8.(fis16)
  g4. g8
  fis2
  r4 fis
  g4. d8
  e4. e8
  fis2
  \repeat volta 2 {
    d2
    e4 r8 e
    fis4 r8 fis
    g4 r8 g
    a4 r8 a
    b2~
    b4 a
    g8. f16 e8 g
    fis4. g8
    e4 b8(c)
    d4. c8
    b2
  }
}

dynamicsAlto = {
}

tenor = \relative c' {
  \global
  \clef "treble_8"
  d4. d8
  b2
  r4 b
  c4 d
  e4. d16(c)
  d2
  r4 b
  b a
  g4 d'
  d2
  r4 d
  d4. d8
  d4 cis
  d2
  \repeat volta 2 {
    g,2
    g4 r8 c
    a4 r8 d
    b4 r8 e
    d4. c8
    b8 g g a
    b4 c
    d4 r8 g,
    d'4. d8
    c8 b b a16(g)
    a4. a8
    g2
  }
}

dynamicsTenor = {
}

bass= \relative c' {
  \global
  \clef bass
  g4 g
  g2
  r4 g,
  c4 b
  a4. a8
  g2
  r4 g
  g4 a
  b4 g
  d'2
  r4 d
  g,4 b
  a4. a8
  d2
  \repeat volta 2 {
    b2
    c4. c8
    d4. d8
    e4. e8
    fis4. fis8
    g4 g,
    g4 a
    b4 c
    d4 b
    c8(d) e4
    d4. d8
    g,2
  }
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

wordsSopOne = \lyricmode {
  Come a- gain! sweet love doth now in- vite
  Thy grac- es, that re- frain
  To do me due de- light;
  To see, to hear, to touch, to kiss, to die,
  With thee a- gain in sweet- est sym- pa- thy.
}

wordsSopTwo = \lyricmode {
  Come a- gain! that I may cease to mourn
  Through thy un- kind dis- dain:
  For now, left and for- lorn,
  I sit, I sigh, I weep, I faint, I die,
  In dead- ly pain, and end- less mis- er- y.
}

wordsAltoOne = \lyricmode {
  Come a- gain! sweet love doth now in- vite
  Thy grac- es, that re- frain
  To do me due de- light;
  To see, to hear, to touch, to kiss, to die, to die,
  With thee a- gain in sweet- est sym- pa- thy.
}

wordsAltoTwo = \lyricmode {
  Come a- gain! that I may cease to mourn
  Through thy un- kind dis- dain:
  For now, left and for- lorn,
  I sit, I sigh, I weep, I faint, I die, I die,
  In dead- ly pain, and end- less mis- er- y.
}

wordsTenorOne = \lyricmode {
  Come a- gain! sweet love doth now in- vite
  Thy grac- es, that re- frain
  To do me due de- light;
  To see, to hear, to touch, to kiss, to die, to die,
  With thee a- gain, with thee a- gain  in sweet- est sym- pa- thy.
}

wordsTenorTwo = \lyricmode {
  Come a- gain! that I may cease to mourn
  Through thy un- kind dis- dain:
  For now, left and for- lorn,
  I sit, I sigh, I weep, I faint, I die, I die,
  In dead- ly pain, in dead- ly pain and end- less mis- er- y.
}

wordsBassOne = \lyricmode {
  Come a- gain! sweet love doth now in- vite
  Thy grac- es, that re- frain
  To do me due de- light;
  To see, to hear, to touch, to kiss, to die, to die,
  With thee a- gain in sweet- est sym- pa- thy.
}

wordsBassTwo = \lyricmode {
  Come a- gain! that I may cease to mourn
  Through thy un- kind dis- dain:
  For now, left and for- lorn,
  I sit, I sigh, I weep, I faint, I die, I die,
  In dead- ly pain, and end- less mis- er- y.
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
%      \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSopOne
        \new Lyrics \lyricsto "soprano" \wordsSopTwo
      >>
% Single alto staff
%      \new Dynamics \dynamicsAlto
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "alto" \alto
        \new Lyrics \lyricsto "alto" \wordsAltoOne
        \new Lyrics \lyricsto "alto" \wordsAltoTwo
      >>
% Single tenor staff
%      \new Dynamics \dynamicsTenor
      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \new Voice = "tenor" \tenor
        \new Lyrics \lyricsto "tenor" \wordsTenorOne
        \new Lyrics \lyricsto "tenor" \wordsTenorTwo
      >>
% Single bass staff
%      \new Dynamics \dynamicsBass
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsBassOne
        \new Lyrics \lyricsto "bass" \wordsBassTwo
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
