\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Blue Skies"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Irving Berlin"
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

% uncomment for two systems per page
#(set-global-staff-size 17)

global = {
  \key f \major
  \time 4/4
}

drumPitchNames.cc = #'crashcymbal
drumPitchNames.bs = #'swish
drumPitchNames.br = #'ride
drumPitchNames.ht = #'highhat

#(define mystyle
  '((ride    cross   #f  1)
    (swish   default #f  3)
    (highhat cross   #f -1)
  ))

midiDrumPitches.bass = des

BrushesTrack = \drummode {
  \repeat percent 11 { br4\mp^\markup\italic ride ^\markup\italic Brushes  <br bs>^\markup\italic Swish br q }
  br4 4  \tuplet 3/2 {bs8 8 8} \tuplet 3/2 {bs8 8 8}
  \repeat percent  7 { br4 <br bs> br q }
  \repeat unfold 4 { \tuplet 3/2 {bs8 8 8}}
}

HighhatTrack = \drummode {
%  \stemDown
  \repeat percent 11 { r4 ht_\markup "H.H." r ht }
  r4 ht r ht
  \repeat percent  7 { r4 ht r ht }
  R1
}

tempoFast = {
  \tempo 4=192 % 4=144 is another possibility
  \set Score.tempoHideNote = ##t
  s1*35
  s1*28
  s2 \tempo 4=48 s2
}

tempoSlow = {
  \tempo 4=144
  \set Score.tempoHideNote = ##t
  s1*35
  s1*28
  s2 \tempo 4=36 s2
}

TempoTrack = { \tempoFast }
%TempoTrack = { \tempoSlow }

RehearsalTrack = {
  \mark \markup { \box "2a" } s1*4
  \mark \markup { \box "2b" } s1*4
  \mark \markup { \box "3a" } s1*4
  \mark \markup { \box "3b" } s1*4
  \mark \markup { \box "4a" } s1*4
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "6a" } s1*3
  \mark \markup { \box "6b" } s1*3
  \set Score.currentBarNumber = #52
  \mark \markup { \box "9a" } s1*4
  \mark \markup { \box "9b" } s1*4
  \mark \markup { \box "10a" } s1*4
  \mark \markup { \box "10b" } s1*4
  \mark \markup { \box "11a" } s1*4
  \mark \markup { \box "11b" } s1*3
  \mark \markup { \box "12a" } s1*3
  \mark \markup { \box "12b" } s1*3
}

ChordTrack = \chordmode {
  s1*12
  s2 d4.:m d8:m9 % 3b
  s1
  s2 d4.:m7 g8:6.9
  s1
  s8 f2:maj9 d4.:m7 % 4a
  s8 g2:m7 bes4./c
  f1:9
  c8:9- c4:7 c4:7.9- c4.:13.9-
  f1:maj9 % 4b
  bes4:m7 c8:m7 f:maj7 s2
  g4.:m7.5- f8:maj9 s2
  c4:11.9- ges8:9 f:9 s2 % 5a
  f1:maj9
  bes4:m7 c8:m7 f:maj9 s2
  g4.:m7.5- f8:maj9 s2 % 5b
  c4:11.9- des8:9 f4:9 a4.:7.9-
  s2 d4.:m d8:m % FIX Dm(Maj7)
  s1 % 6a
  s2 d4.:m7 g8:6.9
  s1
  f2:maj7 d:m7 % 6b
  g2:m7 bes/c
  f1:9^7
  ges2/aes aes/bes % 9a
  r1*7
  ges2/aes aes/bes % 10a
  r1*7
  s4 s8 a8:7.9- s2 % 11a
  s2 d4.:m d8:m % FIX
  s1
  s2 d4.:m7 g8:9
  s1 % 11b
  f1:maj9
  s1
  bes1/c % 12a
  s1
  f1:maj9
  s1*3 % 12b
}

sopranoJoint = \tripletFeel 8 \relative {
  \global
  R1*4^\markup\bold "Straight Ahead Swing"
  d'4.^\mp a'8~2 ~ % 2b
  a2 g8 f g a~
  a1~
  a4 r g8 f g a~
  a4. c,8~2~ % 3a
  c2 bes8 d4 f8~
  f1
  R1
  d4.^\mf a'8~2~ % 3b
  a2 g8 f g a~
  a1~
  a4 r g8 f g a~
  a2 c,~ % 4a
  c2 8 d4 f8~
  f1
  R1 \break
}

sopranoSingle = \tripletFeel 8 \relative {
  f'8^\mf g a bes c2 % 4b
  des8 c bes <a c>8~2
  <g bes>8 a g <g a>~g2
  g8 f e f~4 r % 5a
  f8 g a bes c2
  des8 c bes <a c>~2
  <g bes>8 a g <g a>~2 % 5b
  g8 f e f~8 r8 r4
  d4.^\mf a'8~2~
  a2 g8 f g a~ % 6a
  a1~
  a4 r g8 f g a!~
  a2 c,~ % 6b
  c2 8 d4 f8~
  f1^\markup "Skip to p9." \bar "||"
  R1 % 9a
  r4^\markup Drive! c'8->^\ff 8-> 8-> 4-> <a c>8-> ~
  q1
  <aes des>4.-> <a c>8-> ~4 bes4->
  <a c>2.-> r4 % 9b
  <g bes>4.-> a8-> ~4 g->
  <g a>1->
  r2 g8 f e f-^
  R1 % 10a
  r4 c'8-> 8-> 8-> 4-> <a c>8-> ~
  q1
  <aes des>4.-> <a c>8-> ~4 bes->
  a2.-> r4 % 10b
  <g bes>4.-> a8-> ~4 g->
  <g a>1->
  r2
  g8 f e f-^
  R1 % 11a
  d4.^\mf a'8~2~
  a2 g8 f g a~
  a1~
  a4 r g8 f g <g a>~ % 11b
  q4. <a c>8^\< ~ q2 ~
  q2.\! r4
  <bes c>2.->^\f r4 % 12a
  q2.-> r4
  <a c>1\omit\cresc^\markup\italic "cresc. to end" ~
  q1~ % 12b
  q1~
  q1\omit\ff\fermata
}

words = \lyricmode {
  Blue Skies __ smil -- in' at me. __
  Noth -- in' but Blue __ Skies __ do I see. __

  Blue -- birds __ sing -- in' a song. __
  Noth -- in' but Blue -- birds __ all day long. __
}

wordsSop = \lyricmode {
  Ne -- ver saw the sun shin -- in' so bright, __
  nev -- er saw things __ go -- in so right. __
  No -- tic -- ing the days hur -- ry -- in' by, __
  when you're in love, __ my! How they fly. __

  Blue days __ all of them gone. __
  Noth -- in' but Blue __ Skies __ from now on. __

  Nev -- er saw the sun __ shin -- in' __ so bright.
  Nev -- er __ saw things go -- in' so right.
  No -- tic -- in' the days __ hur -- ry -- in' by,
  when you're __ in love, my! how they fly.

  Blue days __ all of them gone. __
  Noth -- in' but Blue __ Skies __ from now on. __
}

wordsMidi = \lyricmode {
  "Blue " "Skies "  smil "in' " "at " "me. " 
  "\nNoth" "in' " "but " "Blue "  "Skies "  "do " "I " "see. " 

  "\nBlue" "birds "  sing "in' " "a " "song. " 
  "\nNoth" "in' " "but " Blue "birds "  "all " "day " "long. " 

  "\nNe" "ver " "saw " "the " "sun " shin "in' " "so " "bright, " 
  "\nnev" "er " "saw " "things "  go "in " "so " "right. " 
  "\nNo" tic "ing " "the " "days " hur ry "in' " "by, " 
  "\nwhen " "you're " "in " "love, "  "my! " "How " "they " "fly. " 

  "\nBlue " "days "  "all " "of " "them " "gone. " 
  "\nNoth" "in' " "but " "Blue "  "Skies "  "from " "now " "on. " 

  "\nNev" "er " "saw " "the " "sun "  shin "in' "  "so " "bright. "
  "\nNev" "er "  "saw " "things " go "in' " "so " "right. "
  "\nNo" tic "in' " "the " "days "  hur ry "in' " "by, "
  "\nwhen " "you're "  "in " "love, " "my! " "how " "they " "fly. "

  "\nBlue " "days "  "all " "of " "them " "gone. " 
  "\nNoth" "in' " "but " "Blue "  "Skies "  "from " "now " "on. " 
}

altoJoint = \tripletFeel 8 \relative {
  \global
  R1*4
  d'4.^\mp a'8~2 ~ % 2b
  a2 g8 f g a~
  a1~
  a4 r g8 f g a~
  a4. c,8~2~ % 3a
  c2 bes8 d4 f8~
  f1
  R1
  d4.^\mf a'8~2~ % 3b
  a2 g8 f g a~
  a1~
  a4 r g8 f g a~
  a2 c,~ % 4a
  c2 8 4 8~
  c1
  R1
}

altoSingle = \tripletFeel 8 \relative {
  f'8^\mf g a bes g2 % 4b
  aes8 8 g g8~2
  f8 8 8 e8~2
  f8 8 des c~4 r % 5a
  f8 g a bes g2
  aes8 8 g8 8~2
  f8 8 8 e~2 % 5b
  f8 8 des c~8 r r4
  d4.^\mf a'8~2~
  a2 g8 f g a~ % 6a
  a1~
  a4 r g8 f g a~
  a2 c,~ % 6b
  c2 8 4 8~
  c1
  \repeat unfold 2 {
    R1 % 9a/10a
    r4 c'8->^\ff 8-> 8-> 4-> g8-> ~
    g1
    f4.-> 8-> ~4 ges4->
    f2.-> r4 % 9b/10b
    ees4.-> f8-> ~4 ees4->
    e1->
    r2 g8 f e f-^
  }
  R1 % 11a
  d4.^\mf a'8~2~
  a2 g8 f g a~
  a1~
  a4 r g8 f g e~ % 11b
  e4. g8^\< ~2~
  g2.\! r4
  f2.-> ^\f r4 % 12a
  f2.-> r4
  g1\omit\cresc^\markup\italic "cresc. to end" ~
  g1~ % 12b
  g1~
  g1\fermata\omit\ff
}

wordsAlto = \lyricmode {
  Ne -- ver saw the sun shin -- in' so bright, __
  nev -- er saw things __ go -- in so right. __
  No -- tic -- ing the days hur -- ry -- in' by, __
  when you're in love, __ my! How they fly. __

  Blue days __ all of them gone. __
  Noth -- in' but Blue __ Skies __ from now on. __

  Nev -- er saw the sun __ shin -- in' __ so bright.
  Nev -- er __ saw things go -- in' so right.
  No -- tic -- in' the days __ hur -- ry -- in' by,
  when you're __ in love, my! how they fly.

  Blue days __ all of them gone. __
  Noth -- in' but Blue __ Skies __ from now on. __
}

tenorJoint = \tripletFeel 8 \relative {
  \global
  R1*4
  d4.^\mp a'8~2 ~ % 2b
  a2 g8 f g a~
  a1~
  a4 r g8 f g a~
  a4. c,8~2~ % 3a
  c2 bes8 d4 f8~
  f1
  R1
  r2 r4 d'8^\mf cis~ % 3b
  cis1
  r2 c8 d c b~
  b4 r b8 8 8 c~
  c2 a( % 4a
  bes2) 8 4 a8~
  a1
  R1
}

tenorSingle = \tripletFeel 8 \relative {
  f8^\mf g a bes c2
  des8 8 ees e8~2
  des8 c des c~2
  des8 8 bes a~4 r % 5a
  f8 g a bes c2
  des8 8 ees8 e~2
  des8 c des c~2 % 5b
  des8 8 bes a~8 r r4
  r2 r4 d8^\mf cis~
  cis1 % 6a
  r2 c8 d c b~
  b4 r b8 8 8 c~
  c2 a( % 6b
  bes2) 8 4 a8~
  a1

  \repeat unfold 2 {
    R1 % 9a/10a
    r4 c8->^\mf 8-> 8-> 4-> e8-> ~
    e1
    ees4.-> 8-> ~4 des->
    c2.-> r4 % 9b/10b
    d4.-> c8-> ~4 bes->
    c1->
    r2 bes8 a g a-^
  }
  R1 % 11a
  r2 r4 d8^\mf cis~
  cis1
  r2 c8 d c b~
  b4 r b8 8 8 c~ % 11b
  c4. e8^\< ~2~
  e2.\! r4
  d2.-> ^\f r4 % 12a
  d2.-> r4
  e1\omit\cresc^\markup\italic "cresc. to end" ~
  e1~ % 12b
  e1~
  e1\fermata\omit\ff
}

wordsTenor = \lyricmode {
  Ne -- ver saw the sun shin -- in' so bright, __
  nev -- er saw things __ go -- in so right. __
  No -- tic -- ing the days hur -- ry -- in' by, __
  when you're in love, __ my! How they fly. __

  Blue days __ all of them gone. __
  Noth -- in' but Blue __ Skies __ from now on. __

  Nev -- er saw the sun __ shin -- in' __ so bright.
  Nev -- er __ saw things go -- in' so right.
  No -- tic -- in' the days __ hur -- ry -- in' by,
  when you're __ in love, my! how they fly.

  Blue days __ all of them gone. __
  Noth -- in' but Blue __ Skies __ from now on. __
}

bassJoint= \tripletFeel 8 \relative {
  \global
  R1*4
  d4.^\mp a'8~2 ~ % 2b
  a2 g8 f g a~
  a1~
  a4 r g8 f g a~
  a4. c,8~2~ % 3a
  c2 bes8 d4 f8~
  f1
  R1
  r2 r4 d'8^\mf cis~ % 3b
  cis1
  r2 c8 d c b~
  b4 r b8 8 8 c~
  c2 a( % 4a
  f2) 8 4 g8~
  g1
  R1
}

bassSingle = \tripletFeel 8 \relative {
  f8^\mf g a bes a2 % 4b
  bes8 8 8 c~2
  des8 c bes c~2
  bes8 8 aes g~4 r % 5a
  f8 g a bes a2
  bes8 8 8 c~2
  des8 c bes c~2 % 5b
  bes8 8 aes g~8 r r4
  r2 r4 d'8^\mf cis~
  cis1 % 6a
  r2 c8 d c b~
  b4 r b8 8 8 c~
  c2 a( % 6b
  f2) 8 4 g8~
  g1
  \repeat unfold 2 {
    R1 % 9a/10a
    r4 c8->^\ff 8-> 8-> 4-> 8-> ~
    c1
    bes4.-> 8-> ~4 aes->
    g2.-> r4 % 9b\10b
    f4.-> 8-> ~4 4->
    f1->
    r2 bes8 a g a-^
  }
  R1 % 11a
  r2 r4 d8^\mf cis~
  cis1
  r2 c8 d c b~
  b4 r b8 8 8 c~ % 11b
  c4. <e \parenthesize \tweak font-size #-3 c>8^\< ~2~
  q2.\! r4
  c2.->^\f r4 % 12a
  c2.-> r4
  c1\omit\cresc^\markup\italic "cresc. to end" ~
  c1~ % 12b
  c1~
  c1\fermata\omit\ff
}

wordsBass = \lyricmode {
  Ne -- ver saw the sun shin -- in' so bright, __
  nev -- er saw things __ go -- in so right. __
  No -- tic -- ing the days hur -- ry -- in' by, __
  when you're in love, __ my! How they fly. __

  Blue days __ all of them gone. __
  Noth -- in' but Blue __ Skies __ from now on. __

  Nev -- er saw the sun __ shin -- in' __ so bright.
  Nev -- er __ saw things go -- in' so right.
  No -- tic -- in' the days __ hur -- ry -- in' by,
  when you're __ in love, my! how they fly.

  Blue days __ all of them gone. __
  Noth -- in' but Blue __ Skies __ from now on. __
}

pianoRH = \tripletFeel 8 \relative {
  \global
  R1*12
  r2 <f' a d>8-- q-. r <f a cis e>8~ % 3b
  q1
  r2 <f a c d>8-- q-. r <f a b e>8~
  q1
  r8 <g, a c e>4. r8 <f a c d>4. % 4a
  r8 q4. r8 <f bes d>4.
  <g a c f>1
  <g c e>8 <bes e g>4 <des g bes>8~8 <e a des>4.
  <e g a c>4 r r8 q4.-> % 4b
  <aes, des f>4 <bes ees g>8 <c e g a>8~2
  <des f g bes>4. <c ees g a>8~2
  << {f4 e8 <g, a c f>~<g a c>2} \new Voice {\voiceTwo <bes des>4. s8 s2} >> % 5a
  <e g a c>4-^ r r8 q4.->
  <aes, des f>4 <bes ees g>8 <c e g a>8~2
  <des f g bes>4. <c e g a>8~2 % 5b
  << {f4 e8 <g, a c f>~8 <g bes cis e>4.->} \new Voice {\voiceTwo <bes des>4. s8 s2} >>
  r2 <d f a>8-- 8-. r <cis f a>8~
  q1 % 6a
  r2 <c f a>8-- 8-. r <b e a>8~
  q1
  r8 <g a c e>4. r8 <f a c d>4. % 6b
  r8 <f a bes d>4. r8 <f bes d>4.
  <g a c f>1
  <ges bes des>2 <aes c ees> % 9a
  r4 <c c'>8-> 8-> 8-> 4-> 8-> ~
  q1~
  q1~
  q2~8 8-> 8-> 8-> ~ % 9b
  q1~
  q1
  q8-^ r r4 r2
  r4 r8 <ges bes des>8~8 <aes c ees>4. % 10a
  r4 <c c'>8-> 8-> 8-> 4-> 8-> ~
  q1~
  q1~
  q2~8 8-> 8-> 8-> ~ % 10b
  q1~
  q1
  q8-^ r r4 r2
  r4 r8 <g bes c e>8-> ~2 % 11a
  r2 <d' f a>8-- 8-. r <cis f a>~
  q1
  r2 <c f a>8-- 8-. r <b f' a>~
  q1 % 11b
  <g a c e>1
  <e' g a c>1
  <d f bes c>1-> % 12a
  q1->
  <g, a c e>4. 8 4. 8~
  q8 4 8 2 % 12b
  <e' g a c>4. 8 4 8 <g a c e>~
  << {q1\fermata} \new Voice {\voiceTwo s2 <e' e'>4->^\fermata-\markup\italic "(on cue)" <a a'>->^\fermata} >>
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1*12
  s2 s\mf % 3b
  s1*7
  s1\mf % 4b
  s1*7
  s1\mf % 5b++
  s1*6
  s1\cresc % 9a
  s1\ff
  s1*15
  s1\mf % 11a+
  s1*3
  s1\cresc % 11b+
  s1
  s1\f % 12a
  s1
  s1\omit\cresc-\markup\italic "cresc. to end"
  s1 % 12b
  s1
  s1\omit\ff
}

pianoLH = \tripletFeel 8 \relative {
  \global
  R1*19
  cis8 e4 g8~8 bes4. % 4a+++
  <f c'>4-^ r r8 q4.-> % 4b
  bes,4 c8 f,~2
  g4 c8 f,~2
  c'4. f,8~2 % 5a
  <f' c'>4-^ r4 r8 q4.->
  bes,4 c8 f,~2
  g4 c8 f,~2 % 5b
  c'4. f,8~8 a4.->
  <d, d'>1~
  q1~ % 6a
  q1
  g1
  f2 2 % 6b
  g2 c,
  f1
  aes2 bes % 9a
  <c, c'>1~
  q1~
  q1~2~8 q-> q-> q ~ % 9b
  q1~
  q1
  q8-^ r r4 r2
  r4 r8 <aes aes'>8~8 <bes bes'>4.-> % 10a
  <c c'>1~
  q1~
  q1~2~8 q-> q-> q ~ % 10b
  q1~
  q1
  q8-^ r r4 r2
  r4 r8 <a a'>8-> ~2 % 11a
  <d d'>1~
  q1~
  q2. r8 g8~
  g1 % 11b
  f1
  f1
  r2 <c c'>2-> % 12a
  r2 q->
  f2 c
  f2 c % 12b
  f2 c
  f1\fermata
  \bar "|."
}

bassguitar = \tripletFeel 8 \relative {
  \global
  d4\mp^\markup\italic Walk e f a
  g4 bes a8 8 cis4
  d4 a f d
  bes'4 e, a8 8 ees4
  d4 e f d % 2a
  cis4 a' cis e
  f4 d a f
  g4 d b a
  f'4 e d c % 3a
  g4 d' c ges'
  f4 g a f
  e4 bes' a8 8 ees4
  d4 e f d % 3b
  cis4 a' cis e
  f4 d a f
  g4 d b g
  f'4 e d c % 4a
  g4 d' c g'
  f4 g a8 f d4
  c4. c'8~2
  f,4-^ r r8 f4.-> % 4b
  bes,4 c8 f,~2
  g4 c8 f~2
  c8 c' ges f~2 % 5a
  f4-^ r r8 f4.-> bes,4 c8 f,8~2
  g4 c8 f~2 % 5b
  c8 c' ges f~8 a4.->
  d,4\mf e f d
  cis4 a' cis e % 6a
  f4 d a f
  g4 d b g
  f'4 e d c % 6b
  g4 d' c g'
  f4 g a8. f16 d4

  aes'2^\cresc bes % 9a
  c,1^\ff ~
  c1~
  c1~
  c2~8 8-> 8-> 8-> ~ % 9b
  c1~
  c1
  c8-^ r r4 r2
  r4 r8aes-> ~8 bes4.-> % 10a
  c1~
  c1~
  c1~
  c2~ 8 8-> 8-> 8-> ~ % 10b
  c1~
  c1
  c8-^ r r4 r2
  r4 r8 a8-> ~2 % 11a
  d4\mf e f d
  cis4 a' cis e
  f4 d a f
  g4 d b g % 11b
  f'4\cresc e d c
  f,4 f' g a
  r2 <c, c'>->^\f % 12a
  r2 q->
  f4.\omit\cresc-\markup\italic "cresc. to end" 8 c2
  f4. 8 c2 % 12b
  f4. 8 c4. 8
  f,1\fermata\omit\ff
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \global s1*20 \sopranoSingle }
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice { \global s1*20 \altoSingle }
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice { \global s1*20 \tenorSingle }
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice { \global s1*20 \bassSingle }
            \addlyrics \wordsBass
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \partCombine \sopranoJoint \altoJoint
            \new NullVoice \sopranoJoint
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
            \new Voice \partCombine \tenorJoint \bassJoint
          >>
        >>
        \new PianoStaff = piano <<
          <<
            \new ChordNames { \ChordTrack }
%            \new FretBoards { \ChordTrack }
          >>
%      \new Staff = acousticguitar {
%        \new Voice \ChordTrack
%      }
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new Staff = bassguitar \with {
      }
      <<
        \clef bass
        \new Voice \bassguitar
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \BrushesTrack \HighhatTrack >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \global s1*20 \sopranoSingle }
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice { \global s1*20 \altoSingle }
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice { \global s1*20 \tenorSingle }
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice { \global s1*20 \bassSingle }
            \addlyrics \wordsBass
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \partCombine \sopranoJoint \altoJoint
            \new NullVoice \sopranoJoint
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
            \new Voice \partCombine \tenorJoint \bassJoint
          >>
        >>
        \new PianoStaff = piano <<
          <<
            \new ChordNames { \ChordTrack }
%            \new FretBoards { \ChordTrack }
          >>
%      \new Staff = acousticguitar {
%        \new Voice \ChordTrack
%      }
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new Staff = bassguitar \with {
      }
      <<
        \clef bass
        \new Voice \bassguitar
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \BrushesTrack \HighhatTrack >>
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice { \global \sopranoJoint \sopranoSingle }
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \global \altoJoint \altoSingle }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice { \global \tenorJoint \tenorSingle }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice { \global \bassJoint \bassSingle }
          >>
        >>
        \new Staff = guitar \with { midiInstrument = "acoustic guitar" }
        {
          \new Voice \ChordTrack
        }
        \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
      >>
      \new Staff = bassguitar \with {
        midiInstrument = "acoustic bass"
      }
      <<
        \clef bass
        \new Voice \bassguitar
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \BrushesTrack \HighhatTrack >>
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice { \global \sopranoJoint \sopranoSingle }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \global \altoJoint \altoSingle }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice { \global \tenorJoint \tenorSingle }
            \addlyrics \wordsMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice { \global \bassJoint \bassSingle }
          >>
        >>
        \new Staff = guitar \with { midiInstrument = "acoustic guitar" }
        {
          \new Voice \ChordTrack
        }
        \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
      >>
      \new Staff = bassguitar \with {
        midiInstrument = "acoustic bass"
      }
      <<
        \clef bass
        \new Voice \bassguitar
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \BrushesTrack \HighhatTrack >>
    >>
    \midi {}
  }
}
