\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Down to the River to Pray"
  subtitle    = "from the Motion Picture O Brother, Where Art Thou"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional"
  arranger    = "Arr. Sheldon Curry"
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
  \time 2/2
}

TempoTrack = {
  \tempo Moderately 2=66
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "3c" } s1*3
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*4
  \mark \markup { \box "4c" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "5c" } s1*4
  \mark \markup { \box "6a" } s1*4
  \mark \markup { \box "6b" } s1*4
  \mark \markup { \box "6c" } s1*4
  \mark \markup { \box "7a" } s1*4
  \mark \markup { \box "7b" } s1*4
  \mark \markup { \box "7c" } s1*4
  \mark \markup { \box "8a" } s1*4
  \mark \markup { \box "8b" } s1*4
  \mark \markup { \box "8c" } s1*4
  \mark \markup { \box "9a" } s1*3
  \mark \markup { \box "9b" } s1*3
  \mark \markup { \box "9c" } s1*3
  \mark \markup { \box "10a" } s1*3
  \mark \markup { \box "10b" } s1*3
  \mark \markup { \box "10c" } s1*3
  \mark \markup { \box "11a" } s1*4
  \mark \markup { \box "11b" } s1*4
  \mark \markup { \box "11c" } s1*3
}

ChordTrack = \chordmode {
  f1:5   | s   | s % 3a
  s1     | f:5 | s % 3b
  bes1:5 | f:5 | s % 3c
}

soprano = \relative {
  \global
  s1*12
  \bar "|."
}

words = \lyricmode {
  As I went down to the riv -- er to pray,
  stud -- y -- in' a -- bout that good ol' __ way
  and who shall wear the star -- ry
}

wordsSopAbove = \lyricmode {
}

alto = \relative {
  \global \oneVoice
  R1*3
  r4^\markup\italic "Alto Solo (or Section)" c'^\p c d % 3b
  f4 8 8 8 8 4
  f4 r g8 8 8 a
  g4 f a g8(f) % 3c
  f4 d c a
  c4 r8 d f4 d
  \bar "|."
}

wordsAlto = \lyricmode {
  words
}

tenor = \relative {
  \global
  R1*20
  \bar "|."
}

wordsTenor = \lyricmode {
  words
}

bass = \relative {
  \global
  R1*20
  \bar "|."
}

wordsBass = \lyricmode {
  words
}

pianoRHone = \relative {
  \global
  r4 <c' g'> r <c f>
  r4 f g8 a g f
  r4 <c g'> r <c f>
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s1
  r4 c'2.
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s1
}

pianoLH = \relative {
  \global
  f1~
  f1
  f1~
  f1 % 3b
  f1~
  f1
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \alto
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
    \midi {}
  }
}
