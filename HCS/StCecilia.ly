\version "2.25.15"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Saint Cecilia’s Day"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "George Frederick Loughlin"
%  arranger    = "arranger"
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
  \set Score.tempoHideNote = ##t
  \tempo "Allegro Moderato" 4=110
  s1*12 | s1. | s1*39 |
  s1. | % 35a+
  \tempo "Allargando" 4=100 s1 | s2. |
  \tempo "A tempo" 4=110 s1*8 |
  s4 \tempo "rall." 4=100 s2. | s1 | % 37a++
  \once \set Score.tempoHideNote = ##f \tempo Moderato 4=100
  s2.*23 | \tempo "poco rall." 4=96 s2. |
  s4 \tempo "A tempo" 4=100 s2 |
  s2.*16 |
  \tempo "accel." 4=110 s2.*2 | \tempo "Molto allegro e animato" 4=140 | % 40a
  s2.*51 | \tempo "Meno mosso" 4=120 | s2.*12 |
  \tempo "L’istesso tempo" 4=120 s2 |
  \tempo "poco rall." 4=115 s2 |
  \tempo "Lento, ma con poco movimento" 4=80 | s2*14 |
  \tempo "Più mosso" 4=95 s2*3 |
  s2. | s2*5 | % 52a
  \tempo "rall." 4=85 s4. | s2*2 |
  \tempo "Tempo primo" 4=110 % 53a+
  s2*20 |
  \tempo Cantando 4=110 | % 54a
  s2*3 | s2. | s2*3 |
  \tempo "rall." 4=100 | s2. |
  \tempo "Andante commodo" 4=90 s2.*16 | s1 | s2.*2 |
  \tempo "rall." s2. |
  \tempo "A tempo" 4=90 | % 55c
  s2.*16 | \tempo "rall." 4=85 | s2. |
  \tempo "[A tempo]" 4=90 | s2.*31 |
  \tempo "Più mosso" 4=105 s2. | s1*6 |
  \tempo "Poco allegro" 4=130 s4.*12 | s8*5 | s4.*28 |
  \tempo "poco rall." 4=120 s4.*3 | % 6ab
  \tempo "[A tempo]" 4=130 s4.*9 |
  \tempo "rall." 4=115 s4.*3 | \tempo "[A tempo]" 4=130 |
  s4.*8 | s8*5 | s4.*15 |
  \tempo "poco rall." 4=120 s4. | \tempo "Meno mosso" 4=120 s4.*2 | % should be s4.*3; there's a mistake before here somewhere
  \tempo stentando 4=75 s4. |
  \tempo Allegretto 4=115 s4. \tempo "accel. poco a poco" 4=115 s2. | s4.*3*3 |
  \tempo "Allegro scherzando" 4=120 s1.*3 | s4.*3*4 | s1.*2 | s4.*3*2 | s1.*31 |
  \tempo "Allegro moderato" 4=110 s1*9 | s1. | s1*9 | s1. |
  s1*10 | s1.*2 | % 70a
  \tempo Cantando 4=110 s1*5 | s1. | s1 |
  s1.*2 | s1*4 | s1. | s1*7 | s1. | s1*7 |
  \tempo Allargando 4=100 s1*8 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "19a" } s1
  \mark \markup\circle "32" s1*2
  \textMark \markup { \box "20a" } s1*3
  \textMark \markup { \box "21a" } s1*3
  \textMark \markup { \box "21b" } s1*3
  \textMark \markup { \box "22a" } s1.
  \mark \markup\circle "33" s1*2
  \textMark \markup { \box "23a" } s1*3
  \textMark \markup { \box "24a" } s1
  \mark \markup\circle "34" s1*3
  \textMark \markup { \box "25a" } s1*3
  \textMark \markup { \box "26a" } s1*3
  \textMark \markup { \box "27a" } s1*3
  \textMark \markup { \box "28a" } s1*3
  \textMark \markup { \box "29a" } s1*4
  \textMark \markup { \box "30a" }
  \mark \markup\circle "35" s1*3
  \textMark \markup { \box "31a" } s1*3
  \textMark \markup { \box "32a" } s1
  \mark \markup\circle "36" s1
  \textMark \markup { \box "33a" } s1*2
  \textMark \markup { \box "34a" } s1*3
  \textMark \markup { \box "35a" } s1 s1. s1
  \textMark \markup { \box "36a" } s2.
  \mark \markup\circle "37" s1
                                %  \textMark \markup { \box "36b" } s1*3
                                %  \textMark \markup { \box "37a" } s1*4 
                                %  \textMark \markup { \box "37b" } s2.*4
                                %  \textMark \markup { \box "37c" } s2.*4
                                %  \textMark \markup { \box "38a" } s2.*4
                                %  \textMark \markup { \box "38b" } s2.*3
                                %  \textMark \markup { \box "38c" } s2.*4
                                %  \textMark \markup { \box "38d" } s2.*5
                                %  \textMark \markup { \box "39a" } s2.*3
                                %  \textMark \markup { \box "39b" } s2.*4
                                %  \textMark \markup { \box "39c" } s2.*5
                                %  \textMark \markup { \box "40a" } s2.*4
  s1*9 s2.*41 s2.*4
  \textMark \markup { \box "40b" } s2.*3
  \mark \markup\circle "43" s2.
  \textMark \markup { \box "41a" } s2.*3
  \textMark \markup { \box "42a" } s2.*3
  \textMark \markup { \box "43a" } s2.*3
  \textMark \markup { \box "44a" } s2.*3
  \textMark \markup { \box "45a" }
  \mark \markup\circle "44" s2.*3
  \textMark \markup { \box "46a" } s2.*4
  \textMark \markup { \box "47a" } s2.*4
  \textMark \markup { \box "48a" } s2.
  \mark \markup\circle "45" s2.*3
  \textMark \markup { \box "49a" }
  \mark \markup\circle "46" s2.*3
  s2.*23 | s2.*4 | s2*16 |
  \textMark \markup { \box "51c" }
  \mark \markup\circle "49" s2*3 |
  \textMark \markup\box "52a" s2. | s2*2 |
  \textMark \markup\box "52b" s2*3 | s4. | s2
  s2*21 | \textMark \markup \box "54a" s2*3 | s2. | s2*3 | s2. | s2.*16 | s1 | s2.*3 |
  \textMark \markup { \box "55c" }
  \mark \markup\circle "55" s2.*5
  \textMark \markup { \box "56a" } s2.*4
  \textMark \markup { \box "56b" } s2.
  \mark \markup\circle "56" s2.*3
  \textMark \markup { \box "57a" } s2.*4
  \mark \markup\circle "57" s2.
  \textMark \markup { \box "57b" } s2.*7
  \textMark \markup { \box "57c" } s2.*5
  \textMark \markup { \box "58a" } s2.*3
  \mark \markup\circle "58" s2.
  \textMark \markup { \box "58b" } s2.*5
  s2.*9 | s2. | s1*6 | s4.*12 | s8*5 | s4.*51 | s8*5 | s4.*19 |
  s4.*3*4 | s1.*3 | s4.*3*2 | s4.*3*2 | s1.*2 | s4.*3*2 | s1. | s1.*3 |
  s1.*8 | s1.*10 | s1.*9 | s1*8 |
  \textMark \markup \box "67a"
  \mark \markup\circle "72" s1 | s1. | s1*2 |
  \textMark \markup \box "68a" s1*3 |
  \mark \markup\circle "73" s1 |
  \textMark \markup \box "69a" s1*3 | s1. |
  \textMark \markup \box "70a" s1*3 |
  \mark \markup\circle "74" s1 |
  \textMark \markup \box "70b" s1*4 |
  \textMark \markup \box "71a" s1*2 | s1. |
  \textMark \markup \box "72a" s1. |
  \mark \markup\circle "75" s1*2 |
  \textMark \markup \box "73a" s1*3 |
  \textMark \markup \box "74a" s1. |
  \mark \markup\circle "76" s1 |
  \textMark \markup \box "75a" s1.*2 | s1 |
  \textMark \markup \box "76a" s1*2 |
  \textMark \markup \box "77a" s1 | s1. |
  \mark \markup\circle "77" s1 |
  \textMark \markup \box "78a" s1*4 |
  \textMark \markup \box "79a" s1*2 |
  \textMark \markup \box "80a" s1. |
  \mark \markup\circle "78" s1*2 |
  \textMark \markup \box "81a" s1*4 |
  \textMark \markup \box "82a" s1 |
  \mark \markup\circle "79" s1*3 |
  \textMark \markup \box "83a" s1*5 |
}

ossiaaltoI = \relative {
  \override DynamicTextSpanner.style = #'none
  \global \dynamicUp
%  R1*54
%  \time 12/8 R1.*13
%  \time 4/4 R1*16
%  \time 3/2 R1.*15
%  \time 4/2 R\breve
%  \time 3/2 R1.*16
%  \time 4/2 R\breve
%  \time 3/2 R1.*7
%  \time 4/2 R\breve*4
%  \time 4/4 R1*19
%  \time 12/8 R1.*15
%  \time 4/4 R1*53
%  \time 12/8 R1.*13
%  \time 4/4 R1*56
  \set Score.currentBarNumber = #284
  \stopStaff
  s1*12 |
  s1. | % \time 3/2 s1. |
  s1*39 | % \time 4/4 s1*32 |
  s1. | % 35a+
  s1 |
  s2. |
  s1*10 |
  s2.*8 |
  s2.*16 | % 38
  s2.*17 |
  s2.*2 | % 4a0
  \startStaff
  <<
    {\key g \major \time 3/4 s2^\markup\bold Orch. <e'' fis c'>8 r | \vo b'(g) e4.(a8) | b4.(d8) <g, b>4 | e4.(g8) b,4 | c4(g') fis }
    \new Voice
    { \vt fis,,2-> s4 | b'4. a8 fis'4 | d8 b g4 a8(fis) | b8(g) e4 g | g8(fis) <g c>4 a |}
  >> \stopStaff
  s2. |
  s2.*6 | % 41
  s2.*6 | % 43
  s2.*7 | % 45
  s2.*8 | % 47
  s2.*30 | % 49
  s2*19 |
  s2. | s2*5 | s4. | s2 |
  s2*21 | % 53
  s2*3 | s2. | s2*3 | s2.*14 |
  s2.*3 | s1 | s2. | % 55a
  \startStaff
  {
    \clef bass \ov g,2^\markup\bold "Solo Bar." r8 c, | e e a4. b8 \section \key c \major | c2 r4 | R2. | R |
  } \stopStaff s2.*2 |
  s2.*8 |
  s2.*17 | % 57
  s2.*9 |
  s2.*10 | s1*6 | s4.*7 |% 59
  s4.*5 | s2 s8 | s4.*21 |
  s4.*30 | % 61
  s2 s8 | s4.*19 | s4.*12 | s1. |
  s1.*2 | s4.*12 | s1.*2 | s4.*6 | s1.*3 | % 63
  s1.*11 |
  s1.*10 | % 65
  s1.*6 | s1. | s1*6 |
  \startStaff { \ov \clef treble e''8^\markup\bold Orch. b gis a b g b, dis | <cis e> g' <d f>16 a d e f e f a \tuplet 3/2 {g(e f} \tuplet 3/2 {g a b}) | } \stopStaff
  s1 | s1. | s1*2 | % 67
  s1*4 |
  s1*3 | s1. | % 69
  s1*8 |
  s1*2 | s1. | % 71
  s1. | s1*2 |
  s1*3 | % 73
  s1. | s1 |
  s1.*2 | s1 | % 75
  s1*2 |
  s1 | s1. | s1 | % 77
  s1*4 |
  s1*2 | % 79
  s1. | s1*2 |
  s1*4 | % 81
  s1*4 |
  s1*5 |
}

altoI = \relative {
  \override DynamicTextSpanner.style = #'none
  \global \dynamicUp
%  R1*54
%  \time 12/8 R1.*13
%  \time 4/4 R1*16
%  \time 3/2 R1.*15
%  \time 4/2 R\breve
%  \time 3/2 R1.*16
%  \time 4/2 R\breve
%  \time 3/2 R1.*7
%  \time 4/2 R\breve*4
%  \time 4/4 R1*19
%  \time 12/8 R1.*15
%  \time 4/4 R1*53
%  \time 12/8 R1.*13
%  \time 4/4 R1*56
  \set Score.currentBarNumber = #284
  r2 r4 g'\ff | 8. 16 8 r g8 4-- 8 | c4->~8. g16 4 r8 g | % 19a
  g8 8 8 8 c4. a8 | g4 r r2 | R1 |
  R1 | R | r2 r4 r8 d8\mf | % 21a
  g4 g a8 a g a | b(c d) b c2( | b4.) 8 a4 a | \time 3/2
  c,4 4 8 g' f2 4 \time 4/4 | e4 r r2 | R1 | % 22a
  r4 r8 g\mf f4\cresc f | c' g a a | a(g fis) r8 a\ff |
  d4.-> g,8 4 4 | d2-> r | R1 | R1 | % 24a
  R1 | R | r2 r8 dis\mf e e |
  e2 g8(a g) fis | e2(dis4) b | b a' g8\cresc (e) fis4 | % 26a
  b,4 e e r8 e | ees8(f) g4 c, d | d8(e) fis4 g r |
  r4 g\ff a a | 4.-> 8 bes2( | f4) d f g | % 28a
  f4.-> a8 2 | R1 | R1 | r2 r4 e\f |
  e8. 16 8 r e f4-- 8 | a4-> ~8. e16 4 r8 e | e d g g f4. a8 | % 30a
  gis4 r r gis\mf | a4. 8 g4 e | d8. 16 4 r8 d f f |
  g8 g b g d4. 8 | c4(d) r2 | % 32a
  r2 r8 e e e | 4. a,8 4 r |
  r8 d e f g4 g | c g f bes | aes r g4\f\< aes\! | % 34a
  c,2 4 f \time 3/2 | g4.-- 8 2 r8 g\f g g \time 4/4 | f4 e a e \time 3/4 |
  c'2 a4 \time 4/4 | c1-> | % 36a
  \compressMMRests { R1*9 }
  \time 3/4 \section \key a \major |
  \compressMMRests {R2.*41}
  \section \key g \major
  \compressMMRests {R2.*4} |
  R2. | R | R \time 6/8 | R | % 40b
  r4 r8 r4 b,8\ff | e e e g f e | c'4. e,4 8 |
  e4.~4 b8 | b' g e b4.-- | R2. | % 42a
  R2. | R | r4 r8 r4 fis'8\f |
  b4. bes4 8 a a a cis4.-> | r4 d,8\ff d d d | % 44a
  bes'2.-> ~ | 4. r4 r8 | R2. |
  R2. | R | R | r4 r8 r4 fis8\f | % 46a
  e4 8 4.~ | 8 a, a a'4-- f8 | a4. g8(a b) | e,4 8 b'4. |
  a2. | c->\ff | f,4.-> c'4 8 | g4.-> ~8 8 8 | % 48a
  a2.-> | R2. | R2. |
  \compressMMRests {
    R2.*23 \section \key bes \major
    R2.*4 \time 2/4 R2*16 |
  }
  d,8\f f16 ees f8 a | g4. bes8 | d,16 ees \after 8 \! f4\< 8 \time 3/4 | % 51c
  d'8.-> a16 d,8 8 r4 \time 2/4 | d8-> b r4 | a16 b cis e a8 cis, | % 52a
  d8.-- 16 8 c | b8.-> 16 f'8-- f | r aes,16 16 g8 g-- \time 3/8 | c8--(bes) a \time 2/4 | d4\p r |
  \compressMMRests {R2*21 \section \key g \major R2*3 \time 3/4 R2.
                   \section \key e \major \time 2/4 R2*3 \time 3/4 R2. \section \key aes \major \time 3/4 R2.*16 \time 4/4 R1 \time 3/4 R2.*3 | \key c \major
                 }
  R2. | R | r4 r r8 g\omit\f^\markup{\dynamic f \italic espress.} | g4.-- 8 8 f | g2 r8 e | % 55c
  f8\<e\! a4. g8 | a g f f\> e\! e | g2 r4 | R2. | % 56a
  R2. \section \key aes \major | f4.\f 8 g g | ees4.-- 8 aes4 | r8 des,\< 8\! aes' ges8.--\> 16--\! |
  f4. 8 8 8 | 4. c8 4 | r r r8 f | des c aes4.\> bes8\! | c4 r r | % 57a
  \compressMMRests { R2.*12 | }
  R2. | R | r4 r r8 bes'\f | c4.-> 8 aes bes | % 58a
  ees,2~8 8 | f ees f4 g | ees2 r4 |
  \compressMMRests { R2.*11 | \section \key bes \major R2. \time 4/4 R1*6
                     \section \time 3/8 R4.*12 \time 5/8 R4*5/2 \time 3/8 R4.*51
                     \time 5/8 R4*5/2 \time 3/8 R4.*19
                     \section \key a \major \time 9/8 R4.*12 \time 12/8 R1.*3
                     \time 9/8 R4.*6 \section \key e \major R4.*6
                     \time 12/8 R1.*2 | \time 9/8 R4.*6 \time 12/8 | R1.
                     \section \key g \major R1.*3
                     \section \key ees \major R1.*8 \section \key bes \major |
                     R1.*10 \section \key c \major | R1.*9
                     \section \time 4/4 R1*8 |
                   }
  e4\ff f8 g a4 4 \time 3/2 | a4. c8 g2 r4 g \time 4/4 | f4. c8 a'4 4 | d,2 r | % 67a
  R1 | R | r2 r4 e4 | 4. 8 4 8(f) |
  g4 g a2->~ | 4 g g e c'4. 8 b4 a \time 3/2 | e2~4 r r c' \time 4/4 | % 69a
  g8(a) b(c) b4. 8 | e,2. a4 | d, d g4.\> 8\! \section \key g \major g2 r |
  R1*4 |
  R1 | e4\f 8 8 b4 g' \time 3/2 | e4. 8 b2. e4 | % 71a
  a,4 b c d c4. 8 \time 4/4 | b2 r4 r8 e\f | a, c e\< e8 4\! a |
  g2 r4 g8 g | b4 d, f4 8 8 | d2(e4) e \time 3/2 | % 73a
  a1->\ff r2 \section \key bes \major \time 4/4 | R1 \time 3/2 |
  c,4\mf 8 8 4 bes g' g | c,2 r r4 ees \time 4/4 | d d des4. bes8 | % 75a
  c2 r4 r8 des\f | c f aes f e(f) g4 |
  c,4 8\< des ees4\! ges \time 3/2 | f1->\ff r2 \section \key c \major \time 4/4 R1 |
  r4 r8 g\ff c4 d | g,1-> | r2 r4 g | e'1-> |
  r4 r8 e, a4 a | c1-> ~ \time 3/2 | % 79a
  c2 r r \time 4/4 | r2 r4 a8\f (b) | c4 b a8(c) b(a) |
  g2. e4 | 2 4 d | c2(a4) a | g2 r4 g'\ff | % 81a
  a2 b | g2. f4 | c'2(e, | g) f |
  c'1->~ | 1~ | 4 r r2 | R1 | R\fermata % 83a
  \bar "|."
}

wordsAltoI = \lyricmode {
  From Har -- mon -- y, from heaven -- ly Har -- mon -- y
  This un -- i -- ver -- sal frame be -- gan:
  When Na -- ture un -- der -- neath a heap of jar -- ring a -- toms lay
  And could not heave her head,
  The tune -- ful voice was heard from high
  A -- rise, ye more than dead!
  Then  cold, and hot, moist, __ and dry
  In or -- der to their sta -- tions leap,
  In or -- der __ to their sta -- tions leap,
  And Mu -- sic’s power o -- bey, __
  and Mu -- sic’s power o -- bey.
  From Har -- mon -- y, from heaven -- ly Har -- mon -- y
  This un -- iv -- er -- sal frame be -- gan:
  From har -- mon -- y to har -- mon -- y
  Through all the com -- pass of the notes it ran, __
  Through all the notes it ran,
  The di -- a -- pa -- son clos -- ing full in Man.
  clos -- ing full, clos -- ing full in Man.
  The di -- a -- pa -- son clos -- ing full in Man.

  The trum -- pet’s loud clan -- gour ex -- cites us to arms, __
  ex -- cites us to arms,
  With shrill notes
  And mor -- tal a -- larms,
  And mor -- tal a -- larms,
  The dou -- ble beat __ of the thun -- d'ring drum
  Cries __ “Hark! the foes come;
  Charge! Charge! ’Tis too late __ to re -- treat!”

  Sharp vi -- o -- lins pro -- claim,
  Their jea -- lous pangs,
  And des -- pe -- ra -- tion!
  Fu -- ry, fran -- tic in -- dig -- na -- tion!
  Depth of pains, and height of pas -- sion,
  For the fair dis -- dain -- ful dame!
  
  But oh! what art can teach,
  What hu -- man voice can reach
  The sa -- cred or -- gan's praise?
  Notes in -- spi -- ring ho -- ly love,
  That wing their heaven -- ly ways
  To join the choirs a -- bove.
  To join the choirs a -- bove.

  But oh! what art can teach,
  The sa -- cred or -- gan's praise?

  As from the power of sa -- cred lays
  The spheres be -- gan to move.
  And sung the great Cre -- a -- tor’s praise, __
  And sung the great Cre -- a -- tor’s praise,
  To all __ the __ blest a -- bove.
  To all the blest a -- bove;
  
  So when the last and dread -- ful hour, __
  This crum -- bling pa -- geant shall de -- vour
  The trum -- pet shall be heard on high,
  shall be heard on high,
  shall be heard __ on high,
  So when the last and dread -- ful hour
  This pa -- geant shall de -- vour,
  The trum -- pet shall be heard __ on high,
  shall be heard on high,
  The dead shall live, shall live,
  the li -- ving die, __
  And mu -- sic shall un -- tune the sky
  shall un -- tune __ the sky,
  And mu -- sic shall un -- tune __ the sky. __
}

bassI = \relative {
  \override DynamicTextSpanner.style = #'none
  \global \dynamicUp
%  R1*54
%  \time 12/8 R1.*13
%  \time 4/4 R1*16
%  \time 3/2 R1.*15
%  \time 4/2 R\breve
%  \time 3/2 R1.*16
%  \time 4/2 R\breve
%  \time 3/2 R1.*7
%  \time 4/2 R\breve*4
%  \time 4/4 R1*19
%  \time 12/8 R1.*15
%  \time 4/4 R1*53
%  \time 12/8 R1.*13
%  \time 4/4 R1*56
  \set Score.currentBarNumber = #284
  r2 r4 g\ff | c8. 16 8 r c b4-- 8 | a4-> ~8. 16 g4 r8 g | % 19a
  f8 f e e a4. f8 c'4 r r2 | R1 |
  R1 | R | r2 r4 r8 f,8\mf | % 21a
  e4 e f8 f c' c | g4. 8 b4->(a~ | 4.) 8 g4 f | \time 3/2
  e4 e f8 e d2 g4 | \time 4/4 a4 r r2 | R1 | % 22a
  r4 r8 b8\mf c4\cresc d | g, b c c | a2. r8 c\ff |
  b4.-- g8 4 4 | 2-> r | R1 | R | % 24a
  R1 | R | r2 r8 b,8\mf e d |
  c2 a'~ | 4 g fis e | b b cis\cresc dis | % 26a
  e4 8(d) c4. b8 | a4 8(g) fis4 d' | g, a bes r |
  r4 bes'\ff a a8(g) | f4.-> 8 g2( | d4) a' bes4 4 | % 28a
  a4.-> 8 2 | R1 | R | r2 r4 c,\f |
  a8. 16 8 r a d4-- 8 | c4-> ~8. e16 4 r8 g | f f e e d4. 8 | % 30a
  e4 r r2 | R1 | r2 r4 c'\mf |
  b4. a8 b4 b | e,8. 16 4 r8 c' b gis | % 32a
  e4. 8 4 r | r8 a, a a fis4. 8 |
  g2 r | r2 r4 r8 c\f | f8 8 \after 4 \< 2 4\! | % 34a
  ees4(d bes') aes \time 3/2 | g4.-- 8 2 r8 g\f g g \time 4/4 | f4 a d, e \time 3/4 |
  f2 4 \time 4/4 | c'1-> | % 36a
  \compressMMRests { R1*9 }
  \time 3/4 \section \key a \major |
  \compressMMRests {R2.*41}
  \section \key g \major
  \compressMMRests {R2.*4} |
  R2. | R | r4 r4 r8 b,\ff \time 6/8 | e8 b e g e e | % 40b
  b'8 g a b4 8 | e,4. 4 8 | a,4. r4 a8 |
  a'4.-> e4 fis8 | e4. r4 r8 | R2. | % 42a
  R2. | R | r4 r8 r4 ais8\f |
  b4.\cresc g4 8 | a a a a4.-> | r4 d,8\ff d d d | % 44a
  des2.-> ~ | 4. r4 r8 | R2. |
  R2. | R | r4 r8 r4 e8\f | 4 8 dis e fis | % 46a
  g4. gis | a4 8 f8(e d) | c4. e | f4 8 g4. |
  c2. | g2.->\ff | c4.-> aes4 8 | g4.-> ~8 8 8 | % 48a
  fis2.-> | R2. | R2. |
  \compressMMRests {
    R2.*23 \section \key bes \major
    R2.*4 \time 2/4 R2*16 |
  }
  R2*3 \time 3/4 % 51c
  R2. \time 2/4 | R2 | R | % 52a
  R2 | R | R | \time 3/8 R4. | \time 2/4 R2 |
  \compressMMRests {R2*21 \section \key g \major R2*3 \time 3/4 R2.
                   \section \key e \major \time 2/4 R2*3 \time 3/4 R2. \section \key aes \major \time 3/4 R2.*16 \time 4/4 R1 \time 3/4 R2.*3 | \key c \major
                 }
  R2. | R | r4 r r8 g\omit\f^\markup{\dynamic f \italic espress.} | c4.-- b8 a a | e2 r8 b' | % 55c
  a8\< g\! f4. c8 | f e d d\> c\! a' | g2 r4 | f4.\f d8 e g | % 56a
  g4.-- f8-- 4-- \section \key aes \major | des4.\f 8 8 8 | c4.-- 8 ges'4 | r8 f\< ges\! f ees8.--\> 16--\! |
  bes4. 8 des8 8 c4. 8 4 | r4 r r8 a\mp | bes8 c des4.\> 8\! | g,4 r r | % 57a
  \compressMMRests { R2.*12 | }
  R2. | R | r4 r r8 bes'\f | c4.-> 8 aes bes | % 58a
  ees,2~8 8 | des c bes4 ees | aes,2 r4 |
  \compressMMRests { R2.*11 | \section \key bes \major R2. \time 4/4 R1*6
                     \section \time 3/8 R4.*12 \time 5/8 R4*5/2 \time 3/8 R4.*51
                     \time 5/8 R4*5/2 \time 3/8 R4.*19
                     \section \key a \major \time 9/8 R4.*12 \time 12/8 R1.*3
                     \time 9/8 R4.*6 \section \key e \major R4.*6
                     \time 12/8 R1.*2 | \time 9/8 R4.*6 \time 12/8 | R1.
                     \section \key g \major R1.*3
                     \section \key ees \major R1.*8 \section \key bes \major |
                     R1.*10 \section \key c \major | R1.*9
                     \section \time 4/4 R1*8 |
                   }
  g'4\ff 8 8 f4 f \time 3/2 | a4. 8 e2 r4 e \time 4/4 | c'4. 8 d4 a | b2 r | % 67a
  R1 | R | r2 r4 e,4 | 4. 8 4 g |
  g4 c, c' f, | a b e, e | a2 r4 a, \time 3/2 | a g c4. 8 b4 a \time 4/4 | % 69a
  e'2. 4 | e d c c | b b c4.\> 8\! \section \key g \major | g2 r | % 70a
  R1*4 |
  R1 | c4\f 8 8 e4 g, \time 3/2 | a4.-- 8 b4 a g g' | % 71a
  d2 r4 g a a \time 4/4 | b e, e8(f) gis(b) | a2 r4 r8 a\f |
  b8 b g\< e\! b'2~ | 4 fis d' b8 8 | a2. 4 \time 3/2 | % 73a
  a1->\ff r2 \section \key bes \major \time 4/4 | R1 \time 3/2 |
  c,4\mf 8 8 d4 g, g' g | 2 r r4 ees \time 4/4 | f bes f(e8) e | % 75a
  f2 r | r2 r4 r8 g\f |
  f8 8 aes\< f ees4\! 4 \time 3/2 | des1->\ff r2 \section \key c \major \time 4/4 R1 | % 77a
  r4 r8 g\ff c4 d | g,1-> | r2 r4 g | e'1-> |
  r4 r8 e, a4 a | c1-> ~ \time 3/2 | % 79a
  c2 r r \time 4/4 | r2 r4 g\f | gis8(a) b4 c d8(c) |
  b4(g b) a | e2 r | r2 r4 f,\ff | g g c c | % 81a
  f2(g4) g | a2 d,4 4 | g1~ | 2 2 |
  c1->~ | 1~ | 4 r r2 | R1 | R\fermata % 83a
  \bar "|."
}

ossiabassI = \relative {
  \override DynamicTextSpanner.style = #'none
  \global \dynamicUp
%  R1*54
%  \time 12/8 R1.*13
%  \time 4/4 R1*16
%  \time 3/2 R1.*15
%  \time 4/2 R\breve
%  \time 3/2 R1.*16
%  \time 4/2 R\breve
%  \time 3/2 R1.*7
%  \time 4/2 R\breve*4
%  \time 4/4 R1*19
%  \time 12/8 R1.*15
%  \time 4/4 R1*53
%  \time 12/8 R1.*13
%  \time 4/4 R1*56
  \set Score.currentBarNumber = #284
  \stopStaff
  s1*12 |
  s1. | % \time 3/2 s1. |
  s1*39 | % \time 4/4 s1*32 |
  s1. | % 35a+
  s1 |
  s2. |
  s1*10 |
  s2.*43 |
  \startStaff
  <<
    {\key g \major \time 3/4 s2^\markup\bold Orch. <e'' fis c'>8 r | \vo b'(g) e4.(a8) | b4.(d8) <g, b>4 | e4.(g8) b,4 | c4(g') fis }
    \new Voice
    { \vt fis,,2-> s4 | b'4. a8 fis'4 | d8 b g4 a8(fis) | b8(g) e4 g | g8(fis) <g c>4 a |}
  >> \stopStaff
  s2. |
  s2.*57 | % 41
  s2*19 |
  s2. | s2*5 | s4. |
  s2*25 |
  s2. | s2*3 | s2.*14 |
  s2.*3 | s1 | s2. | % 55a
  \startStaff
  {
    \clef bass \ov g,2^\markup\bold "Solo Bar." r8 c, | e e a4. b8 \section \key c \major | c2 r4 | R2. | R |
  } \stopStaff s2.*2 |
  s2.*8 |
  s2.*17 | % 57
  s2.*9 |
  s2.*10 | s1*6 | s4.*7 |% 59
  s4.*5 | s2 s8 | s4.*21 |
  s4.*30 | % 61
  s2 s8 | s4.*19 | s4.*12 | s1. |
  s1.*2 | s4.*12 | s1.*2 | s4.*6 | s1.*3 | % 63
  s1.*11 |
  s1.*10 | % 65
  s1.*6 | s1. | s1*6 |
  \startStaff { \ov \clef treble e''8^\markup\bold Orch. b gis a b g b, dis | <cis e> g' <d f>16 a d e f e f a \tuplet 3/2 {g(e f} \tuplet 3/2 {g a b}) | } \stopStaff
  s1 | s1. | s1*2 | % 67
  s1*4 |
  s1*3 | s1. | % 69
  s1*8 |
  s1*2 | s1. | % 71
  s1. | s1*2 |
  s1*3 | % 73
  s1. | s1 |
  s1.*2 | s1 | % 75
  s1*2 |
  s1 | s1. | s1 | % 77
  s1*4 |
  s1*2 | % 79
  s1. | s1*2 |
  s1*4 | % 81
  s1*4 |
  s1*5 |
}

ossiabassWords = \lyricmode {
  \repeat unfold 9 \skip 1
  bove. To join the choirs a -- bove.
}

wordsBassI = \lyricmode {
  From Har -- mon -- y, from heaven -- ly Har -- mon -- y
  This un -- i -- ver -- sal frame be -- gan:
  When Na -- ture un -- der -- neath a heap of jar -- ring a -- toms lay
  And could not heave her head,
  The tune -- ful voice was heard from high
  A -- rise, ye more than dead!
  Then  cold, and hot, moist, __ and dry
  In or -- der to their sta -- tions leap,
  In or -- der __ to their sta -- tions leap,
  And Mu -- sic’s power o -- bey, __
  and Mu -- sic’s power o -- bey.
  From Har -- mon -- y, from heaven -- ly Har -- mon -- y
  This un -- iv -- er -- sal frame be -- gan:
  From har -- mon -- y to har -- mon -- y
  Through all the notes it ran,
  Through all the notes it ran,
  The di -- a -- pa -- son clos -- ing full in Man.
  The di -- a -- pa -- son clos -- ing full in Man.

  The trum -- pet’s loud clan -- gour ex -- cites us to arms,
  Ex -- cites us to arms,
  ex -- cites us to arms,
  With shrill notes
  And mor -- tal a -- larms,
  And mor -- tal a -- larms,
  The dou -- ble beat of the drum
  Cries “Hark! the foes __ come;”
  Cries “Hark! the foes __ come.
  Charge! Charge! ’Tis too late __ to re -- treat!”

  But oh! what art can teach,
  What hu -- man voice can reach
  The sa -- cred or -- gan's praise?
  Notes in -- spi -- ring ho -- ly love,
  Notes in -- spi -- ring ho -- ly love,
  That wing their heaven -- ly ways
  To join the choirs a -- bove.
  To join the choirs a -- bove.

  But oh! what art can teach, __
  The sa -- cred or -- gan's praise?

  As from the power of sa -- cred lays
  The spheres be -- gan to move.
  And sung the great Cre -- a -- tor’s praise,
  the great Cre -- a -- tor’s praise
  And sung the great Cre -- a -- tor’s praise,
  To all the blest,
  To all the blest a -- bove.
  So when the last and dread -- ful hour,
  the dread -- ful hour
  This crum -- bling pa -- geant shall de -- vour
  The trum -- pet shall be heard __ on high,
  shall be heard on high,
  So when the last and dread -- ful hour
  This pa -- geant shall de -- vour,
  The trum -- pet shall be heard on high,
  The dead shall live, shall live,
  the li -- ving die, __
  And mu -- sic shall un -- tune __ the sky
  And mu -- sic shall un -- tune __ the sky
  shall un -- tune __ the sky. __
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "alto1"
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
  }
  \header {
    subtitle = "Alto, Choir I"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single alto 1 staff
          \new Staff = altoI \with {
            instrumentName = AltoI
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \with {alignAboveContext = altoI} \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "bass1"
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
  }
  \header {
    subtitle = "Bass, Choir I"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
          \new Staff = ossia \with {
            \remove Time_signature_engraver
            \remove Key_engraver
            \hide Clef
            \magnifyStaff #2/3
          }
          <<
            \ossiabassI
            \addlyrics {\tiny \ossiabassWords}
          >>
                                % Single bass 1 staff
          \new Staff = bassI \with {
            instrumentName = BassI
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Voice \with {alignAboveContext = bassI} \TempoTrack
            \new Voice \RehearsalTrack
%            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
%            \new Dynamics \dynamicsMelody
            \new Voice \bassI
            \addlyrics \wordsBassI
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
