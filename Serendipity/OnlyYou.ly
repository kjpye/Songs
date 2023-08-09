\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only You"
  subtitle    = "(And You Alone)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Buck Ram & Ande Rand"
  arranger    = "Arr. Robert Beadell"
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
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=127
  s1*73
  \set Score.tempoHideNote = ##t
  s2 \tempo 4=120 s | s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s1*4
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*4
  \textMark \markup { \box "5a" } s1*4
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*4
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" } s1*4
  \textMark \markup { \box "8a" } s1*4
  \textMark \markup { \box "8b" } s1*4
  \textMark \markup { \box "9a" } s1*4
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "10a" } s1*4
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "11a" } s1*4
  \textMark \markup { \box "11b" } s1*5
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*5 s2 s\f | s1 |
  s1*6 | % 3
  s1*7 | % 4
  s1*8 | % 5
  s1*8 | % 6
  s1*8 | % 7
  s1*8 | % 8
  s1*7 | % 9
  s1*7 | % 10
  s1*6 | s2. s4-\markup\italic fade | s2 s\omit\p-\markup {\dynamic p \italic rit.} | s1 | % 11
}

soprano = \relative {
  \global
  R1*4 |
  R1 | r2 e'8 f4 d'8~ | 1~ |
  d4 r8 f, bes d4 c8~ | 4 a8 fis~4. r8 | r2 d'8 c4 bes8~ | % 3a
  bes1~ | 4 r8 d, g bes4 aes8~ | 8 f4 d8~4. r8 |
  r2 es8 f4 g8~ | 4. ees8 g bes4 a8~ | 2. f4 | % 4a
  d'4 d c c8 bes~ | 2. 4 | c4. bes8 8 a4 g8~ | 4. 8 4 d' |
  c1~ | 2 e,8 f4 d'8~ | 1~ | 4 r8 f, bes d4 c8~ | % 5a
  c2 a | fis d'8 c4 bes8~ | 1~ | 4 r8 d, g bes4 aes8~ |
  aes2 f | d2. ees8 f | g4 ees g bes | d8 c4 bes8~4. ges8 | % 6a
  f4 g a bes | d2. fis,8 g | c4 d8 g,~4. gis8 | a4 gis a8 d4. |
  bes2 r | R1 | R | r2 d,8 ees4 <a c>8^\markup div. ~ \key aes \major | % 7a
  q1~ | 4. ees8 aes c4 bes8~ | 4 g8 e~2~ | 2 c'4 bes |
  aes1~ | 4 r8 c, f4 aes | ges4. ees8 c2~ | 2 des4 ees | % 8a
  f4. des8 f4 aes | g2. ees4 | c' c bes bes | aes2. 4 |
  bes4. aes8 4 g | f4. 8 4 c' | bes2 r4 c8 c | d2 fis,8 g4 e'8~ \key c \major | % 9a
  e2 d8 4 e8~ | 4. g,8 c4 e | d8 b4 gis8~2~ |
  gis2 e'8 d4 c8~ | 1~ | 4 r8 e, a c4 bes8~ | 2 g | % 10a
  e2 f4 g | a8 f4 a8~4. c8 | e d4 c8~4. aes8 |
  g8 a4. b4 c | e2. gis,8 a | d4 e8 a,~4. ais8 | b4 ais b8 e4. | % 11a
  c1~| 2 8 bes4 c8~ | 4. r8 r2 | r2 c8 bes4 d8~ | 1\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  On -- ly you __ can make this world __ seem right. __
  On -- ly you __ can make the dark -- ness bright. __
  On -- ly you, __ and you a -- lone, __
  can thrill me like you do __
  and fill my heart with love __
  for on -- ly you, __
  On -- ly you __ can make this change __ in me,
  for it's true __ you are my des -- ti -- ny.
  When you hold my hand, I un -- der -- stand __ the ma -- gic that you do.
  You're my dream come true, __
  my one and on -- ly you.

  On -- ly you __ can make this world seem right. __
  On -- ly you __ can make the dark -- ness bright. __
  On -- ly you and you a -- lone can thrill me like you do
  and fill my heart with love for on -- ly you,
  on -- ly you, on -- ly you, __
  On -- ly you __ can make this change in me, __
  for it's true __ you are my des -- ti -- ny.
  When you hold my hand, __
  I un -- der -- stand __ the ma -- gic that you do.
  You're my dream come true, __
  my one and on -- ly you, __
  on -- ly you, __ on -- ly you. __
}

wordsSopMidi = \lyricmode {
  "On" "ly " "you "  "can " "make " "this " "world "  "seem " "right. " 
  "\nOn" "ly " "you "  "can " "make " "the " dark "ness " "bright. " 
  "\nOn" "ly " "you, "  "and " "you " a "lone, " 
  "\ncan " "thrill " "me " "like " "you " "do " 
  "\nand " "fill " "my " "heart " "with " "love " 
  "\nfor " on "ly " "you, " 
  "\nOn" "ly " "you "  "can " "make " "this " "change "  "in " "me, "
  "\nfor " "it's " "true "  "you " "are " "my " des ti "ny. "
  "\nWhen " "you " "hold " "my " "hand, " "I " un der "stand "  "the " ma "gic " "that " "you " "do. "
  "\nYou're " "my " "dream " "come " "true, " 
  "\nmy " "one " "and " on "ly " "you.\n"

  "\nOn" "ly " "you "  "can " "make " "this " "world " "seem " "right. " 
  "\nOn" "ly " "you "  "can " "make " "the " dark "ness " "bright. " 
  "\nOn" "ly " "you " "and " "you " a "lone " "can " "thrill " "me " "like " "you " "do "
  "\nand " "fill " "my " "heart " "with " "love " "for " on "ly " "you, "
  "\non" "ly " "you, " on "ly " "you, " 
  "\nOn" "ly " "you "  "can " "make " "this " "change " "in " "me, " 
  "\nfor " "it's " "true "  "you " "are " "my " des ti "ny. "
  "\nWhen " "you " "hold " "my " "hand, " 
  "\nI " un der "stand "  "the " ma "gic " "that " "you " "do. "
  "\nYou're " "my " "dream " "come " "true, " 
  "\nmy " "one " "and " on "ly " "you, " 
  "\non" "ly " "you, "  on "ly " "you. " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*5 s2 s\f | s1 |
  s1*6 | % 3
  s1*7 | % 4
  s1*8 | % 5
  s1*8 | % 6
  s1*8 | % 7
  s1*8 | % 8
  s1*7 | % 9
  s1*7 | % 10
  s1*6 | s2. s4-\markup\italic fade | s2 s\omit\p-\markup {\dynamic p \italic rit.} | s1 | % 11
}

alto = \relative {
  \global
  R1*4 |
  R1 | r2 e'8 f4 d'8~ | 2 g,8 bes4 a8~ |
  a4 r8 f bes a4 fis8~ | 4 8 e~4. r8 | r2 d'8 c4 bes8( | % 3a
  g2 fis | f4) r8 d g bes4 ees,8~ | 8 4 c8~4. r8 |
  r2 c8 d4 ees8~ | 4. c8 ees g4 f8~ | 2. 4 | % 4a
  d'4 4 c c8 bes~ | 2. 4 | c4. bes8 8 a4 g8~ | 4. e8 4 a |
  g1~ | 2 e8 f4 d'8~ | 2 g,8 bes4 a8~ | 4 r8 f bes a4 fis8~ | % 5a
  fis2 2 | e fis8 a4 g8~( | 2 fis | f4) r8 d g bes4 ees,8~ |
  ees2 ees | c4(ces2) ees8 f | g4 ees g bes | 8 ges4 8~4. ees8 | % 6a
  d4 2 f4  a2. fis8 g | c4 d8 g,~4. gis8 | a4 gis a8 gis4. |
  f2 r | R1 | R | r2 d8 ees4 8~( \key aes \major | % 7a
  ees2 f | g4 f8) ees c ees4 g8~ | 4 ees8 des~2~ | 2 e4 f |
  f2(e | ees4) r8 c f4 f | ges4. ees8 c2~ | 2 des4 ees | % 8a
  f4. des8 f4 aes | g2. ees4 | c' c bes bes | aes2. 4 |
  bes4. aes8 4 g | f4. 8 4 c' | bes2 r4 g8 g | fis2 8 ges4 e'8~ \key c \major | % 9a
  e2 c8 4 b8~ | 4. g8 c4 b | 8 gis4 fis8~2~ |
  fis2 gis8 fis4 a8~( | 2 gis | g4) r8 e a c4 bes8~ | 2 f | % 10a
  d2 f4 g | a8 f4 a8~4. c8 | aes8 4 8~4. 8 |
  g8 4. 4 4 | 2. gis8 a | d4 e8 a,~4. ais8 | b4 ais b8 e4. | % 11a
  c1~ | 2 8 bes4 c8~4. r8 r2 | r2 c8 bes4 g8~ | 1\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  On -- ly you, __ on -- ly you __
  can make this world __ seem right. __
  On -- ly you __ can make the dark -- ness bright. __
  On -- ly you, __ and you a -- lone, __
  can thrill me like you do __
  and fill my heart with love __
  for on -- ly you, __
  On -- ly you, __ on -- ly you __ can make this change __ in me,
  for it's true __ you are my des -- ti -- ny. __
  When you hold my hand, I un -- der -- stand __ the ma -- gic you do.
  You're my dream come true, __
  my one and on -- ly you.

  On -- ly you __ can make this world seem right. __
  On -- ly you __ can make the dark -- ness bright. __
  On -- ly you and you a -- lone can thrill me like you do
  and fill my heart with love for on -- ly you,
  on -- ly you, on -- ly you, __
  On -- ly you __ can make this change in me, __
  for it's true __ you are my des -- ti -- ny.
  When you hold my hand, __
  I un -- der -- stand __ the ma -- gic that you do.
  You're my dream come true, __
  my one and on -- ly you, __
  on -- ly you, __ on -- ly you. __
}

wordsAltoMidi = \lyricmode {
  "On" "ly " "you, "  on "ly " "you " 
  "\ncan " "make " "this " "world "  "seem " "right. " 
  "\nOn" "ly " "you "  "can " "make " "the " dark "ness " "bright. " 
  "\nOn" "ly " "you, "  "and " "you " a "lone, " 
  "\ncan " "thrill " "me " "like " "you " "do " 
  "\nand " "fill " "my " "heart " "with " "love " 
  "\nfor " on "ly " "you, " 
  "\nOn" "ly " "you, "  on "ly " "you "  "can " "make " "this " "change "  "in " "me, "
  "\nfor " "it's " "true "  "you " "are " "my " des ti "ny. " 
  "\nWhen " "you " "hold " "my " "hand, " "I " un der "stand "  "the " ma "gic " "you " "do. "
  "\nYou're " "my " "dream " "come " "true, " 
  "\nmy " "one " "and " on "ly " "you.\n"

  "\nOn" "ly " "you "  "can " "make " "this " "world " "seem " "right. " 
  "\nOn" "ly " "you "  "can " "make " "the " dark "ness " "bright. " 
  "\nOn" "ly " "you " "and " "you " a "lone " "can " "thrill " "me " "like " "you " "do "
  "\nand " "fill " "my " "heart " "with " "love " "for " on "ly " "you, "
  "\non" "ly " "you, " on "ly " "you, " 
  "\nOn" "ly " "you "  "can " "make " "this " "change " "in " "me, " 
  "\nfor " "it's " "true "  "you " "are " "my " des ti "ny. "
  "\nWhen " "you " "hold " "my " "hand, " 
  "\nI " un der "stand "  "the " ma "gic " "that " "you " "do. "
  "\nYou're " "my " "dream " "come " "true, " 
  "\nmy " "one " "and " on "ly " "you, " 
  "\non" "ly " "you, "  on "ly " "you. " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*5 s2 s\f | s1 |
  s1*6 | % 3
  s1*7 | % 4
  s1*8 | % 5
  s1*8 | % 6
  s1*8 | % 7
  s1*8 | % 8
  s1*7 | % 9
  s1*7 | % 10
  s1*6 | s2. s4-\markup\italic fade | s2 s\omit\p-\markup {\dynamic p \italic rit.} | s1 | % 11
}

tenor = \relative {
  \global
  R1*4 |
  R1 | r2 e8 f4 d'8~ | 2 ees8 4 d8~ |
  d4 r8 f,8 bes d4 8~ | 4 8 c~4. r8 | r2 fis,8 a4 d8~ | % 3a
  d1~ | 4 r8 d, g bes4 c8~ | 8 4 aes8~4. r8 |
  R1*3 | % 4a
  R1 | r2 r4 bes | c4. bes8 8 a4 g8~ | 4. d'8 4 e |
  ees1~ | 2 e,8 f4 d'8~| 2 ees8 4 d8~ | 4 r8 f, b d4 e8~ | % 5a
  e2 c | 2 8 d4 8~ | 1~ | 4 r8 d, g bes4 c8~ |
  c2 2 | aes2. ees8 f | g4 ees f bes | d8 4 8~4. c8 | % 6a
  bes4 2 d4 | b2. fis8 g | c4 d8 g,~4. gis8 | a4 gis a8 ees'4. |
  d2 r | R1 | R | R \key aes \major | % 7a
  r2 des,8 ees4 c'8~ | 2. r4 r4 r8 e, g4 c | bes g8 e~2 |
  r2 c'4. bes8 | aes2. r4 | r ees ges bes | ges4. ees8 ges2 | % 8a
  r2 f4 aes | g4. ees8 g4 bes | e,2. g4 | f e ees ees |
  d2 r | R1 | r2 r4 a'8 c | 2 fis,8 g4 c8~ \key c \major | % 9a
  c2 f8 4 e8~ | 4. g,8 c4 e | d8 b4 d8~2~ |
  d2 e8 4 8~ | 1~ | 4 r8 e, a c4 bes8~ | 2 d | % 10a
  bes2 f4 g | a8 f4 a8~4. c8 | 8 4 d8~4. c8 |
  e8 4. 4 4 | d4(cis2) gis8 a | d4 e8 a,~4. ais8 | b4 ais b8 e4. |
  c1~ | 2 8 bes4 c8~ | 4. r8 r2 | r c8 bes4 b8~ | 1\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  On -- ly you, __ on -- ly you __
  can make this world __ seem right. __
  On -- ly you __ can make the dark -- ness bright. __
%  On -- ly you, __ and you a -- lone, __
%  can thrill me like you do __
  and fill my heart with love __
  for on -- ly you, __
  On -- ly you, __ on -- ly you __ can make this change __ in me,
  for it's true __ you are my des -- ti -- ny. __
  When you hold my hand, I un -- der -- stand __ the ma -- gic you do.
  You're my dream come true, __
  my one and on -- ly you.

  On -- ly you __ can make this world seem right. __
  On -- ly you __ can make the dark -- ness bright. __
  On -- ly you and you a -- lone can thrill me like you do
%  and fill my heart with love for on -- ly you,
  on -- ly you, on -- ly you, __
  On -- ly you __ can make this change in me, __
  for it's true __ you are my des -- ti -- ny.
  When you hold my hand, __
  I un -- der -- stand __ the ma -- gic that you do.
  You're my dream come true, __
  my one and on -- ly you, __
  on -- ly you, __ on -- ly you. __
}

wordsTenorMidi = \lyricmode {
  "On" "ly " "you, "  on "ly " "you " 
  "\ncan " "make " "this " "world "  "seem " "right. " 
  "\nOn" "ly " "you "  "can " "make " "the " dark "ness " "bright. " 
%  On -- ly you, __ and you a -- lone, __
%  can thrill me like you do __
  "\nand " "fill " "my " "heart " "with " "love " 
  "\nfor " on "ly " "you, " 
  "\nOn" "ly " "you, "  on "ly " "you "  "can " "make " "this " "change "  "in " "me, "
  "\nfor " "it's " "true "  "you " "are " "my " des ti "ny. " 
  "\nWhen " "you " "hold " "my " "hand, " "I " un der "stand "  "the " ma "gic " "you " "do. "
  "\nYou're " "my " "dream " "come " "true, " 
  "\nmy " "one " "and " on "ly " "you.\n"

  "\nOn" "ly " "you "  "can " "make " "this " "world " "seem " "right. " 
  "\nOn" "ly " "you "  "can " "make " "the " dark "ness " "bright. " 
  "\nOn" "ly " "you " "and " "you " a "lone " "can " "thrill " "me " "like " "you " "do "
%  and fill my heart with love for on -- ly you,
  "\non" "ly " "you, " on "ly " "you, " 
  "\nOn" "ly " "you "  "can " "make " "this " "change " "in " "me, " 
  "\nfor " "it's " "true "  "you " "are " "my " des ti "ny. "
  "\nWhen " "you " "hold " "my " "hand, " 
  "\nI " un der "stand "  "the " ma "gic " "that " "you " "do. "
  "\nYou're " "my " "dream " "come " "true, " 
  "\nmy " "one " "and " on "ly " "you, " 
  "\non" "ly " "you, "  on "ly " "you. " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*5 s2 s\f | s1 |
  s1*6 | % 3
  s1*7 | % 4
  s1*8 | % 5
  s1*8 | % 6
  s1*8 | % 7
  s1*8 | % 8
  s1*7 | % 9
  s1*7 | % 10
  s1*6 | s2. s4-\markup\italic fade | s2 s\omit\p-\markup {\dynamic p \italic rit.} | s1 | % 11
}

bass = \relative {
  \global
  R1*4 |
  R1 | r2 e8 f4 d'8~ | 2 c8 g4 f8~ |
  f4 r8 8 bes8 4 a8~ | 4 c8 a~4. r8 | r2 fis8 a4 g8~( | % 3a
  g2 fis | f4) r8 d g bes4 f8~ | f bes4 f8~4. r8 |
  R1*3 | % 4a
  R1 | r2 r4 bes | c4. bes8 8 a4 g8~ | 4. bes8 4 4 |
  bes1( | a2) e8 f4 d'8~ | 2 c8 g4 f8~ | 4 r8 f bes8 4 a8~ | % 5a
  a2 c | a2 8 fis4 g8~( | 2 fis | f4) r8 d g bes4 f8~ |
  f2 aes | f2. ees8 f | g4 ees g bes | ges8 bes4 c8~4. a8 | % 6a
  a4 g2 4 | f2. fis8 g | c4 d8 g,~4. gis8 | a4 gis a8 f4. |
  bes,2 r | R1*3 \key aes \major | % 7a
  r2 8 ees4 c'8~ | 2. r4 | r4 r8 e, g4 c | bes g8 e~2 |
  r2 c'4. bes8 | f2. r4 | r ees ges bes | ges4. ees8 aes,2 | % 8a
  r2 f'4 aes | g4. ees8 g4 bes | e,2. g4 | f e ees ees |
  d2 r | R1 | r2 r4 a'8 8 | aes2 fis8 g4 c8~ \key c \major | % 9a
  c2 d8 4 c8~  4. g8 c4 4 | b8 gis4 b8~2~ |
  b2 gis8 b4 a8~( | 2 gis g4) r8 e a c4 bes8~ | 2 2 | % 10a
  g2 f4 g | a8 f4 a8~4. c8 | f,8 4 8~4. 8 |
  c'8 4. 4 4 | b4(a2) gis8 a | d4 e8 a,~4. ais8 | b4 ais b8 e4. | % 11a
  c1~ | 2 8 bes4 c8~ | 4. r8 r2 | r2 c8 bes4 e,8~ | 1\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  On -- ly you, __ on -- ly you __
  can make this world __ seem right. __
  On -- ly you __ can make the dark -- ness bright. __
%  On -- ly you, __ and you a -- lone, __
%  can thrill me like you do __
  and fill my heart with love __
  for on -- ly you, __
  On -- ly you, __ on -- ly you __ can make this change __ in me,
  for it's true __ you are my des -- ti -- ny. __
  When you hold my hand, I un -- der -- stand __ the ma -- gic you do.
  You're my dream come true, __
  my one and on -- ly you.

  On -- ly you __ can make this world seem right. __
  On -- ly you __ can make the dark -- ness bright. __
  On -- ly you and you a -- lone can thrill me like you do
%  and fill my heart with love for on -- ly you,
  on -- ly you, on -- ly you, __
  On -- ly you __ can make this change in me, __
  for it's true __ you are my des -- ti -- ny.
  When you hold my hand, __
  I un -- der -- stand __ the ma -- gic that you do.
  You're my dream come true, __
  my one and on -- ly you, __
  on -- ly you, __ on -- ly you. __
}

wordsBassMidi = \lyricmode {
  "On" "ly " "you, "  on "ly " "you " 
  "\ncan " "make " "this " "world "  "seem " "right. " 
  "\nOn" "ly " "you "  "can " "make " "the " dark "ness " "bright. " 
%  On -- ly you, __ and you a -- lone, __
%  can thrill me like you do __
  "\nand " "fill " "my " "heart " "with " "love " 
  "\nfor " on "ly " "you, " 
  "\nOn" "ly " "you, "  on "ly " "you "  "can " "make " "this " "change "  "in " "me, "
  "\nfor " "it's " "true "  "you " "are " "my " des ti "ny. " 
  "\nWhen " "you " "hold " "my " "hand, " "I " un der "stand "  "the " ma "gic " "you " "do. "
  "\nYou're " "my " "dream " "come " "true, " 
  "\nmy " "one " "and " on "ly " "you.\n"

  "\nOn" "ly " "you "  "can " "make " "this " "world " "seem " "right. " 
  "\nOn" "ly " "you "  "can " "make " "the " dark "ness " "bright. " 
  "\nOn" "ly " "you " "and " "you " a "lone " "can " "thrill " "me " "like " "you " "do "
%  and fill my heart with love for on -- ly you,
  "\non" "ly " "you, " on "ly " "you, " 
  "\nOn" "ly " "you "  "can " "make " "this " "change " "in " "me, " 
  "\nfor " "it's " "true "  "you " "are " "my " des ti "ny. "
  "\nWhen " "you " "hold " "my " "hand, " 
  "\nI " un der "stand "  "the " ma "gic " "that " "you " "do. "
  "\nYou're " "my " "dream " "come " "true, " 
  "\nmy " "one " "and " on "ly " "you, " 
  "\non" "ly " "you, "  on "ly " "you. " 
}

pianoRHone = \relative {
  \global
  \voiceOne d''1~ | 4. \oneVoice f,8 bes d4 c8~ | 4 f,8 ees~4. f8 | \voiceOne c'2. f,4 |
  \oneVoice <g, bes c ees>2. <a c ees f>4-. | % 2b
  <bes c ees f>2 e8 f4 \voiceOne d'8~ |
  d1~ |
  d4 \oneVoice r8 f, bes <a d>4 <fis c'>8~ | % 3a
  q4 <fis a>8 <e fis>8~4. r8 |
  ees8 d cis d d' c4 \voiceOne bes8~ |
  bes1~ | % 3b
  bes4 \oneVoice r8 d, g bes4 <ees, aes>8~ |
  q8 <ees f>4 <c d>8~4. c8 |
  ees8 d cis d <c ees> <d f>4 <ees g>8~ | % 4a
  q4. <bes c ees>8 <c ees g> <ees g bes>4 <ees f a>8~ |
  q2. <ees f>4 |
  <fis a d>4 q <e a c> q8 \voiceOne bes'8~ | % 4b
  bes2. \oneVoice <f bes>4 |
  <a c>4. <g bes>8 8 <e a>4 <f g>8~ |
  q4. <e g>8 4 <a d> |
  <ees g c>2 \voiceOne \tuplet 3/2 {<d' f>4 <c ees> <bes d>} | % 5a
  \oneVoice <ees, f g c>2 <bes cis e>8 <a ees' f>4 \voiceOne d'8~ |
  d2( <ees, g>8 <ees g bes>4 s8 |
  d'4.) \oneVoice f,8 bes <a d>4 <fis c'>8~ |
  q2 <c ees f a>2 | % 5b
  <a c e fis>2 <fis' d'>8 <a c>4 \voiceOne bes8~ |
  bes1~ |
  bes4 \oneVoice r8 d, g bes4 <ees, aes>8~ |
  q2 \voiceOne f | % 6a
  d2 s4 \oneVoice <c ees>8 <d f> |
  <bes c ees g>4 <g bes c ees> <bes c ees g> <c ees g bes> |
  <bes' d>8 <ges c>4 s8 s4. <c, ees ges>8 |
  \voiceOne f4 g a bes | % 6b
  <a d>2. \oneVoice fis8 g |
  <e a c>4 <e a d>8 <d e g>8~4. gis8 |
  <f a>4 <e gis> <f a>8 <ees a d>4. |
  f4 d8 g~4 ees8 a~ | % 7a
  a4 f8 bes~4 g8 c~ |
  \tuplet 3/2 {c4 ees c} \tuplet 3/2 {<f, aes ees'>4 <f a c> <f a>} |
  <aes, bes des ees>2 d8 ees4 \voiceOne <aes c>8~ \key aes \major |
  q4. g8 c4. g8 | % 7b
  <aes c>4. ees8 \oneVoice <c aes'>8 <ees c'>4 <e f bes>8~ |
  q4 <d e g>8 <bes des ees>~2~ |
  q2 <e c'>4 <g bes> |
  \voiceOne aes4. f8 <ees aes>2~ | % 8a
  q4 \oneVoice s8 c f4 <c f aes> |
  <bes des ees ges>4. ees8 <bes c>2~ |
  q2 des4 ees |
  f4. des8 f4 aes | % 8b
  g2. ees4 |
  \voiceOne c'4 c bes bes |
  \oneVoice <c, f aes>2. 4 |
  <d bes'>4. <f aes>8 4 <d g>4 | % 9a
  <c d f>4. 8 4 <d aes' c> |
  <des aes' bes>2 <e g c> |
  <fis d'>2 fis8 g4 <b e>8~ | \key c \major
  q2 <c d>8 4 <b e>8~ | % 9b
  q4. g8 c4 <b e> |
  <b d>8 <gis b>4 <fis gis>8~2 |
  \voiceOne <gis b d>8 <fis gis b>4 <gis b d>8 <gis b e>8 <gis b d>4 <a c>8~ | % 10a
  c1~ |
  c4 \oneVoice r8 e, a c4 <g bes>8~ |
  q2 <bes, d f g> |
  <g bes d e>2 f'4 g | % 10b
  <c, d f a>8 <a c d f>4 <c d f a>8~4. c'8 |
  <aes e'>8 <aes d>4 <aes c>8~4. aes8 |
  g8 <g a>4. <g b>4 <g c> | % 11a
  <a e'>2. gis8 a |
  d4 e8 a,~4. ais8 |
  \voiceOne b4 ais b8 e4. |
  \oneVoice <e, c'>4 g8 <d a' d>8~4 a'8 <c, g' c>8~ | % 11b
  q4 g'8 <c, f c'>8~2 |
  \voiceOne c'4 a8 d8~4 \oneVoice g,8 <f a d>8~ |
  a4 a8 <ees c'>8~4 r8 <g d'>8~ |
  q1\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  f'4 d8 g~4 d8 a'~ | 4. s8 s2 | s1 | r8 <c, ees>4 r8 q2 |
  s1 | s2.. a'8~ |
  a2 g8 bes4 a8~ |
  a4 s2. | s1 | s2.. g8~( | % 3a
  g2 fis | f4) s2. | s1 |
  s1 | s | s | % 4a
  s2.. g8~ | 4 fis f s | s1 | s |
  s2 \tuplet 3/2 {<d f g>4 <c ees g> <bes ees f>} | s2.. a'8~( | 2 s4. <d, a'>8~ | 4) s2. | % 5a
  s1 | s2.. g8~( | 2 fis | f4) s2. |
  s2 ees | c4(ces2) s4 | s1 | s | % 6a
  d4 2 f4 | cis4(d e) s | s1 | s |
  s1*3 | s2.. ees8~ \key aes \major | % 7a
  ees2 f | g4 f8 ees s2 | s1 | s |
  c1~ | 4 s2. | s1 | s | % 8a
  s1 | s | <des g>1 | s |
  s1*7 | % 9
  fis8 d4 fis8 8 4 e8( | <e a>2 gis | g4) s2. | s1 | % 10a
  s1*3 |
  s1 | s | s | e2 a | % 11a
  s1 | s | e4. <d g>8~4 s | s1 | s |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s1*72 |
  s2 s-\markup\italic rit. | s1 |
}

pianoLHone = \relative {
  \global
  <bes, f' a>4. <c g' bes>8~4. <bes f' a>8~ |
  q4. r8 <aes ees' g>4. <g g'>8~ |
  q4. <ges des' f>8~4. r8 |
  r8 <g' bes>4-. r8 q2 |
  r8 f4-. r8 f2 | % 2b
  r2 e8 f4 <bes d>8~ |
  q2 <c ees>8 <g ees'>4 <f d'>8~ |
  \voiceOne q4 r8 f bes <bes d>4 <a d>8~ | % 3a
  q4 <c d>8 <a c>8~4. r8 \oneVoice |
  <d, fis c'>2 \voiceOne c'8 a4 d8~ |
  d1~ | % 3b
  <g, d'>4 r8 d g bes4 <ees, aes>8~ |
  q8 <aes c>4 <f a>8~4. r8 |
  \oneVoice <bes, f' aes>2 <aes' bes> | % 4a
  \voiceOne c2 bes \oneVoice |
  <f a>4 <g bes> <gis b> <a c> |
  <d, c'>2 <fis d'>4. \voiceOne d'8~ | % 4b
  d2. \oneVoice <g, d'>4 \voiceOne |
  <e c' d>4. <e bes' d>8 8 <a bes>4 <bes d>8~ |
  q4. 8 4 <bes e>4 |
  <c, bes'>2 s | % 5a
  a'2 e8 f4 \oneVoice <bes, a'>8~ |
  q2 c'8 g4 <bes, f' a>8~ |
  \voiceOne q4. f'8 bes <bes d>4 <a e'>8~ |
  q2 s | % 5b
  r2 <a c>8 <fis d'>4
  \partCombine \relative {d'8~ | d1~ | d4 } \relative {g8~ | g2(fis | f4)}
  r8 d g bes4 <f c'>8~ |
  q2 <aes c> | % 6a
  <f aes>2. s4 |
  \oneVoice ees4 d c bes' |
  <ges ees'>8 <bes ees>4 \showStaffSwitch \change Staff = pianorh <c ees g bes>8~4. \change Staff = pianolh \voiceOne a8 |
  bes4 2 d4 | % 6b
  <d, b'>2. fis8 g |
  <g bes>1 |
  \oneVoice <f ees'>2. \voiceOne r4 |
  \oneVoice <bes, f' a>2 <c g' bes> | % 7a
  <d a' c>2 <ees bes' d> |
  <f aes ees'>2 \tuplet 3/2 {<bes des>4 q q} |
  r4 ees,2. \key aes \major |
  \voiceOne r2 d8 ees4 c'8~ | % 7b
  c2 s | r4 r8 e,8 g4 c |
  bes4 g8 e~2 |
  r2 c'4. bes8 | <f aes>1 | s2 ges4 bes | ges1 | % 8a
  s2 f4 aes | g4. ees8 g4 bes | <e, bes'>1 | \oneVoice f4 e ees2 |
  <bes aes'>1 | q2 2 | <bes f' aes>2 <a e' g> \voiceOne c'2 s \key c \major | % 9a
  s2 \oneVoice <d f>8 4 <c e>8~ | 4. \voiceOne g8 c4 <c e> | <b d>8 <gis b>4 <e b' d>8~2 |
  \oneVoice e,2. r8 a'8( | \voiceOne 2 gis | g4) r8 e a c4 <g f'>8~ | 2 s | % 10a
  s1 | \oneVoice f2. f,4 | <f' c'>8 4 <f d'>8~4. 8 |
  <c' e>8 4. 4 4 | <<{\voiceOne d4(cis2)} \new Voice {a1}>> | <d, fis c'>1 | \oneVoice <f g b>2 q | % 11a
  <c g' b>4. <bes f' a>8~4. <aes ees' g>8~ | % 11b
  4. <ges des' f>8~2 |
  <f' a>4. <ees g>8~4. <d f c'>8~ |
  q4. <des f c'>8~4 r8 <e b'>8~ |
  \voiceOne q1\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s1*7 |
  r4 bes,2 r4 | r2 r8 d4. | s2 fis4. s8 | % 3a
  r4 g,2 4~ | 4 2 s4 | r2 r4 bes |
  s1 | <ees g>2 d4 c | s1 | % 4a
  s2.. g'8~ | 4 fis f s | r4 c2. | c4 2. |
  r4 f,2. | r4 f2 s4 | s1 | r4 bes2 r4 | % 5a
  r4 <d, d'>2 4~ | 4 2 r4 | r g2 4 | 4 2 r4 |
  r4 bes2 4~ | 2 bes, | s1 | s2 r4 ees' | % 6a
  a4 g2 4 | \acciaccatura g,8 g1 | c2. c,4 | s2. f4 |
  s1 | s | s | s \key aes \major | % 7a
  aes4 2 4 | 4 2 4 | c2 c | c1 |
  f,4 2 4 | f1 | ees'2 <aes, ees'>2~ | q1 | % 8a
  <des bes'>1 | <ees, bes'> | r4 c'2. | s1 |
  s1 | s | s | aes2 fis'8 g4 c8~ \key c \major | % 9a
  c2 s | r4 c,2. | e8 4 s8 r4 e, |
  s1 | r4 a2 4 | 4 2 s4 | r c2 4~ | % 10a
  c4 2 4 | s1 | s |
  s1 | r2 a | r2 r4 d, | s1 | % 11a
  s1 | s | s | s | r2 <c g'>2\fermata |
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor"
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
  \bookOutputSuffix "midi-alt"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
