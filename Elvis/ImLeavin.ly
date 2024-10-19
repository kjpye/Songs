\version "2.25.20"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I’m Leavin’"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Michael Jarrett & Sonny Charles"
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
  \time 4/4
  \partial 4
}

TempoTrack = {
  \global
  \tempo "Moderately, with a beat" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "22a" s4
  \repeat volta 2 {
    s1*4
    \textMark \markup\box "22b" s1*4
  }
  \repeat volta 2 {
    \textMark \markup\box "22c" s1*4
    \textMark \markup\box "22d" s1*4
    \textMark \markup\box "23a" s1*4
    \textMark \markup\box "23b" s1
    \alternative {
      { s1*2 }
      { s1 }
    }
  }
  s1
  \repeat volta 2 {
    \textMark \markup\box "23c" s1*4
    \textMark \markup\box "23d" s1*4
    \textMark \markup\box "24a" s1*4
    \textMark \markup\box "24b" s1*4
    \textMark \markup\box "24c" s1*4
    \textMark \markup\box "24d" s1*4
    \textMark \markup\box "24e" s1*4
  }
}

ChordTrack = \chordmode {
  \partial 4
  s4 |
  \repeat volta 2 {
    d1 | s | s4 a2.:m7 | s1 |
    g1:m | s | s4 d2. | s1 |
  }
  \repeat volta 2 {
    d1 | s | d:maj7 | d:7 |
    g1 | s | g:m | s |
    d1 | s | e4.:m fis:m g4 | s8 a2.. | % 23a
    s2 a:7 |
    \alternative {
      { d1 | s | }
      { d1 | }
    }
  }
  s1 |
  \repeat volta 2 {
    a1:7 | s1*3 |
    s1*4 |
    g1:m | s | d:maj7 | s | % 24a
    e4.:m fis:m g4 | a1 | s | e4.:m fis:m g4 |
    s8 a2.. | s2. a4:7 | s1 | s |
    d1 | s | s4 a2.:m7 | s1 |
    g1:m | s | s4 d2. | s1 |
  }
}

melodyA = \relative {
  r4 a'8 8 4 8 8~ | 8 4 8 4 8 8~ | 8 g8 4 2 | R1 |
  r4 bes8 8 4 8 8~ | 8 4 8 4 8 8~ | 8 a8 4 2 | R1 |
}

melodyB = \relative {
  r2 fis'8 g a a~( | 16 g fis8~2.) | r4 r8 a8 4 8 d~ | 4 8 8~4. 8 |
  bes16(a g8) 2.~ | 1 | r4 r8 g8 8 a4 bes8~ |
  \tag #'dash {bes8 <<{\vo bes4 a8} \new Voice {\vt \tiny bes4.}>> \normalsize \ov a8(g4) 8 |}
  \tag #'v1 {bes8 bes4 a8 a8(g4) 8 |}
  \tag #'v2 {bes8 bes4.   a8(g4) 8 |}
  \tag #'dash {\slurDashed g4(fis8) \slurSolid 8~(16 e d4.~ | 1) | e4.(g8~4 g~ | 8 a4.~2~ |} % 23a
  \tag #'v1   {            g4(fis8)            8~(16 e d4.~ | 1) | e4.(g8~4 g~ | 8 a4.~2~ |}
  \tag #'v2   {            g4 fis8             8~(16 e d4.~ | 1) | e4.(g8~4 g~ | 8 a4.~2~ |}
  \tag #'dash { a4) r <<{\vo cis,8 d e e~} \new Voice {\vt r4 e8 8~}>> \ov |}
  \tag #'v1   { a4) r        cis,8 d e e~                                  |}
  \tag #'v2   { a4) r                                      r4 e8 8~        |}
}

melodyC = \relative { e'8 d4.~2~ | 2. r4 | }
melodyD = \relative { e'8 d4.~2~ | }

melodyE = \relative { d'2.\repeatTie r4 | }

melodyF = \relative {
  r2 c''4 d8 c~ | c a4 g8~4 8 8~ | 4 8 8~8 4 8~ | 8 a4. r2 |
  r2 cis8 d4 cis8~ | 8 a4 g8~8 4 8~ | 8 4 8~8 4 8~ | 8 a4. r2 |
  r2 d8 8 e4 | f4 e8 d~4 r | r2 e8 8 d a~ | 2. r4 | % 24a
  e4.(fis8~4 g4~ | 8 a4.~2~ | 2.) r4 | e4.(fis8~4 g~ |
  g8 a4.~4 fis'4~ | 2. e4) | e(d8) d~2~ | 2. r4 \section |
  r4 a8 8 4 8 8~ | 8 4 8 4 8 8~ | 8 g8 4 2 | R1 |
  r4 bes8 8 4 8 8~ | 8 4 8 4 8 8~ | 8 a8 4 2 | R1-\markup{\halign #RIGHT \italic "D. C. and Fade"} |
}

melody = {
  \global
  r4
  \repeat volta 2 \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative \melodyC \melodyD
  }
  \melodyE \section \break
  \repeat volta 2 \melodyF
}

melodySingle = {
  \global
  r4
  \repeat volta 2 \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyD
  \melodyE \section \break
  \repeat volta 2 \melodyF
  \bar "|."
}

wordsOne = \lyricmode {
  \repeat volta 2 {
    La, la, la, la, la, __ la, la, la, la, la, __ la, la, la.
    La, la, la, la, la, __ la, la, la, la, la, __ la, la, la.
  }
  \set stanza = "1."
  How will I know __ if I ar -- rive __ in time __ to know __ you? __
  If you had tak -- en the time __ to show __ me __
  I would -- n’t be lone -- ly. __
  \skip 1 \skip 1
  \repeat volta 2 {
    Tried so hard __ each time, __ each time __ I just __ can’t make __ it.
    Feel -- in’ fast __ vi -- bra -- tions, and __ I just __ can’t take __ it.
    Liv -- in’ from day to day, __ chas -- in’ a dream. __
    I’m, __ I’m __ leav -- in’. __
    La, la, la, la, la, __ la, la, la, la, la, __ la, la, la.
    La, la, la, la, la, __ la, la, la, la, la, __ la, la, la.
  }
}

wordsTwo = \lyricmode {
  \repeat volta 2 {
    \repeat unfold 26 \skip 1
  }
  \set stanza = "2."
  Where will I go? __
  Who will I have __ to lie __ be -- side __ me, __
  to ease this emp -- ti -- \skip 1 ness __ in \nom in -- side \yesm me? __
  I’m __ "" "" so lone -- "" "" ly. __
}

wordsSingle = \lyricmode {
  \repeat volta 2 {
    La, la, la, la, la, __ la, la, la, la, la, __ la, la, la.
    La, la, la, la, la, __ la, la, la, la, la, __ la, la, la.
  }
  \set stanza = "1."
  How will I know __ if I ar -- rive __ in time __ to know __ you? __
  If you had tak -- en the time __ to show __ me __
  I would -- n’t be lone -- ly. __

  \set stanza = "2."
  Where will I go? __
  Who will I have __ to lie __ be -- side __ me, __
  to ease this emp -- ti -- ness __ in in -- side me? __
  I’m __ so lone -- ly. __
  \repeat volta 2 {
    Tried so hard __ each time, __ each time __ I just __ can’t make __ it.
    Feel -- in’ fast __ vi -- bra -- tions, and __ I just __ can’t take __ it.
    Liv -- in’ from day to day, __ chas -- in’ a dream. __
    I’m, __ I’m __ leav -- in’. __
    La, la, la, la, la, __ la, la, la, la, la, __ la, la, la.
    La, la, la, la, la, __ la, la, la, la, la, __ la, la, la.
  }
}

midiWords = \lyricmode {
  \repeat volta 2 {
    "La, " "la, " "la, " "la, " "la, "  "la, " "la, " "la, " "la, " "la, "  "la, " "la, " "la. "
    "\nLa, " "la, " "la, " "la, " "la, "  "la, " "la, " "la, " "la, " "la, "  "la, " "la, " "la.\n"
  }
  \set stanza = "1."
  "\nHow " "will " "I " "know "  "if " "I " ar "rive "  "in " "time "  "to " "know "  "you? " 
  "\nIf " "you " "had " tak "en " "the " "time "  "to " "show "  "me " 
  "\nI " would "n’t " "be " lone "ly.\n" 

  \set stanza = "2."
  "\nWhere " "will " "I " "go? " 
  "\nWho " "will " "I " "have "  "to " "lie "  be "side "  "me, " 
  "\nto " "ease " "this " emp ti "ness "  "in " in "side " "me? " 
  "\nI’m "  "so " lone "ly.\n" 
  \repeat volta 2 {
    "\nTried " "so " "hard "  "each " "time, "  "each " "time "  "I " "just "  "can’t " "make "  "it. "
    "\nFeel" "in’ " "fast "  vi bra "tions, " "and "  "I " "just "  "can’t " "take "  "it. "
    "\nLiv" "in’ " "from " "day " "to " "day, "  chas "in’ " "a " "dream. " 
    "\nI’m, "  "I’m "  leav "in’. " 
    "\nLa, " "la, " "la, " "la, " "la, "  "la, " "la, " "la, " "la, " "la, "  "la, " "la, " "la. "
    "\nLa, " "la, " "la, " "la, " "la, "  "la, " "la, " "la, " "la, " "la, "  "la, " "la, " "la.\n"
  }
}

pianoRHone = \relative {
  \global
  r4 |
  \repeat volta 2 {
    r4 <d' fis a>8 8 4 8 8~ | 8 4 8 4 8 8~ | 8 <c e g>8 4 2 | R1 |
    r4 <d g bes>8 8 4 8 8~ | 8 4 8 4 8 8~ | 8 <d fis a>8 4 2 | R1 | \break
  }
  \repeat volta 2 {
    \vo r2 fis8 g a a~( | 16 g fis8~2.) | r4 r8 a8 4 8 d~ | 4 8 8~4. 8 |
    bes16(a g8) \ov <bes, d g>2.~ | 1 | r4 r8 <bes d g>8 8 a'4 \vo bes8~ | 8 4 a8 a(g4) 8 |
    g4(fis8) 8~(16 e d4.~ | 1) | \ov <g, b e>4.(<a c g>8~4 <b d g>~ | 8 <c e a>4.~2~ | % 23a
    q4) \vo r c8 d e e~ |
    \alternative {
      { e8 \ov <fis, a d>4.~2~ | 2. r4 | }
      { q8\repeatTie <fis a d>4.~2~ | }
    }
  }
  q2. r4 | \section \break
  \repeat volta 2 {
    r2 <e g c>4 d'8 q~ | q <d fis a>4 <c e g>8~4 8 8~ | 4 8 8~8 4 8~ | 8 <c e g a>4. r2 |
    r2 <e g cis>8 d'4 q8~ | 8 <d, fis a>4 <cis e g>8~8 4 8~ | 8 4 8~8 4 8~ | 8 <cis e g a>4. r2 |
    r2 <g' bes d>8 d'8 <g, bes e>4 | <bes d f>4 e8 <g, bes d>~4 r | r2 <fis cis' e>8 e'8 d <cis, fis a>~ | 2. r4 | % 24a
    <g b e>4.(<a cis fis>8~4 <b d g>4~ | 8 <cis e a>4.~2~ | 2.) r4 | <g b e>4.(<a cis fis>8~4 <b d g>~ |
    q8 <cis e a>4.~4 <a' cis fis>4~ | 2. <g cis e>4) | \vo e'(d8) d~2~ | 2. r4 \section |
    \ov r4 <d, fis a>8 8 4 8 8~ | 8 4 8 4 8 8~ | 8 <c e g>8 4 2 | R1 |
    r4 <d g bes>8 8 4 8 8~ | 8 4 8 4 8 8~ | 8 <d fis a>8 4 2 | R1 |
  }
}

pianoRHtwo = \relative {
  \global \vt
  s4 |
  \repeat volta 2 { s1*8 | }
  \repeat volta 2 {
    r2 d'~ | 1 | cis2~4. <c fis>8~ | 1 |
    s1 | s | s2.. <d g>8~ | 2 <bes d> |
    <a d>2~8 <fis a> 4.~ | 1 | s | s | % 23a
    s2 g4. <fis a>8~ |
    \alternative {
      { q8 s2.. | s1 | }
      { s1 | }
    }
  }
  s1 \section \break |
  \repeat volta 2 {
    s1*18 | <fis' a>4. 8~2~ | 2. r4 |
    s1*8 |
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mp |
  \repeat volta 2 { s1*8 }
  \repeat volta 2 { s1*13 \alternative { { s1*2 } { s1 } } }
  s2. s4\< |
  \repeat volta 2 { s1\mf | s1*19 | s1\mp | s1*7 | }
}

pianoLH = \relative {
  \global
  a,,8 b |
  \repeat volta 2 {
    d1~ | 2~ 4. 8 | 1 | c'4.-> b8->~8 a4.-> |
    d,1~ | d2~4. 8 | 2~4. fis'8~( | 8 e d b d b a fis) |
  }
  \repeat volta 2 {
    d4. 8 2 | 4. 8 2 | 4. 8 2 | 4. 8 2 |
    g4. 8 2 | 4. 8 2 | 4. 8 2 | 4. 8 2 |
    d4. 8 2 | 4. 8 2 | e4.(fis8~4 g~ | 8 a4.~4.) e8 | % 23a
    a4. 8~2 |
    \alternative {
      { d,4. 8 4. a8 | d4. 8~4 a8 b | }
      { d4. 8 4. a8 | }
    }
  }
  d4. 8~4 e8 fis \section |
  \repeat volta 2 {
    a4. e8 a4. e8 | a8 4 8~8 e a e | a4. e8 a4. e8 | a8 4 8~8 e a e |
    a4. e8 a4. e8 | a8 4 8~8 e a e | a4. e8 a4. e8 | a8 4 8 a' g e cis |
    g4. 8 4. 8 | 4. 8 8 a bes c | d4. 8 4. 8 | fis8 e4 d8 b a fis d | % 24a
    e4.(fis8~4 g~ | 8 a4.~4.) e8 | a4. 8~8 e a4 | e4.(fis8~4 g4~ |
    g8 a4.~4.) e8 | a4. 8~8 e a4 | d,4. 8 4. a8 | d4. 8 4 a8 b |
    d4. 8 4. 8 | 4. 8 4. 8 | 1 | c'4.-> 8-> ~8 a4.-> |
    d,4. 8 4. 8 | 4. 8 4. 8 | 4. 8 4. fis'8~( | 8 e d b d b a fis) |
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
        \new FretBoards \ChordTrack
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
            \new Dynamics \RehearsalTrack
            \new Dynamics \dynamicsPiano
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
            \new Dynamics \dynamicsPiano
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
