\version "2.25.17"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Tenterfield Saddler"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Peter Allen"
  arranger    = "Arr. David Lawrence"
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
  \key ees \major
  \time 2/2
}

TempoTrack = {
  \tempo "Slowly and freely, in 2" 2=56
  s1*6
  \tempo \markup {\rhythm {2} = \rhythm {2.} "Slowly, in 1"} 2.=56
%  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s1*2
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1 s2.*4
  \textMark \markup { \box "3a" } s2.*6
  \textMark \markup { \box "3b" } s2.*6
  \textMark \markup { \box "3c" } s2.*6
  \textMark \markup { \box "4a" } s2.*6
  \textMark \markup { \box "4b" } s2.*6
  \textMark \markup { \box "4c" } s2.*5
  \textMark \markup { \box "5a" } s2.*5
  \textMark \markup { \box "5b" } s2.*5
  \textMark \markup { \box "5c" } s2.*6
  \textMark \markup { \box "6a" } s2.*6
  \textMark \markup { \box "6b" } s2.*6
  \textMark \markup { \box "6c" } s2.*5
  \textMark \markup { \box "7a" } s2.*6
  \textMark \markup { \box "7b" } s2.*5
  \textMark \markup { \box "7c" } s2.*5
  \textMark \markup { \box "8a" } s2.*5
  \textMark \markup { \box "8b" } s2.*6
  \textMark \markup { \box "8c" } s2.*6
  \textMark \markup { \box "9a" } s2.*5
  \textMark \markup { \box "9b" } s2.*6
  \textMark \markup { \box "9c" } s2.*6
  \textMark \markup { \box "10a" } s2.*5
  \textMark \markup { \box "10b" } s2.*5
  \textMark \markup { \box "10c" } s2.*6
  \textMark \markup { \box "11a" } s2.*5
  \textMark \markup { \box "11b" } s2.*6
  \textMark \markup { \box "11c" } s2.*5
  \textMark \markup { \box "12a" } s2.*5
  \textMark \markup { \box "12b" } s2.*6
  \textMark \markup { \box "12c" } s2.*4
}

ChordTrack = \chordmode {
  ees1 bes/d |
  c1:m aes ees/ges |
  bes1 | aes2. | s | bes:7/aes | s |
  g2.:m7 | s | bes/c | s | bes:11 | s | % 3a
  bes2.:9 | s | bes:7sus4 | s | ees | s |
  ees2. | ees/des | ees/c | ees/bes | bes:11 | s |
  s2. | s | aes2 ees4/g | f2.:m7 | bes:11 | s | % 4a
  ees2. | s | ces | bes4:9 bes2:7 | ees2. | s |
  d2.:m7 | c:7 | c:m | ees/bes | c:m |
  aes2. | s | ees/g | ees | bes | % 5a
  s2. | aes | s | bes:7/aes | s |
  g2.:m7 | s | c:m7 | s | f:m9 | f:m7 |
  bes2.:7sus4 | bes:7 | bes:9 | bes:7sus4 | ees | bes:7 | % 6a
  ees2. | ees/d | aes/c | ees/bes | aes:maj7 | g:m7 |
  f2.:m7 | bes:7 | aes2 ees4:9/g | f2.:m7 | s |
  bes2.:11 | ees | s | ees/c | ees/bes | bes:m7 | % 7a
  s2. | s | ees | s | d:m7 |
  g2.:7 | c:m | ees/c | c:m | s |
  aes2. | s | ees/g | ees | bes/d | % 8a
  bes2. | bes:11 | bes | aes | s | ees:7/aes |
  s2. | g:m7 | s | c:m7 | s | f:m9
  bes2.:7 | f:m/bes | s | c:m | c:m7 | % 9a
  f2.:m7 | f:m/bes | ees | ees/d | aes/c | ees/bes |
  aes2.:maj7 | g:m7 | f:m7 | bes:7 | aes4 ees2:5.9/g | f2.:m7 |
  s2. | bes:11 | ees | s | c:9sus4 | % 10a
  c2.:7 | f | f/e | bes/d | f/c |
  bes:maj7 | a:m7 | g:m7 | c:7 | bes2:maj7  a4:m7 | g2.:m7 |
  s2. | c:11 | f | s | c:9sus4 | % 11a
  c2.:7 | f | f/e | bes/d | f/c | bes:maj7 |
  a2.:m7 | g:m7 | c:7 | bes2:maj7 a4:m7 | g2.:m7 |
  s2. | c:11 | f | f/e | f/d | % 12a
  f2./c | bes2:maj7 a4:m7 | g2.:m7 | g:m11 | c:7 | f |
  f2./c | bes/d | f/c | f:5.9 |
}

dynamicsI = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s1*4 | s2... s16\mf | s2.*4 |
  s2.*12 | s2.\mp | s2.*5 | % 3
  s2.*9 | s2 s8 s\mp | s2.*7 |
  s2.*12 | s2 s8 s\mp | s2.*2 | % 5
  s2.*6 | s2.-\markup\italic "poco rall." | % 6a
  s2.\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2.*5 |
  s2.*5 |
  s2.*7 | s2 s8 s\f | s2.*8 | % 7
  s2.*14 | s4 s s8 s\mf | s2.*2 |
  s2.*6 | s2.\< | s2.\f | s2.\omit\cresc-\markup\italic "cresc. poco a poco" | s2.*8 | % 9
  s2.*4 | s2.\< | s | s\f | s2.*9 |
  s2.*16 | % 11
  s2.*6 | s2.\mf | s | s4 s2\< | s2\! s4\f | s2.*5 |
}

partI = \relative {
  \global
  r8. bes16^\markup\italic "Solo I" g'8 8 aes g4. | r4 d8 8 g f4 r16 d |
  ees8 8 f ees~4 r | r aes16 16 8 4. f8 | g16 16 8 aes g~8 r4 bes,8 |
  f'4. 8 g f4 r16 d \time 3/4 | ees4. 8 4 | ees'4 d d | 2 r8 8 | 4 c bes | % 3a
  bes2 r4^\markup\italic "(end solo)" | R2.*11 |
  f4 g g | f g g | r f8 g8 4 | f g g | 2 f4 | 4 r r |
  R2. | R | es4 f f | ees8 f8 4 r | ees f f | g f ees | % 4a
  f2 ees4 | 4 r r | R2. | r4 r r8 bes \section | g'4 4 4 | aes g4. ees8 |
  f4 4 4 | g8 f r4 r8 d | ees8 8 8 f~f ees~ | 4 r r | r r r8 ees |
  aes4 8 8 4~ | 2 8 8 | g8 8 4 4 | g f ees | g8(f) 4 r | % 5a
  r4 r r8 f | ees4 4 4 | ees'4 d8 8 4 | 2~8 8 | d4 c bes |
  bes2 r4 | R2. | r4 r r8 d, | ees4 f g | g f4. 8 | f4 g aes |
  f2 r4 | R2. | f8 g4. aes4 | f ees4. d8 | ees2 r4 | R2. | \section % 6a
  f4 g g | f g g | r4 f8 g8 4 | f g g | g2 f4 | 2.~ |
  f2.~ | 4 r r | ees f f | ees8 f8 4 r | ees8 f4 8~4 |
  g4 f ees | f2 ees4 | ees2. | R2.*3 | % 7a
  R2. | r4 r r8 bes \section | g'4 4 4 | aes g g | g8 f8 4 4 |
  g4 f8 f~4 | 4 ees8 4 8~ | 4 r r | R2.*2 |
  aes4 8 8~4 | bes(aes) 8 8 | g4 8 8 4 | r r g8 8 | 4 f f | % 8a
  f2 r4 | R2. | r4 r r8 f | ees4 4 4 | ees'8 d4. 4 | d2 r8 d |
  d4 c bes | c(bes) 8 8 | 2 r4 | r r r8 ees, | 4 f g | 2 f8 8 |
  f8 4 r8 bes,8 8 | g'4 f8 8~8 8~ | 4 r f8 ees | 2 r4 | r r r8 bes | % 9a
  g'4 f ees | f2. \section | 4 g g | f g g | r f8 g8 4 | f4 g g |
  g2 f4 | 2.~ | 2.~ | 4 r r | ees f f | ees8 f8 4 r |
  ees8 f4 8~4 | g f ees | f2 ees4 | 4 r r | c'2.~ | % 10a
  c \section \key f \major | g4 a4 4 | g a4 4 | r g8 a8 4 | g a4 4 |
  a2 g4 | 2.~ | 2.~ | 4 r r | f g g | f8 g8 4 r |
  f8 g4 8~4 | a g f | g2 f4 | 2. \breathe | c'2.~ | % 11a
  c2. \section | d4 c c | d c c | r c8 8 4 | d c c | a2 g4 |
  g2.~ | 2.~ | 4 r r | f g g | f8 g8 4 r |
  f8 g4 8~4 | a g f | f2 f4 | f2. | R | % 12a
  R2. | f4 g g | f8 g8 2 | r4 c2~ | 2 \breathe 4 | 2.~ |
  c2.~ | 2.~ | 2. | R\fermata |
  \bar "|."
}

wordsI = \lyricmode {
  The late George Wool -- nough worked on High Street
  an’ lived on Man -- ners __
  Fif -- ty- two years he sat on his v’ran -- dah __
  and made his sad -- dles,
  And if you had ques -- tions ’bout sheep or flow -- ers or dogs.
  Time is a trav -- el -- er
  Ten -- ter -- field Sad -- d -- ler turn your head.
  Ride a -- gain, jack -- a -- roo, think I see kan -- ga -- roo up a -- head.
  The son of George Wool -- nough went off and got mar -- ried,
  and had a war ba -- by, __
  Though some -- thing was wrong __ and it’s eas -- i -- er to drink than go cra -- zy.
  And if there were ques -- tions a -- bout why __ the end was so sad.
  Well, George had no an -- swers a -- bout why a son
  ev -- er has need of a gun.
  Time is a trav -- el -- er, Ten -- ter -- field Sad -- d -- ler, turn your head. __
  Ride a -- gain, jack -- a -- roo,
  think I see __ kan -- ga -- roo up a -- head.
  The grand -- son of George has been all a -- round the world
  and lives __ no spe -- cial place. __
  Changed his last __ name __ and he mar -- ried a girl
  with an in -- t’rest -- ing face.
  He’d al -- most for -- got -- ten them both
  be -- cause in the life __ that he leads
  there’s no -- where for George and his li -- b’ry
  or the son with his __ gun __ to be -- long
  ex -- cept in this song.
  Time is a trav -- el -- er,
  Ten -- ter -- field Sad -- d -- ler turn your head. __
  Ride a -- gain, jack -- a -- roo,
  think I see __ kan -- ga -- roo up a -- head.
  Oh __
  Time is a med -- d -- ler,
  Ten -- ter -- field sad -- d -- ler make your bed. __
  Fly a -- way, cock -- a -- too,
  down on the __ ground e -- mu up a -- head.
  Oh __
  Time is a trav -- el -- er,
  Ten -- ter -- field Sad -- d -- ler, turn your head. __
  Ride a -- gain jack -- a -- roo,
  Think I see __ kang -- a -- roo up a -- head.
  Ten -- ter -- field sad -- d -- ler turn __ your head. __
}

wordsImidi = \lyricmode {
  "The " "late " "George " Wool "nough " "worked " "on " "High " "Street "
  "\nan’ " "lived " "on " Man "ners " 
  "\nFif" ty "two " "years " "he " "sat " "on " "his " v’ran "dah " 
  "\nand " "made " "his " sad "dles, "
  "\nAnd " "if " "you " "had " ques "tions " "’bout " "sheep " "or " flow "ers " "or " "dogs. "
  "\nTime " "is " "a " trav el "er "
  "\nTen" ter "field " Sad d "ler " "turn " "your " "head. "
  "\nRide " a "gain, " jack a "roo, " "think " "I " "see " kan ga "roo " "up " a "head. "
  "\nThe " "son " "of " "George " Wool "nough " "went " "off " "and " "got " mar "ried, "
  "\nand " "had " "a " "war " ba "by, " 
  "\nThough " some "thing " "was " "wrong "  "and " "it’s " eas i "er " "to " "drink " "than " "go " cra "zy. "
  "\nAnd " "if " "there " "were " ques "tions " a "bout " "why "  "the " "end " "was " "so " "sad. "
  "\nWell, " "George " "had " "no " an "swers " a "bout " "why " "a " "son "
  "\nev" "er " "has " "need " "of " "a " "gun. "
  "\nTime " "is " "a " trav el "er, " Ten ter "field " Sad d "ler, " "turn " "your " "head. " 
  "\nRide " a "gain, " jack a "roo, "
  "\nthink " "I " "see "  kan ga "roo " "up " a "head. "
  "\nThe " grand "son " "of " "George " "has " "been " "all " a "round " "the " "world "
  "\nand " "lives "  "no " spe "cial " "place. " 
  "\nChanged " "his " "last "  "name "  "and " "he " mar "ried " "a " "girl "
  "\nwith " "an " in t’rest "ing " "face. "
  "\nHe’d " al "most " for got "ten " "them " "both "
  "\nbe" "cause " "in " "the " "life "  "that " "he " "leads "
  "\nthere’s " no "where " "for " "George " "and " "his " li "b’ry "
  "\nor " "the " "son " "with " "his "  "gun "  "to " be "long "
  "\nex" "cept " "in " "this " "song. "
  "\nTime " "is " "a " trav el "er, "
  "\nTen" ter "field " Sad d "ler " "turn " "your " "head. " 
  "\nRide " a "gain, " jack a "roo, "
  "\nthink " "I " "see "  kan ga "roo " "up " a "head. "
  "\nOh " 
  "\nTime " "is " "a " med d "ler, "
  "\nTen" ter "field " sad d "ler " "make " "your " "bed. " 
  "\nFly " a "way, " cock a "too, "
  "\ndown " "on " "the "  "ground " e "mu " "up " a "head. "
  "\nOh " 
  "\nTime " "is " "a " trav el "er, "
  "\nTen" ter "field " Sad d "ler, " "turn " "your " "head. " 
  "\nRide " a "gain " jack a "roo, "
  "\nThink " "I " "see "  kang a "roo " "up " a "head. "
  "\nTen" ter "field " sad d "ler " "turn "  "your " "head. " 
}

dynamicsII = {
  \override DynamicTextSpanner.style = #'none
  s1*5 | s2... s16\mf | s2.*4 |
  s2.*12 | s2.\mp | s2.*5 | % 3
  s2.*9 | s2 s8 s\mp | s2.*7 |
  s2.*5 | s4 s s8 s\mf | s2.*6 | s4 s s8 s\mp | s2.*3 | % 5
  s2.*6 | s2.\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2.*10 |
  s2.*7 | s2 s8 s\f | s2.*8 | % 7
  s2.*14 | s4 s s8 s\mf | s2.*2 |
  s2.*6 | s2.\< | s2.\f | s2.\omit\cresc-\markup\italic "cresc. poco a poco" | s2.*8 | % 9
  s2.*4 | s2.\< | s | s\f | s2.*9 |
  s2.*16 | % 11
  s2.*6 | s2.\mf | s | s4 s2\< | s2\! s4\f | s2.*5 |
}

partII = \relative {
  \global
  R1*5 |
  r2 r4^\markup\italic "Solo II" r8 r16 d' | ees4. 8 4 | c'4 bes bes | 2 r8 8 | 4 aes g |
  g2 r4 | R2. | r4 r r8 ees | f4 g g | g f r | r r r8 f | % 3a
  f4. g8 aes4 | f2 r8 f | 4 g4. aes8 | f4 ees d | ees2^\markup\italic "(end solo)" r4 | R2. |
  f4 g g | f g g | r f8 g8 4 | f g g | 2 f4 | f r r |
  R2. | R | ees4 f f | ees8 f8 4 r | ees f f | g f ees | % 4a
  f2 ees4 | ees r r | R2. | R2. \section | bes'2.~(bes |
  a2. | b | c) | R | R |
  c2.(~ | c | bes~ | bes~ | bes2) r4 | % 5a
  r4 r r8 f | ees4 4 4 | c'4 bes8 8 4 | 2~8 f | f4 ees d |
  d2 r4 | R2. | r4 r r8 d | ees4 f g | g f4. 8 | 4 g aes |
  f2 r4 | R2. | f8 g4. aes4 | f4 ees4. d8 | ees2 r4 | R2. \section | % 6a
  ees4 4 4 | 4 4 4 | r ees8 8 4 | 4 4 4 | c2 ees4 d2.( |
  ees2. | d4) r r | c4 4 bes | aes8 c8 4 r | c8 aes4 c8~4 |
  d4 4 c | bes2 ees4 | 2. | R2.*3 | % 7a
  R2. | r4 r r8 bes \section | 4 4 4 | c bes4 4 | b8 8 4 4 |
  b4 d8 8~4 | c4 8 4 8~ | 4 r r | R2. | R |
  c4 8 8~4 | 2 8 8 | ees4 8 8 4 | r r ees8 8 | d4 4 4 | % 8a
  d2 r4 | R2. | r4 r r8 d | c4 4 4 | 8 aes'4. 4 | bes2 r8 bes |
  bes4 aes g | f2 d8 8 | 2 r4 | r r r8 ees | 4 f g | 2 f8 8 |
  f8 4 r8 bes,8 8 | g'4 f8 8~8 8~ | 4 r f8 ees | 2 r4 | r r r8 bes | % 9a
  g'4 f ees | f2. \section | ees4 4 4 | 4 4 4 | r ees8 8 4 | 4 4 4 |
  c2 ees4 | d2.( | ees | d4) r r | c c bes | aes8 c8 4 r |
  c8 aes4 c8~4 | d d c | bes2 ees4 | ees r r | f2.( | % 10a
  g2.) \section \key f \major | f4 f f | e e e | r d8 8 4 | c c c |
  d2 f4 | e2.( | f | e4) r r | d d c | bes8 d8 4 r |
  d8 bes4 d8~4 | e4 4 d | c2 f4 | 2. \breathe | 2.~ | % 11a
  g2. | a4 4 4 | 4 4 4 | r4 8 8 4 | 4 4 4 | d,2 f4 |
  e2.( | f | e4) r r | d d c | bes8 d8 4 r |
  d8 bes4 d8~4 | e4 4 d | c2 f4 | 2. | R | % 12a
  R2. d4 d c | bes8 d8 2 | r4 d2~ | 2 \breathe g4 a2.~ |
  a2.~ | 2.~ | 2. | R\fermata |
  \bar "|."
}

wordsII = \lyricmode {
  And if you had ques -- tions ’bout sheep or flow -- ers or dogs,
  you’d just ask the Sad -- dler.
  He lived with -- out sin, they’re build -- ing a li -- b’ry for him,
  Time is a trav -- el -- er
  Ten -- ter -- field Sad -- d -- ler turn your head.
  Ride a -- gain, jack -- a -- roo, think I see kan -- ga -- roo up a -- head.
  Oo __ Oo __
  And if there were ques -- tions a -- bout why __ the end was so sad.
  Well, George had no an -- swers a -- bout why a son
  ev -- er has need of a gun.
  Time is a trav -- el -- er, Ten -- ter -- field Sad -- d -- ler, turn your head. __
  Ride a -- gain, jack -- a -- roo,
  think I see __ kan -- ga -- roo up a -- head.
  The grand -- son of George has been all a -- round the world
  and lives __ no spe -- cial place. __
  Changed his last __ name __ and he mar -- ried a girl
  with an in -- t’rest -- ing face.
  He’d al -- most for -- got -- ten them both
  be -- cause in the life __ that he leads
  there’s no -- where for George and his li -- b’ry
  or the son with his __ gun __ to be -- long
  ex -- cept in this song.
  Time is a trav -- el -- er,
  Ten -- ter -- field Sad -- d -- ler turn your head. __
  Ride a -- gain, jack -- a -- roo,
  think I see __ kan -- ga -- roo up a -- head.
  Oh __
  Time is a med -- d -- ler,
  Ten -- ter -- field sad -- d -- ler make your bed. __
  Fly a -- way, cock -- a -- too,
  down on the __ ground e -- mu up a -- head.
  Oh __
  Time is a trav -- el -- er,
  Ten -- ter -- field Sad -- d -- ler, turn your head. __
  Ride a -- gain jack -- a -- roo,
  Think I see __ kang -- a -- roo up a -- head.
  Ten -- ter -- field sad -- d -- ler turn __ your head. __
}

wordsIImidi = \lyricmode {
  "And " "if " "you " "had " ques "tions " "’bout " "sheep " "or " flow "ers " "or " "dogs, "
  "\nyou’d " "just " "ask " "the " Sad "dler. "
  "\nHe " "lived " with "out " "sin, " "they’re " build "ing " "a " li "b’ry " "for " "him, "
  "\nTime " "is " "a " trav el "er "
  "\nTen" ter "field " Sad d "ler " "turn " "your " "head. "
  "\nRide " a "gain, " jack a "roo, " "think " "I " "see " kan ga "roo " "up " a "head. "
  "\nOo "  "Oo " 
  "\nAnd " "if " "there " "were " ques "tions " a "bout " "why "  "the " "end " "was " "so " "sad. "
  "\nWell, " "George " "had " "no " an "swers " a "bout " "why " "a " "son "
  "\nev" "er " "has " "need " "of " "a " "gun. "
  "\nTime " "is " "a " trav el "er, " Ten ter "field " Sad d "ler, " "turn " "your " "head. " 
  "\nRide " a "gain, " jack a "roo, "
  "\nthink " "I " "see "  kan ga "roo " "up " a "head. "
  "\nThe " grand "son " "of " "George " "has " "been " "all " a "round " "the " "world "
  "\nand " "lives "  "no " spe "cial " "place. " 
  "\nChanged " "his " "last "  "name "  "and " "he " mar "ried " "a " "girl "
  "\nwith " "an " in t’rest "ing " "face. "
  "\nHe’d " al "most " for got "ten " "them " "both "
  "\nbe" "cause " "in " "the " "life "  "that " "he " "leads "
  "\nthere’s " no "where " "for " "George " "and " "his " li "b’ry "
  "\nor " "the " "son " "with " "his "  "gun "  "to " be "long "
  "\nex" "cept " "in " "this " "song. "
  "\nTime " "is " "a " trav el "er, "
  "\nTen" ter "field " Sad d "ler " "turn " "your " "head. " 
  "\nRide " a "gain, " jack a "roo, "
  "\nthink " "I " "see "  kan ga "roo " "up " a "head. "
  "\nOh " 
  "\nTime " "is " "a " med d "ler, "
  "\nTen" ter "field " sad d "ler " "make " "your " "bed. " 
  "\nFly " a "way, " cock a "too, "
  "\ndown " "on " "the "  "ground " e "mu " "up " a "head. "
  "\nOh " 
  "\nTime " "is " "a " trav el "er, "
  "\nTen" ter "field " Sad d "ler, " "turn " "your " "head. " 
  "\nRide " a "gain " jack a "roo, "
  "\nThink " "I " "see "  kang a "roo " "up " a "head. "
  "\nTen" ter "field " sad d "ler " "turn "  "your " "head. " 
}

pianoRHone = \relative {
  \global
  <bes ees g>1 | <bes f'> |
  ees1 | \appoggiatura bes8 c1 | <bes ees> |
  <bes d>1 | <aes c ees>2. | <ees' aes c> | <f d'>4 bes f | <bes, d>2. |
  <d f bes>2 f4 | <d' f> bes f | <f bes d>2. | <f, bes d> | <aes c ees>2 aes4 | ees' d aes | % 3a
  <aes c>2. | d4 bes aes | <aes bes ees>2.~2. | <g ees'>2.~2 r4 |
  \vo r4 ees' g | r ees g | r ees g | r ees g | \ov c, aes ees' | d aes ees' |
  c4 aes ees' | c aes ees' | c2 bes4 | aes2. | \vo ees'4 c aes | ees' c aes | % 4a
  f'4 bes, ees | \ov <g, ees'>2 ees'8(ees') | <ees, ees'>4 <des' ees> <ces ees> | \vo bes2. \ov | g,4 bes ees | aes g bes, |
  f4 a c | <b d>2 d4 | ees c <f d'>( | <g ees'>) ees c | ees(<d f> <ees g>) |
  <aes' ees'>2. | \vo ees \ov | <bes, ees>4 \ss \lh ees, \rh \ov q | g' bes, ees | <d f>(bes q) | % 5a
  <c ees>4(bes <d f>) | <c ees>2. | <c' ees>4. ees,8(aes <c ees>) | <bes d>2 4 | <d bes'>(<ees c'> <f d'>) |
  <d bes'>2. | bes4 f d | <bes ees>2. | <bes' ees> | <bes g'>( | <aes f'> |
  <g ees'>2. | <f d'>) | <c f> | <bes ees> | <g ees'> | d'4^\markup\italic "poco rall."(<bes ees> <bes f'>) \section | % 6a
  \vo r4 <ees g> q | r4 q bes'8(<g' bes>) \ov | <ees aes>4 aes, ees | \vo <ees g>2. | g2 f4 \ov | <bes, f'> r r8 f''( |
  <aes, ees'>4 c <c, aes'>) | <f d'>4.(<e c'>8 <d bes'>4) | <c ees>4 f <bes, f'> | <aes ees'>2 c4 | \vo ees2. |
  <d g>4 bes <aes c ees> | \vo f'2 \ov <g, ees'>4 | q bes ees | ees g, bes | ees g, bes | <des f aes>2 <aes' des f>8(<des f aes>) | % 7a
  \vo q2 aes8(des,) \ov | <aes des>4(<aes f'> <des aes'>) \section | g,4 bes ees | aes g bes, | f a c |
  <b d>2 d4 | ees c <f d'>( | <g ees'>) ees c | ees g d' | <g, ees'>4(<aes f'> <bes g'>) |
  \vo aes'2. | aes, \ov | <bes, ees>2 bes'4 | \vo bes'2. | \ov \hs \lh <f,, bes>4 \rh \ov bes' d, | % 8a
  \vo <d f>2.( | <c ees> | <d f>) \ov | <c ees>2. | <c' ees>4. ees,8 aes[q] | <bes d>2 4 |
  <d bes'>4(<ees c> <f d'>) | <d bes'>2. | \vo f2~8 8 | \ov <g, ees'>2. | <bes ees> | <bes g'> |
  <aes f'>2. | <aes c f>~ | q | <c, ees> | <bes' ees>2.\arpeggio | % 9a
  <c, ees>2. | q \section | \vo r4 <ees g> q | r q bes'8(<g' aes>) | <ees aes>2. | <ees g> |
  g,2 f4 \ov | <bes, f'>4 r r8 f''( | <aes, ees'>4 c <c, aes'>) | <f d'>4.(<ees c'>8 <d bes'>4) | <c ees> f <bes, f'> | <aes ees'>2 c4 |
  \vo ees2. \ov | <d g>4 bes <aes c ees> | \vo f'2 ees4 \ov | <g, ees'> bes ees | <c' d f> bes f | % 10a
  \vo c'2. \section \key f \major \ov | <c f c'>2. | q | <bes f' bes> | <a c a'> |
  \vo aes2. | g~ | g | g | \ov d2 c4 | bes d bes |
  \vo f'2. | \ov <e a>4 c <bes d f> | \vo g'2 f4 \ov | <a, f'> c f | <d f g c> c'8(f g c) | % 11a
  <c, e g c>2. | <c f c'>2 c8(<f c'>) | <c f c'>2 c8(<f c'>) | <bes, f' bes>2. | <a c a'> | \vo a2. |
  g2.~ | g | g | \ov d2 c4 | bes d bes |
  \vo f'2. | \ov <e a>4 c <bes d f> | \vo g'2 f4 | \ov <a, f'> c f | <a, f'> d f | % 12a
  f4 a, c | d2 c4 | bes d bes8(f') | <f bes c>2. | <g, bes c> | <c' f c'> |
  q2. | <bes f' bes> | <a c a'> | <f' g a c>2\arpeggio\fermata r4 |
%  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s1*6 | s2.*4 |
  s2.*12 | bes2.~2. | bes~bes | s2.*2 | % 3
  s2.*4 | aes2. | aes | g | s2.*2 | c4(d2) \section | s2.*7 |
  s2.*16 | % 5
  s2.*6 | bes2. | bes | s | r4 bes4 4 | c2. | s2.*5 | aes8 c4 aes8~4 |
  s2. | g4 bes s | s2.*4 | \crossStaff {<f' aes>2.} | s2.*9 | % 7
  bes4 c aes | bes, c ees | s2. | f'4 ees bes | s2. | % 8a
  r4 bes,~<bes d f> | r aes <aes c ees> | r4 bes <bes d f> | s2.*3 |
  s2.*2 | bes'2. | g | s2.*2 |
  s2.*5 | % 9a
  s2.*2 | bes,2. | bes | r4 aes' ees | r bes' bes |
  c,2. | s2.*5 |
  aes8 c4 aes8~4 | s2. | bes4 g bes | g bes ees | s2. | % 10a
  e4 f g \section \key f \major | \lh r4 c, \ss \rh a' | \hs \lh r4 c, \ss \rh a' | \hs \lh r4 d, f | r f c \rh |
  d4 f d | c f c | bes f' bes, | e4.(d8 c4) | s2.*2 |
  bes8 d4 bes8~4 | s2. | c4 a c | s2.*2 | % 11a
  s2. | \lh r4 c2 | r4 c2 | r4 d f | f f c \rh | d f d |
  d4 f c | bes f' bes, | e4.(d8 c4) | s2.*2 |
  bes8 d4 bes8~4 | s2. | c4 a c | s2.*2 | % 12a
  s2.*5 | \lh r4 \ss c4 \rh a' |
  \hs \lh r4 c, \ss \rh a' | \hs \lh r4 d, f | r f c | s2. |
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp | s1*5 | s2.\mf | s2.*3 |
  s2.*3 | s2.\mp | s2.*3 | s2.\dim | s2.*2 | s2.\p | s2 s4\mp | s2.*6 | % 3
  s2.*7 | s2 s4\mf | s2. | s\> | s\mp | s2.*6 |
  s2.*4 | s2.\cresc | s2. | s\mf | s2.*4 | s2.\dim | d\mp | s2.*3 | % 5
  s2.*5 | s2\< s4\! | s2.\mf | s2.*10 |
  s2.*2 | s2.\cresc | s2.*2 | s2.\f | s2.*10 | % 7
  s2.*13 | s2.\dim | s2.*3 |
  s2. | s2.\p | s2.*3 | s2.\mf | s2.\< | s2\f s4\cresc | s2.-\markup\italic "poco a poco" | s2.*8 | % 9
  s2.*4 | s2.\< | s | s\f | s2.*9 |
  s2.*16 | % 11
  s2.*4 s4 s2\dim | s2. | s\mf | s | s\< | s\! | s\f | s2.*4 |
}

pianoLH = \relative {
  \global
  ees1 | d |
  <c g'>1 | <aes ees'> | <g ees'> |
  <bes f'>1 | <aes ees'>2.~2. | <aes f'> | q |
  g2.~2. | c~c | bes~bes | % 3a
  bes2.~2. | bes~bes | <ees, bes' g>2.~2 bes'4 |
  ees2. | d | c | bes | bes | bes |
  bes,2.~2 f'4 | <aes ees'>2 <g ees'>4 | <f ees'>2. | bes | bes,2 4 | % 4a
  ees2. | <ees ees'> | <ces' ges' ces> | <bes aes'>2 f'4 \section | <ees, bes'>2. | ees' |
  d,2. | <g f'> | <c g'> | <bes g'> | c |
  aes'4 ees' aes, | aes2. | g, | ees | bes'~ | % 5a
  bes2. | aes4 ees' aes | 2. | 4 f'2 | <aes, f'>2. |
  <<{\vo f'4 d bes} \new Voice {\vt g2.}>> \ov | <g d'>2. | <c, g'> | <c' g'> | f,,2 f'4 | ees'2. |
  bes,2 f'4 | <aes bes>2 f4 | <bes, aes'>2. | q | <ees, bes'> | bes'4(c d) \section | % 6a
  ees2. | d | c | bes | aes4 ees'2 <<{\vo r4 g bes | f,2. | r4 f' bes} \new Voice {\vt g,2. | s | bes}>> \ov | <aes ees'>2 <g ees'>4 | <f ees'>2. | q |
  bes2. | ees, | d | c | bes | <<{\vo r4 f'' aes} \new Voice {\vt d,2.}>> \ov | % 7a
  \vt bes'2. \ov | <bes,, bes'> \section | <ees bes'> | ees' | d, |
  <g f'>2. | <c g'> | <bes g'> | <c g'>2 bes'4 | <c, g' c>2. |
  <aes' ees'>2. | <aes, ees> | <<{\vo r4 ees'2} \new Voice {\vt g,2.}>> \ov | <ees'' g>2. | d,2. | % 8a
  bes,2. | bes'| bes, | aes'4 ees' aes | 2. | 4 f'2 |
  <aes, f'>2. | <<{\vo f'4 d bes | d f d | bes2 g4 |} \new Voice {\vt g2. | g | c,}>> \ov | <c' g>2. | f,,2 g'4 |
  <bes d>2. | bes,2.~ | bes | <c g'> | <c' g'>\arpeggio | % 9a
  <f,, ees'>2. | bes4 c d \section | ees2. | d | c | bes |
  aes4 ees'2 | <<{\vo r4 g bes | f,2. | r4 f' bes} \new Voice {\vt g,2. | s | bes}>> \ov | <aes ees'>2 <g ees'>4 | <f ees'>2. |
  <f ees'>2. | bes | ees, | ees | <c' bes'> | % 10a
  <<{\vo bes'2.} \new Voice {\vt c,4 d e}>> \section \key f \major | \vt f2. | f | f | f |
  \ov bes2. | a | f | c | <bes a'>2 <a g'>4 | <g f'>2. |
  <g f'>2. | c | f | f, | <c' bes'> | % 11a
  <c bes'>2. | \vt f | e | d | c | \ov bes |
  a2. | g | c | <bes a'>2 <a g'>4 | <g f'>2. |
  <g f'>2. | c | f, | e | d | % 12a
  c2. | <bes' a'>2 <a g'>4 | <g f'>2. | <g' c>-> | <c, e>-> | \vt f |
  e2. | d | c | \ov <f c'>2\fermata r4 |
%  \bar "|."
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
                                % Part 1 staff
          \new Staff = parti \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = parti} \dynamicsI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Part 2 staff
          \new Staff = partii \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = partii} \dynamicsII
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
        \consists Span_stem_engraver
        connectArpeggios = ##t
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Part 1 staff
          \new Staff = parti \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = parti} \dynamicsI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Part 2 staff
          \new Staff = partii \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = partii} \dynamicsII
            \clef bass
            \new Voice \transpose c c, \partII
            \addlyrics \wordsII
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
        \consists Span_stem_engraver
        connectArpeggios = ##t
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
                                % Part 1 staff
          \new Staff = parti \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = parti} \dynamicsI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Part 2 staff
          \new Staff = partii \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = partii} \dynamicsII
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
        \consists Span_stem_engraver
        connectArpeggios = ##t
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
    output-suffix = "singlepage-part1"
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
                                % Part 1 staff
          \new Staff = parti \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = parti} \dynamicsI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Part 2 staff
          \new Staff = partii \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = partii} \teeny \dynamicsII
            \new Voice \partII
            \addlyrics {\tiny \wordsII}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
        \consists Span_stem_engraver
        connectArpeggios = ##t
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
    output-suffix = "singlepage-part2"
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
                                % Part 1 staff
          \new Staff = parti \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = parti} \teeny \dynamicsI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics {\tiny \wordsI}
          >>
                                % Part 2 staff
          \new Staff = partii \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = partii} \dynamicsII
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
        \consists Span_stem_engraver
        connectArpeggios = ##t
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
        \new ChoirStaff <<
                                % Part 1 staff
          \new Staff = parti \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = parti} \teeny \dynamicsI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics {\tiny \wordsI}
          >>
                                % Part 2 staff
          \new Staff = partii \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = partii} \dynamicsII
            \clef bass
            \new Voice \transpose c c, \partII
            \addlyrics \wordsII
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
        \consists Span_stem_engraver
        connectArpeggios = ##t
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
    output-suffix = "midi-part1"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Part 1 staff
          \new Staff = parti \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = parti} \dynamicsI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsImidi
          >>
                                % Part 2 staff
          \new Staff = partii \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = partii} \dynamicsII
            \new Voice \partII
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
    output-suffix = "midi-part2"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Part 1 staff
          \new Staff = parti \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = parti} \dynamicsI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
          >>
                                % Part 2 staff
          \new Staff = partii \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = partii} \dynamicsII
            \new Voice \partII
            \addlyrics \wordsIImidi
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
