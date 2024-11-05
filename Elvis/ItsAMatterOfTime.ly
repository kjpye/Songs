\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "It’s a Matter of Time"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Clive Westlake"
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
  \partial 2.
}

TempoTrack = {
  \global
  \tempo Moderately 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "32a" s2. s1*3 s4
  \textMark \markup\box "32b" s2. s1*3
  \textMark \markup\box "32c"     s1*4 s2.
  \textMark \markup\box "32d" s4
  \repeat volta 2 {
    s1*3
    \textMark \markup\box "33a" s1*4
    \textMark \markup\box "33b" s1*4
    \textMark \markup\box "33c" s1*4 s4
    \textMark \markup\box "33d" s2. s1*3
    \textMark \markup\box "34a" s1*4
    \textMark \markup\box "34b" s1*4
    \textMark \markup\box "34c" s1*3
    \alternative {
      { \textMark \markup\box "34d" s1*2 }
      { s1*2 }
    }
  }
}

ChordTrack = \chordmode {
  s2. | s1*3 | s4
  g4 a:m7 g | c1 | s | g |
  s1 | d2:7 a:m7 | d1:7 | g2 c | g2.
  s4
  \repeat volta 2 {
    g1 | c | g |
    s1*3 | d1 | % 33a
    s1 | g | d | c |
    s1*2 | c2 d:7 | g c | g4
    g4 a:m7 g | c1 | s | g |
    s1 | d2:7 a:m7 | d1:78 | g2 a:m7 | %^ 34a
    g2 a4:m7 g | c1 | s | g |
    s1 | d | c2 d:7 |
    \alternative {
      { g2 c | g1 | }
      { g2 c | g1 | }
    }
  }
}

melodyA = \relative {
  r2. \section | R1*3 | r4 \section \break
  b'8 8 8 a g e~ | 1~ | 4 g8 8~8 8 8 e~ | 8 d4.~2~ |
  d4 r8 d b' a b c~ | 1~ | 4. d,8 \tuplet 3/2 {c'4 b a} | g1~ | g2. \section \break
  b,8 c
}

melodyB = \relative {
  \tag #'dash {\slurDashed d'8(8 4 8) \slurSolid g g8 a~ |}
  \tag #'v1   {            d,2~8                 g g8 a~ |}
  \tag #'v2   {            d,8 8 4~4               g8 a~ |}
  a4 g~8 c, e e~ | 8 d4.~2~ |
  d2 r8 g a b~ | 4 8 8~4. 8 | d4. 8 c(b) b b~( | b a4.~2~ | % 33a
  a2) r8 b, c d~ | 4. 8 4. g8 | a4 g2 c,8 e | 4 d2.~ |
  d2 r8 g a b~ | 4 8 8~4 4 |
  \tag #'dash {\slurDashed c8(a a a) \slurSolid g8 fis4 g8~ |}
  \tag #'v1   {            c8 a4.               g8 fis4 g8~ |}
  \tag #'v2   {            c8(a) 8 8            g8 fis4 g8~ |}
  g1~ | 4 \section \break
  b8^\markup\bold Chorus 8 8 a g e~ \section | 1~ | 4 g8 8~8 8 8 e~ | 8 d4.~2~ |
  d4 r8 d b' a b c~ | 1~ | 4. d,8 \tuplet 3/2 {c'4 b a} | g1~ | % 34a
  g8 r b b b a g e~ | 1~ | 4 g8 8 a g4 a8 | b4. 8~2~ |
  b4 4 8 a4 g8 | a1~ | 4 8 b \tuplet 3/2 {c4 b a} |
}

melodyC = \relative { g'1~ | 4 r r8 b, b c | }
melodyD = \relative { g'1~ | 2. r4 | }

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative \melodyC \melodyD
  }
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyD
  \bar "|."
}

wordsOne = \lyricmode {
  It’s A Mat -- ter of Time __ be -- fore __ I go back __ there, __
  A mat -- ter of time __ be -- fore I go home. __
  I have been __ ’way from her/him __ now __ for a long __ time __
  An’ I’ve lived __ a life __ I thought that it __ should be. __
  It’s a long, __ long way from now to may -- be some -- time __
  And the wait -- ing round __ is \nom real -- ly "" "" \yesm kill -- in’ me. __
  It’s A Mat -- ter Of Time __ be -- fore I go back there, __
  A mat -- ter of time __ be -- fore I go home. __
  It’s a long way I know __ and the go -- ing ain’t eas -- y __
  "She’ll/He’ll" see me a -- gain __
  It’s A Mat -- ter Of Time. __
  I think I’ll
}

wordsTwo = \lyricmode {
  \repeat unfold 24 \skip 1
  \nom take a train \yesm "" "" right ear -- ly in the morn -- ing __
  Just to see __ how far __ I’ll get a -- long __ the way. __
  But the trains __ don’t run too of -- ten on -- ly some -- time __
  So I’d guess __ I’d bet -- ter \nom wait "" for an -- oth -- er \yesm day. __
  "" \repeat unfold 48 \skip 1
  Time. __
}

wordsSingle = \lyricmode {
  It’s A Mat -- ter of Time __ be -- fore __ I go back __ there, __
  A mat -- ter of time __ be -- fore I go home. __
  I have been __ ’way from her/him __ now __ for a long __ time __
  An’ I’ve lived __ a life __ I thought that it __ should be. __
  It’s a long, __ long way from now to may -- be some -- time __
  And the wait -- ing round __ is real -- ly kill -- in’ me. __
  It’s A Mat -- ter Of Time __ be -- fore I go back there, __
  A mat -- ter of time __ be -- fore I go home. __
  It’s a long way I know __ and the go -- ing ain’t eas -- y __
  "She’ll/He’ll" see me a -- gain __
  It’s A Mat -- ter Of Time. __

  \set stanza = "2."
  I think I’ll take a train right ear -- ly in the morn -- ing __
  Just to see __ how far __ I’ll get a -- long __ the way. __
  But the trains __ don’t run too of -- ten on -- ly some -- time __
  So I’d guess __ I’d bet -- ter wait for an -- oth -- er day. __
  It’s A Mat -- ter Of Time __ be -- fore I go back there, __
  A mat -- ter of time __ be -- fore I go home. __
  It’s a long way I know __ and the go -- ing ain’t eas -- y __
  "She’ll/He’ll" see me a -- gain __
  It’s A Mat -- ter Of Time. __
}

midiWords = \lyricmode {
  "It’s " "A " Mat "ter " "of " "Time "  be "fore "  "I " "go " "back "  "there, " 
  "\nA " mat "ter " "of " "time "  be "fore " "I " "go " "home. " 
  "\nI " "have " "been "  "’way " "from " "her(him) "  "now "  "for " "a " "long "  "time " 
  "\nAn’ " "I’ve " "lived "  "a " "life "  "I " "thought " "that " "it "  "should " "be. " 
  "\nIt’s " "a " "long, "  "long " "way " "from " "now " "to " may "be " some "time " 
  "\nAnd " "the " wait "ing " "round "  "is " real "ly " kill "in’ " "me. " 
  "\nIt’s " "A " Mat "ter " "Of " "Time "  be "fore " "I " "go " "back " "there, " 
  "\nA " mat "ter " "of " "time "  be "fore " "I " "go " "home. " 
  "\nIt’s " "a " "long " "way " "I " "know "  "and " "the " go "ing " "ain’t " eas "y " 
  "\n(S)he’ll " "see " "me " a "gain " 
  "\nIt’s " "A " Mat "ter " "Of " "Time.\n" 

  \set stanza = "2."
  "\nI " "think " "I’ll " "take " "a " "train " "right " ear "ly " "in " "the " morn "ing " 
  "\nJust " "to " "see "  "how " "far "  "I’ll " "get " a "long "  "the " "way. " 
  "\nBut " "the " "trains "  "don’t " "run " "too " of "ten " on "ly " some "time " 
  "\nSo " "I’d " "guess "  "I’d " bet "ter " "wait " "for " an oth "er " "day. " 
  "\nIt’s " "A " Mat "ter " "Of " "Time "  be "fore " "I " "go " "back " "there, " 
  "\nA " mat "ter " "of " "time "  be "fore " "I " "go " "home. " 
  "\nIt’s " "a " "long " "way " "I " "know "  "and " "the " go "ing " "ain’t " eas "y " 
  "\n(S)he’ll " "see " "me " a "gain " 
  "\nIt’s " "A " Mat "ter " "Of " "Time. " 
}

pianoRHone = \relative {
  \global
  <b d b'>4 <a d a'> <b d g> \section |
  \vo fis'4. 8 g4. 8 | fis4. 8 g4 4 | 2 \tuplet 3/2 {c8 b g} \tuplet 3/2 {c b g} | b4 \section
  b8 8 8 a g e~ | 1~ | 4 g8 8~8 8 8 e~ | 8 d4.~2~ |
  d4 r8 d b' a b c~ | 1~ | 4. d,8 \tuplet 3/2 {c'4 b a} | g1~ | g2. \section \break
  b,8 c
  \repeat volta 2 {
    d2~8 g g a~ | a4 g~8 c, e e~ | 8 d4.~2~ |
    d2 r8 g a b~ | 4 8 8~4. 8 | d4. 8 c(b) b b~( | b a4.~2~ | % 33a
    a2) r8 b, c d~ | 4. 8 4. g8 | a4 g2 c,8 e | 4 d2.~ |
    d2 r8 g a b~ | 4 8 8~4 4 | c8 a4. g8 fis4 g8~ | 1~ | 4 \section \break
    b8^\markup\bold Chorus 8 8 a g e~ \section | 1~ | 4 g8 8~8 8 8 e~ | 8 d4.~2~ |
    d4 r8 d b' a b c~ | 1~ | 4. d,8 \tuplet 3/2 {c'4 b a} | g1~ | % 34a
    g8 r b b b a g e~ | 1~ | 4 g8 8 a g4 a8 | b4. 8~2~ |
    b4 4 8 a4 g8 | a1~ | 4 8 b \tuplet 3/2 {c4 b a} |
    \alternative {
      { g1~ | 4 r r8 b,8 b c | }
      { g'1~ | 2. r4 | }
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  s2. \section | r4 <a d> r <c e> | r <a d> <c e>2 | r4 <b d> e e | <d g> \section
  <d g>4 <c g'> <g d'>8 <g c>~ | 4 4 r q | r4 <c e>8 8~4 8 <g b>~ | 2. 4 |
  r4 q <d' g>4 8 <d fis>8~ | 4 4 r8 c e g | <d fis>4. d8 <c fis>2 | r8 g8(<b d> g) r g(<c e> g) | <b d>2. \section
  s4
  \repeat volta 2 {
    r4 <g b> r <b d>8 <c e>~ | 2 r4 <g c>8 <g b>~ | 2. 4 |
    r4 q r8 b c <d g>~ | 4. 8~4 4 | r q2 8 <d fis>~ | 8 4. r4 q | % 33a
    r4 q r2 | r4 <g, b> r q | r <c e> r c | b2. \tuplet 3/2 {c8 b a} |
    b2 r8 b c <d g>~ | 4. 8~4 4 | <c e g>2 <c d>4. <b d>8~ | 4 4 r8 g c e | <b d>4 \section
    <d g>4 <c g'> <g d'>8 <g c>~ \section | 4 4 r q | r4 <c e>8 8~4 8 <g b>~ | 2. 4 |
    r4 q <d' g>4 8 <d fis>~ | 4 4 r8 c e g | <d fis>4. d8 <c fis>2 | r8 g(<b d> g) r g(<c e> g) | % 34a
    <g d'>8 r <d' g>4 <c g'> <g d'>8 <g c>~ | 4 4 r q | r <c e>2. | r4 <d g> r q |
    r4 q d2 | <d fis>4 4 r8 a d fis | <c e>2 <c fis> |
    \alternative {
      { r8 g(<b d> g) r g(<c e> g) | <b d>4 r r2 | }
      { r8 g(<b d> g) e' d c b~ | 2. r4 | }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\f | s1*3 s4 |
  s2.\mf | s1*3 |
}

pianoLHone = \relative {
  \global
  g,4 f e \section | d4. 8 a4. 8 | d4. 8 a4 d | g2 c,4 4 | g' \section
  g,4 a b | c4. 8 g4 r | c4. 8 4 r | g'4. 8 d4 r |
  g4. 8 4 r | d4. 8 a'4 r | d, d' d,2 | g c, | g'4 d8 g~4 \section
  r4
  \repeat volta 2 {
    g4 r g r | c, r c r | g'4. 8 d4 r |
    g4. 8 d4 r | g4. 8 d4 r | g4. 8 4 r | d4. 8 a4 r | % 33a
    d4. 8 4 r | g4 r g r | c, r c r | g'4. 8 d4 r |
    g4. 8 d4 r | g4. 8 d4 r | c4. 8 d4 r | g4 r c, r | g' \section
    g,4 a b \section | c4. 8 g4 r | c4. 8 4 r | g'4. 8 d4 r |
    g4. 8 4 r | d4. 8 a'4 r | d, d' d,2 | g a | % 34a
    d8 r g,4 a b | c4. 8 g4 r | c4. 8 4 r | g'4. 8 d4 r |
    g4. 8 8 fis4 e8 | d4. 8 a4 r | c2 d |
    \alternative {
      { g2 c, | g4 d8 g~8 r r4 | }
      { g2 c8 b a g~ | 2. r4 | }
    }
  }
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
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
            \new Voice \melodySingle
            \addlyrics \wordsSingle
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
