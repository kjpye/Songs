\version "2.25.28"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O’Donnell Abu"
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
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2.*4
}

ChordTrack = \chordmode {
  c1 s g2:7 c |
  g1:7 c s |
  g1:7 f4 c2. g1:7 |
  c1 f2 c g1:7 |
  c1 s g:7 |
  c1 |
}

melody = \relative {
  \global
  c'4 e8 f g4 8 8 | e'4 c8 a g4 e | f d8 f e4 c8 e |
  d4 8. e16 d2 | c4 e8 f g4 8 8 | e'4 c8 a g4 e8 e |
  d4 b'8 c d4 8 c | b4 a8. 16 g2 | d'4 8 c b a g4 |
  c4 8 a g e c4 | f4 8 8 e4 g8 e | d4 8 e d2 |
  c4 e8 f g a g4 | e' c8 a g e c4 | d'4 8 c b(g) a b |
  c4 8. b16 c2 |
  \bar "|."
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

words = \lyricmode {
  Loud -- ly the note of the trum -- pet is sound -- ing,
  Proud -- ly the war cries a -- rise on the gate;
  Fleet -- ly the steed by Lough Swil -- ly is boun -- ding,
  To join the thick squad -- rons on Saim -- ear’s green vale.
  On, ev’ -- ry moun -- tain -- eer,
  Stran -- gers to fight or fear,
  Rush to the stan -- dard of daunt -- less Red Hughg.
  Bon -- naugh and Gal -- low -- glass,
  Throng from each moun -- tain pass
  On for ol Er -- in, ‘O’ -- Don -- nell A -- bú!’
}

wordsMidi = \lyricmode {
  "Loud" "ly " "the " "note " "of " "the " trum "pet " "is " sound "ing, "
  "\nProud" "ly " "the " "war " "cries " a "rise " "on " "the " "gate; "
  "\nFleet" "ly " "the " "steed " "by " "Lough " Swil "ly " "is " boun "ding, "
  "\nTo " "join " "the " "thick " squad "rons " "on " Saim "ear’s " "green " "vale. "
  "\nOn, " ev’ "ry " moun tain "eer, "
  "\nStran" "gers " "to " "fight " "or " "fear, "
  "\nRush " "to " "the " stan "dard " "of " daunt "less " "Red " "Hughg. "
  "\nBon" "naugh " "and " Gal low "glass, "
  "\nThrong " "from " "each " moun "tain " "pass "
  "\nOn " "for " "ol " Er "in, " ‘O’ Don "nell " A "bú!’ "
}

\book {
  \paper {
    output-suffix = melody
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
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

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
