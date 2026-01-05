\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hard Knocks"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Joy Byers"
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
  \key g \major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo "Moderate beat" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "104a" s1*4
  \repeat volta 2 {
  \textMark \markup\box "104b" s1*3
  \textMark \markup\box "104c" s1*3
  \textMark \markup\box "104d" s1*3
  \textMark \markup\box "105a" s1*2
    \alternative { {s1} {s1} }
  }
  \repeat volta 2 {
    \textMark \markup\box "105b" s1*3
    \textMark \markup\box "105c" s1*3
    \textMark \markup\box "105d" s1*3
    \textMark \markup\box "106a" s1*3
    \textMark \markup\box "106b" s1*3
    \textMark \markup\box "106c" s1*3
    \alternative {
      {\textMark \markup\box "106d" s1*2}
      {s1*2}
    }
  }
}

ChordTrack = \chordmode {
  s1*4 |
  \repeat volta 2 {
    g1 s s | s c:7 s | g s d:7 |
    c1:7 g |
    \alternative { {s1} {s1} }
  }
  \repeat volta 2 {
    c1 c:7 g | g:7 c c:7 | a:7 d:7 g |
    s1 s g:7 | c:7 s g | s d:7 c:7 |
    \alternative { {g1 s} {g1 s} }
  }
}

melodyA = \relative {
  bes'4 g g e8 d |
  \tag #'dash {g8 \slurDashed 8(8) \slurSolid bes8~2 |}
  \tag #'v1   {g8             4               bes8~2 |}
  \tag #'v2   {g8             8 8             bes8~2 |}
  r8 g g g b b c c |
  \tag #'dash {\slurDashed d8(8) 4 g,8(8) \slurSolid bes4 |} % 104c
  \tag #'v1   {            d8 8  4 g,4               bes4 |} 
  \tag #'v2   {            d4    4 g,8 8             bes4 |}
  g1 | bes8 8 8 8 g8 8 4 |
  g2 r8 g a g | bes8 4 g8~8 8 8 8 | a a a a~a a8 4 | % 104d
  bes4 4 g8 8 4 | 1 |
}

melodyB = \relative {
  R1 |
}

melodyC = \relative {
  r2 r4 r8 g' \section |
}

melodyD = \relative {
  e'4 g g a | bes4 8 g~4 r | e8(8) g4 8 8 4 | % 105b
  bes4 8 g~4 r8 g | e4 g g a8(g) | bes8 4 g8~4 r8 g |
  a4 4 8 8 8 b | fis4 d8 8~4 r | bes'4 g g(e8 d) |
  g4 8 bes~4 r | g4 8 8 b b c4 | d8 8 4 g,8 g bes4 | % 106a
  g1 | bes8 8 8 8 g8 8 4 | 2 r8 g a g |
  bes8 4 g8~8 8 8 8 | a a a a~a a8 4 | bes4 4 g8 8 4 |
}

melodyE = \relative {
  g'1 | r2 r4 r8 g8 |
}

melodyF = \relative {
  g'1~ | 4 r r2 |
}

melody = {
  \global
  R1*4 \section |
  \repeat volta 2 {
    \keepWithTag #'dash \melodyA
    \alternative { \melodyB \melodyC }
  }
  \repeat volta 2 {
    \melodyD
    \alternative { \melodyE \melodyF }
  }
  \bar "|."
}

melodySingle = {
  \global
  R1*4 \section |
  \keepWithTag #'v1 \melodyA \melodyB
  \keepWithTag #'v2 \melodyA \melodyC
    \repeat volta 2 {
    \melodyD
    \alternative { \melodyE \melodyF }
  }
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  Some kid’s born with a sil -- ver __ spoon, __
  I guess that I was born a \nom lit -- tle \yesm too soon; __
  Hard knocks,
  All I ev -- er knew was hard knocks;
  And I’m a -- tell -- in’ you, __
  I said you bet -- ter be -- ware, __
  ‘Cause I’ve had my share of hard knocks.

  I
  \repeat volta 2 {
    walked a mil -- lion miles, I bet, __
    Tired __ and hun -- gry and cold and wet; __
    I’ve heard that lone -- some __ whis -- tle blow, __
    From New York Cit -- y down to Mex -- i -- co. __
    Some kids born __ fan -- cy free, __
    No -- bod -- y nev -- er gave no -- thin’ to me,
    but hard knocks,
    All I ev -- er knew was hard knocks;
    And I’m a -- tell -- in’ you, __
    I said you bet -- ter be -- ware, __
    ’Cause I’ve had my share of hard
    \alternative {
      { knocks.  I }
      { knocks. __ 
}
    }
  }
}

wordsTwo = \lyricmode {
  Some kid’s born __ _ _ rich \nom as a \yesm king, __
  But I was born with -- out a dog -- gone \nom thing, but \yesm
}

wordsSingle = \lyricmode {
  Some kid’s born with a sil -- ver __ spoon, __
  I guess that I was born a lit -- tle too soon; __
  Hard knocks,
  All I ev -- er knew was hard knocks;
  And I’m a -- tell -- in’ you, __
  I said you bet -- ter be -- ware, __
  ‘Cause I’ve had my share of hard knocks.

  Some kid’s born __ _ _ rich as a king, __
  But I was born with -- out a dog -- gone thing, but
  Hard knocks,
  All I ev -- er knew was hard knocks;
  And I’m a -- tell -- in’ you, __
  I said you bet -- ter be -- ware, __
  ‘Cause I’ve had my share of hard knocks.

  I
  \repeat volta 2 {
    walked a mil -- lion miles, I bet, __
    Tired __ and hun -- gry and cold and wet; __
    I’ve heard that lone -- some __ whis -- tle blow, __
    From New York Cit -- y down to Mex -- i -- co. __
    Some kids born __ fan -- cy free, __
    No -- bod -- y nev -- er gave no -- thin’ to me,
    but hard knocks,
    All I ev -- er knew was hard knocks;
    And I’m a -- tell -- in’ you, __
    I said you bet -- ter be -- ware, __
    ’Cause I’ve had my share of hard
    \alternative {
      { knocks.  I }
      { knocks. __ }
    }
  }
}

midiWords = \lyricmode {
  "Some " "kid’s " "born " "with " "a " sil "ver "  "spoon, " 
  "\nI " "guess " "that " "I " "was " "born " "a " lit "tle " "too " "soon; " 
  "\nHard " "knocks, "
  "\nAll " "I " ev "er " "knew " "was " "hard " "knocks; "
  "\nAnd " "I’m " a tell "in’ " "you, " 
  "\nI " "said " "you " bet "ter " be "ware, " 
  "\n‘Cause " "I’ve " "had " "my " "share " "of " "hard " "knocks.\n"

  "\nSome " "kid’s " "born "  "" "" "rich " "as " "a " "king, " 
  "\nBut " "I " "was " "born " with "out " "a " dog "gone " "thing, " "but "
  "\nHard " "knocks, "
  "\nAll " "I " ev "er " "knew " "was " "hard " "knocks; "
  "\nAnd " "I’m " a tell "in’ " "you, " 
  "\nI " "said " "you " bet "ter " be "ware, " 
  "\n‘Cause " "I’ve " "had " "my " "share " "of " "hard " "knocks.\n"

  "\nI "
  \repeat volta 2 {
    "walked " "a " mil "lion " "miles, " "I " "bet, " 
    "\nTired "  "and " hun "gry " "and " "cold " "and " "wet; " 
    "\nI’ve " "heard " "that " lone "some "  whis "tle " "blow, " 
    "\nFrom " "New " "York " Cit "y " "down " "to " Mex i "co. " 
    "\nSome " "kids " "born "  fan "cy " "free, " 
    "\nNo" bod "y " nev "er " "gave " no "thin’ " "to " "me, "
    "\nbut " "hard " "knocks, "
    "\nAll " "I " ev "er " "knew " "was " "hard " "knocks; "
    "\nAnd " "I’m " a tell "in’ " "you, " 
    "\nI " "said " "you " bet "ter " be "ware, " 
    "\n’Cause " "I’ve " "had " "my " "share " "of " "hard "
    \alternative {
      { "knocks.\n"  "\nI " }
      { "knocks. "  }
    }
  }
}

pianoRHone = \relative {
  \global
  <c' fis a>8-> q q q-> q q q-> q | <bes e g>-> q q q-> q q q-> q |
  <b d g>8 bes'4 f8 g f d c | bes g bes c d d d d \section \break |
  \repeat volta 2 {
    bes'4 g g e8 d | g8 4 bes8~2 | r8 g g g b b c c |
    d8 8 4 g, bes | \vo g1 | bes8 8 8 8 g g g4 |
    g2 r8 g a g | \ov bes8 4 g8~8 8 8 8 | <c, fis a>8 8 8 8~8 8 4 |
    \vo bes'4 4 g8 8 4 | g1~ |
    \alternative {
      {g8 d d d d d d d |}
      {g2.\repeatTie r8 g | \section \break}
    }
  }
  \repeat volta 2 {
    e4 g g a | bes4 8 g~4 r | e8 e g4 8 8 4 |
    bes4 8 g~4 r8 g | e4 g g a8(g) | bes8 4 g8~4 r8 g |
    a4 4 8 8 8 b | fis4 d8 8~4 r | \ov bes' g g(e8 d) |
    g4 8 bes~4 r | g4 8 8 b b c4 | d8 8 4 g,8 8 bes4 | % 106a
    \vo g1 | bes8 8 8 8 g8 8 4 | 2 r8 g a g |
    \ov bes8 4 g8~8 8 8 8 | <c, fis a>8 8 8 8~8 8 4 | \vo bes'4 4 g8 8 4 |
    \alternative {
      {g1~ | 2. r8 g |}
      {g1~ | 4 r r2 |}
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  s1*4 |
  \repeat volta 2 {
    s1*3 |
    s1 <bes e>8-> q q q-> q q q-> q | q4 r r2 |
    <b d>8-> q q q-> q r r4 | s1*2 |
    <bes e>4 4 4 r | <b d>8-> q q q-> q q q-> q |
    \alternative {
      {q8 r r4 r2 |}
      {q2. r4 |}
    }
  }
  \repeat volta 2 {
    <c e>1~ | 1 | <b d>1~ | % 105b
    q1 | <c e>1~ | q |
    <cis g'>1 | c2. r4 | s1 |
    s1*3 | % 106a
    <bes e>8-> q q q-> q q q-> q | q4 r r2 | <b d>8-> q q q-> q r r4 |
    s1*2 | <bes e>4 4 4 r |
    \alternative {
      {<b d>8-> q q q-> q q q-> q | q2. r4 |}
      {<b d>8-> q q q-> q q q-> q | q4-> r r2 |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf s1*3 |
  \repeat volta 2 {
    s1-\markup{\dynamic mp - \dynamic mf} | s1*10 |
    \alternative { {s1} {s1} }
  }
  \repeat volta 2 {
    s1*18
    \alternative { {s1*2} {s1*2} }
  }
}

dynamicsPianoSingle = {
  \override DynamicTextSpanner.style = #'none
  s1\mf s1*3 |
  s1\mp | s1*11 |
  s1\mf | s1*11 |
  \repeat volta 2 {
    s1*18
    \alternative { {s1*2} {s1*2} }
  }
}

pianoLH = \relative {
  \global
  d,4. a'8~4 d | c,4. e8~4 g | 4. b8~4 d | g, r d'8 8 8 8 \section |
  \repeat volta 2 {
    <g, d' g>4 r r2 | q4 r r2 | q4 r r2 |
    g4 g a b | c4. e8~4 g | c,4. e8~4 g |
    g,4. b8~4 d | g,4. b8~4 d | d,4. a'8~4 d |
    <c, c'>4 4 4 r | g'4. b8~4 d |
    \alternative {
      {g,8 d' d d d d d d}
      {g,4 g a b |}
    }
  }
  \repeat volta 2 {
    c4 e g a | bes a g e | g, b d e |
    f4 e d b | c e g a | bes a g e |
    a,4 cis e cis | d c b a | <g d' g> r r2 |
    q4 r r2 | q4 r r2 | g4 g a b | % 106a
    c4. e8~4 g | c,4. e8~4 g | g,4. b8~4 d |
    g,4. b8~4 d | d,4. a'8~4 d | <c, c'>4 4 4 r |
    \alternative {
      {g'4. b8~4 d | g,4 4 a b |}
      {g4. b8~4 d | <g, g'>4 r r2 |}
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
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
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
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
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
          \new Dynamics \dynamicsPianoSingle
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
            \new Dynamics \TempoTrack
            \new Dynamics \dynamicsPianoSingle
            \new Voice \melodySingle
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
            \new Dynamics \dynamicsPianoSingle
            \new Voice \pianoLH
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
