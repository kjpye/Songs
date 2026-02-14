\version "2.25.32"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mass № 6 in E♭"
  subtitle    = "Gloria"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Schubert"
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
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro moderato e maestoso" 4=140 s1*144
  \tempo "Andante con moto" 4=130 s2.*86
  \tempo "Tempo I." 4=140 s1*29
  \tempo "Moderato." 4=100
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "16a" } s1*4
  \textMark \markup { \box "16b" } s1*5
  \textMark \markup { \box "17a" } s1*6
  \textMark \markup { \box "17b" } s1*7
  \textMark \markup { \box "18a" } s1*7
  \textMark \markup { \box "18b" } s1*7
  \textMark \markup { \box "19a" } s1*8
  \textMark \markup { \box "19b" } s1*5
  \textMark \markup { \box "20a" } s1*6
  \textMark \markup { \box "20b" } s1*4
  \textMark \markup { \box "21a" } s1*7
  \textMark \markup { \box "21b" } s1*7
  \textMark \markup { \box "22a" } s1*7
  \textMark \markup { \box "22b" } s1*7
  \textMark \markup { \box "23a" } s1*7
  \textMark \markup { \box "23b" } s1*5
  \textMark \markup { \box "24a" } s1*5
  \textMark \markup { \box "24b" } s1*5
  \textMark \markup { \box "25a" } s1*7
  \textMark \markup { \box "25b" } s1*6
  \textMark \markup { \box "26a" } s1*6
  \textMark \markup { \box "26b" } s1*5
  \textMark \markup { \box "27a" } s1*5
  \textMark \markup { \box "27b" } s1*6
  \textMark \markup { \box "28a" } s2.*4
  \textMark \markup { \box "28b" } s2.*4
  \textMark \markup { \box "29a" } s2.*4
  \textMark \markup { \box "29b" } s2.*4
  \textMark \markup { \box "30a" } s2.*8
  \textMark \markup { \box "30b" } s2.*4
  \textMark \markup { \box "31a" } s2.*4
  \textMark \markup { \box "31b" } s2.*5
  \textMark \markup { \box "32a" } s2.*7
  \textMark \markup { \box "32b" } s2.*4
  \textMark \markup { \box "33a" } s2.*4
  \textMark \markup { \box "33b" } s2.*7
  \textMark \markup { \box "34a" } s2.*6
  \textMark \markup { \box "34b" } s2.*4
  \textMark \markup { \box "35a" } s2.*3
  \textMark \markup { \box "35b" } s2.*4
  \textMark \markup { \box "36a" } s2.*5
  \textMark \markup { \box "36b" } s2.*5
  \textMark \markup { \box "37a" } s1*5
  \textMark \markup { \box "37b" } s1*4
  \textMark \markup { \box "38a" } s1*6
  \textMark \markup { \box "38b" } s1*4
  \textMark \markup { \box "39a" } s1*5
  \textMark \markup { \box "39b" } s1*5
  \textMark \markup { \box "40a" } s1*10
  \textMark \markup { \box "40b" } s1*8
  \textMark \markup { \box "41a" } s1*8
  \textMark \markup { \box "41b" } s1*8
  \textMark \markup { \box "42a" } s1*8
  \textMark \markup { \box "42b" } s1*8
  \textMark \markup { \box "43a" } s1*8
  \textMark \markup { \box "43b" } s1*8
  \textMark \markup { \box "44a" } s1*8
  \textMark \markup { \box "44b" } s1*8
  \textMark \markup { \box "45a" } s1*8
  \textMark \markup { \box "45b" } s1*9
  \textMark \markup { \box "46a" } s1*9
  \textMark \markup { \box "46b" } s1*7
  \textMark \markup { \box "47a" } s1*8
  \textMark \markup { \box "47b" } s1*9
  \textMark \markup { \box "48a" } s1*9
  \textMark \markup { \box "48b" } s1*8
  \textMark \markup { \box "49a" } s1*8
  \textMark \markup { \box "49b" } s1*10
  \textMark \markup { \box "50a" } s1*10
  \textMark \markup { \box "50b" } s1*9
  \textMark \markup { \box "51a" } s1*9
  \textMark \markup { \box "51b" } s1*10
}

RehearsalTrack = {
  \textMark \markup\box "10a" s1*5
  \textMark \markup\box "10b" s1*6
  \textMark \markup\box "10c" s1*6
  \textMark \markup\box "11a" s1*7
  \textMark \markup\box "11b" s1
  \mark \markup\bold\circle A s1*5 
  \textMark \markup\box "11c" s1*8
  \textMark \markup\box "12a" s1*7
  \textMark \markup\box "12b" s1*5
  \textMark \markup\box "12c" s1*5
  \textMark \markup\box "13a" s1*4
  \textMark \markup\box "13b" s1*6
  \textMark \markup\box "13c" s1*2
  \mark \markup\bold\circle B s1*4
  \textMark \markup\box "14a" s1*6
  \textMark \markup\box "14b" s1*6
  \textMark \markup\box "14c" s1*6
  \textMark \markup\box "15a" s1*6
  \textMark \markup\box "15b" s1*5
  \textMark \markup\box "15c" s1*5
  \textMark \markup\box "16a" s1*4
  \textMark \markup\box "16b" s1*4
  \textMark \markup\box "16c" s1*2
  \mark \markup\bold\circle C s1*4
  \textMark \markup\box "17a" s1*5
  \textMark \markup\box "17b" s1*6
  \textMark \markup\box "17c" s1*3
  \textMark \markup\box "18a" s1*5
  \textMark \markup\box "18b" s1*6
  \textMark \markup\box "18c" s2.*6
  \textMark \markup\box "19a" s2.*5
  \textMark \markup\box "19b" s2.*6
  \mark \markup\bold\circle D
  \textMark \markup\box "19c" s2.*7
  \textMark \markup\box "20a" s2.*5
  \textMark \markup\box "20b" s2.*5
  \textMark \markup\box "20c" s2.*2
  \mark \markup\bold\circle E s2.*5
  \textMark \markup\box "21a" s2.*6
  \textMark \markup\box "21b" s2.*5
  \textMark \markup\box "21c" s2.*7
  \textMark \markup\box "22a" s2.*4
  \mark \markup\bold\circle F s2.*2
  \textMark \markup\box "22b" s2.*5
  \textMark \markup\box "22c" s2.*5
  \textMark \markup\box "23a" s2.*5
  \textMark \markup\box "23b" s2.*6
  \textMark \markup\box "23c" s1*6
  \textMark \markup\box "24a" s1*3
  \textMark \markup\box "24b" s1*6
  \mark \markup\bold\circle G
  \textMark \markup\box "24c" s1*3
  \textMark \markup\box "25a" s1*5
  \textMark \markup\box "25b" s1*6
  \textMark \markup\box "25c" s1*8
  \textMark \markup\box "26a" s1*6
  \textMark \markup\box "26b" s1*6
  \textMark \markup\box "26c" s1*6
  \textMark \markup\box "27a" s1*6
  \textMark \markup\box "27b" s1*6
  \textMark \markup\box "28c" s1*6
  \textMark \markup\box "28a" s1*6
  \mark \markup\bold\circle H
  \textMark \markup\box "28b" s1*7
  \textMark \markup\box "28c" s1*7
  \textMark \markup\box "29a" s1*6
  \textMark \markup\box "29b" s1*4
  \mark \markup\bold\circle I s1*2
  \textMark \markup\box "29c" s1*7
  \textMark \markup\box "30a" s1*6
  \textMark \markup\box "30b" s1*5
  \mark \markup\bold\circle K s1
  \textMark \markup\box "30c" s1*8
  \textMark \markup\box "31a" s1*7
  \textMark \markup\box "31b" s1*6
  \textMark \markup\box "31c" s1*6
  \textMark \markup\box "32a" s1*6
  \mark \markup\bold\circle L s1
  \textMark \markup\box "32b" s1*8
  \textMark \markup\box "32c" s1*7
  \textMark \markup\box "33a" s1*6
  \textMark \markup\box "33b" s1*7
  \textMark \markup\box "33c" s1*6
  \textMark \markup\box "34a" s1*9
  \textMark \markup\box "34b" s1
  \mark \markup\bold\circle M s1*6
  \textMark \markup\box "34c" s1*6
  \textMark \markup\box "35a" s1*6
  \textMark \markup\box "35b" s1*6
  \textMark \markup\box "35c" s1*8
}

ffz = #(make-dynamic-script "ffz")

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*8 |
  s1*10 | s1\p | s1*2 |
  s1*3 | s2. s4\f | s1*6 | s1\pp | s1*3 | % 18
  s1*9 | s2. s4\f | s1*3 |
  s1*6 | s2 s\cresc | s1 | s2 s\ff | s1 |
  s4 s2.\p | s1*7 | s1\p | s1*5 | % 21
  s1*8 | s1\p | s1*5 |
  s1*5 | s1\p | s1*6 |
  s1*7 | s1\p | s1*2 | % 24
  s1*6 | s1\f | s1*6 |
  s1*9 | s2 s\cresc | s1 |
  s2 s\ff | s1 | s4 s2.\p | s1*4 | s4 s2.\p | s1*3 | % 27
  s2.*8 |
  s2.*8 |
  s2. | s\pp | s2.*4 | s2\< s4\! | s2\> s4\! | s2.*4 | % 30
  s2.*8 | s2.\pp |
  s2.*4 | s2\< s4\! | s2\> s4\! | s2. | s4 s2\ff | s2. | s4 s2\< | s4\fz\> s2\! |
  s2. | s\decresc | s8 s\p s2 | s2. | s8 s\pp s2 | s2.*2 | s2.\pp | s2.*3 | % 33
  s2. | s2\< s4\! | s2\> s4\! | s2.*2 | s4 s2\ff | s2.*4 |
  s2.*7 |
  s2.*10 | % 36
  s1\f | s1*8 |
  s1*7 | s4 s2.\cresc | s1 | s2 s\ff |
  s1 | s4 s2.\p | s1*4 | s4 s2.\p | s1*3 | % 39
  s1*18 |
  s1*14 | s1\f | s |
  s1*16 | % 42
  s1*16 |
  s1*16 |
  s1*17 | % 45
  s1*9 | s1\f | s1*6 |
  s1*17 |
  s1*4 | s1\f | s1*12 | % 48
  s1*18 |
  s1*9 | s1\f | s1*9 |
  s1*11 | s1\f | s1*5 | s1\< | \after 2... \! s\> | % 51
}

soprano = \relative {
  \global
  bes'4. 8 2~ | 4 8 8 c4 d | 2 2 | r g->~ |
  g4 ees8 8 d4 c | bes2 a4 r | r2 r4 c->~ | c bes8 a bes4 c | d2. c4 |
  b4. 8 2~ | 4 2 4 | c2 2~ | 4 2 4 | 2 d | ees1 | % 17a
  d2 r | R1*3 | g,4. 8 4 4 | aes1 | 4. 8 c4 bes |
  g2 bes~ | 4 g g c | bes2 a | r r4 f | bes4. 8 2~ | 4 c2 d4 | 4 8 8 2~ | % 18a
  d4 r8 d g2~ | 4 ees d c | bes4. 8 a4 r | f2 2 | 4. 8 2 | 2 2 | 4. ges8 f2 |
  f2 f | f e | f f | 4. 8 2 | 2 2 | 4. g8 f2 | g f | 2 4 e | % 19a
  f2 r | r r4 c'~ | 4 bes8 a bes4 c | d2 4 c | b4. 8 2~ |
  b4 4 4 4 | c4. 8 2~ | 4 4 4 4 | 2(d | ees2.) 4 | d2 r | % 20a
  r4 bes d4. 8 | 4 bes8 8 ees4 8 8 | 8 8 8 8 ges4. 8 | 2. r4 |
  r4 ees,2 4 | fes2(ees | des2.) 4 | ees2 r | R1*3 | % 21a
  R1 | g2 4 4 | 2 4 4 | aes2 g | f2. 4 | g f ees d8 ees | f1-> |
  g2 r | R1*6 | % 22a
  R1 | <bes d>2 4 4 | 2 2 | <bes ees> <bes d> | <a c>2. 4 | d c8 c bes4 a8 bes | c1-> |
  d2 r | R1*4 | d4 c8 8 bes4 c8 bes | c1-> | % 23a
  bes2 r | ees,1~ | 2 4 4 | 2. g4 | bes2 2 |
  g4 f8 8 ees4 d8 ees | f1-> | g2 r | R1*2 | % 24a
  R1*2 | g4 f8 8 ees4 d8 ees | f1-> | ees2 r |
  R1*6 | bes'4. 8 2~ | % 25a
  bes4 8 8 c4 d | 2 2 | r g->~ | 4 ees8 8 d4 c | bes2 a4 r | r2 r4 c~ |
  c4 bes8 a bes4 c | d2. c4 | b4. 8 2~ | 4 2 4 | c2 2~ | 4 2 4 | % 26a
  c2 d | ees1 | d2 r | r4 bes d4. 8 | 4 bes8 8 ees4 8 8 |
  ees8 8 8 8 ges4. 8 | 2. r4 | r ees,2 4 | fes4. 8 ees4 4 | des2 4 4 | % 27a
  ees2 r | R1 | r4 ees4 4 4 | 2 d4 4 | c2. 4 | d1\fermata \section \time 3/4 |
  R2.*8 | % 28
  R2.*8 |
  R2. | g2 4 | a2 4 | b4. 8 a g | 4 fis2 | b2 4 | 4.(d8) c4 | 2(b4) | % 30a
  c4 r r | R2.*3 |
  R2.*8 | g2 4 | % 31
  g2 4 | 4. 8 8 8 | aes2 g4 | g(gis) a | bes2 b4 | c4.(d8 bes4) | a r r | % 32a
  r4 f4 8 g | a4 a r | r a4. 8 | c4 fis, r |
  r4 gis2 | a4 a r | r8 bes8 4. 8 | 4 a r | % 33a
  r8 f8 4. 8 | e4 e r | R2. | a2 4 | 2 4 | 4. 8 8 8 | bes2 a4 |
  g4(bes) b | c2 cis4 | d4.(e8 cis4) | b4 r r | R2. | r4 c d8 ees | % 34a
  ees4 d r | r d4. f8 | 4 ees r | r des ees8 fes |
  fis4 ees r | r ees4. ges8 | 4 fes r | % 35a
  r8. d16 4 e8 f | 4 e r | r8 e8 4. f8 | 4 d r |
  d,4. g8 a bes | bes2(a4 | c2 fis,4) | g2 r4 | R2. | % 36a
  R2.*3 | R2.\fermata | R2.\fermata \section \time 4/4 |
  bes4. 8 2~ | 4 4 c d | 2 2 | r f->( | 8) 8 ees ees d4 c | % 37a
  bes2 a4 r | r2 r4 c~ | 8 8 bes a bes4 c8 8 | d2 4 c |
  b4. 8 2~ | 4 4 4 4 | c4. 8 2~ | 4 4 4 4 | 2(d | ees2.) 4 | % 38a
  d2 r | r4 bes d2 | 4 bes ees2 | 4 4 ges4. 8 |
  ges2. r4 | r ees,8 8 4 4 | fes2 ees4 4 | des2. 4 | ees2 r | % 39a
  R1 | r4 ees8 8 4 4 | 2 d4(f) | f(e8 d) e2 | f1\fermata \section \time 2/2 |
  R1*18 | % 40
  R1*14 | f1 | g2 bes |
  a2. g4 | f2 fis | g1 | a2 c | bes4(c) bes(a) | g(a) bes(c) | d(b c bes8 a | g2. c4 | % 42a
  a4 f bes2~ | 4 a8 g a2) | bes4 f fis g | aes2 a | bes4 a8(g) fis2( | g4 a) fis g | aes2 a | bes(a) |
  c1 | R1*3 | a1 | bes2 d | c2. 4 | 2 f | % 43a
  e4(f e d | c d) e f | g1~ | 2 2 | f4(g f ees) | d1 | d4(ees d c) | bes1 |
  bes4(c bes a | g2 bes) | a4 bes c d | ees2 e | f4 e8(d) cis2( | d4 ees) d bes | ees2 e | f2(fis4 e8 fis) | % 44a
  g2 r | R1*3 | c,4(d c) a | d2 bes | ees4(f ees d | c d c) bes |
  a2. 4 | bes2 d | b2. 4 | c2 e | cis2. 4 | d2 f | b,2. 4 | c2 e | % 45a
  a,2. 4 | bes2 d | bes a | aes1 | g2 r | R1*4 |
  R1*9 | % 46a
  c1 | des2 f | ees2. des4 | c2 2 | des1 | ees2 ges | f4(ges f ees |
  des4 ees) des(c) | bes(c) bes(aes) | g2. 4 | aes2 c | a2. 4 | bes2 d | b2. 4 | c2 e | % 47a
  a,2. 4 | b2 d | gis,2. 4 | a2(c~ | 4 des c bes) | a2 r | R1*3 |
  R1*4 | f1 | g2 bes | a2. g4 | f2 f | g1 | % 48a
  a2 c | bes4(c bes a | g a) bes(c) | d1~ | 2 2 | 2.(ees4) | f1 | f~ |
  f2 f | f ees | g f | bes,4(c bes a | g a) bes(c) | des1~ | 2. c4 | bes(c bes a | % 49a
  bes4 c) des(ees) | f1( | e | f2) f | f(e) | f1\fermata | R1*4 |
  R1*9 | d1 | % 50a
  ees2 g4 g | f2. ees4 | d(ees) d(c) | bes(c d e) | f2 r | R1 | d2. 4 | ees2(g) | c, r |
  R1 | c2. 4 | d2(f) | bes, r | R1 | bes2. 4 | c2 des | c(bes~ | 2 a) | % 51a
  bes2 r | R1 | bes1~ | 1~ | 1~ | 1~ | 1~ | 1 | 1~ | 1\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  Glo -- ri -- a __ in ex -- cel -- sis De -- o,
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a __ in ex -- cel -- sis, __ % 17a
  in ex -- cel -- sis De -- o!
  et in -- ter -- ra pax,
  pax ho -- mi -- ni -- bus bo næ vo -- lun -- ta -- tis!
  Lau -- da -- mus te, __ % 18a
  be -- ne -- di -- ci -- mus te, __
  la -- da -- mus te, la -- da -- mus te,
  a -- do -- ra -- mus te,
  a -- do -- ra -- mus te,
  a -- do -- ra -- mus, % 19a
  be -- ne -- di -- ci -- mus,
  be -- ne -- di -- ci -- mus,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus te, __
  glo -- ri -- fi -- ca -- mus te, __ % 20a
  glo -- ri -- fi -- ca -- mus te,
  lau -- da -- mus te,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  a -- do -- ra -- mus te! % 21a

  Gra -- ti -- as a -- gi -- mus
  ti -- bi prop -- ter man -- nam
  glo -- ri -- am tu -- am,

  Do -- mi -- ne De -- us, % 22b
  rex cœ -- les -- tis,
  gra -- ti -- ass a -- gi -- mus ti -- bi,
  gra -- ti -- as a -- gi -- mus ti -- bi, % 23a
  Do -- mi -- ne Je -- su Chri -- ste,
  gra -- ti -- as a -- gi -- mus ti -- bi, % 24a
  gra -- ti -- as a -- gi -- mus ti -- bi,

  Glo -- ri -- a __ in ex -- cel -- sis De -- o, % 25a
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a __ in ex -- cel -- sis, __ % 26a
  in ex -- cel -- sis De -- o!
  Lau -- da -- mus te,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus te, % 27a
  a -- do -- ra -- mus,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus,
  lau -- da -- mus te!

  mi -- se -- re -- re, % 30a
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, % 31b
  mi -- se -- re -- re no -- bis, % 32a
  mi -- se -- re -- re no -- bis,
  fi -- li -- us pat -- ris,
  a -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di, % 33a
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis, % 34a
  Do -- mi -- ne De -- us,
  a -- gnus De -- i,
  fi -- li -- us pa -- tris,
  a -- gnus De -- i, % 35a
  qui tol -- lis pec -- ca -- ta,
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis! % 36a

  Quo -- ni -- am __ tu so -- lus san -- ctus, % 37a
  quo -- ni -- am tu so -- lus san -- ctus,
  quo -- ni -- am tu so -- lus al -- ti -- si -- mus,
  quo -- ni -- am __ tu so -- lus Do -- mi -- nus, __ % 38a
  tu so -- lus Do -- mi -- nus,
  tu so -- lus,
  tu san -- ctus al -- tis -- si -- mus,
  quo -- ni -- am tu so -- lus al -- tis -- si -- mus, % 39a
  quo -- ni -- am tu so -- lus __ Do -- mi -- nus!

  Cum san -- cto spi -- ri -- tu % 41b
  in glo -- ri -- a De -- i __ pa -- tris, % 42a
  A -- men,
  cum san -- cto spi -- ri -- tu
  in glo -- ri -- a De -- i pa -- tris,
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris, % 43a
  A -- men,
  A -- men, % 44a
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris,
  \repeat unfold 15 { A "men, " }

  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris, % 46b
  \repeat unfold 10 { A "men, " } % 47a
  cum san -- cto spi -- ri -- ru in glo -- ri -- a De -- i __ pa -- tris, % 48a
  \repeat unfold 9 { A "men, " }
  in glo -- ri -- a De -- i pa -- tris, % 50a
  \repeat unfold 8 { A "men, " } A -- men!
}

wordsSopMidi = \lyricmode {
  "Glo" ri "a "  "in " ex cel "sis " De "o, "
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a "  "in " ex cel "sis, "  % 17a
  "\nin " ex cel "sis " De "o! "
  "\net " in ter "ra " "pax, "
  "\npax " ho mi ni "bus " "bo " "næ " vo lun ta "tis! "
  "\nLau" da "mus " "te, "  % 18a
  "\nbe" ne di ci "mus " "te, " 
  "\nla" da "mus " "te, " la da "mus " "te, "
  "\na" do ra "mus " "te, "
  "\na" do ra "mus " "te, "
  "\na" do ra "mus, " % 19a
  "\nbe" ne di ci "mus, "
  "\nbe" ne di ci "mus, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus, "
  "\nglo" ri fi ca "mus " "te, " 
  "\nglo" ri fi ca "mus " "te, "  % 20a
  "\nglo" ri fi ca "mus " "te, "
  "\nlau" da "mus " "te, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus " "te, "
  "\na" do ra "mus " "te! " % 21a

  "\nGra" ti "as " a gi "mus "
  "\nti" "bi " prop "ter " man "nam "
  "\nglo" ri "am " tu "am, "

  "\nDo" mi "ne " De "us, " % 22b
  "\nrex " cœ les "tis, "
  "\ngra" ti "ass " a gi "mus " ti "bi, "
  "\ngra" ti "as " a gi "mus " ti "bi, " % 23a
  "\nDo" mi "ne " Je "su " Chri "ste, "
  "\ngra" ti "as " a gi "mus " ti "bi, " % 24a
  "\ngra" ti "as " a gi "mus " ti "bi, "

  "\nGlo" ri "a "  "in " ex cel "sis " De "o, " % 25a
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a "  "in " ex cel "sis, "  % 26a
  "\nin " ex cel "sis " De "o! "
  "\nLau" da "mus " "te, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus " "te, " % 27a
  "\na" do ra "mus, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus, "
  "\nlau" da "mus " "te! "

  "\nmi" se re "re, " % 30a
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re, " % 31b
  "\nmi" se re "re " no "bis, " % 32a
  "\nmi" se re "re " no "bis, "
  "\nfi" li "us " pat "ris, "
  "\na" "gnus " De "i, "
  "\nqui " tol "lis " pec ca "ta " mun "di, " % 33a
  "\npec" ca "ta " mun "di, "
  "\nmi" se re "re, "
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re " no "bis, " % 34a
  "\nDo" mi "ne " De "us, "
  "\na" "gnus " De "i, "
  "\nfi" li "us " pa "tris, "
  "\na" "gnus " De "i, " % 35a
  "\nqui " tol "lis " pec ca "ta, "
  "\npec" ca "ta " mun "di, "
  "\nmi" se re "re " no "bis! " % 36a

  "\nQuo" ni "am "  "tu " so "lus " san "ctus, " % 37a
  "\nquo" ni "am " "tu " so "lus " san "ctus, "
  "\nquo" ni "am " "tu " so "lus " al ti si "mus, "
  "\nquo" ni "am "  "tu " so "lus " Do mi "nus, "  % 38a
  "\ntu " so "lus " Do mi "nus, "
  "\ntu " so "lus, "
  "\ntu " san "ctus " al tis si "mus, "
  "\nquo" ni "am " "tu " so "lus " al tis si "mus, " % 39a
  "\nquo" ni "am " "tu " so "lus "  Do mi "nus! "

  "\nCum " san "cto " spi ri "tu " % 41b
  "\nin " glo ri "a " De "i "  pa "tris, " % 42a
  "\nA" "men, "
  "\ncum " san "cto " spi ri "tu "
  "\nin " glo ri "a " De "i " pa "tris, "
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, " % 43a
  "\nA" "men, "
  "\nA" "men, " % 44a
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, "
  \repeat unfold 15 { A "men, " }

  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, " % 46b
  \repeat unfold 10 { A "men, " } % 47a
  "\ncum " san "cto " spi ri "ru " "in " glo ri "a " De "i "  pa "tris, " % 48a
  \repeat unfold 9 { A "men, " }
  "\nin " glo ri "a " De "i " pa "tris, " % 50a
  \repeat unfold 8 { A "men, " } A -- men!
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*8 |
  s1*10 | s1\p | s1*2 |
  s1*3 | s2. s4\f | s1*8 | s1\pp | s1 | % 18
  s1*4 | s1\pp | s1*3 | s2. s4\f | s1*4 |
  s1*6 | s2 s\cresc | s1 | s2 s\ff | s1 |
  s4 s2.\p | s1*7 | s1\p | s1*5 | % 21
  s1*8 | s1\p | s1*5 |
  s1*5 | s1\p | s1*6 |
  s1*7 | s1\p | s1*2 | % 24
  s1*6 | s1\f | s1*6 |
  s1*9 | s2 s\cresc | s1 |
  s2 s\ff | s1 | s4 s2.\p | s1*4 | s4 s2.\p | s1*3 | % 27
  s2.*8 |
  s2.*8 |
  s2. | s\pp | s2.*4 | s2\< s4\! | s2\> s4\! | s2. | s4 s2\ff | s2. | s4 s2\< | % 30
  s4\fz\> s2\! | s2. | s\decresc | s8 s\p s2 | s2. | s8 s\pp s2 | s2.*2 | s2.\pp |
  s2.*4 | s2\< s4\! | s2\> s4\! | s2.*5 |
  s2.*7 | s2.\pp | s2.*3 | % 33
  s2. | s2\< s4\! | s2\> s4\!~ | s2.*2 | s4 s2\ff | s2.*4 |
  s2.*7 |
  s2.*10 | % 36
  s1\f | s1*8 |
  s1*7 | s4 s2.\cresc | s1 | s2 s\ff |
  s1 | s4 s2.\p | s1*4 | s4 s2.\p | s1*3 | % 39
  s1*18 |
  s1*4 | s1\f | s1*11 |
  s1*16 | % 42
  s1*16 |
  s1*16 |
  s1*17 | % 45
  s1*6 | s1\f | s1*9 |
  s1*17 |
  s1*6 | s1\f | s1*10 | % 48
  s1*18 |
  s1*7 | s1\f | s1*11 |
  s1*11 | s1\f | s1*5 | s1\< | \after 2... \! s\> | % 51
}

alto = \relative {
  \global
  f'4. 8 2~ | 4 8 8 fis4 4 | g2 g | r b->~ |
  b4 c8 8 g4 4 | e2 f4 f->~ | 4 ees8 d ees4 f | g g r2 | aes2 4 g |
  f4. 8 2~ | 4 2 4 | aes2 2~ | 4 2 4 | a2 bes | 4(a8 g a2) | % 17a
  bes2 r | R1*3 | d,4. 8 4 4 | 1 | 4. 8 4 4 |
  ees2 g~ | 4 4 4 ges | f2 f | r r4 f | 4. 8 2~ | 4 fis2 4 | g4 8 8 2~ | % 18a
  g4 r8 b8 2~ | 4 c g g | e4. 8 f4 r | R1*2 | des2 2 | 4. 8 2 |
  f2 des | c2. 4 | 2 r | R1 | d2 d | 4. 8 2 | 2 a4(b) | c2 4 4 | % 19a
  c2 r4 f~ | f ees8 d ees4 f | g2 r | aes2 4 g | f4. 8 2~ |
  f4 4 4 4 | aes4. 8 2~ | 4 4 4 4 | a2(bes~ | 4 a8 g) a2 | bes r | % 20a
  r4 bes4 4. 8 | 4 8 8 4 8 8 | 8 ees8 8 8 4. 8 | 2. r4 |
  r4 ces,2 4 | des2(ces~ | 4 bes8 aes) bes2 | ces r | R1*3 | % 21a
  R1 | ees2 4 4 | 2 4 4 | 2 2 | d2. 4 | 4 4 c4 8 8 | d1-> |
  ees2 r | R1*6 | % 22a
  R1 | f2 4 4 | 2 2 | g f | 2. ees4 | d4 8 8 4 g8 g | a1-> |
  bes2 r | R1*4 | fis4 8 8 g4 8 8 | a1-> | % 23a
  bes2 r | ees,1~ | 2 4 4 | 2. g4 | bes2 2 |
  d4 8 8 c4 8 8 | d1-> | ees2 r | R1*2 | % 24a
  R1*2 | d4 8 8 c4 8 8 | d1-> | ees2 r |
  R1*6 | f,4. 8 2~ | % 25a
  f4 8 8 fis4 4 | g2 2 | r b->~ | 4 c8 c g4 4 | e2 f4 4~ | 4 ees8 d ees4 f |
  g4 g r2 | aes2 4 g | f4. 8 2~ | 4 2 4 | aes2 2~ | 4 2 4 | % 26a
  a2 bes | 4(a8 g a2) | bes r | r4 bes4 4. 8 | 4 8 8 4 8 8 |
  bes8 ees8 8 8 4. 8 | 2. r4 | r ces,2 4 | des4. 8 ces4 4 | 4(bes8 aes) bes4 4 | % 27a
  ces2 r | R1 | r4 ees4 4 4 | c2 bes4 4 | 4(a8 b) a2 | bes1\fermata \section \time 3/4 |
  R2.*8 | % 28
  R2.*8 |
  R2. | d2 4 | 2 4 | 4. 8 8 8 | ees2-> d4 | d(dis) e | f2 fis4 | g4.(a8 f4) | % 30a
  e4 r r | r ees4 8 f | g4 4 r | r g4. 8 |
  bes4 e, r | r fis2 | g4 g r | r8 aes8 4. 8 | % 31a
  aes4 g r | r8 d8 4. 8 | 4 4 r | R2. | e2 4 |
  f2 4 | e4. g8 f e | f4 2 | e2 4 | 4.(g8) f4 | 2(e4) | f r r | % 32a
  R2.*4 |
  R2.*4 | % 33a
  R2.*3 | fis2 4 | g2 4 | fis4. a8 g fis | g4 2 |
  fis2 4 | 4.(a8) g4 | 2(fis4) | g r r | R2. | r4 c, d8 ees | % 34a
  ees4 d r | r d4. f8 | 4 ees r | r des ees8 fes |
  fes4 ees r | r ees4. ges8 | 4 fes r | % 35a
  r8. d16 4 e8 f | 4 e r | r8 e8 4. g8 | 4 d r |
  d4. g8 a bes | 2(a4 | c2 fis,4) | g2 r4 | R2. | % 36a
  R2.*3 | R2.\fermata | R2.\fermata \section \time 2/2 |
  f4. 8 2~ | 4 4 fis4 4 | g2 2 | r b->~ | 8 8 c c g4 4 | % 37a
  e2 f4 4~ | 8 8 ees d ees4 f8 8 | g8. 16 4 r2 | aes4. 8 4 g |
  f2 f~ | 4 4 4 4 | aes4. 8 2~ | 4 4 4 4 | a2(bes~ | 4 a8 g) a2 | % 38a
  bes2 r | r4 bes4 2 | 4 4 2 | 4 ees4 4. 8 |
  ees2. r4 | r ces,8 8 4 4 | des2 ces4 4 | 4(bes8 aes bes4) 4 | ces2 r | % 39a
  R1 | r4 ees8 8 4 4 | c2 bes4(c) | bes2. 4 | a1\fermata \section \time 2/2 |
  R1*18 | % 40
  R1*4 | bes1 | c2 ees | d2. c4 | bes2 b | % 41a
  c1 | d2 f | ees4(f) ees(d) | c(d) ees(f) | g(e f ees8 d | c2. d8 ees) | d4 bes c d | ees2(e4) d8(e) |
  f4 e8(d) cis2(( | d4 ees) d bes | ees2 e | f2(fis4) e8(fis) | g1~ | 2 2 | fis4(g8 f e4 f~ | f ees8 d ees2~ | % 42a
  ees2 d4 ees8 d | c2. d8 c) | bes2 r | r c( | bes c4 d) | d2 r4 d( | ees2. f8 g | f2 d) |
  gis1 | R | d | e2 g | f4(g) f(e) | d(e) f(g) | a2. 4 | 2 2 | % 43a
  g4(a g f | e f) g a | bes1~ | 2 2 | a4(bes a g) | f1 | 4(g f ees) | d1 |
  R1*2 | f1 | g2 bes | a2. g4 | f2 fis | g1 | a2 c | % 44a
  bes4(c) bes(g) | c2 a | d4(ees d c | bes2 b) | c4 r ees,2( | d4 ees f fis | g1~ | 4 f ees) d |
  c2 cis | d f | d dis | e g | a2. 4 | a(gis) a(ais) | b2. a4 | g(fis) g(gis) | % 45a
  a2. g4 | f(e) f(fis) | g2 fis | f4(d ees f) | e2 r | R1*4 |
  R1*6 | ees1 | f2 aes | g2. f4 | % 46a
  ees2 e | f1 | g2 bes | a4(bes) a(ges) | f(ges a bes | ces des) ces(bes) a2 c |
  f,1~( | 4 ees) des(c) | bes2 b | c ees | c cis | d f | g2. 4 | 4(fis) g(gis) | % 47a
  a2. gis4 | f(e) f(fis) | gis2 e | 1~ | 1 | f2 r | R1*3 |
  R1*6 | c1 | d2 f | ees2. d4 | % 48a
  c2 c | d1 | ees2 g | f4(g) f(ees) | d(ees) f(g) | aes1~ | 2. g4 | f2.(g4) |
  aes1 | 2 2 | bes2 2 | g1~( | 4 fis g a | g fis g a | bes a) g2 | f1~ | % 49a
  f2 bes | 4(c bes a | bes c des bes | a c) des(bes) | a2(g) | a1\fermata | R1*4 |
  R1*7 | ees1 | f2 aes | g2. f4 | % 50a
  ees2 e | f2 4 4 | a2 2 | g(bes) | a2 r | R1 | b2. 4 | c2(bes4 aes) | g2 r |
  R1 | a2. 4 | bes2(a4 g) | f2 r | R1 | g2. 4 | a2 bes | a(bes | f1) | % 51a
  f2 r | R1 | g1~ | 1( | ges)~ | 1~ | 1( | f2)( ees) | f1~ | f\fermata |
}

wordsAlto = \lyricmode {
  Glo -- ri -- a __ in ex -- cel -- sis De -- o,
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a,
  glo -- ri -- a __ in ex -- cel -- sis __ % 17a
  in ex -- cel -- sis De -- o!
  et in -- ter -- ra pax,
  pax ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis!
  Lau -- da -- mus te, __ % 18a
  be -- ne -- di -- ci -- mus te, __
  la -- da -- mus te, la -- da -- mus te,
%  a -- do -- ra -- mus te,
  a -- do -- ra -- mus te,
  a -- do -- ra -- mus te, % 19a
%  be -- ne -- di -- ci -- mus,
  be -- ne -- di -- ci -- mus,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus te, __
  glo -- ri -- fi -- ca -- mus te, __ % 20a
  glo -- ri -- fi -- ca -- mus te,
  lau -- da -- mus te,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  a -- do -- ra -- mus te! % 21a

  Gra -- ti -- as a -- gi -- mus
  ti -- bi prop -- ter man -- nam
  glo -- ri -- am tu -- am,

  Do -- mi -- ne De -- us, % 22b
  rex cœ -- les -- tis,
  gra -- ti -- ass a -- gi -- mus ti -- bi,
  gra -- ti -- as a -- gi -- mus ti -- bi, % 23a
  Do -- mi -- ne Je -- su Chri -- ste,
  gra -- ti -- as a -- gi -- mus ti -- bi, % 24a
  gra -- ti -- as a -- gi -- mus ti -- bi,

  Glo -- ri -- a __ in ex -- cel -- sis De -- o, % 25a
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a, % 26a
  glo -- ri -- a __ in ex -- cel -- sis, __
  in ex -- cel -- sis De -- o!
  Lau -- da -- mus te,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus te, % 27a
  a -- do -- ra -- mus,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus,
  lau -- da -- mus te!

  mi -- se -- re -- re, % 30a
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
  Do -- mi -- ne De -- us,
  a -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di, % 31a
  pec -- ca ta mun -- di,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis, % 32a
  mi -- se -- re -- re no -- bis,
%  fi -- li -- us pat -- ris,
%  a -- gnus De -- i,
%  qui tol -- lis pec -- ca -- ta mun -- di, % 33a
%  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re, % 33b
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis, % 34a
  Do -- mi -- ne De -- us,
  a -- gnus De -- i,
  fi -- li -- us pa -- tris,
  a -- gnus De -- i, % 35a
  qui tol -- lis pec -- ca -- ta,
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis! % 36a

  Quo -- ni -- am __ tu so -- lus san -- ctus, % 37a
  quo -- ni -- am tu so -- lus san -- ctus,
  quo -- ni -- am tu so -- lus al -- ti -- si -- mus,
  quo -- ni -- am __ tu so -- lus
  tu so -- lus Do -- mi -- nus, __ % 38a
  tu so -- lus Do -- mi -- nus,
  tu so -- lus,
  tu san -- ctus al -- tis -- si -- mus,
  quo -- ni -- am tu so -- lus al -- tis -- si -- mus, % 39a
  quo -- ni -- am tu so -- lus __ Do -- mi -- nus!

  Cum san -- cto spi -- ri -- tu % 41a
  in glo -- ri -- a De -- i __ pa -- tris,
  A -- men,
  cum san -- cto spi -- ri -- tu
  in glo -- ri -- a De -- i pa -- tris, % 42a
  \repeat unfold 4 { A "men, " }
  cum san -- cto spi -- ri -- tu __ in glo -- ri -- a, % 43a
  in glo -- ri -- a De -- i pa -- tris, % 43a
  A -- men,
%  A -- men, % 44a
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris, % 44a
  \repeat unfold 14 { A "men, " }

  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris, % 46a
  \repeat unfold 12 { A "men, " } % 47a
  cum san -- cto spi -- ri -- ru in glo -- ri -- a De -- i __ pa -- tris, % 48a
  \repeat unfold 8 { A "men, " }
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris, % 50a
  \repeat unfold 7 { A "men, " } A -- men!
}

wordsAltoMidi = \lyricmode {
  "Glo" ri "a "  "in " ex cel "sis " De "o, "
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a, "
  "\nglo" ri "a "  "in " ex cel "sis "  % 17a
  "\nin " ex cel "sis " De "o! "
  "\net " in ter "ra " "pax, "
  "\npax " ho mi ni "bus " bo "næ " vo lun ta "tis! "
  "\nLau" da "mus " "te, "  % 18a
  "\nbe" ne di ci "mus " "te, " 
  "\nla" da "mus " "te, " la da "mus " "te, "
%  a -- do -- ra -- mus te,
  "\na" do ra "mus " "te, "
  "\na" do ra "mus " "te, " % 19a
%  be -- ne -- di -- ci -- mus,
  "\nbe" ne di ci "mus, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus " "te, "
  "\nglo" ri fi ca "mus " "te, " 
  "\nglo" ri fi ca "mus " "te, "  % 20a
  "\nglo" ri fi ca "mus " "te, "
  "\nlau" da "mus " "te, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus " "te, "
  "\na" do ra "mus " "te! " % 21a

  "\nGra" ti "as " a gi "mus "
  "\nti" "bi " prop "ter " man "nam "
  "\nglo" ri "am " tu "am, "

  "\nDo" mi "ne " De "us, " % 22b
  "\nrex " cœ les "tis, "
  "\ngra" ti "ass " a gi "mus " ti "bi, "
  "\ngra" ti "as " a gi "mus " ti "bi, " % 23a
  "\nDo" mi "ne " Je "su " Chri "ste, "
  "\ngra" ti "as " a gi "mus " ti "bi, " % 24a
  "\ngra" ti "as " a gi "mus " ti "bi, "

  "\nGlo" ri "a "  "in " ex cel "sis " De "o, " % 25a
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a, " % 26a
  "\nglo" ri "a "  "in " ex cel "sis, " 
  "\nin " ex cel "sis " De "o! "
  "\nLau" da "mus " "te, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus " "te, " % 27a
  "\na" do ra "mus, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus, "
  "\nlau" da "mus " "te! "

  "\nmi" se re "re, " % 30a
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re " no "bis, "
  "\nDo" mi "ne " De "us, "
  "\na" "gnus " De "i, "
  "\nqui " tol "lis " pec ca "ta " mun "di, " % 31a
  "\npec" "ca " "ta " mun "di, "
  "\nmi" se re "re, "
  "\nmi" se re "re " no "bis, " % 32a
  "\nmi" se re "re " no "bis, "
%  fi -- li -- us pat -- ris,
%  a -- gnus De -- i,
%  qui tol -- lis pec -- ca -- ta mun -- di, % 33a
%  pec -- ca -- ta mun -- di,
  "\nmi" se re "re, " % 33b
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re " no "bis, " % 34a
  "\nDo" mi "ne " De "us, "
  "\na" "gnus " De "i, "
  "\nfi" li "us " pa "tris, "
  "\na" "gnus " De "i, " % 35a
  "\nqui " tol "lis " pec ca "ta, "
  "\npec" ca "ta " mun "di, "
  "\nmi" se re "re " no "bis! " % 36a

  "\nQuo" ni "am "  "tu " so "lus " san "ctus, " % 37a
  "\nquo" ni "am " "tu " so "lus " san "ctus, "
  "\nquo" ni "am " "tu " so "lus " al ti si "mus, "
  "\nquo" ni "am "  "tu " so "lus "
  "\ntu " so "lus " Do mi "nus, "  % 38a
  "\ntu " so "lus " Do mi "nus, "
  "\ntu " so "lus, "
  "\ntu " san "ctus " al tis si "mus, "
  "\nquo" ni "am " "tu " so "lus " al tis si "mus, " % 39a
  "\nquo" ni "am " "tu " so "lus "  Do mi "nus! "

  "\nCum " san "cto " spi ri "tu " % 41a
  "\nin " glo ri "a " De "i "  pa "tris, "
  "\nA" "men, "
  "\ncum " san "cto " spi ri "tu "
  "\nin " glo ri "a " De "i " pa "tris, " % 42a
  \repeat unfold 4 { A "men, " }
  "\ncum " san "cto " spi ri "tu "  "in " glo ri "a, " % 43a
  "\nin " glo ri "a " De "i " pa "tris, " % 43a
  "\nA" "men, "
%  A -- men, % 44a
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, " % 44a
  \repeat unfold 14 { A "men, " }

  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, " % 46a
  \repeat unfold 12 { A "men, " } % 47a
  "\ncum " san "cto " spi ri "ru " "in " glo ri "a " De "i "  pa "tris, " % 48a
  \repeat unfold 8 { A "men, " }
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, " % 50a
  \repeat unfold 7 { A "men, " } A -- men!
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*8 |
  s1*10 | s1\p | s1*2 |
  s1*3 | s2. s4\f | s1*8 | s1\pp | s | % 18
  s1*4 | s1\pp | s1*5 | s2 s\f | s1*2 |
  s1*6 | s2 s\cresc | s1 | s2 s\ff | s1 |
  s4 s2.\p | s1*7 | s1\p | s1*5 | % 21
  s1 | s1\p | s1*10 | s1\p | s |
  s1*12 |
  s1\p | s1*9 | % 24
  s1*6 | s1\f | s1*6 |
  s1*9 | s2 s\cresc | s1 |
  s2 s\ff | s1 | s4 s2.\p | s1*4 | s4 s2.\p | s1*3 | % 27
  s2.*6 | s4 s2\ff | s2.
  s4 s2\< | s4\fz\> s2\! | s4 s2\decresc | s2. | s8. s16 \p s2 | s2. | s8 s\pp s2 | s2. |
  s2. | s\pp | s2.*4 | s2\< s4\! | s2\> s4\! | s2. | s4 s2\ff | s2. | s4 s2\< | % 30
  s4\fz\> s2\! | s2. | s\decresc | s8 s\p s2 | s2. | s8 s\pp s2 | s2.*2 | s2.\pp |
  s2.*4 | s2\< s4\! | s2\> s4\! | s2.*5 |
  s2.*7 | s2.\pp | s2.*3 | % 33
  s2. | s2\< s4\! | s2\> s4\! | s2. | s4 s2\ff | s2.*5 |
  s2.*7 |
  s2.*10 | % 36
  s1\f | s1*8 |
  s1*7 | s4 s2.\cresc | s1 | s2 s\ff |
  s1 | s4 s2.\p | s1*4 | s4 s2.\p | s1*3 | % 39
  s1*10 | s1\f | s1*7 |
  s1*16 |
  s1*16 | % 42
  s1*16 |
  s1*16 |
  s1*17 | % 45
  s1*16 |
  s1*13 | s1\f | s1*3 |
  s1*12 | s1\f | s1*4 | % 48
  s1*18 |
  s1*7 | s2 s\f | s1*11 |
  s1*11 | s1\f | s1*5 | s1\< | \after 2... \! s\> | % 51
}

tenor = \relative {
  \global
  d'4. 8 2~ | 4 8 8 c4 4 | 2 b | r d->~ |
  d4 ees8 8 b4 c | bes2 c4 r | R1 | r2 ees4.-> 8 | d2. ees4 |
  d4. 8 2~ | 4 2 4 | ees2 2~ | 4 2 4 | 2 d4(ees) | f1 | % 17a
  f2 r | R1*3 | b,4. 8 4 4 | bes1 | 4. 8 4 4 |
  bes2 2~ | 4 b c ees | d2 c | r r4 f, | d'4. 8 2~ | 4 c2 4 | 4 b8 a b2~ | % 18a
  b4 r8 d8 2~ | 4 ees b c | bes4. 8 c4 r | R1*2 | aes2 2 | 4. bes8 aes2 |
  aes2 2 | g2. 4 | a2 r | R1 | a2 a | 4. bes8 a2 | bes a | a g4 g | % 19a
  a2 r | R1 | r2 ees' | d2 4 ees | d4. 8 2~ |
  d4 4 4 4 | ees4. 8 2~ | 4 4 4 4 | 2(d4 ees | f2.) 4 | 2 r | % 20a
  r4 bes,4 4. 8 | 4 8 8 ges'4 8 8 | 8 ees8 8 8 4. ges8 | 2. r4 |
  r4 ges,2 4 | 1~ | 2. 4 | 2 r | R1*3 | % 21a
  R1 | bes2 4 4 | 2 4 4 | c2 bes | 2. aes4 | g4 4 4 8 8 | bes1-> |
  bes2 r | <c ees>2 4 4 | 2 4 4 | <c f>2 <c ees> | <b d>2. 4 | <d g> <d f> <c ees> <c d>8 <c ees> | <d f>1-> | % 22a
  ees2 r | R1*4 | a,4 d8 8 4 8 8 | f1-> |
  f2 r | <bes, d>2. 4 | 2 4 4 | <c ees>2 <bes d> | <a d>1 | a4 d8 8 4 8 8 | f1-> | % 23a
  d2 r | R1*4 |
  g,4 8 8 4 8 8 | bes1-> | bes2 r | c1->~ | 2 2 | % 24a
  c2. ees4 g,4. 8 2 | b4 8 8 c4 g8 8 | bes1-> | g2 r |
  R1*6 | d'4. 8 2~ | % 25a
  4 8 8 c4 4 | 2 b | r d->~ | 4 ees8 8 b4 c | ees2 d4 r | R1 |
  r2 ees4. 8 | d2. ees4 | d4. 8 2~ | 4 2 4 | ees2 2~ | 4 2 4 | % 26a
  ees2 d4(ees) | f1 | 2 r | r4 bes,4 4. 8 | 4 8 8 ges'4 8 8 |
  ges8 ees8 8 8 4. ges8 | 2. r4 | r ges,2 4 | 4. 8 4 4 | 2 4 4 | % 27a
  ges2 r | R1 | r4 aes4 4 4 | f2 4 4 | 2. 4 | f1\fermata \section \time 3/4 |
  R2.*6 | r4 bes4 8. c16 | d4 4 r | % 28
  r4 d4. 8 | f4 b, r | r cis2 | d4 d r | % 29a
  r8. ees16 4. 8 | 4 d r | r8 a8 4. 8 | 4 4 r |
  R2. | b2 4 | c2 4 | b4. d8 c b | c4 2 | R2. | d4. 8 dis8 8 | e4.(f8 d4) | % 30a
  c4 r r | r ees,4 8 f | g4 4 r | r g4. 8 |
  bes4 e, r | r fis2 | g4 g r | r8 aes8 4. 8 | % 31a
  aes4 g r | r8 d8 4. 8 | 4 4 r | R2. | c'2 4 |
  d2 4 | e4. 8 d c | 4 b2 | R2. | g4. 8 gis8 8 | a4.(bes8 g4) | f4 r r | % 32a
  R2.*4 |
  R2.*4 | % 33a
  R2.*3 | d'2 4 | e2 4 | fis4. 8 e d | 4 cis2 |
  R2. | a4. 8 ais8 8 | b4.(c8 a4) | g r r | r bes4 8 c | d4 d r | % 34a
  r4 d4. 8 | f4 b, r | r ces4 8 des | ees4 4 r |
  r4 ees4. 8 | ges4 c, r | r8. c16 4 8 d | % 35a
  e4 e r | r8 e8 4. 8 | g4 cis, r | bes8. 16 d4 bes8(g) |
  d4. g8 a bes | 2(a4 | c2 fis,4) | g2 r4 | R2. | % 36a
  R2.*3 | R2.\fermata | R2.\fermata \section \time 4/4 |
  d'4. 8 2~ | 4 4 c c | 2 b | r d->~ | 8 8 ees8 8 b4 c | % 37a
  bes2 c4 r | R1 | r2 ees4. 8 | d2. ees4 |
  d2 2~ | 4 4 4 4 | ees4. 8 2~ | 4 4 4 4 | 2(d4 ees | f2.) 4 | % 38a
  f2 r | r4 bes,4 2 | 4 4 ges'2 | 4 ees4 4. ges8 |
  ges2. r4 | r ges,8 8 4 4 | 2 4 4 | 2. 4 | 2 r | % 39a
  R1 | r4 ges8 8 4 4 | f2 f | g2. c,4 | 1\fermata \section \time 2/2 |
  R1*10 | % 40a
  f1 | g2 bes | a2. g4 | f2 fis | g1 | a2 c | bes4(c) bes(a) | g(a) bes(c) |
  d4(b c bes8 a | g2. c4 | a f bes2~ | 4 a8 g a2) | bes4 f fis g | aes2 a | bes4 a8(g) fis2( | g4 aes) g ees | % 41a
  aes2 a | bes2(b4) a8(b) | c1~ | 2 2 | b4(c8 bes a4 bes~ | 4 a8 g a2) | bes r4 d, | des2 c |
  r4 f(e) a | d,2 r4 d | des2 c | ees d | g4 g ees'2~ | 2 4 f8(ees) | d4. 8 c4 d | bes2( c | % 42a
  c4 d8 c bes4 c8 d | ees2. f8 ees) | d2 r4 g, | ges2 f | r4 bes(a) d | g,2 r4 g | ges2 f4 f | aes2 g |
  g2. 4 | a2(c) | bes4 c(bes a | g a bes c) | d2 r | R1 | e | f2 c | % 43a
  c2. 4 | 2 2 | d4(ees d c | bes c) d ees | f1~( | 4 g) f(ees) | g1~( | 4 a) g(f) |
  bes,4(ees d c | bes c d e) | f4 r r d | des2 c | r4 f,(e) a | d,2 r4 d' | des2 c | ees d | % 44a
  d2. 4 | c(d) e fis | g1~( | 4 f) e(f) | e2(f) | f r | R1 | r2 g, |
  a4(bes) a g | f(g) a(bes) | b(c) b(a) | g(a) b(c) | e2. 4 | f2. e4 | d(cis) d(dis) | e2. d4 | % 45a
  c4(b) c(cis) | d2. a4 | bes(a) bes(ces) | 2(bes) | 2 r | R1*2 | c1 | d2 f |
  ees2. d4 | c2 2 | d1 | ees2 g | f4(g) f(ees) | d(ees) d(c) | bes2 b4 c | des2 d | ees4 d8(c) b2( | % 46a
  b4 des) c bes | aes(bes ces) des8(ces) | bes4(c) des(g,) | aes1~ | 2 ges | ces2(ees4 des | c2) f, |
  R1 | r2 f | g4(aes) g(f) | ees(f) g(aes) | a(bes) a(g) | f(g) a bes | d2. 4 | e2. d4 | % 47a
  c4(b) c(cis) | d2. c4 | b1 | c2 r | R1 | d,1 | g2 bes | a2. g4 | f2 f |
  g1 | a2 c | bes4(c) bes(a) | g(a bes c) | a2 r | R1*4 | % 48a
  R1*3 | f2(g4 a) | bes1 | 1~ | 2. b4 | c(des c bes |
  aes4 bes) c(des) | d2 ees | e f | des1~ | 2. c4 | bes(c bes a | g a) bes(c) | des1~ | % 49a
  des1~ | 4(a bes c | des c) bes2 | c bes | c(des) | c1\fermata | R1*4 |
  R1*7 | r2 c | d f4(ees) | d2. 4 | % 50a
  c2. bes4 | a1~ | 2 d4 d | d c bes2 | c a | bes d | f2. 4 | g1 | g, |
  a2 c4 c | ees1 | f2. f,4 | 2 4 4 | g2 bes | des2. 4 | c2 bes | ees2(d | c1) | % 51a
  bes2 r | R1 | ees1~ | 1~ | 1~ | 1~ | 1( | d2)( c) | d1~ | d\fermata |
}

wordsTenor = \lyricmode {
  Glo -- ri -- a __ in ex -- cel -- sis De -- o,
  glo -- ri -- a in ex -- cel -- sis,
  in ex -- cel -- sis,
  glo -- ri -- a __ in ex -- cel -- sis, __ % 17a
  in ex -- cel -- sis De -- o!
  et in -- ter -- ra pax,
  pax ho -- mi -- ni -- bus bo næ vo -- lun -- ta -- tis!
  Lau -- da -- mus te, __ % 18a
  be -- ne -- di -- ci -- mus te, __
  la -- da -- mus te, la -- da -- mus te,
  a -- do -- ra -- mus te,
  a -- do -- ra -- mus te, % 19a
  be -- ne -- di -- ci -- mus,
  be -- ne -- di -- ci -- mus te,
  te, glo -- ri -- fi -- ca -- mus te, __
  glo -- ri -- fi -- ca -- mus te, __ % 20a
  glo -- ri -- fi -- ca -- mus te,
  lau -- da -- mus te,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  a -- do -- ra -- mus te! % 21a

  Gra -- ti -- as a -- gi -- mus
  ti -- bi prop -- ter man -- nam
  glo -- ri -- am tu -- am,

  gra -- ti -- as a -- gi -- mus % 22a
  ti -- bi prop -- ter mag -- nam glo -- ri -- am tu -- am,
  gra -- ti -- ass a -- gi -- mus ti -- bi,
  De -- us, pa -- ter om -- ni -- po -- tens, % 23a
  gra -- ti -- as a -- gi -- mus ti -- bi,
  gra -- ti -- as a -- gi -- mus ti -- bi, % 24a
  fi -- li u -- ni -- ge -- ni -- te,
  gra -- ti -- as a -- gi -- mus ti -- bi,

  Glo -- ri -- a __ in ex -- cel -- sis De -- o, % 25a
  glo -- ri -- a in ex -- cel -- sis,
  in ex -- cel -- sis, % 26a
  glo -- ri -- a __ in ex -- cel -- sis, __
  in ex -- cel -- sis De -- o!
  Lau -- da -- mus te,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus te, % 27a
  a -- do -- ra -- mus,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus,
  lau -- da -- mus te!

  Do -- mi -- ne De -- us, % 28b
  a -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  pec -- ca -- ta mun -- di,

  mi -- se -- re -- re, % 30a
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
  Do -- mi -- ne De -- us,
  a -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di, % 31a
  pe -- ca -- ta mun -- di,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis, % 32a
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis, % 34a
  Do -- mi -- ne De -- us,
  a -- gnus De -- i,
  fi -- li -- us pa -- tris,
  a -- gnus De -- i, % 35a
  qui tol -- lis pec -- ca -- ta,
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis! % 36a

  Quo -- ni -- am __ tu so -- lus san -- ctus, % 37a
  quo -- ni -- am tu so -- lus san -- ctus,
  quo -- ni -- am tu so -- lus,
  tu so -- lus Do -- mi -- nus, __ % 38a
  tu so -- lus Do -- mi -- nus,
  tu so -- lus,
  tu san -- ctus al -- tis -- si -- mus,
  quo -- ni -- am tu so -- lus al -- tis -- si -- mus, % 39a
  quo -- ni -- am tu so -- lus __ Do -- mi -- nus!

  Cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris, % 40b
  A -- men, % 41a
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris,
  A -- men,
  A -- men,
  cum san -- cto spi -- ri -- tu
  cum san -- cto spi -- ri -- tu % 42a
  in glo -- ri -- a De -- i pa -- tris,
  A -- men,
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris,
  A -- men, % 43a
  A -- men,
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris,
  A -- men, % 44a
  cum san -- cto spi -- ri -- tu,
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris,
  in glo -- ri -- a De -- i __ pa -- tris,
  \repeat unfold 9 { A "men, " }
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris,
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris, % 46a
  A -- men, A -- men,
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris, % 47a
  A -- men, A -- men, A -- men,
  cum san -- cto spi -- ri -- ru in glo -- ri -- a De -- i __ pa -- tris, % 47a
  \repeat unfold 10 { A "men, " }
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris, % 50a
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i,
  in glo -- ri -- a De -- i pa -- tris,
  A -- men, A -- men, A -- men!
}

wordsTenorMidi = \lyricmode {
  "Glo" ri "a "  "in " ex cel "sis " De "o, "
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nin " ex cel "sis, "
  "\nglo" ri "a "  "in " ex cel "sis, "  % 17a
  "\nin " ex cel "sis " De "o! "
  "\net " in ter "ra " "pax, "
  "\npax " ho mi ni "bus " "bo " "næ " vo lun ta "tis! "
  "\nLau" da "mus " "te, "  % 18a
  "\nbe" ne di ci "mus " "te, " 
  "\nla" da "mus " "te, " la da "mus " "te, "
  "\na" do ra "mus " "te, "
  "\na" do ra "mus " "te, " % 19a
  "\nbe" ne di ci "mus, "
  "\nbe" ne di ci "mus " "te, "
  "\nte, " glo ri fi ca "mus " "te, " 
  "\nglo" ri fi ca "mus " "te, "  % 20a
  "\nglo" ri fi ca "mus " "te, "
  "\nlau" da "mus " "te, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus " "te, "
  "\na" do ra "mus " "te! " % 21a

  "\nGra" ti "as " a gi "mus "
  "\nti" "bi " prop "ter " man "nam "
  "\nglo" ri "am " tu "am, "

  "\ngra" ti "as " a gi "mus " % 22a
  "\nti" "bi " prop "ter " mag "nam " glo ri "am " tu "am, "
  "\ngra" ti "ass " a gi "mus " ti "bi, "
  "\nDe" "us, " pa "ter " om ni po "tens, " % 23a
  "\ngra" ti "as " a gi "mus " ti "bi, "
  "\ngra" ti "as " a gi "mus " ti "bi, " % 24a
  "\nfi" "li " u ni ge ni "te, "
  "\ngra" ti "as " a gi "mus " ti "bi, "

  "\nGlo" ri "a "  "in " ex cel "sis " De "o, " % 25a
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nin " ex cel "sis, " % 26a
  "\nglo" ri "a "  "in " ex cel "sis, " 
  "\nin " ex cel "sis " De "o! "
  "\nLau" da "mus " "te, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus " "te, " % 27a
  "\na" do ra "mus, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus, "
  "\nlau" da "mus " "te! "

  "\nDo" mi "ne " De "us, " % 28b
  "\na" "gnus " De "i, "
  "\nqui " tol "lis " pec ca "ta " mun "di, "
  "\npec" ca "ta " mun "di, "

  "\nmi" se re "re, " % 30a
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re " no "bis, "
  "\nDo" mi "ne " De "us, "
  "\na" "gnus " De "i, "
  "\nqui " tol "lis " pec ca "ta " mun "di, " % 31a
  "\npe" ca "ta " mun "di, "
  "\nmi" se re "re, "
  "\nmi" se re "re " no "bis, " % 32a
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re, "
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re " no "bis, " % 34a
  "\nDo" mi "ne " De "us, "
  "\na" "gnus " De "i, "
  "\nfi" li "us " pa "tris, "
  "\na" "gnus " De "i, " % 35a
  "\nqui " tol "lis " pec ca "ta, "
  "\npec" ca "ta " mun "di, "
  "\nmi" se re "re, "
  "\nmi" se re "re " no "bis! " % 36a

  "\nQuo" ni "am "  "tu " so "lus " san "ctus, " % 37a
  "\nquo" ni "am " "tu " so "lus " san "ctus, "
  "\nquo" ni "am " "tu " so "lus, "
  "\ntu " so "lus " Do mi "nus, "  % 38a
  "\ntu " so "lus " Do mi "nus, "
  "\ntu " so "lus, "
  "\ntu " san "ctus " al tis si "mus, "
  "\nquo" ni "am " "tu " so "lus " al tis si "mus, " % 39a
  "\nquo" ni "am " "tu " so "lus "  Do mi "nus! "

  "\nCum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, " % 40b
  "\nA" "men, " % 41a
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, "
  "\nA" "men, "
  "\nA" "men, "
  "\ncum " san "cto " spi ri "tu "
  "\ncum " san "cto " spi ri "tu " % 42a
  "\nin " glo ri "a " De "i " pa "tris, "
  "\nA" "men, "
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, "
  "\nA" "men, " % 43a
  "\nA" "men, "
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, "
  "\nA" "men, " % 44a
  "\ncum " san "cto " spi ri "tu, "
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, "
  "\nin " glo ri "a " De "i "  pa "tris, "
  \repeat unfold 9 { A "men, " }
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, "
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, " % 46a
  "\nA" "men, " A "men, "
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, " % 47a
  "\nA" "men, " A "men, " A "men, "
  "\ncum " san "cto " spi ri "ru " "in " glo ri "a " De "i "  pa "tris, " % 47a
  \repeat unfold 10 { A "men, " }
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, " % 50a
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i, "
  "\nin " glo ri "a " De "i " pa "tris, "
  "\nA" "men, " A "men, " A "men! "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*8 |
  s1*10 | s1\p | s1*2 |
  s1*3 | s2. s4\f | s1*8 | s1\pp | s | % 18
  s1*4 | s1\pp | s1*4 | s2 s\f | s1*3 |
  s1*6 | s2 s\cresc | s1 | s2 s\ff | s1 |
  s4 s2.\p | s1*7 | s1\p | s1*5 | % 21
  s1 | s\p | s1*10 | s1\p | s |
  s1*12 |
  s1\p | s1*9 | % 24
  s1*6 | s1\f | s1*6 |
  s1*9 | s2 s\cresc | s1 |
  s2 s\ff | s1 | s4 s2.\p | s1*4 | s4 s2.\p | s1*3 | % 27
  s2.*6 | s4 s2\ff | s2. |
  s4 s2\< | s4\fz\> s2\! | s4 s2\decresc | s2. | s8. s16\p s2 | s2. | s8 s\pp s2 | s2. |
  s2. | s\pp | s2.*4 | s2\< s4\! | s2\> s4\! | s2.*4 | % 30
  s2.*8 | s2.\pp |
  s2.*4 | s2\< s4\! | s2\> s4\! | s2. | s4 s2\ff | s2. | s4 s2\< | s4\fz\> s2\! |
  s2. | s\decresc | s8 s\p s2 | s2. | s8 s\pp s2 | s2.*2 | s2.\pp | s2.*3 | % 33
  s2. | s2\< s4\! | s2\> s4\! | s2. | s4 s2\ff | s2.*5 |
  s2.*7 |
  s2.*10 | % 36
  s1\f | s1*8 |
  s1*7 | s4 s2.\cresc | s1 | s2 s\ff |
  s1 | s4 s2.\p | s1*4 | s4 s2.\p | s1*3 | % 39
  s1\f | s1*17 |
  s1*16 |
  s1*16 | % 42
  s1*16 |
  s1*16 |
  s1*17 | % 45
  s1*16 |
  s1*15 | s1\f | s |
  s1*17 | % 48
  s1*18 |
  s1*6 | s1\f | s1*12 |
  s1*11 | s1\f | s1*5 | s1\< | \after 2... \! s\> | % 51
}

bass = \relative {
  \global
  bes4. 8 2~ | 4 8 8 aes4 4 | g2 g | r g->~ |
  g4 c,8 8 d4 ees | ges2 f4 r | r2 aes4.-> 8 | g2 r4 g->~ | 4 f8(e) f4 g |
  aes4. 8 2~ | 4 2 4 | 2 2~ | 4 2 ges4 | f2 f | 1 | % 17a
  bes2 r | R1*3 | g4. 8 4 4 | f1 | 4. 8 4 4 |
  ees2 2~ | 4 4 4 4 | f2 f | r r4 f | bes4. 8 2~ | 4 aes2 4 | g4 8 8 2~ | % 18a
  g4 r8 8 2~ | 4 c, d ees | ges4. 8 f4 r | R1*2 | des2 2 | 4. 8 2 |
  c2 bes | c2. 4 | f2 r | R1 | d2 d | 4. 8 2 | g, d' | c2 4 4 | % 19a
  f,2 r | r aes'4 8 8 | g4 4 r g~( | 4 d8 e) f4 g | aes4. 8 2~ |
  aes4 4 4 4 | 4. 8 2~ | 4 4 4 ges | f1~ | 2. 4 | bes2 r | % 20a
  r4 bes g4. 8 | 4 bes8 8 ees,4 8 8 | 8 8 8 8 ces'4. 8 | 2. r4 |
  r4 ces,2 4 | bes2(ces | ges2.) 4 | ces2 r | R1*3 | % 21a
  R1 | ees2 4 4 | 2 4 4 | aes,2 ees' | bes2. 4 | b4 4 c4 8 8 | bes1-> |
  ees2 r | <c g'>2 4 4 | 2 4 4 | <f, aes'>2 <c' g'> | <g g'>2. 4 | <g b'>4 4 <c c'> <c g'>8 8 | <bes bes'>1-> | % 22a
  <ees g>2 r | R1*4 | fis4 8 8 g4 8 8 | f1-> |
  bes2 r | g2. 4 | 2 4 4 | <c, g'>2 <g g'> | <d' fis>1 | d4 8 8 g4 8 8 | f1-> | % 23a
  bes,2 r | R1*4 |
  b4 8 8 c4 8 8 | bes1-> | ees2 r | c1->~ | 2 2 | % 24a
  c2. ees4 g4. 8 2 | g,4 8 8 c4 8 8 | bes1-> | ees2 r |
  R1*6 | bes'4. 8 2~ | % 25a
  bes4 8 8 aes4 4 | g2 2 | r g->~ | 4 c,8 8 d4 ees | ges2 f4 r | r2 aes4. 8 |
  g2 r4 g~ | 4 d8(e) d4 g | aes4. 8 2~ | 4 2 4 | 2 2~ | 4 2 ges4 | % 26a
  f2 f | 1 | bes2 r | r4 bes g4. 8 | 4 bes8 8 ees,4 8 8 |
  ees8 8 8 8 ces'4. 8 | 2. r4 | r ces,2 4 | bes4. 8 ces4 4 | ges2 4 4 | % 27a
  ces2 r | R1 | r4 ces4 4 bes | a2 bes4 4 | f2. 4 | bes1\fermata \section \time 3/4 |
  R2.*6 | r4 bes4 8. c16 | d4 4 r | % 28
  r4 d4. 8 | f4 b, r | r cis2 | d4 4 r | % 29a
  r8. ees16 4. 8 | 4 d r | r8 a'8 4. 8 | 4 4 r |
  R2. | g2 4 |  fis2 4 | g4. 8 fis g | a4 2 | g2 4 | g(gis) a | g2. | % 30a
  c4 r r | R2.*3 |
  R2.*8 | c,2 4 | % 31
  b2 4 | c4. 8 b c | d4 2 | c2 4 | c(cis) d | c2. | f,4 r r | % 32a
  r4 f'4 8 g | a4 a r | r a4. 8 | c4 fis, r |
  r4 gis2 | a4 a r | r8 bes8 4. 8 | 4 a r | % 33a
  r8 e8 4. 8 | 4 4 r | R2. | d2 4 | cis2 4 | d4. 8 cis d | e4 2 |
  d2 4 | 4(dis) e | d2. | g,4 r r | r bes4 8 c | d4 d r | % 34a
  r4 d4. 8 | f4 b, r | r ces4 8 des | ees4 4 r |
  r4 ees4. 8 | ges4 c, r | r8. c16 4 8 d | % 35a
  e4 e r | r8 e8 4. 8 | g4 cis, r | aes'8. 16 d4 bes8(g) |
  d4. g8 a bes | 2(a4 | c2 fis,4) | g2 r4 | R2. | % 36a
  R2.*3 | R2.\fermata | R2.\fermata \section \time 4/4 |
  bes4. 8 2~ | 4 4 aes4 4 | g2 g | r g->~ | 8 8 c, c d4 ees | % 37a
  ges2 f4 r | r2 aes4. 8 | g2 r4 g~ | 8 8 f e f4 g8 8 |
  aes4. 8 2~ | 4 4 4 4 | 4. 8 2~ | 4 4 4 ges | f1~ | 2. 4 | % 38a
  bes,2 r | r4 bes' g2 | 4 bes ees,2 | 4 4 ces'4. 8 |
  ces2. r4 | r ces,8 8 4 4 | bes2 ces4 4 | ges2. 4 | ces2 r | % 39a
  R1 | r4 ces8 8 4 bes | a2 bes4(a) | g2. 4 | f1\fermata \section \time 2/2 |
  bes1 | c2 ees | d2. c4 | bes2 b | c1 | d2 f | ees4(f) ees(d) | c(d) ees(f) | g(e f ees8 d | c2. d8 c) | % 40a
  bes4 4 c d | ees2(e4) d8(e) | f4 e8(d) cis2( | d4 ees) d bes | ees2 e | f(fis4) e8(fis) | g1~ | 2 2 |
  fis4(g8 f e4 f~ | f ees8 d ees2~ | 2 d4 ees8 d | c2. d8 c) | bes2 r4 g' | ges2 f | r4 bes,(a) d | g,2 r4 g | % 41a
  ges2 f | aes g | c4 4 aes'2~ | 2 aes,4 bes8(aes) | g4 g' f g | ees2(f) | bes, r | R1 |
  R1*8 | % 42a
  R1*2 | bes1 | c2 ees | d2. c4 | bes2 b | c1 | d2 f |
  ees4(f) ees(d) | c(d ees f) | g2 r | R1*3 | a4(bes a g) | f(g) a(bes) | % 43a
  c2. 4 | 2 2 | bes4(c bes a | g a) bes c | d1~( | 4 ees) d(c) | bes1~( | 4 c) bes(a) |
  g1~ | g | f2 r | R1*5 | % 44a
  g,1 | a2 c | bes2. a4 | g2 gis | a1 | bes2 d | c4(d) c(bes) | a(bes) c(d) |
  ees1 | d | f | e | a4(bes) a(g) | f2. 4 | g2 b | e, 2. 4 | % 45a
  f2 a | d,1~( | d~ | 4 f) ees(d) | ees1 | f2 aes | g2. f4 | ees2 e | f1 |
  g2 bes | aes4(bes) aes(g) | f(g) aes(bes) | c(b c bes | aes2 a | bes4 c bes aes) | g2 r4 c, | ces2 bes | r4 ees(d) g | % 46a
  c,2 aes | des(d) | ees e | f2. ees4 | des2 fes | ees2. 4 | f2 a, |
  bes4(c des f, | g aes) g(a) | des1 | c | ees | d | g4(aes) g(f) | e2. 4 | % 47a
  f2 a | d,2. 4 | e(f e d | c b) a(g) | ges1 | f2 r | R1 | c'1 | d2 f |
  ees2. d4 | c2 c | d1 | ees2 g | f4(g) f(d) | ees(f) g(ees) | f(g f ees | d ees d bes | ees c d ees | % 48a
  f4 g a f | bes a g f | ees c f ees | d ees d c | bes c d ees | f g f ees | d ees f g | aes bes aes g |
  f4 g) aes(bes) | b2 c | cis d | ees,1~ | 2 2 | e1~ | 2 2 | f1~ | % 49a
  f2 f | ges1~ | 2 2 | f f | f1 | f1\fermata | R1*4 |
  R1*6 | bes,1 | c2 ees | d2. c4 | bes2 b | % 50a
  c1 | d2 f | fis2. 4 | g2. 4 | f(g f ees | d ees) f(g) | aes1( | g2.) f4 | ees(f ees d |
  c4 d) es(f) | ges1( | f2.) ees4 | d(ees d c | bes c) d(f) | e2. 4 | 2 2 | f1~ | f | % 51a
  bes,2 r | R1 | ees1~ | 1( | ges)~ | 1( | bes,1)~ | 1 | 1~ | 1\fermata |
}

wordsBass = \lyricmode {
  Glo -- ri -- a __ in ex -- cel -- sis De -- o,
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a in __ ex -- cel -- sis,
  glo -- ri -- a __ in ex -- cel -- sis, __ % 17a
  in ex -- cel -- sis De -- o!
  et in -- ter -- ra pax,
  pax ho -- mi -- ni -- bus bo næ vo -- lun -- ta -- tis!
  Lau -- da -- mus te, __ % 18a
  be -- ne -- di -- ci -- mus te, __
  la -- da -- mus te, la -- da -- mus te,
  a -- do -- ra -- mus te,
  a -- do -- ra -- mus te, % 19a
  be -- ne -- di -- ci -- mus,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus te, __
  glo -- ri -- fi -- ca -- mus te, __ % 20a
  glo -- ri -- fi -- ca -- mus te,
  lau -- da -- mus te,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  a -- do -- ra -- mus te! % 21a

  Gra -- ti -- as a -- gi -- mus
  ti -- bi prop -- ter man -- nam
  glo -- ri -- am tu -- am,

  gra -- ti -- as a -- gi -- mus % 22a
  ti -- bi prop -- ter mag -- nam glo -- ri -- am tu -- am,
  gra -- ti -- ass a -- gi -- mus ti -- bi,
  De -- us, pa -- ter om -- ni -- po -- tens, % 23a
  gra -- ti -- as a -- gi -- mus ti -- bi,
  gra -- ti -- as a -- gi -- mus ti -- bi, % 24a
  fi -- li u -- ni -- ge -- ni -- te,
  gra -- ti -- as a -- gi -- mus ti -- bi,

  Glo -- ri -- a __ in ex -- cel -- sis De -- o, % 25a
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a in ex -- cel -- sis,
  glo -- ri -- a __ in ex -- cel -- sis, __ % 26a
  in ex -- cel -- sis De -- o!
  Lau -- da -- mus te,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus te, % 27a
  a -- do -- ra -- mus,
  be -- ne -- di -- ci -- mus te,
  glo -- ri -- fi -- ca -- mus,
  lau -- da -- mus te!

  Do -- mi -- ne De -- us, % 28b
  a -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  pec -- ca -- ta mun -- di,

  mi -- se -- re -- re, % 30a
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, % 31b
  mi -- se -- re -- re no -- bis, % 32a
  mi -- se -- re -- re no -- bis,
  fi -- li -- us pa -- tris,
  a -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di, % 33a
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis, % 34a
  Do -- mi -- ne De -- us,
  a -- gnus De -- i,
  fi -- li -- us pa -- tris,
  a -- gnus De -- i, % 35a
  qui tol -- lis pec -- ca -- ta,
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis! % 36a

  Quo -- ni -- am __ tu so -- lus san -- ctus, % 37a
  quo -- ni -- am tu so -- lus san -- ctus,
  quo -- ni -- am,
  quo -- ni -- am tu so -- lus al -- tis -- si -- mus, __
  tu so -- lus Do -- mi -- nus, __ % 38a
  tu so -- lus Do -- mi -- nus,
  tu so -- lus,
  tu san -- ctus al -- tis -- si -- mus,
  quo -- ni -- am tu so -- lus al -- tis -- si -- mus, % 39a
  quo -- ni -- am tu so -- lus __ Do -- mi -- nus!

  Cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris, % 40a
  A -- men,
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris,
  A -- men,
  A -- men, % 41a
  cum san -- cto spi -- ri -- tu,
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris,
  A -- men,
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris, % 42b
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris, % 43a
  A -- men, % 44a
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris,
  \repeat unfold 8 { A "men, " } % 45a
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i __ pa -- tris,
  A -- men, % 46a
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris, % 46a
  A -- men, A -- men,
  \repeat unfold 9 { A "men, " } % 47a
  cum san -- cto spi -- ri -- ru in glo -- ri -- a De -- i __ pa -- tris, % 47a
  \repeat unfold 9 { A "men, " }
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa -- tris, % 50a
  \repeat unfold 8 { A "men, " }
  A -- men!
}

wordsBassMidi = \lyricmode {
  "Glo" ri "a "  "in " ex cel "sis " De "o, "
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a " "in "  ex cel "sis, "
  "\nglo" ri "a "  "in " ex cel "sis, "  % 17a
  "\nin " ex cel "sis " De "o! "
  "\net " in ter "ra " "pax, "
  "\npax " ho mi ni "bus " "bo " "næ " vo lun ta "tis! "
  "\nLau" da "mus " "te, "  % 18a
  "\nbe" ne di ci "mus " "te, " 
  "\nla" da "mus " "te, " la da "mus " "te, "
  "\na" do ra "mus " "te, "
  "\na" do ra "mus " "te, " % 19a
  "\nbe" ne di ci "mus, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus, "
  "\nglo" ri fi ca "mus " "te, " 
  "\nglo" ri fi ca "mus " "te, "  % 20a
  "\nglo" ri fi ca "mus " "te, "
  "\nlau" da "mus " "te, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus " "te, "
  "\na" do ra "mus " "te! " % 21a

  "\nGra" ti "as " a gi "mus "
  "\nti" "bi " prop "ter " man "nam "
  "\nglo" ri "am " tu "am, "

  "\ngra" ti "as " a gi "mus " % 22a
  "\nti" "bi " prop "ter " mag "nam " glo ri "am " tu "am, "
  "\ngra" ti "ass " a gi "mus " ti "bi, "
  "\nDe" "us, " pa "ter " om ni po "tens, " % 23a
  "\ngra" ti "as " a gi "mus " ti "bi, "
  "\ngra" ti "as " a gi "mus " ti "bi, " % 24a
  "\nfi" "li " u ni ge ni "te, "
  "\ngra" ti "as " a gi "mus " ti "bi, "

  "\nGlo" ri "a "  "in " ex cel "sis " De "o, " % 25a
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a " "in " ex cel "sis, "
  "\nglo" ri "a "  "in " ex cel "sis, "  % 26a
  "\nin " ex cel "sis " De "o! "
  "\nLau" da "mus " "te, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus " "te, " % 27a
  "\na" do ra "mus, "
  "\nbe" ne di ci "mus " "te, "
  "\nglo" ri fi ca "mus, "
  "\nlau" da "mus " "te! "

  "\nDo" mi "ne " De "us, " % 28b
  "\na" "gnus " De "i, "
  "\nqui " tol "lis " pec ca "ta " mun "di, "
  "\npec" ca "ta " mun "di, "

  "\nmi" se re "re, " % 30a
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re, " % 31b
  "\nmi" se re "re " no "bis, " % 32a
  "\nmi" se re "re " no "bis, "
  "\nfi" li "us " pa "tris, "
  "\na" "gnus " De "i, "
  "\nqui " tol "lis " pec ca "ta " mun "di, " % 33a
  "\npec" ca "ta " mun "di, "
  "\nmi" se re "re, "
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re " no "bis, " % 34a
  "\nDo" mi "ne " De "us, "
  "\na" "gnus " De "i, "
  "\nfi" li "us " pa "tris, "
  "\na" "gnus " De "i, " % 35a
  "\nqui " tol "lis " pec ca "ta, "
  "\npec" ca "ta " mun "di, "
  "\nmi" se re "re, "
  "\nmi" se re "re " no "bis! " % 36a

  "\nQuo" ni "am "  "tu " so "lus " san "ctus, " % 37a
  "\nquo" ni "am " "tu " so "lus " san "ctus, "
  "\nquo" ni "am, "
  "\nquo" ni "am " "tu " so "lus " al tis si "mus, " 
  "\ntu " so "lus " Do mi "nus, "  % 38a
  "\ntu " so "lus " Do mi "nus, "
  "\ntu " so "lus, "
  "\ntu " san "ctus " al tis si "mus, "
  "\nquo" ni "am " "tu " so "lus " al tis si "mus, " % 39a
  "\nquo" ni "am " "tu " so "lus "  Do mi "nus! "

  "\nCum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, " % 40a
  "\nA" "men, "
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, "
  "\nA" "men, "
  "\nA" "men, " % 41a
  "\ncum " san "cto " spi ri "tu, "
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, "
  "\nA" "men, "
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, " % 42b
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, " % 43a
  "\nA" "men, " % 44a
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, "
  \repeat unfold 8 { A "men, " } % 45a
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i "  pa "tris, "
  "\nA" "men, " % 46a
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, " % 46a
  "\nA" "men, " A "men, "
  \repeat unfold 9 { A "men, " } % 47a
  "\ncum " san "cto " spi ri "ru " "in " glo ri "a " De "i "  pa "tris, " % 47a
  \repeat unfold 9 { A "men, " }
  "\ncum " san "cto " spi ri "tu " "in " glo ri "a " De "i " pa "tris, " % 50a
  \repeat unfold 8 { A "men, " }
  "\nA" "men! "
}

pianoRHone = \relative {
  \override DynamicTextSpanner.style = #'none
  \global
  R1*3 | \tuplet 3/2 4 {g8(b d g b d)} <g, b d g>2->~ |
  q4 <ees g c ees>4-! <d f bes d>-! <c g' c>-! | % 16b
  <bes e bes'>2 <c f a>4 \vo r | r2 r4 c'->~ | 4 bes8 a bes4 c |
  \ov <d, aes' d>2. <ees g c>4 |
  \vo b'4. 8 2~ | 4 4-! 4-! 4-! | c4. 8 2~ | 4 4-! 4-! 4-! | % 17a
  <a c>2 <bes d>~ | bes4 a8 g a2 |
  d4. s8 s2 | s1*6 | % 17b
  \ov R1*2 | r2 r4 f,~ | f ees-! d-! c-! | bes2 r | R1*2 | % 18a
  \tuplet 3/2 4 {g8(b d g b d)} <g, b d g>2->~ | % 18b
  q4 <ees g c ees>-! <d f b d>-! <c bes' c>-! |
  <bes e bes'>2-> <c f a> | R1*2 |
  <aes des f>2 2 \vo <aes f'>4.(<bes ges'>8) <aes des f>2 |
  <aes f'>2 <aes des f> ~ | \vo f'2 e | \ov <a, c f> r | R1 | % 19a
  <a d f>2 2 | 4.(<bes d g>8) <a d g>2 | <bes d g> \vo <a f'>~ |
  <c f>2. <c e>4 |
  <a c f>2. \vo r4 | r2 r4 c'->~ | 4 bes8 a bes4 c | % 19b
  \ov <d, aes' d>2. <ees g c>4 | \vo b'4. 8 2^\sf~ |
  b4 b-! b-! b-! | c4. 8 2~ | 4 4-! 4-! 4-! | <a c>2 <bes d>~ | % 20a
  \vt bes 4 a8 g a2 \ov | \tuplet 3/2 4 {bes,8 d f bes d f} <bes, bes'>2-> |
  \tuplet 3/2 4 {bes8 d f bes d f} <d, bes' d>2-> | % 20b
  \tuplet 3/2 4 {bes8 d f bes d f} <ees, ges bes ees>2-> |
  \tuplet 3/2 4 {ees,8 ges bes ees ges bes} <ces, ees ges ces>2~ |
  q4 <ges ces ees>4 <ges ees' ges>2->~ |
  q4 r r2 | R1*2 | % 21a
  \tuplet 3/2 4 {ces,8 ees ges ces ees ges} <ces, ees ges ces>2->~ |
  q4 <ces ees ges> <ees ges ees'>2->~ | 4 ees,2 4 | <d f>2 ees~ |
  ees4 d8 c d2 | <bes bes'>2(<aes aes'>4 <g g'>) | % 21b
  q2(f'4 ees) | ees(<c c'> <bes bes'>2)~ | 4 aes'8(g f4 aes) |
  <g, g'>2.(f'8 ees) | <aes, aes'>1->~ |
  q4 <ees' g>2(<f g b>4) | \vo g2(f4 ees) \ov | ees2(d4 c) | % 22a
  c4(aes' g2) | g4(f8 ees d2) | r4 g2(f8 ees) | aes1->( |
  <bes, ees g>4\arpeggio) <ees g>2(<ees f a>4) | % 22b
  <f f'>2(<ees ees'>4 <d d'>) | q2(<c c'>4 <bes bes'>) |
  bes'4(<g g'> <f f'>2)~ | 4 ees'8(d c4 ees) |
  <d, d'>2.(c'8 bes) | <ees, ees'>1->~ |
  q4 <bes' d>2(<c d fis>4) | % 23a
  <bes d g>4 <g bes d>-.\arpeggio <d g bes>-.\arpeggio <d g>-.\arpeggio |
  r4 q-.\arpeggio <d g bes>-.\arpeggio <g bes d>-.\arpeggio |
  r4 <g c ees>-.\arpeggio r <g bes d>-.\arpeggio |
  r4 <fis a d>-.\arpeggio <d f a>-.\arpeggio <f a d>-.\arpeggio |
  r4 <fis a d>\arpeggio r <g bes d>\arpeggio |
  r4 <a c f>\arpeggio <f a c>\arpeggio <a c f>\arpeggio |
  <bes d> 4 \vo bes2(c8 d) \ov | % 23b
  bes'8(c bes bes, aes' aes, g' g,) | g'(aes g g, f' f, ees' ees,) |
  ees'8(c c' c, bes' bes, g' aes) | bes(bes, aes' g f bes, aes' aes,) |
  g'8(g, d' g fis g f ees) | aes(bes, aes' bes aes bes c aes) | % 24a
  g8(f ees d ees f g g,) | g'(aes g g, f' f, ees' ees,) |
  ees'8(f ees ees, d' d, c' c,) |
  c'8(aes aes' aes, g' g, ees' f) | g(g, f' ees d g, d' fis) | % 24b
  g8(d g f d ees f g) | aes(g aes bes aes bes c aes) |
  g8(ees bes g ees c bes aes) |
  \tuplet 3/2 4 {g8(b d g b d)} \vo g2~ | % 25a
  g4 g-! g-! g-! | \ov \tuplet 3/2 4 {bes,,8(ees ges bes ees ges)} \vo bes2~ |
  bes4 4-! 4-! ees-! | \ov <ees, a c ees>2 \vo <bes' d>~ |
  bes4 a8 g a2 | \ov <bes, d bes'>2 r |
  R1*2 | \tuplet 3/2 4 {g,8(b d g b d)} <g, bes d g>2~ | % 25b
  q4 <ees g c ees>-! <d f b d>-! <c g' c>-! |
  <bes e bes'>2 <c f a>4 \vo r | r2 r4 c''->~ |
  c4 bes8 a bes4 c \ov | <d, aes' d>2. <ees g c>4 | % 26a
  \vo b'4.-> 8 2~ | 4 4-! 4-! 4-! | c4.-> 8 2~ | 4 4-! 4-! 4-! |
  <a c>2 <bes d>~ | bes4 a8 g a2 | % 26b
  \ov \tuplet 3/2 4 {<f bes d>8 d, [ f ] bes d f} <d f bes>2-> |
  \tuplet 3/2 4 {bes8 d f a bes c} <ees, bes' d>2-> |
  \tuplet 3/2 4 {bes8 d g bes c d} <ees, ges bes ees>2-> |
  \tuplet 3/2 4 {ees,8 ges bes ees ges bes} <ces, ees ges ces>2~ | % 27a
  q4 <ges ces ees>4-. <ges ees' ges>2->~ | 4 r r2 | R1*2 |
  \tuplet 3/2 4 {ces,8 ees ges ces ees ges} <ces, ees ges ces>2~ | % 27b
  q4 <ces ees ges>4-. <ees ges ees'>2->~ | 4 r r2 |
  r4 <c, ees>4(<bes d>2)~ \vt bes4(a8 g) a2 \ov |
  <bes d>1\fermata \section \time 3/4 |
  \vo g'2.-> | fis-> | g-> | ees-> | % 28a
  d2. | d | g-> | fis-> |
  g2.-> | aes^\fz-> | \after 4 ^\decresc g->~ | g | % 29a
  g2.^\p~ | 4(f d) | ees2.~ | 4(d2)~ |
  d2. | d~ | d | d( | ees2 d4)~ | \vt d(dis e) \vo b'4.(d8 c4) | c2(b4) | % 30a
  c4 c,8-! aes'-! g-! <d g b>-! | <c c'>2.-> | <b b'>-> | <c c'>-> |
  <des des'>2.-> | <c c'>->~ | q-> | q~ | % 31a
  q4(<bes bes'> <g g'>) | <aes aes'>2.~ | 4(<g g'>2~) | g'2. | g~ |
  g2. | g( | aes2 g4)~ | g(gis a) | bes2(b4) | c4.(d8 bes4) | % 32a
  a4 f8-! bes-! a-! <e a cis>-! |
  <d d'>2.-> | <cis cis'>-> | <d d'>-> | <ees ees'>-> | % 32b
  <d d'>2.^\fz~ | q | q~ | 4(<d d'> <c c'>) | % 33a
  <bes bes'>2.~ | 4(<a a'>2)~ | \ov a'2.~ | a~ | a~ | a( | bes2)(a4) |
  \vo a4(bes b) |  c2(cis4) | d4.(e8 fis4) | % 34a
  g4 \ov g,,8-! ees'-! d-! <a d fis>-! | \vo g'2.-> | fis-> |
  g2.-> | aes-> | aes-> | g-> | % 34b
  aes2.-> | a-> | a-> | % 35a
  gis2.-> | \after 4 ^\< a-> | \after 4 ^\> bes^\fz | \ov <g bes d g>2.\! |
  <g bes d>8-! q-! r <bes d g>-! r <d g bes>-! | <g, c ees g>2. | % 36a
  <c ees fis>8-! q-! r <ees fis a>-! r <d fis a d>-! |
  <d g b d>8 r \vo g,2 | ees2.-> |
  d2. | d | g, \ov | <g b d g>2.\fermata | % 36b
  <c ees a>\fermata \section \time 4/4 |
  <bes d bes'>4 r r2 | R1*2 | \tuplet 3/2 4 {g8 b d g b d} <g, b d g>2->~ | % 37a
  q4 <ees g c ees>-! <d f b d>-! <c g' c>-! |
  <bes e bes'>2 <c f a> 4 \vo r | r2 r4 c''->~ | c bes8 a bes4 c | % 37b
  \ov <d, aes' d>2. <ees g c>4 |
  \vo b'4. 8 2~ | 4 4-!~ 4-! 4-! | c4. 8 2~ | 4 4-! 4-! 4-! | % 38a
  <a c>2 <bes d>~ | bes4 a8 g a2 |
  \ov \tuplet 3/2 4 {<f bes d>8 d, [ f ] bes d f} <d f bes>2-> | % 38b
  \tuplet 3/2 4 {bes8 d f a bes c} <d, bes' d>2-> |
  \tuplet 3/2 4 {bes8 d g bes c d}<ees, ges bes ees>2-> |
  \tuplet 3/2 4 {ees,8 ges bes ees ges bes} <ces, ees ges ces>2~ |
  q4 <ges c ees>4-~ <ges ees' ges>2->~ | 4 r r2 | R1*2 | % 39a
  \tuplet 3/2 4 {ces,8 ees ges ces ees ges} <ces, ees ges ces>2~ |
  q4 <ces ees ges>4-! <ees ges ees'>2~ | 4 r r2 | % 39b
  r4 <c, ees>4(<bes d> <c f>)~ \vo | f4(e8 d e2) \ov |
  <c f>1\fermata \section \time 2/2 |
  <bes bes'>4 r r2 | R1*9 | % 40a
  R1*8 |
  R1*4 | bes1^\f | c2 ees | d2. c4 | bes2 b | % 41a
  c1 | d2 f | ees4 f ees d | c d ees f | g e f ees8 d | % 41b
  c2. d8 ees \vo | f1^\f | g2 bes |
  a2. g4 | f2 fis | g1 | a2 c | bes4 c bes a | g a bes c | d b c bes8 a | g2. c4 | % 42a
  a4 f bes2~ | 4 a8 g a2 | bes4 f fis g | aes2 a | bes4 a8 g fis2 | g4 a fis g | aes2 a | bes2 b |
  c1 | R1*3 | a1 | bes2 d | <a d>2. <e a d>4 | \ov <f a c>2 <a c f> | % 43a
  <g e'>4 <a f'> <g e'> <f d'> | <e c'> <f d'> <g e'> <a f'> | % 43b
  <bes g'>1~ | 2 2 | <a f'>4 <bes g'> <a f'> <g ees'> |
  <f d'>1 | 4 <g ees'> <f d'> <es c'> | <d bes'>1 |
  \vo bes'4 c bes a | g2 bes | a4 bes c d | ees2 e | % 44a
  f4 e8(d) cis2 | d4 ees d bes | ees2 e | f fis4 e8 fis |
  g2 r4 g, | c2 a | d4 ees d c | bes2 b | % 44b
  c4 d <<{\vo c a | d2} \new Voice {\vth f,2_~ | f}>> \vo bes2 |
  ees4 f ees d | c d c bes |
  a2. 4 | bes2 d | b2. 4 | c2 e | <a, cis>2. 4 | d2 f | b,2. 4 | c2 e | % 45a
  a,2. 4 | bes2 d | bes a | aes1 | <ees g>2 \ov r | R1*4 |
  \vo R1*9 | % 46a
  c'1^\f | des2 f | ees2. des4 | c2 2 | des1 | ees2 ges | f4 ges f ees |
  des4 ees des c | bes c bes aes | g2. 4 | aes2 c | a2. 4 | bes2 d | b2. 4 | c2 e | % 47a
  a,2. 4 | b2 d | g,2. 4 | a2 c~ | 4 des c bes \ov | <c, f a>2 r | s1*3 |
  s1*4 | \vo f1^\f | g2 bes | a2. g4 | f2 f | g1 | % 48a
  a2 c | bes4 c bes a | g a bes c | d1~ | 2 2 | 2. ees4 | f1 | f~ |
  f2 f | \ov <f, aes d f>2 <ees a ees'> | <g bes e g> <f bes f'> | % 49a
  \vo g'1~ | 4 fis g a | g fis g a | bes a g2 | f1~ |
  f2 bes~ | 4 c bes a | bes c des bes | \ov % 49b
  <a, c f a>2 <bes des f bes> | <a c f a> <g bes d e g> |
  <a c f a>1\fermata | \vo bes1 | c2 ees | d2. c4 | bes2 b |
  c1 | d2 f | ees4 f ees d | c d ees f | g e f ees8 d | % 50a
  c2. d8 c | \ov <d, f bes>2 r \vo | R1*2 | d'1 |
  ees2 g4 g | f2. ees4 | d ees d c | bes c d e | f2 a,, | bes d | % 50b
  f4 <aes aes'> <g g'> <f f'> \vo | <c' ees> d8 c g'2 | c, g, |
  \ov a2 c | <a c ees>4 <ges' ges'> <f f'> <ees ees'> | % 51a
  \vo <bes' d>4 c8 bes f'2 | bes, \ov f, | g bes |
  des4 <des' des'> <c c'> <bes bes'> | <a c a'>2 <bes des bes'> |
  <c ees a c>2 <bes d f bes>~ | \vo bes' a |
  \ov <bes, d f bes>4 <bes, bes'>8 8 4 4 | 4 4 4 4 | % 51b
  <g' bes ees g>1~ | q | <ges bes ees ges>~ | q | q |
  <f bes d f>2 <ees bes' c ees> | <f bes d f>1~ | q\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s1*4 |
  s1 | s2. f'4->~ | f ees8 d ees4 f | g2 ees4. 8 | s1 |
  <d f>4. 8 4. 8 | 4 4-! 4-! 4-! | <ees aes>4. 8 4. 8 | % 17a
  <ees aes>4 4-! 4-! 4-! | ees2 d4 ees | <f ees'>1 |
  <f bes>4. s8 s2 | s1*6 | % 17b
  s1*7 | % 18a
  s1*6 | des2 s |
  s1 | <g, c>2. 4 | s1*4 | s2 a4(b) | a2 g | % 19a
  s2. f'4->~ | 4 ees8 d ees4 f | g2 ees4. 8 | s1 | <d f>4. 8 4. 8 |
  q4 q-! q-! q-! | <ees aes>4. 8 4. 8 | 4 4-! 4-! 4-! | % 20a
  ees2 d4 ees | \vo <f ees'>1 \vt | s1 |
  s1*4 | % 20b
  s1*14 | % 21
  s1 | <ees c'>4 s2. | s1*12 |
  s1*7 | r4 bes'2 aes4 | s1*4 |
  s1*10 | % 24
  s2 <b d>4. 8 | 4 <g b d> q q | s2 <bes ees g>4. 8 | % 25a
  <bes ees ges>4-! 4-! 4-! <ees bes'>-! | s2 d4 ees | <c f c'>2. 4 | s1 |
  s1*4 | s2. f4->~ | 4 ees8 d ees4 f | % 25b
  g2 ees4. 8 | s1 | <d f>4.-> 8 4. 8 | 4-! 4-! 4-! 4-! | <ees aes>4.-> 8 4. 8 | 4 4-! 4-! 4-! | % 26a
  ees2 d4 ees | f1 | s1*3 |
  s1*5 | % 27a
  s1*4 | \vo c,1 \vt | s |
  r4 d32(bes d bes d bes d bes d8) r | % 28a
  r4^\< d32(c d c d c d c d8) r |
  r4 f32(d f d f d f d f8\!) r | \lh
  r4^\> c32(aes c aes c aes c aes c8) r |
  r4 bes32(g bes g bes g bes g bes8\!) r | % 28b
  r4 a32(g a g a g a g a8) r | \rh
  r4 d32(bes d bes d bes d bes d8) r |
  r4 d32^\<(c d c d c d c d8) r |
  r4 d32^(bes d bes d bes d bes d8\!) r | % 29a
  r4 d32(b d b d b d b d8) r |
  r4 cis32(bes cis bes cis bes cis bes cis8) r |
  r4 d32(bes d bes d bes d bes d8) r |
  r4 ees32(aes, ees' aes, ees' aes, ees' aes, ees'8) r | % 29b
  r4 f32(bes, d bes d bes d bes d8) r | \lh
  r4 a32(g a g a g a g a8) r | \rh
  r4 d32(\lh fis a fis a fis a fis a8) r | \rh
  s2.*5 | \vo b2. \vt | f2(fis4) | g4.(bes8 f4) | % 30a
  e4 s2 | % 30b
  r4 g32(ees g ees g ees g ees g8) r |
  r4 g32(f g f g f g f g8) r |
  r4 g32(ees g ees g ees g ees g8) r |
  r4 g32(e g e g e g e g8) r | % 31a
  r4 fis32(ees fis ees fis ees fis ees fis8) r |
  r4 g32(ees g ees g ees g ees g8) r |
  r4 aes32(f aes f aes f aes f aes8) r |
  r4 bes32(ees, g ees g ees g ees g8) r | % 31b
  r4 d32(c d c d c d c d8) r |
  r4 g32(b, d b d b d b d8 r |
  g,4) r r | s2. |
  s2.*3 | e'2 4 | 4.(g8 f4) | 2(e4) | c s2 | % 32a
  <f a>8-! r a32(f a f a f a f a8) r | % 32b
  r4 a32(g a g a g a g a8) r |
  r4 a32(f a f a f a f a8) r |
  r4 a32(fis a fis a fis a fis a8) r |
  r4 gis32(f gis f gis f gis f gis8) r | % 33a
  r4 a32(f a f a f a f a8) r |
  r4 bes32(g bes g bes g bes g bes8) r |
  s4 c32(f, a f a f a f a8) r |
  r4 e32(d e d e d e d e8) r | % 33b
  r4 a32(cis, e cis e cis e cis e8) r | s2.*5 |
  fis2.~ | 4.(a8 g4)~ | 2(c4) | b4 s2 | % 34a
  <bes, d>8 r \lh q32(g q g q g q g q8) r |
  s4 <c d>32(f, q f q f q f q8) r |
  s4 <bes d>32(g q g q g q g q8) r \rh | % 34b
  s4 <ces d>32(aes q aes q aes q aes q8) r |
  s4 <ces ees>32(aes q aes q aes q aes q8) r |
  s4 <des ees>32(g, q g q g q g q8) r |
  s4 <ces ees>32(aes q aes q aes q aes q8) r | % 35a
  s4 <c ees>32(a q a q a q a q8) r |
  s4 <c e>32(a q a q a q a q8) r |
  s4 <d e>32(gis,  q gis q gis q gis q8) r | % 35b
  s4 <c e>32(a q a q a q a q8) r |
  s4 <cis e>32(bes q bes q bes q bes q8) r | s2. |
  s2.*3 | s4 g'32(b, d b d b d b d8) r | % 36a
  r4 aes'32(c, aes' c, aes' c, aes' c, aes'8) r |
  r4 g32(bes, g' bes, g' bes, g' bes, g'8) r |
  r4 g32(a, g' a, g' a, g' a, g'8) r |
  r4 g32(b, g' b, g' b, g' b, g'8) r | s2.*2 |
  s1*5 | % 37a
  s2. f'4->~ | f ees8 d ees4 f | g2 ees4. 8 | s1 |
  <d f>4. 8 4. 8 | 4 4-! 4-! 4-! | <ees aes>4. 8 4. 8 | % 38a
  q4 q-! q-! q-! | ees2 d4 ees | f1 |
  s1*4 % 38b
  s1*5 | % 39a
  s1*3 | bes,,1 | s |
  s1*18 | % 40
  s1*14 | d4 bes c d | ees2 e4 d8 e |
  f4 e8 d cis2 | d4 ees d bes | ees2 e | f fis4 e8 fis | g1~ | 2 2 | % 42a
  fis4 g8 f e4 f~ | f ees8 d ees2~ |
  ees2 d4 ees8 d | ees2. f8 ees | <bes d>2 r4 g' | r2 <c, f> | % 42b
  bes4 4 <a c> d | <g, d'>2 r4 d' | ees2. f8 g | <f a>2 <d g> |
  <c g'>2. \lh g4 | a2 c \rh | d1 | e2 g | f4 g f e | % 43a
  d e f g | e2. s4 | s1 |
  s1*8 | % 43b
  R1*2 | f1 | g2 bes | a2. g4 | f2 fis | g1 | a2 c | % 44a
  bes4 c bes d, | c d e fis | g1~ | 4 f e f | e2 ees | % 44b
  d4 ees f fis | g1~ | 4 f <<{\vf g2} \new Voice {\vt ees4 d}>> | \vt
  c2 cis | d f | d dis | e g | e2. 4 | a gis a ais | b2. a4 | g f g gis | % 45a
  a2. g4 | f e f fis | g2 fis | f4 d ees f | s1*5 |
  R1*3 | ees2 g | f4 g f ees | d ees d c | \vo ees1^\f | f2 aes | g2. f4 | % 46a
  \vt ees2 e | f1 | g2 bes | aes4 bes aes ges | f ges aes bes | ces des ces bes | a2 c |
  f,1~ | 4 ees des c | bes2 b | c ees | c cis | d f | g2. 4 | g fis g gis | % 47a
  a2. g4 | f e f fis | gis2 e | 1~ | 1 | s1*4 |
  s1*4 | R1*2 | c1 | d2 f | ees2. d4 | % 48a
  c2 c | d1 | ees2 g | f4 g f ees | d ees f g | aes1~ | 2. g4 | f2. g4 |
  aes1 | s1*2 | bes4 c bes a | g a bes c | des1~ | 2. c4 | bes4 c bes a | % 49a
  bes4 c des ees | f1 | e | s1*3 | R1 | ees, | f2 aes | g2. f4 |
  ees1 | f | g2 bes | c1 | % 50a
  <<{\vf b4 bes a bes~ | 4 a8 g a2 | s1 | ees1 | \vo f2 aes |} \new Voice
    {\vt s1 | g2 s | s1 | r2 c, | d f4 ees |}>>
  \vt <d g>2. <d f>4 |
  ees2 e | f2 4 4 | a2 2 | g bes | <a c> s | s1*2 | g2 bes4 aes | g2 s | % 50b
  s1*2 | f2 a4 g | f2 s | s1*3 | % 51a
  <<{\vt s2 \once\hideNotes bes2~ | bes a |} \new Voice {\vf s1 | <c f> |}>>
  s1*10 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s1\ff s1 | s2.\fz s4-\markup Strelchinstr. | s1*3 |
  s1*7 | s4 s2.\decresc | s1\p | s1*4 |
  s1*2 | s2. s4\omit\f-\markup{\dynamic f Streichlustr.} | s1*4 | s1\ff | s1*4 | s1\omit\pp-\markup{\dynamic pp Streichlustr.} | s1 | % 18
  s1*4 | s1\pp | s1*3 | s2.\cresc s4\f | s1*4 |
  s1*3 | s1\f | s1*2 | s2 s\cresc | s1 | s2 s\ff | s1\> |
  s1\! | s1*2 | s1\ff | s1\> | s4 s2.\p | s1*2 | s1\p | s1*5 | % 21
  s4 s2.\p | s1*6 | s4 s2.\p | s1*6 |
  s1*12 |
  s1*10 | % 24
  s1\f | s1 | s4 s2.\cresc | s1 | s\ff | s1*4 | s1\ff | s1*3 |
  s1*9 | s2 s\cresc | s1 |
  s2 s\ff | s1*4 | s1\ff | s1\> | s1\! | s4 s2.\p | s1*2 | % 27
  s2.\ff | s2.*3 | s4 s2\decresc | s2. | s\ff | s | % 28
  s2.*6 | s2.\pp | s |
  s2.*6 | s2\< s4\! | s2\> s4\! | s4 s2\f | s2.\ff | s | s4 s4.\< s8\! |
  s4\ffz s2\> | s2 s4\! | s4 s2\decresc | s2.\p | s | s\pp | s2.*3 | % 31
  s2.*4 | s2\< s4\! | s2\> s4\! | s4 s2\f | s2.\ff | s2. | s4 s2\< | s4\ffz s2\> |
  s2 s4\! | s4 s2\decresc | s2.\p | s | s\pp | s2.*6 |
  s2. | s2\< s4\! | s2\> s4\! | s4 s2\f | s2.\ff | s4 s2\< | s2. | s4\fz s2\> | s2.\ff | s | % 34
  s4 s2\< | s4\fz s2\> | s2.\! | s2.*3 | s2.\fff |
  s2. | s\fz | s | s4\fz s2\> | s4\! s2\dim | s2.\p | s | s4\pp s2\< | s2.\> | s\! |
  s1\f | s1*2 | s1\f | s1 | s\f | s1*3 | % 37
  s1*7 | s2 s\cresc | s1 | s2 s\ff |
  s4 s2.\> | s4 s2.\! | s1*2 | s1\ff | s4 s2.\> | s4 s2.\! | s4 s2.\p | s1*2 |
  s1\f | s1*9 | s1\f | s1*7 | % 40
  s1*16 |
  s1*16 |
  s1*16 | % 43
  s1*16 |
  s1*17 |
  s1*16 | % 46
  s1*17 |
  s1*17 |
  s1*18 | % 49
  s1*16 | s1\fz | s1*2 |
  s1 | s\fz | s1*3 | s1\fz | s1*5 | s1\ff | s | s\fz | s | s\fz | s | s\< | \after 2... \! s1\> |
}

pianoLHone = \relative {
  \global
  R1*3 | r4 r8 <g,, g'>8 2->~ |
  q4 <c c'>-! <d d'>-! <ees ees'>-! | <ges ges'>2 <f f'>4 r | % 16b
  r2 <aes aes'>2-> | <g g'> r4 q->~ | q <f f'>8 <e e'> <f f'>4 <g g'> |
  <aes aes'>4. 8 2~ | 4 4-! 4-! 4-! | 4. 8 2~ | 4 4-! 4-! <ges ges'>-! | % 17a
  \vo f'4 8 8 4 4 | 1 |
  <bes,, bes'>4. bes''8 2->~ | 4 4 <fis c'> <fis d'> | % 17b
  <g d'>2 2 | 2 2 | 2 2 | <aes bes d> q | q q |
  <g bes ees>2 \ov r | R1 | r2 r4 <f, f'>4~ |% 18a
  4 <ees ees'>-! <d d'>-! <c c'>-! | <bes bes'>2 r | R1*2 |
  r4 r8 <g g'>8 2->~ | 4 <c c'>-! <d d'>-! <ees ees'>-! | % 18b
  <ges ges'>2-> <f f'> | R1*2 | <des des'>2 2 | 2 2 |
  <c c'>2(<bes bes'>) | <c c'>2. 4 | <f f'>2 r | R1 | d'2 2 | % 19a
  4. 8 2 | g, d' | c2. 4 |
  f,4 <f f'>-! <f, f'>-! <g g'>-! | <aes aes'> r <aes' aes'>4.-> 8 | % 19b
  <g g'>2 r4 q->~ | 4 <f f'>8 <e e'> <f f'>4 <g g'> |
  <aes aes'>4. 8 \vo aes'4. 8 |
  aes4 4-! 4-! 4-! | 4. 8 4. 8 | 4 4-! 4-! ges-! | f4 8 8 4 4 \ov | % 20a
  <f, f'>2. 4 | <bes d f>2 <bes d bes'>4.-> 8 |
  q2 <g d' g>4.-> 8 | 2 <ees ges ees'>4.-> 8 | % 20b
  2 <ces g' ces>4. 8 | <ces ges' ces>1~ |
  q4 r r2 | R1*2 | r2 <ces' ees ges ces>4. 8 | 1~ | % 21a
  q4 \vo \crossStaff {ges'2 4 | aes2 g |}
  \ov <bes, f' bes>1 | % 21b
  <ees,, ees'>4-.\arpeggio <ees'' g>-.\arpeggio <bes ees>-.\arpeggio <g bes>-.\arpeggio |
  <ees, ees'>-.\arpeggio <g' bes>-.\arpeggio <bes f'>-.\arpeggio <g ees'>-.\arpeggio |
  <aes, aes'>4-. <ees'' aes>-.\arpeggio <ees, ees'>-. <ees' g>-.\arpeggio |
  <bes, bes'>4-. <bes' d aes'>-.\arpeggio <bes d f>-.\arpeggio <bes d aes'>-.\arpeggio |
  <b, b'>4-. <b' d>-. <c, c'>-. <c' ees>-. |
  <bes, bes'>4-. <d' f>-.\arpeggio <bes d>-.\arpeggio <d f>-.\arpeggio |
  <ees, ees'>4-. <g g'>-. <ees ees'>-. <d d'>-. | % 22a
  <c c'>4-. <g'' c ees>-.\arpeggio <g c>-.\arpeggio <e g>-.\arpeggio |
  <c, c'>4-.\arpeggio <ees' g c>-.\arpeggio <ees g>-.\arpeggio <c ees>-.\arpeggio |
  f,4-. <c' f>-.\arpeggio <c, c'>-. <ees' g c>-.\arpeggio |
  g,4-. <g' b>-.\arpeggio <d g>-.\arpeggio <g b>-.\arpeggio |
  g,4-. <d' g b>-.\arpeggio c-. <ees g c>-.\arpeggio |
  bes4-. <bes' d>-.\arpeggio <f bes>-.\arpeggio <bes d>-.\arpeggio |
  <ees,, ees'>4 q-. <d d'>-. <c c'>-. | % 22b
  <bes bes'>4-. <bes'' d>-.\arpeggio <f bes>-.\arpeggio <d f>-.\arpeggio |
  <bes, bes'>4-. <f'' bes>-.\arpeggio <d f>-.\arpeggio <bes d>-.\arpeggio |
  <ees, ees'>4-. <bes'' ees>-.\arpeggio bes,-. <bes' d>-.\arpeggio |
  <f, f'>4-. <f' a ees'>-.\arpeggio <f a c>-.\arpeggio <f a ees'>-.\arpeggio |
  <fis, fis'>4-. <d' a'> <g, g'> <d' bes'> |
  <f, f'>4 <a' c>-.\arpeggio <f a>-.\arpeggio <a c>-.\arpeggio |
  <bes, bes'>4-. <d d'>-. <bes bes'>-. <a a'>-. | % 23a
  \grace f8 d''2(c4 bes) | \grace f, bes'2(a4 g) |
  \vo g4(ees' d2)~ | d4(c8 bes a2) | r4 d2(c8 bes) | ees1->( |
  d4) \ov <bes, bes'>-. <aes aes'>-. <f f'>-. | % 23b
  <ees bes' g'>2.\arpeggio <ees' g bes>4 | 2 2 |
  <aes, c ees aes>2 <ees' g aes> | \vo bes'2. aes4 |
  <b, d g>2 \vo ees4 d8 ees \ov | <bes d f bes>1-> | % 24a
  <ees g bes>4 \vo g2 <f g>4 \ov | <c ees g>2. 4 | 2 2 |
  <f, c' aes'>2\arpeggio <c' ees g> | <g d' a'>1\arpeggio | % 24b
  \vo g''4(f ees d8 ees) | \ov <bes d f aes>1-> |
  <ees g>4 <ees,, ees'> <f f'> <fis fis'> |
  g2 <g' b d>4. 8 | 1 | <ges, bes ees>2 <ges' bes ees>4. 8 | % 25a
  2. <ges, ges'>4 | \vo f'4 8 8 4 4 \ov | <f, f'>2. 4 | <bes, bes'>2 r |
  R1*2 | r4 r8 <g' b d f>8 2->~ | 4 <c, c'>-! <d d'>-! <ees ees'>-! | % 25b
  <ges ges'>2-> <f f'>4 r | r2 <aes aes'>4.-> 8 |
  <g g'>2 r4 q->~ | 4 <f f'>8 <e e'> <f f'>4 <g g'> | % 26a
  \vo aes'4. 8 4. 8 | 4 4-! 4-! 4-! | 4. 8 4. 8 |
  aes4 \ov <aes, aes'>-! q-! <ges ges'>-! |
  \vo f'4 8 8 4 4 | \ov \repeat unfold 2 \repeat tremolo 8 {f,,32 f'} | % 26b
  <bes, bes'>4 r8 <bes' d f bes>8 4.-> 8 | 4 r8 <g bes d g>8 4.-> 8 |
  q4 r8 <ees ges bes ees>8 4.-> 8 |
  <ees ges bes ees>4 r8 <ces ees ges ces>8 4. 8 | 1~ | 4 r r2 | R1*2 | % 27a
  r4 r8 <ces' ees ges ces>8 2~ | 1~ | 4 r r2 | r4 \vo f2.~ | 1 | % 27b
  \ov <bes,, bes' f'> \section \time 3/4 |
  \crossStaff {\vo g''2. | fis | g | ees | d | d | g | fis |} % 28
  \crossStaff {g2. | aes | g~ | g | g4 s2 | g4} f d | \crossStaff {ees2._~ | 4(d2)~ |}
  d4 r r | R2.*4 | R2. | d'2(dis4) | e4.(f8 d4) | % 30a
  c4 c,8-! <aes aes'>-! <g g'>-! <g, g'>-! | \ov % 30b
  <c c'>8 r c32(c' c, c' c, c' c, c' c,8) r |
  r4 d32(d' d, d' d, d' d, d' d,8) r |
  r4 c32(c' c, c' c, c' c, c' c,8) r |
  r4 bes32(bes' bes, bes' bes, bes' bes, bes' bes,8) r | % 31a
  r4 aes32(aes' aes, aes' aes, aes' aes, aes' aes,8) r |
  r4 g32(g' g, g' g, g' g, g' g,8) r |
  r4 f'32(d' f, d' f, d' f, d' f,8) r |
  r4 g32(ees' g, ees' g, ees' g, ees' g,8) r | % 31b
  r4 f,32(f' f, f' f, f' f, f' f,8) r |
  r4 g32(g' g, g' g, g' g, g' g,8) r | R2.*2 |
  R2.*3 | \vo R2. | g''2(gis4) a4.(bes8 g4) | % 32a
  f4 \ov <f, f'>8-! <bes bes'>-! <a a'>-! <a, a'>-! |
  <d d'>8 r d32(d' d, d' d, d' d, d' d,8) r | % 32b
  r4 e32(e' e, e' e, e' e, e' e,8) r |
  r4 d32(d' d, d' d, d' d, d' d,8) r |
  r4 c32(c' c, c' c, c' c, c' c,8) r |
  r4 bes32(bes' bes, bes' bes, bes' bes, bes' bes,8) r | % 33a
  r4 a32(a'  a, a' a, a' a, a' a,8) r |
  r4 g'32(e' g, e' g, e' g, e' g,8) r |
  r4 a32(f' a, f' a, f' a, f' a,8) r |
  r4 g,32(g' g, g' g, g' g, g' g,8) r | % 33b
  r4 a32(a' a, a' a, a' a, a' a,8) r |
  a''2.~ | a~ | a~ | a( | bes2)(a4) |
  \vo R2. | a2(ais4) | b4.(c8 a4) | g4 \ov g,8-! ees'-! d-! <d, d'>-! | % 34a
  \vo g'4-> s2 | fis4-> s2 |
  g4-> s2 | aes4-> s2 | aes4-> s2 | g4-> s2 | % 34b
  aes4-> s2 | a4-> s2 | a4-> s2 | % 35a
  gis4 s2 | a4 s2 | bes4 s2 | \ov <d, g bes d>4 \repeat tremolo 8 {d,,32( d'} |
  d,8)  <d'' d'>8-! [ <c c'>-! <bes d bes'>-! <a d a'>-! <g d' g>-! ] | % 36a
  <d' g c>4\arpeggio \repeat tremolo 8 {d,,32( d'} |
  d,8) <a'' a'>8-! [ <bes bes'>-! <c c'>-! <d d'>-! <d, d'>-! ] |
  <g, g'>8 r \vo \crossStaff g''2 | ees2.-> |
  d2. | d | <g, b d> | \ov <g, g'>2.\fermata | % 36b
  \after 4. \> \repeat tremolo 12 {f32\< f'\fermata} \section \time 4/4 |
  <bes, bes'>4\! r r2 | R1*2 | r4 r8 <g' b d g>8 2->~ | % 37a
  q4 <c, c'>-! <d d'>-! <ees ees'>-! |
  <ges ges'>2 <f f'>4 r | r2 <aes aes'>4.-> 8 | % 37b
  <g g'>2 r4 q~ | q <f f'>8 <e e'> <f f'>4 <g g'> |
  \vo aes'4. 8 4. 8 | 4 4-! 4-! 4-! | 4. 8 4. 8 | % 38a
  aes4 \ov <aes, aes'>-! q-! q-! | \vo f'4 8 8 4 4 |
  \repeat unfold 2 \repeat tremolo 8 {f,,32 f'} |
  <bes, bes'>4 r8 <bes' d f bes>8 4.-> 8 | 4 r8 <g bes d g>8 4.-> 8 | % 38b
  q4 r8 <ees ges bes ees>8 4.-> 8 | 4 r8 <ces ees ges ces>8 4. 8 |
  <ces ees ges ces>1~ | 4 r r2 | R1*2 | r4 r8 <ces' ees ges ces>8 2~ | % 39a
  q1~ | 4 r r2 | r4 \vo f2. | g2. \rh c4 \lh | a1\fermata \section \time 2/2 |
  \ov <bes,, bes'>1 | <c c'>2 <ees ees'> | <d d'>2. <c c'>4 | % 40a
  <bes bes'>2 <b b'> | <c c'>1 | <d d'>2 < f f'> |
  <ees ees'>4 <f f'> <ees ees'> <d d'> | <c c'> <d d'> <ees ees'> <f f'> |
  <g g'>4 <e e'> <f f'> <ees ees'>8 <d d'> | <c c'>2. <d d'>8 <c c'> |
  \vo f'1 | g2 bes | a2. g4 | d2 fis | g1 | a2 c | bes4 c bes a | g a bes c | % 40b
  d4 b c bes8 a | g2. c4 | a f bes2~ | 4 a8 g a2 | bes4 f fis g | aes2 a | bes4 a8 g fis2 | g4 aes g ees | % 41a
  aes2 a | bes2 b4 a8 b | c1~ | 2 2 | b4 c8 bes a4 bes~ | 4 a8 g a2 | bes r4 d, | des2 c |
  r4 f e a | d,2 r4 d | des2 c | ees2 d | g ees'2~ | 2 4 f8 ees | % 42a
  d2 c4 d | bes2 c~ |
  c4 d8 c bes4 c8 d | c2. d8 c | \ov <bes,, bes'>1 | <c c'>2 <ees ees'> | % 42b
  <d d'>2. <c c'>4 | <bes bes'>2 <b b'> | <c c'>1 | <d d'>2 < f f'> |
  <ees ees'>4 <f f'> <ees ees'> \vt <d d'> | % 43a
  <c c'>4 <d d'> <ees ees'> <f f'> | \vo bes'4 c bes a | g a bes c | d2 r |
  \ov R1 | <a, a'>4 <bes bes'> <a a'> <g g'> | <f f'> <g g'> <a a'> <bes bes'> |
  <c c'>2. 4 | 2 c' | <bes d>4 <c ees> <bes d> <a c> | % 43b
  <g bes>4 <a c> <bes d> <c ees> | <d f>1 | 4 <ees g> <d f> <c ees> |
  <bes d>1 | 4 <c ees> <bes d> <a c> |
  \vo bes4 ees d c | bes c d e | f r r d | des2 c | r4 f, e a | % 44a
  d,2 r4 d' | des2 c | ees d |
  \ov <g,,, g'>1 | <a a'>2 <c c'> | <bes bes'>2. <a a'>4 | % 44b
  <g g'>2 <gis gis'> | <a a'>1 | <bes bes'>2 <d d'> |
  <c c'>4 d' c bes | a bes c d |
  \vo a'4 bes a g | f g a bes | b c b a | g a b c | a bes a g | f'2. e4 | d cis d dis | e2. d4 | % 45a
  c4 b c cis | d2. a4 | bes a bes ces | 2 bes | \crossStaff bes2 s | R1*2 | c1 | d2 f |
  ees2. d4 | c2 c | d1 | \ov c4 b c bes | aes2 a | bes4 c bes aes \rh | bes2 b4 c | des2 d | ees4 d8 c b2 | \lh % 46a
  c4 des c bes | aes bes ces des8 ces | bes4 c des g, | aes1~ | 2 ges | ces2 ees4 des | c2 f, |
  R1 | r2 f | g4 aes g f | ees f g aes | a bes a g | f g a bes | d2. 4 | e2. d4 | % 47a
  c4 b c cis | d2. c4 | b1 | c2 r | bes,2. 4 | f'1 | g2 bes | a2. g4 | f2 2 |
  g1 | a2 c | bes4 c bes a | g a bes c | a2 r | R1 | % 48a
  \ov <f, f'>4 <g g'> <f f'> <ees ees'> |
  <d d'> <ees ees'> <d d'> <bes bes'> |
  <ees ees'> <c c'> <d d'> <ees ees'> |
  <f f'>4 <g g'> <a a'> <f f'> | % 48b
  <bes bes'>4 <a a'> <g g'> <f f'> |
  <ees ees'>4 <c c'> <f f'> ees' \vo |
  f2 g4 a | bes2 r | 1~ | 2. b4 | c des c bes |
  aes4 bes c des | \ov <b, b'>2 <c c'> | <cis cis'> <d d'> | % 49a
  \vo des'1~ | 2. c4 | bes c bes a | g a bes c | des1~ |
  des1~ | 4 a bes c | des c bes2 | \ov <f, f'> q | q q | % 49b
  \repeat tremolo 8 {f,32 f'} \repeat tremolo 8 {f,32 f'\fermata} |
  R1*2 \vo | R1 | g'1 |
  aes2 c | bes2. aes4 | <ees g>1 | aes2 c | d4 c2 bes4 | s2 f'4 ees | % 50a
  \ov <bes,, bes'>1^\f | <c c'>2 <ees ees'> | <d d'>2. <c c'>4 |
  <bes bes'>2 <b b'> |
  \vo c'2. bes'4 | a1~ | 2 d4 d | d c bes2 | f4 g f ees | d ees f g | \ov % 50b
  <f aes b d>1 | \vo g2. f4 | ees f ees d |
  c4 d ees f | ges1 | f2. ees4 | d ees d c | bes c d f | e2 2~ | 1 | % 51a
  \ov <f, a c f>2 <f bes d f> | \vo <f f'>1 |
  \ov <bes d>4 bes8 8 4 4 | 4 4 4 4 | <ees, bes' ees>1~ | q | % 51b
  <ges bes ees ges>1~ | q | \vo bes4. 8 4 4 \ov |
  <bes, bes'>2 q |
  \repeat unfold 2 \repeat tremolo 8 {bes32 bes'} |
  \repeat tremolo 8 {bes,32 bes'} \repeat tremolo 8 {bes,32 bes'\fermata} |
}

pianoLHtwo = \relative {
  \global \vt
  s1*4 |
  s1*5 |
  s1*4 | f,2 2 | 1 | % 17a
  s4. <bes d f>8 2~ | 4 4 <aes c> q | <g b>2 q | q q | q q | <g bes> q | q q |
  <ees bes'>2 r | s1*6 | % 18a
  s1*7 |
  s1*12 | s2 aes~ | % 19
  aes4 4 4 4 | 4. 8 2~ | 4 4 4 ges | f2 f | s1*6 |
  s1*5 | s4 ces'2 4 | bes1 | s1*7 |
  s1*14 | % 22
  s1*3 | c4 r g' r | d r r2 | d4 r g r | f r r2 | bes4 s2. | s1*3 | <bes, d f>1 |
  s2 <c g'> | s1 | s4 g' ees d | s1*4 | <g b>2 c | s1*2 |
  s1*4 | f,,2 f | s1*8 | % 25
  s1*2 | aes4. 8 2~ | 4 4 4 4 | 4. 8 2~ | 4 s2. | f2 f | s1*4 |
  s1*8 | s4 <a, a'>4(<bes bes'>2) | <f f'>2. 4 | s1 |
  r4 g'32(d' g, d' g, d' g, d' g,8) r | % 28a
  r4 a32(d a d a d a d a8) r |
  r4 b,32(b' b, b' b, b' b, b' b,8) r |
  r4 c32(c' c, c' c, c' c, c' c,8) r |
  r4 d,32(d' d, d' d, d' d, d' d,8) r | % 28b
  r4 d32(d' d, d' d, d' d, d' d,8) r |
  r4 g32(g' g, g' g, g' g, g' g,8) r |
  r4 a32(a' a, a'a, a' a, a' a,8) r |
  r4 g32(g' g, g' g, g' g, g' g,8) r | % 29a
  r4 f32(f' f, f' f, f' f, f' f,8) r |
  r4 ees32(ees' ees, ees' ees, ees' ees, ees' ees,8) r |
  r4 d32(d' d, d' d, d' d, d' d,8) r |
  r4 c32(c' c, c' c, c' c, c' c,8) r | % 29b
  r4 d32(d' d, d' d, d' d, d' d,8) r |
  r4 c32(c' c, c' c, c' c, c' c,8) r |
  r4 d32(d' d, d' d, d' d, d' d,8) r |
  R2.*5 | g''2.~ | 4 gis a | g2. | c,4 s2 | s2.*3 | % 30
  s2.*9 |
  s2.*3 | c2.~ | 4(cis d) | c2. | f,4 s2 | s2.*4 |
  s2.*11 | % 33
  d'2.~ | 4(dis e) | d2. | g,4 s2 | % 34a
  <g bes d>8 r g,32(g' g, g' g, g' g, g' g,8) r |
  r4 a32(a' a, a' a, a' a, a' a,8) r |
  r4 g32(g' g, g' g, g' g, g' g,8) r | % 34b
  r4 \vo f32_(f' f, f' f, f' f, f' f,8) \vt r |
  r4 \vo aes32_(aes' aes, aes' aes, aes' aes, aes' aes,8) \vt r |
  r4 \vo bes32(bes' bes, bes' bes, bes' bes, bes' bes,8) \vt r |
  r4 \vo aes32(aes' aes, aes' aes, aes' aes, aes' aes,8) \vt r | % 35a
  r4 \vo ges32(ges' ges, ges' ges, ges' ges, ges' ges,8) \vt r |
  r4 \vo a32(a' a, a' a, a' a, a' a,8) \vt r |
  r4 \vo b32(b' b, b' b, b' b, b' b,8) \vt r | % 35b
  r4 \vo a32(a' a, a' a, a' a, a' a,8) \vt r |
  r4 \vo g32(g' g, g' g, g' g, g' g,8) \vt r | s2. |
  s2.*3 | s4 g'32(f' g, f' g, f' g, f' g,8) r | % 36a
  ees'4 c,32(c' c, c' c, c' c, c' c,8) r |
  \repeat unfold 2 {d'4 d,,32(d' d, d' d, d' d, d' d,8) r |} % 36b
  <g' b d>4 g,32(g' g, g' g, g' g, g' g,8) r | s2.*2 |
  s1*9 | % 37
  aes'4. 8 2~ | 4 4-! 4-! 4-! | 4. 8 2~ | 4 s2. | f2 f | s1 | % 38a
  s1*4 |
  s1*7 | r4 <a, a'>4(<bes bes'> <a a'>) | <g g'>1 | <f f'>\fermata | % 39
  s1*10 | % 40a
  <bes bes'>4 4 <c c'> <d d'> | <ees ees'>2 <e e'>4 <d d'>8 <e e'> | % 40b
  <f f'>4 <e e'>8 <d d'> <cis cis'>2 | <d d'>4 <ees ees'> <d d'> <bes bes'> |
  <ees ees'>2 <e e'> | <f f'> <fis fis'>4 <e e'>8 <fis fis'> |
  <g g'>1~ | 2 2 |
  <fis fis'>4 <g g'>8 <f f'> <e e'>4 <f f'>~ | % 41a
  q4 <ees ees'> 8 <d d'> <ees ees'>2~ |
  q2 <d d'>4 <ees ees'>8 <d d'> | <c c'>2. <d d'>8 <c c'> |
  <bes bes'>2 r4 g' | <ges ges'>2 <f f'> |
  r4 <bes, bes'> <a a'> <d d'> | <g, g'>2 r4 q |
  <ges ges'>2 <f f'> | <aes aes'> <g g'> | <c c'> <aes' aes'>~ | % 41b
  q2 <aes, aes'>4 <bes bes'>8 <aes aes'> | <g g'>4 <g' g'> <f f'> <g g'> |
  <ees ees'>2 <f f'> | <bes, bes'>2 r | R1 |
  R1*8 | % 42a
  R1*2 | s1*6 |
  s1*2 | <g' g'>2 r | R1*2 | s1*3 | % 43a
  s1*8 |
  g1~ | 2 2 | f r | R1*5 | % 44a
  s1*8 |
  ees'1 | d | f | e | s1 | f2. 4 | g2 b | e,2. 4 | % 45a
  f2 a | d,1~ | d~ | 4 f ees d | % 45b
  <<{\vf <ees, ees'>2 r} \new Voice {\vth ees'1_\f}>> \vt |
  f2 aes | g2. f4 | ees2 e | f1 |
  g2 bes | aes4 bes aes g | f g aes bes | s1*3 | \ov g2 r4 c, | ces2 bes | r4 ees d g | % 46a
  \vt c,2 aes | des d | ees e | f2. ees4 | des2 fes | ees2. 4 | f2 a, |
  bes4 c des f, | g aes bes c | des1 | c | ees | d | g4 aes g f | e2. 4 | % 47a
  f2 a | d,2. 4 | e f e d | c b a g | ges1 | f2 r | R1 | <c c'> | <d d'>2 <f f'> |
  <ees ees'>2. <d d'>4 | <c c'>2 2 | <d d'>1 | <ees ees'>2 <g g'> | % 48a
  <f f'>4 <g g'> <f f'> <d d'> | <ees ees'> <f f'> <g g'> <ees ees'> | s1*3 |
  s1*3 | d'4 ees d c | bes c d ees | f g f ees | d ees f g | aes bes aes g | % 48b
  f4 g a bes | s1*2 | ees,1~ | 1 | e~ | e | f~ | % 49a
  f1 | ges1~ | 1 | s1*5 | d1 | ees2 g |
  c,2 r | R1 | s1 | aes2 aes' | g4 c, f g | ees2 f | s1*4 | % 50a
  c1 | d2 f | fis2. 4 | g2. 4 | f,1~ | f | s1 | f~ | f~ |
  f1 | f | f~ | f~ | f | % 51a
  <<{\vf f2 2~ | 1 |} \new Voice {\vt <g bes d>1 | <a c>2 <bes des> |}>>
  \vt s1 | ees2. f8 ees |
  s1*6 | bes,1 | s1*3 | % 51b
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
%   \articulate
    <<
      <<
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
          \new Staff = pianorh \with {
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
%   \articulate
    <<
      <<
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
          \new Staff = pianorh \with {
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
%   \articulate
    <<
      <<
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
          \new Staff = pianorh \with {
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
%   \articulate
    <<
      <<
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
          \new Staff = pianorh \with {
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}
