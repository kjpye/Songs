\version "2.25.2"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ode to Freedom"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Benny Andersson"
  arranger    = "Arr. Michael Gordon Bennett"
%  opus        = "opus"

  poet        = "Bjorn Ulvaeus"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

ct = \compoundMeter #'((3 3 2 8))

global = {
  \key f \major
  \ct
}

TempoTrack = {
  \tempo 4=75
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*4
  \mark \markup { \box "A" }
  \textMark \markup { \box "1b" } s1*4
  \textMark \markup { \box "1c" } s1*3 s2.
  \textMark \markup { \box "2a" } s1 s2.*3
  \textMark \markup { \box "2b" } s2. s1*2 s2.*2
  \mark \markup { \box "B" }
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*3 s2.
  \textMark \markup { \box "3c" } s1 s2.*4
  \textMark \markup { \box "4a" } s1*2 s2.*2
  \mark \markup { \box "C" }
  \textMark \markup { \box "4b" } s2.*4
  \textMark \markup { \box "5a" } s2.*4
  \mark \markup { \box "D" }
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "6a" } s1*3 s2.
  \textMark \markup { \box "6b" } s1 s2.*4
  \textMark \markup { \box "7a" } s1*2 s2.*2
  \mark \markup { \box "E" }
  \textMark \markup { \box "7b" } s2. s1*2 s2.*2
  \textMark \markup { \box "8a" } s2.*4
  \textMark \markup { \box "8b" } s2.*5
}

dynamicsWomen = {
  s1*8
  s8 s\p s2. | s1 | s | s2. | % 1c
  s8 s\mp s2. | s2. | s | s2 s4\mf | % 2a
  s2. | s1 | s1\> | s2.\p | s |
  s8 s\mp s2. | s1 | s | s | % 3a
  s1*3 | s2. |
  s1 | s2.*3 | s2.\< |
  s1 | s4\mf s2.\> | s2.\p | s | % 4a
  s2.\p\cresc | s | s | s2 s4\mf |
  s2.\mp\cresc | s | s | s\f | % 5a
  s8 s\mp s2. | s1 | s | s |
  s1 | s | s8 s\< s2. | s4. s\mf | % 6a
  s8 s\mp s2. | s | s | s | s |
  s1 | s | s2. | s2 s4\mf | % 7a
  s2. | s1 | s | s2. | s |
  s2.\p\cresc | s | s | s\mf | % 8a
  s2.\mp\cresc | s | s | s\f\> | s2 s8 s\p |
}

soprano = \relative {
  \global
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3,2
  R1*8 |
  r8 bes'~(16 a c8~8 bes a g) | % 1c
  r8 bes~(16 a c8~8 bes4.) |
  r8 bes~(16 a c8~8 bes a g \time 6/8 |
  f8. g16 a8~4.) \ct |
  r8 a8~(16 g bes8~8 a g f \time 6/8 | % 2a
  e8. f16 g8~4) r8 |
  g8.(f16 a8~8 g4 |
  f4.) r8 a4( |
  bes2. \ct | % 2b
  a8. g16 bes4 a8 g4 f8 |
  g8. f16 a4 g8 f4 e8 \time 6/8 |
  f2.) |
  R2. \ct |
  r8 a8~16 g bes8~8 a g f | % 3a
  r8 a8~16 g bes8~8 a4. |
  r8 a8~16 g bes8~8 a g f |
  e8. f16 g2 r4 |
  R1 | % 3b
  r8 bes8~16 a c8~8 bes4. |
  r8 bes8~16 a c8~8 bes a g \time 6/8 |
  f8. g16 a8~4. \ct |
  r8 a8. g16 bes8~8 a g f \time 6/8 | % 3c
  e8. f16 g8~4. |
  g8. f16 a8~8 g4 |
  f4. r8 a4 |
  d,4. r8 bes'4 \ct |
  a8. g16 bes4 a8 g4 f8 | % 4a
  g8. f16 a4 g8 f4 e8 \time 6/8 |
  f2. |
  R2. \section |
  f2.( | aes | c~ | c2~8) r | % 4b
  f,2.( | aes | c~ | c) \ct | % 5a
  r8 a~16 g bes8~8 a g f | r8 a~16 g bes8~8 a4. | r8 a~16 g bes8~8 a g f | e8. f16 a2 r4 |
  R1 | r8 bes~16 a c8~8 bes4. | r8 bes8~16 a c8~8 bes a g \time 6/8 | f8. g16 a8~4. \ct | % 6a
  r8 a~16 g bes8~8 a g f \time 6/8 | e8. f16 g8~4 r8 | g8. f16 a8~8 g4 | f4. r8 a4 | d,4. r8 bes'4 \ct |
  a8. g16 bes4 a8 g4 f8 | g8. f16 a4 g8 f4 e8 \time 6/8 | f2. \time 6/8 | r4. r8 a4 | % 7a
  bes4. r8 d4 \ct | <a c>8. <g c>16 <bes c>4 <a c>8 <g c>4 <f a>8 | g8. f16 a4 g8 f4 e8 \time 6/8 | f2. | R |
  f2.( | aes | c~ | c) | % 8a
  f,2.( | aes | c~ | c~ | c) |
  \bar "|."
}

wordsWomen = \lyricmode {
  Mm __ mm __ mm __
  Oo __ oo __
  Ah __
  If I ev -- er write my ode to free -- dom,
  It would be __ in prose that chimes with me.
  ode to free -- dom,
  not pre -- ten -- tious but with dig -- ni -- ty. __
  I would like to think that free -- dom is __
  more than just a word.
  In grand and lof -- ty lan -- guage
  odes to free -- dom of -- ten go un -- heard.

  Ah __ Ah __
  If I ev -- er write my ode to free -- dom,
  be -- ing priv -- i -- leged and spoilt for choice.

  be sus -- pi -- cious of __ the cause to which I'd lend my voice.
  It's e -- lus -- ive and it's hard to hold.
  It's a fleet -- ing thing.
  That's why, there is no ode to free -- dom
  tru -- ly worth re -- mem -- ber -- ing.
  I wish some -- one would write an ode to free -- dom
  that we all could sing.
  Ah __ Ah __
}

wordsWomenMidi = \lyricmode {
  "Mm "  "mm "  "mm " 
  "\nOo "  "oo " 
  "\nAh " 
  "\nIf " "I " ev "er " "write " "my " "ode " "to " free "dom, "
  "\nIt " "would " "be "  "in " "prose " "that " "chimes " "with " "me. "
  "\node " "to " free "dom, "
  "\nnot " pre ten "tious " "but " "with " dig ni "ty. " 
  "\nI " "would " "like " "to " "think " "that " free "dom " "is " 
  "\nmore " "than " "just " "a " "word. "
  "\nIn " "grand " "and " lof "ty " lan "guage "
  "\nodes " "to " free "dom " of "ten " "go " un "heard. "

  "\nAh "  "Ah " 
  "\nIf " "I " ev "er " "write " "my " "ode " "to " free "dom, "
  "\nbe" "ing " priv i "leged " "and " "spoilt " "for " "choice. "

  "\nbe " sus pi "cious " "of "  "the " "cause " "to " "which " "I'd " "lend " "my " "voice. "
  "\nIt's " e lus "ive " "and " "it's " "hard " "to " "hold. "
  "\nIt's " "a " fleet "ing " "thing. "
  "\nThat's " "why, " "there " "is " "no " "ode " "to " free "dom "
  "\ntru" "ly " "worth " re mem ber "ing. "
  "\nI " "wish " some "one " "would " "write " "an " "ode " "to " free "dom "
  "\nthat " "we " "all " "could " "sing. "
  "\nAh "  "Ah " 
}

alto = \relative {
  \global
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3,2
  s1*11 s2. s1 s2.*2 | s2 f'4(
  d2 f4~ | 1 | e8. f16 e4~8 f4 e8 | c2.) | R | % 2b
  s1*4 | % 3a
  s1 | s8 d~16 16 8~8 4. | s1 | s2. |
  s1 s2.*4 |
  s1 | s1 | s2. | s2. | % 4a
  des2.( | f | a~ | 2~8) s |
  des,2.( | des | g~ | g) | % 5a
  s1 | s | s8 a~16 g f8~8 8 8 c | s1 |
  s1 | s8 d~16 16 8~8 4. | s8 g~16 a g8~8 8 e e | c8. f16 8~4. | % 6a
  r8 f~16 16 8~8 8 8 8 | e8. f16e8~4 r8 | e8. f16 e8~8 4 | d4. r8 a'4 | d,4. r8 f4 |
  f8. 16 4 8 4 c8 | e8. f16 e4 8 f4 e8 | c2. | r4. r8 f4 | % 7a
  d4. r8 f4 | 8. 16 4 8 4 c8 | e8. f16 e4 8 d4 e8 | c2. | R |
  des2.( | f | a~ | a) | % 8a
  des,2.~( | des | a'~ | a~ | a) |
  \bar "|."
}

altoApart = \relative {
  \global
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3,2
  R1*8 |
  r8 bes'~(16 a c8~8 bes a g) | % 1c
  r8 bes~(16 a c8~8 bes4.) |
  r8 bes~(16 a c8~8 bes a g \time 6/8 |
  f8. g16 a8~4.) \ct |
  r8 a8~(16 g bes8~8 a g f \time 6/8 | % 2a
  e8. f16 g8~4) r8 |
  g8.(f16 a8~8 g4 |
  f4.) r8 f4( |
  d2 f4~ | 1 | e8. f16 e4~8 f4 e8 | c2.) | R | % 2b
  r8 a'8~16 g bes8~8 a g f | % 3a
  r8 a8~16 g bes8~8 a4. |
  r8 a8~16 g bes8~8 a g f |
  e8. f16 g2 r4 |
  R1 | s8 d~16 16 8~8 4. | r8 bes'8~16 a c8~8 bes a g \time 6/8 | % 3b
  f8. g16 a8~4. \ct |
  r8 a8. g16 bes8~8 a g f \time 6/8 | % 3c
  e8. f16 g8~4. |
  g8. f16 a8~8 g4 |
  f4. r8 a4 |
  d,4. r8 bes'4 \ct |
  a8. g16 bes4 a8 g4 f8 | % 4a
  g8. f16 a4 g8 f4 e8 \time 6/8 |
  f2. |
  R2. \section |
  des2.( | f | a~ | 2~8) r | % 4b
  des,2.( | des | g~ | g) | % 5a
  r8 a~16 g bes8~8 a g f | r8 a~16 g bes8~8 a4. | r8 a~16 g f8~8 8 8 c | e8. f16 a2 r4 |
  R1 | r8 d,~16 16 8~8 4. | r8 g~16 a g8~8 8 e e | c8. f16 8~4. | % 6a
  r8 f~16 16 8~8 8 8 8 | e8. f16e8~4 r8 | e8. f16 e8~8 4 | d4. r8 a'4 | d,4. r8 f4 |
  f8. 16 4 8 4 c8 | e8. f16 e4 8 f4 e8 | c2. | r4. r8 f4 | % 7a
  d4. r8 f4 | 8. 16 4 8 4 c8 | e8. f16 e4 8 d4 e8 | c2. | R |
  des2.( | f | a~ | a) | % 8a
  des,2.~( | des | a'~ | a~ | a) |
  \bar "|."
}

dynamicsMen = {
  s1*4
  s8 s\p s2. | s1 | s | s | % 1b
  s1 | s | s | s2. |
  s8 s\mp s2. | s2. | s | s2 s4\mf | % 2a
  s2. | s1 | s1\> | s2.\p | s |
  s1 | s8 s\mp s2. | s1 | s | % 3a
  s1*3 | s2. |
  s1 | s2.*3 | s2.\< |
  s1 | s4\mf s2.\> | s2.\p | s | % 4a
  s2.\p\cresc | s | s | s2 s4\mf |
  s2.\mp\cresc | s | s | s\f | % 5a
  s1 | s8 s\mp s2. | s1 | s |
  s1 | s | s8 s\< s2. | s4. s\mf | % 6a
  s8 s\mp s2. | s | s | s | s |
  s1 | s | s2. | s2 s4\mf | % 7a
  s2. | s1 | s | s2. | s |
  s2.\p\cresc | s | s | s\mf | % 8a
  s2.\mp\cresc | s | s | s\f\> | s2 s8 s\p |
}

tenor = \relative {
  \global
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3,2
  R1*4 |
  r8 a8^\markup unison ~(16 g bes8~8 a g f) | r8 a~(16 g bes8~8 a4.) | r8 a~(16 g bes8~8 a g f | e8. f16 g2.) |
  r8 bes~(16 a c8~8 bes a g) | r bes~(16 a c8~8 bes4.) | r8 bes8~(16 a c8~8 bes a g \time 6/8 | f8. g16 a8~4.) \ct |
  r8 a~(16 g bes8~8 a g f \ct | e8. f16 g8~4) r8 | g8.(f16 a8~8 g4 | f4.) r8 c'4( \section | % 2a
  bes2 d4 \ct | c2.~8 a | g1 \time 6/8 | a2.) | R \ct |
  R1 | r8 c~16 16 8~8 4. | r8 a~16 g bes8~8 a g f | e8. f16 g2 r4 | % 3a
  r8 bes8~16 a c8~8 bes a g | r bes8~16 16 8~8 4. | r8 bes8~16 a c8~8 bes a g \time 6/8 | f8. g16 a8~4. \ct |
  r8 a8. g16 bes8~8 a g f \time 6/8 | e8. f16 g8~4. | g8. f16 a8~8 g4 | f4. r8 a4 | d,4. r8 bes'4 \ct |
  a8. g16 bes4 a8 g4 f8 | g8. f16 a4 g8 f4 e8 \time 6/8 | f2. | R \section | % 4a
  f2.( | des' c~  c2~8) r |
  aes2.( | des | e~ | e) \ct | % 5a
  R1 | r8 c~16 16 8~8 4. | r8 c~16 16 8~8 a g a | g8. a16 c2 r4 |
  r8 bes~16 a c8~8 bes a g | r bes~16 16 8~8 4. | r8 c~16 16 8~8 8 8 bes \time 6/8 | a8. c16 8~4. \ct | % 6a
  r8 cis~16 16 8~8 8 8 8 \time 6/8 | 8. 16 8~4 r8 | 8. 16 8~8 4 | a4. r8 c4 | bes4. r8 d4 \ct |
  c8. 16 4 8 4 a8 | g8. 16 4 8 4 8 \time 6/8 | a2. \time 6/8 | r4. r8 c4 | % 7a
  4. r8 d4 \ct | c8. 16 4 8 4 a8 | g8. 16 a4 g8 4 8 \time 6/8 | a2. | R \section |
  f2.( | aes | c~ | c) | % 8a
  aes2.( | des | c~ | c~ | c) |
  \bar "|."
}

wordsMen = \lyricmode {
  Mm __ mm __ mm __
  Mm __ mm __ mm __
  Oo __ oo __
  Ah __
  ode to free -- dom,
  It would be __ in prose that chimes with me.
  If I ev -- er write my ode to free -- dom,
  not pre -- ten -- tious but with dig -- ni -- ty. __
  I would like to think that free -- dom is __
  more than just a word.
  In grand and lof -- ty lan -- guage
  odes to free -- dom of -- ten go un -- heard.

  Ah __ Ah __
  ode to free -- dom,
  be -- ing priv -- i -- leged and spoilt for choice.

  Then I fear __ that you would be sus -- pi -- cious
  of __ the cause to which I'd lend my voice.
  It's e -- lus -- ive and it's hard to hold.
  It's a fleet -- ing thing.
  That's why, there is no ode to free -- dom
  tru -- ly worth re -- mem -- ber -- ing.
  I wish some -- one would write an ode to free -- dom
  that we all could sing.
  Ah __ Ah __
}

wordsMenMidi = \lyricmode {
  "Mm "  "mm "  "mm " 
  "\nMm "  "mm "  "mm " 
  "\nOo "  "oo " 
  "\nAh " 
  "\node " "to " free "dom, "
  "\nIt " "would " "be "  "in " "prose " "that " "chimes " "with " "me. "
  "\nIf " "I " ev "er " "write " "my " "ode " "to " free "dom, "
  "\nnot " pre ten "tious " "but " "with " dig ni "ty. " 
  "\nI " "would " "like " "to " "think " "that " free "dom " "is " 
  "\nmore " "than " "just " "a " "word. "
  "\nIn " "grand " "and " lof "ty " lan "guage "
  "\nodes " "to " free "dom " of "ten " "go " un "heard. "

  "\nAh "  "Ah " 
  "\node " "to " free "dom, "
  "\nbe" "ing " priv i "leged " "and " "spoilt " "for " "choice. "

  "\nThen " "I " "fear "  "that " "you " "would " "be " sus pi "cious "
  "\nof "  "the " "cause " "to " "which " "I'd " "lend " "my " "voice. "
  "\nIt's " e lus "ive " "and " "it's " "hard " "to " "hold. "
  "\nIt's " "a " fleet "ing " "thing. "
  "\nThat's " "why, " "there " "is " "no " "ode " "to " free "dom "
  "\ntru" "ly " "worth " re mem ber "ing. "
  "\nI " "wish " some "one " "would " "write " "an " "ode " "to " free "dom "
  "\nthat " "we " "all " "could " "sing. "
  "\nAh "  "Ah " 
}

bass = \relative {
  \global
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3,2
  s1*11 | s2. | s1 | s2.*2 s2 f4~( |
  f2.~ | 2~8 g4 f8 | c1 | f,2.) | R | % 2b
  R1 | r8 f'~16 16 8~8 4. | s1 | s | % 3a
  s1 | r8 g~16 16 8~8 4. | s1 | s2. |
  s1 | s2. | s | s | s |
  s1 | s1 | s2. | s2. | % 4a
  des2.( | f~ | f~ | 2~8) r |
  f2.~( f | c~ | c) | % 5a
  R1 | r8 f~16 16 8~8 4. | r8 f~16 g f8~8 c c c | 8. 16 e2 r4 |
  s1 | r8 g~16 16 8~8 4. | r8 e~16 16 8~8 8 c c | f8. 16 8~4. | % 6a
  r8 f~16 16 8~8 8 8 a | 8. 16 8~4 r8 | 8. 16 8~8 4 | f4. r8 4 | 4. r8 f4 |
  f8. 16 4 8 g4 f8 | c8. 16 4 8 4 8 | f2. | r4. r8 f4 | % 7a
  f4. r8 bes4 | f8. 16 4 8 g4 f8 | c8. 16 4 8 4 8 | f2. | s |
  des2.( | f | a~ | a) | % 8a
  des,2.~( | 2. | a'~ | a~ | a) |
  \bar "|."
}

bassApart = \relative {
  \global
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3,2
  R1*4 |
  r8 a8^\markup unison ~(16 g bes8~8 a g f) | r8 a~(16 g bes8~8 a4.) | r8 a~(16 g bes8~8 a g f | e8. f16 g2.) |
  r8 bes~(16 a c8~8 bes a g) | r bes~(16 a c8~8 bes4.) | r8 bes8~(16 a c8~8 bes a g \time 6/8 | f8. g16 a8~4.) \ct |
  r8 a~(16 g bes8~8 a g f \ct | e8. f16 g8~4) r8 | g8.(f16 a8~8 g4 | f4.) r8 f4( \section | % 2a
  f2.~ | 2~8 g4 f8 | c1 | <f, f'>2.) | R | % 2b
  R1 | r8 f'~16 16 8~8 4. | r8 a~16 g bes8~8 a g f | e8. f16 g2 r4 | % 3a
  r8 bes8~16 a c8~8 bes a g | r g8~16 16 8~8 4. | r8 bes8~16 a c8~8 bes a g \time 6/8 | f8. g16 a8~4. \ct |
  r8 a8. g16 bes8~8 a g f \time 6/8 | e8. f16 g8~4. | g8. f16 a8~8 g4 | f4. r8 a4 | d,4. r8 bes'4 \ct |
  a8. g16 bes4 a8 g4 f8 | g8. f16 a4 g8 f4 e8 \time 6/8 | f2. | R \section | % 4a
  des2.( | f~ | f~ | 2~8) r |
  f2.~( f | c~ | c) | % 5a
  R1 | r8 f~16 16 8~8 4. | r8 f~16 g f8~8 c c c | c8. 16 e2 r4 |
  r8 bes'~16 a c8~8 bes a g | r g~16 16 8~8 4. | r8 e~16 16 8~8 8 c8 8 \time 6/8 | f8. 16 8~4. \ct | % 6a
  r8 f~16 16 8~8 8 8 a | 8. 16 8~4 r8 | 8. 16 8~8 4 | f4. r8 4 | 4. r8 f4 |
  f8. 16 4 8 g4 f8 | c8. 16 4 8 4 8 | f2. | r4. r8 f4 | % 7a
  f4. r8 bes4 | f8. 16 4 8 g4 f8 | c8. 16 4 8 4 8 | f2. | R |
  des2.( | f | a~ | a) | % 8a
  des,2.~( | 2. | a'~ | a~ | a) |
  \bar "|."
}

pianoRHone = \relative {
  \global
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3,2
  <c' f a c>2. <c f g c>4 |
  <c f bes>4. <c f a c>4. a'8 f |
  a,8-> c f a,-> c f a,-> g |
  f8-> a c a-> c f a,-> g \section |
  f8-> c' f bes,-> c f c-> a | % 1b
  f8-> a c bes-> c f c-> a |
  f8-> c' f bes,-> c f c-> a |
  g8-> c e c-> ~c16 g' bes8 g-> e |
  c8-> e g c,-> e g c,-> bes | % 1c
  g8-> bes d g,-> bes d bes-> g |
  e8-> g c g-> c e c-> g |
  \time 6/8 f8-> a c f-> a c \compoundMeter #'((3 3 2 8)) |
  cis,8-> a' cis, g'-> bes e, g-> f \time 6/8 | % 2a
  e8.-> f16 g8 f-> e d |
  cis8.-> d16 e8 cis-> d e |
  d8-> a' d f-> a4 \section |
  f,8-> bes d bes-> f d \ct | % 2b
  f8.-> c16 f8 c'-> c, f c'-> f, |
  c8.-> g'16 c8 c,-> g' c c,-> g' \time 6/8 |
  f8-> a, c f-> a c |
  <a c f>2. \ct |
  f,8-> c' f bes,-> c f c-> a | % 3a
  f8-> a c bes-> c f c-> a |
  f8-> c' f bes,-> c f c-> a |
  g8-> c e c->~16 g' bes8 g-> e |
  c8->e g c-> e, g c,-> bes | % 3b
  g8-> bes d g,-> bes d bes-> g |
  e8-> g c g-> c e c-> g \time 6/8 |
  f8-> a c f-> a c \ct
  cis,8-> a' cis, g'-> bes e, g-> f \time 6/8 | % 3c
  e8.-> f16 g8 f-> e d |
  cis8.-> d16 e8 cis-> d e |
  d8-> a' d f-> a4 |
  f,8-> bes d bes-> f d \ct |
  f8.-> c16 f8 c'-> c, f c'-> f, | % 4a
  c8.-> g'16 c8 c,-> g' c c,-> g' \time 6/8 |
  f8-> a, c f-> a c |
  <a c f>4.-> <c f a>4-> <f, a c>8 \section |
  <f aes des>4.-> <aes des f>8-> des f | % 4b
  <aes, des f aes>4.-> <f aes des f>-> |
  <f a c f>4.-> <a c a'>8-> f' c |
  <a c a'>8-> f' c q-> f c |
  <f, aes des>4.-> <aes des f>8-> des f | % 5a
  <aes, des f aes>4.-> <f aes des f>-> |
  <g c e g>2.~ |
  q2. \section \ct |
  f,8-> c' f bes,-> c f c-> a | % 5b
  r8 a c bes-> c f c-> a |
  f8-> c' f bes,-> c f c-> a |
  g8-> c e c-> ~16 g' bes8 g-> e |
  c-> e g c,-> e g c,-> bes | % 6a
  g8-> bes d g,-> bes d bes-> g |
  e8-> g c g-> c e c-> g \time 6/8 |
  f8-> a c f-> a c \ct |
  cis,8-> a' cis, f-> bes f g-> f \time 6/8 | % 6b
  e8.-> f16 g8 e-> cis a |
  cis8.-> d16 e8 cis-> d e |
  f16-> a d a f' a d8-> r r |
  f,,8-> bes d bes-> f d \ct |
  <f a c>8. g16 <f bes c>4 <f a c>8 <f g c>4 <f a c>8 | % 7a
  <e g c>8. f16 <e a c>4 <e g c>8 <f g c>4 <e g c>8 \time 6/8 |
  f8-> a c, f-> a c \time 6/8 |
  f16-> c bes a bes c f-> c f g a8
  d,8-> bes f d-> f bes \ct | % 7b
  <f a c>8. g16 <f bes c>4 <f a c>8 <f g c>4 <f a c>8 |
  <e g c>8. f16 <e a c>4 <e g c>8 <f g c>4 <e g c>8 \time 6/8 |
  f8-> a c, f-> a c |
  <a c f>4.-> <c f a>4-> <c, c'>8 \section |
  <f des'>4-> 8 4-> 8 | % 8a
  <aes f'>4-> 8 4-> 8 |
  \repeat unfold 2 {a'16-> f c a' f c a'-> f c a' f c |}
  <des f aes>4.-> 8-> 8 8 | % 8b
  <f aes des>4.-> 8-> 8 8 |
  a16-> f c a' f c a'-> f c a' f c |
  f16-> c f c f a f-> c f a c a |
  <f c' f>8-> 8 8 8-> 8 8 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3,2
  s1 | s2. c'4 | s1 | s |
  s1*4 |
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s | s | s |
  s1*4 |
  s1*3 s2. |
  s1\p | s2. | s | s | % 2a
  s2. | s1 | s\> | s2.\p | s |
  s1\mp | s | s | s | % 3a
  s1 | s | s | s2. |
  s1\p | s2. | s | s | s\< |
  s1 | s4\mf s2.\> | s\p | s | % 4a
  s2.\p\cresc | s | s | s\mf |
  s2.\mp\< | s | s | s\f | % 5a
  s1\mp | s | s | s |
  s1 | s | s\< | s4 s2\mf | % 6a
  s1\mp | s2. | s | s | s |
  s1 | s | s2. | s2 s4\mf | % 7a
  s2. | s1 | s | s2. | s |
  s2.\p\cresc | s | s | s\mf | % 8a
  s2.\mp | s | s | s\f\> | s2 s8 s\p |
}

pianoLHone = \relative {
  \global
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3,2
  <f, f'>4. 4. r8 <c c'> |
  <f f'>4. q4 c'8 f bes, |
  f4. 4. r8 c' |
  f,4. 4. r8 c' \section |
  f,4. f'4. r8 c | % 1b
  f,4. f'4. r8 c |
  f,4. f'4. r8 c |
  4. 4. r8 g |
  c4. 4. r8 c | % 1c
  g4. d'4. r8 g, |
  c4. 4. r8 8 \time 6/8 |
  f,4. f'4 f,8 \ct |
  cis'4. cis'4. r8 cis,8 \time 6/8 | % 2a
  a4. g'4 e8 |
  a,4. e'4 a,8 |
  f4. d'4 a8 \section |
  bes4. f4 d'8 \ct | % 2b
  f4. f,4. r8 f |
  c'4. 4. r8 c \time 6/8 |
  f,4. 4 c8 |
  f8 c' f a c, a \ct |
  f4. f' r8 c | % 3a
  f,4. f' r8 c |
  f,4. f' r8 c |
  c4. c r8 g |
  c4. 4. r8 8 | % 3b
  g4. d' r8 g, |
  c4. 4. r8 8 \time 6/8 |
  f,4. f'4 f,8 \ct |
  cis'4. cis' r8 cis, \time 6/8 | % 3c
  a4. g'4 e8 |
  a,4. e'4 a,8 |
  f4. d'4 a8 |
  bes4. f4 d'8 \ct |
  f4. f, r8 f | % 4a
  c'4. c r8 c \time 6/8 |
  f,4. 4 c8 |
  f8 c' f a c, a \section |
  <f des'>8 f' aes <f f'>4. | % 4b
  <f, des'>8 f' aes <aes f'> des aes |
  <f, f'>8 a' c <a f'> c a |
  <f, f'>4. <a a'>4 <c c'>8 |
  <f, des'>8 f' aes <f f'>4. | % 5a
  <f, des'>8 f' aes <aes f'> des aes |
  <c,, c'>8 e' g c e g |
  <e, e'>8 c' bes <g, g'> e' d \section \ct |
  f,4. f' r8 c | % 5b
  f,4. f' r8 c |
  f,4. f' r8 c |
  c4. c r8 g |
  c4. c r8 c | % 6a
  g4. d' r8 g, |
  c4. e r8 c \time 6/8 |
  f,4. f'4 f,8 \ct |
  cis'4. cis' r8 cis, \time 6/8 | % 6b
  a4. g'4 a,8 |
  a4. e'4 a,8 |
  d,4. d'4 a8 |
  bes4. f4 d'8 \ct |
  f8 c f c a c g' f | % 7a
  c8 g' c, g c g' f g \time 6/8 |
  <f, f'>4. 4 <c c'>8 \time 6/8 |
  f8 c' f a c, a |
  <bes bes'>4. <f f'>4 <d' d'>8 \ct | % 7b
  f8 c f c a c g' f |
  c8 g' c, g c g' f g \time 6/8 |
  <f, f'>4. 4 <c c'>8 |
  f8 c' f a c, a \section |
  <f des'>8 f' aes q f aes | % 8a
  q8 f aes q f aes |
  <f, c'>8 f' a q f a |
  q8 f a q f a |
  <f, des'>8 f' aes q f aes | % 8b
  q8 f aes q f aes |
  <f, f'>8 a' c q a c |
  q8 a c q a c |
  <f,, f'>2. |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3,2
  s1
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsWomen
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsWomen
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsWomen
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsWomenMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \altoApart
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsMen
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsMen
            \clef "bass"
            \new Voice \bassApart
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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

\book {
  \bookOutputSuffix "midi-men"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \altoApart
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsMen
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMenMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsMen
            \clef "bass"
            \new Voice \bassApart
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
