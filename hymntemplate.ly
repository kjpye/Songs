\version "2.20.2"

\include "articulate.ly"

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
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box 5 } s4 s2.
}

TempoTrack = {
}

soprano = \relative c' {
  \global
  c4
  \bar "|."
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  c4
  \bar "|."
}

tenor = \relative c {
  \global
  c4
  \bar "|."
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c' {
  \global
  c4
  \bar "|."
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

\book {
  \score {
%    \unfoldRepeats \articulate <<
    \context GrandStaff <<
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
      <<
        \new ChoirStaff <<
%          \new Voice = tempo \TempoTrack
%                                  % Single soprano staff
%          \new Dynamics \dynamicsSop
%          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
%            \new Voice \RehearsalTrack
%            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSop
%          >>
%                                  % Single alto staff
%          \new Dynamics \dynamicsAlto
%          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
%            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAlto
%          >>
%                                  % Single tenor staff
%          \new Dynamics \dynamicsTenor
%          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
%            \clef "treble_8"
%            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenor
%          >>
%                                  % Single bass staff
%          \new Dynamics \dynamicsBass
%          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
%            \clef "bass"
%            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBass
%          >>
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsOne
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
            \new Lyrics \lyricsto "soprano" \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" \tenor
            \new Voice = "bass" \bass
          >>
        >>
%        \new PianoStaff <<
%          \new Staff <<
%            \new Voice \pianoRH
%            \new Voice \pianoRHone
%            \new Voice \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff <<
%            \clef "bass"
%            \new Voice \pianoLH
%            \new Voice \pianoLHone
%            \new Voice \pianoLHtwo
%          >>
%        >>
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
}
