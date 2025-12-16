\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Big Boots"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sherman Edwards"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Sid Wayne"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo "Moderately Slow" 4=100
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "76a" s1*3 s2.
  \textMark \markup\box "76b" s4
  \repeat volta 2 {
    s1*4
    \textMark \markup\box "76c" s1*4
    \textMark \markup\box "76d" s1*4
    \textMark \markup\box "76e" s1*4
    \textMark \markup\box "77a" s1*3
    \textMark \markup\box "77b" s1*3
    \textMark \markup\box "77c" s1*3
    \textMark \markup\box "77d" s1*4
    \textMark \markup\box "77e" s1*2
    \alternative { {s1} {s1} }
  }
}

ChordTrack = \chordmode {
  s1*4
  \repeat volta 2 {
    ees1 s s bes2:7sus4 bes:7 | aes1 ees bes:7 ees | s1*3 bes2:7sus4 bes:7 | aes1 ees bes:7 ees |
    aes1 s ees | s aes s | ees bes:7 ees | s1*2 bes2:7sus4 bes:7 aes1 | ees bes:7 |
    \alternative {
      {ees4 a:dim bes2:7 |}
      {ees1 |}
    }
  }
}

melody = \relative {
  \global
  R1*3 r2.
  bes4 |
  \repeat volta 2 {
    ees4 f g aes | g8 ees4. r2 | ees4 f g aes | f2~4. 8 |
    c'8 8 d4 ees~\tuplet 3/2 {8 d c} | bes ees,4.~4 bes | % 76c
    bes4 aes'8 f bes,4. 8 | ees2 r4 bes |
    ees4 f g aes | g8 ees4. r4 bes | ees f g aes | f2~4. 8 | % 76d
    c'4. d8 ees d4 c8 | bes4. ees,8 2 | bes4 aes'8 f bes,4. 8 | ees2. 4 |
    c'4~\tuplet 3/2 {8 b c} aes ees4. | aes4. 8 c2 | % 77a
    ees,4~\tuplet 3/2 {8 bes ees} g4~\tuplet 3/2 {8 ees g} |
    bes1 | c4~\tuplet 3/2 {8 b c} aes ees4. | aes4~\tuplet 3/2 {8 8 8} c2 | % 77b
    ees,4~\tuplet 3/2 {8 bes ees} g4~\tuplet 3/2 {8 ees g} | % 77c
    bes2. bes,8 8 | ees4 f8 8 g4 aes |
    g8 ees4. r4 bes | ees f g aes | f2~4. 8 | c'4 d ees~\tuplet 3/2 {8 d c} | % 77d
    bes8 ees,4.~4 bes | bes aes'8 f bes,4. 8 |
    \alternative {
      {ees2 r4\caesura bes |}
      {ees1\fermata |}
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  They
  \repeat volta 2 {
    call your dad -- dy “Big Boots.”
    “Big Boots” is his name. __
    It takes a big man __ to wear Big Boots. __
    That’s your dad -- dy’s claim to fame,
    They know your dad -- dy, “Big Boots,”
    Wher -- ev -- er sol -- diers are, __
    ’Cause he can han -- dle an arm -- ored car
    Just like a kid -- die car.
    So sleep, __ lit -- tle sol -- dier;
    don’t you cry.
    Loo __ loo loo loo __ loo loo loo.
    Gen -- er -- al Sand -- man soon __ com -- ing by.
    Loo __ loo loo loo __ loo loo loo.
    Gon -- na tell you a lit -- tle se -- cret;
    You won’t be -- lieve it’s true. __
    Did you know your __ dad -- dy “Big Boots” __
    Once wore lit -- tle boots like
    \alternative { { you? They } { you? } }
  }
}

midiWords = \lyricmode {
  "They "
  \repeat volta 2 {
    "call " "your " dad "dy " "“Big " "Boots.” "
    "\n“Big " "Boots” " "is " "his " "name. " 
    "\nIt " "takes " "a " "big " "man "  "to " "wear " "Big " "Boots. " 
    "\nThat’s " "your " dad "dy’s " "claim " "to " "fame, "
    "\nThey " "know " "your " dad "dy, " "“Big " "Boots,” "
    "\nWher" ev "er " sol "diers " "are, " 
    "\n’Cause " "he " "can " han "dle " "an " arm "ored " "car "
    "\nJust " "like " "a " kid "die " "car. "
    "\nSo " "sleep, "  lit "tle " sol "dier; "
    "\ndon’t " "you " "cry. "
    "\nLoo "  "loo " "loo " "loo "  "loo " "loo " "loo. "
    "\nGen" er "al " Sand "man " "soon "  com "ing " "by. "
    "\nLoo "  "loo " "loo " "loo "  "loo " "loo " "loo. "
    "\nGon" "na " "tell " "you " "a " lit "tle " se "cret; "
    "\nYou " "won’t " be "lieve " "it’s " "true. " 
    "\nDid " "you " "know " "your "  dad "dy " "“Big " "Boots” " 
    "\nOnce " "wore " lit "tle " "boots " "like "
    \alternative { { "you?\n" "They " } { "you?" } }
  }

}

pianoRHone = \relative {
  \global \vo
  <aes' c>4(<bes d> <c ees>4~\tuplet 3/2 {8 <bes d> <aes c>} |
  \ov <ees g bes>8 <g, bes ees>4.~4) <g bes>4( |
  \vo bes4 aes'8 f bes,4. 8 | ees2.) \section \break
  \ov bes4
  \repeat volta 2 {
    \ov <g bes ees>4 <aes c f> <bes d g> <c f aes> | % 76b
    <bes d g>8 <g bes ees>4.~2 | <g bes ees>4 <aes c f> <bes d g> <c f aes> |
    \vo f2~4. 8 |
    <aes c>8 8 <bes d>4 <c ees>4~\tuplet 3/2 {8 <bes d> <aes c>} | % 76c
    \ov <ees g bes>8 <g, bes ees>4.~4 <g bes> |
    \vo bes4 aes'8 f bes,4. 8 | ees2 r4 bes |
    <g bes ees>4 <aes c f> <bes d g> <c f aes> | % 76d
    <bes d g>8 <g bes ees>4.~4 <g bes> |
    <g bes ees>4 <aes c f> <bes d f> <c f aes> |
    \vo f2~4. 8 |
    \ov <aes c>4. <bes d>8 <c ees> <bes d>4 <aes c>8 | % 76e
    <ees g bes>4. <g, bes ees>8 2 | \vo bes4 aes'8 f bes,4. 8 | ees2. \ottava #1 ees''4 |
    c'4~\tuplet 3/2 {8 b c} aes ees4. | <c aes'>4. 8 <ees c'>2 | % 77a
    ees4~\tuplet 3/2 {8 bes ees} g4~\tuplet 3/2 {8 ees g} |
    <ees g bes>1 | c'4~\tuplet 3/2 {8 b c} aes ees4. | aes4~\tuplet 3/2 {8 8 8} c2 | % 77b
    ees,4~\tuplet 3/2 {8 bes ees} g4~\tuplet 3/2 {8 ees g} | % 77c
    bes2. \ottava #0 bes,,,8 8 | <g bes ees>4 <aes c f>8 8 <bes d g>4 <c f aes> |
    \ov <bes d g>8 <g bes ees>4.~4 <g bes> | % 77d
    <g bes ees> <aes c f> <bes d g> <c f aes> | \vo <aes f'>2~f'4. 8 |
    <aes c>4 <bes d> <c ees>4~\tuplet 3/2 {8 <bes d> <aes c>} |
    <ees g bes>8 <g, bes ees>4.~4 <g bes> | bes aes'8 f bes,4. 8 | % 77e
    \alternative {
      {ees4 c'(f,\fermata) \caesura c |}
      {r4 <bes' g'>4(<g ees'>2\fermata) |}
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  ees'1 | s1 | aes,2 4 f8 aes | g4(bes8 aes g4) \section
  s4
  \repeat volta 2 {
    s1*3 | ees'4(c d2) | % 76b
    ees1 | s | aes,2 4 f8 aes | g4(bes8 aes g4) r |
    s1*3 | ees'4(c d2) |
    s1*2 | aes4 s aes f8 aes | g4(bes8 aes g4) r |
    ees'''2 c | s1 | g2 bes | % 77a
    s1 | ees2 c | c ees |
    g,2 bes | <bes d aes'>2. aes,,4 | s1 |
    s1*2 | ees'4(c d2) | ees1 |
    s1 | aes,4 s aes f8 aes |
    \alternative {
      {g4 <ees' ges> d r |}
      {s1 |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s | s4 s2.\> | s2.\mp
  s4\mp
  \repeat volta 2 {
    s1*16 |
    s1*15 |
    \alternative {
      {s4\< s\> s2\! |}
      {s4 s2.-\markup\bold\italic rall.}
    }
  }
}

pianoLHone = \relative {
  \global \vo
  r4 g(f ees) | r d(c bes) | \ov f ees d2 | \vo bes'4(d8 c bes4) \section
  \ov r4
  \repeat volta 2 {
    \vo r4 bes2--(4--) | r d(c bes) | r d2--(4--) | r d2--(4--) |
    r4 g(f ees) | r d(c bes) | \ov f ees d2 \vo | bes'4(d8 c bes4) r |
    r4 bes2--(4--) | r d(c bes) | r bes2--(4--) | r bes2--(4--) |
    r4 g'(f ees) | r d(c bes) \ov | f ees d2 \vo | bes'4(d8 c bes4) r \clef treble |
    \ov aes''8 ees' c ees aes, ees' c ees | % 77a
    aes,8 ees' c ees aes, ees' c aes | ees bes' g bes ees, bes' g bes |
    ees,8 bes' g bes ees bes g ees | aes ees' c ees aes, ees' c ees | % 77b
    aes,8 ees' c ees aes, ees' c aes |
    ees8 bes' g bes ees, bes' g bes | bes, aes' f d bes4 \clef bass bes, | % 77c
    \vo r bes2--(4--) |
    r4 d4(c bes) | r bes2--(4--) | r bes2--(4--) | r g'(f ees) |
    r4 d(c bes) \ov | f ees d2 |
    \alternative {
      {<ees bes'>4 <bes' a'> <bes aes'>\fermata \caesura r |}
      {<ees, bes'>1\fermata |}
    }
  }
}

pianoLHtwo = \relative {
  \global \vt
  aes,1 | ees | s | ees2.
  s4
  \repeat volta 2 {
    ees1 | ees | ees | ees |
    aes1 | ees | s | ees2. r4 |
    ees1 | ees | ees | ees |
    aes1 | ees | s | ees2. r4 |
    s1*8 | ees1 | % 77abc
    ees1 | ees | ees | aes |
    ees1 | s |
    \alternative {
      {s1}
      {s1}
    }
  }
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
            \new Dynamics \TempoTrack
            \new Dynamics \dynamicsMelody
            \new Voice \melody
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
