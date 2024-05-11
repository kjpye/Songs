\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Frog and the Mouse"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "American Folk Song"
  arranger    = "Arr. Mary McAuliffe"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
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
  \key g \major
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
  \tempo 4=186
  \set Score.tempoHideNote = ##t
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "5c" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "7c" } s1*3
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*3
  \textMark \markup { \box "8c" } s1*3
  \textMark \markup { \box "9a" } s1*3
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "9c" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "10c" } s1*3
  \textMark \markup { \box "11a" } s1*3
  \textMark \markup { \box "11b" } s1*3
  \textMark \markup { \box "11c" } s1*3
  \textMark \markup { \box "12a" } s1*3
  \textMark \markup { \box "12b" } s1*3
  \textMark \markup { \box "12c" } s1*3
  \textMark \markup { \box "13a" } s1*3
  \textMark \markup { \box "13b" } s1*3
  \textMark \markup { \box "13c" } s1*3
  \textMark \markup { \box "14a" } s1*4
  \textMark \markup { \box "14b" } s1*3
  \textMark \markup { \box "14c" } s1*3
  \textMark \markup { \box "15a" } s1*3
  \textMark \markup { \box "15b" } s1*3
  \textMark \markup { \box "15c" } s1*3
  \textMark \markup { \box "16a" } s1*3
  \textMark \markup { \box "16b" } s1*3
  \textMark \markup { \box "16c" } s1*3
}

click = {
  \once \override Accidental.stencil = ##f \tweak style #'cross b4-.
}

partI = \relative {
  \global
  R1
  r2 r4 r8 d'^\mf
  g4 8 8 8 8 b4
  a4-> g e d->( % 3b
  g1~
  g2.) r8 g
  b4 d8 d d d d4 % 4a
  e4-> d b g8 g
  g4 g8 g g4 b-.
  a4-> g e d( % 4b
  g1~
  g2.) r8 d
  g4 g g b % 4c
  a4 g e d->(
  g1~
  g2.) r8 g % 5a
  b4 d d d
  e4 d b4. g8
  g4-. g g b % 5b
  a4 g e d->(
  g1~
  g2.) r4 % 5c
  R1
  r2 r4 g
  <b d>2->^\markup\italic div. ( <c e>4) r % 6a
  <a f'>4-> <c e> <b d> c8 c
  d8-> g,4. g2~
  g2. g8 g % 6b
  g4 <c e>^\markup\italic div. <b d> b-.
  r4 d8 d c8-> d4.
  r4 b4-. d->( c % 6c
  b2 ais)
  b4->\omit\p^\markup \italic {\dynamic p legato} fis8 fis fis fis fis4~
  fis4 fis fis fis % 7a
  fis8-> g g2 g4
  g8-> a a2 e4
  e4-> fis2.~ % 7b
  fis4 fis8 fis e-> a4.
  b1~
  b2. r4 % 7c
  d2->^\mf cis->
  b2.-> b4
  cis2. e4 % 8a
  d4(cis) b2
  a4 a8 a a a a4~
  a1 % 8b
  a4 a8 a a a a4
  r4 b2->(a4)
  g4-> d8 d d d d4~ % 8c
  d4 d8 d c4 f
  g1~
  g2. r4 % 9a
  R1
  r2 r4 g
  <b d>2->^\markup\italic div. (<c e>4) r % 9b
  <a f'>4 <c e> <b d>8 q c4
  d4-> g, g2~
  g2. r8 g % 9c
  g4-. e'-. d b-.
  r4 d c-> d
  r4 b->(d c) % 10a
  r4 a->(c b)
  r4 g->( b a)
  r4 fis->( a g~ \bar "||" \key ees \major % 10b
  g1)^\p
  r4 g^\< aes-> bes-.
  R1\! % 10c
  r4 g\< aes-> bes
  ees,4->^\mf ees ees g8 g
  f4 ees c bes->( % 11a
  ees1~
  ees2.) r4g4-> bes bes bes8 bes % 11b
  c4 bes g4. ees8
  ees4 ees ees g
  f8 ees4. c4 bes->( % 11c
  ees1~
  ees2.) r4 \bar "||" \key g \major
  R1 % 12a
  R1
  R1
  r2 r4 g\f % 12b
  d'2->(e)
  f4-> e d8 d c c
  d8-> g,4. g2~ % 12c
  g2. g8 g
  g4 e' d b-.
  r4 d8 d c d4. % 13a
  r4 b d->(c
  b2\> ais)
  b4\omit\p^\markup\italic{\dynamic p legato} fis8 fis fis fis fis4~ % 13b
  fis4 fis fis fis
  fis8-> g g2 g4
  g8 a a2 e4 % 13c
  e4-> fis2.~
  fis4 fis8 fis e-> a4.
  b1~ % 14a
  b2. r4
  d2^\mf cis
  b2. b4
  cis2. e4 % 14b
  d4(cis) b2
  a4-> a8 a a a a4~
  a1 % 14c
  a4-> a8 a a a a4
  r4 b2->^\markup\italic dim (a4)
  g4->^\mp d8 d d d d4~ % 15a
  d4 d8 d c4-> f
  g1~
  g2. r4 % 15b
  R1
  r2 r4 g^\mf
  <b d>2->^\markup\italic div. ^\> (<c e>4) r % 15c
  <a f'>4->\! <c e>4^\> <b d> c
  d4->\! g, g2~
  g2. g8-> g % 16a
  g4 e'8 e d4 b8 b
  r4 d8 d c4 d-.
  r4 b-. d->(c % 16b
  b2) a->
  g4-> d8 d d d d4
  r4 d8 d c-> f4. % 16c
  g1~
  g4 r \click ^\markup\italic "Click tongue:" r4
  \bar "|."
}

wordsI = \lyricmode {
  The frog went a -- court -- in’ and he did ride.
  Hm. __
  The frog went a -- court -- in’ and he did ride
  with a sword and a pis -- tol by his side.
  Hm. __
  He rode up to Miss Mous -- ie’s door.
  Hm. __
  He rode up to Miss Mous -- ie’s door,
  jumped off his horse and took the floor.
  Hm. __
  “Oh, ho, __
  come with me to the hol -- low tree, __
  I will take you there, yes,
  to the hol -- low tree.
  Ooh. __
  Down in the hol -- low tree __
  we’ll live in har -- mon -- y and sym -- pa -- thy to -- geth -- er __
  in the hol -- low tree. __
  Come with me, we’ll be to -- geth -- er
  down in the hol -- low tree, __
  down in the hol -- low tree,
  ooh, __
  down in the hol -- low tree, __
  in the hol -- low tree.” __
  “Oh, ho, __
  I have no -- thing to say to that! __
  You’ll have to ask my,
  my un -- cle!
  Ooh! __ Ooh! __ Ooh! __ Ooh!
  My un -- cle!
  My un -- cle!”
  Un -- cle Rat gal -- loped in to town.
  Hm. __
  Un -- cle Rat gal -- loped in -- to town
  to buy his niece a wed -- ding gown.
  Hm. __
  “Oh, ho, __
  way down yon -- der in the hol -- low tree, __
  I will take you there, yes,
  to the hol -- low tree.
  Ooh. __
  Down in the hol -- low tree __
  we’ll live in har -- mo -- ny
  and sym -- pa -- thy to -- geth -- er __
  in the hol -- low tree. __
  Come with me,
  we’ll be to -- geth -- er
  down in the hol -- low tree, __
  down in the hol -- low tree,
  ooh, __
  down in the hol -- low tree, __
  in the hol -- low tree. __
  Oh, ho, __
  bread and cheese up -- on the shelf! __
  If you want an -- y -- more, you can,
  you can sing your -- self!
  Ooh, __
  way down in the hol -- low tree,
  in the hol -- low tree!”
  \markup\italic "(click)"
}

wordsIMidi = \lyricmode {
  "The " "frog " "went " a court "in’ " "and " "he " "did " "ride. "
  "\nHm. " 
  "\nThe " "frog " "went " a court "in’ " "and " "he " "did " "ride "
  "\nwith " "a " "sword " "and " "a " pis "tol " "by " "his " "side. "
  "\nHm. " 
  "\nHe " "rode " "up " "to " "Miss " Mous "ie’s " "door. "
  "\nHm. " 
  "\nHe " "rode " "up " "to " "Miss " Mous "ie’s " "door, "
  "\njumped " "off " "his " "horse " "and " "took " "the " "floor. "
  "\nHm. " 
  "\n“Oh, " "ho, " 
  "\ncome " "with " "me " "to " "the " hol "low " "tree, " 
  "\nI " "will " "take " "you " "there, " "yes, "
  "\nto " "the " hol "low " "tree. "
  "\nOoh. " 
  "\nDown " "in " "the " hol "low " "tree " 
  "\nwe’ll " "live " "in " har mon "y " "and " sym pa "thy " to geth "er " 
  "\nin " "the " hol "low " "tree. " 
  "\nCome " "with " "me, " "we’ll " "be " to geth "er "
  "\ndown " "in " "the " hol "low " "tree, " 
  "\ndown " "in " "the " hol "low " "tree, "
  "\nooh, " 
  "\ndown " "in " "the " hol "low " "tree, " 
  "\nin " "the " hol "low " "tree.” " 
  "\n“Oh, " "ho, " 
  "\nI " "have " no "thing " "to " "say " "to " "that! " 
  "\nYou’ll " "have " "to " "ask " "my, "
  "\nmy " un "cle! "
  "\nOoh! "  "Ooh! "  "Ooh! "  "Ooh! "
  "\nMy " un "cle! "
  "\nMy " un "cle!” "
  "\nUn" "cle " "Rat " gal "loped " "in " "to " "town. "
  "\nHm. " 
  "\nUn" "cle " "Rat " gal "loped " in "to " "town "
  "\nto " "buy " "his " "niece " "a " wed "ding " "gown. "
  "\nHm. " 
  "\n“Oh, " "ho, " 
  "\nway " "down " yon "der " "in " "the " hol "low " "tree, " 
  "\nI " "will " "take " "you " "there, " "yes, "
  "\nto " "the " hol "low " "tree. "
  "\nOoh. " 
  "\nDown " "in " "the " hol "low " "tree " 
  "\nwe’ll " "live " "in " har mo "ny "
  "\nand " sym pa "thy " to geth "er " 
  "\nin " "the " hol "low " "tree. " 
  "\nCome " "with " "me, "
  "\nwe’ll " "be " to geth "er "
  "\ndown " "in " "the " hol "low " "tree, " 
  "\ndown " "in " "the " hol "low " "tree, "
  "\nooh, " 
  "\ndown " "in " "the " hol "low " "tree, " 
  "\nin " "the " hol "low " "tree. " 
  "\nOh, " "ho, " 
  "\nbread " "and " "cheese " up "on " "the " "shelf! " 
  "\nIf " "you " "want " an y "more, " "you " "can, "
  "\nyou " "can " "sing " your "self! "
  "\nOoh, " 
  "\nway " "down " "in " "the " hol "low " "tree, "
  "\nin " "the " hol "low " "tree!” "
  "(click)"
}

partII = \relative {
  \global
  R1
  r2 r4 r8 d'^\mf
  g4 fis8 fis e e d4
  e4-> d c d->( % 3b
  g,1~
  g2.) r8 d'
  g4 g8 g fis fis fis4 % 4a
  f4-> f f f8 f
  e4 e8 e d4 g-.
  e4-> d c d( % 4b
  g,1~
  g2.) r4
  R1 % 4c
  r2 r4 d'8 d
  r4 << { \hideNotes b' \unHideNotes } \new Voice \click^\markup\italic \center-align "Click tongue:" >> r \click
  r4 \click \click r % 5a
  R1
  r2 r4 r8 g
  c4 b c d % 5b
  e4 d8 d b b a4
  r4 \click^\markup\italic \center-align "Click tongue:" r \click
  r4 \click \click d,-> % 5c
  g4 g g b8 b
  a8-> g4. e4 d->(
  g1~ % 6a
  g2.) r4
  b4-> d d d8 d
  e8-> d4. b4 r8 g % 6b
  g4 g g8 g b b
  a8-> g4. e4 d->(
  g1) % 6c
  g2->(fis)
  b4->^\omit\p^\markup\italic {\dynamic p legato} d,8 d d d d4~
  d4 d d d % 7a
  d8-> d d2 d4
  d8-> e e2 cis4
  cis4-> d2.~ % 7b
  d4 d8 d cis-> e4.
  fis1~(
  fis4 a b) r % 7c
  fis2->^\mf e->
  d2.-> d4
  e2. g4 % 8a
  fis4(e) d2
  c1->
  c4 c8 c c c c4 % 8b
  c1->
  r4 d2.->
  g4-> d8 d d d d4~ % 8c
  d4 d8 d c4 f
  d1~
  d2. r4 % 9a
  g4-> g g8 g b4
  a4-> g e d->(
  g1~ % 9b
  g2.) r4
  b4-> d d8 d d4
  e4 d b r8 g % 9c
  g4-. g-. g b-.
  a4-> g e-. d4->(
  g1) % 10a
  g1->
  g1->
  g1-> \bar "||" \key ees \major % 10b
  ees4->^\p ees ees-. r
  r4 ees^\< c-> d-.
  ees4->^\p ees ees-. r % 10c
  r4 ees^\< c-> d
  R1\!
  r2 r4 b8^\mf b % 11a
  r4 << {\hideNotes bes' \unHideNotes } \new Voice {\click^\markup\italic \center-align "Click tongue:"} >> r \click
  r4 \click \click r
  R1 % 11b
  r2 r4 r8 ees,
  aes4 g aes bes
  c4 bes8 bes g g f4-. % 11c
  r4 \click^\markup\italic \center-align "Click tongue:" r \click
  r4 \click \click r \bar "||" \key g \major
  R1 % 12a
  R1
  g4^\f g8 g g4 b
  a4-> g e d->( % 12b
  g1~
  g2.) r4
  b4-> d8 d d4 d % 12c
  e4-> d b r8 g
  g4 g g8 g b b
  a8 g4. e4 d->( % 13a
  g1)
  g2^\>(fis)
  b4\omit\p^\markup\italic {\dynamic p legato} d,8 d d d d4~ % 13b
  d4 d d d
  d8-> d d2 d4
  d8 e e2 cis4 % 13c
  cis4-> d2.~
  d4 d8 d cis-> e4.
  fis1~ % 14a
  fis2. r4
  fis2^\mf e
  d2. d4
  e2. g4 % 14b
  fis4(e) d2
  c1->
  c4-> c8 c c c c4 % 14c
  c1->
  r4 d2.->^\dim
  g4->^\mp d8 d d d d4~% 15a
  d4 d8 d c4-> f
  d1~
  d2. d4^\< % 15b
  g4^\mf g g b
  a4-> g e d->(
  g1~ % 15c
  g2.) g4
  b4-> d d d
  e4-> d c g8-> g % 16a
  g4 g8 g g4 b8 b
  a4 g e d->(
  g1) % 16b
  r2 d'->
  g,1->~
  g1 % 16c
  r4 b8 b d4-> c
  b4 r \click^\markup\italic \center-align "Click tongue:" r
  \bar "|."
}

wc = \lyricmode {
  \markup \italic "(click)"
}

wordsII = \lyricmode {
  The frog went a -- court -- in' and he did ride.
  Hm. __
  The frog went a -- court -- in' and he did ride
  with a sword and a pis -- tol by his side.
  Hm. __
  With a \wc \wc \wc \wc
  He rode up to the door with a clip -- pi -- ty \wc \wc \wc \wc
  “Oh, Mis -- tress Mouse, will you mar -- ry me? Hm. __
  Mis -- tress Mouse, will you mar -- ry me?
  I live down yon -- der in the hol -- low tree.
  Hm. __
  Ooh. __
  Down in the hol -- low tree __
  we'll live in har -- mon -- y and sym -- pa -- thy to -- geth -- er __
  in the hol -- low tree. __
  Come with me, we'll be to -- geth -- er
  down, down in the hol -- low tree,
  down,
  ooh, __
  down in the hol -- low tree, __
  in the hol -- low tree.” __
  “I have no -- thing to say to that! Hm. __
  I have no -- thing to say to that!
  You'll have to ask my Un -- cle Rat!
  Ooh! __ Ooh! __ Ooh! __ Ooh!
  Un -- cle Rat! My un -- cle!
  Un -- cle Rat! My un -- cle!”
  With a \wc \wc \wc \wc
  He gal -- loped on his way with a clip -- pi -- ty
  \wc \wc \wc \wc
  “Where will the wed -- ding break -- fast be? Hm. __
  Where will the wed -- ding break -- fast be?
  A -- way down yon -- der in the hol -- low tree! Hm. __
  Ooh. __
  Down in the hol -- low tree __
  we'll live in har -- mo -- ny
  and sym -- pa -- thy to -- geth -- er __
  in the hol -- low tree. __
  Come with me,
  we'll be to -- geth -- er
  down, down in the hol -- low tree,
  down ooh, __
  down in the hol -- low tree, __
  in the hol -- low tree. __
  There's bread and cheese up -- on the shelf! Hm. __
  There's bread and cheese up -- on the shelf!
  If you want an -- y -- more,
  you can sing your -- self!
  Hm. __
  Way down in the hol -- low tree!”
  \wc
}

wordsIIMidi = \lyricmode {
  "The " "frog " "went " a court "in’ " "and " "he " "did " "ride. "
  "\nHm. " 
  "\nThe " "frog " "went " a court "in’ " "and " "he " "did " "ride "
  "\nwith " "a " "sword " "and " "a " pis "tol " "by " "his " "side. "
  "\nHm. " 
  "\nWith " "a " "{click}" "{click}" "{click}" "{click}"
  "\nHe " "rode " "up " "to " "the " "door " "with " "a " clip pi "ty " "{click}" "{click}" "{click}" "{click}"
  "\n“Oh, " Mis "tress " "Mouse, " "will " "you " mar "ry " "me? " "Hm. " 
  "\nMis" "tress " "Mouse, " "will " "you " mar "ry " "me? "
  "\nI " "live " "down " yon "der " "in " "the " hol "low " "tree. "
  "\nHm. " 
  "\nOoh. " 
  "\nDown " "in " "the " hol "low " "tree " 
  "\nwe’ll " "live " "in " har mon "y " "and " sym pa "thy " to geth "er " 
  "\nin " "the " hol "low " "tree. " 
  "\nCome " "with " "me, " "we’ll " "be " to geth "er "
  "\ndown, " "down " "in " "the " hol "low " "tree, "
  "\ndown, "
  "\nooh, " 
  "\ndown " "in " "the " hol "low " "tree, " 
  "\nin " "the " hol "low " "tree.” " 
  "“I " "have " no "thing " "to " "say " "to " "that! " "Hm. " 
  "\nI " "have " no "thing " "to " "say " "to " "that! "
  "\nYou’ll " "have " "to " "ask " "my " Un "cle " "Rat! "
  "\nOoh! "  "Ooh! "  "Ooh! "  "Ooh! "
  "\nUn" "cle " "Rat! " "My " un "cle! "
  "\nUn" "cle " "Rat! " "My " un "cle!” "
  "\nWith " "a " "{click}" "{click}" "{click}" "{click}"
  "\nHe " gal "loped " "on " "his " "way " "with " "a " clip pi "ty "
  \wc \wc \wc \wc
  "\n“Where " "will " "the " wed "ding " break "fast " "be? " "Hm. " 
  "\nWhere " "will " "the " wed "ding " break "fast " "be? "
  "\nA" "way " "down " yon "der " "in " "the " hol "low " "tree! " "Hm. " 
  "\nOoh. " 
  "\nDown " "in " "the " hol "low " "tree " 
  "\nwe’ll " "live " "in " har mo "ny "
  "\nand " sym pa "thy " to geth "er " 
  "\nin " "the " hol "low " "tree. " 
  "\nCome " "with " "me, "
  "\nwe’ll " "be " to geth "er "
  "\ndown, " "down " "in " "the " hol "low " "tree, "
  "\ndown " "ooh, " 
  "\ndown " "in " "the " hol "low " "tree, " 
  "\nin " "the " hol "low " "tree. " 
  "\nThere’s " "bread " "and " "cheese " up "on " "the " "shelf! " "Hm. " 
  "\nThere’s " "bread " "and " "cheese " up "on " "the " "shelf! "
  "\nIf " "you " "want " an y "more, "
  "\nyou " "can " "sing " your "self! "
  "\nHm. " 
  "\nWay " "down " "in " "the " hol "low " "tree!” "
  \wc
}

pianoRH = \relative {
  \global
  r8\p d'\<(e fis g a b c
  <fis, d'>4\f) a-. d,-. r8 d\mf
  <g, g'>4-. <d' g>-. r s4
  s2. \tuplet 3/2 {<c d>8-> a d} % 3b
  s1
  s1
  r4 <d g b>-. e <d fis b>-. % 4a
  r4 <d f g b>-. <b f' g>-. d8 dis
  <c e>4-. <e g>8 q <d g>4 d-.
  s2 e8 c' fis, d' % 4b
  s1
  s1
  r4 <d, g>-. e s4 % 4c
  s2. <c d>4->
  <b g'>1~
  q2 r8 d g a % 5a
  <d, g b>4-. q2 <d fis b>8 q
  r4 <d f b>-. <b d>8 e f g~
  <c, e g>4 s2. % 5b
  s2. \tuplet 3/2 {<c d>8-> e fis}
  <b, g'>1~
  q4 q2-> r8 d % 5c
  <b g'>4-. <d g> r q8 q
  s2 <c e>4 <c d>
  <d d'>8 b' g d' <g, e'> c g e' % 6a
  <a, f'>4(<g c e>-.) s2
  s2 <fis b d>4 <fis d'>8 q
  s1 % 6b
  <e g>4 s2 <g b>4
  r4 s2.
  r4 <d g>8 b' <f d'>4 <e c'> % 6c
  <d b'>8 g d b' <cis, ais'>2
  <d b'>4-.\p <d fis>8 q q q s4
  s1 % 7a
  s2. <d g>4
  s4 <cis e a>2 <cis e>4-.
  <cis e>4-> <d fis>2 d8 e % 7b
  <d fis>4 q8 q s2
  <d b'>8 fis d e <d fis> b' d, e
  <d fis>4 <cis a'> <b b'>-. r % 7c
  d'8^\mf b fis b <e, cis'>2
  <d b'>8 fis b cis <d, d'> b' fis b
  <cis, cis'>8 ais' fis ais s2 % 8a
  s4 <cis, ais'>4 <d fis b>2
  <c e a>4-. q8 q q q s4
  s1 % 8b
  <c f a>1
  r4 <d fis b>4->~q8 d <c a'> d
  <b g'>4-. <b d>8 q q q q4~ % 8c
  q4-. q8 q c4~ <c f>
  <d g>1~
  q2 d8(e f fis % 9a
  <b, d g>4) <b g'>-. r <d g>
  e4-> q <c e> \tuplet 3/2 {<c d g>8( a' g}
  <d d'>8 b' g d' <g, e'> c g e' % 9b
  <a, c f>4 <g e'>-.) s2
  s2 <fis b d>8 d' q4
  s2 <fis, b>4. <fis g>8 % 9c
  <e g>4-. s2.
  r4 <g d'>(<e c'> <fis d'>)
  r4 s2 <ees c'>4 % 10a
  r4 s2 <d b'>4
  r4 s2 <e a>4
  r4 <c fis>-. <b a'>8 g' d f \bar "||" \key ees \major % 10b
  <g, bes ees>4-.\p q-. q2~
  q4\< <d' ees g> <c ees aes>-> <d f bes>
  <g, ees'>8-.\p f' q-. f <g, ees'>2~ % 10c
  q4\< <d' ees g> <c aes'>8-> f <d bes'> bes
  <g ees'>4-.\mf <d' ees>-. <c ees>-. <bes ees>8 ees
  <c f>4 <bes ees> c8 f d bes % 11a
  s1
  s2. ees8 f
  ees8 bes' <g ees'>4-. q-. bes8 bes % 11b
  <ees, bes'>8 g q4 <des g>4. s8
  s1
  s4 <ees bes'>8 q <ees c'> q <f bes d>4-. % 11c
  r4 <g bes ees>2.->\arpeggio ~
  q2 r4 bes,8 ees \bar "||" \key g \major
  r8\p d\<(e fis g a b c % 12a
  d4\mf)\< e8(fis g a b c
  <g d'>4-.)\f <d, g>-. r q
  <e a>4-> <d g> <c e> \tuplet 3/2  {<c g'>8->(a' g} % 12b
  <fis d'>8 b g d' <g, e'> c g e'
  <a, f'>4 <g e'>-.) s2
  s2 <fis b d>8 d' q4 % 12c
  s2 <fis, b>4. <fis g>8
  <e g>4-. s2 <g b>4-.
  r4 s2. % 13a
  r4 <d b'>8 g <f d'>-> g e c'
  <d, b'>8\> g d b' <cis, ais'>4 fis8 e
  <d b'>4-.\p <d fis>8 q q q s4 % 13b
  s1
  s2. <d g>4
  s2. <c e>4-. % 13c
  <cis e>4-> <d fis>2 d8 e
  <d fis>4 q8 q s2
  <d b'>8 fis d e <d fis> b' d, e % 14a
  <d fis>4 <cis a'> <b b'>-. r
  <fis' d>8\mf b fis b <e, cis'>2
  <d b'>8 fis b cis <d, d'> b' fis b
  <cis, cis'>8 ais' fis ais s2 % 14b
  <fis d'>8 b <cis, ais'>4 <d fis b>2
  <c e a>4-. q8 q q q s4
  s1 % 14c
  <c f a>1
  r4 <d fis b>->\dim~q8 d <c a'> d
  <b g'>4-.\mp <b d>8 q q q q4~ % 15a
  q4-. q8 q c4~<c f>
  <d g>1~
  q2 d8\<(e f fis % 15b
  <g, g'>4->\mf) <d' g>-. r q
  <e a>4-> <d g> <c e>-. \tuplet 3/2 {<d g>8( a' g}
  <d d'>8 b' g d' <g, e'> c g e' % 15c
  <a, f'>4 <g e'>-.) s2
  s2 <fis b d>8 d' q4
  \bar "|."
  s1 % 16a
  <e, g>4-. <e e'>8 e' <g, d'>4 <d b'>
  r4 s2.
  r4 <d b'>8 g <f d'>4-> <e c'>8 g % 16b
  <b, b'>8 d g b
  <c, d fis a>4-> d8 c
  <b g'>4-. s2.
  r4 <b d>8 q s2 % 16c
  <d g>4-. s2.
  <g g'>4-. r8 \tuplet 3/2 {cis16 d e} <b g'>4-.-> r
}

pianoRHone = \relative {
  \global
  \vo
  s1*2
  s2. <d' g>4~
  g2. s4 % 3b
  g1~
  g1
  s1*3
  g2-> s2 % 4b
  g1->~
  g1
  s2. <d g>4~ % 4c
  g2. s4
  s1*4
  s4 g2.~ % 5b
  g2. s4
  s1*3
  a8-> g4. s2 % 5c++
  s1 % 6a
  s2 d'4 c8 c
  b4-> d-. s2
  e8-> d4. b4 g8 g % 6b
  s4 e' d-. s
  s4 d(c <fis, a d>)
  s1*2
  s2. fis4~ % 6c++
  fis4 fis fis fis % 7a
  fis8 g g2 s4
  g8 a s2.
  s1 % 7b
  s2 e8-> a4.
  s1*4
  s2 cis4 e % 8a
  s1
  s1
  r8 e, a b c b a g % 8b
  s1*9
  s2 d'4 c8 c % 9b+
  b4-> d s2
  e4 d-. s2 % 9c
  s4 e d b-.
  s1
  s4 b-> d s % 10a
  s4 a-> c s
  s4 g-> b s
  s1 \bar "||" \key ees \major % 10b
  s1*6
  des,8-> c bes2 des8 c % 11a+
  des8-> c bes aes bes4 s
  s1 % 11b
  s1
  aes'4 g aes bes
  <aes c>4-. s2. % 11c
  s1
  s1 \bar "||" \key g \major
  s1*5
  s2 d4 c8 c % 12b++
  b4-> d s2 % 12c
  e4-> d s2
  s4 e d s
  s4 d(c d) % 13a
  s1
  s1
  s2. fis,4~ % 13b
  fis4 fis fis fis
  fis8 g g2 s4
  g8 a <c, e a>2 s4 % 13c
  s1
  s2 e8-> a4.
  s1*4
  s2 cis4 e % 14b
  s1
  s1
  r8 e, a b c b a g % 14c
  s1*9
  s2 d'4 c8 c % 15c+
  b4-> d s2
  e4-> d-. c g8-> g % 16a
  s1
  s4 d'4(c <d, d'>)
  s1 % 16b
  s1
  s4 d8 d d d d4
  s2 c8-> f4. % 16c
  s4 b,8 b d4-> e
  s1
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \vt
  s1*3
  e'4 d c-. s % 3b
  r4 <b d>-. r q-.
  r4 q-. q2->
  s1*3
  c4 d s2 % 4b
  r4 <b d>-. r q-.
  r4 q-. q-. r8 d
  s1 % 4c
  e4-> d c s
  s1
  s1*3
  s4 d e d % 5b
  e4 d e s
  s1
  s1 % 5c
  s1
  e4 d s2
  s1 % 6a
  s2 g2~
  g s
  f2 4. 8 % 6b
  s4 g2 s4
  s4 g2 s4
  s1*2
  s2. d4~ % 6c++
  d1 % 7a
  d2. s4
  cis4 s2.
  s1 % 7b
  s2 cis
  s1
  s1*3 % 7c
  s2 fis~ % 8a
  fis8 s s2.
  s2. <c e a>4~
  c2 e % 8b
  s1
  s1
  s1*3 % 8c
  s1*3 % 9a
  s1 % 9b
  s2 g
  g2 s
  f2 s % 9c
  s4 g2.
  s1
  s4 f2 s4 % 10a
  s4 ees2 s4
  s4 ees2 s4
  s1 \bar "||" \key ees \major % 10b
  s1
  s1
  s1*3 % 10c
  s1 % 11a
  g,2 aes
  bes2. s4
  s1 % 11b
  s2. s8 ees~
  ees1~
  ees4 s2. % 11c
  s1
  s1 \bar "||" \key g \major
  s1*3 % 12a
  s1 % 12b
  s1
  s2 g
  g2 s % 12c
  <f b>2 s
  s4 g2 s4
  s4 g2 s4 % 13a
  s1
  s1
  s2. d4~ % 13b
  d1
  d2. s4
  cis2 s % 13c
  s1
  s2 cis
  s1*4 % 14a
  s2 f % 14b
  s1
  s2. <c e a>4~
  c2 e % 14c
  s1
  s1
  s1*3 % 15a
  s1*3 % 15b
  s1 % 15c
  s2 g~
  g2 s
  f2 f4. f8 % 16a
  s1
  s4 g2 s4
  s1 % 16b
  s1
  s4 b,2.
  s2 a % 16c
  s2 <e' g>
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\<\p
  s2.\f s4\mf
  s1
}

pianoLHone = \relative {
  \global
  d4->\p(e8\< fis g a b c
        d4\f) a-. d,-. r
  g,4-.\mf g'-. b, g'4~
  g2. d4-> % 3b
  g,4 g'-. g, g'-.
  g,4 g'-. g2->
  g,4 g' g, g' % 4a
  s4 g2.
  c,4 g' b, g'~
  g2. s4 % 4b
  g,4-> g'-. g, g'-.
  g,4 g'-. g-. d->
  g,4 g' b, g'~ % 4c
  g2. s4
  g,4 g'-. g, g'-.
  g,4 g'-. g2 % 5a
  g,4 g' g, g'
  g, g' g, g'~
  g1~ % 5b
  g2. d4
  g,4 g'-. g, g'-.
  g,4 g'2-> d4 % 5c
  g,4-. g' b, g'~
  g2. d4 % 6a
  g,4 g' c, g' c2 g~
  g4 g-. g, g'
  g,4-> g' g, g'~ % 6b
  g4 g2 g4~
  g2. d4
  r4 g2.( % 6c
  s2. fis4)
  b,4 b' b, b'
  b,4 b' b, b' % 7a
  b,4 b' b, b'
  b,4 a' b, a'
  b,4-> b' b, b' % 7b
  b,4 b' fis,-> fis'~
  <b, fis'>4 fis' fis,-> fis'~
  fis1 % 7c
  b,4 fis' fis, fis'
  b,4 fis' fis, fis'~
  <fis, fis'>4 fis' ais, fis'~ % 8a
  fis1
  a,4 a' e a~
  <a, a'>2. g4 % 8b
  f4 f' c f
  d2. d4
  g,4 g' d g % 8c
  g,4 g' <d a'>2
  g,4 g' g, g'
  g,4 r d'8 c bes a % 9a
  <g g'>4-. g' b, g'~
  g2. d4
  g,4 g' c, g' % 9b
  f4 g2.
  g,4-> g' g, g'
  g,4-> g' g, g' % 9c
  c,4 g' b, g'~
  g2. d4
  \once\partCombineApart r4 g2. % 10a
  \once\partCombineApart r4 g2.
  \once\partCombineApart r4 g2.
  \once\partCombineApart r4 g2 s4 \bar "||" \key ees \major % 10b
  ees,4\p ees' ees, ees'
  ees,4-.\< ees' aes,4 bes
  ees,4\p ees' ees, ees' % 10c
  ees,4-.\< ees' aes,-> bes
  ees,4->\mf ees' g, ees'
  aes,4 g f bes-> % 11a
  ees,4 ees' aes, ees'
  ees,4-> ees'-. ees-. r4
  <ees bes'>4 ees' q ees % 11b
  q4 des ees,2
  aes4 g f g
  aes4 g aes bes-. % 11c
  ees,4-> ees'-. bes8 aes g f
  ees4-.-> bes-. <ees, ees'>2 \bar "||" \key g \major
  d8-.->\p d'(e fis g a b c % 12a
  d4)\mf\< a-. d,2
  g,4\f g' b, g'~
  g2. d4-> % 12b
  g,4 g' c, g'
  c2 g~
  g4 g g, g' % 12c
  g,4-> g' g, g'
  c,4 g' b, g'~
  g2. d4 % 13a
  s4 g2.~
  <g, g'>4\> g' fis2
  b,4\p b' b, b' % 13b
  b,4 b' b, b'
  b,4 b' b, b'
  b,4 b' b, b' % 13c
  b,4-> b' b, b'
  b,4 b' fis,-> fis'~
  fis4 fis fis,-> fis'~ % 14a
  fis1
  b,4\mf fis' fis, fis'
  b,4 fis' fis, fis'~
  <fis, fis'>4 fis' ais, fis'~ % 14b
  <b, fis'>4 fis'~q2
  a,4 a' ees a~
  <a, a'>2. g4 % 14c
  f4 f' c f
  d2. d4
  g,4\mp g' d g % 15a
  g,4 g' a2
  g,4 g' g, g'~
  <g, g'>4 r4 d'8\<c bes a % 15b
  g4-.\mf g' b, g'~
  g2. d4->
  g,4 g' c, g' % 15c
  c2 g~
  <g, g'>4-> g' g, g'
  g,4-> g' g, <b g'>->~ % 16a
  <c g'>4 g' b, g'~
  g2. s4
  s4 g2. % 16b
  d4 d'-. d,2->
  <g, g'>4 g' g, g'
  g,4 g' d2 % 16c
  <g, g'>4-. b c-> g'~
  <g d'>4-. r8 \tuplet 3/2 {b,16 a aes} <g g'>4-.-> r
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s1*3
  c4 b a d->
  s1
  s1
  s1 % 4a
  g,4 g' d b
  s1
  a4 b c <d a'>-> % 4b
  s1
  s1
  s1 % 4c
  c4 b a d->
  s1
  s1*3 % 5a
  a4 b c b % 5b
  c4 b a d
  s1
  s1 % 5c
  s1
  c4-> b a d
  s1 % 6a
  f4 c b a
  g4-> s2.
  s1 % 6b
  c4 r b s
  a4-. b(c d
  g,2) b4 c % 6c
  g4-> g' fis, s
  s1
  s1*3 % 7a
  s1*3 % 7b
  b4 fis b2 % 7c
  s1
  s1
  s1 % 8a
  b4 fis b2
  s1
  s1 % 8b
  s1
  \once\partCombineApart r4 b,2-> s4
  s1*3 % 8c
  s1 % 9a
  s1
  c'4-> b a d
  s1 % 9b
  s4 c b a
  s1
  s1 % 9c
  s1
  a4 b c d
  g,1-> % 10a
  g1->
  g1->
  g2.-> g8 f \bar "||" \key ees \major % 10b
  s1
  s1
  s1*3 % 10c
  s1*3 % 11a
  s1*3 % 11b
  s1*3 % 11c
  s1*3 % 12a
  c'4-> b a d % 12b
  s1
  f4 c b a
  g4-> s2. % 12c
  s1
  s1
  a4-. b-> c d % 13a
  g,4 \once\partCombineApart r b-> c
  s2 \once\partCombineApart r4 fis,
  s1*3 % 13b
  s1*3 % 13c
  s1 % 14a
  b4 fis b2
  s1
  s1
  s1*3 % 14b
  s1 % 14c
  s1
  \once\partCombineApart r4 d,2->\dim d'4
  s1^\mp % 15a
  s1*2
  s1 % 15b
  s1
  c4-> b a-. d
  s1 % 15c
  f4 c-. b a
  s1
  s1 % 16a
  s1
  a4 b-> c d
  g,4 \once\partCombineApart r b-> c % 16b
  s1
  s1
  s1*3 % 16c

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
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Single part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Single part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = II
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
    output-suffix = "singlepage-1"
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
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Single part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = II
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partII
            \addlyrics {\tiny \wordsII}
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \magnifyStaff #4/7
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
    output-suffix = "singlepage-2"
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
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics {\tiny \wordsI}
          >>
                                % Single part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = II
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \magnifyStaff #4/7
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
    output-suffix = "midi-1"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsIMidi
          >>
                                % Single part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partII
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
  \paper {
    output-suffix = "midi-2"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partI
          >>
                                % Single part II staff
          \new Staff = "part2" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsIIMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
