\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Autumn Leaves"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Joseph Kosma"
  arranger    = "Arr. Paris Rutherford"
%  opus        = "opus"

  poet        = "Johnny Mercer"
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
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo "Swing feel" 4=160
  s1
  \set Score.tempoHideNote = ##t
  s1*115
  \tempo 4=150
  s1*4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "3a" } s1*3
  \mark \markup { \circle "3b" } s1*4
  \mark \markup { \circle "3c" } s1*4
  \mark \markup { \circle "4a" } s1*3
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \circle "4c" } s1*3
  \mark \markup { \circle "5a" } s1*3
  \mark \markup { \circle "5b" } s1*3
  \mark \markup { \circle "5c" } s1*3
  \mark \markup { \circle "6a" } s1*3
  \mark \markup { \circle "6b" } s1*3
  \mark \markup { \circle "6c" } s1*3
  \mark \markup { \circle "7a" } s1*3
  \mark \markup { \circle "7b" } s1*3
  \mark \markup { \circle "7c" } s1*3
  \mark \markup { \circle "8a" } s1*3
  \mark \markup { \circle "8b" } s1*3
  \mark \markup { \circle "8c" } s1*3
  \mark \markup { \circle "9a" } s1*4
  \mark \markup { \circle "9b" } s1*3
  \mark \markup { \circle "10a" } s1*3
  \mark \markup { \circle "10b" } s1*3
  \mark \markup { \circle "11a" } s1*3
  \mark \markup { \circle "11b" } s1*4
  \mark \markup { \circle "12a" } s1*4
  \mark \markup { \circle "12b" } s1*4
  \mark \markup { \circle "12c" } s1*4
  \mark \markup { \circle "13a" } s1*4
  \mark \markup { \circle "13b" } s1*3
  \mark \markup { \circle "13c" } s1*3
  \mark \markup { \circle "14a" } s1*4
  \mark \markup { \circle "14b" } s1*4
  \mark \markup { \circle "14c" } s1*4
  \mark \markup { \circle "15a" } s1*3
  \mark \markup { \circle "15b" } s1*3
  \mark \markup { \circle "15c" } s1*4
}

ChordTrack = \tripletFeel 8 \chordmode {
  s2 b4.:7sus bes8:m7.5-
  s1
  a2..:m7 gis8:m7.5+
  s1 % 3b
  s2 g4.:13 fis8:7+
  s1
  s2 c:maj7.5-
  s1 % 3c
  s2 a4.:m7 d8:7
  s1
  s2 g4.:maj7 c8:maj7
  s1 % 4a
  fis2..:m7.5- b8:7
  s1
  e1:m % 4b
  s1
  a1:m
  d2:7sus aes4.:7 g8:maj7 % 4c
  s1
  c1:maj7
  fis1:m7.5- % 5a
  b1:7
  e1:m
  s1 % 5b
  a1:m6/b
  s1
  g1:maj7/b % 5c
  s2 bes:dim7
  a1:m7
  g2:m7 f4.:m7 e8:m7 % 6a
  s1
  s2 g:7
  fis1:m7.5- % 6b
  s2 b:aug7
  e1:m7
  s1 % 6c
  a2:2/cis c:7
  b2:7 b:aug7
  s2 f4.:maj7 fis8:7 % 7a
  s1
  s8 g:7 s2 s8 aes:7
  s1 % 7b
  a1:m7
  d1:7sus
  g1:maj7 % 7c
  c1:maj7
  fis1:m7.5-
  b1:aug7 % 8a
  e1:m7
  s1
  a1:m7 % 8b
  d2:7sus d:9
  g1:maj7
  c1:6.9 % 8c
  fis1:m7.5-
  a2:m/b b:7
  e1:m7 % 9a
  s1
  s4 a4.:m6/b c:13
  a1:m6/b
  s4 b2.:m7 % 9b
  s2 bes:7
  a1:m7
  d2:13 aes:maj7 % 10a
  g1:maj7
  c1:maj7
  fis1:m7.5- % 10b
  a2:m fis:dim7
  e2:m7 b/dis
  d2:m7 g:13 % 11a
  a2:2/cis c4.:7 b8:7
  s1
  s2 bes4.:7.5- a8:7 % 11b
  s1
  s8 fis:7 s4 f4.:maj7 e8
  s1
  a1:m7 % 12a
  d1:7
  g1:maj7
  c1/e
  fis1:m7.5- % 12b
  b1:7
  e1:m7
  s1
  a1:m7 % 12c
  d2:7sus d:7
  g1:maj7
  c1
  fis1:m7.5-
  b1:7
  e1:m
  c1/e
  e1:m6 % 13b
  e1:aug7
  bes1:m6/c
  s1 % 13c
  aes:2/c
  s2 ces:dim
  bes1:m7 % 14a
  aes2:m7 fis4.:m7 f8:m7
  s1
  s2  aes:7
  g1:m7.5- % 14b
  c2:7 c:aug7
  f1:m7
  s1
  bes2:2/d des:7 % 14c
  c2:7 c:aug7
  s2 bes4.:7.5- bes8:9
  s1
  s2 bes4.:m7 ees8:9 % 15a
  s1
  aes1:13
  des1:maj7 % 15b
  bes1:m7
  ees1:9sus
  g1:m7.5- % 15c
  ges2:maj7
  f1:5
  s1
}

solo = \tripletFeel 8 \relative {
  \global
  R1*57
  r2 dis'4 e % 9a+
  fis4 g8 fis~2~
  fis4 a8 g~4 e4~
  e4 g2.~ % 9b
  g8 e fis g a b c4
  d4 c8 b a2
  r4 g8 b fis fis4 8~ % 10a
  fis8 a e4 2
  r2 r8 d4.
  b8 c4 b'8~4. a8~ % 10b
  a8 g fis2 d'4
  b4(a8) g8~4. d8
  f4 e8 d c d b g % 11a
  a2~4. 8
  b4 4 dis4. g8~
  g4 fis8 e~2~ % 11b
  e4. b8 fis' g fis e~
  e1~
  e2~8 r r4^\markup\italic "end Solo" \break
  R1*44
}

wordsSolo = \lyricmode {
  Since you went a -- way __ the days grow __ long __
  boo duh duh duh duh da duh duh duh duh
  duh duh duh dut duh __ buh dut duh buh
  I miss you __ most __ of all,
  my dar -- ling. __
  Buh duh duh duh duh duh doo 'n duh __
  'n oo dut dut buh. __ duh duh __
  "(th)" start t' fall. __
}

wordsSoloMidi = \lyricmode {
  "Since " "you " "went " a "way "  "the " "days " "grow "  "long " 
  "\nboo " "duh " "duh " "duh " "duh " "da " "duh " "duh " "duh " "duh "
  "\nduh " "duh " "duh " "dut " "duh "  "buh " "dut " "duh " "buh "
  "\nI " "miss " "you "  "most "  "of " "all, "
  "\nmy " dar "ling. " 
  "\nBuh " "duh " "duh " "duh " "duh " "duh " "doo " "'n " "duh " 
  "\n'n " "oo " "dut " "dut " "buh. "  "duh " "duh " 
  "\n(th) " "start " "t' " "fall. " 
}

soprano = \tripletFeel 8 \relative {
  \global
  R1*7 |
  r4^\markup Unis. e'8^\mf fis~8 g4 c8~ | % 3c
  c1~ |
  c8 d,4 e8~4 fis |
  b4. 8~2~
  b4 r8 c,^\markup Unis. d e4 a8~ % 4a
  a1~
  a8 b,4.^\markup Unis. cis4 dis
  g1~ % 4b
  g8 r e4 fis8 g4 c8~
  c1~
  c4 d, d'8 c4 b8~ % 4c
  b4. b8~2
  r4 b8^\markup Unis. 8~8 c4 a8~
  a1 % 5a
  \once\partCombineApart r4 fis a g8 e~
  e1~
  e8 r r4 dis^\markup Unis. e % 5b
  fis4 b,8 fis'~2~
  fis4 8 e~4 fis
  g1~ % 5c
  g8 4. fis8 g4 a8~
  a2~8 d,4.
  b'2 c4. b8~ % 6a
  b1~
  b2 \tuplet 3/2 {r4 ais^\markup Unis. b}
  c4 c a a8 fis~ % 6b
  fis2 c'
  b4(c8) b8~2~
  b2 e, % 6c
  a2 g
  fis2 g4^\markup Unis. b,8 e~
  e1~ % 7a
  e2~4. r8
  R1
  r4 e8 b dis e fis g~ % 7b
  g4 fis8 e~2~
  e4 r8 e fis g4 a8~
  a2 g8 fis e g~ % 7c
  g4. fis8^\markup Unis. g4 a
  b4 c8 a~4. d8
  r8 c4 b8 a g4 a8~ % 8a
  a4. b8~2^\< ~
  b8\! r r4 b,8^\markup Unis. c d e~
  e4 fis8 g~4. e'8 % 8b
  r8 d r c^\markup Unis. b a r fis~
  fis4 g8 d'~4 g,8 fis~
  fis4. dis8^\markup Unis. e g a b~ % 8c
  b4 c8 a~2
  r8 fis4 a8 g4 8 e~
  e1~ % 9a
  e2~8 r r4
  R1*35
  r2 e4^\markup Unis. f \bar "||" \key aes \major % 13b+
  g4 c,8 g'~2~
  g4 8 f~4 g % 13c
  aes1~
  aes8 4. g8 aes4 bes8~
  bes2~8 ees,4. % 14a
  ees'2 cis4. c8~
  c1~
  c2 \tuplet 3/2 {r4 b^\markup Unis. c}
  des4 des bes bes8 g~ % 14b
  g2 des'
  c4(des8) c~ c2~
  c2 f,
  r4 bes~8 aes4. % 14c
  g4. g8^\markup Unis. (aes4) c,8 f~
  f1~
  f2 bes4 aes8 f~
  f1~ % 15a
  f4 8 8 ces'(bes) aes f~
  f1
  r4 c8 g'~8 aes4. % 15b
  f2~4. r8
  r4 f8 aes~8 ces4.
  bes2.^\markup\italic "slight rit." aes4 % 15c
  bes2 <bes ees>^\markup div.
  <g c>1~
  q1\fermata
  \bar "|."
}

wordsSop = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  I used to hold, __
}

wordsSopMidi = \lyricmode {
  "The " fall "ing " "leaves "  "drift " "by "  "my " win "dow, " 
  "\nthe " au "tumn " "leaevs "  "of " "red " "and " "gold. " 
  "\nI " "see " "your " "lips, "  "the " sum "mer " kis "ses, " 
  "\nthe " sun "burned " "hands "  "I " "used " "to " "hold, " 
  "\nSince " "you " "went " a "way "  "the " "days "  "grow " "long, " 
  "\nand " "soon " "I'll " "hear "  "old " win "ter's " "song. " 
  "\nBut " "I " "miss " "you " "most " "of " "all, "  "my " dar "ling, " 
  "\nwhen " au "tumn " "leaves " "start " "to " "fall. " 
  "\nBuh " "buh " "do " "ae " "oo " "way "  "oh " "way " 
  "\nshu " "doo " "dut " "day " 
  "\ndoo " "bu " "doo " "ay "  "buh " "dut " "dut " "doo " "ee " "ae " 
  "\ndat " "dat " "vuh " "doo " "dut " "duh "  "duh " 
  "\ndoh " "bu " "doo " "duh "  "oo " "ae " 
  "\ndat " "dat " "doo " "duh " "dut " "day " 
  "\noo " "ae "  "day " "ooh "  "vu " "doo " "ae " "oo " "ae "  "day " "oh " 
  "\ndut " "doo " "day " "day " "oh. " 

  "\nSince " "you " "went " a "way "  "the " "days " "grow " "long, " 
  "\nand " "soon " "I'll " "hear "  "old " win "ter's " "song. " 
  "\nBut " "I " "miss " "you " "most " "of " "all, " 
  "\nmy " dar "ling, "  "when " au "tumn " "leaves " "start "  "to " "fall, " 
  "\nstart " "to " "fall, "  "and " "I " "see " "your " "lips, " 
  "\nthe " fall "ing " "leaves, " 
  "\nthe " fall "ing " "leaves " "of " "red " "and " "gold. " 
}

wordsAlto = \lyricmode {
  The fall -- ing leaves __ drift by __ my win -- dow, __
  the au -- tumn leaevs __ of red and gold. __
  I see your lips, __ the sum -- mer kis -- ses, __
  the sun -- burned hands __ hold, __
  Since you went a -- way __ the days __ grow long, __
  and soon I'll hear __ old win -- ter's song. __
  But I miss you most of all, __ my dar -- ling, __
  when au -- tumn leaves start to fall. __
  Buh buh do ae oo way __ oh way __
  shu doo dut day __
  doo bu doo ay __ buh dut dut doo ee ae __
  dat dat vuh doo dut duh __ duh __
  doh bu doo duh __ oo ae __
  dat dat doo duh dut day __
  oo ae __ day ooh __ vu doo ae oo ae __ day oh __
  dut doo day day oh. __

  Since you went a -- way __ the days grow long, __
  and soon I'll hear __ old win -- ter's song. __
  But I miss you most of all, __
  my dar -- ling, __ when au -- tumn leaves start __ to fall, __
  start to fall, __ and I see your lips, __
  the fall -- ing leaves, __
  the fall -- ing leaves of red and gold. __
}

wordsAltoMidi = \lyricmode {
  "The " fall "ing " "leaves "  "drift " "by "  "my " win "dow, " 
  "\nthe " au "tumn " "leaevs "  "of " "red " "and " "gold. " 
  "\nI " "see " "your " "lips, "  "the " sum "mer " kis "ses, " 
  "\nthe " sun "burned " "hands "  "hold, " 
  "\nSince " "you " "went " a "way "  "the " "days "  "grow " "long, " 
  "\nand " "soon " "I'll " "hear "  "old " win "ter's " "song. " 
  "\nBut " "I " "miss " "you " "most " "of " "all, "  "my " dar "ling, " 
  "\nwhen " au "tumn " "leaves " "start " "to " "fall. " 
  "\nBuh " "buh " "do " "ae " "oo " "way "  "oh " "way " 
  "\nshu " "doo " "dut " "day " 
  "\ndoo " "bu " "doo " "ay "  "buh " "dut " "dut " "doo " "ee " "ae " 
  "\ndat " "dat " "vuh " "doo " "dut " "duh "  "duh " 
  "\ndoh " "bu " "doo " "duh "  "oo " "ae " 
  "\ndat " "dat " "doo " "duh " "dut " "day " 
  "\noo " "ae "  "day " "ooh "  "vu " "doo " "ae " "oo " "ae "  "day " "oh " 
  "\ndut " "doo " "day " "day " "oh. " 

  "\nSince " "you " "went " a "way "  "the " "days " "grow " "long, " 
  "\nand " "soon " "I'll " "hear "  "old " win "ter's " "song. " 
  "\nBut " "I " "miss " "you " "most " "of " "all, " 
  "\nmy " dar "ling, "  "when " au "tumn " "leaves " "start "  "to " "fall, " 
  "\nstart " "to " "fall, "  "and " "I " "see " "your " "lips, " 
  "\nthe " fall "ing " "leaves, " 
  "\nthe " fall "ing " "leaves " "of " "red " "and " "gold. " 
}

alto = \tripletFeel 8 \relative {
  \global
  R1*7 |
  r4 e'8^\mf fis~8 g4 c8~ | % 3c
  c1~ |
  c8 d,4 e8~4 fis |
  fis4. 8~2~
  fis4 r8 c d e4 e8~ % 4a
  e1~
  e8 b4. cis4 dis
  d1~ % 4b
  d8 r d4 8 e4 g8~
  g1~
  g4 d bes'8 aes4 g8~ % 4c
  g4. 8~2
  r4 b8 8~8 c4 e,8~(
  e1 % 5a
  dis2~4.) b8~
  b1~
  b8 r r4 dis4 e % 5b
  fis4 b,8 fis'~fis2~
  fis4 8 e~4 fis
  g1~ % 5c
  g8 4. fis8 g4 e8~
  e2~8 d4.
  bes'2 aes4. g8~ % 6a
  g1~
  g2 \tuplet 3/2 {r4 ais b}
  c4 c a a8 fis~ % 6b
  fis2 g
  fis4. 8~2~
  fis2 e % 6c
  e2 e
  dis2 g4 b,8 e~
  e1~ % 7a
  e2~4. r8
  R1
  r4 e8 b dis e fis e~ % 7b
  e4 d8 c~2~
  c4 r8 c d e4 fis8~
  fis2 e8 d c e~ % 7c
  e4. fis8 g4 a
  gis4 a8 fis~4. g8
  r8 g4 8 fis e4 fis8~ % 8a
  fis4. g8~2^\<~
  g8\! r r4 b,8 c d c~
  c4 d8 e~4. c'8 % 8b
  r8 b r c b a r d,~
  d4 e8 a~4 e8 d~
  d4. dis8 e g a b~ % 8c
  b4 c8 a~2
  r8 fis4 a8 g4 8 e~
  e1~ % 9a
  e2~8 r r4
  R1*35
  r2 e4 f \bar "||" \key aes \major % 13b+
  g4 c,8 g'~g2~
  g4 g8 f~4 g % 13c
  aes1~
  aes8 4. g8 aes4 f8~
  f2~8 e4. % 14a
  ces'2 a4. aes8~
  aes1~
  aes2 \tuplet 3/2 {r4 b c}
  d4 d bes f8 e~ % 14b
  e2 aes
  g4. 8~2~
  g2 f
  r4 f4~8 4. % 14c
  e4. g8(aes4) c,8 f8~
  f1~
  f2 bes4 aes8 f~
  f1~ % 15a
  f4 8 8 ces'(bes) aes f~
  f1
  r4 c8 g'~8 aes4. % 15b
  f2~4. r8
  r4 f8 aes~8 ces4.
  f,2. ees4 % 15c
  f2
  aes
  f1~
  f1
  \bar "|."
}

tenor = \tripletFeel 8 \relative {
  \global
  R1*7
  r4^\markup Unis. e8^\mf fis~8 g4 c8~ % 3c
  c1~
  c8 fis,4 g8~4 a
  d4. 8~2~
  d4 r8 e,^\markup Unis. fis g4 c8~ % 4a
  c1~
  c8 b4. cis4 c
  b1~ % 4b
  b8 r b4 8 d4 e8~
  e1~
  e4 d f8 ees4 d8~ % 4c
  d4. 8~2
  r4 b8^\markup Unis. 8~8 c4 c8~(
  c1 % 5a
  a2~4.) a8~
  a1~
  a8 r r4
  dis,4^\markup Unis. e % 5b
  fis4 b8 fis^\markup Unis. ~fis2~
  fis4 8 e~4 fis
  g1~ % 5c
  g8 4. fis8 g4 c8~
  c2~8 d4.
  f2 ees4. d8~ % 6a
  d1~
  d2 \tuplet 3/2 {r4 ais b}
  c4 c a bes8 a~ % 6b
  a2 dis
  d4. 8~2~
  d2 e, % 6c
  b'2 bes
  a2 g4 b8(e~)
  e1~ % 7a
  e2~4. r8
  R1
  r4  e,8^\markup Unis. r fis g a b~ % 7b
  b4 c8 b~2~
  b4 r8 b b c4 d8~
  d2 8 b b d~ % 7c
  d4. fis,8^\markup Unis. g4 a
  e'4 8 8~4. dis8
  r8 dis4 8 e c4 cis8~ % 8a
  cis4. d8~2\<~
  d8\! r r4 b8 c d b~
  b4 8 c~4. g'8 % 8b
  r8 fis r e^\markup Unis. d c r b~
  b4 d8 f~4 c8 b~
  b4. dis,8^\markup Unis. e g a b~ % 8c
  b4 c8 a~2
  r8 fis4 a8 g4 8 e~
  e1~ % 9a
  e2~8 r r4
  R1*35
  r2 e4^\markup Unis. f \bar "||" \key aes \major % 13b+
  g4 c8 g^\markup Unis. ~ 2 ~
  g4 8 f~4 g % 13c
  aes1~
  aes8 4. g8 aes4 des8~
  des2~8 ees4. % 14a
  ges2 e4. ees8~
  ees1~
  ees2 \tuplet 3/2 {r4 b c}des4 des bes ces8 bes~ % 14b
  bes2 fes'
  ees4. 8~2~
  ees2 f,
  r4 c'~8 ces4. % 14c
  bes4. g8(aes4) c8 f~
  f1~
  f2 bes,4^\markup Unis. aes8 f~
  f1~ % 15a
  f4 8 8 ces'(bes) aes f~
  f1
  r4 c'8 g^\markup Unis. ~8 aes4. % 15b
  f2~4. r8
  r4 f8 aes~8 ces4.
  c2.^\markup\italic "slight rit." bes4 % 15c
  c2 ees
  c1~
  c1\fermata
  \bar "|."
}

wordsTenor = \lyricmode {

}

bass = \tripletFeel 8 \relative {
  \global
  R1*7
  r4 e8^\mf fis~8 g4 c8~ % 3c
  c1~
  c8 fis,4 g8~4 a
  a4. g8~2~
  g4 r8 e fis g4 fis8~ % 4a
  fis1~
  fis8 b4. a4 a
  a1~ % 4b
  a8 r g4 a8 b4 a8~
  a1~
  a4 d, c'8 bes4 a8~ % 4c
  a4. a8~2
  r4 b8 8~8 c4 fis,8(~
  fis1 % 5a
  b,2~4.) e8~
  e1~
  e8 r r4 dis4 e % 5b
  fis4 b,8 fis'8~2~
  fis4 8 e~4 fis4
  g1~ % 5c
  g8 4. fis8 g4 8~
  g2~8 d4.
  c'2 bes4. a8~ % 6a
  a1~
  a2 \tuplet 3/2 {r4 ais b}
  c4 c a bes8 a~ % 6b
  a2 a
  g4. 8~2~
  g2 e % 6c
  cis2 c
  b2 g'4 b,8 e~
  e1~ % 7a
  e2~4. r8
  R1
  r4 e8 r fis g a b~ % 7b
  b4 a8 g~2~
  g4 r8 g a a4 b8~
  b2 8 a g b~ % 7c
  b4. fis8 g4 a
  fis4 c'8 8~4. a8
  r8 a4 8 c b4 e,8~ % 8a
  e4. 8~2~\<
  e8\! r r4 b8 c d g~
  g4 a8 b~4. a8 % 8b
  r8 a r e' d c r a~
  a4 b8 b~4 8 a~
  a4. dis,8 e g a b~ % 8c
  b4 c8 a~2
  r8 fis4 a8 g4 8 e~
  e1~ % 9a
  e2~8 r r4
  R1*35
  r2 e4 f \bar "||" \key aes \major % 13b+
  g4 c,8 g'~2~
  g4 8 f~4 g % 13c
  aes1~
  aes8 4. g8 aes4 8~
  aes2~8 ees4. % 14a
  d'2 b4. bes8~
  bes1~
  bes2 \tuplet 3/2 {r4 b c}
  des4 4 bes ces8 bes~ % 14b
  bes2 bes
  aes4. 8~2~
  aes2 f
  r4 d4~8 des4. % 14c
  c4. g'8(aes4) c,8 f~
  f1~
  f2 bes4 aes8 f~
  f1~ % 15a
  f4 8 8 ces'8(bes) aes f~
  f1
  r4 c8 g'~8 aes4. % 15b
  f2~4. r8
  r4 f8 aes~8 ces4.
  bes2. 4 % 15c
  bes2 bes
  f1~
  f1\fermata
  \bar "|."
}

wordsBass = \lyricmode {

}

pianoRHone = \tripletFeel 8 \relative {
  \global
  \voiceOne
  e'1\mf~
  e2 fis8 g fis e~
  e1~
  e2 a4 g8 e~ % 3b
  e1~
  e4. b8 ais cis dis e~
  e1~
  e1 % 3c
  r2 <c e g>4. <c e fis>8~
  q1
  r2 fis8 g fis e~
  e1 % 4a
  r8 <a, c e> r4 q4. <a dis>8~
  q1
  <a b d g>2~4. e'8 % 4b
  <bes' e>4-- <a e'>-- fis8 g r <c, e g>~
  q2 c8 e fis <c e g>~
  q2 <c f bes>4. <b fis' g a>8~ % 4c
  q2~4. <d e g>8
  r2 <c d g>4. <c e a>8~
  q4. a8 e'4 a % 5a
  <a, dis fis>1
  r4 r8 e'8 <bes' e> e, <a e>4
  <d, g>1 % 5b
  <a c e fis>1~
  q1
  r8 <a d g> r4 q q~ % 5c
  q2 <cis g' bes>4. <c g' b>8~
  q1
  <c d f>2 <bes ees aes>4. <a d g>8~ % 6a
  q4. a8 d e fis d~
  d2 <b f'>
  <a e'>2 a'4 e8 fis % 6b
  r4 r8 a,~<a dis g>2
  <d fis g>1~
  q4 r e e~ % 6c
  <b e a>2 <bes e g>
  <a dis fis>2 <a dis g>4. e'8~
  e1~ % 7a
  e4 bes8 a bes cis dis e~
  e1~
  e4 8 b dis e fis <c e g>~ % 7b
  q2.~8 <c g' b>
  r8 <b c e> r4 r r8 <b fis'>8~
  q2 <d g>8 r r4 % 7c
  r4 d8 e fis g a <e gis b>~
  q4 <e a c>8 r r4 r8 <a, dis>~
  q2 <c e>4. <cis f>8~ % 8a
  q4. <d g>8~2
  r8 <a' d e> r4 b8 c d <g, c>~
  q2 r4 r8 <g c e> % 8b
  r8 <fis b d> r4 r r8 <a, d fis>~
  q4 <b e g>8 r r4 r8 <d fis a>~
  q2 <d g b>8 r r <e gis b>8~ % 8c
  q4 <e a c> r r8 <c e fis>
  r2 <a dis g>4. <b e>8~
  q2 d8(g a b~ % 9a
  b8 a <d, g>2) r4
  r4 <a c e fis> r8 q4.
  q1
  r4 <a d g> r8 q4. % 9b
  <a d fis g>2 <aes d g>
  <g c e>4 r r2
  r8 <b c d> r4 <c g>2 % 10a
  <b fis'>2. dis8 e~
  e4 <b fis> <b e g>8 r r <e a>~
  q2~q4. r8 % 10b
  <c e>8 q r4 <c dis a'>2
  <d g>2 <cis fis b>
  <c f g>2 <b e a> % 11a
  <b e>2 q4. <a dis>8~
  q2~4. e'8~
  e1~ % 11b
  e2 fis8 g fis e~
  e1
  s4 e8^\markup\smallCaps "Piano Solo" fis g e fis g~
  g1 % 12a
  r8 b, c b' r a4 g8
  fis8 a g fis~2
  r4 g8(b,~4. c16 d
  e4-- gis-. a-- <g b>-> % 12b
  <g c>4) d'8 b~4. a16 g
  fis4-- <e g>-. <d fis a>2
  r4 d8 g-- ~ g <fis a> <g b>4
  r8 <g c> r4 q4. d'8( % 12c
  <b e> fis') r g <b, fis'>4--
  e8 <a, d>~ q4. d,8 e(fis g4)
  r4 r8 b dis, e d' c
  <e, a d>4. c'8 b a r <g b> % 13a
  r8 q4-. a8 d,4(dis
  e1)
  r8 e(bes' a g e d e~
  e1~ % 13b
  e2) 4 f \bar "||" \key aes \major
  g1~
  g1 % 13c
  r8 <des ees aes> r4 q4. q8~
  q2 <des g aes>
  <des f aes bes>1 % 14a
  <aes des ges>2 <b e a>4. <bes ees aes>8~
  q4. bes8 ees f g ees~
  ees2 <c ges'>
  <bes f'>2 bes'4 f8 g % 14b
  r4 r8 bes,~ <bes e aes>2
  <ees g aes>1~
  q4 r f f~
  <c f bes>2 <ces f aes> % 14c
  <bes e g>2 <bes e aes>4. f'8~
  f1~
  f2 bes4 aes8 f~
  f1~ % 15a
  f2 ces'8 bes aes f~
  f1~
  f1 % 15b
  r8 <des f c'> r4 q4. <des f aes>8~
  q1
  <des f bes>2. <ees aes>4 % 15c
  <c f bes>2 <e aes ees'>2
  <f g c>1~
  <f c' f>1\fermata
  \bar "|."
}

pianoRHtwo = \tripletFeel 8 \relative {
  \global
  \voiceTwo
  r2\mf <a d>4. <aes des>8~
  q1
  r8 <g c> r4 q4. b8~
  b1 % 3b
  r2 b4. ais8~
  ais4. r8 r2
  r2 <fis b>2~
  q1 % 3c
  r1
  r2 r
  r2 b4. 8~
  b4 s2.
  s1*26
  \once\partCombineApart r2 a4. ais8~ % 7a
  ais1
  \once\partCombineApart r2 b4. c8~
  c1 % 7b
  s1*30
  \once\partCombineApart r2 <aes d>4. <g cis>8~ % 11b
  q2 s2
  r8 aes r4 a4. gis8~
  <gis e'>4 s2.
  s1*18 \bar "||" \key aes \major
  r8 <bes des f> r4 q4. q8~ % 13b++
  q1 % 13c
  s1*12
  \once\partCombineApart r2 e4. d8~ % 14c++
  d2 s
  \once\partCombineApart r2 des4. d8~ % 15a
  d2 s
  \once\partCombineApart r2 c4. c8~
  c1 % 15b
  s1*6
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf-\markup\italic "Stop-time rhythm"
  s1*85
  s2 s\p % 12c+++
  s2 s\<
  s1\!
  s1*31
}

pianoLH = \tripletFeel 8 \relative {
  \global
  e2\mf b4. bes8~
  bes1
  r8 a r4 a4. <gis fis'>8~
  q1 % 3b
  r2 <g f'>4. <fis e'>8~
  q1
  r2 c2~
  c1 % 3c
  r2 a'4. d8~
  d1
  r2 g,4. c8~
  c1 % 4a
  r8 fis, r4 fis4. b8~
  b1
  e,4 b' e d % 4b
  c4 b e,4. r8
  r2 a4. d8~
  d2 aes4. r8 % 4c
  r4 r8 g8~4. c8~
  c4 d e g
  fis4 a fis c % 5a
  b4 c b dis
  e4 d c b
  e,1 % 5b
  r8 b' r4 b4. 8~
  b1
  r8 b r4 b r8 b~ % 5c
  b2 bes4. a8~
  a4 a d2
  g2 f4. e8~ % 6a
  e1~
  e2 g,
  f4 gis a c % 6b
  b4 c b f'
  e4 dis e fis
  g4 b, e d % 6c
  cis2 c
  b2 b4. e8~
  e2 f,4. fis8~ % 7a
  fis1
  r8 g r4 g4. aes8~
  aes2~4.  a8~ % 7b
  a4 b c e
  d4 e fis d
  g,4 a b d, % 7c
  c4 d e f
  fis4 a fis c'
  b4 a g fis % 8a
  e4 fis g b
  e4 d c b
  a4 b c ees % 8b
  d4 e fis a
  g4 d g b,
  c4 d e f % 8c
  fis4 e d c
  b4 c b4. e8~
  e4 e,2 e4~ % 9a
  e4 2 r4
  r4 b' r8 b4.
  b2 b'
  r4 b,4 r8 b4. % 9b
  b2 bes
  a4 b c cis
  d4 a' aes aes, % 10a
  g4 fis' e d
  c4 d e c
  fis4 e d c % 10b
  a4 g fis b
  e2 dis
  d <g, fis'> % 11a
  cis2 c4. b8~
  b2~4. r8
  r2 bes4. a8~ % 11b
  a1
  r8 fis r4 f4. e8~
  e8 r r4 r2
  r2 a4. d8~ % 12a
  d1
  g,2 d'4 b
  c2. 4
  fis,1 % 12b
  b4 cis d dis
  e2.. e,8~
  e2 e'4 b
  a1 % 12c
  <d c'>2d4 fis,
  g2. r8 c~
  c1
  fis,2 fis % 13a
  b2 b
  r8 e r4 e4. e8~
  e1
  r8 e r4 e4. e8~ % 13b
  e1 \bar "||" \key aes \major
  r8 c r4 c4. c8~
  c1 % 13c
  r8 c r4 c4. c8~
  c2 ces4. bes8~
  bes4 c des ees % 14a
  aes,2 fis4. f8~
  f1~
  f2 aes
  g4 a bes b % 14b
  c4 des c e
  f4 g aes c,
  f4 f ees ees
  r4 d~8 des4. % 14c
  c2. r4
  r2 b4. bes8~
  bes2 bes'
  r2 bes,4. ees8~ % 15a
  ees2 ees
  r8 aes, r4 aes4. des8~
  des1 % 15b
  r8 <bes aes'> r4 q4. ees8~
  ees1
  <g, f' bes>1 % 15c
  <ges' bes>2 <c, bes'>
  \tuplet 3/2 {f,4 c' g} \tuplet 3/2 {g c f}
  <f, c' g'>1\arpeggio\fermata
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new Staff \with {
          shortInstrumentName = #"Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
          \new Lyrics \lyricsto solo \wordsSolo
        >>
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Lyrics = "sopabove"
          \new Staff \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new Voice \partCombine { \voiceOne \soprano }
                                    { \voiceTwo \alto    }
          >>
            \context Lyrics = sopabove { \lyricsto alignerS \wordsSop }
            \new Lyrics \lyricsto alignerA \wordsAlto
                                % Joint tenor/bass staff
          \new Staff \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine { \voiceOne \tenor }
                                    { \voiceTwo \bass  }
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine { \voiceOne \pianoRHone }
                                    { \voiceTwo \pianoRHtwo }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = #"Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice = solo \solo
        >>
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Lyrics = "sopabove"
          \new Staff = "soprano" \with {
          }
          <<
            \new Voice = soprano \soprano
          >>
          \new Staff \with {
          }
          <<
            \new Voice = alto \alto
          >>
            \new Lyrics \lyricsto alto \wordsAltoMidi
                                % tenor staff
          \new Staff = "tenor" \with {
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % bass staff
          \new Staff = "bass" \with {
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine { \voiceOne \pianoRHone }
                                    { \voiceTwo \pianoRHtwo }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
        }
        <<
          \new Voice \TempoTrack
          \new Voice = solo \solo
        >>
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = "soprano" \with {
          }
          <<
            \new Voice = soprano \soprano
          >>
          \new Lyrics \lyricsto soprano \wordsSopMidi
          \new Staff \with {
          }
          <<
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = "tenor" \with {
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % bass staff
          \new Staff = "bass" \with {
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine { \voiceOne \pianoRHone }
                                    { \voiceTwo \pianoRHtwo }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-solo"
  \score {
%   \articulate
    <<
      <<
        \new Staff \with {
          shortInstrumentName = #"Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice = solo \solo
          \new Lyrics \lyricsto solo \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Lyrics = "sopabove"
          \new Staff = "soprano" \with {
          }
          <<
            \new Voice = soprano \soprano
          >>
          \new Staff \with {
          }
          <<
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = "tenor" \with {
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % bass staff
          \new Staff = "bass" \with {
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine { \voiceOne \pianoRHone }
                                    { \voiceTwo \pianoRHtwo }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
