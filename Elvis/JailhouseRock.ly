\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jailhouse Rock"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jerry Lieber & Mike Stoller"
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
  \time 4/4
}

TempoTrack = {
  \global
  \tempo "Medium Bright Rock" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "38a" s1 s2..
  \textMark \markup\box "38b" s8
  \repeat volta 5 {
    s1*2
    \textMark \markup\box "38c" s1*2
    \textMark \markup\box "39a" s1*2
    \textMark \markup\box "39b" s1*2
    \textMark \markup\box "39c" s1*4
    \textMark \markup\box "40a" s1*2
    \textMark \markup\box "40b" s1
    \alternative {
      { s1 }
      { s1 }
    }
  }
}

ChordTrack = \chordmode {
  s1 | s2..
  s8
  \repeat volta 5 {
    f8 r2.. | s2 s8 e4. |
    f8 r2.. | s2 s8 e4. |
    f8 r2.. | s2 s8 e4. | % 39a
    f8 r2.. | s1 |
    bes1:7 | s | f | s |
    c2:7 c:7sus4 | bes1:7 |
    f2 bes4.:7 f8 |
    \alternative {
      { s2 s8 e4. | }
      { s1 }
    }
  }
}

melodyA = \relative {
  R1 | r2 r4 r8
  ges'8 |
}

melodyB = \relative {
  gis'8 a f d f g f d |
  \tag #'dash       {f4 8 gis~8 r4 gis8 |}
  \tag #'(v1 v4)    {f4 8 gis~8 r4 gis8 |}
  \tag #'(v2 v3 v5) {f4 8 gis~8 r4 r8   |}
  \tag #'dash          {gis8 a f d \slurDashed f(g) \slurSolid f d |}
  \tag #'v3            {gis8 a f d             f(g)            f d |}
  \tag #'(v1 v2 v4 v5) {gis8 a f d             f g             f d |}
  \tag #'dash          {\slurDashed f8(f) \slurSolid  g8 f~f r4 gis8 |}
  \tag #'(v1 v2 v4 v5) {            f4                g8 f~f r4 gis8 |}
  \tag #'v3            {            f8 f              g8 f~f r4 gis8 |}
  gis8 a f d f g f d | % 39a
  \tag #'dash          {f4 \slurDashed 8(gis~8) \slurSolid r4 gis8 |}
  \tag #'v5            {f4             8(gis~8)            r4 gis8 |}
  \tag #'(v1 v2 v3 v4) {f4             8 gis~8             r4 gis8 |}
  \tag #'dash {\slurDashed gis8(a) f d f(f) f(f) \slurSolid |} % 39b
  \tag #'v1   {            gis8 a  f d f4   f               |}
  \tag #'v2   {            gis8(a) f d f f  f f             |}
  \tag #'v3   {            gis8 a  f d f4   f               |}
  \tag #'v4   {            gis8 a  f d f f  f f             |}
  \tag #'v5   {            gis8 a  f d f f  f f             |}
  aes4 8 f~f  r f4 |
  aes4 r r2 | r2 r4 aes | f r r2 | r2 r4 aes8 f |
  gis8 a f d f4 8 aes~ | 4 r r f8 f | % 40a
  gis8 a f d f f4 8~ |
}

melodyC = \relative {
  \tag #'dash       {f'4 r r4 r8 gis |}
  \tag #'(v1 v2 v4) {f4  r r2        |}
  \tag #'(v3 v5)    {f4  r r4 r8 gis |}
}
melodyD = \relative { f'4\repeatTie r r2 | }

melody = {
  \global
  \melodyA
  \repeat volta 5 {
    \keepWithTag #'dash \melodyB
    \alternative { \keepWithTag #'dash \melodyC \melodyD }
  }
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 {\melodyB \melodyC}
  \keepWithTag #'v2 {\melodyB \melodyC}
  \keepWithTag #'v3 {\melodyB \melodyC}
  \keepWithTag #'v4 {\melodyB \melodyC}
  \keepWithTag #'v5  \melodyB \melodyD
  \bar "|."
}


dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The war -- den threw a par -- ty in the coun -- ty jail. __
  The pri -- son band was \nom there and \yesm they be -- gan to wail. __
  The band was jump -- in’ and the joint be -- gan \nom to swing. __ \yesm _
  You \nom should -- ’ve \yesm heard those knocked- out jail -- birds sing.
}

chorus = \lyricmode {
  Let’s rock! Let’s rock!
  Ev -- ’ry bod -- y in the whole cell block __
  was a danc -- in’ to the Jail -- house Rock! __
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  "" Spi -- der Mur -- phy played the ten -- or sax -- o -- phone.
  "" Lit -- tle Joe was \nom blow -- in’ \yesm on the slide trom -- bone. __
  The drum -- mer boy from Il -- lin -- ois went crash, \nom boom, bang! __ \yesm _
  The whole __ rhy -- thm \nom sec -- tion was the \yesm pur -- ple gang.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  "" Num -- ber For -- ty -- sev -- en said to Num -- ber Three:
  "" You’re the cut -- est jail -- bird I \nom ev -- er \yesm did see. __
  I sure would be de -- light -- ed with your \nom com -- pa -- ny. __ \yesm _
  Come \nom on and \yesm do the Jail -- house Rock with me.
}

wordsFour = \lyricmode {
  \set stanza = "4."
  The sad sack was a- sit -- tin’ on a block of stone,
  Way ov -- er in the \nom cor -- ner \yesm weep -- ing all a -- lone.
  The war -- den said: Hey, bud -- dy, don’t you be \nom no square. \yesm _
  If \nom you can’t find a part -- ner, use a \yesm wood -- en chair!
}

wordsFive = \lyricmode {
  \set stanza = "5."
  "" Shif -- ty Hen -- ry said to Bugs: For Heav -- en’s sake,
  "" No one’s look -- in’; \nom now’s our \yesm chance to make a break.
  Bug -- sy turned to Shift -- y and he said: Nix, nix;
  I \nom wan -- na stick a -- round a while and \yesm get my kicks.
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  The war -- den threw a par -- ty in the coun -- ty jail. __
  The pri -- son band was there and they be -- gan to wail. __
  The band was jump -- in’ and the joint be -- gan to swing. __
  You should -- ’ve heard those knocked- out jail -- birds sing.

  Let’s rock! Let’s rock!
  Ev -- ’ry bod -- y in the whole cell block __
  was a danc -- in’ to the Jail -- house Rock! __

  \set stanza = "2."
  Spi -- der Mur -- phy played the ten -- or sax -- o -- phone.
  Lit -- tle Joe was blow -- in’ on the slide trom -- bone. __
  The drum -- mer boy from Il -- lin -- ois went crash, boom, bang! __
  The whole __ rhy -- thm sec -- tion was the pur -- ple gang.

  Let’s rock! Let’s rock!
  Ev -- ’ry bod -- y in the whole cell block __
  was a danc -- in’ to the Jail -- house Rock! __

  \set stanza = "3."
  Num -- ber For -- ty -- sev -- en said to Num -- ber Three:
  You’re the cut -- est jail -- bird I ev -- er did see. __
  I sure would be de -- light -- ed with your com -- pa -- ny. __
  Come on and do the Jail -- house Rock with me.

  Let’s rock! Let’s rock!
  Ev -- ’ry bod -- y in the whole cell block __
  was a danc -- in’ to the Jail -- house Rock! __

  \set stanza = "4."
  The sad sack was a- sit -- tin’ on a block of stone,
  Way ov -- er in the cor -- ner weep -- ing all a -- lone.
  The war -- den said: Hey, bud -- dy, don’t you be no square.
  If you can’t find a part -- ner, use a wood -- en chair!

  Let’s rock! Let’s rock!
  Ev -- ’ry bod -- y in the whole cell block __
  was a danc -- in’ to the Jail -- house Rock! __

  \set stanza = "5."
  Shif -- ty Hen -- ry said to Bugs: For Heav -- en’s sake,
  No one’s look -- in’; now’s our chance to make a break.
  Bug -- sy turned to Shift -- y and he said: Nix, nix;
  I wan -- na stick a -- round a while and get my kicks.

  Let’s rock! Let’s rock!
  Ev -- ’ry bod -- y in the whole cell block __
  was a danc -- in’ to the Jail -- house Rock! __
}

midiWords = \lyricmode {
  \set stanza = "1."
  "The " war "den " "threw " "a " par "ty " "in " "the " coun "ty " "jail. " 
  "\nThe " pri "son " "band " "was " "there " "and " "they " be "gan " "to " "wail. " 
  "\nThe " "band " "was " jump "in’ " "and " "the " "joint " be "gan " "to " "swing. " 
  "\nYou " should "’ve " "heard " "those " knocked "out " jail "birds " "sing. "

  "\nLet’s " "rock! " "Let’s " "rock! "
  "\nEv" "’ry " bod "y " "in " "the " "whole " "cell " "block " 
  "\nwas " "a " danc "in’ " "to " "the " Jail "house " "Rock!\n" 

  \set stanza = "2."
  "\nSpi" "der " Mur "phy " "played " "the " ten "or " sax o "phone. "
  "\nLit" "tle " "Joe " "was " blow "in’ " "on " "the " "slide " trom "bone. " 
  "\nThe " drum "mer " "boy " "from " Il lin "ois " "went " "crash, " "boom, " "bang! " 
  "\nThe " "whole "  rhy "thm " sec "tion " "was " "the " pur "ple " "gang. "

  "\nLet’s " "rock! " "Let’s " "rock! "
  "\nEv" "’ry " bod "y " "in " "the " "whole " "cell " "block " 
  "\nwas " "a " danc "in’ " "to " "the " Jail "house " "Rock!\n" 

  \set stanza = "3."
  "\nNum" "ber " For ty sev "en " "said " "to " Num "ber " "Three: "
  "\nYou’re " "the " cut "est " jail "bird " "I " ev "er " "did " "see. " 
  "\nI " "sure " "would " "be " de light "ed " "with " "your " com pa "ny. " 
  "\nCome " "on " "and " "do " "the " Jail "house " "Rock " "with " "me. "

  "\nLet’s " "rock! " "Let’s " "rock! "
  "\nEv" "’ry " bod "y " "in " "the " "whole " "cell " "block " 
  "\nwas " "a " danc "in’ " "to " "the " Jail "house " "Rock!\n" 

  \set stanza = "4."
  "\nThe " "sad " "sack " "was " a sit "tin’ " "on " "a " "block " "of " "stone, "
  "\nWay " ov "er " "in " "the " cor "ner " weep "ing " "all " a "lone. "
  "\nThe " war "den " "said: " "Hey, " bud "dy, " "don’t " "you " "be " "no " "square. "
  "\nIf " "you " "can’t " "find " "a " part "ner, " "use " "a " wood "en " "chair! "

  "\nLet’s " "rock! " "Let’s " "rock! "
  "\nEv" "’ry " bod "y " "in " "the " "whole " "cell " "block " 
  "\nwas " "a " danc "in’ " "to " "the " Jail "house " "Rock!\n" 

  \set stanza = "5."
  "\nShif" "ty " Hen "ry " "said " "to " "Bugs: " "For " Heav "en’s " "sake, "
  "\nNo " "one’s " look "in’; " "now’s " "our " "chance " "to " "make " "a " "break. "
  "\nBug" "sy " "turned " "to " Shift "y " "and " "he " "said: " "Nix, " "nix; "
  "\nI " wan "na " "stick " a "round " "a " "while " "and " "get " "my " "kicks. "

  "\nLet’s " "rock! " "Let’s " "rock! "
  "\nEv" "’ry " bod "y " "in " "the " "whole " "cell " "block " 
  "\nwas " "a " danc "in’ " "to " "the " Jail "house " "Rock! " 
}

pianoRHone = \relative {
  \global \vo
  gis'8(a f d f g f d |
  \ov <b f' aes>4 8 <bes e g>8~8) r4
  \vo ges'8 |
  \repeat volta 5 {
    gis8 a f d f g f d | f4 8 gis~8 r4 gis8 |
    gis8 a f d f(g) f d | f f g f~f r4 gis8 |
    gis8 a f d f g f d | f4 8 gis~8 r4 gis8 | % 39a
    gis8(a) f d f4 f | aes4 8 f~4 4 |
    \ov <aes, d f aes>1 | <aes' d f aes>8 8 8 8~4 <aes, d f aes> | <a c f>1 | <f' a c f>8 8 8 8~4 <c aes'>8 <a f'> |
    <b gis'>8 <c a'> <bes d f> <bes d> <bes d f>4 8 <c d aes'>~ | 2. <aes d f>8 8 | % 40a
    <b gis'>8 <c a'> <a f'> <a d> <aes d f>8 4 <a c f>8~ |
    \alternative {
      { q4 \vo r r r8 gis' | }
      { \ov q2\repeatTie <f a c f>4-> r | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  <a c>8-> r r4 r2 | s2..
  r8
  \repeat volta 5 {
    <a c>8-> r8 r4 r2 | r2 r8 <gis b e>4.-> |
    <a c>8-> r8 r4 r2 | r2 r8 <gis b e>4.-> |
    <a c>8-> r8 r4 r2 | r2 r8 <gis b e>4.-> | % 39a
    <a c>8-> r8 r4 r2 | s1 |
    s1*7 |
    \alternative {
      { s4 r r8 <gis b e>4.-> | }
      { s1 | }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s2..
  s8\mf
  \repeat volta 5 {
    s1*7 | s2 s\< |
    s1\ff | s1*3 | % 39c
    s1*3 |
    \alternative { { s2 s8 s4.\mf | } { s1 | } }
  }
}

pianoLH = \relative {
  \global
  f,8-> r r4 r2 | des'4 8 c~c c,4->
  r8 |
  \repeat volta 5 {
    f8-> r r4 r2 | r2 r8 e4.-> |
    f8-> r8 r4 r2 | r2 r8 e4. |
    f8-> r8 r4 r2 | r2 r8 e4.-> | % 39a
    f8 r8 r4 r2 | r2 r8 ees d c |
    b4 d f8 8 g4 | b f d b | f' a c8 8 d4 | ees c a f |
    <c c'>2 c4 c' | b f d b | % 40a
    f'2 b8 4 f8~ |
    \alternative {
      { f4 c'8 f,~8 e4.-> | }
      { f8\repeatTie d'4 c8 <f, f'>4-> r | }
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
            \addlyrics { \wordsThree \chorus }
            \addlyrics \wordsFour
            \addlyrics \wordsFive
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
        \new FretBoards \ChordTrack
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
        \new FretBoards \ChordTrack
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
