\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Nightingale Sang in Berkeley Square"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "ManningSherwin"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "EricMaschwitz"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
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
  \key f \major
  \time 3/4
}

TempoTrack = {
  \tempo "Rubato" 4=80
  s2.
  \set Score.tempoHideNote = ##t
  s2.*9 \time 4/4
  s1*19
  \time 2/4 \tempo 4=75 s2 \tempo 4=80 \time 4/4 % 5b+
  s1*17
  \tempo 4=75 s1*5
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "2a" } s2.*3
  \mark \markup { \circle "2b" } s2.*3
  \mark \markup { \circle "3a" } s2.*4 \time 4/4
  \mark \markup { \circle "3b" } s1*3
  \mark \markup { \circle "3c" } s1*3
  \mark \markup { \circle "4a" } s1*3
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \circle "4c" } s1*3
  \mark \markup { \circle "5a" } s1*3
  \mark \markup { \circle "5b" } s1 \time 2/4 s2 \time 4/4 s1
  \mark \markup { \circle "5c" } s1*3
  \mark \markup { \circle "6a" } s1*2
  \mark \markup { \circle "6b" } s1*3
  \mark \markup { \circle "6c" } s1*3
  \mark \markup { \circle "7a" } s1*3
  \mark \markup { \circle "7b" } s1*3
  \mark \markup { \circle "7c" } s1*4
}

sopranoA = \relative {
  \global
  R2.
  c''4(a c
  bes4) r c8(bes
  a4. f8 a4 % 2b
  g4.) r8
  a8(g
  f4 g f
  e4 f e % 3a
  g2.
  a2.~
  a4) r4 r8 g, \bar "||" \key c \major \time 4/4 \break
  e'8 e c4 r r8 c % 3b
  g'8 g e4 r c8 c
  a'8 a a b~b4 b8 b
  c2 r4 c8 c % 3c
  b4 g a f
  g8 c, g' r r4 g8 f
  e8 f g4 c, r8 c % 4a
  c2 d
  c1~
  c2 r4 r8 g % 4b
  e'4 e c2~
  c2 r4 c8 c
  a'8 a a4 b8 b4 e8 % 4c
  c2 r4 r8 c
  b4 g a4. f8
  g8 c, g'4~g r8 f % 5a
  e8 f g4 c, r8 c
  c2 d
}

sopranoBjoint = {
  R1
  \time 2/4 R2 \time 4/4 \key ees \major
  R1
  R1
  R1
  R1
}

sopranoC = \relative {
  f'8 f4 ees8 d ees f g % 6a
  bes8 bes g4~g r8 bes,
  f'8 f ees2 r8 ees % 6b
  aes8 aes g2 r8 g, \bar "||" \key c \major
  e'4 e c~8 e
  g4. g8 e4 c8 c % 6c
  a'8 r \tuplet 3/2 {r8 a a} bes b4 d8
  c2 r4 c
  b4 g a r8 f % 7a
  g8 c, g'4 r g8(f)
  e8 f g4 g4. ges8
  f2 f % 7b
  e1
  r2 r4 r8 f
  e8 f g4 g4. ges8 % 7c
  f2 f
  e1
  R1
}

sopranoB = \relative {
  c'2 r4 bes( \time 2/4 % 5b
  b8 c d ees) \bar "||" \key ees \major \time 4/4
  r8 bes c d ees f g aes
  bes8 bes g2 g8(ges) % 5c
  f8 f d2 r8 des
  c8 c bes2 \breathe ees4
}

sopranoJoint = { \sopranoA \sopranoBjoint \sopranoC }
soprano      = { \sopranoA \sopranoB      \sopranoC }

sopranoSingle = \relative {
  s2.*10
  \time 4/4 s1*18 \break
  \sopranoB
}

wordsSop = \lyricmode {
  Square.
  Ooh __
  The moon that lin -- gered o -- ver Lon -- don town,
  poor __ puz -- zled moon,
  he wore a frown
  Oh, 
}

wordsWomen = \lyricmode {
  Ooh __ ooh __ ooh. __
  That cert -- ain night,
  the night we met,
  there was mag -- ic a -- broad in the air.
  There were an -- gels din -- ing at the Ritz,
  and a night -- in -- gale __ sang in Ber -- k'ley Square. __

  I may be right, __
  but I'm per -- fect -- ly wil -- ling to swear
  that when you turned and smiled at me __
  a night -- in -- gale sang in Ber -- k'ley % off to separate staves

  how could he know we two were so in love? __
  The whole darn world seemed up -- side down.
  The streets of __ town __ were paved __ with stars.
  It was such a ro -- man -- tic af -- fair
  and as we kissed and said "\"good" -- "night\""
  a __ night -- in -- gale sang in Ber -- k'ley Square.
  A __ night -- in -- gale sang in Ber -- k'ley Square.
}

wordsSoprano = \lyricmode {
  "\nOoh "  "ooh "  "ooh. " 
  "\nThat " cert "ain " "night, "
  "\nthe " "night " "we " "met, "
  "\nthere " "was " mag "ic " a "broad " "in " "the " "air. "
  "\nThere " "were " an "gels " din "ing " "at " "the " "Ritz, "
  "\nand " "a " night in "gale "  "sang " "in " Ber "k'ley " "Square. " 

  "\nI " "may " "be " "right, " 
  "\nbut " "I'm " per fect "ly " wil "ling " "to " "swear "
  "\nthat " "when " "you " "turned " "and " "smiled " "at " "me " 
  "\na " night in "gale " "sang " "in " Ber "k'ley " "Square. "
  "\nOoh " 
  "\nThe " "moon " "that " lin "gered " o "ver " Lon "don " "town, "
  "\npoor "  puz "zled " "moon, "
  "\nhe " "wore " "a " "frown "
  "\nOh, " 
  "\nhow " "could " "he " "know " "we " "two " "were " "so " "in " "love? " 
  "\nThe " "whole " "darn " "world " "seemed " up "side " "down. "
  "\nThe " "streets " "of "  "town "  "were " "paved "  "with " "stars. "
  "\nIt " "was " "such " "a " ro man "tic " af "fair "
  "\nand " "as " "we " "kissed " "and " "said " "\"good" "night\" "
  "\na "  night in "gale " "sang " "in " Ber "k'ley " "Square. "
  "\nA "  night in "gale " "sang " "in " Ber "k'ley " "Square. "
}

dynamicsSopJoint = {
  \override DynamicTextSpanner.style = #'none
  s2.
  s2.\mp
  s2.*7
  s2 s8 s-\markup \upright Unis. \time 4/4
  s1*8
  s1-\markup \upright Unis. % 4a++
  s1*6
  s2. s8 s-\markup \upright Unis. % 5a
  s1*3 \time 2/4 s2 \time 4/4 s1*4
  s1-\markup \upright Straight % 6a
  s1*4
  s2. s4\cresc % 6c
  s1
  s4 s2.\dim
  s1\mp % 7a
  s2 s4 s-\markup \upright Unis.
  s1*3
  s1-\markup \italic "rit. al fine"
  s1*4
}

dynamicsSopSingle = {
  s2.*10
  s1*19
  \time 2/4 s2-\markup \italic "rit. e cresc." % 5b+
  s8^\markup \upright \bold Tempo s\mf s2.
  s1*3
}

altoA = \relative {
  \global
  R2.
  a'2.(
  g4) r g~(
  g4 f e % 2b
  ees4.) r8 a( g
  d2.
  c4 des c % 3a
  ees2.
  f2.~
  f4) r r8 g, \bar "||" \key c \major \time 4/4
  e'8 e c4 r r8 c % 3b
  g'8 g e4 r c8 c
  g'8 f e a~4 gis8 gis
  a2 r4 a8 aes % 3c
  g4 d e d
  e8 c ees r r4 g8 f
  d8 d d(c) bes4 r8 bes % 4a
  a2 b
  c1~
  c2 r4 r8 g % 4b
  e'4 e c2~
  c2 r4 c8 c
  g'8 g f4 a8 gis4 gis8 % 4c
  a2 r4 r8 a
  g4 d e4. d8
  e8 c ees4~ees r8 f % 5a
  e8 f g4 c, r8 c
  c2 d \break
}

altoBjoint = {
  R1 % 5b
  \time 2/4 R2 \time 4/4 \bar "||" \key ees \major
  R1
  R1 % 5c
  R1
  R1
}

altoC = \relative {
  d'8 d4 c8 d c d des % 6a
  f8 f ees4(d) r8 bes
  d8 b c2 r8 ees % 6b
  ees8 ees d2 r8 g, \bar "||" \key c \major
  d'8(c) d(c) b(a b) c
  d8(c4) c8 c4 bes8 bes % 6c
  e8 r \tuplet 3/2 {r8 a a} aes b4 aes8
  e2 r4 a8(aes)
  g4 d e r8 d % 7a
  e8 c ees4 r g8(f)
  e8 d e4 e4. ees8
  d2 d % 7b
  d1
  r2 r4 r8 f
  e8 d e4 e4. ees8 % 7c
  d2 ees
  d1
  R1
}

altoB = \relative {
  c'2 r4 bes4( % 5b
  \time 2/4 b8 c bes c) \bar "||" \key ees \major \time 4/4
  g'2(ees~
  ees4.) ees8(d2~ % 5c
  d2 b
  aes2.) \breathe c4 \break
}

altoSingle = \relative {
  \global
  s2.*10
  \key c \major \bar "||" \time 4/4
  s1*18
  \altoB
}

altoJoint = { \altoA \altoBjoint \altoC }
alto      = { \altoA \altoB      \altoC }

wordsAlto = \lyricmode {
  Square.
  Ooh __ ooh __ooh. __
  Oh,
}

wordsAltoAll = \lyricmode {
  "\nOoh "  "ooh "  "ooh. " 
  "\nThat " cert "ain " "night, "
  "\nthe " "night " "we " "met, "
  "\nthere " "was " mag "ic " a "broad " "in " "the " "air. "
  "\nThere " "were " an "gels " din "ing " "at " "the " "Ritz, "
  "\nand " "a " night in "gale "  "sang " "in " Ber "k'ley " "Square. " 

  "\nI " "may " "be " "right, " 
  "\nbut " "I'm " per fect "ly " wil "ling " "to " "swear "
  "\nthat " "when " "you " "turned " "and " "smiled " "at " "me " 
  "\na " night in "gale " "sang " "in " Ber "k'ley " "Square. "
  "\nOoh "  "ooh " "__ooh. " 
  "\nOh, " "how " "could " "he " "know " "we " "two " "were " "so " "in " "love? " 
  "\nThe " "whole " "darn " "world " "seemed " up "side " "down. "
  "\nThe " "streets " "of "  "town "  "were " "paved "  "with " "stars. "
  "\nIt " "was " "such " "a " ro man "tic " af "fair "
  "\nand " "as " "we " "kissed " "and " "said " "\"good" "night\" "
  "\na "  night in "gale " "sang " "in " Ber "k'ley " "Square. "
  "\nA "  night in "gale " "sang " "in " Ber "k'ley " "Square. "
}

dynamicsAltoJoint = {
  \override DynamicTextSpanner.style = #'none
  s2.
  s2.\mp
  s2.*8 \time 4/4
  s1*19
  \time 2/4 s2 \time 4/4
  s1*22
}

dynamicsAltoSingle = {
  s2.*10 \time 4/4
  s1*19
  \time 2/4 s2-\markup \italic "rit. e cresc." \time 4/4
  s1\mf
}

tenor = \relative {
  \global
  R2.
  e'4(c e
  d4) r d(
  c2.~ % 2b
  c4.) r8 r4
  a4 ( g a
  g4 aes g % 3a
  bes2.
  c2.~
  c4 ) r r8 g \bar "||" \key c \major \time 4/4
  e8 e c4 r r8 c % 3b
  g'8 g e4 r c'8 c
  e8 d c e~e4 e8 d
  e2 r4 e8 ees % 3c
  d4 b c c
  b8 a bes r r2
  b8 a b(a) g4 r8 g % 4a
  f2 aes
  g1~
  g2 r % 4b
  r2 r4 r8 e
  g4 b bes r
  c8 c d4 d8 d4 d8 % 4c
  e2 r4 r8 e
  d4 b c4. c8
  d8 c c4~c r8 aes % 5a
  g8 a b4 c r8 c
  c2 d
  c2 r4 bes( % 5b
  \time 2/4 a8 aes g aes) \bar "||" \key ees \major \time 4/4
  ees'2( c
  aes4.) aes8~ ( aes2 % 5c
  g2 ges
  ees2 d4) \breathe aes'
  bes8 bes4 bes8 bes bes bes bes % 6a
  c8 c aes4~4 r
  g1 % 6b
  bes8 bes a2 r8 g \bar "||" \key c \major
  b8(a) b(a) g(f g) a
  g4 f bes g8 g % 6c
  c8 r \tuplet 3/2 {r8 c c} d d4 d8
  c2 r4 e8(ees)
  d4 b c r8 c % 7a
  b8 a bes4 r2
  c8 c c4 c4. c8
  c2 c % 7b
  c1
  r2 r4 r8 c
  c8 c c4 c4. c8 % 7c
  c2 des
  b1
  R1
  \bar "|."
}

wordsTenor = \lyricmode {
  "\nOoh "  "ooh "  "ooh. " 
  "\nThat " cert "ain " "night, "
  "\nthe " "night " "we " "met, "
  "\nthere " "was " mag "ic " a "broad " "in " "the " "air. "
  "\nThere " "were " an "gels " din "ing " "at " "the " "Ritz, "
  "\nnight" in "gale "  "sang " "in " Ber "k'ley " "Square. " 

  "\nI " "may " "be " "wrong, "
  "\nper" fect "ly " wil "ling " "to " "swear "
  "\nthat " "when " "you " "turned " "and " "smiled " "at " "me " 
  "\na " night in "gale " "sang " "in " Ber "k'ley " "Square. "
  "\nOoh "  "ooh " "__ooh. " 
  "\nOh, " "how " "could " "he " "know " "we " "two " "were " "so " "in " "love? " 
  "\nOoh, "
  "\nup" "side " "down. "
  "\nThe " "streets " "of "  "town "  "were " "paved "  "with " "stars. "
  "\nIt " "was " "such " "a " ro man "tic " af "fair "
  "\nand " "as " "we " "kissed " "and " "said " "\"good" "night\" "
  "\nnight" in "gale " "sang " "in " Ber "k'ley " "Square. "
  "\nA "  night in "gale " "sang " "in " Ber "k'ley " "Square. "
}

wordsMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  I may be wrong

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Ooh,
  _ _ _ _ _ _ _ _
  paved with stars, It was such a ro -- man -- tic af -- fair
}

dynamicsTenorJoint = {
  \override DynamicTextSpanner.style = #'none
  s2.
  s2.\mp
  s2.*8 \time 4/4
  s1-\markup \upright Unis. % 3b
  s1*7
  s1-\markup \upright Unis. % 4a++
  s1*6
  s2. s8 s-\markup \upright Unis. % 5a
  s1*3
  \time 2/4 s2-\markup \italic "rit. e cresc." \time 4/4 % 5b+
  s1\mf
  s1*8
  s2. s4\cresc
  s1
  s4 s2.\dim
  s1\mp % 7a
  s1*4
  s1-\markup \upright "rit. al fine"
  s1*4
}

bass = \relative {
  \global
  R2.
  f2.~
  f4 r f4~
  f2.~ % 2b
  f4. r8 r4
  bes,2.( 
    a4 bes a % 3a
    f'2.
    g2.~
    g4) r4 r8 g, \bar "||" \key c \major \time 4/4
  e'8 e c4 r r8 c % 3b
  g'8 g e4 r c'8 c
  c8 c c c,~4 c8 c
  a'2 r4 f8 f % 3c
  e4 e f a
  c,8 c f r r2
  g8 f e~e ees4 r8 ees % 4a
  d2 f
  g1~
  g2 r % 4b
  r2 r4 r8 e
  g4 b bes r
  f8 f f4 f8 f4 e8 % 4c
  a2 r4 r8 a
  e4 e f4. a8
  b8 a aes4~aes r8 aes % 5a
  g8 a b4 c r8 c
  c2 d
  c2 r4 bes( % 5b
  \time 2/4 a8 aes g aes) \time 4/4 \bar "||" \key ees \major
  ees2 c~
  c4. c8\( b2 % 5c
           bes1~
           bes2.\) f'4
  g8 g4 g8 g g f e % 6a
  ees8 ees c4(b) s
  bes1 % 6b
  ges'8 ges f2 r8 g \bar "||" \key c \major
  g8(f) g(f) e(d e) f
  e4 d c c8 c % 6c
  f8 r \tuplet 3/2 { r8 f f} e8 e4 e8
  a2 r4 f
  e4 e f r8 a % 7a
  c,8 c f4 r2
  g8 g g4 a4. aes8
  a2 bes % 7b
  a1
  r2 r4 r8 aes
  g8 g g4 a4. aes8 % 7c
  a2 b
  g1
  R1
  \bar "|."
}

wordsBass = \lyricmode {
  words
}

dynamicsBassJoint = {
  \override DynamicTextSpanner.style = #'none
  s2.
  s2.\mp
  s2.*8 \time 4/4
  s1*19
  \time 2/4 s2 \time 4/4
  s1*22
}

pianoRH = \relative {
  \global
  <c'' c'>2.
  <e c'>4 <c a'> <e c'>
  <d bes'>2 <e c'>8 <d bes'>
  <c a'>4. <a f'>8 <c a'>4 % 2b
  <bes g'>2 <c a'>8 <bes g>
  <a d f>4 <bes g'> <a f'>
  <g c e>4 <aes des f> <g c e> % 3a
  <bes ees g>4 g8 bes ees g
  <a, c f a>2.\arpeggio ~
  q2 r4 \bar "||" \key c \major \time 4/4
  <c, d e g>2~<b d e g> % 3b
  <a d e g>2~<bes d e g>
  <g' a>4. <a b>8~4 <gis b>4
  r4 a8(b <a c>4) q8 <aes c> % 3c
  <g b>4 <d g> <e a> <d f>
  <e g>8 c <ees g>8 r r2
  <d e>8 <d f> <d g>~<c g'> <bes c>4 r8 q % 4a
  <a c>2 <gis b d>
  r4 g'8 g' g4 g,8 g'
  <b, e gis>4 <gis b e> <e gis b> <b e gis> % 4b
  <b d e g>2 <d e g b>
  <g b d e>2 <bes d e g>
  <c a'>4 <a f'> <d b'> <b gis'> % 4c
  <e c'>4 <c a'> <g b c e>2
  <b d g>2 <c e a>
  <b e g>8 c <aes c ees g>2. % 5a
  <g b d e>2 <g a c e>
  <c, f a b>2 <f gis b d>
  s1 % 5b
  \time 2/4 b,8 c <bes d> <c ees> \time 4/4 \bar "||" \key ees \major
  <ees g>2 <g bes ees>
  <ees' bes'>2 <d g> % 5c
  <d f>4~ \tuplet 3/2 {q8 <cis ees> <c ees>} <b d>4. des8
  <ees, aes c>8 ees aes c <d, g bes>4 \breathe <c' ees>
  <d f>4. <c ees>8 <bes d> <c ees> <d f> <des g> % 6a
  <f bes>4 <ees g>~<d g> r8 bes
  <d f>4 <c ees> <ees, c'> <c g'> % 6b
  <bes des f aes>8 q <a c d g>2. \bar "||" \key c \major
  <d' e g>8 g, q g q g q g
  q8 g q g q g q g % 6c
  <c a'>8 r \tuplet 3/2 {r <a f'> q} <des bes'> <d b'>4 <aes' d>8
  <e c'>4 <c a'> <g b c e>2
  <b d g>2 <c e a> % 7a
  <b e g>8 c <bes ees g>4 r2
  <e, g>2 q
  <a, c d f>2 <aes c d f> % 7b
  <d' b'>4 <e c'> <b g'> <g e'>
  <bes g'> <aes f'> <g e'> <f d'>
  <g c d e>2 q4. <ees' ges>8 % 7c
  <a, c d f>2 <g b ees f>
  r4 r8 b d g b d~
  <d fis a>1
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s2.*10 \key c \major \time 4/4
  s1*18
  <g' c>2 q % 5b
  \time 2/4 s2 \time 4/4 \key ees \major
  s1*8 \key c \major
  s1*14
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s2.*10 \key c \major \time 4/4
  s1*18
  e'4 d8 c~c2 % 5b
  \time 2/4 s2 \time 4/4 \key ees \major
  s1*8 \key c \major
  s1*14
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mp
  s2.*9 \time 4/4
  s1*19
  \time 2/4 s2-\markup \italic "rit. e cresc." \time 4/4 % 5b+
  s1\mf
  s1*8
  s2. s4\cresc % 6c
  s1
  s4 s2.\dim
  s1\mp
  s1*4
  s1-\markup \italic "rit. al fine" % 7b++
  s1*4
}

pianoLH = \relative {
  \global
  \oneVoice
  R2.
  s2.*2
  s2.*3 % 2b
  <a, g'>4 <bes aes'> <a g'> % 3a
  s2.
  g'2 d4
  f,2 r4 \bar "||" \key c \major \time 4/4
  <c' g'>1 % 3b
  q1
  <f c'>4. <e e'>8~2
  s1 % 3c
  <e d'>4 <e b'> <f c'> <a c>
  <c, b'>8 <c a'> <f bes> r r2
  <g b>8 <f a> <e b'> <e a> <ees g>4 r8 q % 4a
  <d f>2 <g, f'>
  <g g'>1
  <g, g'>1 % 4b
  <c' g'>1
  q1
  s2 d8 d'4 c,8 % 4c
  s1
  <e d'>2 <f e'>
  <e d'>4 <bes aes'>2 bes4 % 5a
  g2 a
  d2 g,
  s1 % 5b
  \time 2/4 a'8 aes g aes \time 4/4 \bar "||" \key ees \major
  <ees bes'>2 <c bes'>
  <c aes'>2 <b aes'> % 5c
  <bes g'>2 <bes ges'>
  <bes ees>2 <bes aes'>4 \breathe <f' aes>
  s2. <f bes>8 <e bes'> % 6a
  <ees c'>4 <c aes'> <b aes'> r
  s1 % 6b
  <aes ges'>8 q <g f'>2. \bar "||" \key c \major
  c8 g' c g c, g' c g
  c,8 g' c g c, g' c g % 6c
  <f c'>8 r \tuplet 3/2 {r8 q q} s2
  s1
  <c d'>2 <f e'> % 7a
  c4 f, r2
  <g' c>2 <a c>
  d,2 bes % 7b
  s1
  s1
  g4 g a2 % 7c
  d,2 des
  s1
  s1
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  s2.
  f8 c'~ <c f>2
  f,8 d'~ <d g>2
  f,8 c'~<c f>2 % 2b
  f,8 ees'~<ees g>2
  bes,8 f'~<f d'>2
  s2. % 3a
  f8 bes~<bes ees>2
  s2.
  s2. \bar "||" \key c \major \time 4/4
  s1*3 % 3b
  a8 e'~e2 e8 ees % 3c
  s1
  s1
  s1*3 % 4a
  s1*3 % 4b
  f,8 c'~<c f>4 s2 % 4c
  a8 e'~e2.
  s1
  s1*3 % 5a
  c,8 g'~g2. % 5b
  \time 2/4 s2 \time 4/4 \bar "||" \key ees \major
  s1
  s1*3 % 5c
  g8 d'~<d f>2 s4 % 6a
  s1
  bes,8 g'~g2. % 6b
  s1 \bar "||" \key c \major
  s1
  s1 % 6c
  s2 r4 d'
  a8 e'~e2.
  s1*3 % 7a
  s1 % 7b
  a,,8 e'~<e c'>2.
  aes,8 f'~<f c'>2.
  s1 % 7c
  s1
  c,8 g'~<g e'>2.~
  q1
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s2.
  f2.
  f2.
  f2. % 2b
  f2.
  bes,2.
  s2. % 3a
  f'2.
  s2.
  s2. \bar "||" \key c \major \time 4/4
  s1*3 % 3b
  a2. f8 f % 3c
  s1
  s1
  s1*3 % 4a
  s1*3 % 4b
  f2 s % 4c
  a1
  s1
  s1*3 % 5a
  c,1 % 5b
  \time 2/4 s2 \time 4/4 \bar "||" \key ees \major
  s1
  s1*3 % 5c
  g'2. s4 % 6a
  s1
  bes,1 % 6b
  s1 \bar "||" \key c \major
  s1
  s1 % 6c
  s2 e
  a1
  s1*3 % 7a
  s1 % 7b
  a,1
  a1
  s1 % 7c
  s1
  a,1~
  a1
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSopSingle
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \sopranoSingle
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAltoSingle
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \altoSingle
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Joint soprano/alto staff
          \new Dynamics \dynamicsSopJoint
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \set Staff.soloText = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText = #""
            \new Voice \RehearsalTrack
            \partCombine \sopranoJoint \altoJoint
            \new NullVoice = "alignerWomen" \sopranoJoint
            \new Lyrics \lyricsto "alignerWomen" \wordsWomen
          >>
          \new Dynamics \dynamicsAltoJoint
                                % Joint tenor/bass staff
          \new Dynamics \dynamicsTenorJoint
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \set Staff.soloText = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText = #""
            \clef "bass"
            \partCombine \tenor \bass
            \new NullVoice = "alignerMen" \tenor
            \new Lyrics \lyricsto "alignerMen" \wordsMen
          >>
          \new Dynamics \dynamicsBassJoint
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSopSingle
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSoprano
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAltoSingle
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
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
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSopSingle
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAltoSingle
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoAll
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
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
            \clef "bass"
            \new Voice \pianoLH
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
                                % Single soprano staff
          \new Dynamics \dynamicsSopSingle
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAltoSingle
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
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
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
