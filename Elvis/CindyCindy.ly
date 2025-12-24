\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Cindy, Cindy"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Buddy Kaye, Ben Weisman & D. Fuller"
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
  \partial 2.
}

TempoTrack = {
  \global
  \tempo 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "86a" s2.
  \repeat volta 4 {
    s1*3
    \textMark \markup\box "86b" s1*3
    \textMark \markup\box "86c" s1*3
    \textMark \markup\box "86d" s1*3
    \textMark \markup\box "87a" s1*3 s2
    \textMark \markup\box "87b" s2 s1*3
    \textMark \markup\box "87c" s1*3
    \alternative {
      {\textMark \markup\box "87d" s1*2}
      {s1*2}
    }
  }
}

ChordTrack = \chordmode {
  s2.
  \repeat volta 4 {
    f1 s4 ees2 e4 f1 | s4 ees2 e4 f1 s4 ees2 e4 | f1 s4 ees2 e4 f1 | s4 ees2 e4 f1 s4 ees2 e4 |
    f1:7 s1*3 | bes1:7 s f | s c:9 s |
    \alternative { {f2 c:7 f1 |} {f2 c:7 f1 |} }
  }
}

melodyA = { r4 r2 }

melodyB = \relative {
  f''4 f,4 4 8 aes~ |
  \tag #'dash    {8 8 r4 r a |}
  \tag #'(v1 v2) {8 8 r4 r2 |}
  \tag #'(v3 v4) {8 8 r4 r a |}
  a4 f f ees8 aes~ |
  aes4 r r2 | ees'4 8 8~8 c4 ees8~ | 4 8 8~4 c | % 86b
  f4 f, aes f8 ees~ | 4 r r r8 f | f'4 f,4 4 8 aes~ |
  \tag #'dash       {aes8 8 r4 r r8 f |} % 86d
  \tag #'(v1 v3 v4) {aes8 8 r4 r r8 f |}
  \tag #'v2         {aes8 8 r4 r2     |}
  a4 f f ees8 aes~ | 4 r r r8 c |
  ees4 4 4 c | % 87a
  \tag #'dash       {ees4 8 8~8 \slurDashed 8(c4) \slurSolid |}
  \tag #'(v1 v3 v4) {ees4 8 8~8             8 c4             |}
  \tag #'v2         {ees4 8 8~8             8(c4)            |}
  ees4 c ees8 4 8~4 r \section \break
  f8^\markup\bold Chorus. 4 8~ \section | 4 r f,4 8 8~ | 8 4. aes8 a4 f8~ | 4 r f4 8 8~ |
  f8 4. f'8 4 8~ | 4 r f,4 8 8~ | 8 4. r2 |
}

melodyC = \relative {a'8 4. g4 8 f~ | 4 r r r8 f |}
melodyD = \relative {a'8 4. g4 8 f~ | 2 r |}

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative { \melodyC \melodyD }
  }
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyC
  \keepWithTag #'v3 \melodyB \melodyC
  \keepWithTag #'v4 \melodyB \melodyD
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsChorus = \lyricmode {
  Come on home, __
  Cin -- dy, Cin -- dy, come on home. __
  Cin -- dy, Cin -- dy, Come on home. __
  Cin -- dy, Cin -- dy, come on home with me. __
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Wish I was an ap -- ple, _ dan -- glin’ from a tree; __
  Ev -- ’ry time __ you’d pass me by, __
  you’d take a bite of me. __
  I wish I was a blue -- bird,
  I’d nev -- er fly a -- way; __
  I’d sit up -- on your shoul -- der; ba -- \nom by,
  and \yesm sing to you all day. __
  \wordsChorus
  \set stanza = "2." I
  come on home with me. __
}

wordsTwo = \lyricmode {
  wrote it in a let -- ter, _ carved it on a tree; __
  Told it to __ a hon -- ey -- comb, __
  who told it to a bee. __
  I told them that I love __ you,
  _ they all know it’s true; __
  I’ll say it till the cows come home, __
  un -- til it gets to you. __
  \repeat unfold 26 ""
  \set stanza = "3."
  I
}

wordsThree = \lyricmode {
  need you in the morn -- in’ to start the cof -- fee pot,
  Need you in the af -- ter -- noon, to fan we when I’m hot.
  I need you in the eve -- nin’ when sup -- per time is thru,
  What I’m real -- ly tryin’ to say is \nom I can’t \yesm get e -- nough of you.
  \repeat unfold 26 ""
  \set stanza = "3."
  If
}

wordsFour = \lyricmode {
  I were a mus -- ic -- ian, I’d harp on just one thing,
  You should nev -- er play my heart, the way you pluck a string,
  If on -- ly you would love me, sin -- cere -- ly tell me so,
  I’d beat the drums a -- bout you, ba -- \nom by, to \yesm let the whole world know.
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Wish I was an ap -- ple, dan -- glin’ from a tree; __
  Ev -- ’ry time __ you’d pass me by, __
  you’d take a bite of me. __
  I wish I was a blue -- bird,
  I’d nev -- er fly a -- way; __
  I’d sit up -- on your shoul -- der; ba -- by,
  and sing to you all day. __
  Come on home, __
  Cin -- dy, Cin -- dy, come on home. __
  Cin -- dy, Cin -- dy, Come on home. __
  Cin -- dy, Cin -- dy, come on home with me. __

  \set stanza = "2."
  I wrote it in a let -- ter, carved it on a tree; __
  Told it to __ a hon -- ey -- comb, __
  who told it to a bee. __
  I told them that I love __ you,
  they all know it’s true; __
  I’ll say it till the cows come home, __
  un -- til it gets to you. __
  Come on home, __
  Cin -- dy, Cin -- dy, come on home. __
  Cin -- dy, Cin -- dy, Come on home. __
  Cin -- dy, Cin -- dy, come on home with me. __

  \set stanza = "3."
  I need you in the morn -- in’ to start the cof -- fee pot,
  Need you in the af -- ter -- noon, to fan we when I’m hot.
  I need you in the eve -- nin’ when sup -- per time is thru,
  What I’m real -- ly tryin’ to say is I can’t get e -- nough of you.
  Come on home, __
  Cin -- dy, Cin -- dy, come on home. __
  Cin -- dy, Cin -- dy, Come on home. __
  Cin -- dy, Cin -- dy, come on home with me. __

  \set stanza = "4."
  If I were a mus -- ic -- ian, I’d harp on just one thing,
  You should nev -- er play my heart, the way you pluck a string,
  If on -- ly you would love me, sin -- cere -- ly tell me so,
  I’d beat the drums a -- bout you, ba -- by, to let the whole world know.
  Come on home, __
  Cin -- dy, Cin -- dy, come on home. __
  Cin -- dy, Cin -- dy, Come on home. __
  Cin -- dy, Cin -- dy, come on home with me. __
}

midiWords = \lyricmode {
  \set stanza = "1."
  "Wish " "I " "was " "an " ap "ple, " dan "glin’ " "from " "a " "tree; " 
  "\nEv" "’ry " "time "  "you’d " "pass " "me " "by, " 
  "\nyou’d " "take " "a " "bite " "of " "me. " 
  "\nI " "wish " "I " "was " "a " blue "bird, "
  "\nI’d " nev "er " "fly " a "way; " 
  "\nI’d " "sit " up "on " "your " shoul "der; " ba "by, "
  "\nand " "sing " "to " "you " "all " "day. " 
  "\nCome " "on " "home, " 
  "\nCin" "dy, " Cin "dy, " "come " "on " "home. " 
  "\nCin" "dy, " Cin "dy, " "Come " "on " "home. " 
  "\nCin" "dy, " Cin "dy, " "come " "on " "home " "with " "me.\n" 

  \set stanza = "2."
  "\nI " "wrote " "it " "in " "a " let "ter, " "carved " "it " "on " "a " "tree; " 
  "\nTold " "it " "to "  "a " hon ey "comb, " 
  "\nwho " "told " "it " "to " "a " "bee. " 
  "\nI " "told " "them " "that " "I " "love "  "you, "
  "\nthey " "all " "know " "it’s " "true; " 
  "\nI’ll " "say " "it " "till " "the " "cows " "come " "home, " 
  "\nun" "til " "it " "gets " "to " "you. " 
  "\nCome " "on " "home, " 
  "\nCin" "dy, " Cin "dy, " "come " "on " "home. " 
  "\nCin" "dy, " Cin "dy, " "Come " "on " "home. " 
  "\nCin" "dy, " Cin "dy, " "come " "on " "home " "with " "me.\n" 

  \set stanza = "3."
  "\nI " "need " "you " "in " "the " morn "in’ " "to " "start " "the " cof "fee " "pot, "
  "\nNeed " "you " "in " "the " af ter "noon, " "to " "fan " "we " "when " "I’m " "hot. "
  "\nI " "need " "you " "in " "the " eve "nin’ " "when " sup "per " "time " "is " "thru, "
  "\nWhat " "I’m " real "ly " "tryin’ " "to " "say " "is " "I " "can’t " "get " e "nough " "of " "you. "
  "\nCome " "on " "home, " 
  "\nCin" "dy, " Cin "dy, " "come " "on " "home. " 
  "\nCin" "dy, " Cin "dy, " "Come " "on " "home. " 
  "\nCin" "dy, " Cin "dy, " "come " "on " "home " "with " "me.\n" 

  \set stanza = "4."
  "\nIf " "I " "were " "a " mus ic "ian, " "I’d " "harp " "on " "just " "one " "thing, "
  "\nYou " "should " nev "er " "play " "my " "heart, " "the " "way " "you " "pluck " "a " "string, "
  "\nIf " on "ly " "you " "would " "love " "me, " sin cere "ly " "tell " "me " "so, "
  "\nI’d " "beat " "the " "drums " a "bout " "you, " ba "by, " "to " "let " "the " "whole " "world " "know. "
  "\nCome " "on " "home, " 
  "\nCin" "dy, " Cin "dy, " "come " "on " "home. " 
  "\nCin" "dy, " Cin "dy, " "Come " "on " "home. " 
  "\nCin" "dy, " Cin "dy, " "come " "on " "home " "with " "me. " 
}

pianoRHone = \relative {
  \global
  <g bes ees>2 <gis b e>4 |
  \repeat volta 4 {
    <a c f>4 r r2 |
    \repeat unfold 5 {r4 <g bes ees>2 <gis b e>4 | <a c f> r r2 |}
    r4 <g bes ees>2 <gis b e>4 |
    <a c ees f>4 r r2 | q4 r r2 | q4 r <a' c ees>8-> q4-> q8->~ | 4 r \section % 87a
    <a ees' f>8 4 <aes d f>8~ \section | q4 r <aes, d f>4 8 8~ | % 87b
    8 4. aes'8 a4 <a, c f>8~ | 4 r q4 8 8~ |
    q8 4. <a' c f>8 4 <g bes d f>8~ | 4 r <g, bes d f>4 8 8~ | 8 4. r2 | % 87c
    \alternative {
      {<c f a>8 4. <bes e g>4 8 <a c f>8~ | 4 r r r8 f' |}
      {<c f a>8 4. <bes e g>4 8 <a c f>~ | 2 r |}
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  s2.
  \repeat volta 4 {
    s1*3
    \alternative { {} {} }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf
  \repeat volta 4 {
    s1*3
    \alternative { {} {} }
  }
}

pianoLHone = \relative {
  \global
  ees,2 e4 |
  \repeat volta 4 {
    f4 r r2 | \repeat unfold 6 {r4 ees2 e4 | f4 r r2 |}
    f4 r r2 | f4 r f8-> 4-> 8->~ | 4 r \section
    r2 \section | bes,4 r f' r | bes, r ees e | f r c r |
    f4 r a bes | c r g r | c, r ees e |
    \alternative {
      {f4 r c r | f c d e |}
      {f4 r c r | f c8 f r2 |}
    }
  }
}

pianoLHtwo = \relative {
  \global \vt
  s2. |
  \repeat volta 4 {
    s1*3
    \alternative { {} {} }
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
            \addlyrics \wordsThree
            \addlyrics \wordsFour
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
