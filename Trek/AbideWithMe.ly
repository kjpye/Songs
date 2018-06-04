\version "2.19.80"
%\include "../include/merge-rests.ly"

\header {
  title = "Abide With Me"
  composer = "Sir John Stainer (1840-1901)"
}

\layout {
  ragged-last-bottom = ##f
%  system-count = 10
%  page-count = 2
}

global = {
  \key g \minor
  \time 4/4
}

tempoMark = {
  \tempo 4=90
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
}

sop = \relative c' {
  \global
  \repeat volta 4 {
    g2 g4 f
  }
}

alt = \relative c' {
  \global
  \repeat volta 4 {
    ees2 d4 d
  }
}

ten = \relative c' {
  \global
  \repeat volta 4 {
    bes2 bes8 aes
  }
}

bas = \relative c {
  \global
  \repeat volta 4 {
    f2 bes4 bes
  }
}

text = \lyricmode {
  A- bide with me;
}

\book {
% \score {
%   \new ChoirStaff \with {
%     instrumentName = \markup
%     \italic
%     \override #'(baseline-skip . 2.5)
%     \center-column{
%       Quartet or Chorus
%     }
%   } <<
%     \new Staff \with {
%       instrumentName = \markup\column{S A}
%     } <<
%       \new Voice = sop { \voiceOne \tempoMark \sop }
%       \new Voice = alt { \voiceTwo << \alt \dyn >> }
%     >>
%     \new Lyrics \lyricsto alt \text
%     \new Staff \with {
%       instrumentName = \markup\column{T B}
%     } <<
%       \clef bass
%       \new Voice = ten { \voiceOne \ten }
%       \new Voice = bas { \voiceTwo \bas }
%     >>
%   >>
%   \layout {
%     \context {
%       \Score
%       markFormatter = #format-mark-box-letters
%     }
%     \context {
%       \ChoirStaff
%       \consists "Instrument_name_engraver"
%     }
%     \context {
%       \Staff
%       \override DynamicText.self-alignment-X = #right
%       \override DynamicText.extra-offset = #'(-1.5 . 0)
%       \override DynamicText.font-size = #-0.5
%       \override DynamicText.Y-extent = #'(0 . 0.2)
%       \override DynamicLineSpanner.staff-padding = #3.2
%       \override DynamicTextSpanner.Y-extent = #'(0 . 0.2)
%       \override DynamicTextSpanner.extra-offset = #'(0.5 . 0.5)
%       \override DynamicLineSpanner.Y-extent = #'(0 . 0)
%       \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
%       \override InstrumentName.self-alignment-X = #right
% %      \override RestCollision.positioning-done = #merge-rests-on-positioning
%     }
%     \context {
%       \Lyrics
%       \override VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)
%     }
%   }
%   \midi { }
% }

  \score {
    \new ChoirStaff <<
      \new Voice = sop << \sop \dyn >>
      \new Lyrics \lyricsto sop \text
      \new Voice = alt << \alt \dyn >>
      \new Lyrics \lyricsto alt \text
      \new Voice = ten << \clef "G_8" \ten \dyn >>
      \new Lyrics \lyricsto ten \text
      \new Voice = bas << \clef F \bas \dyn >>
      \new Lyrics \lyricsto bas \text
    >>
    \layout {
      \context {
	\Staff
	\override DynamicText.direction = #UP
	\override DynamicText.staff-padding = #0
	\override DynamicLineSpanner.direction = #UP
      }
    }
  }
}
