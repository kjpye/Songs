\version "2.25.27"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I’ll Tell Me Ma"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Irish Traditional"
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

global = {
  \key d \major
  \time 2/4
}

TempoTrack = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2.*4
}

ChordTrack = \chordmode {
  s2 d a:7 s d | s a:7 s d | s g d a:7 | d g d4 a:7 d2 |
}

melody = \relative {
  \global
  r4. r16 a | d,8 d fis8. g16 | fis8 e e8. g16 | fis8 e e8. fis16 | e8 d d8. a'16 |
  d,8 d fis8. g16 | fis8 e e8. g16 | fis8 e e8. fis16 | e8 d d4 |
  a'8 a a fis | g g g e | fis8 16 16 8 d | e d cis a |
  a'8 a a fis | g g g4 | fis8 16 cis e8 cis | d8 d d r |
  \bar "|."
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

words = \lyricmode {
  I’ll tell me ma when I go home
  the boys won’t leave the girls a -- lone.
  They pulled my hair and stole my comb,
  but that’s all right till I go home.
  She is hand -- some; she is pret -- ty;
  she is the belle of Bel -- fast Ci -- ty. __
  She is court -- in’ one two three.
  Please won’t you tell me who is she?
}

wordsMidi = \lyricmode {
  "I’ll " "tell " "me " "ma " "when " "I " "go " "home "
  "\nthe " "boys " "won’t " "leave " "the " "girls " a "lone. "
  "\nThey " "pulled " "my " "hair " "and " "stole " "my " "comb, "
  "\nbut " "that’s " "all " "right " "till " "I " "go " "home. "
  "\nShe " "is " hand "some; " "she " "is " pret "ty; "
  "\nshe " "is " "the " "belle " "of " Bel "fast " Ci "ty. " 
  "\nShe " "is " court "in’ " "one " "two " "three. "
  "\nPlease " "won’t " "you " "tell " "me " "who " "is " "she? "
}

#(set-global-staff-size 20)

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
            \clef bass
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
            \clef bass
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
