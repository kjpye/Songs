\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When the Buds are Blossoming"
  subtitle    = \markup {from \italic Ruddigore}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Arthur Sullivan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "W. S. Gilbert"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo Allegretto 4=122
  s1
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "96b" } s1*4
  \textMark \markup { \box "96c" } s1*4
  \textMark \markup { \box "96d" } s1*4
  \textMark \markup { \box "97a" } s1*5
  \textMark \markup { \box "97b" } s1*4
  \textMark \markup { \box "98a" } s1*4
  \textMark \markup { \box "98b" } s1*4
  \textMark \markup { \box "99a" } s1*4
  \textMark \markup { \box "99b" } s1*4
  \textMark \markup { \box "100a" } s1*3
  \textMark \markup { \box "100b" } s1*4
  \textMark \markup { \box "101a" } s1*4
  \textMark \markup { \box "101b" } s1*4
  \textMark \markup { \box "101c" } s1*4
  \textMark \markup { \box "102a" } s1*4
  \textMark \markup { \box "102b" } s1*4
  \textMark \markup { \box "103a" } s1*4
  \textMark \markup { \box "103b" } s1*4
  \textMark \markup { \box "104a" } s1*4
  \textMark \markup { \box "104b" } s1*3
  \textMark \markup { \box "105a" } s1*3
  \textMark \markup { \box "105b" } s1*4
  \textMark \markup { \box "106a" } s1*4
  \textMark \markup { \box "106b" } s1*4
}

dynamicsRose = {
  \override DynamicTextSpanner.style = #'none
  s1*14 | s1\< | s\! | s |
  s1*43 |
  s1 | s | s | s4 s2.\f | % 102c
  s1*30 |
}

rose = \relative {
  \global
  R1*4 |
  r2 b'8^\markup Rose (a) g(b) | d4(g2) d4 | b8 a b4 8(a) g(b) | d4 a a d |
  b2 8(a) b(cis) | d4 a a g | fis(a) b8(a) b(cis) d4 a a g' |
  fis2 d4. 8 | b2 e4. 8 | cis8(d cis a b cis d e | fis g) a4 d, cis | d2 r | % 97a
  r4^\markup Rose a b8 a b g | a g fis4 r2 | r4 d' cis8 d b cis | a g fis4 d'8(e) fis4 |
  b,4 4 e cis | ais fis b2~ | 8 cis b cis ais4. b8 | 2 r | % 98a
  R1 | R | r4 b4 8 cis b cis | d e fis4 e e |
  e4 d8(e) f4 d | e2 f4 d | e c8 d e4 c | a2 r | % 99a
  R1*4 |
  R1*23 |
  R1 | R | R | r4 a b8 a b g | % 102b
  a8 g fis4 r2 | r4 d' cis8 d b c | a g fis4 d'8(e) fis4 | b, b e cis | % 103a
  ais4 fis b2~ | 8 cis b cis ais4. b8 | 2 r | R1 |
  R1 | r4 b4 8 cis b cis | d e fis4 e e | e d8(e) f4 d | % 104a
  e2 f4 d | e c8 d e4 c | a2 r \section |
  R1*15 |
  \bar "|."
}

wordsRose = \lyricmode {
  When the __ buds __ are blos -- som -- ing,
  Smil -- ing __ wel -- come to the spring,
  Lov -- ers __ choose a wed -- ding day, __
  Life is __ love in mer -- ry May,
  Life is love, life is love __ in mer -- ry May!
  Fa la la la la la la la!
  Fa la la la la la la la!
  It __ is sad when sum -- mer goes,
  Fa la __ la la la la!
  Fa la!
  Fa la la la la la la la!
  Win -- ter atill is far a -- way, far a -- way—
  Fa la la la la!

  Fa la la la la la la la!
  Fa la la la la la la la!
  Spring and sum -- mer nev -- er cloy.
  Fa la __ la la la la!
  Fa la!
  Fa la la la la la la la!
  Win -- ter, af -- ter __ all, is best, af -- ter all,
  Fa la la la la!
}

wordsRoseMidi = \lyricmode {
  "[Rose]When " "the "  "buds "  "are " blos som "ing, "
  "\nSmil" "ing "  wel "come " "to " "the " "spring, "
  "\nLov" "ers "  "choose " "a " wed "ding " "day, " 
  "\nLife " "is "  "love " "in " mer "ry " "May, "
  "\nLife " "is " "love, " "life " "is " "love "  "in " mer "ry " "May! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nIt "  "is " "sad " "when " sum "mer " "goes, "
  "\nFa " "la "  "la " "la " "la " "la! "
  "\nFa " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nWin" "ter " "atill " "is " "far " a "way, " "far " a "way— "
  "\nFa " "la " "la " "la " "la! "

  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nSpring " "and " sum "mer " nev "er " "cloy. "
  "\nFa " "la "  "la " "la " "la " "la! "
  "\nFa " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nWin" "ter, " af "ter "  "all, " "is " "best, " af "ter " "all, "
  "\nFa " "la " "la " "la " "la! "
}

dynamicsHannah = {
  \override DynamicTextSpanner.style = #'none
  s1*63 | s4 s2.\f | s1*30 |
}

hannah = \relative {
  \global
  R1*17 |
  r4^\markup Hannah fis' g8 fis g e | fis e d4 r2 | r4 d' a8 b g a | fis e d4 fis8(g) a4 |
  g4 g b g | fis4 4~8 8 b a | g4 g fis2 | 2 r | % 98a
  r4 fis g8 fis e g | fis e d4 r2 | r4 fis e g | fis b g g |
  g4 f8(g) a4 g | 2 a4 g | g a8 b c4 a | fis2 r | % 99a
  R1*4 |
  R1*11 \section |
  r2 g4 d | g d g a | b2 g4 d | g d g a | % 101b
  b2 4 g | e e a2~ | 4 fis d2 | g2. e4 |
  a2. fis4 | b2. g4 | cis2. d4( | cis a) b2 | % 102a
  a4(fis) g2 | f4(d) e2 | d2 r | r4 fis g8 fis g e |
  fis8 e d4 r2 | r4 d' a8 b g a | fis e d4 fis8(g) a4 | g g b g | % 103a
  fis4 4~8 8 b a | g4 4 fis2 | 2 r | r4 fis4 g8 fis e g |
  fis8 e d4 r2 | r4 fis e g | fis b g g | g f8(g) a4 g | % 104a
  g2 a4 g | g a8 b c4 a | fis2 r \section |
  R1*15 |
}

wordsHannah = \lyricmode {
  Fa la la la la la la la!
  Fa la la la la la la la!
  It __ is sad when sum -- mer goes,
  Fa __ la la la la!
  Fa la! la!
  Fa la la la la la la la!
  Fa la la la la!
  Win -- ter still is far a -- way, far a -- way—
  Fa la la la la!

  \set stanza = "2."
  In the spring -- time seed is sown;
  In the sum -- mer grass is mown;
  In the au -- tumn you may reap;
  Win -- ter is the time for sleep,
  Win -- ter is the time for sleep.
  Fa la la la la la la la!
  Fa la la la la la la la!
  Spring and sum -- mer nev -- er cloy.
  Fa __ la la la la!
  Fa la! la!
  Fa la la la la la la la!
  Fa la la la la!
  Win -- ter, af -- ter __ all, is best, af -- ter all,
  Fa la la la la!
}

wordsHannahMidi = \lyricmode {
  "[Hannah]Fa " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nIt "  "is " "sad " "when " sum "mer " "goes, "
  "\nFa "  "la " "la " "la " "la! "
  "\nFa " "la! " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nWin" "ter " "still " "is " "far " a "way, " "far " a "way— "
  "\nFa " "la " "la " "la " "la! "

  \set stanza = "2."
  "\nIn " "the " spring "time " "seed " "is " "sown; "
  "\nIn " "the " sum "mer " "grass " "is " "mown; "
  "\nIn " "the " au "tumn " "you " "may " "reap; "
  "\nWin" "ter " "is " "the " "time " "for " "sleep, "
  "\nWin" "ter " "is " "the " "time " "for " "sleep. "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nSpring " "and " sum "mer " nev "er " "cloy. "
  "\nFa "  "la " "la " "la " "la! "
  "\nFa " "la! " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nWin" "ter, " af "ter "  "all, " "is " "best, " af "ter " "all, "
  "\nFa " "la " "la " "la " "la! "
}

dynamicsRichard = {
  \override DynamicTextSpanner.style = #'none
  s1*63 | s4 s2.\f | s1*30 |
}

richard = \relative {
  \global
  R1*17 |
  r4^\markup Richard d' d d | d a r2 | r4 d d d | d a d d |
  d4 e8(fis) g(fis) e(d) | cis(b) ais(gis) fis4 d' | cis4 4~8 e d cis | d2 r | % 98a
  r4 d e8 d cis e | d cis b4 r2 | r4 d cis e | d d e e |
  e4 c c b | c2 4 b | c e8 d c4 e | a, d8 8 8 c b a | % 99a
  g4 r r2 | R1*3 |
  R1*23 |
  R1 | R | R | r4 d' d d | % 102b
  d4 a r2 | r4 d d d | d a d d | d e8(fis) g(fis) e(d) | % 103a
  cis8(b) ais(gis) fis4 d' | cis4 4~8 e d c | d2 r | r4 d e8 d cis e |
  d8 cis b4 r2 | r4 d cis e | d d e e | e c c b | % 104a
  c2 4 b | c e8 d c4 e | a, d8 d d c b a \section |
  g4 r r2 | R1 | R | % 105a
  R1*12 |
}

wordsRichard = \lyricmode {
  Fa la la la la!
  Fa la la la la!
  It is sad when sum -- mer goes,
  Fa __ la!
  Fa la la __ la la la la!
  Fa la la la la la la la!
  Fa la la la la!
  Win -- ter still is far a -- way, far a -- way—
  Fa la la la la!
  Fa la la la la la la!
  Fa la la la la!
  Fa la la la la!
  Spring and sum -- mer nev -- er __ cloy.
  Fa __ la!
  Fa la la __ la la la la!
  Fa la la la la la la la!
  Fa la la la la!
  Win -- ter, af -- ter all, is best, af -- ter all,
  Fa la la la la!
  Fa la la la la la la!
}

wordsRichardMidi = \lyricmode {
  "[Richard]Fa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nIt " "is " "sad " "when " sum "mer " "goes, "
  "\nFa "  "la! "
  "\nFa " "la " "la "  "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nWin" "ter " "still " "is " "far " a "way, " "far " a "way— "
  "\nFa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nSpring " "and " sum "mer " nev "er "  "cloy. "
  "\nFa "  "la! "
  "\nFa " "la " "la "  "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nWin" "ter, " af "ter " "all, " "is " "best, " af "ter " "all, "
  "\nFa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la! "
}

dynamicsAdam = {
  \override DynamicTextSpanner.style = #'none
  s1*63 | s4 s2.\f | s1*30 |
}

adam = \relative {
  \global
  R1*17 |
  r4^\markup Adam d g b | d d, r2 | r4 d' fis, g | d d d' d, |
  g4 g e e | fis e d b | e cis fis fis, | b2 r | % 98a
  r4 b e g | b b, r2 | r4 b g' e b' b, c c |
  c'4 4 f, g | c2 f,4 g | c4 8 b a4 c, | d2 r | % 99a
  R1*4 |
  R1*23 |
  R1 | R | R | r4 d g b | % 102b
  d4 d, r2 | r4 d' fis, g | d d d' d, | g g e e | % 103a
  fis4 e d b | e cis fis fis, | b2 r | r4 b e g |
  b4 b, r2 | r4 b g' e | b' b, c c | c' c f, g | % 104a
  c2 f,4 g | c4 8 b a4 c, | d2 r \section |
  R1*15 |
}

wordsAdam = \lyricmode {
  Fa la la la la!
  Fa la la la la!
  It is sad when sum -- mer goes,
  Fa la! Fa la la la la la!
  Fa la la la la!
  Fa la la la la!
  Win -- ter still is far a -- way, far a -- way—
  Fa la la la la!
  Fa la la la la!
  Fa la la la la!
  Spring and sum -- mer nev -- er cloy.
  Fa la! Fa la la la la la!
  Fa la la la la!
  Fa la la la la!
  Win -- ter, af -- ter all, is best, af -- ter all,
  Fa la la la la!
}

wordsAdamMidi = \lyricmode {
  "[Adam]Fa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nIt " "is " "sad " "when " sum "mer " "goes, "
  "\nFa " "la! " "Fa " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nWin" "ter " "still " "is " "far " a "way, " "far " a "way— "
  "\nFa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nSpring " "and " sum "mer " nev "er " "cloy. "
  "\nFa " "la! " "Fa " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nWin" "ter, " af "ter " "all, " "is " "best, " af "ter " "all, "
  "\nFa " "la " "la " "la " "la! "
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*16 | s2 s\f |
  s1*16 |
  s1\p | s1*3 | % 99b
  s2\sf s\sf | s\sf s\sf | s\sf s\sf | s4.\sf s8\f s2\sf | s1*3 |
  s2 s\sf | s1*11 | % 101
  s1*6 | s2 s\f | s1 |
  s1*8 | % 103
  s1*7 |
  s1\p | s1*3 | s2\sf s\sf | s\sf s\sf | s\sf s\sf | % 105
  s4.\sf s8\f s2\sf | s1*3 | s2 s\sf | s1*3 |
}

soprano = \relative {
  \global
  R1*16 |
  r2 d''4^\markup "SOPRANOS (& Altos)"  a | % 97a
  d1~ | 2 4 a | d1~ | 2 r |
  R1*8 | % 98
  R1*4 | % 99a
  b8(c) d4 d d | d c8(b) a2 | b8(c) d4 d d | d c8(b) a2 |
  g2 a | b c | d e | % 100a
  fis2 g~ | 8 fis e d c b c b | a4 d g,2~ | 8 a b c b4 a |
  d4 r4 2 | g,8 a b c b4 g | <a d>2 2 | <b d>1 \section | % 101a
  R1*8 |
  R1*4 | % 102a
  R1 | R | r2 d4^\markup "Soprano (and Alto)" a | d1~ |
  d2 4 a | d1~ | 2 r | R1 | % 103a
  R1*11 \section |
  b8(c) d4 d d | d c8(b) a2 | b8(c) d4 d d | % 105a
  d4 c8(b) a2 | g a | b c | d e |
  fis2 g~ | 8 fis e d c b c b | a4 d g,2~ | 8 a b c b4 a | % 106a
  d4 r4 2 | g,8 a b c b4 g | <a d>2 2 | <b d>1\fermata |
}

wordsSop = \lyricmode {
  Spring is green, __
  Sum -- mer's rose, __
  Leaves in au -- tumn fade and fall,
  Win -- ter is the end of all.
  Fa la la la la la la la__
  la la la la la la la la!
  Fa la __ la la la la la la!
  Fa la la la la la la la la la!

  Spring is hope, __
  Sum -- mer's joy. __
  Spring and sum -- mer plea -- sure __ you,
  Au -- tumn, aye, and win -- ter too—
  Fa la la la la la la la __
  la la la la la la la la!
  Fa la __ la la la la la la!
  Fa la la la la la la la la la!
}

wordsSopMidi = \lyricmode {
  "\n[Soprano]Spring " "is " "green, " 
  "\nSum" "mer's " "rose, " 
  "\nLeaves " "in " au "tumn " "fade " "and " "fall, "
  "\nWin" "ter " "is " "the " "end " "of " "all. "
  "\nFa " "la " "la " "la " "la " "la " "la " "la__ "
  "\nla " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la "  "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la! "

  "\nSpring " "is " "hope, " 
  "\nSum" "mer's " "joy. " 
  "\nSpring " "and " sum "mer " plea "sure "  "you, "
  "\nAu" "tumn, " "aye, " "and " win "ter " "too— "
  "\nFa " "la " "la " "la " "la " "la " "la " "la " 
  "\nla " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la "  "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la! "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*33 |
  s1\p | s1*3 | % 99c
  s1\cresc | s1 | s | s2. s4\f | s1*3 | % 100
  s2 s\sf | s1*11 |
  s1*23 |
  s1\p | s1*6 | % 105
  s2. s4\f | s1*3 | s2 s\sf | s1*3 |
}

alto = \relative {
  \global
  R1*33 |
  g'4 g g g | fis4 4 2 | g4 4 4 4 | fis4 4 2 | % 99b
  g8(fis) e(d) e4 4 | b'8(a) g(fis) g2 | d'8(c) b(a) b4 4 | % 100a
  c8(b) c(a) g4 g | e'8 d c b a g a g | fis4 4 e g->~ | g g g fis |
  g4 r g2 | 4 4 4 4 | 2 fis | <d g>1 \section | % 101a
  R1*8 |
  R1*23 \section |
  g4 4 4 4 | fis4 4 2 | g4 g g g | % 105a
  fis4 4 2 | g8(fis) e(d) e4 e | b'8(a) g(fis) g2 | d'8(c) b(a) b4 b |
  c8(b) c(a) g4 g | e'8 d c b a g a g | fis4 4 e g->~ | g g g fis | % 106a
  g4 r g2 | g4 g g g | 2 fis | <d g>1\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  Leaves in au -- tumn fade and fall,
  Win -- ter is the end of all,
  Spring __ and __ sum -- mer teem with glee;
  Spring __ and __ sum -- mer, then, __ for __ me!
  Fa la la la la la la la la la!
  Fa la!
  Fa __ la la la la!
  Fa la la la la la la la!

  Spring and sum -- mer plea -- sure you,
  Au -- tumn, aye, and win -- ter too—
  Ev -- 'ry sea -- son has its cheer,
  Life is love -- ly all the year!
  Fa la la la la la la la la la!
  Fa la!
  Fa __ la la la la!
  Fa la la la la la la la!
}

wordsAltoMidi = \lyricmode {
  "\n[Alto]Leaves " "in " au "tumn " "fade " "and " "fall, "
  "\nWin" "ter " "is " "the " "end " "of " "all, "
  "\nSpring "  "and "  sum "mer " "teem " "with " "glee; "
  "\nSpring "  "and "  sum "mer, " "then, "  "for "  "me! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la! "
  "\nFa "  "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "

  "\nSpring " "and " sum "mer " plea "sure " "you, "
  "\nAu" "tumn, " "aye, " "and " win "ter " "too— "
  "\nEv" "'ry " sea "son " "has " "its " "cheer, "
  "\nLife " "is " love "ly " "all " "the " "year! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la! "
  "\nFa "  "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  R1*21 |
  R1 | R | R | r2 b4^\markup TENORS fis | % 98a
  b1~ | 2 4 fis | b1 ~ | 2 r |
  R1*4 | % 99a
  <b d>4 4 4 4 | <c d>4 4 2 | <b d>4 4 4 4 | <c d>4 4 2 |
  g4 g c8(b) a(g) | fis4 b e8(d) c b | a4 d g8(fis) e(d) | % 100a
  c2(d4) g8 fis | e4 g, a4. b8 | c b c a g4 d' | e2 d4 d |
  d4 r f2 | e4 e d <<{\voiceOne d} \new Voice {\voiceTwo c8(b)}>> | \oneVoice <a d>2 2 | <g b>1 \section | % 101a
  R1*8 |
  R1*12 |
  R1 | R | r2 b4 fis | b1~ | % 103b
  b2 4 fis | b1~ | 2 r | R1 | % 104a
  R1*3 \section |
  <b d>4 4 4 4 | <c d>4 4 2 | <b d>4 4 4 4 | % 105a
  <c d>4 4 2 | g4 g c8(b) a(g) | fis4 b e8(d) c b | a4 d g8(fis) e(d) |
  c2(d4) g8 fis | e4 g, a4. b8 | c b c a g4 d' | e2 d4 4 | % 106a
  d4 r f2 | e4 e d <<{\voiceOne d4} \new Voice {\voiceTwo c8(b)}>> \oneVoice <a d>2 2 <g b>1\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  Au -- tumn's gold, __
  Win -- ter's grey, __
  Leaves in au -- tumn fade and fall,
  Win -- ter is the end of all.
  Spring and sum -- er __ teem with glee;
  Spring and sum -- mer, them for __ me! __
  Fa la la la la la la la la la la!
  Fa la la la la!
  Fa la la la la __ la la la!

  Au -- tumn, toil, __
  Win -- ter, rest. __
  Spring and sum -- mer plea -- sure you,
  Au -- tumn, aye, and win -- ter too—
  Ev -- 'ry sea -- son __ has its cheer,
  Life is love -- ly all the year! __
  Fa la la la la la la la la la la!
  Fa la la la la!
  Fa la la la la __ la la la!
}

wordsTenorMidi = \lyricmode {
  "\n[Tenor]Au" "tumn's " "gold, " 
  "\nWin" "ter's " "grey, " 
  "\nLeaves " "in " au "tumn " "fade " "and " "fall, "
  "\nWin" "ter " "is " "the " "end " "of " "all. "
  "\nSpring " "and " sum "er "  "teem " "with " "glee; "
  "\nSpring " "and " sum "mer, " "them " "for "  "me! " 
  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la "  "la " "la " "la! "

  "\nAu" "tumn, " "toil, " 
  "\nWin" "ter, " "rest. " 
  "\nSpring " "and " sum "mer " plea "sure " "you, "
  "\nAu" "tumn, " "aye, " "and " win "ter " "too— "
  "\nEv" "'ry " sea "son "  "has " "its " "cheer, "
  "\nLife " "is " love "ly " "all " "the " "year! " 
  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la "  "la " "la " "la! "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  R1*33 |
  g4 d g d | a' d, d'2 | g,4 d g d | a' d, d' d,8 c | % 99b
  b2 c4. 8 | d4 d e e | fis2 g4. 8 | % 100a
  a4 a b b, | c2. a4 | d2 e4 b | c a d c |
  b4 r b'2 | c4 a d d, | 2 2 | <g, d'>1 \section | % 101a
  R1*8 |
  R1*23 \section |
  g'4 d g d | a' d, d'2 | g,4 d g d | % 105a
  a'4 d, d' d,8 c | b2 c4. 8 | d4 d e e | fis2 g4. 8 |
  a4 a b b, | c2. a4 | d2 e4 b | c a d c | % 106a
  b4 r b'2 | c4 a d d, | 2 2 | <g, d'>1\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  Leaves in au -- tumn fade and fall,
  Win -- ter is the end of all,
  Fa la la!
  Spring and sum -- mer teem with glee;
  Spring and sum -- mer, then, for me!
  Fa la la!
  Fa la la la la la!
  Fa la la la la la la la!

  Spring and sum -- mer plea -- sure you,
  Au -- tumn, aye, and win -- ter too—
  Fa la la!
  Ev -- 'ry sea -- son has its cheer,
  Life is love -- ly all the year!
  Fa la la!
  Fa la la la la la!
  Fa la la la la la la la!
}

wordsBassMidi = \lyricmode {
  "[Bass]Leaves " "in " au "tumn " "fade " "and " "fall, "
  "\nWin" "ter " "is " "the " "end " "of " "all, "
  "\nFa " "la " "la! "
  "\nSpring " "and " sum "mer " "teem " "with " "glee; "
  "\nSpring " "and " sum "mer, " "then, " "for " "me! "
  "\nFa " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "

  "\nSpring " "and " sum "mer " plea "sure " "you, "
  "\nAu" "tumn, " "aye, " "and " win "ter " "too— "
  "\nFa " "la " "la! "
  "\nEv" "'ry " sea "son " "has " "its " "cheer, "
  "\nLife " "is " love "ly " "all " "the " "year! "
  "\nFa " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la! "
  "\nFa " "la " "la " "la " "la " "la " "la " "la! "
}

pianoRHone = \relative {
  \global \oneVoice 
  r2 <c'' e>8-. <b d>-. <a c>-. <b d>-> |
  \voiceOne e4 a2 e4 |
  c8 b c4~8 fis, g a |
  \oneVoice <g b>8 <a c> <d, b' d> r <e g b> r <c fis a> r |
  <b g'>8 r r4 b'8(a) g(b) | d4 g2 d4 | b8 a b4 8(a) g(b) d4 a a d | % 96c
  b2 8(a) b(cis) | d4 a a g | fis(a) b8(a) b(cis) d4 a a <g g'> |
  fis'2 d4. 8 | b2 e4. 8 | cis8(d cis) a-. b-. cis-. d-. e-. \voiceOne | fis8(g) a \oneVoice r8 <g, b d> r <e a cis> r | <fis a d> r r4 d' a | % 97a
  d4 <d, fis a>-. <d g b>-. <d e g>-. | % 97b
  <fis a>4-. <d fis>-. d' a |
  d4 d <d, a' cis> <d g b> |
  <fis a>4 <d fis> d'8 e fis4 |
  \voiceOne b,4 b e cis | \oneVoice ais fis~8 8 b a \voiceOne | r8 cis b cis ais4. b8 | \oneVoice <d, fis b>4 r r2 | % 98a
  r4 <b d fis> <b e g> <b cis e> | % 98b
  <b d fis>4 <b d> r2 |
  r4 <b d fis> <b cis e> <b e g> |
  <d fis>4 b <g' e'>8 r q r |
  q4 <f d'>8 <g e'> <a f'>4 <g d'> | <g e'>4~8 r r2 | R1 | R | % 99a
  <b, d g>8 r q r q r q r | <c d fis> r q r q r q r | <b d g> r q r q r q r | <c d fis> r q r q2 |
  \voiceOne <d g>4 r <e a> r | b' r <g c> r | d' r <b e> r | % 100a
  \oneVoice <c fis>4 r \voiceOne g'2~ | 8 fis e d \oneVoice <a c> <g b> <a c> <g b> | <fis a>4 <fis d'> <g b> r | R1 |
  R1*4 | % 101a
  <b, g'>4(<c d> <b g> <c d>) | % 101b
  <b g'>4(<c d> <d g> <fis a>) |
  <g b>4(d <b g'> <c d>) |
  <b g'>4( <c d> <d g> <fis a>) |
  <g b>4( d <d b'> <e g>) | % 101c
  \voiceOne e2(a4 fis) |
  d2~4 e8(<a, fis'>) |
  \oneVoice <g g'>4 <a a'>8(<b b'> <cis cis'>2)~ |
  q8 <a a'>8(<b b'> <cis cis'> <d d'>2)~ | % 102a
  q8 d'(e fis g4) <g, b>~ |
  <g cis>8(a \voiceOne b c \oneVoice <fis, d'>2)~ |
  q2~( <d d'>8) <e e'>(<d d'> <e e'>) |
  <fis fis'>8 <g g'> <a a'>4~8 <b b'>8 <cis cis'>4 | % 102b
  d'2\trill \appoggiatura cis8 d8 e <cis, cis'>4 |
  <d d'>4 r d a |
  d <d, fis a> <d g b> <d e g> |
  <fis a>4 <d fis> d' a | % 103a
  d4 d <d, a' cis> <d g b> |
  <fis a>4 <d fis> d'8(e) fis4 |
  \voiceOne b,4 b e cis |
  ais4 fis~8 8 b a | % 103b
  r8 cis b cis a4. b8 |
  \oneVoice <d, fis b>4 r r2 |
  r4 <b d fis> <b e g> <b cis e> |
  <d fis>4 <b d> r2 | % 104a
  r4 <b d fis> <b cis e> <b e g> |
  <d fis>4 b <g' e'>8 r q r |
  q4 <f d'>8 <g e'> <a f'>4 <g d'> |
  <g e'>4~8 r r2 | R1 | R1 \section | % 104b
  <b, d g>8 r q r q r q r | <c d fis> r q r q2 | <b d g>8 r q r q r q r | % 105a
  <c d fis>8 r q r q2 | % 105b
  \voiceOne g'4 r <e a> r |
  b'4 r <g c> r |
  d'4 r <b e> r |
  fis'4 r g2~ | % 106a
  <e g>8 <d fis> <c e> <b d> <a c> <g b> <a c> <b d> |
  \oneVoice <fis a>4 <fis d'> <g b> r |
  R1 |
  R1*3 | R1\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s1 | c''8 b a g a2~ | 8 g f a e d e fis | s1 |
  s1*4 |
  s1*4 |
  s1 | s | s | a8 r d r s2 | s1 | % 97a
  s1*4 |
  d,4 e8 fis g fis e d | s1 | <<{\voiceTwo <cis g'>2~cis8 e d cis} \new Voice {\voiceThree s2 f}>> | s1 | % 98a
  \voiceTwo s1*4 |
  s1*8 | % 99
  g8 fis e d s4 r | b'8 a g fis s4 r | d'8 c b a g fis e d | % 100a
  s2 <b' d>4 g8 fis | <e e'> d' c b s2 | s1 | s |
  s1*4 | % 101a
  s1*4 |
  s1 <<{\voiceTwo cis,2 2~|4 b8 ais b4. s8} \new Voice {\voiceFour a2. 4 | s2. d4}>> | s1 |
  s1*8 | % 102
  s1 | s | s | d4 e8 fis g fis e d |
  cis8 \change Staff = pianolh \voiceOne b ais gis fis s d'4 \change Staff = pianorh \voiceTwo | <<{<cis g'>2~cis8 e d cis} \new Voice {\voiceFour s2 fis}>> | s1 | s |
  s1*7 | % 104
  s1*3 |
  s1 | g8 fis e d s4 r | b'8 a g fis s4 r | d'8 c b a g fis e d |
  c'4 r <b d> g8 fis | e4 s2. | s1 | s | % 106a
  s1*4 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2 s\p | s1*3 |
  s2 s\p | s s\p | s1 | s |
  s1*4 |
}

pianoLHone = \relative {
  \global
  r2 <a c>8-. <b d>-. <c e>-. <b d>-. |
  \voiceOne c2~8 b a g |
  a4 d2 d,4~ |
  d4 \oneVoice <b g'>8 r <c g'> r d r |
  <g, g'>8 r r4 r2 | \voiceOne b'8 d g d b d g d | b d g d b d g d | c d fis d c d fis d | % 96c
  b8 d g d b d g d | a[d r d] a[cis r cis] | a d fis d b d g d | a[d r d] a[cis r cis] |
  a8 d fis d a d a' d, | b d g d b e g e |  a,8 e' g e g, e' g e | r d fis, r \oneVoice g r a r | d, r r4 r2 | % 97a
  r4 d g a | d d, r2 | r4 d' fis, g | <d d'> d r d' |
  g,8 r r4 d8 r r4 | \voiceOne cis'8 b ais gis fis4 d' | \oneVoice d,8 r cis r fis r fis, r | b4 r b' fis | % 98a
  b4 b, e g | b b, b' g | b b, g' e | b' b, <c c'>8 r q r |
  q8 r r4 <f c'> <g b> | c4~8 r r2 | R1 | R | % 99a
  g,8 r d r g r d r | a' r d, r d'2 | g,8 r d r g r d r | a' r d, r d'2 |
  \voiceOne g4 g c8 b a g | fis4 b e8 d c b | a4 d \oneVoice g, r | % 100a
  \voiceOne c2 d4 s | c, g' a4. b8 | c b c a g4 r | R1 |
  R1*4 | % 101a
  g4 a g a | g a b c | d d, g a | g a b c |
  d4 d, g b | a,(g fis g8 a) | fis'4 d \oneVoice b8 a g fis | <e e'>4(<fis fis'>8 <g g'> <a a'>2) ~ |
  q8 <fis fis'>8(<g g'> <a a'> <b b'>2)~ | 4 <a' cis>(<g b> <e, e'>) | <a a'>2 <b' d> | <a d>(g) | % 102a
  \voiceOne s2 cis4(a)~ | \oneVoice <d, a'> <fis a>(<g b> <a g'>) | <d fis> r r2 | r4 d, g b |
  d4 d, r2 | r4 d' fis, g | <d d'> d r d' | g,8 r r4 e8 r r4 | % 103a
  \voiceTwo fis8 e e r d r b r | \oneVoice e8 r cis r fis r fis, r | b4 r b' fis | b b, e g |
  b4 b, b' fis | b b, g' e | b' b, <c c'>8 r q r | q r r4 <f c'> <g b> | % 104a
  c4~8 r r2 | R1 | R \section |
  g,8 r d r g r d r | a' r d, r d'2 | g,8 r d r g r d r | % 105a
  a'8 r d, r d'2 | \voiceOne g4 g c8 b a g | fis4 b e8 d c b | a4 d \oneVoice g, r |
  \voiceOne c2 d4 b, | c g' a4. b8 | c b c a g4 r | R1 |
  R1 | R | R | R\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s1 | a2 a | f4 a <d, a'> c~ | c s2. |
  s1 | g'8 r r4 g8 r r4 | g8 r r4 g8 r r4 | g8 r r4 g8 r r4 |
  g8 r r4 g8 r r4 | fis8 r r4 e8 r r4 | d8 r r4 g8 r r4 | fis8 r r4 e8 r r4 |
  d8 r r4 fis8 r r4 | g8 r r4 e8 r r4 | a2 g~ | 4 fis8 r s2 | s1 | % 97a
  s1*4 |
  s1 | fis8 r e r d e b r | s1 | s | % 98a
  s1*4 |
  s1*8 | % 99
  b4 r c r | d r e r | fis r g r | % 100a
  a4 r b b, | c2. a4 | d2 e4 r | s1 |
  s1*4 | % 101a
  g,1~ | g~ | g~ | g~ |
  g2 4(e) | s1 | b'2 s | s1 |
  s1*4 | % 102a
  <fis' d'>2(<e g>) | s1 | s | s |
  s1*8 | % 103
  s1*7 |
  s1*3 | % 105a
  s1 | b4 r c r | d r e r | fis r g r |
  a2 b4 s | c,2. a4 | d2 e4 r | s1 | % 106a
  s1*4 |
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
                                % Rose
          \new Staff = Rose \with {
            instrumentName = #"Rose"
            shortInstrumentName = #"Rose"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Rose} \dynamicsRose
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \rose
            \addlyrics \wordsRose
          >>
                                % Hannah
          \new Staff = Hannah \with {
            instrumentName = #"Hannah"
            shortInstrumentName = #"Hannah"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Hannah} \dynamicsHannah
            \new Voice \hannah
            \addlyrics \wordsHannah
          >>
                                % Richard
          \new Staff = Richard \with {
            instrumentName = #"Richard"
            shortInstrumentName = #"Richard"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = Richard} \dynamicsRichard
            \new Voice \richard
            \addlyrics \wordsRichard
          >>
                                % Adam
          \new Staff = Adam \with {
            instrumentName = #"Adam"
            shortInstrumentName = #"Adam"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = Adam} \dynamicsAdam
            \new Voice \adam
            \addlyrics \wordsAdam
          >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
    <<
      <<
                                % Rose
          \new Staff = Rose \with {
            instrumentName = #"Rose"
            shortInstrumentName = #"Rose"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Rose} \dynamicsRose
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \rose
            \addlyrics \wordsRose
          >>
                                % Hannah
          \new Staff = Hannah \with {
            instrumentName = #"Hannah"
            shortInstrumentName = #"Hannah"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Hannah} \dynamicsHannah
            \new Voice \hannah
            \addlyrics \wordsHannah
          >>
                                % Richard
          \new Staff = Richard \with {
            instrumentName = #"Richard"
            shortInstrumentName = #"Richard"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = Richard} \dynamicsRichard
            \new Voice \richard
            \addlyrics \wordsRichard
          >>
                                % Adam
          \new Staff = Adam \with {
            instrumentName = #"Adam"
            shortInstrumentName = #"Adam"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = Adam} \dynamicsAdam
            \new Voice \adam
            \addlyrics \wordsAdam
          >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
    <<
      <<
                                % Rose
          \new Staff = Rose \with {
            instrumentName = #"Rose"
            shortInstrumentName = #"Rose"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Rose} \dynamicsRose
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \rose
            \addlyrics \wordsRose
          >>
                                % Hannah
          \new Staff = Hannah \with {
            instrumentName = #"Hannah"
            shortInstrumentName = #"Hannah"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = Hannah} {\teeny \dynamicsHannah}
            \new Voice \hannah
            \addlyrics {\tiny \wordsHannah}
          >>
                                % Richard
          \new Staff = Richard \with {
            instrumentName = #"Richard"
            shortInstrumentName = #"Richard"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = Richard} {\teeny \dynamicsRichard}
            \new Voice \richard
            \addlyrics {\tiny \wordsRichard}
          >>
                                % Adam
          \new Staff = Adam \with {
            instrumentName = #"Adam"
            shortInstrumentName = #"Adam"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = Adam} {\teeny \dynamicsAdam}
            \new Voice \adam
            \addlyrics {\tiny \wordsAdam}
          >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
    <<
      <<
                                % Rose
          \new Staff = Rose \with {
            instrumentName = #"Rose"
            shortInstrumentName = #"Rose"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = Rose} {\teeny \dynamicsRose}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \rose
            \addlyrics {\tiny \wordsRose}
          >>
                                % Hannah
          \new Staff = Hannah \with {
            instrumentName = #"Hannah"
            shortInstrumentName = #"Hannah"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Hannah} \dynamicsHannah
            \new Voice \hannah
            \addlyrics \wordsHannah
          >>
                                % Richard
          \new Staff = Richard \with {
            instrumentName = #"Richard"
            shortInstrumentName = #"Richard"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = Richard} {\teeny \dynamicsRichard}
            \new Voice \richard
            \addlyrics {\tiny \wordsRichard}
          >>
                                % Adam
          \new Staff = Adam \with {
            instrumentName = #"Adam"
            shortInstrumentName = #"Adam"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = Adam} {\teeny \dynamicsAdam}
            \new Voice \adam
            \addlyrics {\tiny \wordsAdam}
          >>
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
    <<
      <<
                                % Rose
          \new Staff = Rose \with {
            instrumentName = #"Rose"
            shortInstrumentName = #"Rose"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = Rose} {\teeny \dynamicsRose}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \rose
            \addlyrics {\tiny \wordsRose}
          >>
                                % Hannah
          \new Staff = Hannah \with {
            instrumentName = #"Hannah"
            shortInstrumentName = #"Hannah"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = Hannah} {\teeny \dynamicsHannah}
            \new Voice \hannah
            \addlyrics {\tiny \wordsHannah}
          >>
                                % Richard
          \new Staff = Richard \with {
            instrumentName = #"Richard"
            shortInstrumentName = #"Richard"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = Richard} \dynamicsRichard
            \new Voice \richard
            \addlyrics \wordsRichard
          >>
                                % Adam
          \new Staff = Adam \with {
            instrumentName = #"Adam"
            shortInstrumentName = #"Adam"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = Adam} {\teeny \dynamicsAdam}
            \new Voice \adam
            \addlyrics {\tiny \wordsAdam}
          >>
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
    <<
      <<
                                % Rose
          \new Staff = Rose \with {
            instrumentName = #"Rose"
            shortInstrumentName = #"Rose"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = Rose} {\teeny \dynamicsRose}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \rose
            \addlyrics {\tiny \wordsRose}
          >>
                                % Hannah
          \new Staff = Hannah \with {
            instrumentName = #"Hannah"
            shortInstrumentName = #"Hannah"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = Hannah} {\teeny \dynamicsHannah}
            \new Voice \hannah
            \addlyrics {\tiny \wordsHannah}
          >>
                                % Richard
          \new Staff = Richard \with {
            instrumentName = #"Richard"
            shortInstrumentName = #"Richard"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = Richard} {\teeny \dynamicsRichard}
            \new Voice \richard
            \addlyrics {\tiny \wordsRichard}
          >>
                                % Adam
          \new Staff = Adam \with {
            instrumentName = #"Adam"
            shortInstrumentName = #"Adam"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = Adam} \dynamicsAdam
            \new Voice \adam
            \addlyrics \wordsAdam
          >>
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
                                % Rose
          \new Staff = Rose \with {
            instrumentName = #"Rose"
            shortInstrumentName = #"Rose"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Rose} \dynamicsRose
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \rose
            \addlyrics \wordsRoseMidi
          >>
                                % Hannah
          \new Staff = Hannah \with {
            instrumentName = #"Hannah"
            shortInstrumentName = #"Hannah"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Hannah} \dynamicsHannah
            \new Voice \hannah
          >>
                                % Richard
          \new Staff = Richard \with {
            instrumentName = #"Richard"
            shortInstrumentName = #"Richard"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = Richard} \dynamicsRichard
            \new Voice \richard
          >>
                                % Adam
          \new Staff = Adam \with {
            instrumentName = #"Adam"
            shortInstrumentName = #"Adam"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = Adam} \dynamicsAdam
            \new Voice \adam
          >>
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
                                % Rose
          \new Staff = Rose \with {
            instrumentName = #"Rose"
            shortInstrumentName = #"Rose"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Rose} \dynamicsRose
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \rose
          >>
                                % Hannah
          \new Staff = Hannah \with {
            instrumentName = #"Hannah"
            shortInstrumentName = #"Hannah"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Hannah} \dynamicsHannah
            \new Voice \hannah
            \addlyrics \wordsHannahMidi
          >>
                                % Richard
          \new Staff = Richard \with {
            instrumentName = #"Richard"
            shortInstrumentName = #"Richard"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = Richard} \dynamicsRichard
            \new Voice \richard
          >>
                                % Adam
          \new Staff = Adam \with {
            instrumentName = #"Adam"
            shortInstrumentName = #"Adam"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = Adam} \dynamicsAdam
            \new Voice \adam
          >>
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
                                % Rose
          \new Staff = Rose \with {
            instrumentName = #"Rose"
            shortInstrumentName = #"Rose"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Rose} \dynamicsRose
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \rose
          >>
                                % Hannah
          \new Staff = Hannah \with {
            instrumentName = #"Hannah"
            shortInstrumentName = #"Hannah"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Hannah} \dynamicsHannah
            \new Voice \hannah
          >>
                                % Richard
          \new Staff = Richard \with {
            instrumentName = #"Richard"
            shortInstrumentName = #"Richard"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = Richard} \dynamicsRichard
            \new Voice \richard
            \addlyrics \wordsRichardMidi
          >>
                                % Adam
          \new Staff = Adam \with {
            instrumentName = #"Adam"
            shortInstrumentName = #"Adam"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = Adam} \dynamicsAdam
            \new Voice \adam
          >>
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
                                % Rose
          \new Staff = Rose \with {
            instrumentName = #"Rose"
            shortInstrumentName = #"Rose"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Rose} \dynamicsRose
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \rose
          >>
                                % Hannah
          \new Staff = Hannah \with {
            instrumentName = #"Hannah"
            shortInstrumentName = #"Hannah"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = Hannah} \dynamicsHannah
            \new Voice \hannah
          >>
                                % Richard
          \new Staff = Richard \with {
            instrumentName = #"Richard"
            shortInstrumentName = #"Richard"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = Richard} \dynamicsRichard
            \new Voice \richard
          >>
                                % Adam
          \new Staff = Adam \with {
            instrumentName = #"Adam"
            shortInstrumentName = #"Adam"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = Adam} \dynamicsAdam
            \new Voice \adam
            \addlyrics \wordsAdamMidi
          >>
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
