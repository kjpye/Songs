\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Blue Suede Shoes"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Carl Lee Perkins"
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
  \key f \major
  \time 2/2
}

TempoTrack = {
  \global
  \tempo "Bright tempo (not too fast)" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "4a" s1*3 s2 s8
  \textMark \markup\box "4b" s4. s1*3 |
  \textMark \markup\box "4c" s1*5 |
  \textMark \markup\box "4d" s1*4 |
  \repeat volta 2 {
    \textMark \markup\box "5a" s1*4 |
    \textMark \markup\box "5b" s1*4 |
    \textMark \markup\box "5c" s1*5 |
    \textMark \markup\box "5d" s1 |
    \alternative { {s1*2} {s1*2} }
  }
}

ChordTrack = \chordmode {
  s1*4 | r2. f4 | r2. f4 | r1*2 | bes1:7 | s | f | s | c:7 | c:7sus4 | f2 bes:7 | f1 |
  \repeat volta 2 {
    r2. f4 | r2. f4 | r1 | s2. f4 | r1 | s2. f4 | r1 | s | bes:7 | s | f | s | c:7 | c:7sus4 |
    \alternative { {f2 bes:7 | f r} {f2 bes:7 | f1} }
  }
}

melodyA = \relative {
  R1*3 | r2 r8 \break c' d4 | f4 8 8 a a r4 | f4 8 8 a4 r | f8 8 4 a8 8 c4 |
  ees4 c a f | aes4 4 r2 | \tuplet 3/2 {c4 c c} bes f | 1 | r2 r4 c'8 8 |
  c8 8 8 8~8 c,8 4 | d8 d f4 a f8 8~ | 1 | r2 r8 c d c |
}

melodyB = \relative {
  f'4 8 a~4 r | % 5a
  \tag #'dash {\slurDashed f8~8 \slurSolid 8 a~4 r |}
  \tag #'v1   {            f8 8            8 a~4 r |}
  \tag #'v2   {            f4              8 a~4 r |}
  \tag #'dash {\slurDashed f8(8) 4 a8(8) f(8) \slurSolid |}
  \tag #'v1   {            f8 8  4 a     f4              |}
  \tag #'v2   {            f4    4 a8 8  f f             |}
  \tag #'dash {\slurDashed f8(8) \slurSolid 8 d~4 r |}
  \tag #'v1   {            f8 8             8 d~4 r |}
  \tag #'v2   {            f4               8 d~4 r |}
  f4 8 8 a4 d,8 c | f4 8 a~4 r8 d, | f4 4 a8 8 c4 | ees8 c bes a~4 r |
  aes4 4 r2 | \tuplet 3/2 {c4 4 bes} aes f | 1 | r2 r4 c'8 8 | 8 8 8 8~8 c,8 4 |
  d8 8 f4 a f|
}

melodyC = \relative {f'1~ | 2 r |}
melodyD = \relative {f'1~ | 2. r4 |}

melody = {
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative { \melodyC \melodyD }
  }
}
      
melodySingle = {
  \melodyA
  \keepWithTag #'v1 \melodyB
  \melodyC
  \keepWithTag #'v2 \melodyB
  \melodyD
}
      
dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  Well, its one for the mon -- ey, two for the show,
  three to get read -- y, now go, cat, go!
  But don’t you step on my BLUE SUEDE SHOES.
  You can do an -- y -- thing __ but lay off of my BLUE SUEDE SHOES. __
  Well, you can knock me down, __ \nom step \yesm in my face, __
  \nom slan -- der \yesm my name all \nom o -- ver \yesm the place; __
  Do an -- y -- thing that you want to do, __
  but uh -- uh, hon -- ey, lay off of my shoes __
  Don’t you step on my BLUE SUEDE SHOES.
  You can do an -- y -- thing __ but lay off of my BLUE SUEDE SHOES. __
}

wordsTwo = \lyricmode {
  \repeat unfold 46 \skip 1
  Burn my house, __ steal my car, __
  drink __ my \nom ci -- der from my \yesm old- fruit jar; __
  "" \repeat unfold 40 \skip 1
  SHOES. __
}

wordsSingle = \lyricmode {
  Well, its one for the mon -- ey, two for the show,
  three to get read -- y, now go, cat, go!
  But don’t you step on my BLUE SUEDE SHOES.
  You can do an -- y -- thing __ but lay off of my BLUE SUEDE SHOES. __
  Well, you can knock me down, __ step in my face, __
  slan -- der my name all o -- ver the place; __
  Do an -- y -- thing that you want to do, __
  but uh -- uh, hon -- ey, lay off of my shoes __
  Don’t you step on my BLUE SUEDE SHOES.
  You can do an -- y -- thing __ but lay off of my BLUE SUEDE SHOES. __

  Burn my house, __ steal my car, __
  drink __ my ci -- der from my old- fruit jar; __
  Do an -- y -- thing that you want to do, __
  but uh -- uh, hon -- ey, lay off of my shoes __
  Don’t you step on my BLUE SUEDE SHOES.
  You can do an -- y -- thing __ but lay off of my BLUE SUEDE SHOES. __
}

midiWords = \lyricmode {
  "Well, " "its " "one " "for " "the " mon "ey, " "two " "for " "the " "show, "
  "\nthree " "to " "get " read "y, " "now " "go, " "cat, " "go! "
  "\nBut " "don’t " "you " "step " "on " "my " "BLUE " "SUEDE " "SHOES. "
  "\nYou " "can " "do " an y "thing "  "but " "lay " "off " "of " "my " "BLUE " "SUEDE " "SHOES. " 
  "\nWell, " "you " "can " "knock " "me " "down, "  "step " "in " "my " "face, " 
  "\nslan" "der " "my " "name " "all " o "ver " "the " "place; " 
  "\nDo " an y "thing " "that " "you " "want " "to " "do, " 
  "\nbut " uh "uh, " hon "ey, " "lay " "off " "of " "my " "shoes " 
  "\nDon’t " "you " "step " "on " "my " "BLUE " "SUEDE " "SHOES. "
  "\nYou " "can " "do " an y "thing "  "but " "lay " "off " "of " "my " "BLUE " "SUEDE " "SHOES. " 

  "\nBurn " "my " "house, "  "steal " "my " "car, " 
  "\ndrink "  "my " ci "der " "from " "my " old "fruit " "jar; " 
  "\nDo " an y "thing " "that " "you " "want " "to " "do, " 
  "\nbut " uh "uh, " hon "ey, " "lay " "off " "of " "my " "shoes " 
  "\nDon’t " "you " "step " "on " "my " "BLUE " "SUEDE " "SHOES. "
  "\nYou " "can " "do " an y "thing "  "but " "lay " "off " "of " "my " "BLUE " "SUEDE " "SHOES. " 
}

pianoRHone = \relative {
  \global \vo
  c''8 8 8 8~8 c,8 4 | d4 f a f | 1~ | 2 r8 \break
  c8 d4 | f4 8 8 a a r4 | f4 8 8 a4 r | \ov f8 8 4 a8 8 c4 |
  ees4 c a f | \vo aes4 2. | % 4c
  \tuplet 3/2 {<d, aes' c>4 4 4} <c d aes'> <aes d f> | f'1~ | 2. c'8 8 |
  c8 c c c~c c,8 4 | d8 8 f4 a f8 8~ | 1~ | \ov <a, c f>2 r8 c d c | % 4d
  \repeat volta 2 {
    \vo f4 8 a~4 r | f8 f f a~4 r | f8 8 4 a f | 8 8 8 d~4 r | % 5a
    f4 8 8 a4 d,8 c | f4 8 a~4 r8 d, | \ov f4 f a8 8 c4 |ees8 c bes a~2 |
    \vo aes4 2. \ov | % 5c
    \tuplet 3/2 {<d, aes' c>4 4 <d aes' bes>} <c d aes'> <aes d f> |
    \vo f'1~2. c'8 8 | c c c c~c c,8 4 |
    d8 8 f4 a f |
    \alternative {
      {f1~ | 2 r8 c d4 |}
      {\ov <a c f>2 <f' aes d>4 q | <f a c f>4. 8-> ~4 r |}
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  r4 <e' bes'> r <e, bes'> | r4 <bes' d> <bes d f> <bes d> |
  <a c>2 <aes d>4 4 | <a c>2 r8
  r8 r4 | r2 r4 a-> | r2 r4 a-> | s1 | % 4b
  s1 | r4 <aes d f> r q | s1 | r4 <a c> r q | r q r <c f a> |
  r4 <e bes'> r <e, bes'> | r <bes' d> <bes d f> <bes d>8 <a c>~ | 2 <aes d>4 4 | s1 |
  \repeat volta 2 {
    r2 r4 a-> | r2 r4 a-> | R1 | r2 r4 a-> | % 5a
    R1 | r2 r4 a-> | s1*2 |
    r4 <aes d f> r q | s1 | r4 <a c> r q | r q r <c f a> | r4 <e bes'> r <e, bes'> |
    r4 <bes' d> <bes d f> <bes d> |
    \alternative {
      {<a c>2 <aes d>4 4 | <a c>2 r |}
      {s1*2 |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s1*2 | s2 s8 s4.\mf | s1*3 |
}

pianoLH = \relative {
  \global
  g,4 r <c, c'> r | g' r c c, | f c' bes2 | f'4 c8 f,~8
  r8 r4 | r2 r4 <f c'>4-> | r2 r4 q-> | R1 |
  r2 r8 f g a | bes4 r <f f'> r | bes r q bes | f r <c c'> r | f r d' c |
  g4 r <c, c'> r | g' r c c, | f c' bes2 | f'4 c8 f,~8 r r4 |
  \repeat volta 2 {
    r2 r4 <f c'>4-> | r2 r4 q-> | R1 | r2 r4 q-> | % 5a
    R1 | r2 r4 q-> | R1 | r2 r8 f g a |
    bes4 r <f f'> r | bes r q bes | f r <c c'>2 | f4 r d' c | g r <c, c'> r |
    g'4 r c c, |
    \alternative {
      {f4 c' bes2 | f'4 c8 f,~8 r r4 |}
      {f4 c' bes2 | f'4 c8 f,->~4 r |}
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
            \new Dynamics \dynamicsMelody
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
