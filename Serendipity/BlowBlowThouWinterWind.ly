\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Blow, Blow, Thou Winter Wind"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Purifoy"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "William Shakespeare"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
}

TempoTrack = {
  \tempo "With motion, felt in one" 4=148
  s2.
  \set Score.tempoHideNote = ##t
  s2.*95
  \tempo 4=140
  s2.
  s2.
  s2.
  \tempo 4=120
  s2.
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "2a" } s2.*4
  \mark \markup { \circle "2b" } s2.*5
  \mark \markup { \circle "2c" } s2.*5
  \mark \markup { \circle "3a" } s2.*5
  \mark \markup { \circle "3b" } s2.*5
  \mark \markup { \circle "3c" } s2.*5
  \mark \markup { \circle "4a" } s2.*5
  \mark \markup { \circle "4b" } s2.*5
  \mark \markup { \circle "4c" } s2.*5
  \mark \markup { \circle "5a" } s2.*5
  \mark \markup { \circle "5b" } s2.*5
  \mark \markup { \circle "5c" } s2.*5
  \mark \markup { \circle "6a" } s2.*5
  \mark \markup { \circle "6b" } s2.*5
  \mark \markup { \circle "6c" } s2.*5
  \mark \markup { \circle "7a" } s2.*4
  \mark \markup { \circle "7b" } s2.*5
  \mark \markup { \circle "7c" } s2.*5
  \mark \markup { \circle "8a" } s2.*4
  \mark \markup { \circle "8b" } s2.*5
  \mark \markup { \circle "8c" } s2.*5
}

soprano = \relative {
  \global
  R2.*4
  e'4.^\p (fis8 g4) % 2b
  b2 g4
  a8 g fis2~
  fis2 r4
  g2^\mp 4
  fis4 e d % 2c
  e2.^\< ~
  e2 d'4^\mf
  c2 4
  d2 a4
  b2.~ % 3a
  b2 r4
  c4 c b
  a4 g a
  b4 b a
  g4 fis g % 3b
  a4^\< a b
  c4.^\f r8 a4
  b2.^\mf^\cresc ~
  b2.~
  b2.~ % 3c
  b2.^\f
  R2.
  R2.
  e4^\mf ( fis e
  b2.) % 4a
  d2 4
  d4 a2
  c2 4
  c4 g2
  a2^\mp^\dim 4 % 4b
  a4 d2
  b2.^\p ~
  b2.~
  b2.
  r4 r d,^\mf % 4c
  g4 g d
  g2 4
  a4 g a
  b4 g2
  r4 r b % 5a
  c4 b c
  a4 g a
  b4 a b
  g4 fis g
  a2. % 5b
  a2^\< c4\! <a d>4->^\f a2~
  a2.
  r4 r d,^\mp
  a'4 g fis % 5c
  g4 e2~
  e2.~
  e2.
  R2. \bar "||" \key aes \major
  R2. % 6a
  R2.
  f4.^\mf (g8 aes4)
  c2 aes4
  bes8 aes g2~
  g2 r4 % 6b
  aes2 4
  g4 f ees
  f2.~
  f2 c'4
  des2 4 % 6c
  ees2 bes4
  c2.~
  c2 r4
  des4 4 c
  bes4 aes bes % 7a
  c4 c bes
  aes4 g aes
  bes8^\< 8 4 c
  des4->^\f bes r % 7b
  c2.->^\mf^\cresc ~
  c2.~
  c2.~
  c2.^\f
  R2. % 7c
  R2.
  f4^\mf (g f
  c2.)
  ees2 4
  ees4 bes2 % 8a
  des2^\> 4
  des4^\mp aes2
  bes2 4
  bes4^\> <bes ees>2 % 8b
  c2.^\p ~
  c2.~
  c2.^\markup\italic rit.
  R2.
  f,4^\pp ees f~ % 8c
  f2.~
  f2.^\markup\italic "molto rit."
  R2.
  f2.\fermata

  \bar "|."
}

wordsSop = \lyricmode {
  Blow, __ blow, thou win -- ter wind, __
  Thou art not so un -- kind. __
  As man's in -- grat -- i -- tude; __
  Thy tooth is not so keen,
  Be -- cause thou art not seen,
  Al -- though thy breath be rude? __

  Blow, blow, thou win -- ter wind,
  thou win -- ter wind, thou win -- ter wind. __

  Heigh -- ho! Sing heigh -- ho! un -- to the green hol -- ly:
  Most friend -- ship is feign -- ing, most lov -- ing more fol -- ly:
  Then heigh -- ho, the hol -- ly! __
  This life is most jol -- ly. __

  Freeze, __ freeze, thou bit -- ter sky, __
  That does not bite so nigh __
  As be -- ne -- fits for -- got; __
  Though thou the wa -- ters warp,
  Thy sting is not so sharp
  As a friend re -- mem -- bered not! __

  Blow, blow, thou win -- ter wind,
  thou win -- ter wind, thou win -- ter wind. __
  win -- ter wind, __ blow.
}

wordsWomenMidi = \lyricmode {
  "Blow, "  "blow, " "thou " win "ter " "wind, " 
  "\nThou " "art " "not " "so " un "kind. " 
  "\nAs " "man's " in grat i "tude; " 
  "\nThy " "tooth " "is " "not " "so " "keen, "
  "\nBe" "cause " "thou " "art " "not " "seen, "
  "\nAl" "though " "thy " "breath " "be " "rude? " 

  "\nBlow, " "blow, " "thou " win "ter " "wind, "
  "\nthou " win "ter " "wind, " "thou " win "ter " "wind. " 

  "\nHeigh" "ho! " "Sing " heigh "ho! " un "to " "the " "green " hol "ly: "
  "\nMost " friend "ship " "is " feign "ing, " "most " lov "ing " "more " fol "ly: "
  "\nThen " heigh "ho, " "the " hol "ly! " 
  "\nThis " "life " "is " "most " jol "ly. " 

  "\nFreeze, "  "freeze, " "thou " bit "ter " "sky, " 
  "\nThat " "does " "not " "bite " "so " "nigh " 
  "\nAs " be ne "fits " for "got; " 
  "\nThough " "thou " "the " wa "ters " "warp, "
  "\nThy " "sting " "is " "not " "so " "sharp "
  "\nAs " "a " "friend " re mem "bered " "not! " 

  "\nBlow, " "blow, " "thou " win "ter " "wind, "
  "\nthou " win "ter " "wind, " "thou " win "ter " "wind. " 
  "\nwin" "ter " "wind, "  "blow. "
}

alto = \relative {
  \global
  R2.*4
  e'4.^\p (fis8 g4) % 2b
  b2 g4
  a8 g fis2~
  fis2 r4
  g2^\mp 4
  fis4 e d % 2c
  e2.^\< ~
  e2 4^\mf
  e2 4
  d2 4
  d2. ~ % 3a
  d2 r4
  e4 4 d
  c4 4 4
  d4 4 4
  b4 4 4 % 3b
  e4^\< e e
  e4.->^\f r8 4
  b2.->^\mf^\cresc ~
  b2.~
  b2.~ % 3c
  b2.^\f
  R2.
  R2.
  e4^\mf(fis g
  b2.) % 4a
  <fis a>2 4
  q4 <d fis>2
  <e g>2 q4
  q4 <c e>2
  <d fis>2^\mp^\dim q4 % 4b
  q4 <d a'>2
  e2.^\p ~
  e2.~
  e2.
  r4 r d^\mf % 4c
  d4 4 4
  d2 4
  e4 4 fis
  g4 d2
  r4 r d % 5a
  e4 4 4
  d4 4 4
  d4 4 4
  c4 4 4
  c2. % 5b
  e2^\< 4\!
  d4->^\f 2~
  d2.
  r4 r d4^\mp
  a'4 g fis % 5c
  g4 e2~
  e2.~
  e2.
  R2. \key aes \major
  R2. % 6a
  R2.
  f4.^\mf (g8 aes4)
  f2 4
  g8 f ees2~
  ees2 r4 % 6b
  des2 4
  ees4 f ees
  f2.~
  f2 4
  f2 4 % 6c
  ees2 4
  ees2.~
  ees2 r4
  f4 4 ees
  des4 4 4 % 7a
  ees4 4 4
  c4 4 4
  f8^\< 8 4 4
  f4->^\f des r % 7b
  c2.->^\f^\cresc ~
  c2.~
  c2.~
  c2.^\f
  R2. % 7c
  R2.
  f4^\mf (g aes
  c2.)
  <g bes>2 4
  q4 <ees g>2 % 8a
  <f aes>2^\> 4
  q4^\mp <des f>2
  <ees g>2 4
  q4^\> ees2 % 8b
  f2.^\p ~
  f2.~
  f2.
  R2.
  f4^\pp ees f~ % 8c
  f2.~
  f2.
  R2.
  f2.\fermata
  \bar "|."
}

tenor = \relative {
  \global
  R2.*4 
  e4.^\p (f8 g4) % 2b
  b2 g4
  a8 g fis2~
  fis2 r4
  g2^\mp 4
  fis4 e d % 2c
  e2.^\< ~
  e2 g4^\mf
  a2 g4
  fis 2 4
  g2.~ % 3a
  g2 r4
  e4 4 4
  g4 e fis
  fis4 4 d
  e4 d e % 3b
  c'4^\< 4 b
  a4.->^\f r8 c4
  b2.->^\mf^\cresc ~
  b2.~
  b2.~ % 3c
  b2.^\f
  R2.
  R2.
  R2.
  g4^\mf ( a g % 4a
  a2.~
  a2) 4
  g4^\dim fis g~
  g2 4
  a4^\mp g^\dim a~ % 4b
  a2 4
  b4^\p a b~
  b2.~
  b2.
  r4 r d,^\mf b'4 4 a % 4c
  b2 4
  c4 4 a
  g4 b2
  r4 r g % 5a
  a4 g a
  fis4 e fis
  g4 fis g
  e4 d e
  e2. % 5b
  c'2^\< 4\!
  a4->^\f a2~
  a2.
  r4 r d,^\mp
  a'4 g fis % 5c
  g4 e2~
  e2.~
  e2.
  R2. \key aes \major
  R2. % 6a
  R2.
  f4.^\mf (g8 aes4)
  c2 aes4
  bes8 c bes2~
  bes2 r4 % 6b
  aes2 4
  bes4 aes g
  f2.~
  f2 aes4
  bes2 aes4 % 6c
  g2 4
  aes2.~
  aes2 r4
  f4 4 4
  aes4 f g % 7a
  g4 g ees
  f4 ees aes
  des8^\< 8 4 c
  bes4->^\f bes r % 7b
  c2.->^\mf^\cresc ~
  c2.~
  c2.~
  c2.^\f
  R2. % 7c
  R2.
  R2.
  aes4^\mf (bes aes
  bes2.~
  bes2) 4 % 8a
  aes4^\> g aes~
  aes2^\mp 4
  bes4 aes bes~
  bes2^\> 4 % 8b
  c4^\p bes c~
  c2.~
  s2.^\markup\italic rit.
  R2.
  R2. % 8c
  aes4^\pp g aes~
  aes2.^\markup\italic "molto rit."
  R2.
  aes2.\fermata
  \bar "|."
}

wordsMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Blow, __ thou win -- ter wind, __
  thou win -- ter wind, __
  thou win -- ter wind. __
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _

  Blow, __ thou win -- ter wind, __
  thou win -- ter wind, __
  thou win -- ter wind. __
  win -- ter wind, blow.
}

wordsMenMidi = \lyricmode {
  "Blow, "  "blow, " "thou " win "ter " "wind, " 
  "\nThou " "art " "not " "so " un "kind. " 
  "\nAs " "man's " in grat i "tude; " 
  "\nThy " "tooth " "is " "not " "so " "keen, "
  "\nBe" "cause " "thou " "art " "not " "seen, "
  "\nAl" "though " "thy " "breath " "be " "rude? " 

  "\nBlow, "  "thou " win "ter " "wind, " 
  "\nthou " win "ter " "wind, " 
  "\nthou " win "ter " "wind. " 

  "\nHeigh" "ho! " "Sing " heigh "ho! " un "to " "the " "green " hol "ly: "
  "\nMost " friend "ship " "is " feign "ing, " "most " lov "ing " "more " fol "ly: "
  "\nThen " heigh "ho, " "the " hol "ly! " 
  "\nThis " "life " "is " "most " jol "ly. " 

  "\nFreeze, "  "freeze, " "thou " bit "ter " "sky, " 
  "\nThat " "does " "not " "bite " "so " "nigh " 
  "\nAs " be ne "fits " for "got; " 
  "\nThough " "thou " "the " wa "ters " "warp, "
  "\nThy " "sting " "is " "not " "so " "sharp "
  "\nAs " "a " "friend " re mem "bered " "not! " 

  "\nBlow, "  "thou " win "ter " "wind, " 
  "\nthou " win "ter " "wind, " 
  "\nthou " win "ter " "wind. " 
  "\nwin" "ter " "wind, " "blow. "
}

bass = \relative {
  \global
  R2.*4
  e4.^\p (f8 g4) % 2b
  b2 g4
  a8 g fis2~
  fis2 r4
  g2^\mp 4
  fis4 e d % 2c
  e2.^\< ~
  e2 4^\mf
  a,2 4
  d2 4
  g,2.~ % 3a
  g2 r4
  a4 4 4
  d4 4 4
  g,4 4 4
  c4 d e % 3b
  fis4^\< 4 4
  fis4.->^\f r8 4
  b,2.->^\mf^\cresc ~
  b2.~
  b2.~ % 3c
  b2.^\f
  R2.
  R2.
  R2.
  e4^\mf(fis e % 4a
  fis2.~
  fis2) 4
  e4^\dim d e~
  e2 4
  fis4^\mp e^\dim fis~ % 4b
  fis2 4
  g4^\p fis g~
  g2.~
  g2.
  r4 r d^\mf % 4c
  g4 4 fis
  g2 4
  d4 4 4
  g,4 2
  r4 r g' % 5a
  a4 g a
  fis4 e fis
  g4 fis g
  e4 d e
  a,2. % 5b
  a'2^\< g4\!
  fis4->^\f d2~
  d2.
  r4 r d^\mp
  a'4 g fis % 5c
  g4 e2~
  e2.~
  e2.
  R2. \key aes \major
  R2. % 6a
  R2.
  f4.^\mf ( g8 aes4)
  aes2 f4
  g8 aes g2~
  g2 r4 % 6b
  f2 4
  g4 aes g
  f2.~
  f2 4
  bes,2 4 % 6c
  ees2 4
  aes,2.~
  aes2 r4
  bes4 4 4
  ees4 4 4 % 7a
  aes,4 4 4
  des4 ees f
  g8^\< 8 4 4
  g4^\f g r % 7b
  c,2.->^\mf^\cresc ~
  c2.~
  c2.~
  c2.\^\f
  R2. % 7c
  R2.
  R2.
  f4^\mf ( g f
  g2.~
  g2) 4 % 8a
  f4^\> ees4 f4~
  f2^\mp 4
  g4 f g~
  g2^\> 4\! % 8b
  aes4^\p g aes~
  aes2.~
  aes2.
  R2.
  R2. % 8c
  aes4^\pp g aes~
  aes2.
  R2.
  f2.\fermata
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  r4\omit\p fis8 g a b
  r4 fis8 g a b
  r4 fis8 g a b
  r4 fis8 g a b
  r4 fis8 g a b % 2b
  r4 fis8 g a b
  r4\omit\cresc fis8 g a d
  r4 fis,8 g a d
  r4\omit\mp g,8 c d e
  r4 a,8 d e fis % 2c
  r4\omit\< fis8 g a b
  r4 fis8 g a\omit\mf b
  c4 c,8 e a c
  d4. d,8 fis a
  b2.~ % 3a
  b2.
  <e, c'>4. c8 b' c,
  a'8 c, g' c, a'4
  <d, b'>8 b b' b, a' b,
  g'8 b, fis' b, g'4 % 3b
  <c, e a>8\omit\< a a' a, <e' b'> d
  <c e a c>2.->\omit\f
  b8->\omit\mf c d\omit\cresc e fis g
  c,8-> d e fis g a
  e8-> fis g a b c % 3c
  fis,8->\omit\f g a b c d
  e4-> fis,,8\omit\mp g a b
  r4\omit\< fis8 g a b
  r4\omit\mf fis8 g a b
  r4 fis8 g a b % 4a
  <fis a d>4 fis8 a d fis~
  fis4 a,8 d fis a
  <c, e g>4\omit\dim c8 e g c~
  c4 e,8 g c e
  <fis, a d>4\omit\mp fis8\omit\dim a d fis~ % 4b
  fis4 a,8 d fis a
  r4\omit\p fis,8 g a b
  r4 fis8 g a b
  r4 fis8\omit\< g a b
  <d, fis d'>2\omit\mf d4 % 4c
  <b d g>4 q <a d fis>
  <b d g>2 4
  <c e a>4 <c e g> <d fis a>
  <d g b>4 <b d g>2
  <a' d>4-> <g b>2 % 5a
  c4 b c
  a4 g a
  b4 a b
  g4 fis g
  <c, e a>2.\omit\< % 5b
  <a' c e>2 <e c'>4\!
  <d a' d>4->\omit\f <d a'>2
  <e a>4 <d fis> <e a>
  <d d'>2.->~
  q2. % 5c
  r4\omit\mp fis,8 g a b
  r4 fis8 g a b
  r4 fis8 g a b
  r4 fis8\omit\< g a b \key aes \major
  r4\omit\mf g8 aes bes c % 6a
  r4 g8 aes bes c
  r4 g8 aes bes c
  r4 g8 aes bes c
  r4 g8 bes ees f
  r4 g,8 bes ees f % 6b
  r4 aes,8 des ees f
  r4 bes,8 ees f g
  r4 g8 aes bes c
  r4 g8 aes bes c
  f4 des,8 f bes des % 6c
  ees4. ees,8 g bes
  c2.~
  c2.
  <f, des'>4. des8 c' des,
  bes'8 des, aes' des, bes'4 % 7a
  <ees, c'>8 c c' c, bes' c,
  aes' c, g' c, aes'4
  <des, f bes>8\omit\< bes bes' bes, <f' c'> c
  <des f bes des>2.->\omit\f % 7b
  c8->\omit\mf\omit\cresc des ees f g aes
  des,8-> ees f g aes bes
  f8-> g aes bes c des
  g,8->\omit\f aes bes c des ees
  f4 g,,8\omit\mf aes bes c % 7c
  r4 g8 aes bes c
  r4 g8 aes bes c
  r4 g8 aes bes c
  <g bes ees>4 g8 aes ees' g~
  g4 bes,8 ees g bes
  <des, f aes>4\omit\> des8 f aes des~
  des4\omit\mp f,8 aes des f
  <g, bes ees>4 g8 bes ees g~
  g4\omit\> bes,8 ees g aes % 8b
  r4\omit\p g,8 aes bes c
  r4 g8 aes bes c
  r4 g8 aes bes c
  r4 g8\omit\> aes bes c
  r4\omit\pp g'8 aes bes c % 8c
  r4 g8 aes bes c
  \ottava #1 r4 g'8 aes bes c
  r4 g8 aes bes c
  <f aes>2.\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s2.*14
  r4 r8 b\omit\mf d g % 3a
  r4 r8 b, d g
  s2.*29
  e2. % 5a+
  d2.
  d2.
  c2.
  s2.*22 % now aes major
  r4 r8 c ees aes % 6c++
  r4 r8 c, ees aes
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\p
  s2.*5
  s2.\cresc % 2b++
  s2.
  s2.\mp
  s2. % 2c
  s2.\<
  s2 s4\mf
  s2.
  s2.
  s2.*5
  s2. % 3b
  s2.\<
  s2.\f
  s4\mf s2\cresc
  s2.
  s2. % 3c
  s2.\f
  s4 s2\mp s2.\<
  s2.\mf
  s2.
  s2. % 4a
  s2.
  s2.\dim
  s2.
  s4\mp s2\dim % 4b
  s2.
  s2.\p
  s2.
  s4 s2\<
  s2.\mf % 4c
  s2.*9
  s4. s\< % 5b
  s2.
  s2.\f
  s2.
  s2.
  s2. % 5c
  s2.\mp
  s2.
  s2.
  s4 s2\<
  s2.\mf % 6a
  s2.*17
  s2.\< % 7a+++
  s2.\f % 7b
  s4\mf s2\cresc
  s2.
  s2.
  s2.\f
  s4 s2\mf
  s2.*5
  s2.\> % a+
  s2.\mp
  s2.
  s2.\> % 8b
  s2.\p
  s2.
  s2.-\markup\italic rit.
  s4 s2\>
  s2.\pp % 8c
  s2.
  s2.-\markup\italic "molto rit."
  s2.
  s2.
}

pianoLHone = \relative {
  \global
  \voiceOne
  e,8\omit\p b'~2
  e,8 b'~2
  e,8 b'~2
  e,8 b'~2
  e,8 b'~2 % 2b
  e,8 b'~2
  e,8\omit\cresc b'~2
  e,8 b'~2
  e,8\omit\mp b'~2
  e,8 d'~2 % 2c
  e,8\omit\< b'~2
  e,8 b'~2\omit\mf
  a8 e' a2
  d,,8 a' d2
  g,8 d' g2 % 3a
  g,8 d' g2
  a,8 e' a2
  g4 e fis
  fis2 d4
  e4 d e % 3b
  <fis, e'>2.^\omit\< ~
  q2.\omit\f
  <b, b'>2.->\omit\mf\omit\cresc
  <bes' a'>2.->
  <bes, bes'>2.-> % 3c
  <bes' fis' a>2.->\omit\f
  e,8 b'~2\omit\mp
  e,8^\omit\< b'~2
  e,8\omit\mf b'~2
  e,8 b'~2 % 4a
  e,8 d'~2
  e,8 d'~2
  e,8\omit\dim c'~2
  e,8 c'~2
  e,8\omit\mp d'~2\omit\dim % 4b
  e,8 d'~2
  e8\omit\p b'~2
  e,8 b'~2
  e,8 b'~2\omit\<
  <d, a'>2.\omit\mf % 4c
  g,4 g d
  g2 4
  d2 d'4
  g,2 d'4
  g2 4 % 5a
  a4 g a
  fis4 e fis
  g4 fis g
  e4 d e
  a,4 e' a\omit\< % 5b
  c2 g4
  fis4->\omit\f d2~
  d2.
  d,2.->~
  d2. % 5c
  e8\omit\mp b'~2
  e,8 b'~2
  e,8 b'~2
  e,8 b'~2\omit\< \key aes \major
  f8\omit\mf c'~2 % 6a
  f,8 c'~2
  f,8 c'~2
  f,8 c'~2
  f,8 ees'~2
  f,8 ees'~2 % 6b
  f,8 des'~2
  f,8 ees'~2
  f,8 c'~2
  f,8 c'~2
  bes8 f' bes2 % 6c
  ees,,8 bes' ees2
  aes,8 ees' aes2
  aes,8 ees' aes2
  bes,8 f' bes2
  aes4 f g % 7a
  g2 ees4
  f4 ees f
  <g, f'>2.\omit\< ~
  q2.\omit\f % 7b
  <c, c'>2.->\omit\mf\omit\cresc
  <c' bes'>2.->
  <c, c'>2.->
  <c' g' bes>2.->\omit\f
  des,8 c'~2\omit\mf % 7c
  des,8 c'~2
  des,8 c'~2
  des,8 c'~2
  des,8 ees'~2
  des,8 ees'~2 % 8a
  des,8\omit\> des'~2
  des,8\omit\mp des'~2
  des,8 ees'~2
  des,8\omit\> ees'~2 % 8b
  f8\omit\p c'~2
  f,8 c'~2
  f,8 c'~2
  f,8 c'~2\omit\> \clef treble
  f8\omit\pp c'~2 % 8c
  f,8 c'~2
  f8 c'~2
  f,8 c'~2~
  <f, c'>2.\fermata
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  e,2.\omit\p
  e2.
  e2.
  e2.
  e2. % 2b
  e2.
  e2.\omit\cresc
  e2.
  e2.\omit\mp
  e2. % 2c
  e2.\omit\<
  e2.\omit\mf
  s2.
  s2.
  s2. % 3a
  s2.
  s2.
  d'2.
  g,2.
  c2. % 3b
  s2.
  s2.
  s2.
  s2.
  s2. % 3c
  s2.
  e,2.\omit\mp
  e2.\omit\<
  e2.\omit\mf
  e2. % 4a
  e2.
  e2.
  e2.\omit\dim
  e2.
  e2.\omit\mp\omit\dim % 4b
  e2.
  e'2.\omit\p
  e2.
  e2.\omit\<
  s2.\omit\mf % 4c
  s2.
  s2.
  s2.
  s2.
  s2. % 5a
  s2.
  s2.
  s2.
  s2.
  s2. % 5b
  s2.
  s2.
  s2.
  s2.
  s2. % 5c
  e,2.\omit\mp
  e2.
  e2.
  e2.\omit\< \key aes \major
  f2.\omit\mf % 6a
  f2.
  f2.
  f2.
  f2.
  f2. % 6b
  f2.
  f2.
  f2.
  f2.
  s2. % 6c
  s2.
  s2.
  s2.
  s2.
  ees'2. % 7a
  aes,2.
  des2.
  s2.
  s2. % 7b
  s2.
  s2.
  s2.
  s2.
  des,2.\omit\mf % 7c
  des2.
  des2.
  des2.
  des2.
  des2. % 8a
  des2.\omit\>
  des2.\omit\mp
  des2.
  des2.\omit\> % 8b
  f'2.\omit\p
  f2.
  f2.
  f2.\omit\> \clef treble
  f'2.\omit\pp % 8c
  f2.
  f'2.
  f2.~
  f2.
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine { \voiceOne \soprano }
                                    { \voiceTwo \alto    }
            \new NullVoice = "aligner" \soprano
            \new Lyrics \lyricsto "aligner" \wordsSop
          >>
                                % Joint tenor/bass staff
          \new Staff \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new NullVoice = alignerMen \tenor
            \new Voice \partCombine \tenor \bass
            \new Lyrics \lyricsto alignerMen \wordsMen
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine { \voiceOne \soprano }
                                    { \voiceTwo \alto    }
            \new NullVoice = "aligner" \soprano
            \new Lyrics \lyricsto "aligner" \wordsSop
          >>
                                % Joint tenor/bass staff
          \new Staff \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new NullVoice = alignerMen \tenor
            \new Voice \partCombine \tenor \bass
            \new Lyrics \lyricsto alignerMen \wordsMen
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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
  \bookOutputSuffix "midi-women"
  \score {
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
%            \addlyrics \wordsMen
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = 
#"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMenMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = 
#"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
