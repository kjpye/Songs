\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "L'il Liza Jane"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Old Slave Song"
  arranger    = "Freely paraphrased by Lyn Murray"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
  \time 2/2
}

TempoTrack = {
  \tempo 2=120
  \set Score.tempoHideNote = ##t
  s1*98
  s2 \tempo 2=110 s2
  s1*5 \tempo 2=120
  s1*15
  
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "1a" } s1*4
  \mark \markup { \circle "1b" } s1*5
  \mark \markup { \circle "2a" } s1*3
  \mark \markup { \box    "A"  } s1*2
  \mark \markup { \circle "2b" } s1*5
  \mark \markup { \circle "3a" } s1
  \mark \markup { \box    "B"  } s1*3
  \mark \markup { \circle "3b" } s1*5
  \mark \markup { \box    "C"  } s1*5
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \box    "D"  } s1*2
  \mark \markup { \circle "5a" } s1*4
  \mark \markup { \circle "5b" } s1*2
  \mark \markup { \box    "E"  } s1*3
  \mark \markup { \circle "6a" } s1*5
  \mark \markup { \box    "F"  } s1*6
  \mark \markup { \circle "7a" } s1*6
  \mark \markup { \circle "7b" } s1*6
  \mark \markup { \circle "8a" } s1*2
  \mark \markup { \box    "G"  } s1*3
  \mark \markup { \circle "8b" } s1*5
  \mark \markup { \circle "9a" } s1*5
  \mark \markup { \circle "9b" } s1*3
  \mark \markup { \box    "H"  } s1*2
  \mark \markup { \circle "10a" } s1*5
  \mark \markup { \circle "10b" } s1*5
  \mark \markup { \box    "I"   } s1*5
  \mark \markup { \circle "11b" } s1*5
  \mark \markup { \circle "12a" } s1*4
  \mark \markup { \circle "12b" } s1*5
}

soprano = \relative {
  \global
  R1
  R1
  R1
  ees'4^\p^\< 8 8 g4(bes)
  c4^\f bes2 g4 % 1b
  bes1
  R1
  R1
  R1
  ees,4^\p^\< 8 8 g4(bes) % 2a
  c4^\f^\> bes2 g4
  ees1^\p^\<\glissando \bar "||"
  ees'2.->^\f bes4
  c2 bes4-^ r4
  bes4^\pp 2 g4 % 2b
  bes1
  ees2.^\f bes4
  c2 bes4-^ r
  g4^\pp 2 f4
  ees2 r % 3a
  R1*7
  \override Glissando.style = #'zigzag r2 bes^\<\glissando \bar "||" % 3b++++
  ees'2.->^\f bes4 % 4a
  c2 bes4-^ r
  bes4^\pp 2 g4
  c1
  ees2.^\f bes4
  c2 bes4-^ r % 4b
  g4^\pp 2 f4
  ees2 r \bar "||"
  bes'4^\mf \( 4 aes g
              aes4 a bes2 \)
  c4^\f bes2 g4 % 5a
  bes1
  bes4 \( bes aes g
          aes4 a bes2 \)
  g8(bes) g2 f4 % 5b
  ees4 r r2
  r4 ees'2^\f d4
  c2 bes
  c4 fis,2 g4
  bes1 % 6a
  r4 ees2 d4
  c2 bes
  g4 2 f4
  ees2 r \bar "||" \key c \major
  g2^\p^\markup\bold "Sweetly (in tempo)" e' % 6b
  e2 2
  e2-- d
  d1
  d2-- c
  c1
  c2^\< b % 7a
  a2 aes\!
  g1~^\>
  g1
  g2\! e'
  e2 e
  e2-- d % 7b
  d1
  d2-- c
  c1
  c2^\< b
  a2 b\!
  c1^\> ~ % 8a
  c1\! \bar "||"
  R1
  e,4^\p g a^\< c
  <a d>1\mf~
  q1 % 8b
  d4^\p c a g
  e4 e e e
  e4^\markup\italic "(melody)" 2 d4
  c1
  R1 % 9a
  e4 g a^\< c
  <a d>1\mf\! ~
  q1
  d4^\p c a g
  e4 e e e % 9b
  \acciaccatura dis8 e4 g \acciaccatura dis8 e4 d4
  c2. r4 \bar "||" \key ees \major
  ees2.^\f 4
  c2 bes
  g'2^\p^\<^\markup\italic "(sweetly)" c~ % 10a
  c2\! ces^\>
  bes1^\< ~
  bes1^\>
  ees,2.->^\f 4
  c2 bes % 10b
  g'2^\< c~
  c2^\> bes
  << {ees1^\< ~} \new Voice { s2 s^\markup\bold rit.} >>
  ees1^\> \breathe \bar "||"
  c4^\p^\markup\bold "Tempo rubato" bes g^\< f % 11a
  ees1^\>
  c'4^\< bes g f\!
  ees1->^\sf^\>
  R1\!^\markup\bold "a tempo"
  R1 % 11b
  R1
  g4^\p bes2-^ c4
  ees1^\< ~
  ees1^\f\fermata
  ees4^\p fis,2 g4 % 12a
  ees1~
  ees4 r f^\< aes
  c2 ees\!
  <c f>1^\f~ % 12b
  q1~
  q1~
  q1~
  q4 r r2
  \bar "|."
}

wordsSop = \lyricmode {
  You got a gal __ l'il Li -- za Jane
  You got a gal __ l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  O _ E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  Brus -- sel car -- pet on the floor
  l'il Li -- za Jane,
  Sil -- ver door plate on my door
  l'il Li -- za Jane.
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  Come my love and live with me, live with me
  lit -- tle Li -- za Jane.
  I'll take such good care of thee, care of thee
  my l'il Li -- za Jane.

  lit -- tle Li -- za Jane __
  Lit -- tle Li -- za lit -- tle Li -- za
  l'il Li -- za Jane.
  lit -- tle Li -- za Jane __
  Lit -- tle Li -- za lit -- tle Li -- za
  lit -- tle Li -- za Jane.

  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  Come and be my love,
  Come and be my love,
  L'il Li -- za Jane __

  L'il Li -- za Jane __
  Come and be my love.
}

wordsSopMidi = \lyricmode {
  "You " "got " "a " "gal "  "l'il " Li "za " "Jane "
  "\nYou " "got " "a " "gal "  "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nO " "" E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nBrus" "sel " car "pet " "on " "the " "floor "
  "\nl'il " Li "za " "Jane, "
  "\nSil" "ver " "door " "plate " "on " "my " "door "
  "\nl'il " Li "za " "Jane. "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nCome " "my " "love " "and " "live " "with " "me, " "live " "with " "me "
  "\nlit" "tle " Li "za " "Jane. "
  "\nI'll " "take " "such " "good " "care " "of " "thee, " "care " "of " "thee "
  "\nmy " "l'il " Li "za " "Jane. "

  "\nlit" "tle " Li "za " "Jane " 
  "\nLit" "tle " Li "za " lit "tle " Li "za "
  "\nl'il " Li "za " "Jane. "
  "\nlit" "tle " Li "za " "Jane " 
  "\nLit" "tle " Li "za " lit "tle " Li "za "
  "\nlit" "tle " Li "za " "Jane. "

  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nCome " "and " "be " "my " "love, "
  "\nCome " "and " "be " "my " "love, "
  "\nL'il " Li "za " "Jane " 

  "\nL'il " Li "za " "Jane " 
  "\nCome " "and " "be " "my " "love. "
}

alto = \relative {
  \global
  R1
  R1
  bes4^\p 8 8 g2
  bes4^\< 8 8 c4(ees)
  g4^\f ees2 4 % 1b
  d1
  R1
  R1
  bes4^\p 8 8 g2
  bes4^\p^\< 8 8 c4(ees\!) % 2a
  g4^\f^\> f2 d4
  bes1^\p^\< \glissando \bar "||"
  g'2.->^\f 4
  ees2 4-> r
  ees4^\pp 2 4 % 2b
  d1
  g2.^\f d4
  ees2 4-^ r
  ees4^\pp 2 d4
  bes2 r % 3a
  R1*7
  \override Glissando.style = #'zigzag r2 bes^\<\glissando \bar "||" % 3b++++
  g'2.->^\f 4 % 4a
  ees2 4-^ r
  ees4^\pp 2 4
  d1
  g2.^\f d4
  ees2 4-^ r % 4b
  ees4^\pp 2 d4
  bes2 r \bar "||"
  g'4^\mf \( g f ees
             f4 fis g2 \)
  g4^\f 2 ees4 % 5a
  d1
  g4 \( g f ees
        f4 fis g2 \)
  ees4 d2 c4 % 5b
  bes4 r r2
  r4 g'2^\f 4
  f2 ees
  f4 d2 ees4
  ees1 % 6a
  r4 g2 4
  f2 ees
  ees4 ees(d) c
  bes2 r \bar "||" \key c \major
  g'2^\p g % 6b
  fis2 fis
  f2 f
  f1
  e2-- e
  e1
  f2^\< f % 7a
  f2 ees\!
  e1^\>~
  e1
  g2\! g
  fis2 fis
  f2-- f % 7b
  f1
  e2-- e
  e1
  f2^\< f
  f2 f\!
  e1^\> ~ % 8a
  e1\! \bar "||"
  g,4^\p a c d
  e4^\p e e^\< e
  e1^\mf ~
  e1 % 8b
  R1
  e4^\p d c c
  c4 2 b4
  a1
  g4 a c d % 9a
  e4 e e^\< e
  e1^\mf ~
  e1
  R1
  e4^\p d c c % 9b
  c4 c b b
  a2. r4 \bar "||" \key ees \major
  ees'2.^\f 4
  c2 bes
  ees2^\p^\< fis~ % 10a
  fis2\!  f^\>
  f2^\< (ees
  f2^\> ees)
  ees2.->^\f ees4
  c2 bes % 10b
  ees2^\< fis~
  fis2^\> 2
  f2^\< (a
  g1^\> ) \breathe \bar "||"
  f4^\p g ees^\< 4 % 11a
  c1^\>
  f4^\< g ees des
  ces1^\sf^\>
  R1\!
  R1 % 11b
  c4^\p ees2-> f4~
  f1
  aes1^\<~
  aes1^\f\fermata
  ees4^\p d2 4 % 12a
  c1~
  c4 r c^\< ees
  f2 aes\!
  g1^\f~ % 12b
  g1~
  g1~
  g1~
  g4 r r2
  \bar "|."
}

wordsAlto = \lyricmode {
  You got a gal
  You got a gal __ l'il Li -- za Jane
  You got a gal
  You got a gal __ l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  O _ E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  Brus -- sel car -- pet on the floor
  l'il Li -- za Jane,
  Sil -- ver door plate on my door
  l'il Li -- za Jane.
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  Come my love and live with me, live with me
  lit -- tle Li -- za Jane.
  I'll take such good care of thee, care of thee
  my l'il Li -- za Jane.

  Lit -- tle Li -- za
  lit -- tle Li -- za Jane __
  lit -- tle Li -- za
  l'il Li -- za Jane.
  lit -- tle Li -- za Jane __
  Lit -- tle Li -- za lit -- tle Li -- za
  lit -- tle Li -- za Jane.

  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  Come and be my love,
  Come and be my love,
  L'il Li -- za Jane __

  L'il Li -- za Jane __
  Come and be my love.
}

wordsAltoMidi = \lyricmode {
  "You " "got " "a " "gal "
  "\nYou " "got " "a " "gal "  "l'il " Li "za " "Jane "
  "\nYou " "got " "a " "gal "
  "\nYou " "got " "a " "gal "  "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nO " "" E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nBrus" "sel " car "pet " "on " "the " "floor "
  "\nl'il " Li "za " "Jane, "
  "\nSil" "ver " "door " "plate " "on " "my " "door "
  "\nl'il " Li "za " "Jane. "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nCome " "my " "love " "and " "live " "with " "me, " "live " "with " "me "
  "\nlit" "tle " Li "za " "Jane. "
  "\nI'll " "take " "such " "good " "care " "of " "thee, " "care " "of " "thee "
  "\nmy " "l'il " Li "za " "Jane. "

  "\nLit" "tle " Li "za "
  "\nlit" "tle " Li "za " "Jane " 
  "\nlit" "tle " Li "za "
  "\nl'il " Li "za " "Jane. "
  "\nlit" "tle " Li "za " "Jane " 
  "\nLit" "tle " Li "za " lit "tle " Li "za "
  "\nlit" "tle " Li "za " "Jane. "

  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nCome " "and " "be " "my " "love, "
  "\nCome " "and " "be " "my " "love, "
  "\nL'il " Li "za " "Jane " 

  "\nL'il " Li "za " "Jane " 
  "\nCome " "and " "be " "my " "love. "
}

tenor = \relative {
  \global
  R1
  g4^\p 8 8 ees2~
  ees1
  g4^\p^\< 8 8 bes4(c)
  ees4^\f c2 bes4
  f1
  R1
  g4^\p 8 8 ees2~
  ees1
  g4^\p^\< 8 8 bes4(c) % 2a
  ees4^\f^\> d2 bes4
  g1^\p^\< \glissando \bar "||"
  bes2.->^\f ees4
  c2 bes4-^ r
  g4^\pp 2 bes4 % 2b
  f1
  bes2.^\f aes4
  a2 bes4-^ r
  bes4^\pp 2 aes4
  g2 r % 3a
  g4^\mf 8 8 f4 ees
  g4 bes bes2
  c4 bes2 g4
  bes1 % 3b
  g4 g f ees
  g4 bes bes2
  g4 2 f4
  ees1 \bar "||"
  bes'2.->^\f ees4 % 4a
  c2 bes4-^ r
  g4^\pp 2 bes4
  f1
  bes2.^\f aes4
  a2 bes4-^ r % 4b
  bes4^\pp 2 aes4
  g2 r \bar "||"
  R1
  R1
  ees'4^\f 2 bes4 % 5a
  bes4 aes^\> g f
  R1\!
  R1
  bes4 2 aes4 % 5b
  g4 r r2
  r4 bes2^\f 4
  aes2 g
  aes4 a2 bes4
  g1 % 6a
  r4 bes2 4
  aes2 g
  bes4 2 aes4
  g2 r \bar "||" \key c \major
  g2^\p c % 6b
  c2 c
  c2-- b
  b1
  b2-- a
  a1
  a2^\< a % 7a
  b2 b\!
  g1^\> ~
  g1
  g2\! c
  c2 c
  c2-- b % 7b
  b1
  b2-- a
  a1
  a2^\< a
  c2 b\!
  g1^\> ~ % 8a
  g1\! \bar "||"
  g4^\p a c d
  c4 c c^\< c
  c1\mf ~
  c1 % 8b
  R1
  e4^\p d c a
  a4 2 aes4
  g1
  g4 a c d % 9a
  c4 c c^\< c
  c1^\mf ~
  c1
  R1
  e4^\p d c a % 9b
  a4 a aes aes
  g2. r4 \bar "||" \key ees \major
  g2.^\f aes4
  a2 bes
  c2^\p^\< d~ % 10a
  d2\! d^\>
  c1^\< ~ (
  c2^\> aes)
  g2.^\f aes4
  a2 bes % 10b
  c2^\< d~
  d2^\> d
  des1^\< ~
  des1^\> \breathe \bar "||"
  des4^\p des g,^\< g % 11a
  aes1^\>
  des4^\< des g, g
  aes1->^\sf^\>
  R1\!
  f4^\p g2-> bes4~ % 11b
  bes1~
  bes1
  c1^\< ~
  c1^\f\fermata
  bes4^\p ces2 4 % 12a
  bes1~
  bes4 r aes4^\< c
  ees2 c\!
  bes1^\f ~ % 12b
  bes1~
  bes1~
  bes1~
  bes4 r r2
%  \bar "|."
}

wordsTenor = \lyricmode {
  You got a gal __
  You got a gal __
  l'il Li -- za Jane
  You got a gal __
  You got a gal __
  l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  I got a house in Bal -- ti -- more
  l'il Li -- za Jane
  Street cars run -- ning by my door
  l'il Li -- za Jane.
  
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  l'il Li -- za Jane, E -- li -- za
  l'il Li -- za Jane.
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  Come my love and live with me, live with me
  lit -- tle Li -- za Jane.
  I'll take such good care of thee, care of thee
  my l'il Li -- za Jane.

  Lit -- tle Li -- za
  lit -- tle Li -- za Jane __
  lit -- tle Li -- za
  l'il Li -- za Jane.
  lit -- tle Li -- za lit -- tle Li -- za Jane.
  lit -- tle Li -- za, lit -- tle Li -- za Jane.
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  Come and be my love,
  Come and be my love,
  L'il Li -- za Jane __

  L'il Li -- za Jane __
  Come and be my love.
}

wordsTenorMidi = \lyricmode {
  "You " "got " "a " "gal " 
  "\nYou " "got " "a " "gal " 
  "\nl'il " Li "za " "Jane "
  "\nYou " "got " "a " "gal " 
  "\nYou " "got " "a " "gal " 
  "\nl'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nI " "got " "a " "house " "in " Bal ti "more "
  "\nl'il " Li "za " "Jane "
  "\nStreet " "cars " run "ning " "by " "my " "door "
  "\nl'il " Li "za " "Jane. "
  
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nl'il " Li "za " "Jane, " E li "za "
  "\nl'il " Li "za " "Jane. "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nCome " "my " "love " "and " "live " "with " "me, " "live " "with " "me "
  "\nlit" "tle " Li "za " "Jane. "
  "\nI'll " "take " "such " "good " "care " "of " "thee, " "care " "of " "thee "
  "\nmy " "l'il " Li "za " "Jane. "

  "\nLit" "tle " Li "za "
  "\nlit" "tle " Li "za " "Jane " 
  "\nlit" "tle " Li "za "
  "\nl'il " Li "za " "Jane. "
  "\nlit" "tle " Li "za " lit "tle " Li "za " "Jane. "
  "\nlit" "tle " Li "za, " lit "tle " Li "za " "Jane. "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nCome " "and " "be " "my " "love, "
  "\nCome " "and " "be " "my " "love, "
  "\nL'il " Li "za " "Jane " 

  "\nL'il " Li "za " "Jane " 
  "\nCome " "and " "be " "my " "love. "
}

bass = \relative {
  \global
  ees4^\p 8 8 bes2~
  bes1~
  bes1
  bes4^\p^\< 8 8 ees4(g)
  bes4^\f g2 e4 % 1b
  bes1
  ees4^\p 8 8 bes2~
  bes1~
  bes1
  bes4^\p^\< 8 8 ees4(g) % 2a
  bes4^\f^\> aes2 bes,4
  ees1^\p^\< \bar "||"
  ees2.->^\f f8(g)
  aes2 g4-^ r
  bes,4^\pp 2 4 % 2b
  bes1
  ees2.^\f f4
  fis2 g4-^ r
  bes,4^\pp 2 4
  ees4^\< d c bes % 3a
  ees4^\mf 8 8 bes4 bes
  ees4 ees g2
  bes,4 2 c4
  bes4 bes^\< c^\> d % 3b
  ees4\! ees bes bes
  ees4 4 g2
  bes,4 bes(c) d
  ees1 \bar "||"
  ees2.->^\f f8(g) % 4a
  aes2 g4-^ r
  bes,4^\pp 2 4
  bes1
  ees2.^\f f4
  fis2 g4-^ r % 4b
  bes,4^\pp 2 4
  ees4 d c bes \bar "||"
  ees4^\mf d c bes
  ees4 d c bes
  r4 ees^\f^\< d c\! % 5a
  bes4 b^\> c d
  ees4\! d c bes
  ees4 d c bes
  r4 bes c d % 5b
  ees4 f g aes
  bes1->^\f ~
  bes4 c-> g ees
  bes1~
  bes4 bes ees g % 6a
  bes1->~
  bes4 c-> g ees
  bes2 c4 d
  ees2 r \bar "||" \key c \major
  g2^\p a % 6b
  a2 a
  a2-- g
  g1
  g2-- c,
  c1
  d2^\< d % 7a
  g,2 g\!
  c1^\> ~
  c1
  g'2\! a
  a2 a
  a2-- g % 7b
  g1
  g2-- c,
  c1
  d2^\< d
  d2 g,\!
  c1^\> ~ % 8a
  c1 \bar "||"
  c'2.->^\f^\markup\italic "(melody)" g4
  a2 g^\<
  a4\mf g2 e4
  g1 % 8b
  c2.^\f g4
  a2^\p g
  fis4^\p^\markup\italic "(blend)" fis2 f4
  e1
  c'2.->^\f^\markup\italic "(melody)" g4 % 9a
  a2 g^\<
  a4^\mf g2 e4
  g1
  c2. g4
  a2 g % 9b
  g4^\p^\markup\italic "(blend)" g f f
  e2. r4 \bar "||" \key ees \major
  ees2.^\f f4
  fis2 g
  bes2^\p^\< aes~ % 10a
  aes2\! aes^\>
  g2^\<(a
  g2^\> f)
  ees2.^\f f4
  fis2 g % 10b
  bes2^\< aes~
  aes2^\> aes
  g2^\< (f\!
  ees1^\> ) \breathe \bar "||"
  bes4^\p bes ees^\< ees % 11a
  aes,1^\>
  bes4^\< bes ees ees
  aes,1->^\sf^\>
  bes4^\p c2-> ees4~
  ees1~ % 11b
  ees1~
  ees1
  f1^\< (
  ges1^\f\fermata )
  g4^\p aes2 4 % 12a
  g1~
  g4 r ees^\< f
  aes2 f\!
  ees1^\f ~ % 12b
  ees1~
  ees1~
  ees1~
  ees4 r r2
%  \bar "|."
}

wordsBass = \lyricmode {
  You got a gal __
  You got a gal __
  l'il Li -- za Jane
  You got a gal __
  You got a gal __
  l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane, E -- li -- za

  I got a house in Bal -- ti -- more
  l'il Li -- za Jane; E -- li -- za,
  Street cars run -- ning by my door
  l'il Li -- za Jane.
  
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane, E -- li -- za
  Jane E -- li -- za
  Jane E -- li -- za

  

  l'il Li -- za Jane, E -- li -- za
  Jane E -- li -- za
  Jane E -- li -- za
  l'il Li -- za Jane, E -- li -- za Jane __
  E -- li -- za Jane __
  E -- li -- za Jane __
  E -- li -- za Jane Li -- za Jane.

  Come my love and live with me, live with me
  lit -- tle Li -- za Jane.
  I'll take such good care of thee, care of thee
  my l'il Li -- za Jane.
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za lit -- tle Li -- za Jane
  O E -- li -- za l'il Li -- za Jane
  O E -- li -- za l'il Li -- za Jane

  Come and be my love,
  Come and be my love,
  L'il Li -- za Jane __
  L'il Li -- za Jane __
  Come and be my love.
}

wordsBassMidi = \lyricmode {
  "\nYou " "got " "a " "gal " 
  "\nYou " "got " "a " "gal " 
  "\nl'il " Li "za " "Jane "
  "\nYou " "got " "a " "gal " 
  "\nYou " "got " "a " "gal " 
  "\nl'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane, " E li "za "

  "\nI " "got " "a " "house " "in " Bal ti "more "
  "\nl'il " Li "za " "Jane; " E li "za, "
  "\nStreet " "cars " run "ning " "by " "my " "door "
  "\nl'il " Li "za " "Jane. "
  
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane, " E li "za "
  "\nJane " E li "za "
  "\nJane " E li "za "

  

  "\nl'il " Li "za " "Jane, " E li "za "
  "\nJane " E li "za "
  "\nJane " E li "za "
  "\nl'il " Li "za " "Jane, " E li "za " "Jane " 
  "\nE" li "za " "Jane " 
  "\nE" li "za " "Jane " 
  "\nE" li "za " "Jane " Li "za " "Jane. "

  "\nCome " "my " "love " "and " "live " "with " "me, " "live " "with " "me "
  "\nlit" "tle " Li "za " "Jane. "
  "\nI'll " "take " "such " "good " "care " "of " "thee, " "care " "of " "thee "
  "\nmy " "l'il " Li "za " "Jane. "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " lit "tle " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "
  "\nO " E li "za " "l'il " Li "za " "Jane "

  "\nCome " "and " "be " "my " "love, "
  "\nCome " "and " "be " "my " "love, "
  "\nL'il " Li "za " "Jane " 
  "\nL'il " Li "za " "Jane " 
  "\nCome " "and " "be " "my " "love. "
}

pianoRH = \relative {
  \global
  R1*5
  r2 \ottava #1 <c''' des bes'>4-.\omit\mf q-. \ottava #0 % 1b+
  R1*6 \bar "||"
  r4\omit\mf <bes,, ees g> r q % 2a
  r4 <c ees aes> r <bes ees g>
  r4\omit\pp q r q % 2b
  r4 <bes d f> r q
  r4 <g bes ees> r <aes bes d>
  r4 <a c ees> r <g bes ees>
  r4 <bes ees g> r<aes d f>
  r4 <g bes ees> r q % 3a
  r4\omit\p <bes ees g> r q
  r4 q r q
  r4 q r q
  r4 <bes d f> r q % 3b
  r4 <bes ees g> r q
  r4 q r q
  r4 q r <aes d f>
  <g bes ees>4 r r2 \bar "||"
  r4\omit\mf <bes ees g> r q % 4a
  r4 <c ees aes> r q
  r4\omit\pp q r q
  r4 <bes d f> r q
  r4\omit\mf <g bes ees> r <aes bes d>
  r4 <a c ees> r <g bes ees> % 4b
  r4\omit\pp <bes ees g> r <aes d f>
  <g bes ees>4 r r2 \bar "||"
  <bes g' bes>4 r r2
  r2 q4 r
  <ees g c>4 <ees g bes>2 <bes ees g>4 % 5a
  <d f aes bes>4 r r2
  <bes g' bes>4 r r2
  r2 q4 r
  <bes ees g>4 <bes d g>2 <aes c f>4 % 5b
  <g bes ees>4 r r2
  r4 <bes ees g> r q
  r4 <aes c f> r <g bes ees>
  r4 <a d fis> r <bes ees g>
  r4 q r q % 6a
  r4 q r q
  r4 <aes c f> r <g bes ees>
  r4 <bes ees g> r <aes c f>
  <g bes ees>2 <g' g'>-> \bar "||" \key c \major
  <g c g'>1\omit\p^\markup\bold "Sweetly (in tempo)" % 6b
  <a e' a>1
  q1
  <g d' g>1
  q1
  <g c g'>1
  r4 <c, f a c> r <b f' g b> % 7a
  r4 <b d f a> r <c ees f aes>
  << { \voiceOne g'2 c | d2 g } \new Voice { \voiceTwo <a,, d>1 | <g' a>1 } >> \oneVoice
  <g d' g>1
  <a e' a>1
  q1 % 7b
  <g d' g>1
  q1
  <g c g'>1
  r4 <c, e a c> r <b f' g b>
  r4 <c d f a> r <d f g b>
  c'4-. d-. e-. f-. % 8a
  g4-. a-. b-. c-. \bar "||"
  c4-. r r2
  R1
  r4 <g,, c e> r q
  r4 q r q % 8b
  r4 q r q
  r4 q r q
  r4 <fis a c e> r <f aes b d>
  r4 <e g c> r q
  <g c e>4-. r r2 % 9a
  R1
  r4 <g c e> r q
  r4 q r q
  r4 q r q
  r4 q r q % 9b
  r4 <g a c e> r <f aes b d>
  <e g a c>4 \tuplet 3/2 {g'8 gis a} bes4 bes, \bar "||" \key ees \major
  <g ees' g>2.\omit\f <aes ees' aes>4
  <a ees' a>2 <bes ees bes'>
  r4\omit\p <bes ees g> r <aes d fis> % 10a
  r4 q r <aes d f>
  r4 <g c f> r <aes c ees>
  r4 <g c f> r <f aes c ees>
  <g ees' g>2. <aes ees' aes>4
  <a ees' a>2 <bes ees bes'> % 10b
  r4 <bes ees g> r <aes d fis>
  r4 q r <aes d f>
  <g des f>2 <aes d aes'>^\markup\bold rit.
  << { \voiceOne r2 <ees'' ees'>-> } \new Voice {\voiceTwo <g,, des' g>1} >> \oneVoice
  << { R1*4 } % 11a
     \new Voice { \teeny
                  <f' c'>4^\markup\bold { \normalsize "Tempo rubato"} <g bes> <ees g> <des f>
                  <c ees>1
                  <f c'>4 <g bes> <ees g> <des f>
                  <ces ees>1->
                }
  >>
  r4\omit\p^\markup\bold "a tempo" <g bes c ees> r q
  r4 q r q % 11b
  r4 q r q
  r4 q r q
  << { \voiceOne \teeny <aes' ees'>1~
       q1\fermata
       r2 \normalsize r4 bes\omit\p % 12a
     }
     \new Voice { \voiceTwo \teeny R1
                  R1
                  r2 \normalsize d,2\omit\p % 12a
                }
  >> \oneVoice
  <g, ees'>4 r <bes' bes'> r
  <ees ees'>4-. r r2
  R1
  R1 % 12b
  <f f'>4\omit\f <ees ees'> <c c'> <bes bes'>
  <g g'>4 <f f'> <ees ees'> <c c'>
  <bes bes'>4 r r2
  \acciaccatura d''8 ees4-^ f,-^ r2
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1*5
  s2 s\mf
  s1*6 s1\mf
  s1
  s1\pp
  s1*5
  s1\p % 3a+
  s1*7
  s1\mf % 4a
  s1
  s1\pp
  s1
  s1\mf
  s1 % 4b
  s1\pp
  s1*17
  s1\p % 6b
  s1*35
  s1\f % 9b+++
  s1
  s1\p % 10a
  s1*13
  s1\p % 11a++++
  s1*5
  s1\p % 12a
  s1*4
  s1\f % 12b+
  s1
  s1
  s1
}

pianoLH = \relative {
  \global
  R1*5
  r2 bes,,4-.\omit\mf bes-. % 1b+
  R1*5
  r4 bes-. c-. d-. \bar "||" % 2a++
  ees4\omit\mf r ees r
  ees4 r ees r
  ees4\omit\pp r ees r % 2b
  bes'4 bes, c d
  ees4 r ees f
  fis4 r g r
  bes,4 r bes r
  R1 % 3a
  <bes bes'>4\omit\p <b b'> <c c'> <d d'>
  <ees ees'>4 r r2
  r2 q4 r
  r4 <bes bes'> <c c'> <d d'> % 3b
  <ees ees'>4 r r2
  ees4 r ees r
  ees4 r ees r
  <bes bes'>4 r q r
  ees4\omit\mf r ees r % 4a
  ees4 r ees r
  ees4\omit\pp r ees r
  bes'4 bes, c d
  ees4\omit\mf r ees f
  fis4 r fis r % 4b
  bes,4\omit\pp r bes r
  ees4 d c bes \bar "||"
  <ees ees'>4 r r2
  r2 q4 r
  R1 % 5a
  <bes bes'>4 <b b'> <c c'> <d d'>
  <ees ees'>4 r r2
  r2 q4 r
  r4 <bes bes'> <c c'> <d d'> % 5b
  <ees ees'>4 r r2
  ees4 r ees r
  ees4 r ees r
  <bes bes'>4 r q r
  <ees ees'>4 r <bes bes'> r % 6a
  ees4 r ees r
  ees4 r ees r
  bes2 c4 d
  ees2 <g, g'>2-> \bar "||" \key c \major
  <g'' c e>1\omit\p % 6b
  <fis c' e>1
  <f c' e>1
  <f b d>1
  <e b' d>
  <e a c>
  r4 <d, d'> r q % 7a
  g4 r g r
  <c, g' e'>1
  <g'' c e>1
  q1
  <fis c' e>1
  <f c' e>1 % 7b
  <f b d>1
  <e b' d>1
  <e a c>1
  <d, d'>4 r q r
  q4 r g r
  c4-. d-. e-. f-. % 8a
  g4-. a-. b-. c-. \bar "||"
  c4-. r r2
  R1
  c,4 r g r
  c4 b a g % 8b
  <c, c'>4 r g' r
  <c, c'>4 r g' r
  g4 r g r
  <c, c'>4 r g' r
  c,4 r r2 % 9a
  R1
  c'4 r g r
  c4 b a g
  <c, c'>4 r g' r
  <c, c'>4 r g' r % 9b
  g4 r g r
  <c, c'> r bes bes' \bar "||" \key ees \major
  <ees, bes'>2.\omit\f <f c'>4
  <fis ees'>2 <g ees'>
  bes4\omit\p r bes r % 10a
  bes4 r bes r
  <ees, ees'>4 r bes' r
  q4 r bes r
  <ees, bes'>2. <f c'>4
  <fis ees'>2 <g ees'> % 10b
  bes4 r bes r
  bes,4 r bes r
  <ees bes'>2 <f bes>
  <ees bes'>1
  << { \voiceOne \teeny
       <bes' ees'>4 q <ees g> q % 11a
       R1
       <bes des'>4 q <ees g> q
       <aes, aes'>1->
     }
     \new Voice { \voiceTwo \teeny
                  R1*4
                }

  >> \oneVoice \normalsize
  <bes, bes'>4\omit\p r q r
  q4 r q r % 11b
  q4 r q r
  q4 r q r
  <<
    { \voiceOne \teeny
      <f'' c'>1~ _(
      <ges c>1\fermata )
    }
    \new Voice { \voiceTwo \teeny
                 R1
                 R1
               }
  >> \oneVoice \normalsize
  << { r4\omit\p aes2. } \new Voice bes,1\omit\p >> % 12a
  <ees, bes'>4 r bes' r
  ees,4-. r r2
  R1
  R1 \clef treble % 12b
  f''4\omit\f ees c bes \clef bass
  g4 f ees c
  bes4 r r2
  ees,,4-^ ees'-^ r2
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
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
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice \pianoRH
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
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
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
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice \pianoRH
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
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
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
          \new Staff
          <<
            \new Voice \pianoRH
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
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
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
          \new Staff
          <<
            \new Voice \pianoRH
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
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice \pianoRH
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
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
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
            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
