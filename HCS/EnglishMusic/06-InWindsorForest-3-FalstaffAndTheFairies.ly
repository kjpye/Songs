\version "2.25.30"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 3. Falstaff and the Fairies"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "R. Vaughan Williams"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Shakespeare, Ravenscroft and Lyly"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 6/8
}

TempoTrack = {
  \tempo Allegretto 2=110
  \set Score.tempoHideNote = ##t
  s2.*40 |
  \tempo "Adagio molto" 4=44 s1*15 |
  \tempo "Allegro vivace" 4=150 s1*32 |
  \tempo "Poco meno mosso" 4=120 s1*21 |
  \tempo Allegro 4=120 s1.*14 |
  \tempo Presto 4.=170 s1.*6 |
  \tempo Lento 4=60 s1*2 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "16a" } s2.*3
  \textMark \markup { \box "16b" } s2.*3
  \textMark \markup { \box "16c" } s2.*4
  \textMark \markup { \box "17a" } s2.*4
  \textMark \markup { \box "17b" } s2.*4
  \textMark \markup { \box "18a" } s2.*3
  \textMark \markup { \box "18b" } s2.*3
  \mark \markup\circle\bold A
  \textMark \markup { \box "19a" } s2.*4
  \textMark \markup { \box "19b" } s2.*4
  \textMark \markup { \box "19c" } s2.*4
  \textMark \markup { \box "20a" } s2.*4
  \mark \markup\circle\bold B      s1
  \textMark \markup { \box "20b" } s1*4
  \textMark \markup { \box "20c" } s1*2
  \textMark \markup { \box "21a" } s1*4
  \textMark \markup { \box "21b" } s1*2
  \textMark \markup { \box "21c" } s1*2
  \mark \markup\circle\bold C      s1
  \textMark \markup { \box "22a" } s1*2
  \textMark \markup { \box "22b" } s1*3
  \textMark \markup { \box "22c" } s1*3
  \textMark \markup { \box "22d" } s1*3
  \textMark \markup { \box "23a" } s1*2
  \textMark \markup { \box "23b" } s1*2
  \textMark \markup { \box "23c" } s1*3
  \textMark \markup { \box "23d" } s1*2
  \textMark \markup { \box "24a" } s1*4
  \textMark \markup { \box "24b" } s1*4
  \textMark \markup { \box "24c" } s1*3
  \mark \markup\circle\bold D
  \textMark \markup { \box "25a" } s1*2
  \textMark \markup { \box "25b" } s1*2
  \textMark \markup { \box "25c" } s1*2
  \textMark \markup { \box "26a" } s1*2
  \textMark \markup { \box "26b" } s1*2
  \textMark \markup { \box "27a" } s1*3
  \textMark \markup { \box "27b" } s1*3
  \mark \markup\circle\bold E
  \textMark \markup { \box "28a" } s1*3 s2
  \textMark \markup { \box "28b" } s2 s1 s1.*2
  \textMark \markup { \box "28c" } s1.*3
  \textMark \markup { \box "29a" } s1.*3
  \textMark \markup { \box "29b" } s1.*2
  \textMark \markup { \box "30a" } s1.*2
  \textMark \markup { \box "30b" } s1.*2
  \mark \markup\circle\bold F
  \textMark \markup { \box "31a" } s1.*2
  \textMark \markup { \box "31b" } s1.*2
  \textMark \markup { \box "32a" } s1.*2
  \textMark \markup { \box "32b" } s1*2
}

dynamicsSolo = {
}

solo = \relative {
  \global
  R2.*10 |
  R2.*8 | % 17
  R2.*6 |
  R2.*12 |
  R2.*4 \section \key c \major \time 4/4 | R1 | % 20a
  R1*2 | r2 c''8 4. | 4 g c r8 bes | % 20b
  \tuplet 6/4 {c16(d ees d c bes} c4) r8 g bes c | g16 16 4 8 f16(g bes g f8) d |
  c4 r8 c d f g4~ | 8 8 \tuplet 3/2 {bes(c d} f d c) bes | % 21a
  c8. 16 8 r r bes c d | f f d c \tuplet 3/2 8 {d16(f g f d c b g f} g b |
  c8.) 16 2~8 r | R1 | % 21b
  R1*2 \section | R1 |
  R1*11 | % 22
  R1*9 |
  R1*11 |
  R1*6 | % 25
  R1*4 |
  R1*6 |
  R1*5 \section \time 12/8 | R1.*5 | % 28
  R1.*5 |
  R1.*4 |
  R1.*4 | % 31
  R1*4 |
}

wordsSolo = \lyricmode {
  Fai -- ries black, grey, green and white __
  You moon -- shine rev -- el -- lers and shades __ of night,
  You or -- phan heirs __ of fix -- ed des -- ti -- ny,
  At -- tend your of -- fice and your qua -- li -- ty. __
}

wordsSoloMidi = \lyricmode {
  "Fai" "ries " "black, " "grey, " "green " "and " "white " 
  "\nYou " moon "shine " rev el "lers " "and " "shades "  "of " "night, "
  "\nYou " or "phan " "heirs "  "of " fix "ed " des ti "ny, "
  "\nAt" "tend " "your " of "fice " "and " "your " qua li "ty. " 
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.*8 | s4. s\f | s2. |
  s2.*6 | s4. s\mp | s2. | % 17
  s2.*2 | s4. s\f | s2. | s4. s4\> s8\! | s8 s\p s2 |
  s2.*4 | s4. s\f | s2.*7 |
  s2.*4 | s1*7 | % 20
  s1*9 |
  s1*11 |
  s1*9 | % 23
  s1*9 | s1\p\dim | \after 2.. \omit\ppp s |
  s1*6 |
  s1*4 | % 26
  s1*4 | s4 s2.\< | s s4\! |
  s1*5 | s1.*5 | 
  s1.*5 | % 29
  s1.\f | s1.*3 |
  s1.*4 |
  s1. | s8 s1\< s4.\! | s1\ff | s | % 32
}

soprano = \relative {
  \global
  R2.*8 | r4 r8 bes'4 8 | ees4. f,8 f aes |
  g4 bes8 4 8 | ees4 ees,8 f4 aes8 | g4 bes8 r4 r8 | R2. | % 17a
  R2.*2 | r4 r8 ees4 8 | fes4. ges4 8 |
  ees4. 8 8 8 | fes(ees des bes des bes | ees4) 8 bes4 8 | % 18a
  ees4. f,8 8 aes | g4(bes8 f4 aes8 | g) bes4~4. |
  R2.*4 | % 19a
  r4 r8 ees,4 8 | ees'4. f,8 8 aes | g4 bes8 4 8 | ees4 ees,8 f4 aes8 |
  g4 bes8 4 8 | c4. des4 8 | bes4. 8 8 8 | c(bes aes des ees des |
  bes4) 8 ees4 8 | f4. g4 8 | ees4. 8 8 8 | f(ees f g f g \section \key c \major \time 4/4 c,4) 8 r r2 | % 20a
  R1*4 |
  R1*2 |
  R1*8 \section | R1 | % 21
  R1*5 | % 22ab
  R1 | d4 8 a c8. 16 8 g | d'8. e16 d8 a c8. d16 e8 c |
  d4. c8 a4. g8 | f g a b c4 e | d~8 r r2 |
  R1 | r4 b d8. 16 8 r | % 23a
  r8 b e b fis' e d4 | r d g,4. a8 |
  bes8 a bes c d4 fis | e4. d8 bes4. a8 | g f g bes c4 a |
  d4~8 r r2 | R1 |
  r4 <e, b'>4 <f d'>8. 16 8 r | % 24a
  r8 <e b'> <gis e'> <e b'> <d fis'> <e e'> <fis d'>4 |
  r4 d' g,4. a8 | bes a bes c d4 fis |
  e4. d8 bes4. a8 | g f g bes c4 a | <d, d'>2~8 r r4 | r2 r4 r8 a' | % 24b
  d4 \tuplet 3/2 {c8 a c} d4. 8 | <d fis>1~ | 2.~8 r \section |
  R1*6 | % 25
  R1 | r2 r4 r8 b | % 26a
  fis'8 b, r4 fis'4~8 r | R1 |
  r2 r4 r8 b, | fis' b, r4 fis'~8 r | R1 | % 27a
  b,4 8 8 dis4 <dis e> | <dis fis>1~ | 2.~8 r \section |
  r4 r8 ees aes4 ges | ees8 ces r4 ges4. aes8 | % 28a
  ces8(des bes) ces aes4 r8 aes | c d ees4
  r2 | f8 d r4 r c8 aes \section \key aes \major \time 12/8 | % 28b
  f4.~8 r r r2. | f4 8 c'4 8 bes(g) bes c4. |
  f,4 8 c'4 8 bes(g) bes c4. | f4 8 ees4 8 c4 8 bes c bes | f'4 8 ees4 8 c4 8 bes8 8 r | % 28c
  R1. | r4 f8 g4 bes8 c4. 8 8 ees | c2.~4. 4. | % 29a
  f4 8 ees4 8 c4 8 bes4 c8 | f4 8 ees(f) ees c4 8 bes4. |
  f4 8 r4 r8 r2. | f4 8 r4 r8 r2. | % 30a
  des'8 c r r4 c8 ees c r r4 r8 | des c r r4 c8 ees c r r4 r8 |
  f,8^\markup unis. f f c' c c bes g bes c4 8 | f, f f c' c c bes g bes c4. | % 31a
  f,8 f f c' c c bes g bes c4 8 | f, f f c' c c bes g bes c4. |
  des8 c c des c c des c c des c c | des c c des c c des c c des c c | % 32a
  \override Glissando.style = #'zigzag
  \time 4/4 f2.~4 \glissando | f,8 r r4 r2 |
  \bar "|."
}

wordsSop = \lyricmode {
  Round a -- bout in a fair ring -- a,
  thus we dance and thus we sing -- a,
  All a -- bout, in and out o -- ver this green -- a,
  Round a -- bout in a fair ring -- a. __
  Round a -- bout, in a fair ring -- a, % 19b
  thus we dance and thus we sing -- a,
  Trip and go to and fro,
  ov -- er this green -- a,
  all a -- bout, in and out, ov -- er this green -- a. % 20a
  But till ’tis one o’ -- clock, % 22c
  our dance of cus -- tom round a -- bout the oak of Herne
  the hun -- ter let us not for -- get. __
  Lock hand in hand, your -- selves in or -- der set,
  and twen -- ty glow -- worm shall our lan -- terns be
  to guide our mea -- sure round a -- bout the tree. __
  Lock hand in hand, your -- selves in or -- der set,
  and twen -- ty glow -- worms shall our lan -- terns be % 24a
  to guide our mea -- sure round a -- bout the tree. __
  A -- bout, fair -- ies, a -- bout, a -- bout, __
  A tri -- al, come. __ % 26a
  A tri -- al, come, __
  Come, will this wood take fire? __
  A --bout him, fai -- ries, sing a scorn -- ful rhyme; % 28a
  and, as you sing, pinch him to your time. __
  Pinch him pinch him black and blue,
  Sau -- cy mor -- tals must not view
  What the Queen of stars is do -- ing,
  Nor pry in -- to our fai -- ry woo -- ing
  and pinch him black, let him not lack % 29a
  Sharp nails to pinch him blue and red,
  Till sleep has rocked his ad -- dle head,
  Pinch him, Pinch him, % 30a
  Pinch him and burn him,
  pinch him and burn him,
  Pinch him and burn him and turn him a -- bout, % 31a
  till can -- dles and star -- light and moon -- shine be out,
  Pinch him and burn him and turn him a -- bout,
  till can -- dles and star -- light and moon -- shine be out,
  Pinch him and burn him and % 32a
  pinch him and burn him and
  turn him, till can -- dles and star -- light
  and moon -- shine be out. __
}

wordsSopMidi = \lyricmode {
  "Round " a "bout " "in " "a " "fair " ring "a, "
  "\nthus " "we " "dance " "and " "thus " "we " sing "a, "
  "\nAll " a "bout, " "in " "and " "out " o "ver " "this " green "a, "
  "\nRound " a "bout " "in " "a " "fair " ring "a. " 
  "\nRound " a "bout, " "in " "a " "fair " ring "a, " % 19b
  "\nthus " "we " "dance " "and " "thus " "we " sing "a, "
  "\nTrip " "and " "go " "to " "and " "fro, "
  "\nov" "er " "this " green "a, "
  "\nall " a "bout, " "in " "and " "out, " ov "er " "this " green "a. " % 20a
  "\nBut " "till " "’tis " "one " o’ "clock, " % 22c
  "\nour " "dance " "of " cus "tom " "round " a "bout " "the " "oak " "of " "Herne "
  "\nthe " hun "ter " "let " "us " "not " for "get. " 
  "\nLock " "hand " "in " "hand, " your "selves " "in " or "der " "set, "
  "\nand " twen "ty " glow "worm " "shall " "our " lan "terns " "be "
  "\nto " "guide " "our " mea "sure " "round " a "bout " "the " "tree. " 
  "\nLock " "hand " "in " "hand, " your "selves " "in " or "der " "set, "
  "\nand " twen "ty " glow "worms " "shall " "our " lan "terns " "be " % 24a
  "\nto " "guide " "our " mea "sure " "round " a "bout " "the " "tree. " 
  "\nA" "bout, " fair "ies, " a "bout, " a "bout, " 
  "\nA " tri "al, " "come. "  % 26a
  "\nA " tri "al, " "come, " 
  "\nCome, " "will " "this " "wood " "take " "fire? " 
  "\nA""bout " "him, " fai "ries, " "sing " "a " scorn "ful " "rhyme; " % 28a
  "\nand, " "as " "you " "sing, " "pinch " "him " "to " "your " "time. " 
  "\nPinch " "him " "pinch " "him " "black " "and " "blue, "
  "\nSau" "cy " mor "tals " "must " "not " "view "
  "\nWhat " "the " "Queen " "of " "stars " "is " do "ing, "
  "\nNor " "pry " in "to " "our " fai "ry " woo "ing "
  "\nand " "pinch " "him " "black, " "let " "him " "not " "lack " % 29a
  "\nSharp " "nails " "to " "pinch " "him " "blue " "and " "red, "
  "\nTill " "sleep " "has " "rocked " "his " ad "dle " "head, "
  "\nPinch " "him, " "Pinch " "him, " % 30a
  "\nPinch " "him " "and " "burn " "him, "
  "\npinch " "him " "and " "burn " "him, "
  "\nPinch " "him " "and " "burn " "him " "and " "turn " "him " a "bout, " % 31a
  "\ntill " can "dles " "and " star "light " "and " moon "shine " "be " "out, "
  "\nPinch " "him " "and " "burn " "him " "and " "turn " "him " a "bout, "
  "\ntill " can "dles " "and " star "light " "and " moon "shine " "be " "out, "
  "\nPinch " "him " "and " "burn " "him " "and " % 32a
  "\npinch " "him " "and " "burn " "him " "and "
  "\nturn " "him, " "till " can "dles " "and " star "light "
  "\nand " moon "shine " "be " "out. " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.*8 | s4. s\f | s2. |
  s2.*6 | s4. s\mp | s2. | % 17
  s2.*2 | s4. s\f | s2. | s4. s4\> s8\! | s8 s\p s2 |
  s2.*4 | s4. s\f | s2.*7 |
  s2.*4 | s1 | s2 s4\pp\< s\> | s2\! s4\< s\> | s1\! | s1*3 | % 20
  s1*9 |
  s1*11 |
  s1*9 | % 23
  s1*9 | s1\p\dim | \after 2.. \omit\ppp s |
  s1*6 |
  s1*4 | % 26
  s1*4 | s4 s2.\< | s s4\! |
  s1*5 | s1.*5 | 
  s1.*5 | % 29
  s1.\f | s1.*3 |
  s1.*4 |
  s1. | s8 s1\< s4.\! | s1\ff | s | % 32
}

alto = \relative {
  \global
  R2.*8 | r4 r8 bes'4 8 | g4. f8 f aes |
  g4 bes8 4 8 | g4 ees8 f4 aes8 | g4 bes8 r4 r8 | R2. | % 17a
  R2.*2 | r4 r8 ees4 8 | des4. bes4 8 |
  ees4. 8 8 8 | aes,(ges aes bes des bes | g4) 8 bes4 8 | % 18a
  g4. f8 8 aes | g4(bes8 f4 aes8 | g8) bes4~4. |
  R2.*4 | % 19a
  r4 r8 ees,4 8 | g4. f8 8 aes | g4 bes8 4 8 | g4 ees8 f4 aes8 |
  g4 bes8 4 8 | c4. des4 8 | bes4. 8 8 8 | c(bes aes f aes f |
  bes4) 8 g4 8 | aes4. bes4 8 | g4. 8 8 8 | aes(g aes bes aes bes \section \key c \major \time 4/4 | c4) 8 r r2 | % 20a
  r2 \tuplet 6/4 {c,8(des d ees d des} | c8) r r4 \tuplet 6/4 {c8(des d ees d des} | c8) r r4 r2 | R1 |
  R1*2 |
  R1*4 | % 21a
  r2 \tuplet 6/4 {c8(des d ees d des} | c8) r r4 \tuplet 6/4 {c8(des d ees d des} |
  c1)~ | 2.~8 r \section | R1 |
  d'4 8 a c8. 16 8 g | d'8. e16 d8 a c8. d16 e8 c | % 22a
  d4. c8 a4. g8 | f g a b c4 e | d4~8 r r2 |
  R1 | d4 8 a c8. 16 8 g | d'8. e16 d8 a c8. d16 e8 c |
  d4. c8 a4. g8 | f g a b c4 a | d4~8 r r2 |
  R1*7 | % 23abc
  r8 a d2 \tuplet 3/2 {c8 a c} | d4~8 r r2 |
  R1*2 | r4 d, g4. a8 | bes a bes c d4 b | % 24a
  e4. d8 bes4. a8 | g f g bes c4 a | r8 a d2 \tuplet 3/2 {c8 a c} | d2~8 r r a |
  d4 \tuplet 3/2 {c8 a c} d4. 8 | a1~ | 2.~8 r \section |
  R1*6 | % 25
  R1 | r2 r4 r8 b | % 26a
  b8 8 r4 b4~8 r | R1 |
  r2 r4 r8 b | b b r4 b4~8 r | R1 | % 27a
  b4 8 8 4 4 | 1~ | 2.~8 r \section |
  R1*3 | r2 % 28a
  r2 | R1 \section \key aes \major \time 12/8 | R1. | f4 8 c'4 8 bes(g) bes c4. |
  f4 8 c'4 8 bes(g) bes c4. | 4 8 bes4 8 g4 8 f g f | c'4 8 bes4 8 g4 8 f f r |
  r4 r8 g,4 bes8 g2.~ | 8 r r r4 r8 r2. | r4 r8 g g bes c4. c | % 29a
  c4 8 bes4 8 g4 8 f4 g8 | c4 8 bes(c) bes g4 8 f4. |
  f4 8 r4 r8 r2. | f4 8 r4 r8 r2. | % 30a
  des'8 c r r4 c8 aes c r r4 r8 | des c r r4 c8 aes c r r4 r8 |
  f,8^\markup unis. f f c' c c bes g bes c4 8 | f, f f c' c c bes g bes c4. | % 31a
  f,8 f f c' c c bes g bes c4 8 | f, f f c' c c bes g bes c4. |
  des8 c c des c c des c c des c c | des c c des c c des c c des c c | % 32a
  \override Glissando.style = #'zigzag
  \time 4/4 f2.~4 \glissando | f,8 r r4 r2 |
  \bar "|."
}

wordsAlto = \lyricmode {
  Round a -- bout in a fair ring -- a,
  thus we dance and thus we sing -- a,
  All a -- bout, in and out o -- ver this green -- a,
  Round a -- bout in a fair ring -- a. __
  Round a -- bout, in a fair ring -- a, % 19b
  thus we dance and thus we sing -- a,
  Trip and go to and fro,
  ov -- er this green -- a,
  all a -- bout, in and out, ov -- er this green -- a. % 20a
  Oo __ Oo __ Oo __ Oo __
  But till ’tis one o’ -- clock, % 22c
  our dance of cus -- tom round a -- bout the oak of Herne
  the hun -- ter let us not for -- get. __
  But till ’tis one o’ -- clock, % 22c
  our dance of cus -- tom round a -- bout the oak of Herne
  the hun -- ter let us not for -- get. __
%  Lock hand in hand, your -- selves in or -- der set,
%  and twen -- ty glow -- worm shall our lan -- terns be
%  to guide our mea -- sure round a -- bout the tree. __
  A -- bout, fai -- ries, a -- bout. __ % 23d
%  Lock hand in hand, your -- selves in or -- der set,
  and twen -- ty glow -- worms shall our lan -- terns be % 24a
  to guide our mea -- sure round a -- bout the % tree. __
  
  A -- bout, fair -- ies, a -- bout. __
  A -- bout, fair -- ies, a -- bout, a bout. __
  A tri -- al, come. __ % 26a
  A tri -- al, come, __
  Come, will this wood take fire? __
%  A --bout him, fai -- ries, sing a scorn -- ful rhyme; % 28a
%  and, as you sing, pinch him to your time. __
  Pinch him pinch him black and blue,
  Sau -- cy mor -- tals must not view
  What the Queen of stars is do -- ing,
  Nor pry in -- to our fai -- ry woo -- ing
  Pinch him blue, __ let him not lack % 29a
  Sharp nails to pinch him blue and red,
  Till sleep has rocked his ad -- dle head,
  Pinch him, Pinch him, % 30a
  Pinch him and burn him,
  pinch him and burn him,
  Pinch him and burn him and turn him a -- bout, % 31a
  till can -- dles and star -- light and moon -- shine be out,
  Pinch him and burn him and turn him a -- bout,
  till can -- dles and star -- light and moon -- shine be out,
  Pinch him and burn him and % 32a
  pinch him and burn him and
  turn him, till can -- dles and star -- light
  and moon -- shine be out. __
}

wordsAltoMidi = \lyricmode {
  "Round " a "bout " "in " "a " "fair " ring "a, "
  "\nthus " "we " "dance " "and " "thus " "we " sing "a, "
  "\nAll " a "bout, " "in " "and " "out " o "ver " "this " green "a, "
  "\nRound " a "bout " "in " "a " "fair " ring "a. " 
  "\nRound " a "bout, " "in " "a " "fair " ring "a, " % 19b
  "\nthus " "we " "dance " "and " "thus " "we " sing "a, "
  "\nTrip " "and " "go " "to " "and " "fro, "
  "\nov" "er " "this " green "a, "
  "\nall " a "bout, " "in " "and " "out, " ov "er " "this " green "a. " % 20a
  "\nOo "  "Oo "  "Oo "  "Oo " 
  "\nBut " "till " "’tis " "one " o’ "clock, " % 22c
  "\nour " "dance " "of " cus "tom " "round " a "bout " "the " "oak " "of " "Herne "
  "\nthe " hun "ter " "let " "us " "not " for "get. " 
  "\nBut " "till " "’tis " "one " o’ "clock, " % 22c
  "\nour " "dance " "of " cus "tom " "round " a "bout " "the " "oak " "of " "Herne "
  "\nthe " hun "ter " "let " "us " "not " for "get. " 
%  Lock hand in hand, your -- selves in or -- der set,
%  and twen -- ty glow -- worm shall our lan -- terns be
%  to guide our mea -- sure round a -- bout the tree. __
  "\nA" "bout, " fai "ries, " a "bout. "  % 23d
%  Lock hand in hand, your -- selves in or -- der set,
  "\nand " twen "ty " glow "worms " "shall " "our " lan "terns " "be " % 24a
  "\nto " "guide " "our " mea "sure " "round " a "bout " "the " % tree. __
  
  "\nA" "bout, " fair "ies, " a "bout. " 
  "\nA" "bout, " fair "ies, " a "bout, " "a " "bout. " 
  "\nA " tri "al, " "come. "  % 26a
  "\nA " tri "al, " "come, " 
  "\nCome, " "will " "this " "wood " "take " "fire? " 
%  A --bout him, fai -- ries, sing a scorn -- ful rhyme; % 28a
%  and, as you sing, pinch him to your time. __
  "\nPinch " "him " "pinch " "him " "black " "and " "blue, "
  "\nSau" "cy " mor "tals " "must " "not " "view "
  "\nWhat " "the " "Queen " "of " "stars " "is " do "ing, "
  "\nNor " "pry " in "to " "our " fai "ry " woo "ing "
  "\nPinch " "him " "blue, "  "let " "him " "not " "lack " % 29a
  "\nSharp " "nails " "to " "pinch " "him " "blue " "and " "red, "
  "\nTill " "sleep " "has " "rocked " "his " ad "dle " "head, "
  "\nPinch " "him, " "Pinch " "him, " % 30a
  "\nPinch " "him " "and " "burn " "him, "
  "\npinch " "him " "and " "burn " "him, "
  "\nPinch " "him " "and " "burn " "him " "and " "turn " "him " a "bout, " % 31a
  "\ntill " can "dles " "and " star "light " "and " moon "shine " "be " "out, "
  "\nPinch " "him " "and " "burn " "him " "and " "turn " "him " a "bout, "
  "\ntill " can "dles " "and " star "light " "and " moon "shine " "be " "out, "
  "\nPinch " "him " "and " "burn " "him " "and " % 32a
  "\npinch " "him " "and " "burn " "him " "and "
  "\nturn " "him, " "till " can "dles " "and " star "light "
  "\nand " moon "shine " "be " "out. " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.*10 |
  s2.*2 | s4. s\p | s2.*5 | % 17
  s2. | s4. s\f | s2. | s4. s4\> s8\! | s8 s\p s2 | s2. |
  s2.*4 | s4. s\f | s2.*7 |
  s2.*4 | s1 | s2 s4\pp\< s\> | s2\! s4\< s\> | s1\! | s1*3 | % 20
  s1*9 |
  s1*11 |
  s1*9 | % 23
  s1*8 | s2 s\> | s1\! | s |
  s1 | s4. s8\ff s2 | s1*4 |
  s1*4 | % 26
  s1*4 | s4 s2.\< | s s4\! |
  s1*5 | s1.*5 |
  s1.*3 | s1.\pp | s4. s2.\< s4.\! | % 29
  s1.\f | s1.*3 |
  s1.*4 |
  s1. | s8 s1\< s4.\! | s1\ff | s | % 32
}

tenor = \relative {
  \global
  R2.*10 |
  R2.*2 | r4 r8 bes4 8 ces4. des4 8 | % 17a
  bes4. 8 8 8 | ces(bes aes des ees des | bes4) 8 r4 r8 | R2. |
  R2. | r4 r8 bes4 8 | ees4. f,8 8 aes | % 18a
  g4(bes8 aes4 f8 | bes) 4~4.~ | 2. |
  R2.*4 | % 19a
  r4 r8 ees,4 8 | g4. f8 f aes | g4 bes8 4 8 | 4 ees,8 f4 aes8 |
  g4 bes8 4 8 | c4. des4 8 | bes4. 8 8 8 | c(bes aes des ees des |
  bes4) 8 ees4 8 | 4. 4 8 | 4. 8 8 8 | f(ees f g f g \section \key c \major \time 4/4 | c,4) 8 r r2 | % 20a
  r2 \tuplet 6/4 {c8(des d ees d des} | c8) r r4 \tuplet 6/4 {c8(des d ees d des} | c8) r r4 r2 | R1 |
  R1*2 |
  R1*4 | % 21a
  r2 \tuplet 6/4 {c8(des d ees d des} | c8) r r4 \tuplet 6/4 {c8(des d ees d des} |
  c1)~ | 2.~8 r \section | R1 |
  R1*11 | % 22
  R1*9 |
  R1*4 | % 24a
  R1*3 | r8 a d2 \tuplet 3/2 {c8 a c} |
  d1~ | 8 r r4 r2 | R1 \section |
  R1 | r4 r8 fis,8 b2~ | % 25a
  8 r r fis b4. c8 | d e c d b4~8 r |
  R1 | r4 fis b2~ |
  b8 fis b c d2 | 8 e c d b4~8 r | % 26a
  r2 r4 r8 fis | b r r fis b r r c |
  d8 e c d b4~8 r | R1 | b4 8 8 dis4 <dis eis> | % 27a
  <dis fis>2. b4 | q1~ | 2.~8 r \section |
  R1*3 | r2 % 28a
  r2 | R1 \time 12/8 \key aes \major | s1.*2 |
  R1.*3 |
  R1.*3 | % 29a
  f8 r r g r r bes r r c r r | f, r r g r r bes r r c r r |
  f,4 8 c' 4 8 bes(g) bes c4. | f,4 8 c'4 8 bes(g) bes c4. | % 30a
  des8 c r r4 c8 ees c r r4 r8 | des8 c r r4 c8 ees c r r4 r8 |
  f,8^\markup unis. f f c' c c bes g bes c4 8 | f,8 8 8 c' c c bes g bes c4. | % 31a
  f,8 f f c' c c bes g bes c4 8 | f,8 f f c' c c bes g bes c4. |
  des8 c c des c c des c c des c c | des c c des c c des c c des c c | % 32a
  \override Glissando.style = #'zigzag
  \time 4/4 f2.~4 \glissando | f,8 r r4 r2 |
  \bar "|."
}

wordsTenor = \lyricmode {
  Trip and go, to and fro, o --ver this green -- a,
  Round a -- bout in a fair ring -- a. __
  Round a -- bout, in a fair ring -- a, % 19b
  thus we dance and thus we sing -- a,
  Trip and go, to and fro,
  ov -- er this green -- a,
  all a -- bout, in and out, % 20a
  ov -- er this green -- a.
  Oo __ Oo __ Oo __ Oo __
  A -- bout, fair -- ies, a -- bout. __ % 24b
  But stay! __
  I smell a man of mid -- dle earth. __
  Vile worm, __ thou wast o’er -- looked
  ev -- en in thy birth. __
  Cor -- rupt, cor -- rupt, % 26c
  and taint -- ed in de -- sire! __
  Come, will this wood take fire, take fire? __
  Pinch him, fai -- ries, % 29b
  pinch him, fai -- ries,
  Pinch him, fai -- ries, mu -- tual -- ly,
  pinch him for his vil -- lain -- y.
  Pinch him and burn him,
  Pinch him and burn him,
  Pinch him and burn him and turn him a -- bout, % 31a
  till can -- dles and star -- light and moon -- shine be out,
  Pinch him and burn him and turn him a -- bout,
  till can -- dles and star -- light and moon -- shine be out,
  Pinch him and burn him and % 32a
  pinch him and burn him and
  turn him, till can -- dles and star -- light
  and moon -- shine be out. __
}

wordsTenorMidi = \lyricmode {
  "Trip " "and " "go, " "to " "and " "fro, " o"ver " "this " green "a, "
  "\nRound " a "bout " "in " "a " "fair " ring "a. " 
  "\nRound " a "bout, " "in " "a " "fair " ring "a, " % 19b
  "\nthus " "we " "dance " "and " "thus " "we " sing "a, "
  "\nTrip " "and " "go, " "to " "and " "fro, "
  "\nov" "er " "this " green "a, "
  "\nall " a "bout, " "in " "and " "out, " % 20a
  "\nov" "er " "this " green "a. "
  "\nOo "  "Oo "  "Oo "  "Oo " 
  "\nA" "bout, " fair "ies, " a "bout. "  % 24b
  "\nBut " "stay! " 
  "\nI " "smell " "a " "man " "of " mid "dle " "earth. " 
  "\nVile " "worm, "  "thou " "wast " o’er "looked "
  "\nev" "en " "in " "thy " "birth. " 
  "\nCor" "rupt, " cor "rupt, " % 26c
  "\nand " taint "ed " "in " de "sire! " 
  "\nCome, " "will " "this " "wood " "take " "fire, " "take " "fire? " 
  "\nPinch " "him, " fai "ries, " % 29b
  "\npinch " "him, " fai "ries, "
  "\nPinch " "him, " fai "ries, " mu tual "ly, "
  "\npinch " "him " "for " "his " vil lain "y. "
  "\nPinch " "him " "and " "burn " "him, "
  "\nPinch " "him " "and " "burn " "him, "
  "\nPinch " "him " "and " "burn " "him " "and " "turn " "him " a "bout, " % 31a
  "\ntill " can "dles " "and " star "light " "and " moon "shine " "be " "out, "
  "\nPinch " "him " "and " "burn " "him " "and " "turn " "him " a "bout, "
  "\ntill " can "dles " "and " star "light " "and " moon "shine " "be " "out, "
  "\nPinch " "him " "and " "burn " "him " "and " % 32a
  "\npinch " "him " "and " "burn " "him " "and "
  "\nturn " "him, " "till " can "dles " "and " star "light "
  "\nand " moon "shine " "be " "out. " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.*10 |
  s2.*2 | s4. s\p | s2.*5 | % 17
  s2. | s4. s\f | s2. | s4. s4\> s8\! | s8 s\p s2 | s2. |
  s2.*4 | s4. s\f | s2.*7 |
  s2.*4 | s1*7 | % 20
  s1*9 |
  s1*11 |
  s1*9 | % 23
  s1*8 | s2 s\> | s1\! | s |
  s1 | s4. s8\ff s2 | s1*4 |
  s1*4 | % 26
  s1*4 | s4 s2.\< | s s4\! |
  s1*5 | s1.*5 |
  s1.*3 | s1.\pp | s4. s2.\< s4.\! | % 29
  s1.\f | s1.*3 |
  s1.*4 |
  s1. | s8 s1\< s4.\! | s1\ff | s | % 32
}


bass = \relative {
  \global
  R2.*10 |
  R2.*2 | r4 r8 bes4 8 <aes ces>4. <f des'>4 8 | % 17a
  bes4. 8 8 8 | c(bes aes <g des'> <aes ees'> <g des'> | bes4) 8 r4 r8 | R2. |
  R2. | r4 r8 bes4 8 | g4. f8 f aes | % 18a
  g4(bes8 aes4 f8 | bes) 4~4.~ | 2. |
  R2.*4 | % 19a
  r4 r8 ees,4 8 | 4. f8 f aes | g4 bes8 4 8 | ees,4 8 f4 aes8 |
  g4 bes8 4 8 | c4. des4 8 | bes4. 8 8 8 | c(bes aes f aes f |
  bes4) 8 ees4 8 | c4. bes4 8 | ees4. d8 8 8 | c(ees c bes c bes \section \key c \major \time 4/4 | c4) 8 r r2 | % 20a
  R1*4 |
  R1*2 |
  R1*4 | % 21a
  R1*2 |
  R1*2 \section | R1 |
  R1*11 | % 22
  R1*9 |
  R1*4 | % 24a
  R1*3 | r8 a d2 \tuplet 3/2 {c8 a c} |
  d1~ | 8 r r4 r2 | R1 \section |
  R1 | r4 r8 fis, b2~ | % 25a
  b8 r r fis b4. c8 | d e c d b4~8 r |
  R1 | r4 fis b2~ |
  b8 fis b c b2 | b8 g a fis b4~8 r | % 26a
  r2 r4 r8 fis | b r r fis b r r c |
  b8 g a fis b4~8 r | R1 | b4 8 8 4 4 | % 27a
  b2. 4 | 1~ | 2.~8 r \section |
  R1*3 | r2 % 28a
  r2 | R1 \time 12/8 \key aes \major | R1.*2 |
  R1.*3 |
  R1.*3 | % 29a
  f8 r r g r r b r r c r r | f, r r g r r a r r c r r |
  f,4 8 c'4 8 bes(g) bes c4. | f,4 8 c'4 8 bes(g) bes c4. | % 30a
  des8 c r r4 c8 aes c r r4 r8 | des8 c r r4 c8 aes c r r4 r8 |
  f,8^\markup unis. f f c' c c bes g bes c4 8 | f,8 8 8 c' c c bes g bes c4. | % 31a
  f,8 f f c' c c bes g bes c4 8 | f,8 f f c' c c bes g bes c4. |
  des8 c c des c c des c c des c c | des c c des c c des c c des c c | % 32a
  \override Glissando.style = #'zigzag
  \time 4/4 f2.~4 \glissando | f,8 r r4 r2 |
  \bar "|."
}

wordsBass = \lyricmode {
  Trip and go, to and fro, o --ver this green -- a,
  Round a -- bout in a fair ring -- a. __
  Round a -- bout, in a fair ring -- a, % 19b
  thus we dance and thus we sing -- a,
  Trip and go, to and fro,
  ov -- er this green -- a,
  all a -- bout, in and out, % 20a
  ov -- er this green -- a.
%  Oo __ Oo __ Oo __ Oo __
  A -- bout, fair -- ies, a -- bout. __ % 24b
  But stay! __
  I smell a man of mid -- dle earth. __
  Vile worm, __ thou wast o’er -- looked
  ev -- en in thy birth. __
  Cor -- rupt, cor -- rupt, % 26c
  and taint -- ed in de -- sire! __
  Come, will this wood take fire, take fire? __
  Pinch him, fai -- ries, % 29b
  pinch him, fai -- ries,
  Pinch him, fai -- ries, mu -- tual -- ly,
  pinch him for his vil -- lain -- y.
  Pinch him and burn him,
  Pinch him and burn him,
  Pinch him and burn him and turn him a -- bout, % 31a
  till can -- dles and star -- light and moon -- shine be out,
  Pinch him and burn him and turn him a -- bout,
  till can -- dles and star -- light and moon -- shine be out,
  Pinch him and burn him and % 32a
  pinch him and burn him and
  turn him, till can -- dles and star -- light
  and moon -- shine be out. __
}

wordsBassMidi = \lyricmode {
  "Trip " "and " "go, " "to " "and " "fro, " o"ver " "this " green "a, "
  "\nRound " a "bout " "in " "a " "fair " ring "a. " 
  "\nRound " a "bout, " "in " "a " "fair " ring "a, " % 19b
  "\nthus " "we " "dance " "and " "thus " "we " sing "a, "
  "\nTrip " "and " "go, " "to " "and " "fro, "
  "\nov" "er " "this " green "a, "
  "\nall " a "bout, " "in " "and " "out, " % 20a
  "\nov" "er " "this " green "a. "
%  Oo __ Oo __ Oo __ Oo __
  "\nA" "bout, " fair "ies, " a "bout. "  % 24b
  "\nBut " "stay! " 
  "\nI " "smell " "a " "man " "of " mid "dle " "earth. " 
  "\nVile " "worm, "  "thou " "wast " o’er "looked "
  "\nev" "en " "in " "thy " "birth. " 
  "\nCor" "rupt, " cor "rupt, " % 26c
  "\nand " taint "ed " "in " de "sire! " 
  "\nCome, " "will " "this " "wood " "take " "fire, " "take " "fire? " 
  "\nPinch " "him, " fai "ries, " % 29b
  "\npinch " "him, " fai "ries, "
  "\nPinch " "him, " fai "ries, " mu tual "ly, "
  "\npinch " "him " "for " "his " vil lain "y. "
  "\nPinch " "him " "and " "burn " "him, "
  "\nPinch " "him " "and " "burn " "him, "
  "\nPinch " "him " "and " "burn " "him " "and " "turn " "him " a "bout, " % 31a
  "\ntill " can "dles " "and " star "light " "and " moon "shine " "be " "out, "
  "\nPinch " "him " "and " "burn " "him " "and " "turn " "him " a "bout, "
  "\ntill " can "dles " "and " star "light " "and " moon "shine " "be " "out, "
  "\nPinch " "him " "and " "burn " "him " "and " % 32a
  "\npinch " "him " "and " "burn " "him " "and "
  "\nturn " "him, " "till " can "dles " "and " star "light "
  "\nand " moon "shine " "be " "out. " 
}

pianoRHone = \relative {
  \global
  R2. | r4 r8 <d' f bes>8-.\p(q-. q-.) |
  <ees ges ces>4.-- <f aes des>8-.(q-. q-.) |
  <d f bes>4. 8-.(8-. 8-.) | % 16b
  <ees ges ces>8-.(<des f bes>-. <ces ees aes>-.) <f aes des>8-.(<ges bes ees>-. <f aes des>-.) |
  <d f bes>4. <g bes ees>8-.(8-. 8-.) |
  <aes ces fes>4. <bes des ges>8-.(8-. 8-.) | % 16c
  <g bes ees>4. 8-.(8-. 8-.) |
  <aes ces fes>8-.(<ges bes ees>-. <fes aes des>-.) <bes des ges>-.(<aes ces fes>-. <bes des ges>-.) |
  <g bes ees>4 ees8(<f aes>4.) |
  <ees g>4. \vo bes'4. | \ov <g bes>4.(<f aes>4 <des f>8) | % 17a
  <ees g bes>4. <d f bes>8-.(8-. 8-.) | <ees ges ces>4. <f aes des>8-.(8-. 8-.) |
  <d f bes>4. 8-.(q-. q-.) | % 17b
  <ees ges ces>8-.(<des f bes>-. <ces ees aes>-.) <aes' des>-.(<f ees'>-. <aes des>-.) |
  <d, f bes>4. <g bes ees>4-.(8-.) | <aes des fes>4. <bes des ges>4-.(8-.) |
  <g bes ees>4. 8-.(q-. q-.) | % 18a
  <aes ces fes>8-.(<ges bes ees>-. <fes aes des>-.) <bes des ges>-.(<des fes aes>-. <bes des ges>-.) |
  <g bes ees>4.(<f bes> |
  <ees g>4. <des f aes>) | ees'4(ees,8 f4 aes8 | ees'4 ees,8 f4 aes8) | % 18b
  <ees g bes>4. <ees aes c>8-.(q-. q-.) | % 19a
  <fes beses des>4. <ges ces ees>8-.(q-. q-.) |
  <ees aes c>4. 8-.(<des ges bes>-. <ees aes c>-.) |
  <fes beses des>8-.(<ees aes c>-. <f beses des>-.) <ges ces ees>8-.(<fes beses des>-. <ges ces ees>-.) |
  <aes des f>8-.(<ges ces ees>-. <aes des f>-.) q-.(<ges ces ees>-. <aes des f>-.) | % 19b
  <ees g ees'>4. <ees f>8-.(q-. <ees f aes>-.) |
  <ees g>4(<ees g bes>8) <c ees bes'>4~8 |
  <ees g ees'>4(ees8 <ees f>4 <ees aes>8) |
  <ees g>4 <ees g bes>8 <f g bes>-.(q-. q-.) | % 19c
  <ees g c>4. <f aes des>8-.(q-. q-.) |
  <ees g bes>4. 8-.(q-. q-.) |
  <c ees c'>8-.(<c ees bes'>-. <c ees aes>-.) <f aes des>-.(<f aes ees'>-. <f aes des>-.) |
  <ees g bes>4. <g bes ees>8-.(q-. q-.) | % 20a
  <aes c ees f>4. <bes ees g>8-.(q-. q-.) | % 20a
  <g bes ees>4. 8-.(q-. q-.) |
  <aes c f>8-.(<g bes ees>-. <aes c f>-.) <bes d g>-.(<aes c f>-. <bes d g>-.) \section \key c \major \time 4/4 |
  \repeat unfold 2 \repeat tremolo 8 {<e g>32 c} |
  <c e g>4.(<bes d f>8 <c e g>4. <f aes c>8 | % 20b
  <c e g>4. <bes d f>8 <c e g>4. <f aes c>8) | <c e g>1~ | q |
  <c ees g>1~ | q | % 20c
  <c e g>1~ | q | <c ees g> | R | % 21a
  <c e g>4.(<bes d g>8 <c e g>4. <f aes c>8 | % 21b
  <c e g>4. <bes d g>8 <c e g>4. <f aes c>8)~ |
  q1~ | q \section | % 21c
  \lh \clef treble d,32(e g a \rh d e fis a) <d, fis a>8 8 8 8 8 8 |
  <fis a>8 8 8 8 <e g>8 8 8 8 | % 22a
  <fis c>8 8 8 8 <e g b>8 8 8 8 |
  <fis a>8 8 8 <e g b> <f a c>8 8 8 8 | 8 8 8 8 8 8 <g b> <e g b> | % 22b
  d8 e16(c') d,8 e16(c') d,8-. c'-. a4~ |
  a8 c a16(g e g) <d fis a>8 8 8 8 | % 22c
  <fis a>8 8 8 8 <e g>8 8 8 8 | <fis a>8 8 8 8 <e g b>8 8 8 8 |
  <fis a>8 8 8 <e g b> <f a c>8 8 8 8 | % 22d
  q8 8 8 8 8 8 <g b> <e g b> |
  d8 e16(c') d,8 e16(c') d,8-. c'-. a4~ |
  a8 c-. a16(g e g) <e gis b>4 q8-. q-. | % 23a
  <gis b>8 8 8 8 <f a c>8 8 8 8 |
  <gis b>8 8 8 8 <fis a cis>8 8 8 8 | % 23b
  <g bes d>8 <g a d> <g bes d> <g a d> <g bes d> <g a d> <g bes d> <g a d> |
  <g bes d>8 <g a d> <g bes d> <g a d> <bes d> <a d> <g cis> <fis cis'> | % 23c
  <gis b>8 8 8 <fis a cis> <g bes d> <g a d> <g bes d> <g a d> |
  <g bes d> <g a d> <g bes d> <g d'> <f a c> <e a c> <d g b> <c g' b> |
  d8-. e16(a) d,8-. e16(a) c,8-. d16(g) c,8-. d16(g) | % 23d
  bes,8-. c16(f) aes,8-. bes16(ees) <e gis b>4 8-. 8-. |
  <gis b>8 8 8 8 <f a c>8 8 8 8 | % 24a
  <gis f>8 8 8 8 <fis a cis>8 8 8 8 |
  \repeat unfold 6 {<g bes d>8 <g a d>} <bes d> <a d> <g cis> <fis cis'> |
  <gis b>8 8 8 <fis a cis> \repeat unfold 4 {<g bes d> <g a d>} % 24b
  <f a c>8 8 <e g b> q | \vo d'4 8 a c8. 16 8 g | d'8. e16 d8 a c d e c |
  d8 e f e d e f e | d c d c d c d c \ov | % 24c
  <fis, d'>4-.(<e c'>-. <fis d'>-. <e c'>-.) \section |
  \set Staff.timeSignature = 12/8
  \scaleDurations 2/3 {
    b16(c \repeat unfold 8 {b16 c} d e fis g a b)
    \repeat unfold 60 {c8(b) b-.}
  }
  \section \set Staff.timeSignature = 4/4
  <aes, ces ees aes>8 r r4 r2 | R1*2 | r2 % 28a
  <aes c ees>8 r <aes c d f> r | R1 \section \time 12/8 \key aes \major | % 28b
  \set Staff.timeSignature = 12/8
  \repeat unfold 10 {<f' c'>4 8 8 8 8}
  g,4(f8 g4 bes8) g2.~ | 4(f8 g4 bes8) c4. 8-. 8-. ees-. | % 29a
  c8-. c-. bes-. g-. g-. bes-. c-. c-. bes-. c-. c-. ees-. |
  <c f>4 8 <bes ees>4 8 <g c>4 8 <f bes>4 <g c>8 | % 29b
  <c f>4 8 <bes ees>(<c f>) <bes ees> <g c>4 8 <f bes>4 8 |
  \repeat unfold 4 {<f c'>4 8 8 8 8} \vo | % 30a
  \repeat unfold 8 {des'8(c) c-.} \ov |
  \set Staff.timeSignature = 4/4
  \scaleDurations 3/2 {
    \repeat unfold 4 {f,8 r <f c'> r <f bes> r <f c'> r |} % 31
    \repeat unfold 8 {\tuplet 3/2 {<aes des>8-. <aes c>-. q-.}} % 32a
  }
  <f f'>8 r r4 r \tuplet 7/4 {f'16(ges aes bes c des f} | <f, c' f>8) r r4 r2 |
}

pianoRHtwo = \relative {
  \global \vt
  s2.*10 |
  \once\hideNotes <ees' g>4.(des4 f8) | s2.*7 | % 17
  s2.*6 |
  s2.*12 |
  s2.*4 | s1*7 | % 20
  s1*8 \section | \once\tiny <d' fis a>4 s2. |
  s1*11 |
  s1*9 | % 23
  s1*6 | <d fis>8 8 8 8 <e g>8 8 8 8 | <d fis>8 8 8 8 <e g>8 8 8 8 | % 24ab
  fis4 a fis a | fis8 e fis e fis e fis e | s1 |
  s1*6 | % 25
  s1*4 |
  s1*6 |
  s1*5 | s1.*5 | % 28
  s1.*5 |
  s1.*2 | g,4. g f f | g g f f |
  s1.*4 | % 31
  s1*4 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.*4 | s4. s8.\< s\> | s2.\! | s2.*3 | s2.\f |
  s2.*2 | s4.\> s\p | s2.*5 | % 17
  s2. | s4. s\< | s2.\f | s | s4. s\dim | s2. |
  s2.\p | s2.*3 | s4. s\< | s2.\f | s2.*6 |
  s2.*4 | s2\ff\> s\p | s1\pp | s1*5 | % 20
  s1*4 | s1\pp | s1*3 | s4\f s2.\p |
  s1-\markup stacc. | s1*5 s1-\markup stacc. | s1*4 |
  s2 s4\f s\p | s1-\markup stacc. | s1*6 | s2 s4\f s\p | % 23
  s1-\markup stacc. | s1*8 | s1\dim | s2\> s4\! s\pp |
  s1\ff | s\ff | s\omit\p-\markup{\dynamic p sub.} | s | s2\ff s\< | s4*2/3\> s8*2/3\! s2.\p |
  s1\p | s1*3 | % 26
  s1*6 |
  s1\f | s1*2 | s2 s\f | s1 | s1.\f | s1.*4 |
  s1.*4 | s4. s4.*3\< | % 29
  s1.\f | s1.*3 |
  s1.\ff | s-\markup sim. | s1.*2 |
  s1.*2 | s2. s4\< | s1\ff | % 32
}

pianoLHone = \relative {
  \global
  bes,8-.\p f'-. bes-. aes,-. ees'-. aes-. |
  f,8-. bes-. f'-. bes,-. f'-. bes-. | aes,-. ees'-. aes-. f,-. bes-. f'-. |
  bes,8-. f'-. bes-. bes,-. f'-. bes-. | % 16b
  aes,8-. ees'-. aes-. f,-. bes-. f'-. |
  bes,8-. f'-. bes-. ees,-. bes'-. ees-. |
  des,8-. aes'-. des-. bes,-. f'-. bes-. | % 16c
  ees,8-. bes'-. ees-. ees,-. bes'-. ees-. |
  des,8-. aes'-. des-. bes,-. fes'-. bes-. |
  ees,,8-. bes'-. ees-. des,-. aes'-. des-. |
  ees,8-. bes'-. ees-. bes-. f'-. bes-. | % 17a
  ees,,8-. bes'-. ees-. des,-. aes'-. des-. |
  ees,8-. bes'-. ees-. bes-. f'-. bes-. |
  aes,8-. ees'-. aes-. f,-. bes-. f'-. |
  bes,8-. f'-. bes-. bes,-. f'-. bes-. | % 17b
  aes,8-. ees'-. aes-. f,-. bes-. f'-. |
  bes,8-. f'-. bes-. ees,-. bes'-. ees-. |
  des,8-. aes'-. des-. bes,-. f' bes-. |
  ees,8-. bes'-. ees-. ees,-. bes'-. ees-. | % 18a
  des,8-. aes'-. des-. bes,-. fes'-. bes-. |
  ees,8-. bes'-. ees-. des,-. aes'-. des-. |
  ees,8-. bes-. ees-. bes-. f'-. bes-. | % 18b
  ees,,8-. bes'-. ees-. des,-. aes'-. des-. |
  ees,8-. bes'-. ees-. des,-. aes'-. des-. |
  ees,8-. bes'-. ees-. aes,-. ees'-. aes-. | % 19a
  ges,8-. des'-. ges-. ees,-. ces'-. ees-. |
  \repeat unfold 4 {aes,8-. ees'-. aes,-.} |
  \vo ees''4.~4 8 | 4.(c | d bes) | ees(c | % 19b
  des4. bes) | c bes | ees des | c(bes | % 19c
  ees4.) ees( | c bes | ees d) | \ov % 20a
  c8-. aes-. c,-. bes'-. f-. bes,-. \section \key c \major \time 4/4 |
  \repeat unfold 2 \repeat tremolo 8 {<c, g'>32 c'} |
  <c g' e'>2.(<aes ees' c'>4~ | 2 <e b' gis'> | <c g' e'>4)~8 r r2 | R1 | % 20b
  R1*2 |
  R1*4 | % 21a
  <c' g' e'>2. <aes ees' c'>4~ | 4 <e b' gis'>2 <c g' e'>4~ |
  q1~ | \vt 8 s2.. \section \clef treble | \ov s4 r r2 |
  d'''4 8 a c8. 16 8 b | d8. e16 d8 a c8. d16 e8 c | % 22a
  d4. c8 a4. g8 | f g a b c4 e | <d, fis a>8-. e-. d-. e-. d-. e-. d-. e-. |
  d8-. e-. d-. e-. d-. r r4 | d'4 8 a c8. 16 8 g | d'8. e16 d8 a c8. d16 e8 c |
  d4. c8 a4. g8 | f g a b c4 <a e'> | <d, fis>8-. e-. d-. e-. d-. e-. d-. e-. |
  d8-. e-. d-. c-. e32(fis a b \rh e fis gis b) \lh \ov r4 | e,4 8 b d8. 16 8 a | % 23a
  e'8. fis16 e8 b d8. e16 fis8 d | e d bes a g4. a8 |
  bes8 a bes c d4 b | e4. d8 bes4. a8 | g f g bes c4 a |
  <d, fis a>8-. e-. d-. e-. <c e g>-. d-. c-. d-. | % 23d
  <bes d f>8-. c-. <aes c ees>-. bes-. e32(fis a b \rh e fis gis b) \lh \ov r4 |
  \vo e,4 8 b d8. 16 8 a | e'8. fis16 e8 b d8. e16 f8 d | % 24a
  e d bes a \ov g4. 8 | bes8 a bes c d4 b |
  e4. d8 bes4. a8 | g f g bes c4 a \clef bass | % 24b
  \repeat unfold 2 {d,8 a d2 \tuplet 3/2 {c8 a c} |}
  d8 a c a d a c a | d a d a d a d a | d4-. a-. d-. a-. \section
  \set Staff.timeSignature = 12/8
  \scaleDurations 2/3 {
    \repeat unfold 2 \repeat tremolo 12 {<fis, b>32 d'} % 25a
    <fis, b d fis>8 r r \clef treble \repeat unfold 9 {c'''8(b) b-.}
    \tuplet 2/3 {r8 r16 <b d fis>} 4.~ |
    \tuplet 2/3 {8. 16} 4.~8 8 8 8 8 8 | 8 r r r4 r8 r2. | % 25c
    \repeat unfold 6 {c8(b) b-.} \tuplet 2/3 {r8 r16 <b d fis>} 4.~ | % 26a
    q4. \tuplet 2/3 {q8 r} \repeat unfold 8 {c8(b) b-.}
    \tuplet 2/3 {r8 r16 q} 4.~ | 4. 8 r r \repeat unfold 10 {c8(b) b-.} | % 27a
  }
  \set Staff.timeSignature = 4/4
  r8 r16 q16^\f 2 r8 r16 16 | 4~8. 16 \tuplet 3/2 4 {q8 q q q q q} |
  \clef bass \section \time 4/4
  <aes,, ces ees aes>8 r r4 r2 | R1*2 r2 % 28a
  q8 r <g aes c d> r | R1 \section \key aes \major \time 12/8 | % 28b
  \set Staff.timeSignature = 12/8
  <f a c f>8 r r r4. r2. \clef treble |
  f''4-. 8-. ees'4-. 8-. \appoggiatura {des16 ees} des8(bes) des-. ees4.-- |
  f,4-. 8-. c'4-. 8-. \appoggiatura {bes16 c} bes8(g) bes-. c4.-- | % 28c
  c4-. 8-. <bes ees>4-. 8-. <g c>4-. 8-. <f bes>8(<g c>) <f bes>-. |
  c'4-. 8-. <bes ees>4-. 8-. <g c>4-. 8-. <f bes>8(<g c>) <f bes>-. |
  d2.~4 c8(des4 c8) | d2.~4(c8 bes4 g8) | bes4(c8 des4 c8) bes4(aes g) \clef bass | % 29a
  f8 r r g r r bes r r c r r | f, r r g r r bes r r c r r |
  \repeat unfold 2 {f,4-. 8-. c'4-. 8-. \appoggiatura {bes16 c} bes8(g) bes-. c4.-- |} % 30a
  \repeat unfold 2 {bes8(c) c-. bes(c) c-. aes(c) c-. aes(c) c-.|}
  \scaleDurations 3/2 {
    \set Staff.timeSignature = 4/4
    \repeat unfold 8 {<des,, des'>4-- <f f'>--} | % 31
    <aes aes'>4-- <c c'>-- <aes aes'>-- <c c'>-- | % 32a
    <ges ges'>4-- <c c'>-- <ges ges'>-- <c c'>-- |
  }
  \time 4/4
  <f, f'>8 r r4 r2 | <f c' f>8 r r4 r2 |
}

pianoLHtwo = \relative {
  \global \vt
  s2.*10 |
  s2.*8 | % 17
  s2.*6 |
  s2.*4 | % 19a
  aes,8-. ees'-. aes,-. ees'-. aes,-. ees'-. | % 19b
  ees'8-. g,-. ees-. c'-. aes-. ees-. |
  d'8-. bes-. ees,-. bes'-. g-. ees-. |
  ees'8-. bes-. ees,-. c'-. aes-. ees-. |
  d'8-. bes-. ees,-. bes'-. g-. ees-. | % 19c
  c'8-. g-. c,-. bes'-. f-. bes,-. |
  ees'8-. bes-. ees,-. des'-. aes-. des,-. |
  c'8-. g-. c,-. bes'-. f-. bes,-. |
  ees'8-. bes-. ees,-. ees'-. bes-. ees,-. | % 20a
  c'8-. aes-. c,-. bes'-. g-. bes,-. |
  ees'8-. bes-. ees,-. d'-. bes-. d,-. |
  s2. | s1 |
  s1*6 | % 20bc
  s1*6 | r8 c,(d f g aes c d) | \vo r8 d(f g~ \tuplet 3/2 {g4 aes bes)} | \vt s1 | % 21
  s1*11 |
  s1*9 |
  e2 f | g fis8 e d4 | e8 g bes a s2 | s1*8 | % 24
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
          \new Dynamics \teeny \dynamicsPiano
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
  \paper {
    output-suffix = single-alto
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
          \new Dynamics \teeny \dynamicsPiano
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
  \paper {
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
          \new Dynamics \teeny \dynamicsPiano
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
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
          \new Dynamics \teeny \dynamicsPiano
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
          \new Dynamics \teeny \dynamicsPiano
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
          \new Dynamics \teeny \dynamicsPiano
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
          \new Dynamics \teeny \dynamicsPiano
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
          \new Dynamics \teeny \dynamicsPiano
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
  \paper {
    output-suffix = midi-sop
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsTenorMidi
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
%            \addlyrics \wordsBassMidi
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
  \paper {
    output-suffix = midi-alto
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
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
%            \addlyrics \wordsTenorMidi
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
%            \addlyrics \wordsBassMidi
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
  \paper {
    output-suffix = midi-tenor
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsBassMidi
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
  \paper {
    output-suffix = midi-bass
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsTenorMidi
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
