\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "title"
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

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "1a" }
  s2 s2
}

ChordTrack = \chordmode {
}

soprano = \relative c' {
  \global
  c4
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

wordsSop = \lyricmode {
  words
}

alto = \relative c' {
  \global
  c4
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

wordsAlto = \lyricmode {
  words
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative c {
  \global
  c4
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

wordsTenor = \lyricmode {
  words
}

bass= \relative c' {
  \global
  c4
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

wordsBass = \lyricmode {
  words
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

pianoRH = \relative c' {
  \global
  c4
  \bar "|."
}

pianoRHone = \relative c' {
  \global
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

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLH = \relative c' {
  \global
  \oneVoice
  c4
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  c4
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \voiceTwo
  c4
  \bar "|."
}

\score {
  \context GrandStaff <<
    <<
      \new ChordNames { \ChordTrack }
      \new FretBoards { \ChordTrack }
    >>
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
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
          \clef "treble_8"
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
                                % Joint soprano/alto staff
        \new Dynamics \dynamicsWomen
        \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" { \voiceOne \soprano }
          \new Voice = "alto"    { \voiceTwo \alto    }
          \new Lyrics \lyricsto "soprano" \words
        >>
                                % Joint tenor/bass staff
        \new Dynamics \dynamicsMen
        \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
          \clef "bass"
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
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
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
