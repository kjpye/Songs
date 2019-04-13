\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
  dedication  = "dedication"
  title       = "title"
  subtitle    = "subtitle"
  subsubtitle = "subsubtitle"
  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "composer"
  arranger    = "arranger"
  opus        = "opus"

  poet        = "poet"
  meter       = "meter"
  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
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
  \time 3/4
  \tempo 4=120
  \partial 4
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
  c4
  \bar "|."
}

dynamicsSop = {
}

alto = \relative c' {
  \global
  c4
  \bar "|."
}

dynamicsAlto = {
}

tenor = \relative c {
  \global
  \clef "treble_8"
  c4
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

pianoLH = \relative c' {
  \global
  \clef bass
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
      \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSop
      >>
      \new Dynamics \dynamicsAlto
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "alto" \alto
        \new Lyrics \lyricsto "alto" \wordsAlto
      >>
      \new Dynamics \dynamicsTenor
      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \new Voice = "tenor" \tenor
        \new Lyrics \lyricsto "tenor" \wordsTenor
      >>
      \new Dynamics \dynamicsBass
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsBass
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \pianoRH
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
    }
  }
}
