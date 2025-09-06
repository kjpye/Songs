\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Doe, a Deer"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "R. Rodgers"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "O. Hammerstein"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo 4=98
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "1a" s2.*4
}

ChordTrack = \chordmode {
}

melody = \relative {
  \global
  \repeat volta 2 {
    c'4. d8 e4. c8 | e4 c e2 | d4. e8 f f e d | f1 | e4. f8 g4. e8 | g4 e g2 |
    f4. g8 a a g f | a1 | g4. c,8 d e f g | a1 | 4. d,8 e fis g a b1 |
    b4. e,8 fis gis a b | c2. b8 bes | a4 f b g |
    \alternative {
      {c g e d |}
      {c'2 r |}
    }
  }
}

words = \lyricmode {
  \repeat volta 2 {
    Do, a deer a fe -- male deer,
    Re, a drop of gold -- en sun.
    Mi, a name I call my -- self,
    Fa, a long, long way to run.
    So, a need -- le pull -- ing thread,
    La, a note to fol -- low so,
    Ti, a drink with jam and bread,
    That will bring us back to
    \alternative {
      {Do, oh, oh, oh.}
      {Do.}
    }
  }
}

wordsMidi = \lyricmode {
  \repeat volta 2 {
    "Do, " "a " "deer " "a " fe "male " "deer, "
    "\nRe, " "a " "drop " "of " gold "en " "sun. "
    "\nMi, " "a " "name " "I " "call " my "self, "
    "\nFa, " "a " "long, " "long " "way " "to " "run. "
    "\nSo, " "a " need "le " pull "ing " "thread, "
    "\nLa, " "a " "note " "to " fol "low " "so, "
    "\nTi, " "a " "drink " "with " "jam " "and " "bread, "
    "\nThat " "will " "bring " "us " "back " "to "
    \alternative {
      {"Do, " "oh, " "oh, " "oh.\n"}
      {"Do. "}
    }
  }
}

pianoLH = \relative {
  \global
  \repeat volta 2 {
    c2 g | c g | b g | b g | c g | c g |
    d'2 f | b, g | e' c | f e | d c | g f |
    e2 d | a' g | f g |
    \alternative {
      {c, g' |}
      {c,2 r |}
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Voice \melody
            \addlyrics \words
          >>
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Voice \melody
            \addlyrics \words
          >>
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar \with {
          midiInstrument = "Acoustic Guitar (Nylon)"
        }
        \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Dynamics \TempoTrack
            \new Voice \melody
            \addlyrics \wordsMidi
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
