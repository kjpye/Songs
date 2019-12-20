\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mack the Knife"
  subtitle    = "from The Threepenny Opera"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Kurt Weill"
  arranger    = "arr. Russ Robinson"
%  opus        = "opus"

  poet        = "Bert Brecht"
  meter       = "tr. Marc Blitzstein"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
% tagline   = ##f
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
  \key c \major
  \time 4/4
  \tempo 4=144
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

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "3a" } s1 s1 s1 s1
  \mark \markup { \circle "3b" } s1 s1 s1 s1
  \mark \markup { \circle "4a" } s1 s1 s1 s1
  \mark \markup { \circle "4b" } s1 s1 s1 s1
  \mark \markup { \circle "5a" } s1 s1 s1 s1
  \mark \markup { \circle "5b" } s1 s1 s1 s1
  \mark \markup { \circle "6a" } s1 s1 s1 s1
  \mark \markup { \circle "6b" } s1 s1 s1 s1
  \mark \markup { \circle "7a" } s1 s1 s1 s1
  \mark \markup { \circle "7b" } s1 s1 s1 s1
  \mark \markup { \circle "8a" } s1 s1 s1 s1
  \mark \markup { \circle "8b" } s1 s1 s1 s1
  \mark \markup { \circle "9a" } s1 s1 s1 s1
  \mark \markup { \circle "9b" } s1 s1 s1 s1
  \mark \markup { \circle "10a" } s1 s1 s1 s1
  \mark \markup { \circle "10b" } s1 s1 s1 s1
  \mark \markup { \circle "11a" } s1 s1 s1 s1
  \mark \markup { \circle "11b" } s1 s1 s1 s1
  \mark \markup { \circle "12a" } s1 s1 s1 s1
  \mark \markup { \circle "12b" } s1 s1 s1 s1
  \mark \markup { \circle "13a" } s1 s1 s1 s1
  \mark \markup { \circle "13b" } s1 s1 s1 s1
  \mark \markup { \circle "14a" } s1 s1 s1 s1
  \mark \markup { \circle "14b" } s1 s1 s1 s1
  \mark \markup { \circle "15a" } s1 s1 s1 s1
  \mark \markup { \circle "15b" } s1 s1 s1
}

soprano = \relative c' {
  \global
  r1
  r1
  r1
  r2 e4 g
  a4. a8~4 r % 5
  r2 e4 g
  a4. a8~4 r
  r2 d,4 f
  a4. 8~4 r
  r2 c8 b4 a8~ % 10
  a1~
  a4 r g b
  d4. c8~c2~
  c2 b4 a
  c4. d,8~d2~ % 15
  d4 r e f
  c'4. c8~c2~
  c4 r c8 b4 a8~
  a2~a4.~a8->
  r1 % 20
  r2 e4 g
  a4-. a-. r2
  r2 d,4 f
  a4-. a-. r2
  r2 d,4 f % 25
  a4 a c8 b4 a8~
  a1~
  a4 r g b
  d4. c8~ c2~
  c2 b4 a % 30
  c4. d,8~d2~
  d4 r e f
  c'4. c8~c2~
  c4 r c8 b4 a8~
  a2~a4.~a8-> % 35
  r2 e4 g
  a4. 8 r2
  r2 e4 g
  a4. 8 r2
  r2 d,4 f % 40
  a4. 8 r2
  r4 a c8 b4 a8~
  a1~
  a4 r g b
  d4. c8~c2~ % 45
  c2 b4 a
  c4. d,8~d2~
  d4 r e f
  c'8 c~c2.~
  c4 r c8 b4 a8~ % 50
  a2~a4.~a8->
  r1
  r2 r8 g a c
  b4 g8 a r2
  r2 r8 g a c % 55
  b4 g8 a r2
  r2 r8 g a c
  b4 c c8 b4 a8~
  a1~
  a4 r g b % 60
  d4. c8~c2~
  c2 b4 a
  c4. d,8~d2~
  d4 r e f
  c'4. c8~c2~ % 65
  c4 r c8 b4 a8~
  a2~a4.~a8->
  r2 e4^\markup{\italic Solo} g
  a4. 8~4 r
  r2 e4 g % 70
  a4. 8~4 r
  r2 d,4 f
  a4. 8~4 r
  r2 c8 b4 a8~
  a4 r r2 % 75
  r1
  g1(
  ges1
  f2) f8 r e d
  r1 % 80
  r2 a'4 a
  a4 g4 8 a4 b8~
  b4 r bes4. a8
  r2 <a c>4 q
  q4. q8 r2 % 85
  r2 <g c>4 q
  <a c>4. q8 r2
  r2 q4 q
  q4 q <bes c>8 q4.
  <a e'>8 q4. c8 b4 a8~( % 90
  a4. a8~4. a8~
  a4) r g b
  d4. c8~c2~
  c2 b4 a
  c4. d,8~d2~
  d4 r c' c
  c8 a4.~a2~
  a4 r e' e
  e8 e4.~e2
  r8 e e e e c(a) c~
  c2. r4
  c4 r <b e> r
  <d g>4 r q8-> q4-> q8->
  \bar "|."
}

dynamicsSop = {
  s1^\markup{\bold{Fast swing feel}}
  s1
  s1
  s2 s2^\mf^\markup{\italic unison}
  s1*14
  s1 \< % 19
  s1 \!
  s2 s2^\mp
  s1*5
  s1 \< %27
  s2 \! s2^\f
  s1*7
  s2 s2^\f % 36
  s1*7
  s2 s2^\f % 44
  s1*8
  s2 s8 s4.^\mf % 53
  s1*30
  s2 s2^\f % 84
  s1*7
  s2 s2^\mf % 92
  s1*3
  s2 s^\f % 96
  s1*5
  s1^\markup{\italic{slight rit.}}
  s2 s4^\ff % 103
}

wordsSop = \lyricmode {
  Oh, the shark has __ pret- ty teeth, dear, __
  and he shows them __
  pearl- y white. __
  Just a jack- __ knife has Mac- heath, dear, __
  and he keeps it __ out of sight. __
  When the shark bites with his teeth, dear,
  scar- let bil- lows start to spread, __
  Fan- cy gloves though __ wears Mac- heath, dear, __
  so there's not a __ trace of red. __
  From a tug- boat by the riv- er,
  the ce- ment bag is drop- ping down __
  The ce- ment's just __ for the weight, dear, __
  Bet your Mack- ie's __ back in town. __
  Ba doo ba da doo bop,
  Ba doo ba da doo bop,
  There lies a bod- y ooz- ing life. __
  Some- one's sneak- ing __ 'round the cor- ner. __
  Is that some- one __ Mack the Knife？__
  Lou- ie Mil- ler __ dis- ap- peared, dear, __
  af- ter draw- ing __ out his cash. __
  Ah __ bop doo bop.
  Did your boy do some- thing rash？__
  Ba dot.
  Su- key Taw- dry! Jen- ny Driv- er!
  Pol- ly Peach- um! Pol- ly Peach- um！ Lu- cy Brown! __
  Oh, the line forms __ on the right, dear, __
  now that Mack- ie's, __ now that Mack- ie's, __
  your Mack- ie's back in __ town, __
  back in town! Mack is back!
}

alto = \relative c' {
  \global
  s1
  s1
  s1
  s2 e4 g
  a4. a8~4 r
  r2 e4 g
  a4. a8~4 r
  r2 d,4 f
  a4. 8~4 r
  r2 c8 b4 a8~
  a1~
  a4 r g b
  g4. g8~g2~
  g2 4 4
  f4. c8~c2~
  c4 r c d
  f4. 8~2~
  f4 r f8 4 e8~(
  e2~4. f8->)
  r1
  r2 e4 g
  a4-. a-. r2
  r2 d,4 f
  a4-. a-. r2
  r2 d,4 f
  a4 a c8 b4 a8~
  a1~
  a4 r g b
  g4. g8~g2~ % 29 -- 6b
  g2 4 4
  f4. c8~c2~
  c4 r c d
  f4. 8~2~ % 33 -- 7a
  f4 r f8 4 e8~(
  e2~e4. f8->)
  r2 e4 g
  a4. a8 r2 % 37 -- 7b
  r2 e4 g
  a4. 8 r2
  r2 d,4 f
  a4. 8 r2 % 41 -- 8a
  r4 a c8 b4 a8~
  a1~
  a4 r g b
  g4. g8~g2~ % 45 -- 8b
  g2 4 4
  f4. c8~c2~
  c4 r c d
  f8 f~f2.~ % 49 -- 9a
  f4 r f8 4 8~(
  f2~4. g8->)
  r1
  r2 r8 g a c % 53 -- 9b
  b4 g8 a r2
  r2 r8 g a c
  b4 g8 a r2
  r2 r8 g a c % 57 -- 10a
  b4 c c8 b4 a8~
  a1~
  a4 r g b
  g4. 8~2~ % 61 -- 10b
  g2 4 4
  f4. c8~2~
  c4 r c d
  f4. 8~2~ % 65 -- 11a
  f4 r f8 4 e8~(
  e2~4. f8->)
  r1
  r8^\markup{\italic{Background Vocals}} <c e> r4 q8 r8 r4 % 69 -- 11b
  q8 r r q r2
  r8 <d f> r4 q8 r r4
  q8 r r q r2
  r8 q r4 q8 r8 r4 % 73 -- 12a
  q4 q r2
  r1
  r1
  g1( % 77 -- 12b
  ges
  f2) f8 r e d
  r1
  r2 f4 f % 81 -- 13a
  f4 f4 8 4 g8~
  g4 r g4. f8
  r2 f4 f
  g4. 8 r2 % 85 -- 13b
  r2 f4 f
  f4. f8 r2
  r2 f4 f
  f4 f ges8 4. % 89 -- 14a
  f8 4. c'8 b4 a8~(
  a4. f8~4. f8~
  f4-.) r g b
  g4. g8~2~ % 93 -- 14b
  g2 g4 g
  f4. c8~c2~
  c4 r r2
  r2 f4 f % 97 -- 15a
  f8 4.~2
  r2 b4 b
  b8 4. r2
  r8 g g g ges4 ges % 101 -- 15b
  f4 r f r
  a4 r a8-> a4-> a8->
  \bar "|."
}

dynamicsAlto = {
  s1
  s1
  s1
  s2 s2^\mf
  s1*14
  s1 \< % 19
  s1 \!
  s2 s2^\mp
  s1*5
  s1 \< %27
  s2 \! s2^\f
  s1*7
  s2 s2^\f % 36
  s1*7
  s2 s2^\f % 44
  s1*8
  s2 s8 s4.^\mf % 53
  s1*30
  s2 s2^\f % 84
  s1*7
  s2 s2^\mf % 92
  s1*4
  s2 s^\f % 97
  s1*4
  s1
  s2 s4^\ff % 103
}

wordsAlto = \lyricmode {
  Oh, the shark has __ pret- ty teeth, dear, __
  and he shows them __
  pearl- y white. __
  Just a jack- __ knife has Mac- heath, dear, __
  and he keeps it __ out of sight. __
  When the shark bites with his teeth, dear,
  scar- let bil- lows start to spread, __
  Fan- cy gloves though __ wears Mac- heath, dear, __
  so there's not a __ trace of red. __
  From a tug- boat by the riv- er,
  the ce- ment bag is drop- ping down __
  The ce- ment's just __ for the weight, dear, __
  Bet your Mack- ie's __ back in town. __
  Ba doo ba da doo bop,
  Ba doo ba da doo bop,
  There lies a bod- y ooz- ing life. __
  Some- one's sneak- ing __ 'round the cor- ner. __
  Is that some- one __ Mack the Knife？__
  Bop bop bop bop bop bop bop bop bop bop doo bop.
  Ah __ bop doo bop.
  Did your boy do some- thing rash？__
  Ba dot.
  Su- key Taw- dry! Jen- ny Driv- er!
  Pol- ly Peach- um! Pol- ly Peach- um！ Lu- cy Brown! __
  Oh, the line forms __ on the right, dear, __
  now that Mack- ie's, __ now that Mack- ie's, __
  You know your Mack- ie's back in town,
  Mack is back!
}

tenor = \relative c {
  \global
  s1
  s1
  s1
  s2 e4 g
  a4. a8~4 r
  r2 e4 g
  a4. a8~4 r
  r2 d,4 f
  a4. 8~4 r
  r2 c8 b4 a8~
  a1~
  a4 r g b
  e4. 8~2~ % 13 -- 4b
  e2 d4 c
  c4. a8~2~
  a4 r a a
  d4. d8~2~ % 17 -- 5a
  d4 r c8 b4 c8~(
  c2 cis4. c8->)
  r2 e,4 g
  a4. 8 r2 % 21 -- 6a
  r2 e4 g
  a4. 8 r2
  r2 d,4 f
  a8 a~2. % 25 -- 6c
  c4 c e8 d4 c8~
  c2 cis8 cis4 d8~
  d4 r g, b
  e4. 8~2~ % 29 -- 6b
  e2 d4 c
  c4. a8~2~
  a4 r a a
  d4. d8~2~ % 33 -- 7a
  d4 r c8 b4 c8~(
  c2 cis4. c8->)
  r1
  r2 r8 g a c % 37 -- 7b
  b4 g8 a r2
  r2 r8 g8 a c
  b4 g8 a r2
  r2 r8 g a c % 41 -- 8a
  b4 c e8 d4 c8~(
  c2 cis4. d8~
  d4) r g, b
  e4. e8~e2~ % 45 -- 8b
  e2 d4 c
  c4. a8~2~
  a4 r a a
  d8 8~2.~ % 49 -- 9a
  d4 r c8 b4 c8~(
  c2 cis4. c8->)
  r2 e,4 g
  a4. 8 r2 % 53 -- 9b
  r2 e4 g
  a4. 8 r2
  r2 d,4 f
  a4. 8 r2 % 57 -- 10a
  b4 c e8 d4 c8~(
  c2 cis4. d8~
  d4) r g, b
  e4. 8~2~ % 61 -- 10b
  e2 d4 c
  c4. a8~2~
  a4 r a a
  d4. 8~2~ % 65 -- 11a
  d4 r c8 b4 c8~(
  c2 cis4. c8->)
  r1
  r8 a r4 a8 r r4 % 69 -- 11b
  a8 r r a r2
  r8 c r4 c8 r8 r4
  b8 r r b r2
  r8 c r4 c8 r r4 % 73 -- 12a
  b4 b r2
  r1
  r1
  g1( % 77 -- 12b
  ges1
  f2) f8 r e d
  r1
  r2 d'4 d % 81 -- 13a
  c4 b c8 d4 e8~
  e4 r cis4. d8
  r2 d4 d
  e4. 8 r2 % 85 -- 13b
  r2 des4 des
  c4. 8 r2
  r2 c4 c
  c4 c c8 4. % 89 -- 14a
  b8 4. c8 b4 a8~(
  a4. cis8~4. c8~
  c4-.) r g b
  e4. 8~2~ % 93 -- 14b
  e2 d4 c
  c4. a8~2~
  a4 r r2
  r2 c4 c % 97 -- 15a
  c8 4.~2
  r2 f4 f
  f8 4. r2
  r8 d d d des4 des % 101 -- 15b
  c4 r d r
  e4 r e8-> e4-> e8->
  \bar "|."
}

dynamicsTenor = {
  s1
  s1
  s1
  s2 s2^\mf
  s1*14
  s1 \< % 19
  s2 \! s2^\mf
  s1
  s1*5
  s1 %27
  s2 s2^\f
  s1*7
  s1 % 36
  s2 s8 s4.^\mp
  s1*6
  s2 s2^\f % 44
  s1*7
  s2 s2^\f
  s1 % 53
  s1*30
  s2 s2^\f % 84
  s1*7
  s2 s2^\mf % 92
  s1*4
  s2 s^\f % 97
  s1*4
  s1
  s2 s4^\ff % 103
}

wordsTenor = \lyricmode {
  Oh, the shark has __ pret- ty teeth, dear, __
  and he shows them __
  pearl- y white. __
  Just a jack- __ knife has Mac- heath, dear, __
  and he keeps it __ out of sight. __
  When the shark bites with his teeth, dear,
  scar- let bil- lows, bil- lows start to spread, __ start to spread. __
  Fan- cy gloves though __ wears Mac- heath, dear, __
  so there's not a __ trace of red. __
  Ba doo ba da doo bop,
  Ba doo ba da doo bop.
  Oh yeah, the bag is drop- ping down __
  The ce- ment's just __ for the weight, dear, __
  Bet your Mack- ie's __ back in town. __
  On the side- walk, Sun- day morn- in',
  lies a bod- y, bod- y ooz- ing life. __
  Some- one's sneak- ing __ 'round the cor- ner. __
  Is that some- one __ Mack the Knife？__
  Bop bop bop bop bop bop bop bop
  bop bop doo bop.
  Ah, __ bop doo bop.
  Did your boy do some- thing rash？__ Ba dot.
  Su- key Taw- dry! Jen- ny Driv- er!
  Pol- ly Peach- um! Pol- ly Peach- um！ Lu- cy Brown! __
  Oh, the line forms __ on the right, dear, __
  now that Mack- ie's, __ now that Mack- ie's, __
  You know your Mack- ie's back in town,
  Mack is back!
}

bass= \relative c {
  \global
  s1
  s1
  s1
  s2 e4 g
  a4. a8~4 r
  r2 e4 g
  a4. a8~4 r
  r2 d,4 f
  a4. 8~4 r
  r2 c8 b4 a8~
  a1~
  a4 r g b
  a4. a8~a2~
  a2 e4 e
  d4. f8~f2~
  f4 r f f
  a4. a8~a2(
  g4) r g8 4 g8~(
  g2~g4. d8->)
  r2 e4 g
  a4. 8 r2
  r2 e4 g
  a4. 8 r2
  r2 d,4 g
  a8 a~a2.
  c4 c e8 d4 c8~
  c2 g8 4 f8~
  f4 r g b
  a4. a8~a2~ % 29 -- 6b
  a2 e4 e
  d4. f8~f2~
  f4 r f f
  a4. a8~a2( % 33 -- 7a
  g4) r g8 4 8~(
  g2~4. d8->)
  r1
  r2 r8 g a c % 37 -- 7b
  b4 g8 a r2
  r2 r8 g a c
  b4 g8 a r2
  r2 r8 g8 a c % 41 -- 8a
  b4 c e8 d4 c8~(
  c2 g4. f8~
  f4) r g b
  a4. a8~a2~ % 45 -- 8b
  a2 e4 e
  d4. f8~f2~
  f4 r f f
  a8 a~a2.( % 49 -- 9a
  g4) r g8 g4 g8~(
  g2~4. d8->)
  r2 e4 g
  a4. 8 r2 % 53 -- 9b
  r2 e4 g
  a4. 8 r2
  r2 d,4 f
  a4. 8 r2 % 57 -- 10a
  b4 c e8 d4 c8~(
  c2 g4. f8~
  f4) r g b
  a4. a8~a2~ % 61 -- 10b
  a2 e4 e
  d4. f8~f2~
  f4 r f f
  a4. a8~a2( % 65 -- 11a
  g4) r g8 4 8~(
  g2~4. d8->)
  r1
  r8 g r4 g8 r r4 % 69 -- 11b
  g8 r r g r2
  r8 a r4 a8 r r4
  a8 r r b r2
  r8 a r4 a8 r r4 % 73 -- 12a
  g4 g r2
  r1
  r2 g4^\markup{\italic Solo} b
  d4. c8~c2~ % 77 -- 12b
  c2 b4 a
  c4. d,8~d2~
  d4 r e f
  c'4. c8~c2~ % 81 -- 13a
  c4 r c8 b4 a8~
  a2. r4
  r2 g4 g
  c4. c8 r2 % 85 -- 13b
  r2 ees,4 ees
  d4. 8 r2
  r2 d4 d
  d4 d aes'8 4. % 89 -- 14a
  g8 4. c8 b4 a8~(
  a4. g8~4. d8~
  d4->) r g b
  a4. a8~a2~ % 93 -- 14b
  a2 e4 e
  d4. f8~f2~
  f4 r r2
  r2 d4 d % 97 -- 15a
  d8 4.~2
  r2 g4 g
  g8 4. r2
  r8 e8 e e ees4 ees % 101 -- 15b
  d4 r g r
  c4 r c8-> 4-> 8->
  \bar "|."
}

dynamicsBass = {
  s1
  s1
  s1
  s2 s2^\mf
  s1*14
  s1 \< % 19
  s2 \! s2^\mf
  s1
  s1*5
  s1 %27
  s2 s2^\f
  s1*7
  s1 % 36
  s2 s8 s4.^\mp
  s1*6
  s2 s2^\f % 44
  s1*7
  s2 s2^\f
  s1 % 53
  s1*30
  s2 s2^\f % 84
  s1*7
  s2 s2^\mf % 92
  s1*4
  s2 s^\f % 97
  s1*4
  s1
  s2 s4^\ff % 103
}

wordsBass = \lyricmode {
  Oh, the shark has __ pret- ty teeth, dear, __
  and he shows them __
  pearl- y white. __
  Just a jack- __ knife has Mac- heath, dear, __
  and he keeps it __ out of sight. __
  When the shark bites with his teeth, dear,
  scar- let bil- lows, bil- lows start to spread, start to spread. __
  Fan- cy gloves though __ wears Mac- heath, dear, __
  so there's not a __ trace of red. __
  Ba doo ba da doo bop,
  Ba doo ba da doo bop.
  Oh yeah, the bag is drop- ping down __
  The ce- ment's just __ for the weight, dear, __
  Bet your Mack- ie's __ back in town. __
  On the side- walk, Sun- day morn- in',
  lies a bod- y, bod- y ooz- ing life. __
  Some- one's sneak- ing __ 'round the cor- ner. __
  Is that some- one __ Mack the Knife？__
  Bop bop bop bop bop bop bop bop
  bop bop doo bop.
  And Mac- heath spends __ like a sail- or. __
  Did your boy do some- thing rash？__
  Su- key Taw- dry! Jen- ny Driv- er!
  Pol- ly Peach- um! Pol- ly Peach- um！ Lu- cy Brown! __
  Oh, the line forms __ on the right, dear, __
  now that Mack- ie's, __ now that Mack- ie's, __
  You know your Mack- ie's back in town,
  Mack is back!
}

dynamicsPiano = {
  s1^\mf
  s1*17
  s1 \< % 19
  s1 \!
  s1*8
  s1^\f
  s1*23
  s1^\f % 53
  s1*31
  s1^\f % 85
  s1*7
  s1^\mf % 93
  s1*3
  s1^\f % 97
  s1*4
  s1^\markup{\italic{slight rit.}}
  s2 s2^\ff
}

pianoRH = \relative c' {
  \global
  r8 <e g a c>-. r4 q-. r
  q4-. r8 q-. r q-. r4
  r8 q-. r4 q-. r
  <f a b d>4-> q-> r2
  r8 <a, d e g> r4 q8 r r4 % 5 -- 3b
  q8 r r q r2
  r8 <a c d f> r4 q8 r r4
  <f a b e>8 r r q r2
  r8 <a c d f>8 r4 q8 r8 r4 % 9 -- 4a
  <f a b e>4 q r2
  r8 <g b c e> r4 r8 q r4
  <b d e g>4 <a c d f>8 <g b c e> r2
  q4. q8~q4-. q4 % 13 -- 4b
  <c e a>2 <b e g>4 <c e a>
  <a c d f>4. q8 r2
  q2 4 4
  r8 <a c d f> r4 q2 % 17 -- 5a
  <f b e>4 q <f c' e>8 <f b e>4 <g b c e>8~
  q2 <g bes cis e>4. <a c d f>8
  r4 <f b e>2.
  r8 <a d e g> r4 q8 r8 4 % 21 -- 5b
  q8 r q r r2
  r8 <a c d f> r4 q8 r r4
  <f a b e>8 r r q r2
  r8 <a c d f> r4 q8 r8 r4 % 25 -- 6a
  <f a b e>4 q r4r8 <g a c e>8~
  q2 <g cis f>4. <a c d f>8
  r4 <f b e>2.
  <g b c e>4. q8~q4 q % 29 -- 6b
  <c e a>2 <b e g>4 <c e a>
  <a c d f>4. q8 r2
  <a c d f>2 q4 q
  r8 <a c d f> r4 q2 % 33 -- 7a
  <f b e>4 q <f c' e>8 <f b e>4 <g b c e>8~
  q2 <g bes cis e>4. <a c d f>8
  r1
  r8 <a d e g> r4 8 r r4 % 37 -- 7b
  q8 r r q r2
  r8 <a c d f> r4 q8 r r4
  <f a b e>8 r r q r2
  r8 <a c d f> r4 q8 r r4 % 41 -- 8a
  <f a b e>4 q r r8 <g a c e>8~
  q2 <g cis f>4. <a c d f>8
  r4 <f b e>2.->
  <g b c e>4. q8~q4 q % 45 -- 8b
  <c e a>2 <b e g>4 <c e a>
  <a c d f>4. q8 r2
  <a c d f>2 q4 q
  r8 <a c d f> r4 q2 % 49 -- 9a
  <f b e>4 q <f c' e>8<f b e>4 <g b c e>8~
  q2 <g bes cis e>4. <a c d f>8
  r4 <g g'>2.->
  r8 <a d e g> r4 q8 r r4 % 53 -- 9b
  q8 r r q r2
  r8 <a c d f>8 r4 q8 r r4
  <f a b e>8 r  r q r2
  r8 <a c d f> r4 q8 r r4 % 57 -- 10a
  <f a b e>4 q r r8 <g a c e>8~
  q2 <g cis f>4. <a c d f>8
  r4 <f b e>2.
  <g b c e>4. q8~q4 q % 61 -- 10b
  <c e a>2 <b e g>4 <c e a>
  <a c d f>4. q8 r2
  q2 q4 q
  r8 <a c d f> r4 q2 % 65 -- 11a
  <f b e>4 q <f c' e>8 <f b e>4 <g b c e>8~
  q2 <g bes cis e>4. <a c d f>8
  r1
  r8 <a d e g>8 r4 q8 r r4 % 69 -- 11b
  q8 r r q r2
  r8 <a c d f> r4 q8 r r4
  <f a b e>8 r r q r2
  r8 <a c d f> r4 q8 r r4 % 73 -- 12a
  <f a b e>4 q r2
  r8 <g b c e> r4 r8 q8 r4
  <b d e g>4 <a c d f>8 <g b c e> r2
  <b d g>4 b8~ q~q b <d g>4 % 77 -- 12b
  <bes des ges>2 <des ges>4 q
  <a c d f>4. q8 r2
  q2 q4 q
  r8 <a c d f> r4 q2 % 81 -- 13a
  <f c' e>4 <f b e> <f c' e>8 <f b e>4 <g b c e>8~
  q2 <g bes cis e>4. <a c d f>8
  r1
  <a d e g>4. q8 r2 % 85 -- 13b
  r8 q8 r4 <g c des f>4 q
  <a c d f>4. q8 r2
  r8 q8 r4 q q
  <c d f a>4 q <ees ges aes c>8 q4. % 89 -- 14a
  <f a b e>8 q4. r4 r8 <g, a c e>8~
  q4. <g cis f>8~4. <a c d f>8
  r4 <f b e>2.->
  <g b c e>4. q8~q4 q % 93 -- 14b
  <c e a>2 <b e g>4 <c e a>
  <a c d f>4. q8 r2
  q4 q r2
  r2 <c d f a>4 q % 97 -- 15a
  q8 q4.~q2
  r2 <f b e>4 q
  q8 q4. r2
  r8 <b, d g>4 q8 <bes des ges>4 q % 101 -- 15b
  <a c d f>4 r <f b e> r
  <a d e g>4 r <d' g c>8 q4 q8
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  s1
  s1
  s1
  s1
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s1
  s1
  s1
  s1
  \bar "|."
}

pianoLH = \relative c, {
  \global
  \oneVoice
  c4 e g a
  c, e g a
  c, e g a
  <g, g'>-> q-> r2
  c4 e g a % 5
  c,4 e g a
  d, e f fis
  g4 f e ees
  d4 e f fis
  g4 g g8 g,4. % 10
  c4. 8 d4. 8
  e4 d8 c r2
  a'4 e'8 a,~a4 a
  a4 c e e
  d4 c b a % 15
  d,4 e f a
  d,4 e f a
  g4 g g8 g4.
  c,4 g' cis,4. d8
  r4 g2.-> % 20
  c,4 e g a
  c,4 e g a
  d,4 e f fis
  g4 f e ees
  d4 e f fis % 25
  g4 g g8 g,4 c8~
  c8 g' a4 cis,8 g' cis d
  r4 g,2.->
  a4 e'8 a,~a4 a
  a4 c e e % 30
  d4 c b a
  d,4 e f a
  d,4 e f a
  g4 g g8 g4.
  c,4 g' cis,4. d8 % 35 % 35
  r4 <g, g'>2.
  c4 e g a
  c,4 e g a
  d,4 e f fis
  g4 f e ees % 40
  d4 e f fis
  g4 g g8 g,4 c8~
  c8 g' c4 cis,8 g' cis d
  r4 g,2.
  a4 e'8 a,~a4 a % 45
  a4 c e e
  d4 c b a
  d,4 e f a
  d,4 e f a
  g4 g g8 g4. % 50
  c,4 g' cis,4. d8
  r1
  c4 e g a
  c,4 e g a
  d,4 e f fis % 55
  g4 f e ees
  d4 e f fis
  g4 g4 8 g,4 c8~
  c8 g' e'4 cis,8 g' cis d
  r4 g,2. % 60
  a4 e'8 a,~a4 a
  a4 c e e
  d4 c b a
  d,4 e f a
  d,4 e f a % 65
  g4 g g8 4.
  c,4 g' cis,4. d8
  r4 <g, g'>2.->
  c4 e g a
  c,4 e g a % 70
  d,4 e f fis
  g4 f e ees
  d4 e f fis
  g4 g g8 g,4.
  c4. 8 d4. 8 % 75
  e4 d8 c r2
  e4 b'8 e~e2
  ees,4 bes' ees ees
  d4 c b a
  d,4 e f a % 80
  d,4 e f a
  g4 g4 8 4.
  c,4 g' cis,4. d8
  r4 g2.->
  c,4 d e g % 85
  c,4 e ees ees
  d4 e f a
  d,4 e f a
  d,4 f aes8 4.
  g8 4. 8 g,4 c8~ % 90
  c8 g' c cis,~cis g' cis d
  r4 g,2.
  a4 e'8 a,~4 a
  a4 c e e
  d4 c b a % 95
  <d, d'>4 q r2
  r2 d'4 d
  d8 d4.~d2
  r2 g4 g
  g8 4. r2 % 100
  r8 e4 8 ees4 ees
  d4 d, g g,
  <c c'>4 r q8-> q4-> q8->
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  s1
  s1
  s1
  s1
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \clef bass
  \voiceTwo
  s1
  s1
  s1
  s1
  \bar "|."
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSop
      >>
% Single alto staff
      \new Dynamics \dynamicsAlto
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "alto" \alto
        \new Lyrics \lyricsto "alto" \wordsAlto
      >>
% Single tenor staff
      \new Dynamics \dynamicsTenor
      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \new Voice = "tenor" { \clef "treble_8" \tenor }
        \new Lyrics \lyricsto "tenor" \wordsTenor
      >>
% Single bass staff
      \new Dynamics \dynamicsBass
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" { \clef bass \bass }
        \new Lyrics \lyricsto "bass" \wordsBass
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \pianoRH
        \new Voice \pianoRHone
        \new Voice \pianoRHtwo
      >>
      \new Dynamics \dynamicsPiano
      \new Staff <<
        \new Voice \pianoLH
        \new Voice \pianoLHone
        \new Voice \pianoLHtwo
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
