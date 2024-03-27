\version "2.25.14"

\include "kjp.ly"
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

  composer    = \markup\smallCaps "Joseph Kosma"
  arranger    = \markup {Arranged by \smallCaps "Paris Rutherford"}
%  opus        = "opus"

  poet        = \markup {English Lyric by \smallCaps "Johnny Mercer"}
  meter       = \markup {French Lyric by \smallCaps "Jacques Prevert"}
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key e \minor
  \time 4/4
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

TempoTrack = {
  s1
  \set Score.tempoHideNote = ##t
  s1*115
  \tempo 4=150
  s1*4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
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
  s2 b4.:sus7 bes8:m7.5-
  s1
  a2..:m7 gis8:m7.5+
  s1 % 3b
  s2 g4.:13 fis8:7
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
  s2 b:7
  e1:m7
  s1 % 6c
  a2:2/cis c:7
  b2:7 b:7
  s2 f4.:maj7 fis8:7 % 7a
  s1
  s8 g2.:7 aes8:7
  s1 % 7b
  a1:m7
  d1:7sus
  g1:maj7 % 7c
  c1:maj7
  fis1:m7.5-
  b1:7 % 8a
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
  s8 fis4.:7 f:maj7 e8
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
  fis1:m7.5- % 13a
  b1:7
  e1:m
  c1/e
  e1:m6 % 13b
  e1:7
  bes1:m6/c
  s1 % 13c
  aes1:2/c
  s2 ces:dim
  bes1:m7 % 14a
  aes2:m7 fis4.:m7 f8:m7
  s1
  s2 aes:7
  g1:m7.5- % 14b
  c2:7 c:7
  f1:m7
  s1
  bes2/d des:7 % 14c
  c2:7 c:7
  s2 bes4.:7.5- bes8:9
  s1
  s2 bes4.:m7 ees8:9 % 15a
  s1
  aes1:13
  des1:maj7 % 15b
  bes1:m7
  ees1:9sus
  ges1:m7.5- % 15c
  ges2:maj7 c:7
  f1:5
  s1
}

solo = \tripletFeel 8 \relative {
  \global
  R1*57
  r2 dis'4 e % 9a+
  fis4 g8 fis~2~
  fis4 a8 g~4 e~
  e4 g2.~ % 9b
  g8 e fis g a b c4
  d4 c8 b a2
  r4 g8 b fis8 4 8~ % 10a
  fis8 a e4 2
  r2 r8 d4.
  b8 c4 b'8~4. a8~ % 10b
  a8 g fis2 d'4
  b4(a8) g~4. d8
  f4 e8 d c d b g % 11a
  a2~4. 8
  b4 4 dis4. g8~
  g4 fis8 e~2~ % 11b
  e4. \tiny b8 \normalsize fis'8(g) fis e~
  e1~
  e2~e8 r r4
  R1*44
}

wordsSolo = \lyricmode {
  Since you went a -- way __ the days __ grow __ long __
  boo duh duh duh duh da duh duh duh duh
  duh duh duh dut duh __ buh dut duh buh
  I miss you __ most __ of all, my darl -- ing. __
  Buh duh duh duh duh duh doo 'n duh __
  'n oo dut dut buh __
  duh duh __ "(th)" start __ t' fall. __
}

wordsSoloMidi = \lyricmode {
  "Since " "you " "went " a "way "  "the " "days "  "grow "  "long " 
  "\nboo " "duh " "duh " "duh " "duh " "da " "duh " "duh " "duh " "duh "
  "\nduh " "duh " "duh " "dut " "duh "  "buh " "dut " "duh " "buh "
  "\nI " "miss " "you "  "most "  "of " "all, " "my " darl "ing. " 
  "\nBuh " "duh " "duh " "duh " "duh " "duh " "doo " "'n " "duh " 
  "\n'n " "oo " "dut " "dut " "buh " 
  "\nduh " "duh "  "(th) " "start "  "t' " "fall. " 
}

soprano = \tripletFeel 8 \relative {
  \global
  R1*7
  r4^\markup Unis. e'8^\mf fis8~8 g4 c8~ % 3c
  c1~
  c8 d,4 e8~4 fis
  b4. 8~2~
  b4 r8 c,8^\markup\italic Unis. d e4 a8~ % 4a
  a1~
  a8 b,4.^\markup\italic Unis. cis4 dis
  g1~ % 4b
  g8 r e4 fis8 g4 c8~
  c1~
  c4 d, d'8 c4 b8~ % 4c
  b4. b8~2
  r4 b8^\markup\italic Unis. 8~8 c4 a8~
  a1 % 5a
  \once\partCombineApart r4 fis a g8 e~
  e1~
  e8 r r4 dis4^\markup Unis. e % 5b
  fis4 b,8 fis'~2~
  fis4 8 e~4 fis
  g1~ % 5c
  g8 4. fis8 g4 a8~
  a2~8 d,4.d'2 c4. b8~ % 6a
  b1~
  b2 \tuplet 3/2 {r4 ais^\markup Unis. b}
  c4 4 a a8 fis~ % 6b
  fis2 c'
  b4(c8) b~2~
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
  r2 e4^\markup Unis. f4 \bar "||" \key f \minor % 13b+
  g4 c,8 g'~2~
  g4 8 f~4 g % 13c
  aes1~
  aes8 4. g8 aes4 bes8~
  bes2~8 ees,4. % 14a
  ees'2 cis4. c8~
  c1~
  c2 \tuplet 3/2 {r4 b c}
  des4 4 bes4 8 g~ % 14b
  g2 des'
  c4(des8) c~2~
  c2 f,
  r4 bes~8 aes4. % 14c
  g4. 8^\markup Unis. (aes4) c,8 f~
  f1~
  f2 bes4 aes8 f~
  f1~ % 15a
  f4 8 8 ces'(bes) aes f~
  f1
  r4 c8 g'~g aes4. % 15b
  f2~4. r8
  r4 f8 aes~8 ces4.
  bes2.^\markup\italic "slight rit." aes4 % 15b
  bes2 <bes ees>^\markup div.
  c1~
  c1\fermata
  \bar "|."
}

words = \lyricmode {
  The fall -- ing leaves __ drift by __ my win -- dow, __
  the au -- tumn leaves __ of red and gold. __
  I see your lips, __ the sum -- mer kiss -- es, __
  \set associatedVoice = alto
  the sun -- burned hands __ hold. __
  \set associatedVoice = soprano
  Since you went a -- way __ the days __ grow long, __
  and soon I'll hear __ old win -- ter's song. __
  But I miss you most of all, __
  my dar -- ling, __
  when au -- tumn leaves start to fall. __

  Buh buh do ae oo way __ oh way __
  shu doo dut day __
  doo bu doo ay __
  buh dut dut doo ee ae __
  dat dat vuh doo dut duh __ duh __
  duh bu doo duh __ oo ae __
  dat dat doo duh dut day __
  oo ae __ day ooh __
  vu doo ae oo ae __ day oh __
  dut doo day day oh. __

  Since you went a -- way __
  the days grow long, __
  and soon I'll hear __
  old win -- ter's song. __
  But I miss you most of all, __
  my dar -- ling, __
  when au -- tumn leaves start __ to fall, __
  start to fall, __
  and I see your lips, __
  the fall -- ing leaves, __
  the fall -- ing leaves of red and gold. __
}

wordsMidi = \lyricmode {
  "The " fall "ing " "leaves "  "drift " "by "  "my " win "dow, " 
  "\nthe " au "tumn " "leaves "  "of " "red " "and " "gold. " 
  "\nI " "see " "your " "lips, "  "the " sum "mer " kiss "es, " 
  "\nthe " sun "burned " "hands "  "hold. " 
  "\nSince " "you " "went " a "way "  "the " "days "  "grow " "long, " 
  "\nand " "soon " "I'll " "hear "  "old " win "ter's " "song. " 
  "\nBut " "I " "miss " "you " "most " "of " "all, " 
  "\nmy " dar "ling, " 
  "\nwhen " au "tumn " "leaves " "start " "to " "fall. " 

  "\nBuh " "buh " "do " "ae " "oo " "way "  "oh " "way " 
  "\nshu " "doo " "dut " "day " 
  "\ndoo " "bu " "doo " "ay " 
  "\nbuh " "dut " "dut " "doo " "ee " "ae " 
  "\ndat " "dat " "vuh " "doo " "dut " "duh "  "duh"
  "\nduh " "bu " "doo " "duh "  "oo " "ae " 
  "\ndat " "dat " "doo " "duh " "dut " "day " 
  "\noo " "ae "  "day " "ooh " 
  "\nvu " "doo " "ae " "oo " "ae "  "day " "oh " 
  "\ndut " "doo " "day " "day " "oh. " 

  "\nSince " "you " "went " a "way " 
  "\nthe " "days " "grow " "long, " 
  "\nand " "soon " "I'll " "hear " 
  "\nold " win "ter's " "song. " 
  "\nBut " "I " "miss " "you " "most " "of " "all, " 
  "\nmy " dar "ling, " 
  "\nwhen " au "tumn " "leaves " "start "  "to " "fall, " 
  "\nstart " "to " "fall, " 
  "\nand " "I " "see " "your " "lips, " 
  "\nthe " fall "ing " "leaves, " 
  "\nthe " fall "ing " "leaves " "of " "red " "and " "gold. " 
}

wordsSopSep = \lyricmode {
  The fall -- ing leaves __ drift by __ my win -- dow, __
  the au -- tumn leaves __ of red and gold. __
  I see your lips, __ the sum -- mer kiss -- es, __
  the sun -- burned hands __ I used to hold. __
  Since you went a -- way __ the days __ grow long, __
  and soon I'll hear __ old win -- ter's song. __
  But I miss you most of all, __
  my dar -- ling, __
  when au -- tumn leaves start to fall. __

  Buh buh do ae oo way __ oh way __
  shu doo dut day __
  doo bu doo ay __
  buh dut dut doo ee ae __
  dat dat vuh doo dut duh __ duh __
  duh bu doo duh __ oo ae __
  dat dat doo duh dut day __
  oo ae __ day ooh __
  vu doo ae oo ae __ day oh __
  dut doo day day oh. __

  Since you went a -- way __
  the days grow long, __
  and soon I'll hear __
  old win -- ter's song. __
  But I miss you most of all, __
  my dar -- ling, __
  when au -- tumn leaves start __ to fall, __
  start to fall, __
  and I see your lips, __
  the fall -- ing leaves, __
  the fall -- ing leaves of red and gold. __
}

wordsSopMidi = \lyricmode {
  "The " fall "ing " "leaves "  "drift " "by "  "my " win "dow, " 
  "\nthe " au "tumn " "leaves "  "of " "red " "and " "gold. " 
  "\nI " "see " "your " "lips, "  "the " sum "mer " kiss "es, " 
  "\nthe " sun "burned " "hands "  "I " "used " "to " "hold. " 
  "\nSince " "you " "went " a "way "  "the " "days "  "grow " "long, " 
  "\nand " "soon " "I'll " "hear "  "old " win "ter's " "song. " 
  "\nBut " "I " "miss " "you " "most " "of " "all, " 
  "\nmy " dar "ling, " 
  "\nwhen " au "tumn " "leaves " "start " "to " "fall. " 

  "\nBuh " "buh " "do " "ae " "oo " "way "  "oh " "way " 
  "\nshu " "doo " "dut " "day " 
  "\ndoo " "bu " "doo " "ay " 
  "\nbuh " "dut " "dut " "doo " "ee " "ae " 
  "\ndat " "dat " "vuh " "doo " "dut " "duh "  "duh"
  "\nduh " "bu " "doo " "duh "  "oo " "ae " 
  "\ndat " "dat " "doo " "duh " "dut " "day " 
  "\noo " "ae "  "day " "ooh " 
  "\nvu " "doo " "ae " "oo " "ae "  "day " "oh " 
  "\ndut " "doo " "day " "day " "oh. " 

  "\nSince " "you " "went " a "way " 
  "\nthe " "days " "grow " "long, " 
  "\nand " "soon " "I'll " "hear " 
  "\nold " win "ter's " "song. " 
  "\nBut " "I " "miss " "you " "most " "of " "all, " 
  "\nmy " dar "ling, " 
  "\nwhen " au "tumn " "leaves " "start "  "to " "fall, " 
  "\nstart " "to " "fall, " 
  "\nand " "I " "see " "your " "lips, " 
  "\nthe " fall "ing " "leaves, " 
  "\nthe " fall "ing " "leaves " "of " "red " "and " "gold. " 
}

wordsSopAbove = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  I used to hold. __
}

alto = \tripletFeel 8 \relative {
  \global
  R1*7
  r4 e'8^\mf fis8~8 g4 c8~ % 3c
  c1~
  c8 d,4 e8~4 fis
  fis4. 8~2~
  fis4 r8 c d e4 8~ % 4a
  e1~
  e8 b4. cis4 dis
  d1~ % 4b
  d8 r8 d4 8 e4 g8~
  g1~
  g4 d bes'8 aes4 g8~ % 4c
  g4. 8~2
  r4 b8 8~8 c4 e,8~ (
  e1 % 5a
  dis2~4.) b8~
  b1~
  b8 r r4 dis4 e % 5b
  fis4 b,8 fis'8~2~
  fis4 8 e~4 fis
  g1~ % 5c
  g8 4. fis8 g4 e8~
  e2~8 d4.
  bes'2 aes4. g8~ % 6a
  g1~
  g2 \tuplet 3/2 {r4 ais b}
  c4 4 a e8 dis~ % 6b
  dis2 g
  fis4. 8~2~
  fis2 e % 6c
  e2 2
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
  fis4. g8~2^\< ~
  g8\! r r4 b,8 c d c~
  c4 d8 e~4. c'8 % 8b
  r8 b r c b a r d,~
  d4 e8 a~4 e8 d~
  d4. dis8 e g a b~ % 8c
  b4 c8 a~2
  r8 fis4 a8 g4 8 e~
  e1~ % 9a
  e2~ 8 r r4
  R1*35
  r2 e4 f \bar "||" \key f \minor % 13b+
  g4 c,8 g'~2~
  g4 8 f8~4 g % 13c
  aes1~
  aes8 4. g8 aes4 f8~
  f2~8 ees4. % 14a
  ces'2 a4. aes8~
  aes1~
  aes2 \tuplet 3/2 {r4 b c}
  des4 4 bes f8 e~ % 14b
  e2 aes
  g4. 8~2~
  g2 f
  r4 f4~8 4. % 14c
  e4. g8(aes4) c,8 f~
  f1~
  f2 bes4 aes8 f~
  f1~ % 15a
  f4 8 8 ces'8(bes) aes f~
  f1
  r4 c8 g'~8 aes4. % 15b
  f2~4. r8
  r4 f8 aes~8 ces4.
  f,2. ees4 % 15c
  f2 aes
  <f g>1~
  q1\fermata

  \bar "|."
}

wordsAltoSep = \lyricmode {
  The fall -- ing leaves __ drift by __ my win -- dow, __
  the au -- tumn leaves __ of red and gold. __
  I see your lips, __ the sum -- mer kiss -- es, __
  the sun -- burned hands __ hold. __
  Since you went a -- way __ the days __ grow long, __
  and soon I'll hear __ old win -- ter's song. __
  But I miss you most of all, __
  my dar -- ling, __
  when au -- tumn leaves start to fall. __

  Buh buh do ae oo way __ oh way __
  shu doo dut day __
  doo bu doo ay __
  buh dut dut doo ee ae __
  dat dat vuh doo dut duh __ duh __
  duh bu doo duh __ oo ae __
  dat dat doo duh dut day __
  oo ae __ day ooh __
  vu doo ae oo ae __ day oh __
  dut doo day day oh. __

  Since you went a -- way __
  the days grow long, __
  and soon I'll hear __
  old win -- ter's song. __
  But I miss you most of all, __
  my dar -- ling, __
  when au -- tumn leaves start __ to fall, __
  start to fall, __
  and I see your lips, __
  the fall -- ing leaves, __
  the fall -- ing leaves of red and gold. __
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
  b8 r8 4 8 d4
  e8~
  e1~
  e4 d f8 ees4 d8~ % 4c
  d4. 8~2
  r4 b8^\markup Unis. 8~8 c4 8~(
  c1 % 5a
  a2~4.) 8~
  a1~
  a8 r r4 dis,4^\markup Unis. e % 5b
  fis4 b8 g^\markup Unis. ~ 2~
  fis4 8 e~4 fis
  g1~ % 5c
  g8 4. fis8 g4 c8~
  c2~8 d4.
  f2 ees4. d8~ % 6a
  d1~
  d2 \tuplet 3/2 {r4 ais b}
  c4 4 a bes8 a~ % 6b
  a2 dis
  d4. 8~2~
  d2 e, % 6c
  b'2 bes
  a2 g4 b8 e~
  e1~ % 7a
  e2~e4. r8
  R1
  r4 e,8^\markup Unis. r fis g a b~ % 7b
  b4 c8 b~2~
  b4 r8 b b c4 d8~
  d2 8 b b d~ % 7c
  d4. fis,8^\markup Unis. g4 a
  e'4 8 8~4. dis8
  r8 dis4 8 e c4 cis8~ % 8a
  cis4. d8~2^\< ~
  d8\! r r4 b8 c d b~
  b4 8 c~4. g'8 % 8b
  r8 fis r fis^\markup Unis. d c r b~
  b4 d8 fis~4 c8 b~
  b4. dis,8^\markup Unis. e g a b~ % 8c
  b4 c8 a~2
  r8 fis4 a8 g4 8 e~
  e1~ % 9a
  e2~8 r r4
  R1*35
  r2 e4^\markup Unis. f4 \bar "||" \key f \minor % 13b+
  g4 c8 g^\markup Unis. ~ 2 ~
  g4 8 f~4 g % 13c
  aes1~
  aes8 4. g8 aes4 des8~
  des2~8 ees4. % 14a
  ges2 e4. ees8~
  ees1~
  ees2 \tuplet 3/2 {r4 b c}
  des4 4 bes ces8 bes~ % 14b
  bes2 fes'
  ees4. 8~2~
  ees2 f,
  r4 c'4~8 ces4. % 14c
  bes4. g8(aes4) c8 f~
  f1~
  f2 bes,4^\markup Unis. aes8 f~
  f1~ % 15a
  f4 8 8 ces'8(bes) aes f~
  f1
  r4 c'8 g^\markup Unis. ~8 aes4. % 15b
  f2~4. r8
  r4 f8 aes~8 ces4.
  c2.^\markup\italic "slight rit." b4 % 15c
  c2 ees
  c1~
  c1\fermata
  \bar "|."
}

wordsMen = \lyricmode {
  The fall -- ing leaves __ drift by __ my win -- dow, __
  the au -- tumn leaves __ of red and gold. __
  I see your lips, __ the sum -- mer kiss -- es, __
  the sun -- burned hands __ hold. __
  Since you went a -- way __ the days __ grow long, __
  and soon I'll hear __ old win -- ter's song. __
  But I miss you most of all, __
  my dar -- ling, __
  when au -- tumn leaves start to fall. __

  Buh do ae oo way __ oh way __
  shu doo dut day __
  doo bu doo ay __
  buh dut dut doo ee ae __
  dat dat vuh doo dut duh __ duh __
  duh bu doo duh __ oo ae __
  dat dat doo duh dut day __
  oo ae __ day ooh __
  vu doo ae oo ae __ day oh __
  dut doo day day oh. __

  Since you went a -- way __
  the days grow long, __
  and soon I'll hear __
  old win -- ter's song. __
  But I miss you most of all, __
  my dar -- ling, __
  when au -- tumn leaves start __ to fall, __
  start to fall, __
  and I see your lips, __
  the fall -- ing leaves, __
  the fall -- ing leaves of red and gold. __
}

bass = \tripletFeel 8 \relative {
  \global
  R1*7
  r4^\markup Unis. e8^\mf fis~8 g4 c8~ % 3c
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
  a4. 8~2
  r4 b8 8~8 c4 fis,8~(
  fis1 % 5a
  b,2~4.) e8~
  e1~
  e8 r r4 dis e % 5b
  fis4 b,8 fis'~2~
  fis4 8 e~4 fis
  g1~ % 5c
  g8 4. fis8 g4 8~
  g2~8 d4.
  c'2 bes4. a8~ % 6a
  a1~
  a2 \tuplet 3/2 {r4 ais b}
  c4 4 a bes8 a~ % 6b
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
  e4. 8~2~
  e8 r r4 b8 c d g~
  g4 a8 b~4. a8 % 8b
  r8 a r e' d c r a~
  a4 b8 8~4 b8 a~
  a4. dis,8 e g a b~ % 8c
  b4 c8 a~2
  r8 fis4 a8 g4 a8 e~
  e1~ % 9a
  e2~8 r r4
  R1*35
  r2 e4 f \bar "||" \key f \minor % 13b+
  g4 c,8 g'~2~
  g4 8 f~4 g % 13c
  aes1~
  aes8 4. g8 aes4 8~
  aes2~8 ees4. % 14a
  des'2 b4. bes8~
  bes1~
  bes2 \tuplet 3/2 {r4 b c}
  des4 4 bes ces8 bes~ % 14b
  bes2 2
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
  b2. 4 % 15c
  bes2 2
  f1~
  f1\fermata
  \bar "|."
}

pianoRHone = \tripletFeel 8 \relative {
  \global
  \vo
  \tempo "Swing feel" 4=160
  e'1~
  e2 fis8 g fis e~
  e1~
  e2 a4 g8 e~ % 3b
  e1~
  e4. b8 ais cis dis e~
  e1~
  e1 % 3c
  r2 <c e g>4. <c e fis>8~
  q1
  r2 fis8 g a <b, e>~
  q1 % 4a
  r8 <a c e> r4 q4. <a dis>8~
  q1
  <a b d g>2~4. e'8 % 4b
  <bes' e>4-- <a e'>-- fis8 g r <c, e g>~
  q2 c8 e fis <c e g>8~
  q2 <c f bes>4. <b fis' g a>8~ % 4c
  q2~4. <d e g>8
  r2 <c d g>4. <c e a>8~
  q4. a8 e'4 a % 5a
  <a, dis fis>1
  r4 r8 e' <bes' e> e, <a e'>4
  <d, g>1 % 5b
  <a c e fis>1~
  q1
  r8 <a d g> r4 q r8 q~ % 5c
  q2 <cis g' bes>4. <c g' b>8~
  q1
  <c d f>2 <bes ees aes>4. <a d g>8~ % 6a
  q4. a8 d e fis d~
  d2 <b f'>
  <a e'>2 a'4 e8 fis % 6b
  r4 r8 a,~ <a dis g>2
  <d fis g>1~
  q4 r e e~ % 6c
  <b e a>2 <bes e g>
  <a dis fis>2 <a dis g>4. e'8~
  e1~ % 7a
  e4 bes8 a bes cis dis e~
  e1~
  e4 8 b dis e fis <c e g>~ % 7b
  q2.~8 <c g' b>
  r8 <b c e> r4 r r8 <b fis'>~
  q2 <d g>8 r r4 % 7c
  r4 d8 e fis g a <e gis b>~
  q4 <e a c>8 r r4 r8 <a, dis>8~
  q2 <c e>4. <cis fis>8~ % 8a
  q4. <d g>8~2
  r8 <a' d e> r4 b8 c d <g, c>~
  q2 r4 r8 <g c e> % 8b
  r8 <fis b d> r4 r r8 <a, d fis>~
  q4 <b e g>8 r r4 r8 <d fis a>~
  q2 <d g b>8 r r <e gis b>~ % 8c
  q4 <e a c> r r8 <c e fis>8
  r2 <a dis g>4. <b e>8~
  q2 d8(g a b~ % 9a
  b8 a <d, g>2) r4
  r4 <a c e fis> r8 <a c e fis>4.
  q1
  r4 <a d g>4 r8 q4. % 9b
  <a d fis g>2 <aes d g>
  <g c e>4 r r2
  r8 <b c d> r4 <c g'>2 % 10a
  <b fis'>2. d8 e~
  e4 <b fis> <b e g>8 r r <e a>~
  q2~4. r8 % 10b
  <c e>8 q r4 <c dis c'>2
  <d g>2 <cis fis b>
  <c f g>2 <b e a> % 11a
  <b e>2 <bes e>4. <a dis>8~
  q2~4. e'8~
  e1~ % 11b
  e2 fis8 g fis e~
  e1
  s4 e8 fis g e fis g~
  g1 % 12a
  r8 b, c b' r a4 g8
  fis8 a g fis~2
  r4 g8(b,~4. c16 d
  e4-- gis-. a-- <g b>-> % 12b
  <g c>4) d'8 b~4. a16 g
  fis4-- <e g>-. <b fis a>2
  r4 d8 g-- ~8 <fis a> <g b>4
  r8 <g c> r4 q4. d'8( % 12c
  <b e>8 fis) r g <b, fis'>4-- e8 <a d>~
  q4. d,8 e(fis g4)
  r4 r8 b dis, e d' c
  <e, a d>4. c'8 b a r <g b> % 13a
  r8 <g b>4-. a8 d,4(dis
  e1)
  r8 e(bes' a g e d e~
  e1~ % 13b
  e2) 4 f \bar "||" \key aes \major
  g1~
  g1 % 13c
  r8 <bes, ees aes>8 r4 q4. q8~
  q2 <d g aes>
  <des f aes bes>1 % 14a
  <ces des ges>2 <b e a>4. <bes ees aes>8~
  q4. bes8 ees f g ees~
  ees2 <c ges'>
  <bes f'>2 bes'4 f8 g % 14b
  r4 r8 bes,8~ <bes e aes>2
  <ees g aes>1~
  q4 r f f~
  <c f bes>2 <ces f aes> % 14c
  <bes e g>2 <bes ees aes>4. f'8~
  f1~
  f2 bes4 aes8 f~
  f1~ % 15a
  f2 ces'8 bes aes f~
  f1~
  f1 % 15b
  r8 <des f c'> r4 q4. <des f aes>8~
  q1
  <des f bes>2. <ees aes>4 % 15c
  <c f bes>2 <e aes ees'>
  <f g c>1~
  <f c' f>1\fermata
  \bar "|."
}

pianoRHtwo = \tripletFeel 8 \relative {
  \global
  \vt
  r2 <a d>4. <aes des>8~
  q1
  r8 <g c> r4 q4. b8~
  b1 % 3b
  r2 b4. ais8~
  ais4. s8 s2
  r2 <fis b>2~
  q1 % 3c
  s1
  s1
  r2 b4. s8
  s1*27
  r2 a4. ais8~ % 7a
  ais1
  r2 b4. c8~
  c1 % 7b
  s1*30
  r2 <aes d>4. <g cis>8~ % 11b
  q2 s
  \once\partCombineApart r8 ais r4 a4. gis8~
  <gis e'>4 s2.
  s1*18 \key aes \major
  r8 <bes des f> r4 q4. q8~ % 13b++
  <bes des f>1 % 13c
  s1*12
  r2 ees4. d8~ % 14c++
  d2 s
  r2 des4. 8~ % 15a
  des2 s
  r2 c4. 8~
  c1 % 15b
  s1*6
  \bar "|."
}

dynamicsPiano = \tripletFeel 8 {
  \override DynamicTextSpanner.style = #'none
  s1\mf^\markup\italic "Stop-time rhythm"
  s1*74
  s4 s2.-\markup\italic "piano solo" % 11b+++
  s1*10
  s2 s\p % 12c++
  s4. s8\< s2
  s1\! % 13a
  s1*3
  s1-\markup\italic "rhythm in" % 13b
  s1*23
  s1-\markup\italic "slight rit." % 15c
  s1*3
}

pianoLH = \tripletFeel 8 \relative {
  \global
  e2 b4. bes8~
  bes1
  r8 a8 r4 a4. <gis fis'>8~
  q1 % 3b
  r2 <g f'>4. <f e'>8~
  q1
  r2 c2~
  c1 % 3b
  r2 a'4. d8~
  d1
  r2 g,4. c8~
  c1 % 4a
  r8 fis, r4 4. b8~
  b1
  e,4 b' e d % 4b
  c4 b e,4. r8
  r2 a4. d8~
  d2 aes4. r8 % 4c
  r4 r8 g8~4. c8~
  c4 d e g
  f4 a f c % 5a
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
  fis4 gis a c % 6b
  b4 c b f'
  e4 dis e fis
  g4 b, e d % 6c
  cis2 c
  b2 4. e8~
  e2 f,4. fis8~ % 7a
  fis1
  r8 g r4 g4. aes8~
  <aes ges'>2~4. a8~ % 7b
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
  e4 e,2 4~ % 9a
  e4 2 r4
  r4 b' r8 b4.
  b2 b'
  r4 b, r8 4. % 9b
  b2 bes2
  a4 b c cis
  d4 a' aes aes, % 10a
  g4 fis' e d
  c4 d e c
  fis4 e d c % 10b
  a4 g fis b
  e2 dis
  d2 <g, fis>2 % 11a
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
  <d c'>2 d4 fis,
  g2. r8 c~
  c1
  fis,2 2 % 13a
  b2 2
  r8 e r4 e4. 8~
  e1
  r8 e r4 4. 8~ % 13b
  e1 \bar "||" \key f \minor
  r8 c r4 4. 8~
  c1 % 13c
  r8 c r4 4. 8~
  c2 ces4. bes8~
  bes4 c des f % 14a
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
  ees2 2
  r8 aes, r4 4. des8~
  des1 % 15b
  r8 <bes aes'> r4 q4. ees8~
  ees1
  <g, f' bes>1 % 15c
  <ges' bes>2 <c, bes'>
  \tuplet 3/2 {f,4 c' f} \tuplet 3/2 {g c f}
  <f, c' g'>1\fermata\arpeggio
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alto    \alto
            \new NullVoice = soprano \soprano
            \addlyrics \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = man \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \with {alignAboveContext = rh} { \ChordTrack }
%      \new FretBoards \with {alignAboveContext = rh} { \ChordTrack }
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alto    \alto
            \new NullVoice = soprano \soprano
            \addlyrics \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = man \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \with {alignAboveContext = rh} { \ChordTrack }
%      \new FretBoards \with {alignAboveContext = rh} { \ChordTrack }
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSep
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMen
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \with {alignAboveContext = rh} { \ChordTrack }
%      \new FretBoards \with {alignAboveContext = rh} { \ChordTrack }
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-solo
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsMen}
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \with {alignAboveContext = rh} { \ChordTrack }
%      \new FretBoards \with {alignAboveContext = rh} { \ChordTrack }
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsMen}
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \with {alignAboveContext = rh} { \ChordTrack }
%      \new FretBoards \with {alignAboveContext = rh} { \ChordTrack }
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSep
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsMen}
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \with {alignAboveContext = rh} { \ChordTrack }
%      \new FretBoards \with {alignAboveContext = rh} { \ChordTrack }
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsMen}
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \with {alignAboveContext = rh} { \ChordTrack }
%      \new FretBoards \with {alignAboveContext = rh} { \ChordTrack }
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMen
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \with {alignAboveContext = rh} { \ChordTrack }
%      \new FretBoards \with {alignAboveContext = rh} { \ChordTrack }
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = midi-solo
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \solo
            \addlyrics \wordsSoloMidi
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \ChordTrack
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
  \paper {
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \ChordTrack
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
  \paper {
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLH
          >>
        >>
      >>
      \new ChordNames \ChordTrack
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
