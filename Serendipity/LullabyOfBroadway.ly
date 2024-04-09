\version "2.25.14"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lullaby of Broadway"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Harry Warren"
  arranger    = "Arr. Kirby Shaw"
%  opus        = "opus"

  poet        = "Al Dubin"
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
  \tempo Swing 4=136
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \mark \markup { \box "3a" } s1*2
  }
  s1
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "3c" } s1*3
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "4c" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "5c" } s1*4
  \mark \markup { \box "6a" } s1*4
  \mark \markup { \box "6b" } s1*4
  \mark \markup { \box "6c" } s1*4
  \mark \markup { \box "7a" } s1*3
  \mark \markup { \box "7b" } s1*3
  \mark \markup { \box "7c" } s1*3
  \mark \markup { \box "8a" } s1*3
  \mark \markup { \box "8b" } s1*3
  \mark \markup { \box "8c" } s1*3
  \mark \markup { \box "9a" } s1*3
  \mark \markup { \box "9b" } s1*3
  \mark \markup { \box "9c" } s1*4
  \mark \markup { \box "10a" } s1*4
  \mark \markup { \box "10b" } s1*4
  \mark \markup { \box "10c" } s1*5
  \mark \markup { \box "11a" } s1*4
  \mark \markup { \box "11b" } s1*3
  \mark \markup { \box "11c" } s1*4
}

ChordTrack = \chordmode {
  \repeat volta 2 {
    ees2 c:m7 | f:m9 bes:7 |
  }
  ees2 c:m7 |
  f1:m7 | aes2/bes bes:7 | ees1:maj9 |
  ees2 c:m7 | f1:m7 | aes2/bes bes:7 |
  ees4. bes8:7sus s4 a:7 | aes2:maj7 a:0 | bes1:m7 | % 4a
  des2/ees ees:9 | aes1:maj9 | s2 f:m7 |
  bes1:m7 | des2/ees ees:9 | aes2:3.5.9 s8 bes4.:13 |
  ees2 c:m7 | f1:m7 | aes2/bes bes:9 |  % 5a
  ees1:maj9 | s2 c:m7 | f1:m9 |
  aes2/bes bes:9 | bes2:maj7 ees:9 | aes1 | bes1:m7/aes |
  aes1 | ees/aes | aes2 aes/ges | des/f e:6 | % 6a
  aes2/ees ees4.:9 aes8 | s1 | s1 | bes:m7/aes |
  aes1 | ees/aes | aes2 aes/ges | des/f e:6 |
  aes2/ees ees4.:9 aes8 | s4. bes8:13 s2 | ees2:maj9 c:m9 | % 7a
  f1:m7 | aes2:6/bes bes:7.9- | ees:maj9 ees:6 |
  ees2:maj9 c:m9 | f1:m7 | aes2/bes bes:9 |
  ees2.:6 a4:9 | aes2:maj9 f:m9 | bes4.:m9 ees8:13 s2 | % 8a
  bes2:m9 ees:7.9- | aes4.:maj9 des4./ees ees4:7.9- | aes2:maj7 a:0 |
  bes4.:m7 ees8:9 s2 | bes2:m9 ees:7.9- | aes:maj9 bes:13|
  ees2 c:m9 | f1:m9 | aes2:6/bes bes:7.9- | % 9a
  ees4.:maj9 ees8:6 s2 | ees2:maj9 c:m9 | f1:m7 |
  aes2/bes bes:9 | bes:m7 ees:9 | aes1 | bes:m7/aes |
  aes1 | ees/aes | aes2 aes/ges | des/f e:6 | % 10a
  aes2/ees ees4.:9 aes8 | s1 | s1 | bes:m7/aes |
  bes1:m7/aes | aes | s2 aes/ges | des/f fes | s4 bes4.:m7/des aes/c |
  s2 ees | bes:m7 ees:7 | c:m f:m7 | e1:9 | % 11a
  s1 | ees:13 | ees8:7.9+ ees4:9 ees8:7 s2 |
  aes2:maj9 aes:6.9 | aes:maj9 aes:6.9 | aes:maj9 aes:6.9 | s2 r |
}

soprano = \relative {
  \global
  \repeat volta 2 { R1*2 }
  r8^\mf g'8 8 8 4 4
  g8 f4 aes8~2 | r8 f8 8 8 4 4 | f4. ees8~2 |
  r8 g8 8 8 4 4 | g8 f4 aes8~2 | r8 f8 8 8 4 4 |
  f4. ees8~2 | r8 aes g f ees4 d | des8 4 f8~2 | % 4a
  r8 f ees d des4 4 | c4. 8~2 | r8 aes' g f ees4 d |
  des8 4 f8~2 | r8 f8 ees d des4 4 | c4. 8~8 bes'4 aes8 |
  g4 4 4 4 | g8 f4 aes8~2 | r8 f f f f4 4 | % 5a
  f4. ees8~2 | r8 g g g g4 4 | g8 f4 aes8~2 |
  r4 f g aes | bes1 \bar "||" \key aes \major | \grace s8 c1 | des |
  c1 | bes2. r4 | c1 | des | % 6a
  c4 4 bes8 4 aes8~ | aes2. r4 | c1 | des1 |
  c1 | bes2. r4 | c1 | des1 |
  4 4 bes8 4 aes8~ | 4. bes8~2 \bar "||" \key ees \major | r8 g g g g4 4 | % 7a
  g8 f4 aes8~2 | r8 f f f f4 4 | f4. ees8~2 |
  r8 g g g g4 4 | g8 f4 aes8~2 | r8 f8 8 8 4 4 |
  f4. ees8~2 | R1 | R1 | % 8a
  R1 | R1 | R1 |
  R1 | R1 | r2 bes'4. aes8 |
  g4 4 4 4 | 8 f4 aes8 r2 | r8 f8 8 8 4 4 | % 9a
  f4. ees8~2 | r8 g8 8 8 4 4 | 8 f4 aes8 r2 |
  r4 f g aes | bes1 \bar "||" \key aes \major | \grace s8 c1 | des1 |
  c1 | bes2. r4 | 1 | des1 | % 10a
  c4 4 bes8 4 aes8~ | aes2. r4 | c1 | des1 |
  c1 | bes2. r4 | c1 | des1 | c4 des d8 ees4 e8~ |
  e2. r4 | f4 des bes f | ees'8 c4 aes8~4 f | b1~ | % 11a
  b2 r | c1~ | c2 r |
  <c ees>1~ | q1 ~ | q1 | R1 |
  \bar "|."
}

words = \lyricmode {
  Come on a -- long and lis -- ten to __
  the lul -- la -- by of Broad -- way. __
  The hip -- hoo -- ray and bal -- ly -- hoo,
  __ the lul -- la -- by of Broad -- way. __
  The rum -- ble of a sub -- way train. __
  the rat -- tle of the tax -- is. __
  The daf -- fy -- dils who en -- ter -- tain __
  at An -- ge -- lo's and Max -- ie's. __
  When a Broad -- way ba -- by says “Good -- night.” __
  it's ear -- ly in the morn -- in'. __
  Man -- hat -- tan ba -- bies don't sleep tight __
  un -- til the dawn. __
  Good -- night Ba -- by, good -- night. __
  milk -- man's on his way. __
  Sleep tight, Ba -- by.
  sleep __ tight, __ let's call it a day. __ Hey! __

  Come on a -- long and lis -- ten to __
  the lul -- la -- by of Broad -- way. __
  The hi -- dee -- hi and boop -- a -- doo. __
  the lul -- la -- by of Broad -- way. __

  “Hush -- a -- bye, I'll buy you this and that.”
  you hear a dad -- dy say -- ing. __
  And ba -- by goes home to her flat to sleep all day: __
  Good -- night Ba -- by good night. __
  milk -- man's on his way. __
  Sleep tight, Ba -- by. sleep __ tight, __
  let's call it a day. __
  Lis -- ten to the lul -- la -- by __ of old __ Broad -- way. __
  
}

wordsWomenMidi = \lyricmode {
  "Come " "on " a "long " "and " lis "ten " "to " 
  "\nthe " lul la "by " "of " Broad "way. " 
  "\nThe " hip hoo "ray " "and " bal ly "hoo, "
   "\nthe " lul la "by " "of " Broad "way. " 
  "\nThe " rum "ble " "of " "a " sub "way " "train. " 
  "\nthe " rat "tle " "of " "the " tax "is. " 
  "\nThe " daf fy "dils " "who " en ter "tain " 
  "\nat " An ge "lo's " "and " Max "ie's. " 
  "\nWhen " "a " Broad "way " ba "by " "says " “Good "night.” " 
  "\nit's " ear "ly " "in " "the " morn "in'. " 
  "\nMan" hat "tan " ba "bies " "don't " "sleep " "tight " 
  "\nun" "til " "the " "dawn. "
  "\nGood" "night " Ba "by, " good "night. " 
  "\nmilk" "man's " "on " "his " "way. " 
  "\nSleep " "tight, " Ba "by. "
  "\nsleep "  "tight, "  "let's " "call " "it " "a " "day. "  "Hey! " 

  "\nCome " "on " a "long " "and " lis "ten " "to " 
  "\nthe " lul la "by " "of " Broad "way. " 
  "\nThe " hi dee "hi " "and " boop a "doo. " 
  "\nthe " lul la "by " "of " Broad "way. " 

  "\n“Hush" a "bye, " "I'll " "buy " "you " "this " "and " "that.” "
  "\nyou " "hear " "a " dad "dy " say "ing. " 
  "\nAnd " ba "by " "goes " "home " "to " "her " "flat " "to " "sleep " "all " "day: "  "\nGood" "night " Ba "by " "good " "night. " 
  "\nmilk" "man's " "on " "his " "way. " 
  "\nSleep " "tight, " Ba "by. " "sleep "  "tight, " 
  "\nlet's " "call " "it " "a " "day. " 
  "\nLis" "ten " "to " "the " lul la "by "  "of " "old "  Broad "way. " 
}

alto = \relative {
  \global
  \repeat volta 2 { R1*2 }
  r8^\mf g'8 8 8 4 4
  g8 f4 aes8~2 | r8 f8 8 8 4 4 | f4. ees8~2 |
  r8 g8 8 8 4 4 | g8 f4 aes8~2 | r8 f8 8 8 4 4 |
  f4. ees8~2 | r8 aes g f ees4 d | des8 4 f8~2 | % 4a
  r8 f ees d des4 4 | c4. 8~2 | r8 aes' g f ees4 d |
  des8 4 f8~2 | r8 f8 ees d des4 4 | c4. 8~8 bes'4 aes8 |
  g4 4 4 4 | g8 f4 aes8~2 | r8 f f f f4 4 | % 5a
  f4. ees8~2 | r8 g g g g4 4 | g8 f4 aes8~2 |
  r4 f g aes | f1 \bar "||" \key aes \major | \grace s8 ees1 | f |
  ees1 | g2. r4 | ees2(aes) | aes1 | % 6a
  aes4 4 g8 4 ees8~ | ees2. r4 | ees1 | f1 |
  ees1 | g2. r4 | ees2(aes) | aes1 |
  aes4 4 g8 4 ees8~ | ees4. g8~2 | r8 f8 8 8 ees4 4 | % 7a
  ees8 4 8~2 | r8 8 8 8 d4 4 | d4. c8~2 |
  r8 f8 8 8 ees4 4 | 8 4 8~2 | r8 ees8 8 8 d4 4 |
  d4. c8~2 | R1 | R1 | % 8a
  R1 | R1 | R1 |
  R1 | R1 | r2 g'4. 8 |
  f4 4 ees4 4 | 8 4 8 r2 | r8 8 8 8 d4 4 | % 9a
  d4. c8~2 | r8 f8 8 8 ees4 4 | 8 4 8 r2 |
  r4 f g aes | f1 | ees1 | f1 |
  ees1 | g2. r4 | ees2(aes) | aes1 | % 10a
  aes4 4 g8 4 ees8~ | ees2. r4 | ees1 | f1 |
  ees1 | g2. r4 | ees2(aes) | aes1 | aes4 f f8 ees4 fis8~ |
  fis2. r4 | f4 4 4 4 | ees8 4 8~4 4 | ges1 ~ | % 11a
  ges2 r | f1 ~ | f2 r |
  g1 ~ | g1~ | g1 | R1
  \bar "|."
}

tenor = \relative {
  \global
  \repeat volta 2 { R1*2 }
  r8^\mf g8 8 8 4 4
  g8 f4 aes8~2 | r8 f8 8 8 4 4 | f4. ees8~2 |
  r8 g8 8 8 4 4 | g8 f4 aes8~2 | r8 f8 8 8 4 4 |
  f4. ees8~2 | r8 c'8 8 8 4 4 | c8 bes4 des8~2 | % 4a
  r8 bes8 8 8 4 4 | bes4. aes8~2 | r8 c8 8 8 4 4 |
  c8 bes4 d8~2 | r8 bes8 8 8 4 4 | bes4. aes8~8 bes4 c8 |
  bes4 4 4 4 | bes8 aes4 c8~2 | r8 c bes a aes4 4 | % 5a
  g4. 8~2 | r8 bes8 c g bes4 4 | bes8 aes4 c8~2 |
  r4 f, g aes | des1 \key aes \major | \grace s8 c1 | bes |
  c1 | ees2. r4 | c2(ees) | des(bes) | % 6a
  c4 4 des8 4 c8~ | c2. r4 | c1 | bes1 |
  c1 | ees2. r4 | c2(ees) | des(bes) |
  c4 4 des8 4 c8~ | c4. d8~2 \key ees \major | r8 d8 8 8 4 4 | % 7a
  c8 4 8~2 | r8 c8 8 8 ces4 4 | bes4. 8~2 |
  r8 d8 8 8 4 4 | c8 4 8~2 | r8 c8 8 8 ces4 4 |
  bes4. 8~2 | r8^\markup\italic "TB (opt. solo)" c8 8 8 4 4 | c8 bes4 des8~2 | % 8a
  r8 bes8 8 8 4 4 | bes4. aes8~4 r | r8 c8 8 8 4 4 |
  c8 bes4 des8~2 | r8 bes8 8 8 4 4 | bes8 aes r4 d4. 8 |
  d4 4 4 4 | c8 4 8 r2 | r8 c8 8 8 ces4 4 | % 9a
  bes4. 8~2 | r8 d8 8 8 4 4 | c8 4 8 r2 |
  r4 f, g aes | des1 \key aes \major | \grace s8 c1 | bes1 |
  c1 | ees2. r4 | c2(ees) | des(bes) | % 10a
  c4 4 des8 4 c8~ | c2. r4 | c1 | bes1 |
  c1 | ees2. r4 | c2(ees) | des2(bes) | c4 bes b8 c4 d8~ |
  d2. r4 | des4 4 4 4 | bes8 4 c8~4 4 | d1~ | % 11a
  d2 r | des1~ | des2 r |
  ees1~ | ees1~ | ees1 | R1 |
  \bar "|."
}

wordsMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _
  The band be -- gins to go to town. __
  and ev -- 'ry -- one goes cra -- zy. __
  You rock -- a -- bye your ba -- by 'round __
  'til ev -- 'ry -- thing gets ha -- zy.
  
}

wordsMenSingle = \lyricmode {
  Come on a -- long and lis -- ten to __
  the lul -- la -- by of Broad -- way. __
  The hip -- hoo -- ray and bal -- ly -- hoo,
  __ the lul -- la -- by of Broad -- way. __
  The rum -- ble of a sub -- way train. __
  the rat -- tle of the tax -- is. __
  The daf -- fy -- dils who en -- ter -- tain __
  at An -- ge -- lo's and Max -- ie's. __
  When a Broad -- way ba -- by says “Good -- night.” __
  it's ear -- ly in the morn -- in'. __
  Man -- hat -- tan ba -- bies don't sleep tight __
  un -- til the dawn. __
  Good -- night Ba -- by, good -- night. __
  milk -- man's on his way. __
  Sleep tight, Ba -- by.
  sleep __ tight, __ let's call it a day. __ Hey! __

  Come on a -- long and lis -- ten to __
  the lul -- la -- by of Broad -- way. __
  The hi -- dee -- hi and boop -- a -- doo. __
  the lul -- la -- by of Broad -- way. __

  The band be -- gins to go to town. __
  and ev -- 'ry -- one goes cra -- zy. __
  You rock -- a -- bye your ba -- by 'round __
  'til ev -- 'ry -- thing gets ha -- zy.

  “Hush -- a -- bye, I'll buy you this and that.”
  you hear a dad -- dy say -- ing. __
  And ba -- by goes home to her flat to sleep all day: __
  Good -- night Ba -- by good night. __
  milk -- man's on his way. __
  Sleep tight, Ba -- by. sleep __ tight, __
  let's call it a day. __
  Lis -- ten to the lul -- la -- by __ of old __ Broad -- way. __
  
}

wordsMenMidi = \lyricmode {
  "Come " "on " a "long " "and " lis "ten " "to " 
  "\nthe " lul la "by " "of " Broad "way. " 
  "\nThe " hip hoo "ray " "and " bal ly "hoo, "
   "\nthe " lul la "by " "of " Broad "way. " 
  "\nThe " rum "ble " "of " "a " sub "way " "train. " 
  "\nthe " rat "tle " "of " "the " tax "is. " 
  "\nThe " daf fy "dils " "who " en ter "tain " 
  "\nat " An ge "lo's " "and " Max "ie's. " 
  "\nWhen " "a " Broad "way " ba "by " "says " “Good "night.” " 
  "\nit's " ear "ly " "in " "the " morn "in'. " 
  "\nMan" hat "tan " ba "bies " "don't " "sleep " "tight " 
  "\nun" "til " "the " "dawn. "
  "\nGood" "night " Ba "by, " good "night. " 
  "\nmilk" "man's " "on " "his " "way. " 
  "\nSleep " "tight, " Ba "by. "
  "\nsleep "  "tight, "  "let's " "call " "it " "a " "day. "  "Hey! " 

  "\nCome " "on " a "long " "and " lis "ten " "to " 
  "\nthe " lul la "by " "of " Broad "way. " 
  "\nThe " hi dee "hi " "and " boop a "doo. " 
  "\nthe " lul la "by " "of " Broad "way. " 

  "\nThe " "band " be "gins " "to " "go " "to " "town. " 
  "\nand " ev 'ry "one " "goes " cra "zy. " 
  "\nYou " rock a "bye " "your " ba "by " "'round " 
  "\n'til " ev 'ry "thing " "gets " ha "zy. "
  
  "\n“Hush" a "bye, " "I'll " "buy " "you " "this " "and " "that.” "
  "\nyou " "hear " "a " dad "dy " say "ing. " 
  "\nAnd " ba "by " "goes " "home " "to " "her " "flat " "to " "sleep " "all " "day: " 
  "\nGood" "night " Ba "by " "good " "night. " 
  "\nmilk" "man's " "on " "his " "way. " 
  "\nSleep " "tight, " Ba "by. " "sleep "  "tight, " 
  "\nlet's " "call " "it " "a " "day. " 
  "\nLis" "ten " "to " "the " lul la "by "  "of " "old "  Broad "way. " 
}

bass = \relative {
  \global
  \repeat volta 2 { R1*2 }
  r8^\mf g8 8 8 4 4
  g8 f4 aes8~2 | r8 f8 8 8 4 4 | f4. ees8~2 |
  r8 g8 8 8 4 4 | g8 f4 aes8~2 | r8 f8 8 8 4 4 |
  f4. ees8~2 | r8 c'8 8 8 4 4 | c8 bes4 des8~2 | % 4a
  r8 bes8 8 8 4 4 | bes4. aes8~2 | r8 c8 8 8 4 4 |
  c8 bes4 d8~2 | r8 bes8 8 8 4 4 | bes4. aes8~8 bes4 c8 |
  bes4 4 4 4 | bes8 aes4 c8~2 | r8 c bes a aes4 4 | % 5a
  g4. 8~2 | r8 bes8 c g bes4 4 | bes8 aes4 c8~2 |
  r4 f, g aes | aes2(g) | \key aes \major \grace s8 aes1 | aes1 |
  aes1 | bes2. r4 | aes2(ges) | f(e) | % 6a
  ees4 4 8 4 aes8~ | aes2. r4 | aes1 | aes1 |
  aes1 | bes2. r4 | aes2(ges) | f(e) |
  ees4 4 8 4 aes8~ | aes4. 8~2 | r8 bes8 8 8 4 4 | % 7a
  bes8 aes4 f8~2 | r8 aes8 8 8 4 4 | g4. 8~2 |
  r8 bes8 8 8 4 4 | bes8 aes4 f8~2 | r8 aes8 8 8 4 4 |
  g4. 8~2 | r8 c8 8 8 4 4 | c8 bes4 des8~2 | % 8a
  r8 bes8 8 8 4 4 | bes4. aes8~4 r | r8 c8 8 8 4 4 |
  c8 bes4 des8~2 | r8 bes8 8 8 4 4 | bes8 aes r4 aes4. 8 |
  bes4 4 4 4 | bes8 aes4 f8 r2 | r8 aes8 8 8 4 4 | % 9a
  g4. 8~2 | r8 bes8 8 8 4 4 | bes8 aes4 f8 r2 |
  r4 f g aes | aes2(g) | aes1 | aes1 |
  aes1 | bes2. r4 | aes2(ges) | f(e) | % 10a
  ees4 4 8 4 aes8~ | aes2. r4 | aes1 | aes1 |
  aes1 | bes2. r4 | aes2(ges) | f(e) | ees4 aes4 8 4 a8~( |
  a2 gis4) r | aes4 4 g g | g8 4 aes8~4 4 | aes1~ | % 11a
  aes2 r | g1~ | g2 r |
  bes1~ | bes1~ | bes1 | R1 |
  \bar "|."
}

pianoRHone = \relative {
  \global \ov
  \repeat volta 2 {
    r8 bes' c g bes4 c-. |
    <aes, ees' g>4 c8 <aes bes>~2 |
  }
  r8 bes' c g <ees bes'>4 <ees c'>-. |
  <a, ees' g>4 c8 <aes c ees f>8~2 | % 3b
  r8 bes' c g <d aes' bes>4 <d aes' c>-. |
  <bes d f g>4 c8 <g bes>~2 |
  r8 bes' c g <ees bes'>4 <ees '>-. | % 3c
  <aes, ees' g>4 c8 <aes c ees f>~2 |
  r8 bes c g <d aes' bes>4 <d aes' c>-. |
  <bes d g>4 ees8 <des ees>~q2 | % 4a
  r8 <c ees>8 f c <ges c ees>4 <ges c f>-. |
  <aes des f>8 <aes des ees>8-. r q8~2 |
  r8 <des ees> f bes, <g des' ees>4 <g des' f>-. | % 4b
  <g bes c f>8 <g bes c ees>-. r <f bes c ees>~2 |
  r8 <c' ees> f c <aes c ees>4 <aes c ees f>-. |
  <aes des f>8 <aes des ees>-. r q~2 | % 4c
  r8 <des ees>8 f bes, <g des' ees>4 <g des' f>-. |
  <g bes c f>8 <f bes c ees>-. r q-. r <aes c d g>4.-> |
  r8 bes' c g <ees bes>4 <bes c'>-. | % 5a
  <ees aes c>8 <ees aes bes>-. r q~2 |
  r8 bes' c f, <d aes' bes>4 <d aes' c>-. |
  <bes d f g>4 c8 <g bes>~2 | % 5b
  r8 bes' c g <ees bes'>4 <ees c'>-. |
  <aes, ees' g>4 c8 <aes c ees f>~2 |
  <aes c ees>4(c) <aes c d f>(bes) | % 5c
  <a des f>(c') <d, f g bes>(ees) \key aes \major |
  \acciaccatura ees'8 ees'2(ees,) |
  \acciaccatura ees8 ees'2(ees,) |
  \acciaccatura ees8 ees'2(ees,) | % 6a
  \acciaccatura ees8 ees'2(ees,) |
  \acciaccatura ees8 ees'2 ees, |
  \acciaccatura ees8 ees'2 <aes,, aes'> |
  s1 | \vo r4 ees'(aes f') | % 6b
  \ov \acciaccatura ees,8 ees'2(ees,) |
  \acciaccatura ees8 ees'2(ees,) |
  \acciaccatura ees8 ees'2(ees,) | % 6c
  \acciaccatura ees8 ees'2(ees,) |
  \acciaccatura ees8 ees'2 ees, |
  \acciaccatura ees8 ees'2 <aes,, aes'> |
  <ees aes c ees>4-. <aes, c ees>-. <g des' ees>8-- <g des' f>-. r <c ees aes>->~ | % 7a
  q4. <aes c d g>8~2 \key ees \major |
  r8 bes' c g <ees bes'>4 <ees c'>-. |
  <aes, ees' g>8 c-. r <aes c>~2 | % 7b
  r8 bes' c g <d aes' bes>4 <d aes' ces>-. |
  <d f g bes>4. c'8 \acciaccatura fis,8 g ees c bes~ |
  bes4 <bes c>-. <bes d>-. <bes ees>-. | % 7c
  <aes c ees>8 c-. r <aes c ees f>~2 |
  r8 bes' c g <d aes' bes>4 <aes c d g> |
  <g bes c ees>2. <g b des ees>4 | % 8a
  <g bes c ees>2 <c ees g aes> |
  <aes c des f>4. <g c des f>8~2 |
  r8 <aes c des f>4. <g d' e>4-. q-- | % 8b
  <g bes c ees>4. <aes c des f>8~4 <g bes des e> |
  r8 <c ees> f c <ges c ees>4 q-. |
  f'8 <des f aes c>-. r <des f g bes>~2 | % 8c
  r8 <a c des f>4. <g des' e>4. <g bes c ees>8~ |
  q2 <aes c d g> |
  r8 bes'8 c g <ees bes'>4 <ees c'>-. | % 9a
  <aes, ees' g>8 c-. r <aes c>~2 |
  r8 bes'8 c g <d aes' bes>4 c'8 <bes, d f g>8~ |
  q4 c8 <g bes>~2 | % 9b
  r8 bes <bes c>4-. <bes d>-- <bes ees>-. |
  <aes c>8 <aes c g'>-. r <aes c ees f>8~2 |
  <aes c ees>4~c <aes c d f> (bes) | % 9c
  <des f aes bes>4 ~f <des f g>(ees) \key aes \major |
  \acciaccatura ees'8 ees'2(ees,) |
  \acciaccatura ees8 ees'2(ees,) |
  \acciaccatura ees8 ees'2(ees,) | % 10a
  \acciaccatura ees8 ees'2(ees,)
  \acciaccatura ees8 ees'2 ees, |
  \acciaccatura ees8 ees'2 <aes,, aes'> |
  s1 | % 10b
  \vo r4 ees'(aes ees') |
  \ov \acciaccatura ees,8 ees'2(ees,) |
  \acciaccatura ees8 ees'2(ees,) |
  \acciaccatura ees8 ees'2(ees,) | % 10c
  \acciaccatura ees8 ees'2(ees,) |
  \acciaccatura ees8 ees'2 ees, |
  \acciaccatura ees8 ees'2 <aes,, aes'> |
  <aes, c ees>4-. <aes bes f'>-. <aes d f>8-- <aes c ees f>-. r <d e>~ |
  <d e>1 | % 11a
  r8 <aes des f>4. r8 <g des' ees>4. |
  r8 <bes ees g>4 <c ees aes>8~4 <aes c ees> |
  r8 <d e> fis b, <gis d' e>4 <d' f>8 b |
  <gis d' e>8 <gis d' fis>-. r <gis d' e>~2 | % 11b
  r8 <des' ees> g bes, <g des' ees>4 <des' f>8 ees |
  <g, d' ges>8 <g d' f>-. r <g d' ees>8~2 |
  r8 ees'' f c <f, bes ees>4 <f bes f'>-. | % 11c
  r8 ees' f c <f, bes ees>4 <f bes f'>-. |
  r8 ees' f c <f, bes ees>4 f'8 <aes, aes'>-. |
  r4 r8 aes,-. r2 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  \repeat volta 2 {
    s8 g'4 s8 ees4 4-. |
    s1 |
  }
  s8 g4 s8 s2 |
  s1 | r8 ees4. s2 | s1 | % 3b
  a8 g4 s8 s2 | s1 | r8 ees4. s2 |
  s4. aes,8~4 g | r8 g4. s2 | s1 | % 4a
  s8 aes4. s2 | s1 | s8 g4. s2 |
  s1 | s8 aes4. s2 | s1 |
  s8 g'4 s8 s2 | s1 | s8 ees4. s2 | % 5a
  s1 | s8 g4 s8 s2 | s1 |
  s1 | s1 | \grace s8 s1 | \grace s8 s1 |
  s1*4 | % 6a
  \ov <ees aes c ees>4-. <aes, c ees>-. <g des' ees>8-- <g des' f>-. r <c ees aes>-> ~ | % 6b
  \vt q1 | s1 | s1 |
  s1*4 % 6c
  s1 | s1 | s8 g'4 s8 s2 | % 7a
  s1 | s8 ees4. s2 | s1
  s1 | s1 | s8 ees4. s2 |
  s1 | s1 | s1 % 8a
  s1 | s1 | s8 g,4. s2 |
  s1 | s1 | s1 |
  s8 g'4 s8 s2 | s1 | s8 ees4. s2 | % 9a
  s1*11
  <ees aes c ees>4. <aes, c ees>8-. <g d' ees>8-- <g d' f>-. r <c ees aes>~ | % 10b
  q1 |
  s1*6
  s2.. a8 ~ |
  a2 gis | s1 | s1 | s8 gis4. s4 gis | % 11a
  s1 | s8 g4. s4 g | s1 |
  s8 <g' c>4 s8 s2 | s8 <g c>4 s8 s2 | s8 <g c>4 s8 s2 | s1 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 { s1\mf s1 }
  s1*90
}

pianoLH = \relative {
  \global
  \repeat volta 2 {
    ees,2 c |
    f4. bes,8~8 c d4 |
  }
  ees2 c |
  f4. f,8~8 g aes a | bes2 bes'4 bes, | ees4. bes8~8 b c d | % 3b
  ees2 aes | f4. f,8~8 g aes a | bes2 bes'4 bes, |
  ees4. bes8~4 a4 | aes2 a | bes4. bes'8~8 bes, f' e | % 4a
  ees2 ees'4 ees, | aes4. aes,8~8 ees' f g | aes2 f |
  bes4. bes,8~8 c des d | ees2 ees'4 ees, | aes4. aes,8 r bes c d |
  ees2 c | f4. f,8~8 g aes a | bes2 bes'4 bes, | % 5a
  ees4. bes8~8 b c d | ees2 c | f4. f,8~8 g aes a |
  bes2 bes' | bes,2 ees \key aes \major | \grace s8 <aes, aes'>1 | q1 |
  q1 | q1 | q2 ges' | f e | % 6a
  ees4-. 4-. 8-- 8-. r aes-> ~ | aes1 | <aes, aes'> | q |
  q1 | q | q2 ges' | f e |
  ees4-. 4-. 8-- 8-. r aes-> ~ | 4. bes8~4 bes, \key ees \major | ees2 c | % 7a
  f4. f,8~8 g aes a | bes2 bes'4 bes, | ees4. bes8~8 b c d |
  ees2 c | f4. f,8~8 g aes a | bes2 bes'4 bes, |
  ees4. a,8 bes ees aes,4 | aes4. aes'8 f4 c | bes4. ees8~8 f c ces | % 8a
  bes4. 8 ees4. 8 | aes4. ees8~8 8 f g | aes4. 8 a4. 8 |
  bes4. ees,8~8 8 c ces | bes4. 8 ees4. 8 | aes4. a8 bes4 bes, |
  ees2 c | f4. f,8~8 g aes a | bes2 bes'4 bes, | % 9a
  ees4. bes8~8 b c d | ees2 c | f,4. f'8~8 g aes a |
  bes2 bes, | 2 ees \key aes \major | \acciaccatura s8 <aes, aes'>1 | q |
  q1 | q | s2 ges' | f e | % 10a
  ees4-. 4-. 8-- 8-. r aes-> ~ | 1 | <aes, aes'>1 | q |
  q1 | q | q2 ges' | f e | ees4-. des-. b8-- c-. r b~ |
  b2 e | bes4. 8 ees4 d | c4. f8~4 4 | e2 b | % 11a
  e4. ais,8 b b'-> e,4 | ees2 bes | ees4. a,8 bes ees a,4 |
  aes4. d8 ees4. g8 | aes4. b,8 ees4. g,8 | aes4. d8 ees4 g8 aes-. | r4 r8 <aes, aes'>8-. r2 |
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = single
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMenSingle
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMenSingle
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMenSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsMenSingle}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMenSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsMenSingle}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMenSingle
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsMenSingle}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMenSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMenSingle
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = midi-women
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsWomenMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
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
    output-suffix = midi-men
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMenMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
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
