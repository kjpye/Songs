\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Weep No More"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "David N. Childs"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "John Keats (adap.)"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key fis \minor
  \time 3/4
}

TempoTrack = {
  \tempo Wistfully 4=72
  s2.
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s2.*4
  \textMark \markup { \box "3b" } s2. s1 s2.
  \textMark \markup { \box "4a" } s1 s2.*2
  \textMark \markup { \box "4b" } s2.*3
  \textMark \markup { \box "5a" } s1 s2. s1
  \textMark \markup { \box "5b" } s2.*3
  \textMark \markup { \box "6a" } s2.*3
  \textMark \markup { \box "6b" } s2.*3
  \textMark \markup { \box "7a" } s2.*3
  \textMark \markup { \box "7b" } s2.*3
  \textMark \markup { \box "7c" } s2.*4
  \textMark \markup { \box "7d" } s2.*3
  \textMark \markup { \box "8a" } s2.*3
  \textMark \markup { \box "8b" } s2.*3
  \textMark \markup { \box "9a" } s1 s2.
  \textMark \markup { \box "9b" } s1 s2.
  \textMark \markup { \box "10a" } s1 s2.
  \textMark \markup { \box "10b" } s1 s2.
  \textMark \markup { \box "11a" } s2. s1
  \textMark \markup { \box "11b" } s2.*2
  \textMark \markup { \box "12a" } s1 s2.
  \textMark \markup { \box "12b" } s2 s2.*2
  \textMark \markup { \box "13a" } s2.*3
  \textMark \markup { \box "13b" } s2.*3
  \textMark \markup { \box "14a" } s2.*3
  \textMark \markup { \box "14b" } s2.*3
  \textMark \markup { \box "15a" } s2.*3
  \textMark \markup { \box "15b" } s2.*3
  \textMark \markup { \box "15c" } s2.*3
  \textMark \markup { \box "15d" } s2.*3
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.*4 | s2.\mp | s1 | s2. |
  s1 s2. s | s | s | s\mf | % 4
  s1 s2. s1 s2. s s4. s\> |
  s8 s\! s2 s4 s2\mp | s2.*4 | % 6
  s2.*10 |
  s2. s\mp | s | % 7d
  s2.*6 | % 8
  s1\mf | s2. | s1 s2. |
  s1 s2. s1 s2. | % 10
  s2 s4\omit\f-\markup{\italic "poco più" \dynamic f} | s1 | s2. s2 s4\mf |
  s1 s2. s2 s4 s2\mp s2. | % 12
  s2. | s\> | s\p | s | s | s |
  s2.\pp | s | s | s\> | s\! | s | % 14
  s2.*12 |
}

soprano = \relative {
  \global
  s2.*4 |
  cis''4(d) cis | \time 4/4 cis(b2) cis4 \time 3/4 | cis(d) cis \time 4/4 |
  cis4(b2) 4 \time 3/4 | d2 4 | e2 cis4 | % 4a
  cis8 b b2~ | 2 r4 | cis(d) cis \time 4/4 |
  cis4(b2) cis4 \time 3/4 | cis(d) cis \time 4/4 | cis(b2) 4 \time 3/4 | % 5a
  d2 4 | e2 cis4 | 8 d b2~ |
  b2 r4 | r cis8(d) b(fis) | a2. | % 6a
  r4 cis8(d) b(fis) | a2. | <b d>2^\markup\italic div. 4 |
  <a cis>2. | <g d'>2 4 | <fis cis'>2. | % 7a
  R2.*3 |
  R2.*4 |
  R2. | a8-- 8 4. gis8 | 8-- a8 4. gis8 |
  gis8-- a fis2~ | 2. a8-- 8 4. gis8 | % 8a
  gis8-- a8 4. gis8 | 8-- a fis2~ | 2. \time 4/4 |
  e8 a8 4. b8 d cis \time 3/4 | b2~8 e, \time 4/4 | % 9a
  e8 a8 4. b8 d cis \time 3/4 | b2. \time 4/4 |
  e,8 a8 4. b8 d cis \time 3/4 | b2~8 e, \time 4/4 | % 10a
  e8 a8 4. b8 d cis \time 3/4 b2.~ |
  b2 e,4 \time 4/4 | e(e'4.) d8 cis a \time 3/4 | % 11a
  b16 a b8~2~ | 2 e,4 \time 4/4 |
  e4(e'4.) d8 cis a \time 3/4 | d16 cis d8~2~ \time 2/4 | % 12a
  d2 \time 3/4 | r4 a8-- a a gis | 8-- a8 4. gis8 |
  gis8-- a fis2~ | 2. | a8 8 4. gis8 | % 13a
  gis8-- a8 4. gis8 | 8-- a fis2~ | 2. |
  a8--^\markup "Soprano 1" 8 4. gis8 | 8-- a8 4. gis8 | gis-- a fis2~ | % 14a
  fis2. | R | R |
  R2.*12 |
  \bar "|."
}

wordsSop = \lyricmode {
  Shed __ no tear, __ O shed __ no tear! __
  The flow'r will bloom an -- oth -- er year. __
  Shed __ no tear, __ O shed __ no tear! __
  The flow'r will bloom an -- oth -- er year. __
  Shed __ no __ tear! Shed __ no __ tear!
  Shed no tear! Shed no tear!

  Weep no more, O weep no more,
  O weep no more! __
  Weep no more, O weep no more, O weep no more! __
  Dry your eyes, O dry your eyes, __
  For I was taught in par -- a -- dise.
  Dry your eyes, O dry your eyes, __
  For I was taught in par -- a -- dise.
  To ease __ my breast of mel -- o -- dies. __
  To ease __ my breast of mel -- o -- dies. __
  Weep no more, O weep no more,
  O weep no more! __
  Weep no more, O weep no more,
  O weep no more! __
  Weep no more, O weep no more,
  O weep no more! __
}

wordsSopMidi = \lyricmode {
  "Shed "  "no " "tear, "  "O " "shed "  "no " "tear! " 
  "\nThe " "flow'r " "will " "bloom " an oth "er " "year. " 
  "\nShed "  "no " "tear, "  "O " "shed "  "no " "tear! " 
  "\nThe " "flow'r " "will " "bloom " an oth "er " "year. " 
  "\nShed "  "no "  "tear! " "Shed "  "no "  "tear! "
  "\nShed " "no " "tear! " "Shed " "no " "tear! "

  "\nWeep " "no " "more, " "O " "weep " "no " "more, "
  "\nO " "weep " "no " "more! " 
  "\nWeep " "no " "more, " "O " "weep " "no " "more, " "O " "weep " "no " "more! " 
  "\nDry " "your " "eyes, " "O " "dry " "your " "eyes, " 
  "\nFor " "I " "was " "taught " "in " par a "dise. "
  "\nDry " "your " "eyes, " "O " "dry " "your " "eyes, " 
  "\nFor " "I " "was " "taught " "in " par a "dise. "
  "\nTo " "ease "  "my " "breast " "of " mel o "dies. " 
  "\nTo " "ease "  "my " "breast " "of " mel o "dies. " 
  "\nWeep " "no " "more, " "O " "weep " "no " "more, "
  "\nO " "weep " "no " "more! " 
  "\nWeep " "no " "more, " "O " "weep " "no " "more, "
  "\nO " "weep " "no " "more! " 
  "\nWeep " "no " "more, " "O " "weep " "no " "more, "
  "\nO " "weep " "no " "more! " 
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
  s2.*5 | s1 | s2. |
  s1 s2. s s s s | % 4
  s1 s2. s1 s2. s s |
  s2.*6 | % 6
  s2.*13 |
  s2.*6 | % 8
  s1 s2. s1 s2. |
  s1 s2. s1 s2. | % 10
  s2. s1 s2. s |
  s1 s2. s2 s2. s | % 12
  s2.*6 |
  s4 s2\pp | s2. s | s\> s\! s | % 14
  s2.*12 |
}

sopranoII = \relative {
  \global
  s2.*5 | s1 | s2. |
  s1 | s2.*5 | % 4
  s1 | s2. | s1 | s2.*3 | % 5
  s2.*6 | % 6
  s2.*13 | % 7
  s2.*6 | % 8
  s1 | s2. | s1 | s2. | % 9
  s1 | s2. | s1 | s2. | % 10
  s2. | s1 | s2.*2 | % 11
  s1 | s2. | s2 | s2.*2 | % 12
  s2.*6 \break | % 13
  r4^\markup "Soprano 2" a'8-- 8 4~ | 8 gis gis-- a8 4~ | 8 gis gis-- a fis4~ | % 14a
  fis2. | R | R |
  R2.*12 | % 15
}

wordsSopII = \lyricmode {
  Weep no more, __ O weep no more, __
  O weep no more! __
}

wordsSopIIMidi = \lyricmode {
  "Weep " "no " "more, "  "O " "weep " "no " "more, " 
  "\nO " "weep " "no " "more! " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.*4 | s2.\mp | s1 | s2. |
  s1 s2. s | s | s | s\mf | % 4
  s1 s2. s1 s2. s | s4. s\> |
  s8 s\! s2 s2.\mp | s2.*4 | % 6
  s2.*10 |
  s2. s\mp | s | % 7d
  s2.*6 | % 8
  s1\mf | s2. | s1 s2. |
  s1 s2. s1 s2. | % 10
  s2 s4\omit\f-\markup{\italic "poco più" \dynamic f} | s1 | s2. s2 s4\mf |
  s1 s2. s2 s4 s2\mp s2. | % 12
  s2. | s\> | s4\! s2\p | s2. | s | s |
  s2 s4\pp | s2. | s | s\> | s\! | s | % 14
  s2.*12 |
}

alto = \relative {
  \global
  s2.*4 |
  a'2 fis4 \time 4/4 | a2. cis,4 \time 3/4 | gis'4(fis) a \time 4/4 |
  g2. fis4 \time 3/4 | <fis cis'>2^\markup\italic div. <fis b>4 b4^\markup\italic unis. (cis) a | % 4a
  a8 g g2~ | 2 r4 | a2 fis4 \time 4/4 |
  a2. cis,4 \time 3/4 | gis'4(fis) a \time 4/4 | g2. fis4 \time 3/4 | % 5a
  <fis cis'>2^\markup\italic div. <fis b>4 | b4^\markup\italic unis. (cis) a | 8 b a2( |
  g2) r4 | d2 4 | fis2. | % 6a
  r4 cis8(d) b(fis') | gis4(fis2) | b,4(cis) d |
  fis2. | b,4(cis) d | fis2. | % 7a
  R2.*7 |
  R2. | a8-- 8 4. gis8 | 8-- a8 4. gis8 |
  gis8-- a fis2~ | 2. | r4 a8-- 8 4~ | % 8a
  a8 gis gis-- a8 4~ | 8 gis gis-- a fis4~ | 2. \time 4/4 |
  e8 a8 4. b8 d cis \time 3/4 | b2~8 e, \time 4/4 | % 9a
  e8 a8 4. b8 d cis \time 3/4 | b2. \time 4/4 |
  r4 e,8 a8 4. b8 \time 3/4 | d cis b2~ \time 4/4 | % 10a
  b8 e, e a8 4. b8 \time 3/4 | d cis b2~ |
  b2 e,4 \time 4/4 | e(a4.) b8 a cis, \time 3/4 | % 11a
  d16 cis d8~2~ | 2 e4 \time 4/4 |
  cis2~8 b a a' \time 3/4 | b16 a <a cis>8^\markup\italic div. (~16 <g b>8.~4~ \time 2/4 | % 12a
  q2) \time 3/4 | r4^\markup\italic unis. a8-- a a gis | gis-- a8 4. gis8 |
  gis8-- a fis2~ | 2. | r4 a8-- 8 4~ | % 13a
  a8 gis gis-. a8 4~ | 8 gis gis-- a fis4~ | 2. |
  r4^\markup Alto r a8-- 8 | 4. gis8 gis-- a8 | 4. gis8 gis-- a | % 14a
  fis2. | R | R |
  R2.*12 |
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.*4 | s2.\mp | s1 | s2. |
  s1 s2. s | s | s | s\mf | % 4
  s1 s2. s1 s2. s | s4. s\> |
  s8 s\! s2 s2.\mp | s2.*4 | % 6
  s2.*10 |
  s2. s\mp | s | % 7d
  s2.*6 | % 8
  s1\mf | s2. | s1 s2. |
  s1 s2. s1 s2. | % 10
  s2 s4\omit\f-\markup{\italic "poco più" \dynamic f} | s1 | s2. s2 s4\mf |
  s1 s2. s2 s2.\mp s2. | % 12
  s2. | s\> | s2.\p | s2. | s | s |
  s2.\pp | s2. | s | s\> | s\! | s | % 14
  s2.*12 |
}

tenor = \relative {
  \global
  s2.*4 |
  cis'2 4 \time 4/4 | d2. cis4 \time 3/4 | a2 e'4 \time 4/4 |
  d2. 4 \time 3/4 | 2 4 | e2 4 | % 4a
  d8 8 2~ | 2 r4 cis2 4 \time 4/4 |
  d2. cis4 \time 3/4 | a2 e'4 \time 4/4 | d2. 4 \time 3/4 | % 5a
  d2 4 | e2 4 | d8 8 2~ |
  d2 r4 | 2 4 | cis2. | % 6a
  d2 4 | cis2. | R |
  R2.*10 |
  R2. | a8-- 8 4. gis8 | 8-- a8 4. gis8 |
  gis8-- a fis2~ | 2. | a8-- 8 4. gis8 | % 8a
  gis8-- a8 4. gis8 | 8-- a fis2~ | 2. \time 4/4 |
  e8 a8 4. b8 d cis \time 3/4 | b2~8 e, \time 4/4 | % 9a
  8 a8 4. b8 d cis \time 3/4 | b2. \time 4/4 |
  e,8 a8 4. b8 d cis \time 3/4 | b2~8 e, \time 4/4 | % 10a
  8 a8 4. b8 d cis \time 3/4 | b2.~ |
  b2 e,4 \time 4/4 e(e'4.) d8 cis a \time 3/4 | % 11a
  g16 g g8~2~ | 2 e4 \time 4/4 |
  e4(e'4.) d8 cis a \time 3/4 | d16 e d8~2~ \time 2/4 | % 12a
  d2 \time 3/4 | cis2.( | b |
  a4.) 8 4~ | 2. | cis( | % 13a
  b2. | a4.) 8 4~ | 2. |
  cis2.^\markup Tenor ( | b | a4.) 8 4~ | % 14a
  a2. | R | R |
  R2.*12 | % 15
  \bar "|."
}

wordsTenor = \lyricmode {
  Shed __ no tear, __ O shed __ no tear!
  The flow'r will bloom an -- oth -- er year. __
  Shed no tear, O shed no tear!
  The flow'r will bloom an -- oth -- er year. __
  Shed no tear! Shed no tear!

  Weep no more, O weep no more.
  O weep no more! __
  Weep no more, __ O weep no more.
  O weep no more! __
  Dry your eyes, O dry your eyes, __
  For I was taught in par -- a -- dise.
  Dry your eyes, O dry your eyes, __
  For I was taught in par -- a -- dise __
  To ease __ my breast of mel -- o -- dies. __
  To ease __ my breast of mel -- o -- dies. __
  Weep __ no more! __ Weep __ no more! __
  Weep no more!
}

wordsTenorMidi = \lyricmode {
  "Shed "  "no " "tear, "  "O " "shed "  "no " "tear! "
  "\nThe " "flow'r " "will " "bloom " an oth "er " "year. " 
  "\nShed " "no " "tear, " "O " "shed " "no " "tear! "
  "\nThe " "flow'r " "will " "bloom " an oth "er " "year. " 
  "\nShed " "no " "tear! " "Shed " "no " "tear! "

  "\nWeep " "no " "more, " "O " "weep " "no " "more. "
  "\nO " "weep " "no " "more! " 
  "\nWeep " "no " "more, "  "O " "weep " "no " "more. "
  "\nO " "weep " "no " "more! " 
  "\nDry " "your " "eyes, " "O " "dry " "your " "eyes, " 
  "\nFor " "I " "was " "taught " "in " par a "dise. "
  "\nDry " "your " "eyes, " "O " "dry " "your " "eyes, " 
  "\nFor " "I " "was " "taught " "in " par a "dise " 
  "\nTo " "ease "  "my " "breast " "of " mel o "dies. " 
  "\nTo " "ease "  "my " "breast " "of " mel o "dies. " 
  "\nWeep "  "no " "more! "  "Weep "  "no " "more! " 
  "\nWeep " "no " "more! "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.*4 | s2.\mp | s1 | s2. |
  s1 s2. s | s | s | s\mf | % 4
  s1 s2. s1 s2. s | s4. s\> |
  s8 s\! s2 s2.\mp | s2.*4 | % 6
  s2.*10 |
  s2. s\mp | s | % 7d
  s2.*6 | % 8
  s1\mf | s2. | s1 s2. |
  s1 s2. s1 s2. | % 10
  s2. | s1 | s2. s2 s4\mf |
  s1 s2. s2 s2.\mp s2. | % 12
  s2. | s\> | s2.\p | s2. | s | s |
  s2.\pp | s2. | s | s\> | s\! | s | % 14
  s2.*12 |
}

bass = \relative {
  \global
  s2.*4 |
  fis4(gis) a \time 4/4 | g2. r4 \time 3/4 | fis2 4 \time 4/4 |
  g2. 4 \time 3/4 | b2 4 | a2 4 | % 4a
  g8 8 2~ | 2 r4 | fis4(gis) a \time 4/4 |
  g2. r4 \time 3/4 | fis2 4 \time 4/4 | g2. 4 \time 3/4 | % 5a
  b2 4 | a2 4 | g8 8 2~ |
  g2 r4^\markup\italic div. | <b, fis'>2 4 | fis'2.^\markup\italic unis. | % 6a
  g2 4 | fis2. | R |
  R2.*10 | % 7a
  R2. a8-- 8 4. gis8 | 8-- a8 4. gis8 |
  gis8-- a fis2~ | 2. | r4 a8-- 8 4~ | % 8a
  a8 gis8 8-- a8 4~ | 8 gis8 8-- a fis4~ | 2. \time 4/4 |
  e8 a8 4. b8 d cis \time 3/4 | b2~8 e, \time 4/4 | % 9a
  e8 a8 4. b8 d cis \time 3/4 | b2. \time 4/4 |
  r4 e,8 a8 4. b8 \time 3/4 | d cis b2~ \time 4/4 | % 10a
  b8 e, e a8 4. b8 \time 3/4 | d8 cis b2~ |
  b2 r4 \time 4/4 | R1 \time 3/4 | % 11a
  R2. | r2 e,4 \time 4/4 |
  e4(e'4.) d8 cis b \time 3/4 | g16 16 8~2~ \time 2/4 | % 12a
  g2 \time 3/4 | fis2.( | e |
  d4.) 8 4~ | 2. | fis( | % 13a
  e2. | d4.) 8 4~ | 2. |
  fis2.^\markup Bass ( | e | d4.) 8 4~ | % 14a
  d2. | R | R |
  R2.*12 | % 15
  \bar "|."
}

wordsBass = \lyricmode {
  Shed __ no tear, __ Shed __ no tear!
  The flow'r will bloom an -- oth -- er year. __
  Shed no tear, Shed no tear!
  The flow'r will bloom an -- oth -- er year. __
  Shed no tear! Shed no tear!

  Weep no more, O weep no more.
  O weep no more! __
  Weep no more, __ O weep no more.
  O weep no more! __
  Dry your eyes, O dry your eyes, __
  For I was taught in par -- a -- dise.
  Dry your eyes, O dry your eyes, __
  For I was taught in par -- a -- dise __
%  To ease __ my breast of mel -- o -- dies. __
  To ease __ my breast of mel -- o -- dies. __
  Weep __ no more! __ Weep __ no more! __
  Weep no more!
}

wordsBassMidi = \lyricmode {
  "Shed "  "no " "tear, "  "Shed "  "no " "tear! "
  "\nThe " "flow'r " "will " "bloom " an oth "er " "year. " 
  "\nShed " "no " "tear, " "Shed " "no " "tear! "
  "\nThe " "flow'r " "will " "bloom " an oth "er " "year. " 
  "\nShed " "no " "tear! " "Shed " "no " "tear! "

  "\nWeep " "no " "more, " "O " "weep " "no " "more. "
  "\nO " "weep " "no " "more! " 
  "\nWeep " "no " "more, "  "O " "weep " "no " "more. "
  "\nO " "weep " "no " "more! " 
  "\nDry " "your " "eyes, " "O " "dry " "your " "eyes, " 
  "\nFor " "I " "was " "taught " "in " par a "dise. "
  "\nDry " "your " "eyes, " "O " "dry " "your " "eyes, " 
  "\nFor " "I " "was " "taught " "in " par a "dise " 
%  To ease __ my breast of mel -- o -- dies. __
  "\nTo " "ease "  "my " "breast " "of " mel o "dies. " 
  "\nWeep "  "no " "more! "  "Weep "  "no " "more! " 
  "\nWeep " "no " "more! "
}

pianoRHone = \relative {
  \global
  cis'''16 cis, fis cis a' cis, fis cis cis' cis, fis cis |
  fis16 cis cis' cis, fis cis cis' cis, a' cis, fis8 |
  cis'16 cis, fis cis a' cis, fis cis cis' cis, gis' cis, |
  fis16 cis cis' cis, fis cis cis' cis, a' cis, fis8 |
  cis'16 cis, fis cis a' cis, fis cis cis' cis, fis cis \time 4/4 | % 3a
  d'16 d, g a b d, g a d d, a' b cis cis, a' b \time 3/4 |
  cis16 cis, fis cis a' cis, fis cis cis' cis, fis cis \time 4/4 |
  d'16 d, a' d, g d d' d, b' d, fis d d' d, fis d \time 3/4 | % 4a
  d'16 d, fis b cis cis, fis cis' b cis, fis b |
  e16 e, b' cis b e, b' cis a e a e' |
  d16 d, a' b a d, a' b d d, a' b | % 4b
  a16 d, a' b d d, a' b a d, a'8 |
  cis,16 cis, fis cis a' cis, fis cis cis' cis, fis cis \time 4/4 |
  d'16 d, g a b d, g a d d, g a cis cis, a' b \time 3/4 | % 5a
  cis16 cis, fis cis a' cis, fis cis cis' cis, fis cis \time 4/4 |
  d'16 d, a' d, g d d' d, b' d, fis d d' d, fis d \time 3/4 |
  d'16 d, fis b cis cis, fis cis' b cis, fis b | % 5b
  e16 e, b' cis b e, b' cis a e a e' |
  d16 d, a' b a d, a' b d d, a' b |
  a16 d, a' b d d, a' b a d, a'8 | % 6a
  d'16 d, fis d b' d, fis d d' d, fis d |
  a'16 a, cis a gis' a, cis a fis' a, cis a |
  d'16 d, fis d b' d, fis d d' d, fis d | % 6b
  cis16 a cis a' cis, a cis a' fis cis fis cis' |
  d16 d, fis d b' d, fis d d' d, fis d |
  a'16 a, cis a gis' a, cis a fis' a, cis a | % 7a
  d'16 d, fis d b' cis, fis d b' d, fis d |
  cis16 a cis a' cis, a cis a' fis fis, cis' a |
  r4 <d, fis> <d fis b> | % 7b
  <cis fis cis'>4 <cis fis> <cis fis cis'> \voiceOne |
  cis'8 d b2 |
  b8 cis a2 \oneVoice | % 7c
  r4 <d, fis> <d fis b> |
  <cis fis cis'>4 <cis fis> e' \voiceOne
  d8 e d2~ |
  d2 \oneVoice a16 b d g | % 7d
  a16 a, cis a' fis a, cis fis a a, cis a' |
  gis16 gis, cis gis' e gis, cis e gis gis, cis gis' |
  a16 a, e' fis d a e' fis d a fis' a | % 8a
  e16 a, e' fis d a e' fis d a fis' a |
  a16 a, cis a' fis a, cis fis a a, cis a' |
  gis16 gis, cis gis' e gis, cis e gis gis, cis gis' | % 8b
  a16 a, e' fis d a e' fis a a, e' fis |
  d16 a e' fis a a, e' fis d a fis' a \time 4/4 |
  e16 e, a d cis e, a b a e a b e e, a b \time 3/4 | % 9a
  d16 d, g a b d, cis' d, b' d, a' b \time 4/4 |
  e16 e, a d cis e, a b a e a b e e, a b \time 3/4 | % 9b
  d16 d, g a b d, cis' d, b' d, a' b \time 4/4 |
  e16 e, a d cis e, a b a e a b e e, a b \time 3/4 | % 10a
  d16 d, g a b d, cis' d, b' d, a' b \time 4/4 |
  e16 e, a d cis e, a b a e a b e e, a b \time 3/4 | % 10b
  d16 d, g a b d, cis' d, b' d, a' b |
  d16 d, g a b d, cis' d, b' d, a' b \time 4/4 | % 11a
  e16 e, a d cis e, a b a e a b e e, a b \time 3/4 |
  d16 d, g a b d, cis' d, b' d, a' b | % 11b
  a16 d, g d' b d, a' b b e, b' e \time 4/4 |
  e16 e, a d cis e, a b a e a b e e, a b \time 3/4 | % 12a
  d16 d, g a b d, cis' d, b' d, a' b \time 2/4 |
  a16 d, g d' b d, a' b \time 3/4 | % 12b
  a'16 a, cis a' fis a, cis fis a a, cis a' |
  gis16 gis, cis gis' e gis, cis e gis gis, cis gis' |
  a16 a, e' fis d a d e d a fis' a | % 13a
  e16 a, e' fis d a d e d a fis' a |
  a16 a, cis a' fis a, cis fis a a, cis a' |
  gis16 gis, cis gis' e gis, cis e gis gis, cis gis' | % 13b
  a16 a, e' fis d a e' fis a a, e' fis |
  d16 a e' fis a a, e' fis d a fis' a |
  a16 a, cis a' fis a, cis fis a a, cis a' | % 14a
  gis16 gis, cis gis' e gis, cis e gis gis, cis gis' |
  a16 a, e' fis d a e' fis a a, e' fis |
  d16 a e' fis a a, e' fis d a fis' a | % 14b
  \voiceOne e2.~ |
  e4 d8 cis b a |
  <b dis>8 <a cis> b2~ | 2. | e~ | % 15a
  e4 <b d>8 <a cis> b a | <b d>16 <a cis> <g b>8~2~ | 2. | \oneVoice
  cis'16 cis, fis cis a' cis, fis cis cis' cis, gis' cis, | % 15c
  fis16 cis cis' cis, fis cis cis' cis, a' cis, fis8 |
  cis'16 cis, fis cis a' cis, fis cis cis' cis, gis' cis, |
  fis16 cis cis' cis, fis cis a' cis, gis' cis, b cis | % 15d
  r4 r8 gis a cis |
  fis2.\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2.*5 | s1 | s2. |
  s1 s2.*5 | % 4
  s1 s2. s1 | s2.*3 | % 5
  s2.*6 | % 6
  s2.*3 | % 7a
  s2. | s | <d' a'>4 <d g>2 |
  <cis fis>2. | s | s | <d b'>4 2~ |
  q2 s4 | s2. | s |
  s2.*6 | % 8
  s1 s2. s1 s2. |
  s1 s2. s1 s2. | % 10
  s2. s1 s2. s |
  s1 s2. s2 s2. s | % 12
  s2.*6 |
  s2.*4 | r16 e a b cis8 e, a4 | <e cis'> e e |
  d2 4 | r16 d g a b4 d, | e a d | % 15a
  cis4 e, e | d2 4~ | 4 a' b |
  s2.*3 |
  s2.*3 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s | s | s | s | s1 | s2. |
  s1 s2. s s | s4 s16 s\< s4. | s2.\mp | % 4
  s1 s2. s1 | s2.*3 |
  s2.*6 | % 6
  s2.*3 | % 7a
  s2.-\markup\italic cantabile | s | s |
  s2.*4 |
  s4. s\> | s2.\! | s |
  s2.*5 | s4 s2\< | % 8
  s1\mf | s2. | s1 | s2. |
  s1 s2. s1 s2. | % 10
  s2 s4\omit\f-\markup{\italic "poco più" \dynamic f} s1 | s2. s |
  s1 s2. s2 s2.\p s | % 12
  s2. s s\omit\p-\markup{\italic meno \dynamic p} | s2.*3 |
  s2.\pp | s | s | s\> | s\! | s | % 14
  s2.*3 | % 15a
  s2. s4. s-\markup\italic rit. | s4 s2\> |
  s2.\omit\p-\markup{\dynamic p \italic "a tempo"} | s | s |
  s2 s8 s\> | s2.-\markup\italic rall. | s4 s2\! |
}

pianoLHone = \relative {
  \global \voiceOne
  a'4 b a | gis2 b4 | a b a | gis2 b4 |
  a2 gis4 \time 4/4 | a2 b4 a \time 3/4 | gis4 fis a \time 4/4 |
  g2. b4 \time 3/4 | b cis d | b cis a | % 4a
  g4 a b | cis b2 \clef bass | a,2 gis4 \time 4/4 |
  a2 b4 a \time 3/4 | gis fis a \time 4/4 | g2 a4 b \time 3/4 | % 5a
  b4 cis d | b cis a | g a b |
  cis4 b2 \clef treble | fis'4 b fis | fis gis a | % 6a
  a4 g fis | gis fis a \clef bass | fis, b2 |
  a4 fis2 | a4 g fis | a fis2 | % 7a
  \oneVoice b,8 fis' b fis b fis | a, fis' a fis a fis | g, d' g a b4 |
  fis,8 cis' fis g a4 | b,8 fis' b fis b fis | a, fis' b fis b fis | g, d' g a b d |
  g,, d' g a b4 | fis,8 cis' fis gis a4 | e,8 cis' fis gis a4 |
  d,,8 a' d e <fis a>4 | d,8 a' d e fis gis | fis, cis' fis gis a4 | % 8a
  e,8 cis' fis gis a4 | d,,8 a' d e fis4 | d,8 a' d e fis gis \time 4/4 |
  a,8 e' a4. e8 a e \time 3/4 | g, d' g a b4 \time 4/4 | % 9a
  a,8 e' a4. e8 a e \time 3/4 | g, d' g a g d \time 4/4 |
  a8 e' a4. e8 a e \time 3/4 | g, d' g a b4 \time 4/4 | % 10a
  a,8 e' a4. e8 a e \time 3/4 | g, d' g a g d |
  g,8 d' g4 a \time 4/4 | a,8 e' a4. e8 a e \time 3/4 | % 11a
  g,8 d' g a g d | g, d' g4 a \time 4/4 |
  a,8 e' a4. e8 a e \time 3/4 | g, d' g a g d \time 2/4 | % 12a
  g,8 d' g4 \time 3/4 | fis,8 cis' fis gis a4 | e,8 cis' fis gis a4 |
  d,,8 a' d e <fis a>4 | d,8 a' d e fis gis | fis, cis' fis gis a4 | % 13a
  e,8[cis'] fis[gis] a4 | d,,8[a'] d[e] fis4 | d,8[a'] d[e] fis[gis] |
  fis,8[cis'] fis[gis] a4 | e,8[cis'] fis[gis] a4 | d,,8[a'] d[e] fis4 | % 14a
  d,8[a'] d[e] fis[gis] | a,[e'] a[e] a[e] | a,[e'] a[e] a[e] |
  g,8[d'] g[a] g[d] | g,[d'] g[a] g[d] | a[e'] a[e] b'[e,] | % 15a
  a,8[e'] a[e] a[e] | g,[d'] g[a] g[d] | g,[d'] g[a] g4 \clef treble |
  \voiceOne a'4 b a | gis2 b4 | a b a |
  gis2 4 | \oneVoice fis,8 cis' fis2~ | \voiceOne 2. |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  d'2._\markup\italic "con pedale" | d | d | d |
  <fis, cis'>2. \time 4/4 d'2. cis4 \time 3/4 | fis,2. \time 4/4 |
  <g d'>1 \time 3/4 | <b fis'>2. | <a e'> | % 4a
  <g d'>2.~ | 2. \clef bass | <fis, cis'>2. \time 4/4 |
  d'2. cis4 \time 3/4 | <fis, cis'>2. \time 4/4 | <g d'>1 \time 3/4 | % 5a
  <b fis'>2. | <a e'> | <g d'>~ |
  q2. \clef treble | <b' fis'>2. | <gis cis> | % 6a
  <g d'>2. | <fis cis'> \clef bass | <b, fis'>2. |
  <fis cis'>2. | <g d'> | <fis cis'> | % 7a
  s2.*3 |
  s2.*4 |
  s2.*3 |
  s2.*6 | % 8
  s1 s2. s1 s2. |
  s1 s2. s1 s2. | % 10
  s2. s1 s2. s |
  s1 s2. s2 s2. s | % 12
  s2.*6 |
  s2.*6 | % 14
  s2.*3 | % 15a
  s2.*3 |
  d''2. | d | d |
  d2 cis4 | s2. | r4 \clef bass <fis,,, fis'>2\fermata |
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
                                % Single soprano II staff
          \new Staff = sopranoii \with {
            instrumentName = #""
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoii} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
            \addlyrics \wordsSop
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
%   \unfoldRepeats
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
                                % Single soprano II staff
          \new Staff = sopranoii \with {
            instrumentName = #""
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoii} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
            \addlyrics \wordsSop
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
%   \unfoldRepeats
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
                                % Single soprano II staff
          \new Staff = sopranoii \with {
            instrumentName = #""
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoii} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
            \addlyrics {\tiny \wordsSop}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "singlepage-alto"
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
%   \unfoldRepeats
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
                                % Single soprano II staff
          \new Staff = sopranoii \with {
            instrumentName = #""
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranoii} {\teeny \dynamicsSopII}
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \addlyrics \wordsSop
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
%   \unfoldRepeats
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
                                % Single soprano II staff
          \new Staff = sopranoii \with {
            instrumentName = #""
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranoii} {\teeny \dynamicsSopII}
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \addlyrics {\tiny \wordsSop}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
%   \unfoldRepeats
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
                                % Single soprano II staff
          \new Staff = sopranoii \with {
            instrumentName = #""
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranoii} {\teeny \dynamicsSopII}
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \addlyrics {\tiny \wordsSop}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
                                % Single soprano II staff
          \new Staff = sopranoii \with {
            instrumentName = #""
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoii} \dynamicsSopII
            \new Voice \sopranoII
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
          \new Staff = pianorh \with {
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
  \bookOutputSuffix "midi-alto"
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
                                % Single soprano II staff
          \new Staff = sopranoii \with {
            instrumentName = #""
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoii} \dynamicsSopII
            \new Voice \sopranoII
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
            \addlyrics \wordsSopMidi
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
          \new Staff = pianorh \with {
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
                                % Single soprano II staff
          \new Staff = sopranoii \with {
            instrumentName = #""
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoii} \dynamicsSopII
            \new Voice \sopranoII
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
          \new Staff = pianorh \with {
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
                                % Single soprano II staff
          \new Staff = sopranoii \with {
            instrumentName = #""
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoii} \dynamicsSopII
            \new Voice \sopranoII
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
          \new Staff = pianorh \with {
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
