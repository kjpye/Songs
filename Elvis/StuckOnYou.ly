\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Stuck on You"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Aaron Schroeder & J. Leslie McFarland"
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
  \tempo Moderately 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "44a" s1*3
  \textMark \markup\box "44b" s1
  \repeat volta 2 {
    s1*2
    \textMark \markup\box "44c" s1*3
    \textMark \markup\box "44d" s1*3
    \textMark \markup\box "45a" s1*3
    \alternative {
      { \textMark \markup\box "45b" s1 }
      { s1 }
    }
  }
  \repeat volta 2 {
    s1*2
    \textMark \markup\box "45c" s1*3
    \textMark \markup\box "45d" s1*3
    \textMark \markup\box "46a" s1*3
    \textMark \markup\box "46b" s1*3
    \textMark \markup\box "46c" s1*3
    \textMark \markup\box "46d" s1*2
    \alternative { { s1 } { s1 } }
  }
}

ChordTrack = \chordmode {
  s1*4 |
  \repeat volta 2 {
    f1 s | f s bes:7 | bes:7 f s |
    c2:7 c:7+5 bes1:7 f4 r2. |
    \alternative {
      { s2 c:7 }
      { s1 }
    }
  }
  \repeat volta 2 {
    bes1 s | f s bes | bes c4:7 r2. s1 |
    f1 s s | f bes:7 s | f s c2:7 c:7+5 | bes1:7 f4 r2. |
    \alternative { { s2 c:7 } { s2 f } } |
    }
}

melodyA = { R1*4 | }

melodyB = \relative {
  gis'8. a16 f8. d16 f8. c16 d8. c16 | r8 f f a~4 r |
  \tag #'dash { \slurDashed gis8.(a16) f8.(d16) \slurSolid f8. 16 g8.  f16 | }
  \tag #'v1   {             gis8. a16  f8. d16             f8. 16 g8.  f16 | }
  \tag #'v2   {             gis8.(a16) f8.(d16)            f8. 16 g8.  f16 | }
  \tag #'dash { \slurDashed f'8.(f,16) \slurSolid 8 8~8. c16 d8 f~ | 4 r r2 | }
  \tag #'v1   {             f'8. f,16             8 8~8. c16 d8 f~ | 4 r r2 | }
  \tag #'v2   {             f'8.(f,16)            8 8~8. c16 d8 f~ | 4 r r2 | }
  aes8 4 f8~4 d8 c~ | 4 r r2 | r2 r8 c d8. c16 |
  g'8 4 aes8~2 | r f8. c16 d8. c16 | r2 f8 4. | % 45a
}

melodyC = \relative { f'4 r r2 | }
melodyD = \relative { f'4 r r2 | }

melodyE = \relative {
  r8 bes'8 8. 16 8 d4. | r8 bes8 8. g16 bes4 r |
  r8 c gis8. a16 f8. d16 f4 | r8 f f a~4 r8 f | bes4 4 8. f16 g8. f16 |
  bes8 4 8~4 r8 g | c8. 16 4 8. 16 d8. c16 | g'4 dis8. e16 c4 r |
  gis8. a16 f8. d16 f8. c16 d8. c16 | r8 f f a~4 r | gis8.(a16) f8.(d16) f8. 16 g8. f16 | % 46a
  f'4 f,8 8~8. c16 d8 f~ | 4 r r2 | aes8 4 f8~4 d8 c~ |
  c4 r r2 | r2 r8 c d8. c16 | g'8 4 aes8~2 |
  f4. 8~8. c16 d8. c16 | r2 f8 4. |
}

melodyF = \relative { f'4 r r2 | }
melodyG = \relative  { f'2. r4 | }

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative { \melodyC \melodyD }
  }
  \repeat volta 2 {
    \keepWithTag #'dash \melodyE
    \alternative { \melodyF \melodyG }
  }
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyD
  \keepWithTag #'v1 \melodyE \melodyF
  \keepWithTag #'v2 \melodyE \melodyG
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  You can shake an ap -- ple off an ap -- ple tree, __
  \nom Shake -- a shake -- a, \yesm sug -- ar, but you’ll \nom nev -- er \yesm shake me. __
  Uh -- uh -- uh. __
  No -- sir -- ee, __ uh -- uh. __
  I’m gon -- na stick like glue, __
  Stick be -- cause I’m Stuck on you.
  ""
  \repeat volta 2 {
    Hide in the kit -- chen, hide in the hall.
    Ain’t gon -- na do you no good at all. __
    ’Cause once I catch ya and the kiss -- in’ starts,
    A team o’ wild hors -- es could -- n’t tear us a -- part.
    
    Try to take a ti -- ger from his dad -- dy’s side,
    That’s how love is gon -- na keep us tied. __
    Uh -- uh -- uh. __
    Yes -- sir -- ee, __
    uh -- huh. __
    I’m gon -- na stick like glue, __
    Yay, yay, __ be -- cause I’m Stuck on
    \alternative { { you. } { you. } }
  }
}

wordsTwo = \lyricmode {
  Gon -- na run my fin -- gers thru your long black hair, __
  Squeeze you __ tight -- er than a griz -- zly bear. __
  Uh -- huh -- huh. __
  Yes -- sir -- ee, __ uh -- huh. __
  I’m gon -- na stick like glue, __
  Stick be -- cause I’m Stuck on "" you.

}

wordsSingle = \lyricmode {
  You can shake an ap -- ple off an ap -- ple tree, __
  Shake -- a shake -- a, sug -- ar, but you’ll nev -- er shake me. __
  Uh -- uh -- uh. __
  No -- sir -- ee, __ uh -- uh. __
  I’m gon -- na stick like glue, __
  Stick be -- cause I’m Stuck on you.


  Gon -- na run my fin -- gers thru your long black hair, __
  Squeeze you __ tight -- er than a griz -- zly bear. __
  Uh -- huh -- huh. __
  Yes -- sir -- ee, __ uh -- huh. __
  I’m gon -- na stick like glue, __
  Stick be -- cause I’m Stuck on you.

  \repeat volta 2 {
    Hide in the kit -- chen, hide in the hall.
    Ain’t gon -- na do you no good at all. __
    ’Cause once I catch ya and the kiss -- in’ starts,
    A team o’ wild hors -- es could -- n’t tear us a -- part.
    
    Try to take a ti -- ger from his dad -- dy’s side,
    That’s how love is gon -- na keep us tied. __
    Uh -- uh -- uh. __
    Yes -- sir -- ee, __
    uh -- huh. __
    I’m gon -- na stick like glue, __
    Yay, yay, __ be -- cause I’m Stuck on
    \alternative { { you. } { you. } }
  }
}

midiWords = \lyricmode {
  "You " "can " "shake " "an " ap "ple " "off " "an " ap "ple " "tree, " 
  "\nShake" "a " shake "a, " sug "ar, " "but " "you’ll " nev "er " "shake " "me. " 
  "\nUh" uh "uh. " 
  "\nNo" sir "ee, "  uh "uh. " 
  "\nI’m " gon "na " "stick " "like " "glue, " 
  "\nStick " be "cause " "I’m " "Stuck " "on " "you.\n"


  "\nGon" "na " "run " "my " fin "gers " "thru " "your " "long " "black " "hair, " 
  "\nSqueeze " "you "  tight "er " "than " "a " griz "zly " "bear. " 
  "\nUh" huh "huh. " 
  "\nYes" sir "ee, "  uh "huh. " 
  "\nI’m " gon "na " "stick " "like " "glue, " 
  "\nStick " be "cause " "I’m " "Stuck " "on " "you.\n"

  \repeat volta 2 {
    "\nHide " "in " "the " kit "chen, " "hide " "in " "the " "hall. "
    "\nAin’t " gon "na " "do " "you " "no " "good " "at " "all. " 
    "\n’Cause " "once " "I " "catch " "ya " "and " "the " kiss "in’ " "starts, "
    "\nA " "team " "o’ " "wild " hors "es " could "n’t " "tear " "us " a "part. "
    
    "\nTry " "to " "take " "a " ti "ger " "from " "his " dad "dy’s " "side, "
    "\nThat’s " "how " "love " "is " gon "na " "keep " "us " "tied. " 
    "\nUh" uh "uh. " 
    "\nYes" sir "ee, " 
    "\nuh" "huh. " 
    "\nI’m " gon "na " "stick " "like " "glue, " 
    "\nYay, " "yay, "  be "cause " "I’m " "Stuck " "on "
    \alternative { { "you.\n" } { you. } }
  }
}

pianoRHone = \relative {
  \global
  <bes e g>8 4 <bes e aes>8~2 |
  \vo <d f>4. 8~8. c16 d8. c16 |
  \ov r2 <a c f>8 4. |
  <a c f>4 r <e' bes' c>2 | % 44b
  \repeat volta 2 {
    \vo gis8. a16 f8. d16 f8. c16 d8. c16 | \ov r8 <a c f>8 8 <c f a>8~2 |
    \vo gis'8. a16 f8. d16 f8. 16 g8. f16 | f'4 f,8 8~8. c16 d8 f~ | 1 |
    \ov <c d aes'>8 4 <aes d f>8~4 <aes d>8 <a c>^~ | \vo c1 | \ov <c' f a>8(4 <a c f>8~8) c, \vo d8. c16 |
    \ov <bes e g>8 4 <bes e aes>8~2 | \vo r2 f'8. c16 d8. c16 | \ov r2 <a c f>8 4. | % 45a
    \alternative {
      { <a c f>4 r <e' bes' c>2 | }
      { <a, c f>4 r r2 | }
    }
  }
  \repeat volta 2 {
    \vo r8 bes'8 8. 16 8 d4. | r8 bes8 8. g16 bes2 |
    r8 c gis8. a16 f8. d16 f4 | \ov r8 <a, c f>8 8 <c ees a>~4. f8 | \vo bes4 4 8. f16 g8. f16 |
    \ov <d f bes>8 4 8~4. g8 | \vo c8. 16 4 8. 16 d8. c16 | \ov g'4 dis8. e16 c4 r |
    \vo gis8. a16 f8. d16 f8. c16 d8. c16 | \ov r8 <a c f>8 8 <c f a>8~2 | \vo gis'8. a16 f8. d16 f8. 16 g8. f16 | % 46a
    f'4 f,8 8~8. c16 d8 e~ | 1 | \ov <c d aes'>8 4 <aes d f>8~4 <a d>8 \vo <a c>8^~ |
    \vo c1 | \ov <c' f a>8(4 <a c f>8~8) c,8 \vo d8. c16 | \ov <bes e g>8 4 <bes e aes>8~2 |
    \vo <d f>4. 8~8. c16 d8. c16 | \ov r2 <a c f>8 4. |
    \alternative {
      { q4 r <e' bes' c>2 | }
      { <a, c f>2 <f' a c f>4 r | }
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  s1 | aes4. 8~4 4 | s1 |
  s1 |
  \repeat volta 2 {
    r4 <a c> r a | s1 |
    r4 a r a | r a r a8 <aes d>8~ | 4 4 r q |
    s2.. \once\hideNotes a8~ | 4 <f a> r q | s2. a4 |
    s1 | r4 <aes d> r aes | s1 |
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
  \repeat volta 2 {
    r4 <d f> r q | r q r q |
    r4 <c f> r <a c> | s1 | r4 <d f> r <bes d> |
    s1 | <e bes'>8 r r4 r2 | s1 |
    r4 <a, c> r a | s1 | r4 <a c> r q | % 46a
    r4 q r a8 <aes d>~ | 4 4 r q | s2.. \once\hideNotes a8~ |
    a4 <f a> r q | s2. a4 | s1 |
    aes4. 8~4 4 | s1 |
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s1*3 |
  \repeat volta 2 {
    s1\mf s1*10
    \alternative {
      { s1 }
      { s1 }
    }
  }
  \repeat volta 2 { s1*19 \alternative { { s1 } { s1 } } }
}

pianoLHone = \relative {
  \global
  c,4 g' e c | bes f' d bes | f' f r2 |
  r4 c'8. 16 8. bes16 a8. g16 |
  \repeat volta 2 {
    f4 r <c c'> r | f r c'8. 16 d8. c16 |
    f,4 r <c c'> r | f r q r | <bes, bes'> r g'8. 16 f4 |
    bes4 f d bes | f' r d'8. 16 c4 | f, c' a f |
    c4 g' e c | bes f' d bes | f' f r2 | % 45a
    \alternative {
      { r4 c'8. 16 8. bes16 a8. g16 | }
      { r4 ees d c | }
    }
  }
  \repeat volta 2 {
    bes4 r f' r | bes, r g'8. f16 bes,4 |
    f'4 r <c c'> r | f r d'8. c16 f,4 | bes, r f' r |
    bes,4 f' d bes | c8 r r4 r2 | r2 r8 c d8. e16 |
    f4 r <c c'> r | f r c'8. 16 d8. c16 | f,4 r <c c'> r | % 46a
    f4 r q r | <bes, bes'> r f' r | bes f d bes |
    f'4 r d' c | f, c' a f | c g' e c |
    bes4 f' d bes | f' f r2 |
    \alternative {
      { r4 c'8. 16 8. bes16 a8. g16 | }
      { r8 c8 d8. c16 <f, f'>4 r | }
    }
  }
}

pianoLHtwo = \relative {
  \global \vt
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
