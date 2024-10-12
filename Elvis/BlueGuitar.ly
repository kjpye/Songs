\version "2.25.19"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Blue Guitar"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sheb Wooley"
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
  \key c \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \global
  \tempo "Slow Blues" 4=100
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "6a" s4 s1*3 s2
  \textMark \markup\box "6b" s2
  \repeat volta 2 {
    s1*5 |
    \textMark \markup\box "6c" s1*4
    \textMark \markup\box "6d" s1
    \alternative {
      { s1*2 | }
      { s1 | s2 }
    }
  }
  \textMark \markup\box "7a" s2
  \repeat volta 3 {
    s1*4 |
    \textMark \markup\box "7b" s1*4
    \textMark \markup\box "7c" s1*2
    \alternative {
      { s1*2 | }
      { \textMark \markup\box "7d" s1*4 }
    }
  }
}

ChordTrack = \chordmode {
  s4 | s1*3 | s1 |
  \repeat volta 2 {
    c1 | s | s | c:7 | f:7 |
    s1 | c | s | g:7 |
    f1:7 |
    \alternative {
      { c1 | s | }
      { c1 | s2 }
    }
  }
  r2 |
  \repeat volta 3 {
    c1 | s | s | c:7 | % 7a
    f1:7 | s | c | s |
    g1:7 | f:7 |
    \alternative {
      { c1:7 | s2 r | }
      { c1 | s1*3 | }
    }
  }
}

melodyA = \relative {
  r4 | R1*3 | r2 \section \break \tuplet 3/2 {e'4(f) fis} |
}

melodyB = \relative {
  g'1~ | 2 \tuplet 3/2 {e4 f a} | g1~ | 2 \tuplet 3/2 {a4 c c} | c1~ |
  c4 c \tuplet 3/2 {c a g} | e8(c4.)~2~ |
  \tag #'dash { c2 <<{\vo \teeny r8 e'} \new Voice {\vt \normalsize r4}>> \ov \normalsize e8 e |}
  \tag #'v1   { c,2 r4    e'8 e |}
  \tag #'v2   { c,2 r8 e' e8  e |}
  e d c d~4 c8 8 |
  c8 a g a(c,4) g'8 8 |
}

melodyC = \relative { g'1~ | 4 r \tuplet 3/2 {e f fis} | }
melodyD = \relative { g'1~ | 4 r \section }
melodyE = \relative { \tuplet 3/2 {e'4(f) fis} } % 7a

melodyF = \relative {
  g'1~ | 2 \tuplet 3/2 {e4 f a} |
  \tag #'dash { g1~ <<{\vt \tiny g4. a8} \new Voice {\vo \normalsize g2}>> \ov \normalsize \tuplet 3/2 {a4 c c} | }
  \tag #'(v3 v4) { g1~ g2     \tuplet 3/2 {a4 c c} | }
  \tag #'v5      { g1~ g4. a8 \tuplet 3/2 {a4 c c} | }
  c1~ | 4 4 \tuplet 3/2 {c a g} | e8(c4.)~2~ |
  \tag #'dash    { c2  r4 \slurDashed e'8(8) \slurSolid | }
  \tag #'v5      { c,2 r4             e'4               | }
  \tag #'(v3 v4) { c,2 r4             e'8 8             | }
  \tag #'dash { e8 d c d~4 <<{\vt \tiny c8 8} \new Voice {\vo \normalsize c4}>> \ov \normalsize | }
  \tag #'(v4 v5) { e8 d c d~4 c8 8 | }
  \tag #'v3      { e8 d c d~4 c4   | }
  c8 a g a(c,4) g'8 8 |
}

melodyG = \relative { g'1~ | 4 r \tuplet 3/2 {e f fis} | }
melodyH = \relative { g'1~ | 2 c8(c,4) e8 | d(c4.)~2~ | 1\fermata | }

melody = {
  \global \autoBeamOff
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative { \melodyC \melodyD }
  }
  \melodyE
  \repeat volta 3 {
    \keepWithTag #'dash \melodyF
    \alternative { \melodyG \melodyH }
  }
  \bar "|."
}

melodySingle = {
  \global \autoBeamOff
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyD
  \melodyE
  \keepWithTag #'v3 \melodyF \melodyG
  \keepWithTag #'v4 \melodyF \melodyG
  \keepWithTag #'v5 \melodyF \melodyH
  \bar "|."
}

wordsOne = \lyricmode {
  Blue __ Gui -- tar, __ you’re lone -- ly too. __
  Cry in the night, __ be -- cause you’re so blue! __
  \skip 1 Oh, I weep and I can’t get no sleep,
  you know why, __ Blue Gui -- tar. __

  \set stanza = "2."
  Talk a -- bout
  \skip 1
}

wordsTwo = \lyricmode {
  "(Talk a" -- "bout)" her, __ you know which one. __
  Oh, how we loved, __ and did we have fun! __
  But she was jeal -- ous of you;
  you’re my choice of the two, __ Blue Gui --
  \repeat unfold 4 \skip 1
  tar. __
}

wordsThree = \lyricmode {
  \set stanza = "3."
  Blue __ Gui -- tar, __ what makes you cry? __
  \skip 1 You got the blues? __ Oh, Lord, so have I! __
  \nom If I’m \yesm hurt -- in’ or not you’re \skip 1 all that I got, __
  Blue Gui -- tar. __
  \set stanza = "4." Speak of good
}

wordsFour = \lyricmode {
  \set stanza = "4."
  \nom "(Speak" of \yesm "good)" times, __ fun that I’ve had, __
  \skip 1 I’ve had it good, __ but I’ve got it bad! __
  \nom So here’s \yesm mud in your eye till my tears have run dry, __
  Blue Gui -- tar. __
  \set stanza = "5."
  Sing me a
}

wordsFive = \lyricmode {
  \repeat unfold 36 \skip 1
  \set stanza = "5."
  \nom "(Sing" me \yesm "a)" song __ of nights gone by, __
  There’s no -- bod -- y here __ to care if I cry! __
  Oh, __ I’ve shared a few of my se -- crets with you, __
  Blue Gui -- \repeat unfold 4 \skip 1 tar, __ Blue __ Gui -- tar. __
}

wordsSingle = \lyricmode {
  Blue __ Gui -- tar, __ you’re lone -- ly too. __
  Cry in the night, __ be -- cause you’re so blue! __
  Oh, I weep and I can’t get no sleep,
  you know why, __ Blue Gui -- tar. __

  \set stanza = "2."
  Talk a -- bout her, __ you know which one. __
  Oh, how we loved, __ and did we have fun! __
  But she was jeal -- ous of you;
  you’re my choice of the two, __ Blue Gui -- tar. __

  \set stanza = "3."
  Blue __ Gui -- tar, __ what makes you cry? __
  You got the blues? __ Oh, Lord, so have I! __
  If I’m hurt -- in’ or not you’re all that I got, __
  Blue Gui -- tar. __
  \set stanza = "4."
  Speak of good times, __ fun that I’ve had, __
  I’ve had it good, __ but I’ve got it bad! __
  So here’s mud in your eye till my tears have run dry, __
  Blue Gui -- tar. __

  \set stanza = "5."
  Sing me a song __ of nights gone by, __
  There’s no -- bod -- y here __ to care if I cry! __
  Oh, __ I’ve shared a few of my se -- crets with you, __
  Blue Gui -- tar, __ Blue __ Gui -- tar. __
}

midiWords = \lyricmode {
  "Blue "  Gui "tar, "  "you’re " lone "ly " "too. " 
  "\nCry " "in " "the " "night, "  be "cause " "you’re " "so " "blue! " 
  "\nOh, " "I " "weep " "and " "I " "can’t " "get " "no " "sleep, "
  "\nyou " "know " "why, "  "Blue " Gui "tar.\n" 

  \set stanza = "2."
  "\nTalk " a "bout " "her, "  "you " "know " "which " "one. " 
  "\nOh, " "how " "we " "loved, "  "and " "did " "we " "have " "fun! " 
  "\nBut " "she " "was " jeal "ous " "of " "you; "
  "\nyou’re " "my " "choice " "of " "the " "two, "  "Blue " Gui "tar.\n" 

  \set stanza = "3."
  "\nBlue "  Gui "tar, "  "what " "makes " "you " "cry? " 
  "\nYou " "got " "the " "blues? "  "Oh, " "Lord, " "so " "have " "I! " 
  "\nIf " "I’m " hurt "in’ " "or " "not " "you’re " "all " "that " "I " "got, " 
  "\nBlue " Gui "tar.\n" 

  \set stanza = "4."
  "\nSpeak " "of " "good " "times, "  "fun " "that " "I’ve " "had, " 
  "\nI’ve " "had " "it " "good, "  "but " "I’ve " "got " "it " "bad! " 
  "\nSo " "here’s " "mud " "in " "your " "eye " "till " "my " "tears " "have " "run " "dry, " 
  "\nBlue " Gui "tar.\n" 

  \set stanza = "5."
  "\nSing " "me " "a " "song "  "of " "nights " "gone " "by, " 
  "\nThere’s " no bod "y " "here "  "to " "care " "if " "I " "cry! " 
  "\nOh, "  "I’ve " "shared " "a " "few " "of " "my " se "crets " "with " "you, " 
  "\nBlue " Gui "tar, "  "Blue "  Gui "tar. " 
}

pianoRHone = \relative {
  \global \vo
  <c'' e>8(q | q <b d> <a c> <b d>~4) c8(8 | c a g a c,4) g'8(8 | g1~ | 2) \section \break \tuplet 3/2 {<c, e>4(<d f>) <dis fis>} |
  \repeat volta 2 {
    g1~ | 2 \tuplet 3/2 {<c, e>4 <d f> <f a>} | g1~ | 2 \tuplet 3/2 {a4 c c} | c1~ |
    c4 c \tuplet 3/2 {c a g} | e8(c4.)~2~ | 2~4 <c' e>8 q | q <b d> <a c> <b d>~4 c8 8 |
    c8 a g a(c,4) g'8 8 |
    \alternative {
      { g1~ | 2 \tuplet 3/2 {<c, e>4 <d f> <dis fis>} | }
      { g1~ | 4 r \section \break }
    }
  }
  \tuplet 3/2 {<c, e>4(<d f>) <dis fis>} | % 7a
  \repeat volta 3 {
    g1~ | 2 \tuplet 3/2 {<c, e>4 <d f> <f a>} | g1~ | 2 \tuplet 3/2 {a4 c c} |
    c1~ | 4 4 \tuplet 3/2 {c a g} | e8(c4.)~2~ | 2~4 <c' e>8 8 |
    <c e>8 <b d> <a c> <b d>~4 c8 8 | c a g a c,4 g'8 8 |
    \alternative {
      { g1~ | 4 r \tuplet 3/2 {<c, e> <d f> <dis fis>} | }
      { g1~ | 2 c8(c,4) e8 | d(c4.)~2~ | 2 c'\arpeggio\fermata | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  r4 | f'2~4 <d f> | <c ees>2 a4 <a ees'> | r <g c e> r q | r q \section
  r2
  \repeat volta 2 {
    e'4 <g, c e> r q | r4 q e2 | e'4 q r q | r <bes e> \tuplet 3/2 {q <e bes'> q} | <ees a> <c ees a> r q |
    r4 q \tuplet 3/2 {<c ees>2 <a ees'>4} | r <e g> r q | r q r g' | f2~4 <d f> |
    <c ees>2 a4 <a ees'> |
    \alternative {
      { r4 <g c e> r q | r q r2 | }
      { r4 q r q | r q }
    }
  }
  r2 % 7a
  \repeat volta 3 {
    r4 <g c e> r q | r q r2 | e'4 q r q | r q \tuplet 3/2 {<b e> <e bes'> q} |
    <ees a> <c ees a> r q | r q \tuplet 3/2 {<c ees>2 <a ees'>4} | r4 <e g> r q | r q r g' |
    f2~4 <d f> | <c ees>2 a4 <a ees'> |
    \alternative {
      { r4 <a c e> r q | r q r2 | }
      { r4 q r q | r q <c e>8 c4 <g c>8 | r4 <e g> r q | q2 <c' e>2\fermata\arpeggio | }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mp | s1*3 | s2
  s2\mp
  \repeat volta 2 {
    s1*10
    \alternative {
      { s1*2 }
      { s1 | s2 }
    }
  }
  s2
  \repeat volta 3 {
    s1*10
    \alternative {
      { s1*2 }
      { s1*3 s1-\markup\italic rall. | }
    }
  }
}

pianoLHone = \relative {
  \global
  r4 | <g, g'>2 g'8(d g,4) | <f f'>2 ees'8(c f,4) | c4. a'8 g4. a8 | c,4. a'8 \section
  g2
  \repeat volta 2 {
    c,4. a'8 g4. a8 | c,4. a'8 g2 | c,4. a'8 g4. a8 | c4. g8 c,2 | f4. d'8 c4. d8 |
    f4. c8 f,2 | c4. a'8 g4. a8 | c,4. a'8 g4 r | <g g'>2 g'8(d g,4) |
    <f f'>2 ees'8(c f,4) |
    \alternative {
      { c4. a'8 g4. a8 | c,4. a'8 g2 | }
      { c,4. a'8 g4. a8 | c,4. a'8 \section }
    }
  }
  g2
  \repeat volta 3 {
    c,4. a'8 g4. a8 | c,4. a'8 g2 | c,4. a'8 g4. a8 | c4. g8 c,2 |
    f4. d'8 c4. d8 | f4. c8 f,2 | c4. a'8 g4. a8 | c,4. a'8 g4 r |
    <g g'>2 g'8(d g,4) | <f f'>2 ees'8(c f,4) |
    \alternative {
      { c4. a'8 g4. a8 | c,4. a'8 g2 | }
      { c,4. a'8 g4. a8 | c,4. a'8 g2 | c,4. a'8 g4. a8 | c4 g <c, g' e'>2\fermata \arpeggio | }
    }
  }

  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  \repeat volta 2 {
    \alternative {
      {}
      {}
    }
  }
  \repeat volta 3 {
    \alternative {
      {}
      {}
    }
  }

  \bar "|."
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
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \consists "Volta_engraver"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" {\wordsOne \wordsThree}
            \new Lyrics \lyricsto "melody" {\wordsTwo \wordsFour}
            \new Lyrics \lyricsto "melody"  \wordsFive
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
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
        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
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
          \new Dynamics \TempoTrack
          \new Staff \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
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
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsPiano
          \new Staff \with {
          }
          <<
            \new Voice \melodySingle
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano \with {
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
