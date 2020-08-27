\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "title"
  subtitle    = "Sankey No. X"
  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "composer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "poet"
  meter       = "meter"
  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*6
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5
}

TempoTrack = {
}

soprano = \relative c' {
  \global
  \repeat volta 4 {
    d4
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 4 {
    d4
  }
}

tenor = \relative c {
  \global
  \repeat volta 4 {
    d4
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c' {
  \global
  \repeat volta 4 {
    d4
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
}
  
wordsMidi = \lyricmode {
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
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
%    <<
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
%            \new Voice \TempoTrack
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
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
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
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}
