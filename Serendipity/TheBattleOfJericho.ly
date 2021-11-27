\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Battle of Jericho"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional Spiritual"
  arranger    = "Arr. Roger Emerson"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \tempo Driving 4=144
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "6a" } s1*2
  \mark \markup { \box "6b" } s1*2
  \mark \markup { \box "7a" } s1*3
  \mark \markup { \box "7b" } s1*3
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "8a" } s1*3
  \mark \markup { \box "8b" } s1*3
  \mark \markup { \box "9a" } s1*3
  \mark \markup { \box "9b" } s1*3
  \mark \markup { \box "10a" } s1*3
  \mark \markup { \box "10b" } s1*3
  \mark \markup { \box "11a" } s1*3
  \mark \markup { \box "11b" } s1*3
  \mark \markup { \box "12a" } s1*3
  \repeat volta 2 {
    \mark \markup { \box "12b" } s1*3
    \mark \markup { \box "13a" } s1*3
  }
  \alternative {
    {
      \mark \markup { \box "13b" } s1*2
    }
    { s1 }
  }
  \mark \markup { \box "14a" } s1*3
  \mark \markup { \box "14b" } s1*4
}

ChordTrack = \chordmode {
  s1
  s1
  g4:m7 g2.:m11
}

partI = \relative {
  \global
  R1
  R1
  bes'4^\f 8 8~2~
  bes2.^\< r4\! % 3b
  bes4^\f 8 8~2~
  bes2.^\< r4\!

  g8^\f fis g a bes a bes(c) % 4a
  d8 4 8~4 r
  c8 4 8~4 r
  d8 4 8(~8 c bes a) % 4b
  g8 fis g a bes a bes(c)
  d8 4 8~4 bes8 c
  d4 c bes8 8 a4 % 5a
  g1
  R1
  bes4 8 8~2~ % 5b
  bes2.^\< r4\!
  bes4^\f 8 8~2~

  bes2^\< r4\! g8^\mf 8 % 6a
  g8 d d d d4 4
  d4 8 8~4 r % 6b
  R1
  r2 r4 g8 8 % 7a
  g4 d4 4 4
  d4 8 8~4 bes'8 c
  d8 8 c4 bes a8 g~ % 7b
  g1
  R1

  g8^\mf fis g a bes a bes(c) % 4a
  d8 4 8~4 r
  c8 4 8~4 r
  d8 4 8(~8 c bes a) % 4b
  g8 fis g a bes a bes(c)
  d8 4 8~4 bes8 c
  d4 c bes8 8 a4 % 5a
  g1
  R1
  bes4 8 8~2~ % 5b
  bes2.^\< r4\!
  bes4^\f 8 8~2~
  
  bes2^\< r4\! g^\mf % 8a
  g4 d d d
  d4 8 8~4 r
  R1 % 8b
  r2 r4 g
  g4 d d d
  d4 8 8~4 bes'8 c % 9a
  d8 8 c4 bes a8 g~
  g1
  R1 % 9b
  g8^\f fis g a bes a bes(c)
  d8 4 8~4 r
  c8 4 8~4 r % 10a
  d8 4 8(~8 c bes a)
  g8 fis g a bes a bes(c)
  d8 4 8~4 bes8 c % 10b
  d4 c bes8 8 a4
  g1
  R1 % 11a
  R1
  R1
  bes4.-> ^\mf 8-> ~4 4-> ~ % 11b
  bes8 4.-> 4-> a^>
  bes2->^\cresc c4-> c->
  d4^> d^> ees2^> % 12a
  d1^> ~
  d2. r4
  \repeat volta 2 {
    g,8\omit\f^\markup {\dynamic mp "/" \dynamic f} fis g a bes a bes(c) % 12b
    d8 4 8~4 r
    c8 4 8~4 r
    d8 4 8(~8 c bes a) % 13a
    g8 fis g a bes a bes(c)
    d8 4 8~4 bes8 c
  }
  \alternative {
    {
      d4 c bes8 8 a4 % 13b
      g2. r4
    }
    {
      d'2 c
    }
  }
  bes4 4 a2 % 14a
  \override NoteHead.style = #'cross
  bes4^\markup\italic Stomp 4 4 4
  bes8 8 8 8 8 8 8 8
  \revert NoteHead.style
  <bes d \tweak font-size -2 g>1^\markup div. ~ % 14b
  q1~
  q1
  R1
  \bar "|."
}

partIsingle = \relative {
  \global
  R1
  R1
  bes'4^\f 8 8~2~
  bes2.^\< r4\! % 3b
  bes4^\f 8 8~2~
  bes2.^\< r4\!

  g8^\f fis g a bes a bes(c) % 4a
  d8 4 8~4 r
  c8 4 8~4 r
  d8 4 8(~8 c bes a) % 4b
  g8 fis g a bes a bes(c)
  d8 4 8~4 bes8 c
  d4 c bes8 8 a4 % 5a
  g1
  R1
  bes4 8 8~2~ % 5b
  bes2.^\< r4\!
  bes4^\f 8 8~2~

  bes2^\< r4\! g8^\mf 8 % 6a
  g8 d d d d4 4
  d4 8 8~4 r % 6b
  R1
  r2 r4 g8 8 % 7a
  g4 d4 4 4
  d4 8 8~4 bes'8 c
  d8 8 c4 bes a8 g~ % 7b
  g1
  R1

  g8^\mf fis g a bes a bes(c) % 4a
  d8 4 8~4 r
  c8 4 8~4 r
  d8 4 8(~8 c bes a) % 4b
  g8 fis g a bes a bes(c)
  d8 4 8~4 bes8 c
  d4 c bes8 8 a4 % 5a
  g1
  R1
  bes4 8 8~2~ % 5b
  bes2.^\< r4\!
  bes4^\f 8 8~2~
  
  bes2^\< r4\! g^\mf % 8a
  g4 d d d
  d4 8 8~4 r
  R1 % 8b
  r2 r4 g
  g4 d d d
  d4 8 8~4 bes'8 c % 9a
  d8 8 c4 bes a8 g~
  g1
  R1 % 9b
  g8^\f fis g a bes a bes(c)
  d8 4 8~4 r
  c8 4 8~4 r % 10a
  d8 4 8(~8 c bes a)
  g8 fis g a bes a bes(c)
  d8 4 8~4 bes8 c % 10b
  d4 c bes8 8 a4
  g1
  R1 % 11a
  R1
  R1
  bes4.-> ^\mf 8-> ~4 4-> ~ % 11b
  bes8 4.-> 4-> a^>
  bes2->^\cresc c4-> c->
  d4^> d^> ees2^> % 12a
  d1^> ~
  d2. r4
  g,8^\mp fis g a bes a bes(c) % 12b
  d8 4 8~4 r
  c8 4 8~4 r
  d8 4 8(~8 c bes a) % 13a
  g8 fis g a bes a bes(c)
  d8 4 8~4 bes8 c
  d4 c bes8 8 a4 % 13b
  g2. r4

  g8^\f fis g a bes a bes(c) % 12b
  d8 4 8~4 r
  c8 4 8~4 r
  d8 4 8(~8 c bes a) % 13a
  g8 fis g a bes a bes(c)
  d8 4 8~4 bes8 c
  d2 c % 13b++

  bes4 4 a2 % 14a
  \override NoteHead.style = #'cross
  bes4^\markup\italic Stomp 4 4 4
  bes8 8 8 8 8 8 8 8
  \revert NoteHead.style
  <bes d \tweak font-size -2 g>1^\markup div. ~ % 14b
  q1~
  q1
  R1
  \bar "|."
}

wordsI = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  You may talk a -- bout your kings of Gid -- e -- on, __
  But there's none like good old Josh -- u -- a __
  at the bat -- tle of Jer -- i -- cho. __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  Up to the wall of Jer -- i -- cho __
  "\"Go" sound them ram "horns,\"" Josh -- ua cried, __
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down!
  The walls came a -- tum -- bl -- in' down! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  walls came tum -- bl -- in' __
  "" _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsIsingle = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  You may talk a -- bout your kings of Gid -- e -- on, __
  But there's none like good old Josh -- u -- a __
  at the bat -- tle of Jer -- i -- cho. __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  Up to the wall of Jer -- i -- cho __
  "\"Go" sound them ram "horns,\"" Josh -- ua cried, __
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down!
  The walls came a -- tum -- bl -- in' down! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' __
  "" _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsImidi = \lyricmode {
  "Josh" u "a! " 
  "\nJosh" u "a! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nYou " "may " "talk " a "bout " "your " "kings " "of " Gid e "on, " 
  "\nBut " "there's " "none " "like " "good " "old " Josh u "a " 
  "\nat " "the " bat "tle " "of " Jer i "cho. " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nUp " "to " "the " "wall " "of " Jer i "cho " 
  "\n\"Go " "sound " "them " "ram " "horns,\" " Josh "ua " "cried, " 
  "\n\"Cause " "the " bat "tle " "is " "in " "my " "hand!\" " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nDown! " "Down! "  "Down! "  "Down! " "Down! "
  "\nThe " "walls " "came " a tum bl "in' " "down! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " 
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\ndown! " 
}

partII = \relative {
  \global
  R1
  R1
  bes'4^\f f8 8~2~
  f2.^\< r4\! % 3b
  bes4^\f f8 8~2~
  f2.^\< r4\!

  g8^\f fis g a bes a bes(c) % 4a
  g8 4 8~4 r
  f8 4 8~4 r
  g8 4 8(~4 fis) % 4b
  g8 fis g a bes a bes(c)
  g8 4 8~4 bes8 a
  g4 4 fis8 8 4 % 5a
  g1
  R1
  bes4 f8 8~2~ % 5b
  f2.^\< r4\!
  bes4^\f f8 8~2~

  f2^\< r4\! g8^\mf g % 6a
  g8 d d d d4 d
  d4 d8 8~4 r % 6b
  R1
  r2 r4 g8 8 % 7a
  g4 d d d
  d4 8 8~4 bes'8 c
  d8 8 c4 bes a8 g~
  g1
  R1

  g8^\mf fis g a bes a bes(c) % 4a
  g8 4 8~4 r
  f8 4 8~4 r
  g8 4 8(~4 fis) % 4b
  g8 fis g a bes a bes(c)
  g8 4 8~4 bes8 a
  g4 4 fis8 8 4 % 5a
  g1
  R1
  bes4 f8 8~2~ % 5b
  f2.^\< r4\!
  bes4^\f f8 8~2~
  
  f2^\< r4\! g^\mf % 8a
  g4 d d d
  d4 8 8~4 r
  R1 % 8b
  r2 r4 g
  g4 d d d
  d4 8 8~4 bes'8 c % 9a
  d8 8 c4 bes a8 g~
  g1
  R1 % 9b
  g8^\f fis g a bes a bes(c)
  g8 4 8~4 r
  f8 4 8~4 r % 10a
  g8 4 8(~4 fis)
  g8 fis g a bes a bes(c)
  g8 4 8~4 bes8 a % 10b
  g4 4 fis8 8 4
  g1
  R1 % 11a
  bes,4.->^\mp^\markup\italic "Put Boy Altos on this part" 8->~4 4->~
  bes8 4.-> 2->
  bes'4.->^\mf^\markup\italic "Regular Altos" a8-> ~4 g4-> ~ % 11b
  g8 f4.-> g4-> a->
  bes2->^\cresc c4-> c->
  bes4-> 4-> g2-> % 12a
  d'4->( c bes a
  g a fis) r
  \repeat volta 2 {
    g8\omit\f^\markup {\dynamic mp / \dynamic f} fis g a bes a bes(c) % 12b
    g8 4 8~4 r
    f8 4 8~4 r
    g8 4 8(~4 fis) % 13a
    g8 fis g a bes a bes(c)
    g8 4 8~4 bes8 a
  }
  \alternative {
    {
      g4 4 fis8 8 4 % 13b
      g2. r4
    }
    {
      g2 2
    }
  }
  fis4 4 2 % 13a
  \override NoteHead.style = #'cross
  bes4^\markup\italic Stomp 4 4 4
  bes8 8 8 8 8 8 8 8
  \revert NoteHead.style
  g1(
  a1
  <g bes>1)^\markup div.
  R1
  \bar "|."
}

partIIsingle = \relative {
  \global
  R1
  R1
  bes'4^\f f8 8~2~
  f2.^\< r4\! % 3b
  bes4^\f f8 8~2~
  f2.^\< r4\!

  g8^\f fis g a bes a bes(c) % 4a
  g8 4 8~4 r
  f8 4 8~4 r
  g8 4 8(~4 fis) % 4b
  g8 fis g a bes a bes(c)
  g8 4 8~4 bes8 a
  g4 4 fis8 8 4 % 5a
  g1
  R1
  bes4 f8 8~2~ % 5b
  f2.^\< r4\!
  bes4^\f f8 8~2~

  f2^\< r4\! g8^\mf g % 6a
  g8 d d d d4 d
  d4 d8 8~4 r % 6b
  R1
  r2 r4 g8 8 % 7a
  g4 d d d
  d4 8 8~4 bes'8 c
  d8 8 c4 bes a8 g~
  g1
  R1

  g8^\mf fis g a bes a bes(c) % 4a
  g8 4 8~4 r
  f8 4 8~4 r
  g8 4 8(~4 fis) % 4b
  g8 fis g a bes a bes(c)
  g8 4 8~4 bes8 a
  g4 4 fis8 8 4 % 5a
  g1
  R1
  bes4 f8 8~2~ % 5b
  f2.^\< r4\!
  bes4^\f f8 8~2~
  
  f2^\< r4\! g^\mf % 8a
  g4 d d d
  d4 8 8~4 r
  R1 % 8b
  r2 r4 g
  g4 d d d
  d4 8 8~4 bes'8 c % 9a
  d8 8 c4 bes a8 g~
  g1
  R1 % 9b
  g8^\f fis g a bes a bes(c)
  g8 4 8~4 r
  f8 4 8~4 r % 10a
  g8 4 8(~4 fis)
  g8 fis g a bes a bes(c)
  g8 4 8~4 bes8 a % 10b
  g4 4 fis8 8 4
  g1
  R1 % 11a
  bes,4.->^\mp^\markup\italic "Put Boy Altos on this part" 8->~4 4->~
  bes8 4.-> 2->
  bes'4.->^\mf^\markup\italic "Regular Altos" a8-> ~4 g4-> ~ % 11b
  g8 f4.-> g4-> a->
  bes2->^\cresc c4-> c->
  bes4-> 4-> g2-> % 12a
  d'4->( c bes a
  g a fis) r

  g8^\mp fis g a bes a bes(c) % 12b
  g8 4 8~4 r
  f8 4 8~4 r
  g8 4 8(~4 fis) % 13a
  g8 fis g a bes a bes(c)
  g8 4 8~4 bes8 a
  g4 4 fis8 8 4 % 13b
  g2. r4

  g8^\f fis g a bes a bes(c) % 12b
  g8 4 8~4 r
  f8 4 8~4 r
  g8 4 8(~4 fis) % 13a
  g8 fis g a bes a bes(c)
  g8 4 8~4 bes8 a
  g2 2

  fis4 4 2 % 13a
  \override NoteHead.style = #'cross
  bes4^\markup\italic Stomp 4 4 4
  bes8 8 8 8 8 8 8 8
  \revert NoteHead.style
  g1(
  a1
  <g bes>1)^\markup div.
  R1
  \bar "|."
}

wordsII = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  You may talk a -- bout your kings of Gid -- e -- on, __
  But there's none like good old Josh -- u -- a __
  at the bat -- tle of Jer -- i -- cho. __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  Up to the wall of Jer -- i -- cho __
  "\"Go" sound them ram "horns,\"" Josh -- ua cried, __
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down! __
  Down! Down! __ Down! __ Down! Down!
  The walls came a -- tum -- bl -- in' down! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  walls came tum -- bl -- in' __
  "" _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsIIsingle = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  You may talk a -- bout your kings of Gid -- e -- on, __
  But there's none like good old Josh -- u -- a __
  at the bat -- tle of Jer -- i -- cho. __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  Up to the wall of Jer -- i -- cho __
  "\"Go" sound them ram "horns,\"" Josh -- ua cried, __
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down! __
  Down! Down! __ Down! __ Down! Down!
  The walls came a -- tum -- bl -- in' down! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' __
  "" _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsIImidi = \lyricmode {
  "Josh" u "a! " 
  "\nJosh" u "a! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nYou " "may " "talk " a "bout " "your " "kings " "of " Gid e "on, " 
  "\nBut " "there's " "none " "like " "good " "old " Josh u "a " 
  "\nat " "the " bat "tle " "of " Jer i "cho. " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nUp " "to " "the " "wall " "of " Jer i "cho " 
  "\n\"Go " "sound " "them " "ram " "horns,\" " Josh "ua " "cried, " 
  "\n\"Cause " "the " bat "tle " "is " "in " "my " "hand!\" " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nDown! " "Down! "  "Down! "  "Down! " "Down! " 
  "\nDown! " "Down! "  "Down! "  "Down! " "Down! "
  "\nThe " "walls " "came " a tum bl "in' " "down! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " 
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\ndown! " 
}

partIII = \relative {
  \global
  R1
  R1
  bes4 c8 8~2~
  c2.^\< r4\! % 3b
  bes4^\f c8 8~2~
  c2.^\< r4\!
  
  g8^\f fis g a bes a bes(c) % 4a
  g8 a4 bes8~4 r
  f8 g4 a8~4 r
  g8 a4 bes8(~8 c d c) % 4b
  g8 fis g a bes a bes(c)
  g8 a4 bes8~4 8 c
  bes4 c d8 8 4 % 5a
  g,1
  R1
  bes4 c8 8~2~ % 5b
  c2.^\< r4\!
  bes4^\f c8 8~2~

  c2\< r\! % 6a
  R1
  r2 r4 g8^\mf 8 % 6b
  g8 <d \tweak font-size -3 d'> q q q(<c \tweak font-size -3 c'>) <bes \tweak font-size -3 bes'>(<c \tweak font-size -3 c'>)
  <d \tweak font-size -3 d'>2 r % 7a
  R1
  r2 r4 bes'8 c
  d8 8 c4 bes a8 g~
  g1
  R1

  g8^\mf fis g a bes a bes(c) % 4a
  g8 a4 bes8~4 r
  f8 g4 a8~4 r
  g8 a4 bes8(~8 c d c) % 4b
  g8 fis g a bes a bes(c)
  g8 a4 bes8~4 8 c
  bes4 c d8 8 4 % 5a
  g,1
  R1
  bes4 c8 8~2~ % 5b
  c2.^\< r4\!
  bes4^\f c8 8~2~

  c2^\< r\! % 8a
  R1
  r2 r4 g^\mf
  g4 <d \tweak font-size -2 d'> q8(<c \tweak font-size -3 c'>) <bes \tweak font-size -3 bes'>(<c \tweak font-size -3 c'>) % 8b
  <d \tweak font-size -3 d'>2 r
  R1
  r2 r4 bes'8 c % 9a
  d8 8 c4 bes a8 g~
  g1
  R1 % 9b
  g8^\f fis g a bes a bes(c)
  g8 a4 bes8~4 r
  f8 g4 bes8~4 r % 10a
  g8 a4 bes8(~8 c d c)
  g8 fis g a bes a bes(c)
  g8 a4 bes8~4 8 c % 10b
  bes4 c d8 8 4
  g,1
  R1 % 11a
  bes4.->^\mp a8->~4 g->~
  g8 f4.-> g4->(a)
  R1 % 11b
  r2 r4 a4->^\mf
  bes2->^\cresc c4-> 4->
  d4-> 4-> c2-> % 12a
  d2.->( c4
  bes4 c a) r
  \repeat volta 2 {
    g8\omit\f^\markup {\dynamic mp / \dynamic f} fis g a bes a bes(c)
    g8 a4 bes8~4 r
    f8 g4 a8~4 r
    g8 a4 bes8(~8 c d c) % 13a
    g8 fis g a bes a bes(c)
    g8 a4 bes8~4 8 c
  }
  \alternative {
    {
      bes4 c d8 8 4 % 13b
      g,2. r4
    }
    {
      bes2 c
    }
  }
  d4 4 2 % 14a
  \override NoteHead.style = #'cross
  d,4^\markup\italic Stomp 4 4 4
  d8 8 8 8 8 8 8 8
  \revert NoteHead.style
  d'1~ % 14b
  d1~
  d1
  R1
  \bar "|."
}

partIIIsingle = \relative {
  \global
  R1
  R1
  bes4 c8 8~2~
  c2.^\< r4\! % 3b
  bes4^\f c8 8~2~
  c2.^\< r4\!
  
  g8^\f fis g a bes a bes(c) % 4a
  g8 a4 bes8~4 r
  f8 g4 a8~4 r
  g8 a4 bes8(~8 c d c) % 4b
  g8 fis g a bes a bes(c)
  g8 a4 bes8~4 8 c
  bes4 c d8 8 4 % 5a
  g,1
  R1
  bes4 c8 8~2~ % 5b
  c2.^\< r4\!
  bes4^\f c8 8~2~

  c2\< r\! % 6a
  R1
  r2 r4 g8^\mf 8 % 6b
  g8 <d \tweak font-size -3 d'> q q q(<c \tweak font-size -3 c'>) <bes \tweak font-size -3 bes'>(<c \tweak font-size -3 c'>)
  <d \tweak font-size -3 d'>2 r % 7a
  R1
  r2 r4 bes'8 c
  d8 8 c4 bes a8 g~
  g1
  R1

  g8^\mf fis g a bes a bes(c) % 4a
  g8 a4 bes8~4 r
  f8 g4 a8~4 r
  g8 a4 bes8(~8 c d c) % 4b
  g8 fis g a bes a bes(c)
  g8 a4 bes8~4 8 c
  bes4 c d8 8 4 % 5a
  g,1
  R1
  bes4 c8 8~2~ % 5b
  c2.^\< r4\!
  bes4^\f c8 8~2~

  c2^\< r\! % 8a
  R1
  r2 r4 g^\mf
  g4 <d \tweak font-size -2 d'> q8(<c \tweak font-size -3 c'>) <bes \tweak font-size -3 bes'>(<c \tweak font-size -3 c'>) % 8b
  <d \tweak font-size -3 d'>2 r
  R1
  r2 r4 bes'8 c % 9a
  d8 8 c4 bes a8 g~
  g1
  R1 % 9b
  g8^\f fis g a bes a bes(c)
  g8 a4 bes8~4 r
  f8 g4 bes8~4 r % 10a
  g8 a4 bes8(~8 c d c)
  g8 fis g a bes a bes(c)
  g8 a4 bes8~4 8 c % 10b
  bes4 c d8 8 4
  g,1
  R1 % 11a
  bes4.->^\mp a8->~4 g->~
  g8 f4.-> g4->(a)
  R1 % 11b
  r2 r4 a4->^\mf
  bes2->^\cresc c4-> 4->
  d4-> 4-> c2-> % 12a
  d2.->( c4
  bes4 c a) r

  g8^\mp fis g a bes a bes(c)
  g8 a4 bes8~4 r
  f8 g4 a8~4 r
  g8 a4 bes8(~8 c d c) % 13a
  g8 fis g a bes a bes(c)
  g8 a4 bes8~4 8 c
  bes4 c d8 8 4 % 13b
  g,2. r4

  g8^\f fis g a bes a bes(c)
  g8 a4 bes8~4 r
  f8 g4 a8~4 r
  g8 a4 bes8(~8 c d c) % 13a
  g8 fis g a bes a bes(c)
  g8 a4 bes8~4 8 c
  bes2 c

  d4 4 2 % 14a
  \override NoteHead.style = #'cross
  d,4^\markup\italic Stomp 4 4 4
  d8 8 8 8 8 8 8 8
  \revert NoteHead.style
  d'1~ % 14b
  d1~
  d1
  R1
  \bar "|."
}

wordsIII = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  You may talk a -- bout your man __ of __ Saul,
  at the bat -- tle of Jer -- i -- cho. __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  He marched with spear __ in __ hand.
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down! __
  The walls came a -- tum -- bl -- in' down! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  walls came tum -- bl -- in' __
  "" _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsIIIsingle = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  You may talk a -- bout your man __ of __ Saul,
  at the bat -- tle of Jer -- i -- cho. __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.
  Josh -- u -- a! __
  Josh -- u -- a! __

  He marched with spear __ in __ hand.
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down! __
  The walls came a -- tum -- bl -- in' down! __

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' __
  "" _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsIIImidi = \lyricmode {
  "Josh" u "a! " 
  "\nJosh" u "a! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nYou " "may " "talk " a "bout " "your " "man "  "of "  "Saul, "
  "\nat " "the " bat "tle " "of " Jer i "cho. " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nHe " "marched " "with " "spear "  "in "  "hand. "
  "\n\"Cause " "the " bat "tle " "is " "in " "my " "hand!\" " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nDown! " "Down! "  "Down! "  "Down! " "Down! " 
  "\nThe " "walls " "came " a tum bl "in' " "down! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " 
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\ndown! " 
}

pianoRHone = \relative {
  \global
  R1
  R1
}

pianoRHtwo = \relative {
  \global
  R1
  R1
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f
  s1
}

pianoLHone = \relative {
  \global
  g,,8-- g'-. e,-- e'-. f,-- d'-. fis,-- fis'-.
  g,8-- g'-. e,-- e'-. f,-- d'-. fis,-- fis'-.
}

pianoLHtwo = \relative {
  \global
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \partIII
            \addlyrics \wordsIII
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
  }
}

\book {
  \bookOutputSuffix "single"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partIsingle
            \addlyrics \wordsIsingle
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partIIsingle
            \addlyrics \wordsIIsingle
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \partIIIsingle
            \addlyrics \wordsIIIsingle
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partIsingle
            \addlyrics \wordsIsingle
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partIIsingle
            \addlyrics \wordsIIsingle
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \partIIIsingle
            \addlyrics \wordsIIIsingle
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
  }
}

\book {
  \bookOutputSuffix "midi-1"
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partIsingle
            \addlyrics \wordsImidi
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partIIsingle
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \partIIIsingle
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
  \bookOutputSuffix "midi-2"
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partIsingle
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partIIsingle
            \addlyrics \wordsIImidi
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \partIIIsingle
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
  \bookOutputSuffix "midi-3"
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partIsingle
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partIIsingle
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \partIIIsingle
            \addlyrics \wordsIIImidi
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
