\version "2.22.1"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Gypsy Rover"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional Ballad"
  arranger    = "Arr. Emily Crocker (ASCAP)"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
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
  \tempo 4=96
%  \set Score.tempoHideNote = ##t
  s1*21
  s2 \tempo 4=90 s2 \tempo 4=96 % 4a
  s1*31
  s2. \tempo 4=84 s4 % 9a++
  s2. \tempo 4=14 s8 \tempo 4=84 s
  s1*6
  \tempo 4=96 s1*6 % 10b
  \tempo 4=90 s2. \tempo 4=30 s4 \tempo 4=90 s4 % 11a++
  s1
  s4 \tempo 4=84 s4 \tempo 4=28 s4 \tempo 4=96 s4 % 11b+
  s1*6
  \tempo 4=90 s1 % 12b++
  \tempo 4=45 s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s1*4
  \mark \markup { \box "2b" } s1*4
  \mark \markup { \box "2c" } s1*4
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "3c" } s1*3
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "6a" } s1*3
  \mark \markup { \box "6b" } s1*3
  \mark \markup { \box "7a" } s1*3
  \mark \markup { \box "7b" } s1*3
  \mark \markup { \box "8a" } s1*3
  \mark \markup { \box "8b" } s1*3
  \mark \markup { \box "9a" } s1*4
  \mark \markup { \box "9b" } s1*3
  \mark \markup { \box "10a" } s1*3
  \mark \markup { \box "10b" } s1*4
  \mark \markup { \box "11a" } s1*2 \time 5/4 s1 s4 \time 4/4
  \mark \markup { \box "11b" } s1*3
  \mark \markup { \box "12a" } s1*3
  \mark \markup { \box "12b" } s1*4
}

soprano = \relative {
  \global
  R1*12
  r4 d''8^\mp b a2 % 3a
  b8 c d b a2
  r4 d8 b a2
  b8 c d b a2 % 3b
  R1
  R1
  R1*3 % 3c
  R1*3 % 4a
  r4 d8^\mp b a2 % 4b
  b8 c d b a2
  r4 d8^\mf b a2
  b8 c d b a2 % 5a
  r4 d8 b a2
  b8 c d b a2
  r4 d8 b a2 % 5b
  b8 c d b a2
  r4 d2^\< 8 c\!
  b8 a g4 d r8 d % 6a
  d4 d'2.~
  d4\breathe 8^\markup\italic "no dim." (e d2~
  d4) \breathe d8(e d2^\< ) % 6b
  R1\!
  R1
  R1 % 7a
  r2 r4 r8^\f d,
  d4 g8 8 a4 b8 a
  g4 d8 8 4 r8 d % 7b
  d4 g a b8(c)
  b2 a4 r8 d,
  d4 d'2.^\< % 8a
  d4 <d g>\! <c e> c8 8
  d4 2^\> c8\! 8
  b2(c) % 8b
  b2 r
  R1 \bar "||" \key bes \major
  R1 % 9a
  R1
  R1
  r2 r4 r8\fermata f8^\mf^\markup Freely
  f4 bes c d8(c) % 9b
  bes4 f8 8 4. 8
  f4 bes c d8(ees)
  d2 c4. f,8 % 10a
  f4 bes8 8 c4^\< d8 ees\!
  f4 d8^\> (c) bes4\! 8(c)
  d4^\markup "Tempo I" d c bes8(g) % 10b
  f4(bes2 g4)
  f2 r
  f4^\mp bes c d8 c
  bes4 f f2 % 11a
  f4 bes c d8 ees
  \time 5/4 d2\omit\cresc^\markup\italic "cresc. e rit." (c\fermata) \breathe f,8^\mf^\markup Freely 8 \time 4/4
  f4 bes8 8 c4^\< d8 ees\! % 11b
  f4 d8^\markup\italic rit. (c) bes4\fermata \breathe 8^\mp^\markup "Tempo I" c
  d4 4 c bes8(g)
  f4(bes2 g4) % 12a
  f2 r
  R1
  r2 r4 r8 f^\p % 12b
  f4 bes2.~
  bes1^\markup\italic "dim. al fine" ~
  bes1\fermata
%  \bar "|."
}

wordsSop = \lyricmode {
  Ah -- de -- doo,
  ah -- dee -- doo -- da day.
  Ah -- de -- doo,
  ah -- dee -- doo -- da day.
  Ah -- de -- doo,
  ah -- dee -- doo -- da day.
  Ah -- de -- doo,
  ah -- dee -- doo -- da day.
  Ah -- de -- doo,
  ah -- dee -- doo -- da day.
  Ah -- de -- doo,
  ah -- dee -- doo -- da day.
  Oh, through the mead -- ow and town,
  the Gyp -- sy. __
  Oh. __ Oh. __

  They rode till they came to the light of the fire.
  Her fair face it was __ gleam -- ing,
  The Gyp -- sies,
  how they sang for the Gyp -- sy and his la -- dy.

  What makes you leave your __ lord and your land?
  What makes you leave your __ mon -- ey,
  to dance in a field with a Gyp -- sy __ band
  and be a Gyp -- sy's __ la -- dy?

  Ah dee doo  ah -- dee doo -- da day,
  Ah -- de doo ah -- dee day. __
  Ah, to dance in a field with a Gip -- sy __ band,
  and to be a Gyp -- sy's la -- day.

  The la -- dy. __
}

wordsSopMidi = \lyricmode {
  "Ah" de "doo, "
  "\nah" dee doo "da " "day. "
  "\nAh" de "doo, "
  "\nah" dee doo "da " "day. "
  "\nAh" de "doo, "
  "\nah" dee doo "da " "day. "
  "\nAh" de "doo, "
  "\nah" dee doo "da " "day. "
  "\nAh" de "doo, "
  "\nah" dee doo "da " "day. "
  "\nAh" de "doo, "
  "\nah" dee doo "da " "day. "
  "\nOh, " "through " "the " mead "ow " "and " "town, "
  "\nthe " Gyp "sy. " 
  "\nOh. "  "Oh. " 

  "\nThey " "rode " "till " "they " "came " "to " "the " "light " "of " "the " "fire. "
  "\nHer " "fair " "face " "it " "was "  gleam "ing, "
  "\nThe " Gyp "sies, "
  "\nhow " "they " "sang " "for " "the " Gyp "sy " "and " "his " la "dy. "

  "\nWhat " "makes " "you " "leave " "your "  "lord " "and " "your " "land? "
  "\nWhat " "makes " "you " "leave " "your "  mon "ey, "
  "\nto " "dance " "in " "a " "field " "with " "a " Gyp "sy "  "band "
  "\nand " "be " "a " Gyp "sy's "  la "dy? "

  "\nAh " "dee " "doo "  ah "dee " doo "da " "day, "
  "\nAh" "de " "doo " ah "dee " "day. " 
  "\nAh, " "to " "dance " "in " "a " "field " "with " "a " Gip "sy "  "band, "
  "\nand " "to " "be " "a " Gyp "sy's " la "day. "

  "\nThe " la "dy. " 
}

alto = \relative {
  \global
  s1*24
  r4 d'8^\mp (e d2) % 4b
  r4 fis8(g a g d e
  d4) \breathe d8^\mf(e d2)
  r4 fis8(g a g fis) e % 4c
  d4 g a b8(a)
  g4 d8 8 4 r8 d
  d4 g a b8(c) % 5b
  b2 a4 r8 d,
  d4 g^\< a b8 c\!
  d4 b8 a g4 r8 a % 6a
  b4 4 a g8(e)
  d4(g2^\markup\italic "no dim." e4)
  << {d1 R1} \new Voice {s2 s^\< s1\!} >> % 6b
  R1
  R1 % 7a
  r2 r4 r8 d8^\f
  d4 g8 8 a4 b8 a
  b,8(c) d b c4 r8 c % 7b
  b4 d e fis
  g2 e4(fis)
  r4 g8^\< 8 a4 b8 c % 8a
  d4 b8\! (a) g4 8 a
  b4 4^\> a g8\! e
  d4(g2 e4) % 8b
  d2 r
  R1 \bar "||" \key bes \major
  R1 % 9a
  R1
  R1^\markup\italic "molto rit."
  r2 r4 r8 \fermata f^\mf
  f4 4 g g % 9b
  f4 d8 d d4. 8
  d4 4 g g
  f2 4. 8 % 10a
  f4 8 8 g4^\< 8 8\!
  bes4 f^\> g\! g
  f4 4 ees ees % 10b
  d2(ees)
  d2 r
  f4^\mp bes c d8 c
  bes4 f4 2 % 11a
  f4 d ees f8 g
  \time 5/4 f2^\markup\italic "cresc. e rit." ~2\fermata \breathe f8^\mf f \time 4/4
  f4 8 8 4^\< 8 8\! % 11b
  bes4 f^\markup\italic rit. g\fermata \breathe 8^\mp 8
  f4 4 ees4 4
  d2(ees) % 12a
  d2 r
  R1
  r2 r4 r8 f^\p % 12b
  f4 bes2.~
  bes1^\markup\italic "dim. al fine" ~
  bes1\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  Oh __ Oh __ Oh __ Oh. __
  Then she pulled off her __ silk fin -- ished gown
  and put on clothes of __ leath -- er,
  and off they rode through the mead -- ow and town,
  The Gyp -- sy and the __ la -- dy.

  They rode till they came to the light __ of the fire.
  Her fair face it was gleam -- ing. __
  Oh, they sang till the green -- woods __ rang
  for the Gyp -- sy King and his la -- dy.

  What makes you leave your lord and your land?
  What makes you leave your mon -- ey,
  to dance in a field with a Gyp -- sy band
  and be a Gyp -- sy's la -- dy?

  Ah dee doo ah -- dee
  doo -- da day,
  Ah dee doo ah -- dee day. __
  Ah, to dance in a field with a Gyp -- sy band,
  and to be a Gyp -- sy's la -- dy.
  The La -- dy. __
}

wordsAltoMidi = \lyricmode {
  "Oh "  "Oh "  "Oh "  "Oh. " 
  "\nThen " "she " "pulled " "off " "her "  "silk " fin "ished " "gown "
  "\nand " "put " "on " "clothes " "of "  leath "er, "
  "\nand " "off " "they " "rode " "through " "the " mead "ow " "and " "town, "
  "\nThe " Gyp "sy " "and " "the "  la "dy. "

  "\nThey " "rode " "till " "they " "came " "to " "the " "light "  "of " "the " "fire. "
  "\nHer " "fair " "face " "it " "was " gleam "ing. " 
  "\nOh, " "they " "sang " "till " "the " green "woods "  "rang "
  "\nfor " "the " Gyp "sy " "King " "and " "his " la "dy. "

  "\nWhat " "makes " "you " "leave " "your " "lord " "and " "your " "land? "
  "\nWhat " "makes " "you " "leave " "your " mon "ey, "
  "\nto " "dance " "in " "a " "field " "with " "a " Gyp "sy " "band "
  "\nand " "be " "a " Gyp "sy's " la "dy? "

  "\nAh " "dee " "doo " ah "dee "
  "\ndoo" "da " "day, "
  "\nAh " "dee " "doo " ah "dee " "day. " 
  "\nAh, " "to " "dance " "in " "a " "field " "with " "a " Gyp "sy " "band, "
  "\nand " "to " "be " "a " Gyp "sy's " la "dy. "
  "\nThe " La "dy. " 
}

tenor = \relative {
  \global
  R1*16
  r4^\mf d' c d8 c % 3b+
  b4 d4 4. 8
  d4 b c d8 e % 3c
  d2 4 r8 d
  d8 d^\cresc b b c4 d8 e
  d4 g e--^\f r8 8^\mp % 4a
  d4^\markup\italic "a tempo" 8 8 c4 c8 8
  b4(d2 c4)
  b2 r % 4b
  R1*12
  r4 d8^\f b a2 % 6b+
  b8 c d b a2
  r4 d8 b a2 % 7a
  b8 c d b a4 r8 d^\f
  d4 g,8 8 4 8 8
  g8(a) b g a4 r8 a % 7b
  g4 b c8(d) e4
  d4 2 r8 d
  d8(c) b4^\< d d8 c % 8a
  b4 d\! c e8 8
  d4 2^\> 8\! 8
  d1 % 8b
  d2 r
  R1 \bar "||" \key bes \major
  R1 % 9a
  R1
  R1^\markup\italic "molto rit."
  r2 r4 r8\fermata d^\mf
  f,4 d' ees ees % 9b
  d4 c8 8 bes4. 8
  bes4 4 c bes
  bes2 c4. 8 % 10a
  d4 8 8 ees4^\< 8 8\!
  d4 bes^\> 4\! 4
  bes4 2 4 % 10b
  bes1~
  bes2 r
  R1
  f4^\mp bes c d8 c % 11a
  bes4 f f2
  \time 5/4 f8^\markup\italic "cresc. e rit." g a bes c2\fermata \breathe c8^\mf c \time 4/4
  d4 8 8 c4^\< 8 8\!
  d4 bes^\markup\italic rit. 4\fermata \breathe r
  R1
  R1 % 12a
  R1
  r2 r4 r8 f8^\p
  f4 bes2.~
  bes1~
  bes1^\markup\italic "dim. al fine" ~
  bes1\fermata
%  \bar "|."
}

wordsTenor = \lyricmode {
  He rode to a cas -- tle fair,
  and down -- stairs ran this -- a la -- dy.
  He whis -- tled and he sang till the gree -- woods rang
  and he won the heart of a la -- dy.

  Ah -- dee -- doo,
  ah -- dee -- doo -- da day.
  Ah -- dee -- doo,
  ah -- dee -- do -- da day.
  They rode till they came to the light __ of the fire.
  Her fair face it __ was gleam -- ing.
  The Gyp -- sies sang till the green -- woords rang for the Gyp -- sy and his la -- dy.

  What makes you leave your lord and your land?
  What makes you leave your mon -- ey,
  to dance in a field with a Gyp -- sy band and be his la -- dy? __

  Ah dee doo ah -- dee doo da day.
  Ah dee doo -- da day,
  Ah, to dance in a field with a Gyp -- sy band,
  The Gyp -- sy. __
}

wordsTenorMidi = \lyricmode {
  "He " "rode " "to " "a " cas "tle " "fair, "
  "\nand " down "stairs " "ran " this "a " la "dy. "
  "\nHe " whis "tled " "and " "he " "sang " "till " "the " gree "woods " "rang "
  "\nand " "he " "won " "the " "heart " "of " "a " la "dy. "

  "\nAh" dee "doo, "
  "\nah" dee doo "da " "day. "
  "\nAh" dee "doo, "
  "\nah" dee do "da " "day. "
  "\nThey " "rode " "till " "they " "came " "to " "the " "light "  "of " "the " "fire. "
  "\nHer " "fair " "face " "it "  "was " gleam "ing. "
  "\nThe " Gyp "sies " "sang " "till " "the " green "woords " "rang " "for " "the " Gyp "sy " "and " "his " la "dy. "

  "\nWhat " "makes " "you " "leave " "your " "lord " "and " "your " "land? "
  "\nWhat " "makes " "you " "leave " "your " mon "ey, "
  "\nto " "dance " "in " "a " "field " "with " "a " Gyp "sy " "band " "and " "be " "his " la "dy? " 

  "\nAh " "dee " "doo " ah "dee " "doo " "da " "day. "
  "\nAh " "dee " doo "da " "day, "
  "\nAh, " "to " "dance " "in " "a " "field " "with " "a " Gyp "sy " "band, "
  "\nThe " Gyp "sy. " 
}

bass = \relative {
  \global
  R1
  R1
  R1
  r2 r4 r8 d^\mf
  d4 g a b8 a % 2b
  g4 d8 8 2
  d4 g8 8a4 b8 c
  b2 a4 r8 d,
  d8 8 g8 8 a4^\< b8 c % 2c
  d4\! b8^\> (a) g4\! r8 a
  b4 8 8 a4 g8 e
  d4(g2 e4)
  d2 r % 3a
  R1
  R1
  r2 r4_\markup Bass r8 d8_\mf % 3b
  d4 g8 8 a4 b8 a
  g4 d4 4. 8
  d4 g a b8 c % 3c
  b2 a4 r8 d,
  d8 d^\cresc g g a4 b8 c
  d4 b8(a) g4--^\f^\markup\italic "poco rit." r8 a^\mp % 4a
  b4^\markup\italic "a tempo" 8 8 a4 g8 e
  d4(g2 e4)
  d2 r
  R1*12
  r4 g8^\f g d2 % 6b+
  g8 8 8 8 d2
  r4 g8 8 d2 % 7a
  g8 8 8 8 d4 r8 d^\f
  d2. 8 8
  d2. r8 d % 7b
  d4 g2 4
  d4 2 r8 8
  d4 g^\< fis g8 a % 8a
  g4 4\! <c, g'>^\markup\italic div. q8 8
  d4 g2.^\> ~
  g1\! ~ % 8b
  g2 r
  R1 \bar "||" \key bes \major
  R1 % 9a
  R1
  R1^\markup\italic "molto rit."
  r2 r4 r8\fermata f^\mf
  f4 bes bes c % 9b
  d4 c8 8 bes4(a8) 8
  g4 f ees c
  d4(f) bes(a8) 8 % 10a
  bes4 8 8 4^\< 8 8\!
  bes4 d,^\< ees\! ees
  f4 bes2 4 % 10b
  bes1~
  bes2 r
  R1
  f4^\mp bes c d8 c % 11a
  bes4 f f2
  \time 5/4 f8^\markup\italic "cresc. e rit." g a bes bes4(a\fermata) \breathe a8^\mf a \time 4/4
  bes4 8 8 a4^\< 8 8\! % 11b
  bes4 d,^\markup\italic rit. ees\fermata \breathe r
  R1
  R1 % 12a
  R1
  r2 r4 r8 f^\p
  f4 bes2.~ % 12b
  bes1~
  bes1^\markup\italic "dim. al fine" ~
  bes1\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  The Gyp -- sy Rov -- er came o -- ver the hill,
  down to the val -- ley so shad -- y.
  He whis -- tled and he sang till the green -- woods rang
  and he won the heart of a la -- dy.

  He rode till he came to a cas -- tle fair,
  and down -- stairs ran this -- a la -- dy.
  He whis -- tled and he sang till the gree -- woods rang
  and he won the heart of a la -- dy.
  
  Ah -- dee -- doo,
  ah -- dee -- doo -- da day.
  Ah -- dee -- doo,
  ah -- dee -- do -- da day.
  They rode to the fire.
  Her face it was gleam -- ing.
  The Gyp -- sies sang till the green -- woords rang for the Gyp -- sy __

  What makes you leave your lord and your land?
  What makes you leave your mon -- ey,
  to dance in a field with a Gyp -- sy band and be his la -- dy? __

  Ah dee doo ah -- dee doo da day.
  Ah dee doo -- da day,
  Ah, to dance in a field with a Gyp -- sy band,
  The Gyp -- sy. __
}

wordsBassMidi = \lyricmode {
  "The " Gyp "sy " Rov "er " "came " o "ver " "the " "hill, "
  "\ndown " "to " "the " val "ley " "so " shad "y. "
  "\nHe " whis "tled " "and " "he " "sang " "till " "the " green "woods " "rang "
  "\nand " "he " "won " "the " "heart " "of " "a " la "dy. "

  "\nHe " "rode " "till " "he " "came " "to " "a " cas "tle " "fair, "
  "\nand " down "stairs " "ran " this "a " la "dy. "
  "\nHe " whis "tled " "and " "he " "sang " "till " "the " gree "woods " "rang "
  "\nand " "he " "won " "the " "heart " "of " "a " la "dy. "
  
  "\nAh" dee "doo, "
  "\nah" dee doo "da " "day. "
  "\nAh" dee "doo, "
  "\nah" dee do "da " "day. "
  "\nThey " "rode " "to " "the " "fire. "
  "\nHer " "face " "it " "was " gleam "ing. "
  "\nThe " Gyp "sies " "sang " "till " "the " green "woords " "rang " "for " "the " Gyp "sy " 

  "\nWhat " "makes " "you " "leave " "your " "lord " "and " "your " "land? "
  "\nWhat " "makes " "you " "leave " "your " mon "ey, "
  "\nto " "dance " "in " "a " "field " "with " "a " Gyp "sy " "band " "and " "be " "his " la "dy? " 

  "\nAh " "dee " "doo " ah "dee " "doo " "da " "day. "
  "\nAh " "dee " doo "da " "day, "
  "\nAh, " "to " "dance " "in " "a " "field " "with " "a " Gyp "sy " "band, "
  "\nThe " Gyp "sy. " 
}

pianoRHone = \relative {
  \global
  \voiceOne
  r4 d'''8 b s2
  b8 c d b b c a4~
  a2 r
  s1
  r4 <d,, g> r <c e a> % 2b
  r4 <d fis b> r <c e a>
  r4 <b d g> r <c e a>
  r4 <d fis b> r <c e a>
  r4 <b d g> r <c e a> % 2c
  r4 <g' d'>8 g' <a, d g>4 e'8 fis
  fis8 g d b c a e c
  r4 <d g> r <c e a>
  r4 <d fis b> r <c e a> % 3a
  r4 <b d g> r <g' d>8 g'
  g2 r4 <c,, e a>
  r4 <d fis b> r <a' d>8 a' % 3b
  a8 b s4 r <c,, e a>
  r4 b''8 d d2
  b,2 a % 3c
  r4 b,8 d d2
  r8 d <b g'> d' r a <e c'> <a e'>
  r8 d <b g'> <g' d'> d'-- c b a % 4a
  b2 a
  b,2 a
  d,4 b c a % 4b
  b4 g a e
  r4 <d' fis b> r <c e a>
  r4 <d fis b> r <c e a> % 5a
  r4 <b d g> r <c e a>
  r4 <d fis b> r <c e a>
  r4 <b d g> r <c e a> % 5b
  r4 <d fis b> r <c e a>
  r4 <g' d'>8 g' <a, d g>4 <g' d'>8 <e c'>
  <d b'>8 <c a'> <b g'>4 <d a'> <a d> % 6a
  b2 a
  d,4 b c a
  b4 g a e % 6b
  r4 <g b d>8 16 16 <g a c>2
  r4 <g b d>8 16 16 <g c e>4 <g a c>
  r4 <g b d>8 16 16 <g a c>2 % 7a
  r4 <g b d>8 16 16 <g c e>4 <g a c>
  r4 <g b d>8 16 16 <g a c>2
  r4 <g b d>8 16 16 <g c e>4 <g a c> % 7b
  r4 <g b d>8 16 16 <g a c>2
  r4 <g b d>8 16 16 <g c e>4 <g a c>
  <b d g>2-> <d a' d>-> % 8a
  <g d' g>2-> <c g' c>->
  r4 <g, b d>8 16 16 <g a c>2
  r4 <g b d>8 16 16 <g c e>4 <g a c> % 8b
  r4 <g b d>8 16 16 <g a c>2
  r4 <g b d>8 16 16 <g c e>4 <g a c> \bar "||" \key bes \major
  r4 <bes d f>8 16 16 <bes c ees>2 % 9a
  r4 <bes d f>8 16 16 <bes ees g>4 <bes c ees>
  r4 <bes d f>8 16 16 <bes c ees>2
  <bes d f>4 <bes f' bes> <c f c'>2\fermata
  \teeny f4 <f bes> <g c> d'8 c % 9b for rehearsal only
  <f, bes>4 <d f>8 8 4. 8
  q4 <d bes'> <g c> d'8 ees
  <f, d'>2 <f c'>4. f8 % 10a
  f4 <f bes>8 8 <g c>4 <g d'>8 <g ees'>
  <bes f'>4 d8 c <g bes>4 bes8 c
  \normalsize r4 <bes, d f> r <bes c ees> % 10b
  r4 <bes d f> r <bes c ees>
  r4 <bes d f> r <bes c ees>
  r4 <bes d f> r <bes c ees>
  r4 <bes d f> r <bes c ees> % 11a
  r4 <bes d f> r <bes c ees>
  \time 5/4 r4 <bes d f> <c f>2\fermata \breathe r4^\markup Freely \time 4/4
  <d f bes>2-> <c f c'>-> % 11b
  <f bes f'>2-> <bes ees bes'>4->\fermata \breathe r4^\markup "Tempo I"
  r4 <bes, d f> r <bes c ees>
  r4 <bes d f> r <bes c ees> % 12a
  r4 f''8 d <f, c'>2
  d'8 ees f d d ees c4
  r4 f'8 d <f, c'>2 % 12b
  d'8 ees f d d ees c4
  r4 c,,8 d f ees d c
  <bes d>1\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  r4 g''4 <d a'>2
  r4 g d2
  r4 e8 fis fis g c, a~ \oneVoice
  a8 b e,2 c8 d
  \partCombineApart b2 s % 2b
  s1*6
  b2 s % 2c+++
  s1 % 3a
  s1
  r4 <a' d> s2
  s1 % 3b
  d4 <a d> s2
  s4 d8 g e fis c d
  r4 <d, g> r <a e'> % 3c
  s4 g e8 fis g a
  s1
  s2 e'' % 4a
  r4 <d g> r <a e'>
  r4 <d, g> r <b fis'>
  s1*10
  r4 <d g> r <a e'> % 6a+
  s1*16 \bar "||" \key bes \major
  s1*3 % 9a
  s2 bes'4 a8^\fermata \teeny <f, f'>
  s2. g'4 % 9b
  s1
  s2. g4
  s1 % 10a
  s1
  s4 f s g \normalsize
  s1*6
  \time 5/4 s2 bes,4 a\fermata s \time 4/4
  s1*4
  s4 bes' s2 % 12a+
  s4 bes f2
  s4 bes' s2 % 12b
  r4 bes f2
  s2 bes,,
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1*7
  s2 s\< % 2c
  s4 s2.\!
  s1\>
  s1\!
  s1*5
  s4 s\< s2\> % 3b++
  s1\! % 3c
  s1
  s8 s\cresc s2.
  s2 s\f\>^\markup\italic "poco rit." % 4a
  s1\mp^\markup\italic "a tempo"
  s1
  s1 % 4b
  s1
  s1\mf
  s1*5
  s8 s\< s2. % 5b++
  s1\! % 6a
  s1
  s4 s2.-\markup\italic "no dim."
  s2 s\< % 6b
  s1\f
  s1
  s1 % 7a
  s1
  s1\f
  s1*3 % 7b
  s2 s\< % 8a
  s4 s2.\!
  s4 s2\> s4\!
  s1*3 % 8b
  s1\f % 9a
  s1
  s2 s-\markup\italic "molto rit."
  s2 s4.\> s8\mf
  s1-\markup\italic "for rehearsal only" % 9b
  s1
  s1
  s1 % 10a
  s2 s\<
  s4\! s\> s2\!
  s1\mf^\markup\italic "(Play)" % 10b
  s1
  s4 s2.\>
  s1\mp
  s1 % 11a
  s1
  \time 5/4 s1-\omit\cresc-\markup\italic "cresc. e rit." s4 \time 4/4
  s2 s\< % 11b
  s4\! s2.-\markup\italic rit.
  s1\mp
  s1 % 12a
  s4 s2.\mp
  s1
  s1\p % 12b
  s1
  s4-\markup\italic rit. s\< s2\>
  s1\!
}

pianoLH = \relative {
  \global
  <g, d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <d a'> % 2b
  <g d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <d a'> % 2c
  <g d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <d a'> % 3a
  <g d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <d a'> % 3b
  <g d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <d a'> % 3c
  <g d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <c, g'> % 4a
  <g' d'>2 <d a'>
  <g d'>2 <d a'>
  <g d'>2 <d a'> % 4b
  <g d'>2 <d a'>
  <g d'>2 <d, d'>
  <g' d'>2 <d, d'> % 5a
  <g' d'>2 <d, d'>
  <g' d'>2 <d, d'>
  <g' d'>2 <d, d'> % 5b
  <g' d'>2 <d, d'>
  <g' d'>2 <d, d'>
  <g' d'>2 <d, d'> % 6a
  <g' d'>2 <d, d'>
  <g' d'>2 <d, d'>
  <g' d'>2 <d, d'> % 6b
  <g' d'>2. <d d'>4_.
  <g d'>2. <d d'>4_.
  <g d'>2. <d d'>4_. % 7a
  <g d'>2. <d d'>4_.
  <g d'>2. <d d'>4_.
  <g d'>2. <d d'>4_. % 7b
  <g d'>2. <d d'>4_.
  <g d'>2. <d d'>4_.
  <g g'>2_> <fis fis'>_> % 8a
  <e e'>2_> <c g' e'>2_>\arpeggio
  <g' d'>2. <d d'>4_.
  <g d'>2. <d d'>4_. % 8b
  <g d'>2. <d d'>4_.
  <g d'>2. <d d'>4_. \bar "||" \key bes \major
  <bes bes'>2. <f f'>4_. % 9a
  <bes bes'>2. <f f'>4_.
  <bes bes'>2. <f f'>4_.
  <bes bes'>8 <a a'> <g g'>4 <f f'>2\fermata
  \teeny f''4 <bes d> <bes ees> <c ees> % 9b
  d4 c8 8 <<{\voiceOne bes4. 8} \new Voice {\voiceTwo \teeny bes4 a8 8}>> \oneVoice
  <g bes>4 <f bes> <ees c'> <c bes'>
  << {\voiceOne bes'2 c4. 8} \new Voice {\voiceTwo \teeny d,4(f) bes4~8 8} >> \oneVoice % 10a
  <bes d>4 8 8 <bes ees>4 8 8
  <bes d>4 <d, bes'> <ees bes'> q \normalsize
  <bes f'>2 <f c'> % 10b
  <bes f'>2 <f c'>
  <bes f'>2 <f c'>
  <bes f'>2 <f c'>
  <bes f'>2 <f c'> % 11a
  <bes f'>2 <f c'>
  \time 5/4 <bes f'>2 <f c'>\fermata r4 \time 4/4
  <bes bes'>2-> <a a'>-> % 11b
  <g g'>2-> <ees bes' ees>4->\fermata \breathe r
  <bes' f'>2 <f c'>
  <bes f'>2 <f c'> % 12a
  <bes f'>2 <f c'>
  <bes f'>2 <f c'>
  <bes f'>2 <f c'> % 12b
  <bes f'>2 <f c'>
  <bes f'>2 <ees, bes' ees>
  <bes' f'>1\fermata
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
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
%        \Staff \RemoveAllEmptyStaves
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
    paper-height = 2500\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
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
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
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
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
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
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
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
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
