\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Seeing Is Believing"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Bobby Gene West & Glen Spreen"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Bobby Gene West"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 4/4
  \partial 4.
}

TempoTrack = {
  \global
  \tempo Moderately 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "41a" s4. s1*3
  \textMark \markup\box "41b"     s1*4
  \textMark \markup\box "41c"     s1*4
  \textMark \markup\box "41d"     s1*4
  \textMark \markup\box "42a"     s1*3
  \repeat volta 2 {
    \textMark \markup\box "42b"     s1*3
    \textMark \markup\box "42c"     s1*3
    \textMark \markup\box "42d"     s1*3
    \textMark \markup\box "43a"     s1*3
    \textMark \markup\box "43b"     s1*3
    \alternative {
      { \textMark \markup\box "43c"     s1 }
      { s1 }
    }
  }
  \repeat volta 2 {
    s1
    \textMark \markup\box "43d"     s1*3
  }
}

ChordTrack = \chordmode {
  s4. s1 s a | d a e:7 a | d a2 s8 e4.:7 a1 s | d a e:7 a |
  d1 a2 s8 e4.:7 a1 |
  \repeat volta 2 {
    d1 a d | e d a2 fis:m | b1:7 e:7 a |
    d1 a e:7 | a d a2 s8 e4.:7 | % 43
    \alternative {
      { a1 }
      { a1 }
    }
  }
  \repeat volta 2 {
    fis2:m e:7 | a1 | fis2:m e:7 a1 |
  }
}

melody = \relative {
  \global
  r4. \section | R1 | r2 r4 e'8 fis \section | a8. 16~4 r cis8. 16 |
  b8 a~4 r e8. fis16 | a8. 16~2 8 b | gis(fis e4) r e16 fis8. | a4 2 cis8 8 |
  b8 a~2 e16 fis8. | a2~8 e fis16 a8. | 2. e16 fis8. a2 r8 e cis'8 8 |
  b8 a~4 r e8. fis16 | a8. 16~2 8 b | gis(fis e4) r e16 fis8. | a4 4~8 cis8 8 8 |
  b8(a) 2 e16 fis8. | a8. 16~4 r8 e fis16 a8. | 2. r8 cis \section | % 43a
  \repeat volta 2 {
    d8 8 8 8 8 8 8 8 | cis4~(8 b) a4 cis16 8. | d4 2 8 8 |
    e2. 8 8 | fis(e) d2 8 e | cis4~(8 b) a4 16 8. |
    b2~8 cis8 8 a | b2 r4 e,8 fis | a4 4~8. 16 cis8 8 |
    b8(a) 4~8. 16 e8 fis | a8. 16~4 r a8 b | gis(fis e4) r e8 fis | % 43a
    a8. 16~2 cis8 8 | b16 a8.~4 r e8 fis | a2~8 e fis16 a8.
    \alternative {
      { a2. r8 cis | }
      { a2. e8 fis | }
    }
  }
  \repeat volta 2 {
    a2^\markup\italic "Repeat and fade" ~8 e fis16 a8. |
    a2. e8 fis | a2~8 e d cis | a2. e'8 fis |
  }
}

words = \lyricmode {
  Ev -- ’ry time I __ see the sun rise __
  Or a moun -- tain __ stand so high, __
  Guess my see -- ing is be -- liev -- ing __
  I don’t need to ques -- tion why.
  When I see a might -- y o -- cean __
  As it rush -- es to the shore, __
  If I ev -- er __ had cause to doubt Him,
  I don’t doubt Him __ oh an -- y -- more.
  Oh
  \repeat volta 2 {
    see -- in’, see -- in’, see -- in’ is be -- liev -- in’
    and I see Him ev -- ’ry -- where.
    In the moun -- tain, in the val -- ley yes,
    I know my God is there.
    From the time I, __ I look a -- bove __ me __
    I see the stars that __ fill the sky. __
    How can there be __ an -- y ques -- tion, __
    On -- ly God __ can reach that 
    \alternative {
      { high. Oh }
      { high. On -- ly }
    }
  }
  \repeat volta 2 {
    God __ can reach that high,
    On -- ly God __ can reach that high.
    On -- ly
  }
}

midiWords = \lyricmode {
  "Ev" "’ry " "time " "I "  "see " "the " "sun " "rise " 
  "\nOr " "a " moun "tain "  "stand " "so " "high, " 
  "\nGuess " "my " see "ing " "is " be liev "ing " 
  "\nI " "don’t " "need " "to " ques "tion " "why. "
  "\nWhen " "I " "see " "a " might "y " o "cean " 
  "\nAs " "it " rush "es " "to " "the " "shore, " 
  "\nIf " "I " ev "er "  "had " "cause " "to " "doubt " "Him, "
  "\nI " "don’t " "doubt " "Him "  "oh " an y "more. "
  "\nOh "
  \repeat volta 2 {
    "see" "in’, " see "in’, " see "in’ " "is " be liev "in’ "
    "\nand " "I " "see " "Him " ev ’ry "where. "
    "\nIn " "the " moun "tain, " "in " "the " val "ley " "yes, "
    "\nI " "know " "my " "God " "is " "there. "
    "\nFrom " "the " "time " "I, "  "I " "look " a "bove "  "me " 
    "\nI " "see " "the " "stars " "that "  "fill " "the " "sky. " 
    "\nHow " "can " "there " "be "  an "y " ques "tion, " 
    "\nOn" "ly " "God "  "can " "reach " "that " 
    \alternative {
      { "high. " "Oh " }
      { "high. " On "ly " }
    }
  }
  \repeat volta 2 {
    "God "  "can " "reach " "that " "high, "
    "\nOn" "ly " "God "  "can " "reach " "that " "high. "
    "\nOn" "ly "
  }
}

pianoRHone = \relative {
  \global
  e'8 fis16 a8 fis16 \section |
  <cis e a>8. 16~4 r8 e fis16 a8 fis16 |
  <cis e a>4 <a cis fis>8 <gis b e>~4 e'8 fis \section |
  \vo a8. 16~4 r cis8. 16 |
  b8 a~4 r e8. fis16 | a8. 16~2 8 b | gis(fis e4) r e16 fis8. | a4 2 cis8 8 |
  b8 a~2 e16 fis8. | a2~8 e fis16 a8. | 2. e16 fis8. a2 r8 e cis'8 8 |
  b8 a~4 r e8. fis16 | a8. 16~2 8 b | gis(fis e4) r e16 fis8. | a4 4~8 cis8 8 8 |
  b8(a) 2 e16 fis8. | a8. 16~4 r8 e fis16 a8. | 2. r8 cis \section | % 43a
  \repeat volta 2 {
    d8 8 8 8 8 8 8 8 | cis4~(8 b) a4 cis16 8. | d4 2 8 8 |
    e2. 8 8 | fis(e) d2 8 e | cis4~(8 b) a4 16 8. |
    b2~8 cis8 8 a | \ov <d, gis b>2 r4 e8 fis | \vo a4 4~8. 16 cis8 8 |
    b8(a) 4~8. 16 e8 fis | a8. 16~4 r a8 b | gis(fis e4) r e8 fis | % 43a
    a8. 16~2 cis8 8 | b16 a8.~4 r e8 fis | a2~8 e fis16 a8.
    \alternative {
      { a2. r8 cis | }
      { a2. e8 fis | }
    }
  }
  \repeat volta 2 {
    a2~8 e fis16 a8. |
    a2. e8 fis | a2~8 e d cis | r8 fis-> e-> d-> cis4-> e8 fis |
  }
}

pianoRHtwo = \relative {
  \global \vt
  s4. \section | s1*2 \section | <cis' e>2 r4 <e a> |
  <d fis>2 r4 <a d> | <cis e>2. 4 | <b d>2 r4 <gis d'> | <cis e>2. <e a>4 |
  <d fis>2. <a d>4 | <cis e>2~8 e <b d>4 | <cis e>8-> fis-> e-> d-> cis4-> r | <cis e>4 4 r <e a> |
  <d fis>2 r4 <a d>4 | <cis e>2. 4 | <b d>2 r4 <gis d'> | <cis e>4 4~8 <e a>8 4 |
  <d fis>2. <a d>4 | <cis e>2 r4 <b d> | <cis e>8-> fis-> e-> d-> cis4-> r8 <e a> \section | % 42a
  \repeat volta 2 {
    <fis a>2 2 |
    <e a> <cis e>4 <e a> | <fis a>4 2 4 |
    <gis d'>2. 4 | <a d> <fis d>2 4 | <e a>2 <cis fis> |
    <dis fis>1 | s1 | <cis e>4 2 <e a>4 |
    <d fis>4 2 <a d>4 | <cis e>2 r4 q | <b d>2 r4 <gis d'> | % 43a
    <cis e>2. <e a>4 | <d fis>2 r4 <a d> | <cis e>2~8 e <b d>4 |
    \alternative {
      { <cis e>8-> fis-> e-> d-> cis4-> r8 <e a> | }
      { <cis e>8-> fis-> e-> d-> cis4-> r | }
    }
  }
  \repeat volta 2 {
    <cis fis>4 4 r8 e <b d>4 |
    <cis e>8-> fis-> e-> d-> cis4-> r | <cis fis>4 4 r8 gis4. | a2. r4 |
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\mf | s1*3 |
}

pianoLH = \relative {
  \global
  r8 r4 \section | e4. 8 e,2 | e'4. 8 e,4 r \section | a4. e8 a2 |
  a4. 8 2 | 4. e8 a2 | e4. b8 e2 | a4. e8 a2 |
  a4. 8 2 | 8 4 e8 a4 e | a8-> d-> cis-> b-> a4-> r | 4. e8 a2 |
  a4. 8 2 | 4. e8 a2 | e4. b8 e2 | a4. e8 a2 |
  a4. 8 2 | 4. e8 a4 e | a8-> d-> cis-> b-> a-> e-> a4-> \section | % 42a
  \repeat volta 2 {
    d,8 fis a b d b a fis | a cis e fis a fis e a, | d, fis a b d b a fis |
    e8 gis b d e d b gis | d fis a b d b a fis | a cis e cis fis, cis' fis cis |
    b8 dis fis a b a fis b, | e, gis b e e,4 r | a4. e8 a2 |
    a4. 8 2 | 4. e8 a2 | e4. b8 e2 | % 43a
    a4. e8 a2 | 4. 8 2 | 8 4 e8 a4 e |
    \alternative {
      { a8-> d-> cis-> b-> a-> e-> a4-> | }
      { a8-> d-> cis-> b-> a4-> r | }
    }
  }
  \repeat volta 2 {
    fis4. 8 e2 |
    a8-> d-> cis-> b-> a4-> r | fis4. 8 e2 | a8-> d-> cis-> b-> a4-> r |
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
%      <<
%        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
%      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
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
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
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
            \new Dynamics \dynamicsPiano
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
