\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Got the Sun in the Morning"
  subtitle    = "from Annie Get Your Gun"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Irving Berlin"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "Irving Berlin"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "1a" } s1*3
  \mark \markup { \circle "1b" } s1*3
  \mark \markup { \circle "1c" } s1*3
  \mark \markup { \circle "1d" } s1*3
  \mark \markup { \circle "2a" } s1*3
  \mark \markup { \circle "2b" } s1*3
  \mark \markup { \circle "2c" } s1*2
  \repeat volta 2 { s1
                    \mark \markup { \circle "2d" } s1*3
                    \mark \markup { \circle "3a" } s1*3
                    \mark \markup { \circle "3b" } s1*3
                    \mark \markup { \circle "3c" } s1*3
                    \mark \markup { \circle "3d" } s1*3
                    \mark \markup { \circle "4a" } s1*3
                    \mark \markup { \circle "4b" } s1*3
                    \mark \markup { \circle "4c" } s1*3
                    \mark \markup { \circle "4d" } s1*2
                    \mark \markup { \circle "5a" } s1*2
                    \mark \markup { \circle "5b" } s1*2
                    \mark \markup { \circle "5c" } s1*3
                    \mark \markup { \circle "5d" } s1
                  }
  \alternative {{s1}{s1}}
}

TempoTrack = {
  \tempo 4=120
}

ChordTrack = \chordmode {
  c1:13
  c1:6.9
  g1:m7
  c1:13
  f1:6
  ees1:6
}

soprano = \relative c' {
  \global
  r1
  r1
  r1
  r1 \bar "||"
  f8 f4 f8~f4. f8
  g8 g4 g8~g f d c
  d8 f4. ~ f2
  c'8 c c c~c4. c,8
  f4 f f8 f4.
  g4 e d8 c4 f8~
  f1~
  f2. r4
  aes8 aes4 aes8~aes4. aes8
  bes8 bes4 bes8~bes aes f ees
  f8 aes4.~aes2
  c8 c c c~c4. a8
  g4 g g8 e4.
  f4 g e8 d4 c8~
  c1~
  c1
  \repeat volta 2 {
    c4 e8 f~f f4.
    c4 e8 f~f2
    c4 e8 f~f f4 f8
    g8 f4 a8~a c c c
    c4 bes8 a bes a g f
    g4 d8 f~f2~
    f1~
    f2 r
    c4 e8 f~f f4.
    c4 e8 f~f2
    c4 e8 f~f f4 e8
    g8 f4 a8~a c c c
    c4 bes8 a bes a g f
    g4 d8 f~f2~
    f1~
    f2 r
    a4. a8~a2~
    a2 a8 fis a b~
    b8 b4 b8~b2~
    b2. r4
    g4. g8~g2~
    g2 g8 e g a~
    a8 a4 a8~a2~
    a2. r4
    c,4 e8 f~f f4.
    c4 e8 f~f2
    c4 e8 f~f f4 e8
    g8 f4 a8~a c c c
    c4 bes8 a bes a g f
    g4 d8 f~f2~
    f1~
    f4 r r8 c' c c
    c4 bes8 a bes a g f
    g4 f8 e f e d4~
    d2 e4. f8~
  }
  \alternative {
    {
      f2 r
    }
    {
      f2. r4
    }
  }
  \bar "|."
}

dynamicsSop = {
  s1*20
  \repeat volta 2 {
    s1*35
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
}

wordsSopA = \lyricmode {
  Tak- ing stock __ of what I have __
  and what I have- n't, __
  what do I find? __
  The things I've got will keep me sat- is- fied. __
  Check- ing up __ on what I have __ and what I have- n't, __
  what do I find? __
  A health- y bal- ance on the cred- it side. __
}

wordsSopAMidi = \lyricmode {
  "Tak" "ing " "stock "  "of " "what " "I " "have " 
  "\nand " "what " "I " have "n't, " 
  "\nwhat " "do " "I " "find? __ "
  "\nThe " "things " "I've " "got " "will " "keep " "me " sat is "fied. " 
  "\nCheck" "ing " "up "  "on " "what " "I " "have "  "and " "what " "I " have "n't, " 
  "\nwhat " "do " "I " "find? __ "
  "\nA " health "y " bal "ance " "on " "the " cred "it " "side. " 
}

wordsSopB = \lyricmode {
  Got no dia- mond,
  got no pearl, __
  still I think __ I'm a luck- y girl. __
  Ι got the sun in the morn- ing and the moon at night. __

  Got no man- sion, got no yacht, __
  still I'm hap- py with what I've got, __
  Ι got the sun in the morn- ing and the moon at night. __
  
  Sun- shine __ gives me a love- ly day, __
  Moon- light __ give me the Milk- y Way. __
  Got no check- books,
  got no banks, __
  still I'd like __ to ex- press my thanks. __
  Ι got the sun in the morn- ing and the moon at night. __

  And with the sun in the morn- ing and the moon in the eve- ning,
  I'm __ all right. __
}

wordsSopBMidi = \lyricmode {
  "\nGot " "no " dia "mond, "
  "\ngot " "no " "pearl, " 
  "\nstill " "I " "think "  "I'm " "a " luck "y " "girl. " 
  "\nΙ " "got " "the " "sun " "in " "the " morn "ing " "and " "the " "moon " "at " "night. " 

  "\nGot " "no " man "sion, " "got " "no " "yacht, " 
  "\nstill " "I'm " hap "py " "with " "what " "I've " "got, " 
  "\nΙ " "got " "the " "sun " "in " "the " morn "ing " "and " "the " "moon " "at " "night. " 
  
  "\nSun" "shine "  "gives " "me " "a " love "ly " "day, " 
  "\nMoon" "light "  "give " "me " "the " Milk "y " "Way. " 
  "\nGot " "no " check "books, "
  "\ngot " "no " "banks, " 
  "\nstill " "I'd " "like "  "to " ex "press " "my " "thanks. " 
  "\nΙ " "got " "the " "sun " "in " "the " morn "ing " "and " "the " "moon " "at " "night. " 

  "\nAnd " "with " "the " "sun " "in " "the " morn "ing " "and " "the " "moon " "in " "the " eve "ning, "
  "\nI'm "  "all " "right. " 
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  c8 c c c~c2
  c8 c c c~c2
  r8 \appoggiatura b c4. a8 f d4
  <d e a c>4. q8 r2 \bar "||" % 1b
  f8 f4 f8~f4. f8
  g8 g4 g8~g f d c
  d8 f4.~f2 % 1c
  <e a c>8 q q <e gis c>8~q4. c8
  f4 f f8 f4.
  g4 e d8 c4 f8~ % 1d
  f1~
  f2. r4
  aes8 4 8~4. 8 % 2a
  bes8 4 8~8 aes f e
  f8 aes4.~2
  c8 8 8 8~4. a8 % 2b
  g4 4 8 e4.
  f4 g e8 d4 c8~
  c1 % 2c
  c1
  \repeat volta 2 {
    c4 e8 f~8 4.
    c4 e8 f8~2 % 2d
    c4 e8 f~8 4 e8
    g8 f4 a8~8 c c c
    c4 bes8 a bes a g f % 3a
    g4 d8 f~f \appoggiatura b'8 c c c
    c4 bes8 a bes a g f
    g4 d8 f~2 % 3b
    c,4 e8 f~f f4.
    c4 e8 f~2c4 e8 f~8 4 e8 % 3c
    g8 f4 a8~8 c c c
    c4 bes8 a bes a g f
    g4 d8 f~8 \appoggiatura b'8 c c c % 3d
    c4 bes8 a bes a g f
    g4 d8 f~2
    <cis, fis a>4. q8~2~ % 4a
    q2 a'8 fis a b~
    b8 <c, e b'>4 q8~2
    r8 <d d'>4. b'4 a % 4b
    <b, e g>4. q8~2~
    q2 g'8 e g a~
    a8 <bes, d a'>4 q8~2 % 4c
    r8 <c c'>4. a'4 g
    c,4 e8 f~8 4.
    c4 e8 f~2 % 4d
    c4 e8 f~8 4 8
    <e g>8 <d f>4 a'8~8 c c c % 5a
    c4 bes8 a bes a g f
    g4 d8 f~8 \appoggiatura b' c c c % 5b
    c4 bes8 a bes a g f
    g4 d8 f~8 c c c % 5c
    c4 bes8 a bes a g f
    g4 f8 e f e d4~
    d2 <a d ees>4. <a d f>8~ % 5d
  }
  \alternative {
    {
      q4. <d e a c>8 r q4.
    }
    {
      <a d f>4\repeatTie <b e a>8 <d g c>~4 r
    }
  }
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  <e a>1
  <d g>1
  s1
  s1 % 1b
  <a d>1
  <g c>1
  <a d>1 % 1c
  s1
  q2 <a c>
  b2 bes4. <a d>8~ % 1d
  q2 <bes d>4. <a c d>8~
  q2. s4
  <c f>1 % 2a
  <b ees>1
  <c f>1
  <c ees>1 % 2b
  <c e>2 cis
  c2 b4. <e, bes'>8~
  q1 % 2c
  q1
  \repeat volta 2 {
    q4. <a c d>8~8 q4.
    <e bes'>4. <a c d>8~2 % 2d
    <e bes'>4. <a c d>8~8 4 r8
    a4. <c e>8~4 <ees a>
    <d g>2 c % 3a
    bes4. <a d>8~8 r4.
    r1
    r1 % 3b
    <e bes'>4. <a c d>8~8 4.
    <e bes'>4. <a c d>8~2
    <e bes'>4. <a c d>8~8 4 r8 % 3c
    a4. <c e>8~4 <ees a>
    <d g>2 c
    bes4. <a d>8~8 r4. % 3d
    s1
    s1
    s1 % 4a
    s2 cis4. <c e>8~
    q8 r r2.
    s2 <c e> % 4b
    s1
    s2 b4. <bes d>8~
    q8 s s2. % 4c
    s2 <bes d>
    <e, bes'>4. <a c d>8~8 4.
    <e bes'>4. <a c d>8~2 % 4d
    <e bes'>4. <a c d>8~8 4 r8
    a4. <c e>8~4 <ees a> % 5a
    <d g>2 c
    bes4. <a d>8~8 r4. % 5b
    r1
    r1 % 5c
    <d g>2 c
    b2 bes~
    bes2 s
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  s1\mf
  s1*5
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  <bes d>1
  <a c>1
  <g bes d f>1
  <c, bes'>4. q8 r8 c,4. \bar "||" % 1b
  <f c'>1
  <ees bes'>1
  <f c'>2 r8 c'4. % 1c
  <bes' d>8 q q q~q4. r8
  <f, c'>2 bes
  <g f'>2 <c, e'>4. f8~ % 1d
  f8 c' d r f a g f~
  f2. r4
  <aes, ees'>1 % 2a
  <ges des'>1
  ees'2 \once\partCombineApart r8 f4.
  <a, fis'>2 r8 fis4. % 2b
  g2 a
  <d a'>2 <g, f'>4. r8
  r8 d' c r bes2 % 2c
  a4 c8 aes r g4.
  \repeat volta 2 {
    ges4. f8~4 r
    ges4. f8~8 c'4. % 2d
    ges4. f8~4 r
    c4 r f f'
    <bes, f'>2 <a f'> % 3a
    <g f'>4. <f c'>8~2
    <bes' d a'>2 <a c g'>
    <g bes d f>4. <f a c d>8~2 % 3b
    ges,4. f8~4 r
    ges4. f8~8 c'4.
    ges4. f8~4 r % 3c
    c4 r f f'
    <bes, f'>2 <a f'>
    <g f'>4. <f c'>8~2 % 3d
    <bes' d a'>2 <a c g'>
    <g bes d f>4. <f a c d>8~2
    <a, g'>4. g'8~2~ % 4a
    g2 <a, g'>4. <d g>8~
    q8 4 8~2
    d,2 <d' fis> % 4b
    <g, f'>4. f'8~2~
    f2 <g, f'>4. <c f>8~
    q8 4 8~2 % 4c
    c,2 <c' e>
    ges4. f8~4 r
    ges4. f8~8 c'4. % 4d
    ges4. f8~4 r
    c4 r f f' % 5a
    <bes, f'>2 <a f'>
    <g f'>4. <f c'>8~2 % 5b
    <bes' d a'>2 <a c g'>
    <g bes d f>4. d'8~4 ees % 5c
    <bes, f'>2 <a f'> <aes f'>2 <g f'>~
    q4 d c4. <f c'>8~
  }
  \alternative {
    {
      q4. <c' bes'>8 r q4.
    }
    {
      <f, c'>4\repeatTie <ges des'>8 <f c' a'>~4 r
    }
  }
  \bar "|."
}

pianoLHtwo = \relative c {
  \global
  \voiceTwo
  \once\partCombineApart r2 \once\partCombineApart r8 c4.
  \once\partCombineApart r2 \once\partCombineApart r8 c4.
  r1
  r1 \bar "||"
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  \once\partCombineApart r4 c8 f,~f4 r % 1d++
  r1 % 2a
  r1
  aes1
  r1*5
  \repeat volta 2 {
    r1*16
    r4. g8~8 cis d g,~ % 4a
    g2 r
    r1
    r1 % 4b
    r4. g8~8 cis d g,~
    g2 r
    r1*9
    r4. <f' a c>8~2 % 5c
    r1*3
  }
  \alternative {
    {
      r1
    }
    {
      r1
    }
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    \new GrandStaff <<
      <<
        \new ChordNames { \ChordTrack }
%      \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
          \new Dynamics \dynamicsSop
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" { \wordsSopA \wordsSopB }
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    \new GrandStaff <<
      <<
        \new ChordNames { \ChordTrack }
%      \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
          \new Dynamics \dynamicsSop
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" { \wordsSopA \wordsSopB \wordsSopB }
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine {\unfoldRepeats \pianoRHone} {\unfoldRepeats  \pianoRHtwo}
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\unfoldRepeats \pianoLHone} { \unfoldRepeats \pianoLHtwo }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
    \new GrandStaff <<
      <<
        \new ChordNames { \ChordTrack }
%      \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
          \new Dynamics \dynamicsSop
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" { \wordsSopAMidi \wordsSopBMidi \wordsSopBMidi }
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine {\unfoldRepeats \pianoRHone} {\unfoldRepeats  \pianoRHtwo}
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\unfoldRepeats \pianoLHone} { \unfoldRepeats \pianoLHtwo }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}
