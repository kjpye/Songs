\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "IV. The Golden Years - The Music of Traditional Broadway"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
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
  \key g \major
  \time 4/4
  \tempo 4=90
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

soprano = \relative c' {
  \global
  R1*2
  b8 fis4 g8 b fis g4
  \bar "|."
}

dynamicsSop = {
}

alto = \relative c' {
  \global
  s1*2
  s1
  \bar "|."
}

dynamicsAlto = {
}

baritone = \relative c {
  \global
  \clef "bass"
  R1*2
  s1
  \bar "|."
}

dynamicsTenor = {
}

bass= \relative c' {
  \global
  \clef bass
  c4
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

wordsSop = \lyricmode {
  words
}

wordsAlto = \lyricmode {
  words
}

wordsTenor = \lyricmode {
  words
}

wordsBass = \lyricmode {
  words
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSop
      >>
% Single alto staff
      \new Dynamics \dynamicsAlto
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "alto" \alto
        \new Lyrics \lyricsto "alto" \wordsAlto
      >>
% Single tenor staff
      \new Dynamics \dynamicsTenor
      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \new Voice = "tenor" \tenor
        \new Lyrics \lyricsto "tenor" \wordsTenor
      >>
% Single bass staff
      \new Dynamics \dynamicsBass
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsBass
      >>
% Joint soprano/alto staff
      \new Dynamics \dynamicsWomen
      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto"    { \voiceTwo \alto    }
        \new Lyrics \lyricsto "soprano" \words
      >>
% Joint tenor/bass staff
      \new Dynamics \dynamicsMen
      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
        \new Voice = "tenor" \tenor
        \new Voice = "bass" \bass
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \pianoRH
        \new Voice \pianoRHone
        \new Voice \pianoRHtwo
      >>
      \new Dynamics \dynamicsPiano
      \new Staff <<
        \new Voice \pianoLH
        \new Voice \pianoLHone
        \new Voice \pianoLHtwo
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
