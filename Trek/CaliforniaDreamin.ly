\version "2.25.2"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "California Dreamin'"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Phillips"
  arranger    = "Arr. Milt Rogers"
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
  \tempo Moderato 4=114
  \set Score.tempoHideNote = ##t
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*3
  \textMark \markup { \box "1b" } s1*3
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "6a" } s1*2
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "8a" } s1*11
  \textMark \markup { \box "8b" } s1*4
  \textMark \markup { \box "9a" } s1*5
  \textMark \markup { \box "9b" } s1*4
  \textMark \markup { \box "10a" } s1*4
  \textMark \markup { \box "10b" } s1*4
}

soprano = \relative {
  \global
  R1*3 |
  R1 \section | f'4 4 e4 8 d~( | 4. e8~2) |
  r4 e8 8 4 8 8~( | 4. f8~4) r | a a g8 4 a8~( | % 2a
  a4. bes8~2) | r4 g8 8 8 4 e8~ | 2. r4 |
  f4 4 e8 4 d8~( | 8 4 e8~2) | r4 e8 8 8 8 8 8~ | % 3a
  e2 r | f4 4 e4 8 d~ | 8 4 f8 g f g f |
  a1~ | 4 r r2 \section | a2(g | % 4a
  f8) r r4 r2 | g1~ | 2. r4 |
  a4 4 g8 4 a8~( | 4. bes8~2) | r4 g8 8 4 8 e~ | % 5a
  e2. r4 | f4 4 e4 8 d~( | 4. e8~2) |
  r8 e e e e4 8 8~ | 2 r | % 6a
  f4 4 e e8 d~ | 8 4 f8 g f g f | a1~ |
  a2. r4 \section | f1( | 4 e8 f g4 \tuplet 3/2 {g8 f e} | % 7a
  f1) | r4 e8( f g4 f8 d | c2 cis |
  d2) r4 bes' | 8(a~2.~ | 4) r r2 | R1*8 \section | % 8a
  f4 f e4 8 d~( | 4. e8~2) | r4 e8 8 4 8 8~( | 4. f8~4) r |
  a4 4 g8 4 a8~( | 4. bes8~2) | r4 g8 8 8 4 e8~ | 2. r4 | f4 4 e8 4 d8~ | % 9a
  d8~4 e8~2 | r4 e8 8 4 8 8~ | 2 r | r4 d8 8 e4 8 f~ |
  f8 8 r f g f e c | d4 8 8 e4 8 f~ | f f r f g f e c | d4 8 8 e4 8 f~ | % 10a
  f8 8 r f g f e c | a'1~ | 1~ | 2.\fermata r4 |
  \bar "|."
}

words = \lyricmode {
  All the leaves are brown, __
  And the sky is grey. __
  I've been __ for a walk
  On a win -- ter's day.
  I'd be safe and warm, __
  If I was in L. A. __
  Cal -- i -- for -- nia dream -- in' __
  on such a win -- ter's day. __
  Oo __ Oo __
  got down on my knees, __
  I pre -- tend to pray __
  Preach -- er likes the cold, __
  He knows I'm gon -- na stay. __
  Cal -- i -- for -- nia dream -- in' __
  on such a win -- ter's day. __
  Oo __ Oo __ Du du __

  All the leaves are brown,
  And the sky __ is grey __
  I've been for a walk
  On a win -- ter's day. __
  If I did -- n't tell her __
  I could leave to -- day. __
  Cal -- i -- for -- nia dream -- in' __
  on such a win -- ter's day,
  Cal -- i -- for -- nia dream -- in' __
  on such a win -- ter's day,
  Cal -- i -- for -- nia dream -- in' __
  on such a win -- ter's day.
}

wordsMidi = \lyricmode {
  "All " "the " "leaves " "are " "brown, " 
  "\nAnd " "the " "sky " "is " "grey. " 
  "\nI've " "been "  "for " "a " "walk "
  "\nOn " "a " win "ter's " "day. "
  "\nI'd " "be " "safe " "and " "warm, " 
  "\nIf " "I " "was " "in " "L. " "A. " 
  "\nCal" i for "nia " dream "in' " 
  "\non " "such " "a " win "ter's " "day. " 
  "\nOo "  "Oo " 
  "\ngot " "down " "on " "my " "knees, " 
  "\nI " pre "tend " "to " "pray " 
  "\nPreach" "er " "likes " "the " "cold, " 
  "\nHe " "knows " "I'm " gon "na " "stay. " 
  "\nCal" i for "nia " dream "in' " 
  "\non " "such " "a " win "ter's " "day. " 
  "\nOo "  "Oo "  "Du " "du " 

  "\nAll " "the " "leaves " "are " "brown, "
  "\nAnd " "the " "sky "  "is " "grey " 
  "\nI've " "been " "for " "a " "walk "
  "\nOn " "a " win "ter's " "day. " 
  "\nIf " "I " did "n't " "tell " "her " 
  "\nI " "could " "leave " to "day. " 
  "\nCal" i for "nia " dream "in' " 
  "\non " "such " "a " win "ter's " "day, "
  "\nCal" i for "nia " dream "in' " 
  "\non " "such " "a " win "ter's " "day, "
  "\nCal" i for "nia " dream "in' " 
  "\non " "such " "a " win "ter's " "day. "
}

dynamicsAlto = {
  s1*34
  s2\< s8 s4.\! | % 6b++
  s1*38
}

alto = \relative {
  \global
  R1*3 |
  R1 \section | f'4 f e4 8 d~( | 4. e8~2) |
  r4 e8 8 4 8 8~( | 4. f8~4) r | f f e8 4 f8~ | % 2a
  f1 | r4 e8 8 8 4 cis8~ | 2. r4 |
  d4 d c8 4 bes8~( | 8~4 c8~2) | r4 d8 8 8 8 8 cis~ | % 3a
  cis2 r | a4 d c4 8 bes~ | 8 4 d8 e d e d |
  g1~ | 4 r r2 \section | f2(e | % 4a
  d8) r r4 r2 | d'1( | cis2 d4) r |
  f,4 f e8 4 f8~ | 1 | r4 d8 8 4 8 cis~ | % 5a
  cis2. r4 | d4 d c c8 bes~( | 4. c8~2)
  r8 d d d d4 8 cis~ | 2 r | % 6a
  d4 d c c8 bes~ | 8 4 d8 e d e d | d1( |
  cis2.) r4 \section | f1~( | 4 e8 f g4~ \tuplet 3/2 {8 f e} | % 7a
  f1) | r4 e8(f g4 f8 d | c2 cis |
  d2) r4 bes' | 8(a~2.~ | 4) r r2 | R1*8^\markup "Flute solo" | % 8a
  f4 f e e8 d~( | 4. e8~2) | r4 e8 8 4 8 8~( | 4. f8~4) r |
  f4 f e8 4 f8~ | 1 | r4 e8 8 8 4 cis8~ | 2. r4 | d4 4 c8 4 bes8~ | % 9a
  bes8~4 c8~2 | r4 d8 8 4 8 cis~ | 2 r | r4 d8 8 c4 8 d~ |
  d8 d r f g f e c | d4 8 8 c4 8 d~ | d d r f g f e c | d4 8 8 c4 8 d~ | % 10a
  d8 8 r f g f e c | d1~ | 1~ | 2.\fermata r4 |
  \bar "|."
}

dynamicsTenor = {
  s1*33
  s4. s8\> s2 | s2. s4\! | % 6b+
  s1*38
}

tenor = \relative {
  \global
  R1*3 |
  r2 d'8 e d c \section | d4 r r2 | r4 d8 e d(c) c a~ |
  a4 r r2 | r f'8 8~ \tuplet 3/2 {8 8 8} | 4 r r2 | % 2a
  r4 f8 8 8 4 e8~ | 4 r r2 | r a,8 8 bes a |
  f'8(d8~4) r2 | r4 d8 e d c c a~ | 4 r r2 | % 3a
  r2 f'8 e d cis | e d~4 r2 | r4 r8 f8 g f g f |
  e1~ | 4 r d8 e d c \section | d4 r r2 | % 4a
  r8 c d c d4. g,8 | a4 r r2 | r4 a8 8 bes c d e |
  f4 r r2 | r8 d f d f(d) d e~ | 4 r r2 | % 5a
  r8 a, a a e' e e e | f(d8~4) r2 | r8 c d4 \tuplet 3/2 {c d c} |
  a1 | r2 a8 g f e | % 6a
  f8 d~4 r2 | r4 r8 f g f g f | g1~ |
  g2. r4 \section | f1~( | 4 e8 d g4~ \tuplet 3/2 {8 f e} | % 7a
  f1) | r4 e8(f g4 f8 e | c2 cis |
  d2) r4 bes' | 8( a~2.~ | 4) r r2 | R1*7 | r2 d8 e d c \section | % 8a
  d4 r r2 | r4 d8 e d(c) c a~ | 4 r r2 | r f'8 8~ \tuplet 3/2 {8 8 8} |
  f4 r r2 | r4 f8 8 8 4 e8~ | 4 r r2 | r a,8 8 bes a | f'8 d~4 r2 | % 9a
  r4 d8 e d(c) c a~ | 4 r r2 | r f'8 e d cis | e8 d4.(c bes8~ |
  bes4) r8 f g f e c | d4 f8 8 g4 8 f~ | 8 8 r f g f e c | d4 f8 8 g4 8 f~ | % 10a
  f8 8 r f g f e c | d1~ | d~ | 2.\fermata r4 |
  \bar "|."
}

wordsTenor = \lyricmode {
  All the leaves are brown, __
  And the sky __ is grey,
  I've been __ for a walk
  On a win -- ter's day.
  I'd be safe and warm, __
  If I was in L. A. __
  Cal -- i -- for -- nia dream -- in' __
  on such a win -- ter's day. __

  Stopped in -- to a church,
  I passed a -- long the way.
  Oh, I got down on my knees,
  And I pre -- tend to pray __
  You know the preach -- er likes the cold, __
  He knows I'm gon -- na stay. __
  Cal -- i -- for -- nia dream -- in' __
  on such a win -- ter's day. __
  Oo __ Oo __ Du du __

  All the leaves are brown,
  And the sky __ is grey __
  I've been for a walk
  On a win -- ter's day. __
  If I did -- n't tell her __
  I could leave to -- day. __
  Cal -- i -- for -- nia dream -- in' __
  on such a win -- ter's day,
  Cal -- i -- for -- nia dream -- in' __
  on such a win -- ter's day,
  Cal -- i -- for -- nia dream -- in' __
  on such a win -- ter's day.
}

wordsTenorMidi = \lyricmode {
  "All " "the " "leaves " "are " "brown, " 
  "\nAnd " "the " "sky "  "is " "grey, "
  "\nI've " "been "  "for " "a " "walk "
  "\nOn " "a " win "ter's " "day. "
  "\nI'd " "be " "safe " "and " "warm, " 
  "\nIf " "I " "was " "in " "L. " "A. " 
  "\nCal" i for "nia " dream "in' " 
  "\non " "such " "a " win "ter's " "day. " 

  "\nStopped " in "to " "a " "church, "
  "\nI " "passed " a "long " "the " "way. "
  "\nOh, " "I " "got " "down " "on " "my " "knees, "
  "\nAnd " "I " pre "tend " "to " "pray " 
  "\nYou " "know " "the " preach "er " "likes " "the " "cold, " 
  "\nHe " "knows " "I'm " gon "na " "stay. " 
  "\nCal" i for "nia " dream "in' " 
  "\non " "such " "a " win "ter's " "day. " 
  "\nOo "  "Oo "  "Du " "du " 

  "\nAll " "the " "leaves " "are " "brown, "
  "\nAnd " "the " "sky "  "is " "grey " 
  "\nI've " "been " "for " "a " "walk "
  "\nOn " "a " win "ter's " "day. " 
  "\nIf " "I " did "n't " "tell " "her " 
  "\nI " "could " "leave " to "day. " 
  "\nCal" i for "nia " dream "in' " 
  "\non " "such " "a " win "ter's " "day, "
  "\nCal" i for "nia " dream "in' " 
  "\non " "such " "a " win "ter's " "day, "
  "\nCal" i for "nia " dream "in' " 
  "\non " "such " "a " win "ter's " "day. "
}

bass = \relative {
  \global
  R1*3 |
  r2 d'8 e d c \section | d4 r r2 | r4 d8 c d(c) c a ~ |
  a4 r r2 | r d8 8~ \tuplet 3/2 {d c bes} | a4 r r2 | % 2a
  r4 d8 8 8 4 cis8~ | cis4 r r2 | r a8 8 b a |
  a8(g~4) r2 | r4 d'8 e d c c a~ | 4 r r2 | % 3a
  r2 a8 g f e | g f~4 r2 | r4 r8 d' e d e d |
  d1~ | 4 r r2 \section | d2(c | % 4a
  bes8) r r4 r2 | a1~( | 2 bes4) r |
  c4 c cis8 4 d8~ | 1 | r4 b8 8 4 8 g~ | % 5a
  g2. r4 | a4 4 g4 8 g~( | 4. g8~2) |
  r8 g g g g4 8 8~ | 2 a8 g f e | % 6a
  f8 d~4 r2 | r4 r8 f g f g f | e1~ |
  e2. r4 \section | f1~( | 4 e8 f g4~ \tuplet 3/2 {8 f e} | % 7a
  f1) | r4 e8(f g4 f8 d | c2 cis |
  d2) r4 bes' | 8(a~2.~ | 4) r r2 | R1*7 | r2 d8 e d c \section | % 8a
  d4 r r2 | r4 d8 e d(c) c a~| 4 r r2 | r d8 8~ \tuplet 3/2 {8 c bes} |
  a4 r r2 | r4 d8 8 8 4 cis8~ | 4 r r2 | r a8 8 b a | 8 f~4 r2 | % 9a
  r4 d8 e' d(c) c a~ | 4 r r2 | r a8 g f e | g f4.( g f8 |
  f4) r8 f g f e c | d4 8 8 c4 8 bes~ | 8 8 r f' g f e c | d4 8 8 c4 8 bes~ | % 10a
  bes8 8 r f' g f e c | bes1~ | 1~ | 2.\fermata r4 |
  \bar "|."
}

pianoRH = \relative {
  \global
  \repeat unfold 2 {a8 d e a, \tuplet 3/2 {g'4 f e} | } d8 g a d, \tuplet 3/2 {e'4 d c} |
  <d, g d'>1 \section | r4 <a d f> r8 <g c e>4 r8 | r4 <f bes d> r8 <g c e>4 r8 |
  r4 <g d' e> r8 q4 r8 | r4 <g cis e>4 r8 <b d f>4 r8 | r4 <a c f> r8 <g cis e>4 r8 | % 2a
  r4 <f a d> r8 <f bes d>4 r8 | r4 <e a cis> r8 <g bes d>4 r8 | r4 <g cis e> r8 q4 r8 |
  r4 <a d f> r8 <g c e>4 r8 | r4 <f bes d> r8 <g c e>4 r8 | r4 <g d' e> r8 q4 r8 | % 3a
  r4 <g cis e> r8 q4 r8 | r4 <a d f> r8 <g c e>4 r8 | r4 <f bes d> r8 <d' f>8 <e g> <d f> |
  r4 <d g a> r8 q4 r8 | r4 q r8 q4 r8 \section | r4 <a d f> r8 <g c e>4 r8 | % 4a
  r4 <f bes d> r8 <g c e>4 r8 | r4 <g d' e> r8 q4 r8 | r4 <g cis e> r8 <f bes d>4 r8 |
  r4 <a c f> r8 <g cis e>4 r8 | r4 <a d f> r8 <bes d f>4 r8 | r4 <b d g> r8 q4 r8 | % 5a
  r4 <g cis e> r8 q4 r8 | r4 <a d f> r8 <g c e>4 r8 | r4 <f bes d> r8 <g c e>4 r8 |
  r4 <g d' e> r8 q4 r8 | r4 <g cis e> r8 q4 r8 | % 6a
  r4 <a d f> r8 <g c e>4 r8 | r4 <f bes d> r8 <d' f> <e g> <d f> | r4 <d g a> r8 <d g a> q q |
  r4 <cis g' a>4 r8 q q q \section | r a <a d f> q r a q q | r a q q r a q q | % 7a
  r8 a q q r a q q | r a <a c f> q r bes <bes d f> q | r a <a c f> q r g <g cis e> q |
  r8 a <a d f> q r bes <bes d f> q | r4 <d g a> r8 q4 r8 | \repeat unfold 9 {r4 <g, d' e> r8 q4.} \section | % 8a
  r4 <a d f> r8 <g c e>4 r8 | r4 <f bes d> r8 <g c e>4 r8 | r4 <g d' e> r8 q4 r8 | r4 <g cis e> r8 <bes d f>4 r8 |
  r4 <a c f> r8 <g cis e>4 r8 | r4 <f a d> r8 <f bes d>4 r8 | r4 <e a cis> r8 <g bes d>4 r8 | r4 <g cis e> r8 q4 r8 | r4 <a d f> r8 <g c e>4 r8 | % 9a
  r4 <f bes d> r8 <g c e>4 r8 | r4 <g d' e> r8 q4 r8 | r4 <g cis e> r8 q4 r8 | r4 <a d f> r8 <g c e>4 r8 |
  r4 <bes d f> r <g c e> | r <f a d> r8 <g c e>4 r8 | r4 <bes d f> r <g c e> | r <a d f> r8 <g c e>4 r8 | % 10a
  r4 <bes d f> r <g c e> | <a bes d f>8 q <a c d f> <a bes d f> q <a c d f> q <a bes d f> | <a c d f> q <a bes d f> <a c d f> q q <a bes d f> q | <bes d f a>2.\fermata r4 |
  \bar "|."
}

pianoLH = \relative {
  \global
  <d, a' f'>1 | q | <bes' f'> |
  <a e'>1 \section | d,4. d'8 c4. 8 | bes4. 8 c4. 8 |
  a4. 8 4. 8 | 4. 8 bes4. 8 | f4. 8 a4. 8 | % 2a
  d,4. 8 bes'4. 8 | a4. 8 e4. 8 | a4. 8 4. 8 |
  d,4. bes'8 c4. 8 | bes4. 8 c4. 8 | a4. 8 4. 8 | % 3a
  a4. 8 4. 8 | d,4. bes'8 c4. 8 | bes4. 8 c4. 8 |
  a4. 8 4. 8 | 4. 8 4. 8 \section | d,4. d'8 c4. 8 | % 4a
  bes4. 8 c4. 8 | a4. 8 4. 8 | 4. 8 bes4. 8 |
  f4. 8 a4. 8 | d,4. 8 bes'4. 8 | a4. 8 4. 8 | % 5a
  a4. 8 4. 8 | d,4. d'8 c4. 8 | bes4. 8 c4. 8 |
  a4. 8 4. 8 | 4. 8 4. 8 | % 6a
  d,4. d'8 c4. 8 | bes4. 8 c4. 8 | a4. 8 4. 8 |
  a4. 8 4. 8 \section | d,4. 8 4. 8 | 4. 8 a'4. 8 | % 7a
  d,4. 8 4. 8 | 4. a'8 bes4. 8 | f4. 8 a4. 8 |
  d,4. 8 bes'4. 8 | a4. 8 4. 8 | \repeat unfold 9 {4. 8 2} \section | % 8a
  d,4. d'8 c4. 8 | bes4. 8 c4. 8 | a4. 8 4. 8 | 4. 8 bes4. 8 |
  f4. 8 a4. 8 | d,4. 8 bes'4. 8 | a4. 8 e4. 8 | a4. 8 4. 8 | d,4. d'8 c4. 8 | % 9a
  bes4. 8 c4. 8 | a4. 8 4. 8 | 4. 8 4. 8 | d,4. d'8 c4. 8 |
  bes4. 8 c4. 8 | d4. 8 c4. 8 | bes4. 8 c4. 8 | | d4. 8 c4. 8 | % 10a
  bes4. 8 c4. 8 | <bes, bes'>8 8 8 8 8 8 8 8 | 8 8 8 8 8 8 8 8 | 2.\fermata r4 |
  \bar "|."
}

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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepagbass"
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \compressMMRests
    <<
      <<
                                % Single bass staff
          \new Staff = bass \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \RehearsalTrack
            \new Voice \bass
            \addlyrics \words
          >>
        >>
    >>
    \layout {
      #(layout-set-staff-size 19)
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRH
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRH
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRH
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

