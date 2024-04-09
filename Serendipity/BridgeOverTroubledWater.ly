\version "2.25.14"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bridge Over Troubled Water"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Paul Simon"
  arranger    = "Arr. Clyde Sechler"
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
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
  s1*96 \tempo 4=67
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" }    s1*3
  \mark \markup { \box "3b" }    s1*4 s2.
  \mark \markup { \box "3c" } s4 s1*3
  \mark \markup { \box "3d" }    s1*4
  \mark \markup { \box "4a" }    s1*3
  \mark \markup { \box "4b" }    s1*3
  \mark \markup { \box "4c" }    s1*3
  \mark \markup { \box "5a" }    s1*4
  \mark \markup { \box "5b" }    s1*4
  \mark \markup { \box "5c" }    s1*3
  \mark \markup { \box "6a" }    s1*3
  \mark \markup { \box "6b" }    s1*3
  \mark \markup { \box "6c" }    s1*3
  \mark \markup { \box "7a" }    s1*3
  \mark \markup { \box "7b" }    s1*4
  \mark \markup { \box "7c" }    s1*4
  \mark \markup { \box "8a" }    s1*3
  \mark \markup { \box "8b" }    s1*3
  \mark \markup { \box "8c" }    s1*4
  \mark \markup { \box "9a" }    s1*4
  \mark \markup { \box "9b" }    s1*3
  \mark \markup { \box "9c" }    s1*3
  \mark \markup { \box "10a" }    s1*3
  \mark \markup { \box "10b" }    s1*3
  \mark \markup { \box "10c" }    s1*4
  \mark \markup { \box "11a" }    s1*4
  \mark \markup { \box "11b" }    s1*4
  \mark \markup { \box "11c" }    s1*4
}

ChordTrack = \chordmode {
  s1*8
  c1 % 3c
  f1
  c1
  f2 bes4 f % 3d
  c1
  f1
  c2 f
  c2 f % 4a
  c2 g4 a:m
  g1
  s2.. f8 % 4b
  c1
  c1:7
  f2 d4. g8 % 4c
  s2 c:7
  f2. fis4:5.3-5-
  c2 a8:7sus a4.:7 % 5a
  f2 e:7
  a2:m c:7
  f2. fis4:5.3-5-
  c2 a8:7sus a4.:7 % 5b
  f2 g4:9sus g:7
  c1
  s1*5
  c1 % 6a+
  f1
  c1 % 6b
  f2 bes4 f
  c2.. f8
  s1 % 6c
  c2 f
  c4. f8 s2
  c2 g4 a:m % 7a
  g1
  s2.. f8
  c1 % 7b
  c1:7
  f2 d
  g2 c:7
  f2. fis4:5.3-5- % 7c
  c2 a8:7sus a4.:7
  f2 e:7
  a2:m c:7
  f2. fis4:6.3-5- % 8a
  c2 a:m
  f2 a4:m e:7
  a1:m % 8b
  d1:7
  c1
  f2 a:m % 8c
  f2 f:m
  c1
  f1
  c1 % 9a
  f1
  c1
  f1
  c1 % 9b
  f1
  c1
  f2 bes4 f % 9c
  c1
  f1
  c2 f % 10a
  c2 f
  c2 g4 a:m
  g1 % 10b
  s1
  c1
  c1:7 % 10c
  f2 d
  g2 c:7
  f2. fis4:5.3-5-
  c2 a:m % 11a
  f2 a4:m e8:7 a:m
  s2 c:7
  f2 f4:maj7 d:7
  c2 a:m % 11b
  f2 e4 e:7
  a1:m
  d1:9
  c1 % 11c
  f1
  s2 f:m
  c1
}

soprano = \relative {
  \global
  R1*7
  r2 r4 f'8^\p 8
  e4(d8) c~2 % 3c
  r2 r4 f8 g~
  g4 e2.
  r4 a bes a % 3d
  g2. c8 a~
  a2. 4
  g8 e16(d) c2.(
  c'2.) r4 % 4a
  r4 e,^\mp d c8 d~
  d2.~8 g~
  g4. 8 \tuplet 3/2 {e4(d) c} % 4b
  c16(d e8~2.^\<)
  r4\! g e' d
  c2 d4. 8~ % 4c
  d2
  e4 d
  c2^\dim b4 a
  a8^\mp g4. e8 g4. % 5a
  r4 a8 c d4 e
  c2 e4 d
  c2 b4 a
  a8 g4. e8 g4. % 5b
  r4 a8^\cresc c d4 e
  c2.^\f r4
  R1*19
  r2 e4^\f d % 7b+++
  c2^\> b4 a % 7c
  a8 g4. e8\! g4.
  r4 a8 c d4 e
  c2 e4 d
  c2^\> b4 a % 8a
  a8\! g4. a8^\< c4.
  r4\! c8^\f d c4 b
  c1~ % 8b
  c2. r4
  R1*8
  r2 r4 f,8^\p 8 % 9a+++
  e8. d16 c2. % 9b
  r2 r4 f8 g
  e1
  r4 a^\mp bes a % 9c
  g2. c8 a~
  a2. 8 8
  g8. a16 g8 e16(d) c2 % 10a
  R1
  r4 e^\mp d c
  d2.~8 g~ % 10b
  g2. 8 8
  g4. f8 e2^\<
  r4 g\! e'^\f d % 10c
  c2 d4. 8~
  d2 e4 d
  c2 b4 a
  a8 g4. a8 c4. % 11a
  r4 c8 d c4 b8 c~
  c2 e4^\ff d
  f2 e4 d
  e4(f8) e d c4. % 11b
  r4 f8 8 e4 d8 e~
  e1~
  e2. 4
  d8(c~2.~ % 11c
  c8) r r4 r2
  R1
  R1\fermata
  \bar "|."
}

words = \lyricmode {
  When you're wea -- ry, __ feel -- in' __ small,
  When tears are in your eyes, __
  I'll dry them all; __
  I'm on your side. __
  Oh, __
  when times __ get rough __
  And friends just can't be found. __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down.
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  \set associatedVoice = "alignerT"
  I will lay me down.

  When you're down and out, __
  When you're on the street,
  When eve -- ning falls so hard,
  I will com -- fort you. __

  I'll take your part. __
  Oh, __ when dark -- ness comes
  And pain is all a -- round, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down,
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down. __

  Sail on sil -- ver girl, Sail on by.
  Your time has come to shine, __
  All your dreams are on their __ way.
  See how they shine. __
  Oh, __ if you need a friend
  I'm sail -- ing right be -- hind, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will ease your mind, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will ease your mind, __
  your mind. __
}

wordsWomen = \lyricmode {
  When you're wea -- ry, __ feel -- in' __ small,
  When tears are in your eyes, __
  I'll dry them all; __
  I'm on your side. __
  Oh, __
  when times __ get rough __
  And friends just can't be found. __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down.
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down.

  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down,
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down. __

  Sail on sil -- ver girl, Sail on by.
  Your time has come to shine, __
  All your dreams are on their __ way.
  See how they shine. __
  Oh, __ if you need a friend
  I'm sail -- ing right be -- hind, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will ease your mind, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will ease your mind, __
  your mind. __
}

wordsTenor = \lyricmode {
  When you're wea -- ry, __ feel -- in' __ small,
  When tears are in your eyes, __
  I'll dry them all; __
  I'm on your side. __
  Oh, __
  when times __ get rough __
  And friends just can't be found. __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down.
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down.

  When you're down and out, __
  When you're on the street,
  When eve -- ning falls so hard,
  I will com -- fort you. __

  I'll take your part. __
  Oh, __ when dark -- ness comes
  And pain is all a -- round, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down,
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down. __

  Sail on sil -- ver girl, Sail on by.
  Your time has come to shine, __
  All your dreams are on their __ way.
  See how they shine. __
  Oh, __ if you need a friend
  I'm sail -- ing right be -- hind, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will ease your mind, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will ease your mind, __
  your mind. __
}

wordsBass = \lyricmode {
  When you're wea -- ry, __ feel -- in' __ small,

  I'm on your side. __
  Oh, __
  when times __ get rough __
  And friends just can't be found. __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down.
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down.

  When you're down and out, __
  When you're on the street,
  When eve -- ning falls so hard,
  I will com -- fort you. __

  I'll take your part. __
  Oh, __ when dark -- ness comes
  And pain is all a -- round, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down,
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will lay me down. __

  Sail on sil -- ver girl, Sail on by.
  Your time has come to shine, __
  All your dreams are on their __ way.
  See how they shine. __
  Oh, __ if you need a friend
  I'm sail -- ing right be -- hind, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will ease your mind, __
  Like a Bridge o -- ver Trou -- bled Wa -- ter
  I will ease your mind, __
  your mind. __
}

wordsMidi = \lyricmode {
  "When " "you're " wea "ry, "  feel "in' "  "small, "
  "\nWhen " "tears " "are " "in " "your " "eyes, " 
  "\nI'll " "dry " "them " "all; " 
  "\nI'm " "on " "your " "side. " 
  "\nOh, " 
  "\nwhen " "times "  "get " "rough " 
  "\nAnd " "friends " "just " "can't " "be " "found. " 
  "\nLike " "a " "Bridge " o "ver " Trou "bled " Wa "ter "
  "\nI " "will " "lay " "me " "down. "
  "\nLike " "a " "Bridge " o "ver " Trou "bled " Wa "ter "
  \set associatedVoice = "alignerT"
  "\nI " "will " "lay " "me " "down. "

  "\nWhen " "you're " "down " "and " "out, " 
  "\nWhen " "you're " "on " "the " "street, "
  "\nWhen " eve "ning " "falls " "so " "hard, "
  "\nI " "will " com "fort " "you. " 

  "\nI'll " "take " "your " "part. " 
  "\nOh, "  "when " dark "ness " "comes "
  "\nAnd " "pain " "is " "all " a "round, " 
  "\nLike " "a " "Bridge " o "ver " Trou "bled " Wa "ter "
  "\nI " "will " "lay " "me " "down, "
  "\nLike " "a " "Bridge " o "ver " Trou "bled " Wa "ter "
  "\nI " "will " "lay " "me " "down. " 

  "\nSail " "on " sil "ver " "girl, " "Sail " "on " "by. "
  "\nYour " "time " "has " "come " "to " "shine, " 
  "\nAll " "your " "dreams " "are " "on " "their "  "way. "
  "\nSee " "how " "they " "shine. " 
  "\nOh, "  "if " "you " "need " "a " "friend "
  "\nI'm " sail "ing " "right " be "hind, " 
  "\nLike " "a " "Bridge " o "ver " Trou "bled " Wa "ter "
  "\nI " "will " "ease " "your " "mind, " 
  "\nLike " "a " "Bridge " o "ver " Trou "bled " Wa "ter "
  "\nI " "will " "ease " "your " "mind, " 
  "\nyour " "mind. " 
}

alto = \relative {
  \global
  R1*7
  r2 r4 f'8^\p 8 % 3c
  e4(d8) c~2
  r2 r4 f8 g~
  g4 e2.
  r4f f f % 3d
  e2. c8 f~
  f2. 4
  e8 c16(b) c2.(
  g'2.) r4 % 4a
  r4 e^\mp d c8 d~
  d2.~8 g~
  g4. 8 \tuplet 3/2 {e4(d)c} % 4b
  c16(d e8~2.^\<)
  r4\! g^\f bes bes
  a2 4. b8~ % 4c
  b2 bes4 4
  a2 f4 dis
  e8^\mp 4. 8 4. % 5a
  r4 a8^\mf a gis4 4
  e2 bes'4 4
  a2 f4 dis
  e8 4. 8 4. % 5b
  r4 a8^\cresc 8 f4 4
  e2.^\f r4
  R1*19
  r2 bes'4^\f 4 % 7b+++
  a2^\> f4 dis % 7b
  e8 4. 8\! 4.
  r4 a8^\mf a gis4 4
  e2 bes'4 4
  a2^\> f4 dis % 8a
  e8\! 4. 8^\< 4.
  r4\! a8^\f 8 4 gis
  e1~ % 8b
  e2. r4
  R1*8
  r2 r4 f8^\p 8 % 9a+++
  e8. d16 c2. % 9b
  r2 r4 f8 g
  e1
  r4 f^\mp 4 4 % 9c
  e2. 8 f~
  f2. 8 8
  e8. 16 e8 16(d) c2 % 10a
  R1
  r4 e^\mp d c
  d2.~8 g~ % 10b
  g2. 8 8
  g4. f8 e2^\<
  r4 e8\!(g) bes4^\f 4 % 10c
  a2 fis4. g8~
  g2 bes4 4
  a2 f4 dis
  e8 4. 8 4. % 11a
  r4 a8 8 4 gis8 e~
  e2 bes'4^ff 4
  a2 4 4
  g4(a8) g a a4. % 11b
  r4 a8 c b4 8 c~
  c1~
  <a c>2. 4
  g8( e~2.~ % 11c
  e8) r r4 r2
  R1
  R1\fermata
  \bar "|."
}

tenor = \relative {
  \global
  R1*7
  r2 r4 a8^\p 8 % 3c
  g4~8 e~2
  r2 r4 a8 b~
  b4 g2.
  r4 c d c % 3d
  c2. 8 8~
  c2. 4
  c8 g e2.(
  e'2.) r4 % 4a
  r4 c^\mp b a8 b~
  b2.~8 g~
  g4. 8 \tuplet 3/2 {e4(d) c} % 4b
  c16(d e8~2.^\<)
  r4\! g^\f c c
  c2 d4. 8~ % 4c
  d2 c4 4
  c2^\dim 4 4
  c8^\mp 4. d8 cis4. % 5a
  r4 a8^\mf c e4 d
  c2 4^\f 4
  c2 4^\dim 4
  c8 4. d8 cis4. % 5b
  r4 a8^\cresc c c4 b
  g2.^\f r4
  R1*4
  r2 r4 f8^\p 8 % 6a
  e4 d8 c~2
  r2 r8 f16 16 8 g
  e2 r % 6b
  r4 a bes a
  g2. c8 a~
  a2. 8 8 % 6c
  g8 e16(d) c2.^\mp(
  c'2.^\>) r4\!
  r4 g^\mp f e8 f~ % 7a
  f2.. g8~ % Check original
  g4. 8 \tuplet 3/2 {g4(f)f}
  g2.^\< r4\! % 7b
  r4 g^\f e' d
  c2 d4. 8~
  d2 c4 4
  c2 4^\dim 4 % 7c
  c8 4. d8 cis4.
  r4 a8^\mf c e4 d
  c2 4 4
  c2 4^\dim 4 % 8a
  c8 4. 8 4.^\<
  r4^\f c8 8 e4 d
  c1~
  c2. r4
  R1*8
  r2 r4 a8^\mp 8 % 9a+++
  g8. f16 e2. % 9b
  r2 r4 a8 b
  g1
  r4 c^\p d c % 9c
  c2. 8 8~
  c2. 8 8
  g8. a16 g8 8 a2 % 10a
  R1
  r4 c^\pp b a
  b2.~8 d~ % 10b
  d2. 8 8
  e4. d8 c2^\<
  r4 c\! c^\f 4 % 10c
  c2 d4. b8~
  b2 c4 4
  c2 4 4
  c8 4. 8 4. % 11a
  r4 c8 8 e4 d8 c~
  c2 4^\ff 4
  c2 4 4
  c4. 8 e8 4. % 11b
  \once\partCombineApart r4 c8 8 e4 8 8(~
  e1
  d2.) 4
  e8(c~2.~
  c8) r r4 r2
  R1
  R1\fermata
  \bar "|."
}

bass = \relative {
  \global
  R1*7
  r2 r4 a8^\p 8 % 3c
  g4~8 e~2
  r2 r4 a8 b~
  b4 g2.
  \partCombineApart R1*5 \partCombineAutomatic
  r4 c4^\mp b a8 b~ % 4a+
  b2.~8 g~
  g4. 8 \tuplet 3/2 {e4(d) c} % 4b
  c16(d e8~ 2.^\<)
  r4^\f g c e,
  f2 fis4. g8~ % 4c
  g2 c,4 e
  f2 4 fis
  g8^\mp 4. 8 a4. % 5a
  r4 a8^\mf c b4 e,
  a2 g4^\f e
  f2 4^\dim fis
  g8 4. 8 a4. % 5b
  r4 a8^\cresc c g4 g
  c,2.^\f r4
  R1*4
  r2 r4 f8^\p f % 6a
  e4 d8 c~2
  r2 r8 f16 16 8 g
  e2 r % 6b
  r4 a bes a
  g2. c8 a~
  a2. 8 8 % 6c
  g8 e16(d) c2.^\mp(
  c'2.^\>) r4\!
  r4 e,^\mp d c8 d~ % 7a
  d2.. g8~ % check original
  g4. 8 \tuplet 3/2 {e4(d) c}
  e2.^\< r4\! % 7b
  r4 g^\f c bes
  a2 fis4. g8~
  g2 c,4 e
  f2 4^\dim fis % 7c
  g8 4. 8 a4.
  r4 a8^\mf c b4 e,
  a2 g4 e
  f2 4^\dim fis % 8a
  g8 4. a8 4.^\<
  f4.^\f 8 e4 4
  a4.(gis8~4 g % 8b
  fis2.) r4
  R1*8
  r2 r4 a8^\mp a % 9a+++
  g8. f16 e2. % 9b
  r2 r4 a8 b
  g1
  r4 c^\p d c % 9c
  c,2. 8 f~
  f2. 8 8
  c8. 16 8 8 f2 % 10a
  R1
  r4 c^\pp b a
  b2.~8 8~ % 10b
  b2. 8 8
  c4. g8 2^\<
  r4 c\! d^\f e % 10c
  f2 d4. g8~
  g2 c,4 e
  f2 4 fis
  g8 4. a8 4. % 11a
  r4 f8 8 e4 8 a~
  a2 g4^\ff e
  f2 4 fis
  g4. 8 a8 4. % 11b
  f4. a8 gis4 8 a~(
  a4. gis8~4 g4
  fis2.) 4
  g8(~<c, g'>~2.~ % 11c
  q8) r r4 r2
  R1
  R1\fermata
  \bar "|."
}

pianoRHone = \relative {
  \global
  <e' g c e>4.\arpeggio 8 <e g b e>4\arpeggio <d g b d>
  <c f a c>2 <b d f b>4 <a c ees a>
  <a c e a>4\arpeggio <g c e g> e'8 f4.
  a,4 a8 c d4~8 16 e % 3b
  <e, g c>4. 8~8 <bes' c>4.
  <a c>2~8 <a' c>16(f c a f8)
  <e g c>4. 8~8 <bes' c>4.
  <a c>2 <f' a c>4\arpeggio \bar "|" \break r4
  <c e>4 d8 c~2~ % 3c
  c2. f8 g~
  g4 e2.
  \once\partCombineApart r4 a bes a % 3d
  g2. c8 a~
  a2. 4
  g4 c,~4. a'8
  g8 e d c~2~ % 4a
  c4 e d c8 d~
  d2. \once\partCombineApart r4
  \once\partCombineApart r2 \tuplet 3/2 {e4 d c} % 4b
  c4(e2.)
  r4 g e' d
  c2 d4. 8~ % 4c
  d2 e4 d
  c2 b4 a
  a8 g4. e8 g4. % 5a
  \once\partCombineApart r4 a8 c d4 e
  c2 e4 d
  c2 b4 a
  a8 g4. e8 g4. % 5b
  \once\partCombineApart r4 a8 c d4 e
  c2~8 \once\partCombineApart r \once\partCombineApart r4
  <c, f>2 <a' c>16(f c <g' bes> ~8) <f a>
  g2~8 e d c % 5c
  <a c>4 <f a c>\arpeggio ~8 <a' c>16( f c a f8)
  <e g c>4. 8~8 <c' e> <b d> <bes c>
  <f a c>4 2.\arpeggio % 6a
  <c' e>4 d8 c~2~
  c2. f8 g
  e2. \once\partCombineApart r4 % 6b
  \once\partCombineApart r4 a bes a
  g2. c8 a~
  a2. 4 % 6c
  g4 c,~4. a'8
  g8 e d c~2~
  c4 e d c8 d~ % 7a
  d2. \partCombineApart r4
  r2 \partCombineAutomatic \tuplet 3/2 {e4 d c}
  e1 % 7b
  r4 g e' d
  c2 d4. 8~ % Check original
  d2 e4 d
  c2 b4 a % 7c
  a8 g4. e8 g4.
  \once\partCombineApart r4 a8 c d4 e
  c2 e4 d
  c2 b4 a % 8a
  a8 g4. a8 c4.
  r4 c8 d c4 b
  c2. 16 d e8 % 8b
  c2. 16 e f8
  e4. 8 e d c b
  c2 4 a % 8c
  c2 4. 8
  c2~16 e, d8~8 c
  c2 c'16^\> f, c bes'~8 a
  g2~8 e d c % 9a
  c2 2
  c1
  c2. a'8 8
  g8. f16 e2.~ % 9b
  e2 \once\partCombineApart r4 a8 b
  g1
  \once\partCombineApart r4 a bes a % 9c
  g2. c8 a~
  a2. 8 8
  g8. a16 g4 c4. \once\partCombineApart r8 % 10a
  g8 e d c~2~
  c4 e d c
  d2. \partCombineApart r4 % 10b
  r2 r4 \partCombineAutomatic g8 8
  g4. f8 e2~
  e4 g e' d % 10c
  c2 d4. 8~
  d2 e4 d
  c2 b4 a
  a8 g4. a8 c4. % 11a
  r4 c8 d c4 b8 c~
  c2 e4 d
  f2 e4 d
  <e, g c e>4 <f f'>8 <e f c' e> <e a d> <e a c>4. % 11b
  r4
  f'8 8 e4 d8 e~
  e1~
  e2. <f, a c e>4
  d'8 c~8 e e d c d % 11c
  <c, a' c>2 <f, a c>
  <c' f a c>2 <f aes c f>
  <g c e g>1\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s1
  s1
  s2 d'4 cis
  s4 a aes <f aes> % 3b
  s1
  f8. 16 4~8 \partCombineApart r r4 \partCombineAutomatic
  s1
  f8. 16 2 r4
  g4. <e g>8~4 8 <f a>~ % 3c
  q2. <a c>4
  <g c>4. 8~4 <g d>8 c
  <a c>4 <c f> <d f> <c f> % 3d
  <c e>4. 8~4 8 <c f>~
  q4 4 4 4
  <c e>4 <e, g> <f a>4. \once\partCombineApart r8
  c'4 r8 <f, a>8~8 a g f % 4a
  e4 <g c> <g b> <e a>8 <g b>8~
  q8 b16 g
  d8 <g b>8~8 b16 g d8 <g b>~
  q8 d'16 b g8 <b d> \tuplet 3/2 {<g b>4 <f a>4 4} % 4b
  <e g>4 <g c> q q
  r4 <bes e> <e g bes> <d g bes>
  <c f a>4 q <d fis a> q8 <d g b>~ % 4c
  q2 <d g bes>4 4
  <c f a>4 q <c f> <c dis>
  <c e>2 d4 cis % 5a
  a2 <d e b'>4 <e gis d'>
  <c e a> q <e g bes> <d g bes>
  <c f a>4 q <c f> <c dis>
  <c e>2 d4 cis % 5b
  a2 <d f a>4 <e g b>
  <c e g> \acciaccatura {e16 d} c8 8~8 <c e g>8 8 8
  a4 4 \once\partCombineApart r2
  e'8. c16 g4~8 c b bes % 5c
  s1
  s1
  s1 % 6a
  g4.<e g>8~4 8<f a>~
  q2. <a c>4
  <g c>4. 8~4 <g d>8 c~ % 6b
  <a c>4 <c f> <d f> <c f>
  <c e>4. 8~4 8 <c f>~
  q4 4 4 4 % 6c
  <c e>4 <e, g> <f a>4. \once\partCombineApart r8
  c'4 \once\partCombineApart r8 <f, a>8~8 a g f
  e4 <g c> g <e a>8 <g b>~ % 7a
  q8 b16(g d8) <g b>~8 b16(g d8) <g b>8 ~
  q8 d'16(b g8) <b d> \tuplet 3/2 {<g b>4 <f a> q}
  <g c>4 4 4 4 % 7b
  r4 <bes e> <e g bes> <d g bes>
  <c f a>4 4 <d fis a> q8 <d g b>8~
  q4 <d g b> <e g bes> <d g bes>
  <c f a>4 q <c f> <c dis> % 7c
  <c e>2 d4 cis
  a2 <d e b'>4 <e gis d'>
  <c e a>4 4 <e g bes> <d g bes>
  <c f a>4 q <c f> <c dis> % 8a
  <c e>2 4 <c e a>
  r4 \partCombineApart <c f a>8 d <c e a>4 <b e gis>
  <c a'>8 e c <c e>~8 8 c16 d e8 % 8b
  <c fis a>4 a'8 q~8 8 <c, fis a>16 e f8
  <e g c>8 8 8 8 <e g b> d <c g'> b
  <c f>4 4 r8 <c e a> r <c e> % 8c
  <c f a>8 8 8 8 <c f aes>8 8 8 8
  <c e g>8 8 4~16 c b8~8 bes
  a8. g16 f4 a'16^\> f c g'~8 f
  e4. c8~8 8 b bes % 9a
  <f a>4 8 8 2\arpeggio
  <e g>4 8 8~8 \change Staff = pianolh e d c \change Staff = pianorh
  <f a>8(c f a c f) f f
  r4 r8 <e, g>~8 8 8 <f a>~ % 9b
  q8 8 8 8~4 r
  r8 <g c>8 8 8~4 <g d'>8  c
  <a c>4 <c f> <d f> <c f> % 9c
  <c e>4. 8~4 8 <c f>~
  q8 8 8 8 8 8 4
  c2 <f, a>4 8 a' % 10a
  c,4 r8 <f, a>~8 a g f
  <e g>4 <g c> <d g> <e a>
  b'8 16(g d8) <g b>~8 b16( g d8) <g b>~ % 10b
  q8 d'16 b a8 <b d>8~4 <g d'>
  <g c e>4 8 r <g c>4 4
  q4 <bes e> <e g bes> <d g bes> % 10c
  <c f a>4 q <d fis a> q8 <d g b>8~
  q4 <d g b> <e g bes> <d g b>
  <c f a>4 4 <c f> <c dis>
  <c e>2 4 <c e a> % 11a
  \once\partCombineAutomatic r4 <c f a>8 d <c e a>4 <b e gis>8 <c e a> ~
  q4 4 <e g bes> <d g bes>
  <f a c>4 4 <e a c> <d a' c>
  s1 % 11b
  \once\partCombineAutomatic r4 <f a c>8 8 <e gis b>4 <d g b>8 <e a c>~
  q8 a e <e c'>~8 8 e16 a c8
  <fis, a c>4 <f a>8 8~8 8 s4
  <e g>4. <e g c>8 8 <d g> <c g'> <d g> % 11c
  s1*3
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1
  s2 s\mp
  s1\p
  s1*10
  s2.. s8\mp % 3d+++
  s1*4
  s8 s2..\< % 4b+
  s4\! s2.\f
  s1 % 4c
  s2 s\>
  s1
  s1\mp % 5a
  s4 s2.\mf
  s2 s\f
  s1\>
  s2\! s\mf
  s2\cresc s\<
  s1\f
  s4 s2.\>
  s1\mf % 5c
  s2\mp s4\mf s\>
  s2\mp s8 s4.\>
  s2 s\! % 6a
  s1\p
  s1*6
  s4 s2.\> % 6c++
  s4\! s2.\mp % 7a
  s1
  s1
  s4 s2.\< % 7b
  s4\! s2.\f
  s1
  s1
  s4 s2.\> % 7c
  s4 s\! s2\mp
  s4 2.\mf
  s1
  s8 s\> s2. % 8a
  s2 s\<
  s1\f
  s1*9
  s2 s\dim % 8b++
  s2. s4\p
  s1*8
  s1\mp % 9a++
  s1
  s1
  s2 s\<
  s1\f % 9c
  s1*5
  s2 s\ff % 10a++
  s1*7
  s4 s2.\<
  s1\fff
}

pianoLH = \relative {
  \global
  c,8 g' c-. c, f, b d g
  f8 a c a f f' fis, fis'
  g,8 c e c << \vo g'2 \new Voice {\vt a,4 4} >> \ov
  <f c'>2 2 % 3b
  c4. 8~8 << { \vo \appoggiatura dis'8 e d c } \new Voice {\vt c,4.} >>
  c4. 8~2
  c4. 8~8 \appoggiatura dis'8 e d c
  c,2. r4
  c4. 8~8 4. % 3c
  c4. 8~8 4.
  c4. 8~8 4.
  f4. 8 2 % 3d
  c4. 8~8 4.
  f2 2
  c2 f
  c4. f8~8 8 e d % 4a
  c4 4 b a
  g4. 8~2
  g4. 8 \tuplet 3/2 {g4 a c} % 4b
  c4. c'8-> b4.-> 8->
  bes4-> c, d e
  f4. 8 d4. r8 % 4c
  g4 g,8 b c4 e
  f4. 8 4 fis
  g4 4 a a % 5a
  <f c'>2 gis4 b
  a4 c, d e
  f4. 8 4 fis
  g4 4 << {\vo g'2} \new Voice {\vt a,4 4}>> \ov % 5b
  <f c'>2 g4 g,
  c4. 8~8 4.
  c2 2
  c4. 8~8 4. % 5c
  c4. 8 2
  c4. 8~8 4.
  c4. 8~2 % 6a
  c4. 8~8 4.
  c4. 8~8 4.
  c4. 8~8 4. % 6b
  f4. 8 2
  c4. 8~8 4.
  f2 2 % 6c
  c2 f
  c4. f8~8 8 e d
  c4 c b a % 7a
  g4. 8~4. 8
  g4. 8 \tuplet 3/2 {g4 a c}
  c4. c'8-> b4.-> 8-> % 7b
  bes4-> c, d e
  f4. 8 d4. r8
  g4 8 b, c4 e
  f4. 8 4 fis % 7c
  g4 4 a a
  <f c'>2 gis4 b
  a4 c, d e
  f4. 8 4 fis % 8a
  g4 4 a4. 8
  f2 e4. 8
  a4. gis8~4 g % 8b
  d4. cis8~4 c
  g'4. 8 g,4 g'
  <<{\vo a8 b c d e2} \new Voice {\vt f,2 a} >> \ov % 8c
  f2 f,
  c'4. 8 2
  f4. 8 2
  c4. 8~8 4. % 9a
  f2 4. 8
  c4. 8~2
  c1
  c2 2 % 9b
  c4. 8~8 4.
  c4. 8~8 4.
  f4. 8 2 % 9c
  c4. 8~8 4.
  f4. 8 2
  c4. 8 f2 % 10a
  c4. f8~8 f e d
  c4 c' b a
  g4. 8~4. 8~ % 10b
  g4. 8~8 g, a b
  c2 b4. 8
  bes4 c d e % 10c
  f4. 8 d4. r8
  g4 g,8 b c4 e
  f4. 8 4 fis
  g4 4 a4. 8 % 11a
  f2 e4 4
  a4 a,8 c d4 e
  f4. 8 4 fis
  g4 4 a <a, a'>8 8 % 11b
  <f f'>4 <d d'> <e e'>4 4
  <a a'>4. <gis gis'>8~4 <g g'>
  d'4. des8~2
  g8 c b a g b d g % 11c
  f8 c a c a b c d
  f,8 g a c <f, f'> <g g'> <aes aes'> <c c'>
  <c, c'>1\fermata
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
        \new ChordNames = guitar
        { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
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
            \new NullVoice = alignerB \bass
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerA \alto
            \new NullVoice = alignerS \soprano
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
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
    <<
      <<
        \new ChordNames = guitar
        { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
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
            \new NullVoice = alignerB \bass
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerA \alto
            \new NullVoice = alignerS \soprano
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
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
    <<
      <<
        \new ChordNames = guitar
        { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
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
            \addlyrics \wordsWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
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
%        \RemoveAllEmptyStaves
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
    <<
      <<
        \new ChordNames = guitar
        { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
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
            \addlyrics \wordsWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
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
            \addlyrics {\tiny \wordsTenor}
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
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh
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
%        \RemoveAllEmptyStaves
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
    <<
      <<
        \new ChordNames = guitar
        { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
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
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsWomen
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
            \addlyrics {\tiny \wordsTenor}
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
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh
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
%        \RemoveAllEmptyStaves
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
    <<
      <<
        \new ChordNames = guitar
        { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
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
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
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
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh
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
%        \RemoveAllEmptyStaves
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
    <<
      <<
        \new ChordNames = guitar
        { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
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
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
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
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh
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
%        \RemoveAllEmptyStaves
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
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames = guitar \with {
          midiInstrument = "acoustic guitar"
        }
        { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new NullVoice = alignerT \tenor
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
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
