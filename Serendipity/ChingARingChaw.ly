\version "2.25.14"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ching-a-Ring Chaw"
  subtitle    = "(Minstrel Song)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Adapted by Aaron Copland"
  arranger    = "Arranged for Chorus by Irving Fine"
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
  \key d \major
  \time 2/4
}

TempoTrack = {
  \tempo \markup{"Lively tempo" \italic "(with bounce)"} 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "3a" } s2*5
  \mark \markup { \circle "3b" } s2*5
  \mark \markup { \circle "4a" } s2*5
  \mark \markup { \circle "4b" } s2*4
  \mark \markup { \circle "5a" } s2*4
  \mark \markup { \circle "5b" } s2*4
  \mark \markup { \circle "6a" } s2*3
  \mark \markup { \circle "6b" } s2*3
  \mark \markup { \circle "7a" } s2*5
  \mark \markup { \circle "7b" } s2*5
  \mark \markup { \circle "8a" } s2*5
  \mark \markup { \circle "8b" } s2*2
  \mark \markup { \circle "9a" } s2*4
  \mark \markup { \circle "9b" } s2*5
  \mark \markup { \circle "10a" } s2*4
  \mark \markup { \circle "10b" } s2*5
  \mark \markup { \circle "11a" } s2*4
  \mark \markup { \circle "11b" } s2*4
  \mark \markup { \circle "12a" } s2*6
  \mark \markup { \circle "12b" } s2*5
  \mark \markup { \circle "13a" } s2*4
  \mark \markup { \circle "13b" } s2*5
  \mark \markup { \circle "14a" } s2*2
  \mark \markup { \circle "14b" } s2*2
  \mark \markup { \circle "15a" } s2*3
  \mark \markup { \circle "15b" } s2*3
}

soprano = \relative {
  \global
  R2
  R2*3
  a'16^\mf a a a fis8 d
  a'4. r8 % 3b
  b16 b g g g8 a
  b8 d4.
  a16 a a a fis8 d
  a'4. r8
  b8 a g a % 4a
  fis8 d4.~
  d2~
  d4. r8
  R2
  R2 % 4b
  r8 a'4^\mp 8
  b8. 16 g8 a
  b8 d4.
  a8 a fis a % 5a
  d4. r8
  b8 a g a
  fis8 d4.~
  d2 % 5b
  R2
  a'16^\mp a a a a8 r
  a16 16 16 16 8 d
  b16 16 16 16 8 r % 6a
  b16 16 16 16 8 d
  a16 16 16 16 8 r
  a16^\< 16 16 16 8 d^\f % 6b
  b8 a g a
  fis8 d~4~
  d2 % 7a
  R2
  R2
  R2
  a'8^\f a d b
  a4. r8 % 7b
  b8 b g a
  b8 d4.
  a8 a d b
  a4. 8
  b8 a g a % 8a
  d8 d,4.~
  d2~
  d4 r
  a'16^\p 16 16 16 fis8 d
  a'8 r r4 % 8b
  b16 16 16 16 g8 a
  b8 d4. % 9a
  R2
  a16^\mp 16 16 16 fis8 d
  b'8 a g a
  d8 d,4.~ % 9b
  d2
  R2
  R2
  r8 a'4^\mf d8b4 r % 10a
  r8 g4 d'8
  a4 r
  r8 a4^\f d8
  b8 a <g b> <a cis> % 10b
  <fis d'>8 d4.~
  d2~
  d4. r8
  R2
  d'8.^\ff 16 a8 fis % 11a
  d'4. r8
  d8. 16 8 8
  g8 d4.
  a8 a d fis % 11b
  <<{\vo \teeny a4.} \new Voice {\vt \normalsize d,4.} >> \ov \normalsize d8
  <b e>8 <cis fis> <d g> <cis e>
  <a d> <d g>4.~
  q2~ % 12a
  q4. r8
  R2*8
  a16^\mf 16~8 r r16 a % 12b++++
  g4. 8 % 13a
  g8^\< a b d
  fis4 d8 b
  d4.^\f a8
  g8^\< a b cis
  d8^\ff d,4.~ % 13b
  d2~
  d4. r8 R2
  R2 % 14a
  a'16^\omit\p^\markup\italic {\dynamic p (lightly) } 16 16 16 fis8 d
  d8 r a'8 16 16
  a8 d a16 16 fis8
  a16 16 16 16 8 d, % 15a
  a'16 16 16 16 8 d,
  r4 a'16^\cresc 16 16 16
  a16 16 16 16 16 16 16 16 % 15b
  a8->^\< d, fis a
  \override NoteHead.style = #'cross d4->\omit\ff^\markup\italic {\dynamic ff (shouted) } r4
  \bar "|."
}

wordsSop = \lyricmode {
  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding -- a ding kum lar -- kee,
  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding kum lar -- kee. __

  Broth -- ers, Lis -- ten to this sto -- ry,
  'Bout the prom -- ised land,
  An' the prom -- ised glo -- ry. __

  Ching a -- ring -- a ring,
  Ching a -- ring -- a ring ching,
  Ching a -- ring -- a ring,
  Ching a -- ring -- a ring ching,
  Ching a -- ring -- a ring,
  Ching a -- ring -- a ring.
  To buy you milk and hon -- ey. __

  There you'll ride in style,
  Coach with four white hor -- ses,
  There the eve -- nin' meal,
  Has one, two, three, four cours -- es. __

  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding -- a ding kum lar -- kee,
  Ching -- a -- ring -- a -- ring ching,
  Ho -- a ding kum lar -- kee. __

  We will dance,
  To the harp,
  Jig and “Cast off down the mid -- dle.” __

  When the morn -- in' come,
  All in grand and splen -- dor,
  Stand out in the sun,
  And hear the ho -- ly thun -- der. __

  Broth -- ers, __
  The prom -- ised land's a -- come -- in',
  Dance, sing and shout,
  I hear them harps a -- strum -- min'.(n) __

  Ching -- a -- ring -- a ching ching ching,
  Ching ching -- a -- ring ching ching -- a -- ching,
  Ching -- a -- ring -- a ching ching,
  Ching -- a -- ring -- a ching ching,
  Ching -- a -- ring -- a ching -- a -- ring -- a ching -- a -- ting -- a,
  Ring ching ching ching Chaw!
}

wordsMidiSop = \lyricmode {
  "Ching" a ring a "ring " "ching " "ching, "
  "\nHo" "a " ding "a " "ding " "kum " lar "kee, "
  "\nChing" a ring a "ring " "ching " "ching, "
  "\nHo" "a " "ding " "kum " lar "kee. " 

  "\nBroth" "ers, " Lis "ten " "to " "this " sto "ry, "
  "\n'Bout " "the " prom "ised " "land, "
  "\nAn' " "the " prom "ised " glo "ry. " 

  "\nChing " a ring "a " "ring, "
  "\nChing " a ring "a " "ring " "ching, "
  "\nChing " a ring "a " "ring, "
  "\nChing " a ring "a " "ring " "ching, "
  "\nChing " a ring "a " "ring, "
  "\nChing " a ring "a " "ring. "
  "\nTo " "buy " "you " "milk " "and " hon "ey. " 

  "\nThere " "you'll " "ride " "in " "style, "
  "\nCoach " "with " "four " "white " hor "ses, "
  "\nThere " "the " eve "nin' " "meal, "
  "\nHas " "one, " "two, " "three, " "four " cours "es. " 

  "\nChing" a ring a "ring " "ching " "ching, "
  "\nHo" "a " ding "a " "ding " "kum " lar "kee, "
  "\nChing" a ring a "ring " "ching, "
  "\nHo" "a " "ding " "kum " lar "kee. " 

  "\nWe " "will " "dance, "
  "\nTo " "the " "harp, "
  "\nJig " "and " "“Cast " "off " "down " "the " mid "dle.” " 

  "\nWhen " "the " morn "in' " "come, "
  "\nAll " "in " "grand " "and " splen "dor, "
  "\nStand " "out " "in " "the " "sun, "
  "\nAnd " "hear " "the " ho "ly " thun "der. " 

  "\nBroth" "ers, " 
  "\nThe " prom "ised " "land's " a come "in', "
  "\nDance, " "sing " "and " "shout, "
  "\nI " "hear " "them " "harps " a strum "min'.(n) " 

  "\nChing" a ring "a " "ching " "ching " "ching, "
  "\nChing " ching a "ring " "ching " ching a "ching, "
  "\nChing" a ring "a " "ching " "ching, "
  "\nChing" a ring "a " "ching " "ching, "
  "\nChing" a ring "a " ching a ring "a " ching a ting "a, "
  "\nRing " "ching " "ching " "ching " "Chaw! "
}

alto = \relative {
  \global
  R2*4
  a'16^\mf a a a fis8 d
  a'4. r8 % 3b
  b16 b g g g8 d
  g8 d4.
  a'16 16 16 16 fis8 d
  a'4. r8
  e8 fis g a % 4a
  fis8 d4.~
  d2~
  d4. r8
  R2
  R2 % 4b
  r8 fis4^\mp d8
  g8. 16 8 a
  g8 e4.
  a8 a fis d % 5a
  a'4. r8
  e8 fis g e
  fis8 d4.~
  d2 % 5b
  R2
  fis16^\mp 16 d d fis8 r
  fis16 16 d d fis8 d
  g16 16 d d g8 r % 6a
  g16 g d d g8 d
  fis16 16 d d fis8 r
  fis16^\< 16 16 16 8 d^\f % 6b
  e8 fis g a
  fis8 d~4~
  d2 % 7a
  R2
  R2
  R2
  fis8^\f fis a fis
  a4. r8 % 7b
  g8 e d e
  g8 e4.
  fis8 8 a fis
  fis4. a8
  e8 fis g a % 8a
  fis8 d4.~
  d2~
  d4 r
  R2
  a'16^\p 16 16 16 fis8 d % 8b
  b'8 r g16 16 16 16
  g8^\< a b d\! % 9a
  R2
  a16^\mp a a a fis8 d
  e8 fis g e
  fis8 d4.~ % 9b
  d2
  R2
  a'8^\f a fis d
  a'4. r8
  b8. 16 g8 a % 10a
  b8 d4 r8
  a8 a fis d
  a'4. r8
  e8 fis g e % 10b
  fis8 d4.~
  d2~
  d4. r8 R2
  a'8.^\ff 16 fis8 d % 11a
  a'4. r8
  g8. b16 8 a
  g8 b4.
  a8 a d b % 11b
  a4. 8
  g8 a b a
  d8 d,4.~
  d2~ % 12a
  d4. r8
  R2
  R2
  R2
  R2
  R2 % 12b
  R2
  R2
  R2
  a'16^\mf 16~8 r r16 a
  g4. 8 % 13a
  g8^\< a b d
  a8 a fis b
  a4.^\f 8
  g8^\< a b cis % 13b
  d8^\ff d,4.~
  d2~
  d4. r8
  R2
  a'16\omit\p^\markup\italic {\dynamic p (lightly) } 16 16 16 fis8 d % 14a
  d8 r r4
  a'16 16 16 16 fis8 d % 14b
  fis8 d r4
  d16 16 16 16 8 a' % 15a
  d,16 16 16 16 8 a'
  r4 a16^\cresc 16 a, a
  a'16 16 a, a a' a a, a % 15b
  a'8->^\< d, fis a
  \override NoteHead.style = #'cross d4->\omit\ff^\markup\italic {\dynamic ff (shouted) } r4
  \bar "|."
}

wordsAlto = \lyricmode {
  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding -- a ding kum lar -- kee,
  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding kum lar -- kee. __

  Broth -- ers, Lis -- ten to this sto -- ry,
  'Bout the prom -- ised land,
  An' the prom -- ised glo -- ry. __

  Ching a -- ring -- a ring,
  Ching a -- ring -- a ring ching,
  Ching a -- ring -- a ring,
  Ching a -- ring -- a ring ching,
  Ching a -- ring -- a ring,
  Ching a -- ring -- a ring.
  To buy you milk and hon -- ey. __

  There you'll ride in style,
  Coach with four white hor -- ses,
  There the eve -- nin' meal,
  Has one, two, three, four cours -- es. __

  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding -- a ding kum lar -- kee,
  Ching -- a -- ring -- a -- ring ching,
  Ho -- a ding kum lar -- kee. __

  Nights we all will dance,
  To the harp and fid -- dle,
  Waltz and jig and prance,
  “Cast off down the mid -- dle.” __

  When the morn -- in' come,
  All in grand and splen -- dor,
  Stand out in the sun,
  And hear the ho -- ly thun -- der. __

  Broth -- ers, __
  The prom -- ised land's a -- come -- in',
  Dance and sing and shout,
  I hear them harps a -- strum -- min'.(n) __

  Ching -- a -- ring -- a ching ching ching,
  Ching -- a -- ring -- a ching ching ching ching,
  Ching -- a -- ring -- a ching ching,
  Ching -- a -- ring -- a ching ching,
  Ching -- a -- ring -- a ching -- a -- ring -- a ching -- a -- ting -- a,
  Ring ching ching ching Chaw!
}

wordsMidiAlto = \lyricmode {
  "Ching" a ring a "ring " "ching " "ching, "
  "\nHo" "a " ding "a " "ding " "kum " lar "kee, "
  "\nChing" a ring a "ring " "ching " "ching, "
  "\nHo" "a " "ding " "kum " lar "kee. " 

  "\nBroth" "ers, " Lis "ten " "to " "this " sto "ry, "
  "\n'Bout " "the " prom "ised " "land, "
  "\nAn' " "the " prom "ised " glo "ry. " 

  "\nChing " a ring "a " "ring, "
  "\nChing " a ring "a " "ring " "ching, "
  "\nChing " a ring "a " "ring, "
  "\nChing " a ring "a " "ring " "ching, "
  "\nChing " a ring "a " "ring, "
  "\nChing " a ring "a " "ring. "
  "\nTo " "buy " "you " "milk " "and " hon "ey. " 

  "\nThere " "you'll " "ride " "in " "style, "
  "\nCoach " "with " "four " "white " hor "ses, "
  "\nThere " "the " eve "nin' " "meal, "
  "\nHas " "one, " "two, " "three, " "four " cours "es. " 

  "\nChing" a ring a "ring " "ching " "ching, "
  "\nHo" "a " ding "a " "ding " "kum " lar "kee, "
  "\nChing" a ring a "ring " "ching, "
  "\nHo" "a " "ding " "kum " lar "kee. " 

  "\nNights " "we " "all " "will " "dance, "
  "\nTo " "the " "harp " "and " fid "dle, "
  "\nWaltz " "and " "jig " "and " "prance, "
  "\n“Cast " "off " "down " "the " mid "dle.” " 

  "\nWhen " "the " morn "in' " "come, "
  "\nAll " "in " "grand " "and " splen "dor, "
  "\nStand " "out " "in " "the " "sun, "
  "\nAnd " "hear " "the " ho "ly " thun "der. " 

  "\nBroth" "ers, " 
  "\nThe " prom "ised " "land's " a come "in', "
  "\nDance " "and " "sing " "and " "shout, "
  "\nI " "hear " "them " "harps " a strum "min'.(n) " 

  "\nChing" a ring "a " "ching " "ching " "ching, "
  "\nChing" a ring "a " "ching " "ching " "ching " "ching, "
  "\nChing" a ring "a " "ching " "ching, "
  "\nChing" a ring "a " "ching " "ching, "
  "\nChing" a ring "a " ching a ring "a " ching a ting "a, "
  "\nRing " "ching " "ching " "ching " "Chaw! "
}

tenor = \relative {
  \global
  R2*4
  a16^\mf a a a fis8 d
  a'4. r8 % 3b
  b16 16 g g g8 d
  g8 b4.
  a16 a a a fis8 d
  a'4. r8
  g8 a b a % 4a
  fis8 d4.~
  d2~
  d4. r8
  R2
  a'8^\mp a fis d % 4b
  a'4. r8
  g8. a16 b8 d
  b8 g g b
  d4 a % 5a
  fis8 d a' r
  g8 a b b
  a8 d,4.~
  d2 % 5b
  R2
  a'8^\f a d b
  a4. r8
  b8 b g a % 6a
  b8 d4.
  a8 a d b
  a4 r8 a % 6b
  e8 fis g a
  fis8 d8~4~
  d2 % 7a
  R2
  R2
  R2
  d'8^\f d fis d
  a4. r8 % 7b
  d8 d b b
  d8 4.
  d8 8 e d
  d4. a8
  g8 a b cis % 8a
  d8 d,4.~
  d2~
  d4 r
  r4 a'16^\p a a a
  fis8 d a' r % 8b
  g16 g g g b8 a
  b8 d4. % 9a
  R2
  a16^\mp a a a fis8 d
  g8 a b b
  a8 d,4.~ % 9b
  d2
  R2
  d'2^\mf~
  d8 4 a8
  d2~ % 10a
  d8 4 b8
  d2~
  d8 4^\f a8
  d2~ % 10b
  d4. r8
  R2
  R2
  R2
  fis8.^\ff 16 d8 a % 11a
  fis'4. r8
  d8. 16 8 8
  d8 e4.
  fis8 8 d d % 11b
  fis4. 8
  e8 e e e
  fis8 d4.~
  d2~ % 12a
  d4. r8
  R2
  R2
  R2
  R2
  R2 % 12b
  R2
  R2
  a8^\mf a fis d
  a'4. r16 a
  b8 b g a % 13a
  b8^\< d4.
  a8 a d b
  d4.^\f a8
  g8^\< fis e a % 13b
  d8^\ff d,4.~
  d2~
  d4. r8
  R2
  r4 a'16\omit\p^\markup\italic {\dynamic p (lightly) } a a a % 14a
  fis8 d a' a16 a
  a8 d a16 a fis8 % 14b
  r4 a16 a a a
  d8 a16 a d8 a16 a % 15a
  d8 fis d a
  r4 a16^\cresc a a a
  a16 a a a a a a a % 15b
  a8->^\< d, fis a
  \override NoteHead.style = #'cross d4->\omit\ff^\markup\italic {\dynamic ff (shouted) } r4
  \bar "|."
}

wordsTenor = \lyricmode {
  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding -- a ding kum lar -- kee,
  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding kum lar -- kee. __

  Broth -- ers, ga -- ther round,
  Lis -- ten to this sto -- ry,
  'Bout the prom -- ised, prom -- ised land,
  An' the prom -- ised glo -- ry. __

  You don't need to fear
  If you have no mon -- ey,
  You don't need none there,
  To buy you milk and hon -- ey. __

  There you'll ride in style,
  Coach with four white hor -- ses,
  There the eve -- nin' meal,
  Has one, two, three, four cours -- es. __

  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding -- a ding kum lar -- kee,
  Ching -- a -- ring -- a -- ring ching,
  Ho -- a ding kum lar -- kee. __

  Nights we will dance,
  To the harp, __ Jig and prance. __

  When the morn -- in' come,
  All in grand and splen -- dor,
  Stand out in the sun,
  And hear the ho -- ly thun -- der. __

  Broth -- ers hear me out,
  The prom -- ised land's a -- come -- in',
  Dance and sing and shout,
  I hear them harps a -- strum -- min'.(n) __

  Ching -- a -- ring -- a ching ching,
  Ching ching -- a -- ring ching ching -- a -- ching,
  Ching -- a -- ring -- a ching
  ching -- a -- ching
  ching -- a -- ching
  ching ching ching,
  Ching  -- a -- ring -- a
  ching -- a -- ring -- a
  ching -- a -- ring -- a,
  Ring ching ching ching Chaw!
}

wordsMidiTenor = \lyricmode {
  "Ching" a ring a "ring " "ching " "ching, "
  "\nHo" "a " ding "a " "ding " "kum " lar "kee, "
  "\nChing" a ring a "ring " "ching " "ching, "
  "\nHo" "a " "ding " "kum " lar "kee. " 

  "\nBroth" "ers, " ga "ther " "round, "
  "\nLis" "ten " "to " "this " sto "ry, "
  "\n'Bout " "the " prom "ised, " prom "ised " "land, "
  "\nAn' " "the " prom "ised " glo "ry. " 

  "\nYou " "don't " "need " "to " "fear "
  "\nIf " "you " "have " "no " mon "ey, "
  "\nYou " "don't " "need " "none " "there, "
  "\nTo " "buy " "you " "milk " "and " hon "ey. " 

  "\nThere " "you'll " "ride " "in " "style, "
  "\nCoach " "with " "four " "white " hor "ses, "
  "\nThere " "the " eve "nin' " "meal, "
  "\nHas " "one, " "two, " "three, " "four " cours "es. " 

  "\nChing" a ring a "ring " "ching " "ching, "
  "\nHo" "a " ding "a " "ding " "kum " lar "kee, "
  "\nChing" a ring a "ring " "ching, "
  "\nHo" "a " "ding " "kum " lar "kee. " 

  "\nNights " "we " "will " "dance, "
  "\nTo " "the " "harp, "  "Jig " "and " "prance. " 

  "\nWhen " "the " morn "in' " "come, "
  "\nAll " "in " "grand " "and " splen "dor, "
  "\nStand " "out " "in " "the " "sun, "
  "\nAnd " "hear " "the " ho "ly " thun "der. " 

  "\nBroth" "ers " "hear " "me " "out, "
  "\nThe " prom "ised " "land's " a come "in', "
  "\nDance " "and " "sing " "and " "shout, "
  "\nI " "hear " "them " "harps " a strum "min'.(n) " 

  "\nChing" a ring "a " "ching " "ching, "
  "\nChing " ching a "ring " "ching " ching a "ching, "
  "\nChing" a ring "a " "ching "
  "\nching" a "ching "
  "\nching" a "ching "
  "\nching " "ching " "ching, "
  "\nChing" a ring "a "
  "\nching" a ring "a "
  "\nching" a ring "a, "
  "\nRing " "ching " "ching " "ching " "Chaw! "
}

bass = \relative {
  \global
  R2*4
  a16^\mf a a a fis8 d
  a'4. r8 % 3b
  b16 b g g g8 d
  g8 b4.
  a16 a a a fis8 d
  a'4. r8
  g8 fis e a % 4a
  fis8 d4.~
  d2~
  d4. r8
  R2
  a'8^\mp a fis d % 4b
  a'4. r8
  g8. a16 b8 d
  b8 g g a
  d4 a % 5a
  fis8 d a' r
  g fis e cis
  d8 4.~
  d2 % 5b
  R2
  a'8^\f a fis d
  a'4. r8
  b8 b g a % 6a
  b8 d4.
  a8 fis d a'
  a4 r8 a8 % 6b
  e8 fis g a
  fis8 d r d^\mf
  g,8 a b cis % 7a
  a8 d4.
  R2
  R2
  a'8^\f a d b
  a4. r8 % 7b
  b8 b g a
  b8 d4.
  a8 fis d' b
  a4. 8
  g8 fis e a % 8a
  d8 d,4.~
  d2~
  d4 r
  R2
  r4 a'16^\p a a a % 8b
  b8 r g16 g g g
  g8^\< a b d\! % 9a
  R2
  a16^\mp a a a fis8 d
  g8 fis e cis
  d8 4.~ % 9b
  d2
  R2
  R2
  R2
  R2*9 % 10a
  d'8.^\ff 16 8 d, % 11a
  d'4. r8
  b8. g16 8 a
  b8 d4.
  d8 d fis, a % 11b
  d4. d,8
  d'8 8 8 8
  d8 d,4.
  R2*9
  a'8^\mf a fis d % 12b+++
  a'4. r16 a
  b8 b g a % 13a
  b8^\< d4.
  a8 a d b
  a4.^\f 8
  g8^\< fis e a % 13b
  d8^\ff d,4.~
  d2~
  d4. r8
  R2
  a'8\omit\p^\markup\italic { \dynamic p (lightly) } r d, r % 14a
  a16 a a a d8 r
  a'8 r d, r % 14b
  a16 a a a d8 r
  a'8 r d, r % 15a
  a16 a a a d8 r
  r4 a'16^\cresc a a, a
  a'16 a a, a a' a a, a % 15b
  a'8->^\< d, fis a
  \override NoteHead.style = #'cross d4->\omit\ff^\markup\italic {\dynamic ff (shouted) } r4
  \bar "|."
}

wordsBass = \lyricmode {
  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding -- a ding kum lar -- kee,
  Ching -- a -- ring -- a -- ring ching ching,
  Ho -- a ding kum lar -- kee. __

  Broth -- ers, ga -- ther round,
  Lis -- ten to this sto -- ry,
  'Bout the prom -- ised, prom -- ised land,
  An' the prom -- ised glo -- ry. __

  You don't need to fear
  If you have no mon -- ey,
  You don't need none there,
  To buy you milk and hon -- ey.
  To buy you milk and hon -- ey.

  There you'll ride in style,
  Coach with four white hor -- ses,
  There the eve -- nin' meal,
  Has one, two, three, four cours -- es. __

  Ching -- a -- ring -- a -- ring,
  Ho -- a ding -- a ding kum lar -- kee,
  Ching -- a -- ring -- a -- ring ching,
  Ho -- a ding kum lar -- kee. __

  When the morn -- in' come,
  All in grand and splen -- dor,
  Stand out in the sun,
  And hear the ho -- ly thun -- der. __

  Broth -- ers hear me out,
  The prom -- ised land's a -- come -- in',
  Dance and sing and shout,
  I hear them harps a -- strum -- min'.(n) __

  Ching ching
  Ching -- a -- ring -- a -- ching,
  Ching ching,
  Ching -- a -- ring -- a -- ching,
  Ching ching,
  Ching -- a -- ring -- a -- ching,
  Ching -- a -- ring -- a
  ching -- a -- ring -- a
  ching -- a -- ring -- a,
  Ring ching ching ching Chaw!
}

wordsMidiBass = \lyricmode {
  "Ching" a ring a "ring " "ching " "ching, "
  "\nHo" "a " ding "a " "ding " "kum " lar "kee, "
  "\nChing" a ring a "ring " "ching " "ching, "
  "\nHo" "a " "ding " "kum " lar "kee. " 

  "\nBroth" "ers, " ga "ther " "round, "
  "\nLis" "ten " "to " "this " sto "ry, "
  "\n'Bout " "the " prom "ised, " prom "ised " "land, "
  "\nAn' " "the " prom "ised " glo "ry. " 

  "\nYou " "don't " "need " "to " "fear "
  "\nIf " "you " "have " "no " mon "ey, "
  "\nYou " "don't " "need " "none " "there, "
  "\nTo " "buy " "you " "milk " "and " hon "ey. "
  "\nTo " "buy " "you " "milk " "and " hon "ey. "

  "\nThere " "you'll " "ride " "in " "style, "
  "\nCoach " "with " "four " "white " hor "ses, "
  "\nThere " "the " eve "nin' " "meal, "
  "\nHas " "one, " "two, " "three, " "four " cours "es. " 

  "\nChing" a ring a "ring, "
  "\nHo" "a " ding "a " "ding " "kum " lar "kee, "
  "\nChing" a ring a "ring " "ching, "
  "\nHo" "a " "ding " "kum " lar "kee. " 

  "\nWhen " "the " morn "in' " "come, "
  "\nAll " "in " "grand " "and " splen "dor, "
  "\nStand " "out " "in " "the " "sun, "
  "\nAnd " "hear " "the " ho "ly " thun "der. " 

  "\nBroth" "ers " "hear " "me " "out, "
  "\nThe " prom "ised " "land's " a come "in', "
  "\nDance " "and " "sing " "and " "shout, "
  "\nI " "hear " "them " "harps " a strum "min'.(n) " 

  "\nChing " "ching "
  "\nChing" a ring a "ching, "
  "\nChing " "ching, "
  "\nChing" a ring a "ching, "
  "\nChing " "ching, "
  "\nChing" a ring a "ching, "
  "\nChing" a ring "a "
  "\nching" a ring "a "
  "\nching" a ring "a, "
  "\nRing " "ching " "ching " "ching " "Chaw! "
}

lh = { \change Staff = "left hand" }
rh = { \change Staff = "right hand" }

pianoRH = \relative {
  \global
  r8\omit\f
    ^\markup\italic "(to be played with a light, sharp staccato throughout)"
    ^\markup\bold {Lively tempo \italic "(with bounce)" }
    <a d fis>-. r q-.
  r8 q-. r q-.
  r8 q-. r q-.
  r8 q-. r q-.
  r8\omit\mf q-. r q-.
  r8 q-. r q-. % 3b
  r8 <b e g>-. r q-.
  r8 q-. r q-.
  r8 <a d fis>8-. r q-.
  r8 q-. r q-.
  r8 <b e g>-. r q-. % 4a
  r8 <a d fis>-. r q-.
  r8 q-. r <d fis a>-.
  r8 <a d fis>-. r q-.
  r8 q-. r q-.
  r8\omit\mp q-. r q-. % 4b
  r8 q-. r q-.
  r8 <b e g>-. r q-.
  r8 q-. r q-.
  r8 <a d fis>-. r q-. % 5a
  r8 q-. r q-.
  r8 <b e g>-. r q-.
  r8 <a d fis>-. r q-.
  r8 q-. r q-.\omit\< % 5b
  r8 q-. r q-.
  << {\lh a16\omit\f \rh <d fis a> \lh a \rh q r8 <d fis a>-.} \new Voice { s2^\markup\italic "(banjo style)" } >>
  << {\lh a8-- \rh q \lh a-- \rh q} \new Voice {r8 s r s} >>
  \lh b16 \rh <d e g> \lh b \rh q r8 <d e g>-. % 6a
  r8 q-. r q-.
  \lh a16 \rh <d fis a> \lh fis, \rh q r8 <d' fis g>-.
  << {\lh a8-- \rh q \lh a-- \rh q} \new Voice {r8 s r s} >> % 6b
  r8 <b e g>-. r q-.
  r8 <a d fis>-. r q-.
  r8 <b e g>-. r q-. % 7a
  r8 <a d fis>-. r\omit\mp q-.
  r8 q-. r q-.
  r q-. r q-.
  <d fis a>16\omit\f a q a r8 q-.
  \lh a8-- \rh q \lh a-- \rh q % 7b
  <d e g>16 b q b r8 <b d e g>-.
  r8 <b e g>-. r q-.
  <d fis a>16 a q a r8 q-.
  << {\lh a8-- \rh q \lh a-- \rh q} \new Voice {r8 s r s} >>
  r8 <b e g>-. r q-. % 8a
  r8 <a d fis>-. r q-.
  r8 q-. r\omit\> q-.
  r8 q-. r q-.
  r8\omit\mp q-. r q-.
  r8 q-. r q-. % 8b
  r8 <b e g>-. r q-.
  r8 q-. r q-. % 9a
  r8 <a d fis>-. r q-.
  r8 q-. r q-.
  r8 <b e g>-. r q-.
  r8 <a d fis>-. r q-. % 9b
  r q-. r q-.\omit\<
  r q-. r q-.\!
  r8 a''8-.\omit\f fis-. d-.
  r8 a'4--\omit\< ( 8-.->\omit\sf)
  r8 b-. g-. a-. % 10a
  r8 b4--\omit\<(d8-.->\omit\sf)
  r8 a-. fis-. d-.
  r8 a'4--\omit\<(a8-.->\omit\sf)
  <b, e>8-. <cis fis>-. <d g>-. <e a>-. % 10b
  <d fis>8-. d4-- <d d'>8-- ->\omit\sf
  <b e>8-. <cis fis>-. <d g>-. <e a>-.
  <d fis>8-. d4-- <d d'>8-- ->\omit\sf\omit\<
  <d fis>8-. d4-- <d d'>8->\omit\sf
  \ottava #1 <a' a'>8.--\omit\ff q16(fis'8)-. d % 11a
  q8-. a-. \ottava #0 fis-. d-.
  \ottava #1 <b' b'>8.-- q16(g'8-.) a-.
  q8 <d, d'> \ottava #0 b-. g-.
  <a a'>8.-- q16(fis'8-.) d-. % 11b
  <a a'>8-. a-. fis-. d-.
  <b e>8-. <cis f>-. <d g>-. <fis a>-.
  <d fis>8-. d4-- <d d'>8->\omit\sf
  \ottava #1 <b' e>8-. <cis fis>-. <d g>-. <e a>-. % 12a
  <d fis>8-. d4-- <d d'>8--\omit\sf
  <d fis>8-. d4-- <d d'>8--\omit\sf
  <d fis>8-.\omit\< d4-- <d d'>8--\sf\omit\<
  <d fis>8-._\markup\italic molto  d4-- <d d'>8--\sf\omit\<
  \ottava #0 r8\omit\p <a,, d fis>8-. r q-.
  r8 q-. r q-. % 12b
  r8 q-. r q-.
  r8 q-. r q-.
  r8\omit\mf q-. r q-.
  r8 q-. r q-.
  r8 <b e g>-. r q-. % 13a
  r8 q-. r q-.
  \lh a16\omit\< \rh <d fis a> \lh a \rh q r8 q\!
  << { \lh a8-- \omit\f \rh <d fis> \lh a-- \rh q } \new Voice {r8\omit\f a' r a} >>
  r8\omit\< <b, e g>-. r q-. % 13b
  r8\omit\ff <a d fis>-. r q-.
  r8 q-. r q-.
  r8\omit\> q-. r q-.
  r8 q-. r q-.
  r8\omit\p q-. r q-. % 14a
  r8 q-. r q-.
  r8 q-. r q-. % 14b
  r8 q-. r q-.
  r8 q-. r q-. % 15a
  r8 q-. r q-.
  r8 q-. r q-.
  r8 q-. r q-. % 15b
  R2
  \ottava #1 <fis''' fis'>2->\laissezVibrer\omit\sff
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\f
  s2
  s2
  s2
  s2\mf
  s2*10
  s2\mp % 4b
  s2*7
  s4. s8\< % 5b
  s2
  s2\f
  s2*8
  s4 s\mp % 7a+
  s2
  s2
  s2\f
  s2*7
  s4 s\> % 8a++
  s2
  s2\mp
  s2*7
  s4. s8\< % 9b+
  s2
  s8\! s4.\f
  s8 s4\< s8\sf
  s2 % 10a
  s8 s4\< s8\sf
  s2
  s8 s4\< s8\sf
  s2 % 10b
  s4. s8\sf
  s2
  s4. s8\sf\<
  s4. s8\sf
  s2-\markup\italic {\dynamic ff (jubilant) } % 11a
  s2*6
  s4. s8\sf % 11b+++
  s2 % 12a
  s4. s8\sf
  s4. s8\sf
  s2\<
  s2
  s2\!-\markup\italic {sub. \dynamic p}
  s2*3
  s2\mf % 12b+++
  s2*4
  s2\f % 13a+++
  s2\< % 13b
  s2\ff
  s2
  s2\>
  s2
  s2\p % 14a
  s2*7
  s8 s4.\<
  s2\sff
}

pianoLH = \relative {
  \global
  a8-.->\omit\sf r d, r
  a8 r d, r
  a''8-.->\omit\sf r d, r
  a8 r d, r
  a''8-.->\omit\mf r d, r
  a8 r d, r % 3b
  g,8-.-> r d' r
  g8 r d' r
  a'8-.-> r d, r
  a8 r d, r
  g,8 a b cis % 4a
  d8-> r a' r
  d8-> r d'-> r
  a8-> r d,-. r
  a8-. r d,-. r
  a''\omit\mp r d, r % 4b
  a8 r d, r
  b''8 r e, r
  b8 r e, r
  a'8 r d, r % 5a
  a8 r d, r
  g,8 a b cis
  d8 r d, r
  d'8 r a' r\omit\< % 5b
  a8 r d r
  a'8\omit\f a d b
  a4-- a--
  s4 g8 a % 6a
  b8 d b d
  a8 fis d' b
  a4-- a-- % 6b
  e8 fis g a
  fis8 d a d,
  g,8 a b cis % 7a
  d8 r d,\omit\mp r
  d'8 r a' r
  a8 r d r
  a'8\omit\f a d b
  a4-- a-- % 7b
  b8 b g a
  b8 d b d
  a8 fis d' b
  a4-- a--
  g8 fis e a, % 8a
  d,8 r d, r
  d' r a'\omit\> r
  a8 r d r
  a'8\omit\mp r d, r
  a8 r d, r % 8b
  g,8 r d' r
  g8 r d' r % 9a
  a'8 r d, r
  a8 r d, r
  g,8 a b cis
  d8 r a' r % 9b
  a8 r d r\omit\<
  d8 r a' r\!
  r8 \clef "treble" <d fis a>-.\omit\f q-. q-.
  r8 q4--\omit\<(q8-.->\omit\sf)
  r8 <d e g b>-. q-. q-. % 10a
  r8 q4--\omit\<(q8-.->\omit\sf)
  r8 <d fis a>-. q-. q-.
  r8 q4--\omit\<(q8-.->\omit\sf)
  <d e g>8-. q-. q-. q-. % 10b
  <d fis a>8-. q4-- q8-.->\omit\sf
  <d e g>8-. q-. q-. q-.
  <d fis a>8-. q4-- q8->\omit\sf\omit\<
  q q4-- q8->\omit\sf
  q4--\omit\ff q8-. q-. % 11a
  q8-. q-. q-. q-.
  <d e g b>4-- q8-. q-.
  q8-. q-. q-. q-.
  <d fis a>4-- q8-. q-. % 11b
  q8-. q-. q-. q-.
  <d e g>8-. q-. q-. q-.
  <d fis a>8-. 4-- 8-.\omit\sf
  <d e g>8-. q-. q-. q-. % 12a
  <d fis a>8-. 4-- 8-.\omit\sf
  q8-. 4-- 8-.\omit\sf
  q8-.\omit\< 4-- 8->\omit\sf
  q8-. 4-- 8-> \clef bass
  a8-. r d,-. r
  a8-. r d,-. r % 12b
  a''8-. r d,-. r
  a8-. r d,-. r
  a''8-.\omit\mf r d,-. r
  a8-. r d,-. r
  g,8-. r d'-. r % 13a
  g8-. r d'-. r
  a'8 a d b
  a4-- a--
  g8\omit\< fis e a, % 13b
  d,8\omit\ff r d, r
  d'8-. r a' r
  d8\omit\> r a' r
  d,8 r a r
  a'8\omit\p r d, r % 14a
  a8 r d r
  a'8 r d, r % 14b
  a'8 r d, r
  a'8 r d, r % 15a
  a8 r d, r
  a'8 r a,-.-- r
  d-.-- r a'-.-- r % 15b
  d8-.-> a'-.->\omit\< \clef treble d8-.-> a'-.->
  d2->\laissezVibrer \omit\sff
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "right hand"
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = "left hand"
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "right hand"
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = "left hand"
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff = "right hand"
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = "left hand"
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff = "right hand"
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = "left hand"
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff = "right hand"
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = "left hand"
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "right hand"
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = "left hand"
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
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidiSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
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
  \paper {
    output-suffix = midi-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsMidiAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
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
  \paper {
    output-suffix = midi-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMidiTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMidiBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
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
  \paper {
    output-suffix = midi-bass
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsMidiBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
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
