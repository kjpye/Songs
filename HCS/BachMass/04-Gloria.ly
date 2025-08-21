\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 4. Gloria in Excelsis Deo (chorus)"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. S. Bach"
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
  \key b \minor
  \time 3/8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Vivace 4=100
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "26a" } s4.*6
  \textMark \markup { \box "26b" } s4.*6
  \textMark \markup { \box "26c" } s4.*6
  \textMark \markup { \box "26d" } s4.*6 \break
  \mark \markup\circle\bold A
  \textMark \markup { \box "26e" } s4.*7
  \textMark \markup { \box "27a" } s4.*7
  \textMark \markup { \box "27b" } s4.*2
  \mark \markup\circle\bold B      s4.*5
  \textMark \markup { \box "27c" } s4.*6
  \textMark \markup { \box "28a" } s4.*7
  \textMark \markup { \box "28b" } s4.*7
  \textMark \markup { \box "28c" } s4.*3
  \mark \markup\circle\bold C      s4.*4
  \textMark \markup { \box "29a" } s4.*7
  \textMark \markup { \box "29b" } s4.*5
  \mark \markup\circle\bold D      s4.*2
  \textMark \markup { \box "29c" } s4.*7
  \textMark \markup { \box "30a" } s4.*7
  \textMark \markup { \box "30b" } s1*3
  \mark \markup\circle\bold E      s1*2
  \textMark \markup { \box "30c" } s1*5
  \textMark \markup { \box "31a" } s1*4
  \textMark \markup { \box "31b" } s1*4
  \textMark \markup { \box "31c" } s1
  \mark \markup\circle\bold F      s1*3 
  \textMark \markup { \box "31d" } s1*4
  \textMark \markup { \box "32a" } s1*3
  \textMark \markup { \box "32b" } s1
  \mark \markup\circle\bold G      s1*2
  \textMark \markup { \box "32c" } s1*3
  \textMark \markup { \box "33a" } s1*3
  \mark \markup\circle\bold H
  \textMark \markup { \box "33b" } s1*4
  \textMark \markup { \box "33c" } s1*4
  \textMark \markup { \box "34a" } s1*3
  \mark \markup\circle\bold I
  \textMark \markup { \box "34b" } s1*4
  \textMark \markup { \box "34c" } s1*3
  \textMark \markup { \box "35a" } s1*3
  \textMark \markup { \box "35b" } s1*2
  \mark \markup\circle\bold K      s1
  \textMark \markup { \box "35c" } s1*4
  \textMark \markup { \box "36a" } s1*4
  \textMark \markup { \box "36b" } s1*3
  \textMark \markup { \box "36c" } s1*3
}

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
}

sopranoI = \relative {
  \global
  R4.*24 |
  R4.*4 | fis''8 d cis | d e16(d cis d) | e8 cis e |
  d8 e16(d) cis(b) | cis4 8 | R4.*5 | % 27a
  R4.*2 | a8(e a | b cis16 b a b | cis8) e16(d) e(cis) | d8(e) fis | e4.~ |
  e8(fis16 e d cis | b8 e d | cis) d16(cis) b(a) | e'8 b b | e4.~( | e~ |
  e16 g fis e d cis | d8) b r | R4. | r8 b b | e4.~ | 16(a, cis e a8~ | a) gis16(fis gis8) | % 28a
  cis,8(fis4~ | 8) e16(d) e8 | a,16(fis a cis d8~ | 8) cis16(b) cis8 | b cis d | cis16(b) 8.(a16) | 4 r8 |
  R4.*7 |
  R4.*2 | d8(a d | e fis16 e d e | fis8 d fis | g a16 g) fis(e) | d8 r r | % 29a
  R4. | fis8 d cis | d8.(e16) fis(g) | a8 r r | R4. | r8 cis, cis | fis4.~ |
  fis4.~ | 16(a g fis e dis | e8) b r | R4. | r8 cis8 8 | 8(d) a | r fis' d |
  b'8(a16 g) fis(e) | d4. | cis4 r8 | b16(g b d g8~ | 8) fis16(e) fis8 | e fis g | fis16(e) 8.(d16) \section \time 4/4 | % 30a
  d4 r8 a4(b8) b(c) | c(b) c(d) b4 r | R1 | r4 r8 a4(b8) b(c) | c(b) c(d) b4(e~ |
  e4) dis e2~ | 8 dis8 4 r2 | r4 r8 b4(cis8) 8(d) | d(cis) d(e) cis(dis) dis(e) | e(dis) e(fis) dis4 r |
  e2. 4 | 8(dis) e g fis e16(dis) e8 a, | g4(fis) e r | R1 | % 31a
  R1*4 |
  R1 | r2 r4 r8 a~ | a(b) b(c) c(b) c(d) | b a g fis e d'16 cis d8 g, |
  fis4(e) d8 d(fis) a | d(e16 fis e d) cis(b) cis(e a g fis e d cis | b d g fis e d cis b a cis d e fis g fis e | d cis b d cis b a gis e'8 a,4 gis8) |
  a8 e' a a, b cis16(d e4)~ | 8 d d e8 8.(fis16 4) | g4 r8 d, b'(a) a(d) | % 32a
  d8(cis16 b a8) g fis8 16 g a4~ | 8 d16(cis) d8 e cis a r d | g4 r8 e fis r r a, |
  b16(cis d b cis8) d e2~ | e r8 fis4 dis8 | g4. fis16 e a8 a, b4~ |
  b16(gis) fis(e) e'4.(fis8) b, e~ | 16 d c4 b16(a) g8 e g b | e(fis16 g fis e) d(cis) d8 b r4 | % 33a
  r4 r8 cis4(dis8) 8(e) | e(dis) e(fis) d4 r | r r8 b4(cis8) 8(d) | d(cis) d(e) cis4 r |
  r4 r8 a4(b8) b(c) | c(b) c(d) b a g fis | e d'16 cis d8 g, fis4(e) | d8 d(fis) a d8(e16 fis e d) cis(b) |
  cis16(e a g fis e d cis b d g fis e d cis b | a cis d e fis g fis e d cis b d cis b a gis | e'8 a,4 gis8) a e' a a, | % 34a
  b8 cis16(d e4.) d8 d e | 8.(fis16 4) g r8 d, | b'(a) a(d) d(cis16 b a8) g | fis8 16 g a4. c16(b) c8 d |
  b8 g r c f4 r8 d | e4 r8 g, a16(b c a) b8 c | d2~8 d, d'4~ |
  d8(cis16 b) cis8.(d16) 4 4~ | 2~8 b e4~ | 8 a16 g a8 d, d cis16(b) cis4 | % 35a
  d4 r r2 | R1 | r8 e,(g)  b e(fis16 g fis e) d(cis) |
  d8 b d2.~ | 8(cis) 8(b) b(fis') e d | cis fis8 8 e16(d) cis8.(d32 e) a,8 8~ | 8(b) b(c) c(b) c(d) |
  b4 r8 b4(cis8) 8(d) | d(cis) d(e) cis4 r8 cis~ | 8(d) d(e) e(d) e(fis) | d1~ | % 36a
  d4 cis4 4 b8 a | gis a16(b) e,8 a8 4(g) | a8 e' a a, b cis16(d e4~ |
  e8) d d e8 8.(fis16 4) | g8 fis(e) d cis(b16 a a'8) g | fis4(e) d2\fermata^\markup{\halign #RIGHT \with-color "red" \large\bold SIT} |
  \bar "|."
}

ex  = \lyricmode { ex -- cel -- sis }
exc = \lyricmode { ex -- cel -- sis, }
ie  = \lyricmode { in ex -- cel -- sis }
iec = \lyricmode { in ex -- cel -- sis, }
Gl  = \lyricmode { Glo -- ri -- a }
gl  = \lyricmode { glo -- ri -- a }
glc = \lyricmode { glo -- ri -- a, }
do  = \lyricmode { De -- o }
doc = \lyricmode { De -- o, }
tp  = \lyricmode { ter -- ra pax }
tpc = \lyricmode { ter -- ra pax, }
itp = \lyricmode { in ter -- ra pax }
itpc = \lyricmode { in ter -- ra pax, }
eitp = \lyricmode { et in ter -- ra pax }
eitpc = \lyricmode { et in ter -- ra pax, }
ho    = \lyricmode { ho -- mi -- ni -- bus }
hoc   = \lyricmode { ho -- mi -- ni -- bus, }
bv    = \lyricmode { bo -- næ vo -- lun -- ta -- tis }
bvc   = \lyricmode { bo -- næ vo -- lun -- ta -- tis, }

wordsSopI = \lyricmode {
  \Gl \iec \ie \doc
  \Gl in __ \ex \doc \iec % 27
  \iec __ \glc \gl \ie \doc
  \glc \glc \gl \iec \iec \ie \doc % 29
  \gl \ie \do et __ in __ \tpc \eitp __ \hoc et __ in __ \tpc \itpc
  pax \ho \bvc et __ in __ \tp \ho \bvc \bvc % 31
  \ho \bvc in ter -- ra, __ pax __ \ho \bv, pax, pax, pax, \itpc pax \ho \bvc
  \bvc \bvc et __ in __ \tpc et __ \itpc et __ in __ \tp \ho \bvc \bvc % 33
  \ho \bv in ter - -ra __ pax __ \ho \bvc pax, pax, pax, pax, \itp __ \hoc
  pax __ \ho \bvc \bvc pax __ \ho \bvc et __ in __ ter -- ra __ pax, % 35
  et __ in __ ter -- ra __ pax, et __ in __ ter -- ra pax __ \ho \bvc \ho \bvc bo -- næ vo -- lun -- ta -- tis!
}

Mex  = \lyricmode { ex cel "sis " }
Mexc = \lyricmode { ex cel "sis, " }
Mie  = \lyricmode { "in " ex cel "sis " }
Miec = \lyricmode { "in " ex cel "sis, " }
MGl  = \lyricmode { Glo ri "a " }
Mgl  = \lyricmode { glo ri "a " }
Mglc = \lyricmode { glo ri "a, " }
Mdo  = \lyricmode { De "o " }
Mdoc = \lyricmode { De "o, " }
Mtp  = \lyricmode { ter "ra " "pax " }
Mtpc = \lyricmode { ter "ra " "pax, " }
Mitp = \lyricmode { "in " ter "ra " "pax " }
Mitpc = \lyricmode { "in " ter "ra " "pax, " }
Meitp = \lyricmode { "et " "in " ter "ra " "pax " }
Meitpc = \lyricmode { "et " "in " ter "ra " "pax, " }
Mho    = \lyricmode { ho mi ni "bus " }
Mhoc   = \lyricmode { ho mi ni "bus, " }
Mbv    = \lyricmode { bo "næ " vo lun ta "tis " }
Mbvc   = \lyricmode { bo "næ " vo lun ta "tis, " }

wordsSopIMidi = \lyricmode {
  \MGl \Miec \Mie \Mdoc
  \MGl "in " \Mex \Mdoc \Miec % 27
  \Miec \Mglc \Mgl \Mie \Mdoc
  \Mglc \Mglc \Mgl \Miec \Miec \Mie \Mdoc % 29
  \Mgl \Mie \Mdo "et " "in " \Mtpc \Meitp \Mhoc "et " "in " \Mtpc \Mitpc
  "pax " \Mho \Mbvc "et " "in " \Mtp \Mho \Mbvc \Mbvc % 31
  \Mho \Mbvc "in " ter "ra, " "pax " \Mho \Mbv, "pax, " "pax, " "pax, " \Mitpc "pax " \Mho \Mbvc
  \Mbvc \Mbvc "et " "in " \Mtpc "et " \Mitpc "et " "in " \Mtp \Mho \Mbvc \Mbvc % 33
  \Mho \Mbv "in " ter "ra " "pax " \Mho \Mbvc "pax, " "pax, " "pax, " "pax, " \Mitp \Mhoc
  "pax " \Mho \Mbvc \Mbvc "pax " \Mho \Mbvc "et " "in " ter "ra " "pax, " % 35
  "et " "in " ter "ra " "pax, " "et " "in " ter "ra " "pax " \Mho \Mbvc \Mho \Mbvc bo "næ " vo lun ta tis!
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
}

sopranoII = \relative {
  \global
  R4.*24 |
  R4.*4 | d''8 a g | fis(e) a | cis a cis |
  d8 a a | 4 8 | R4.*5 | % 27a
  R4.*4 | a8(e a | b cis16 b a b | cis8) 8 b |
  a8(gis) a | e(b'16 a  b gis | e8) e' e, | b' gis8 8 | cis4.~ | 4.~ |
  cis16(e d cis b ais | b8) fis r | R4. | r8 gis8 8 | gis(a) e | r cis' a | fis'(e16 d) cis(b) | % 28a
  a4. | gis4 r8 | r fis'16(e fis d | e8) e,16(d) e8 | fis gis a~ | 16 b gis8.(a16) | 4 r8 |
  R4.*7 |
  R4.*4 | d8(a d  | e fis16 e) d(e) | fis8 r r | % 29a
  R4. | d8 a g | fis8.(g16) a(b) | cis8 r r | R4. | r8 e, e | a4.~ |
  a4.~ | 16(c b a g fis | g8) e r | R4. | r8 e e | a4.~ | 16(d, fis a d8~ |
  d8) cis16(b cis8) | fis,8(b4~ | 8) a16(g) a8 | r8 b16(a b g | a8) 16(g) a8 | b8 cis d~ | 16 e cis8.(d16) \section \time 4/4 | % 30a
  d4 r8 fis,4(g8) g(a) | a(g) a(b) g4 r | R1 | r4 r8 fis4(g8) g(a) | a(g) a(b) g4 r |
  r4 g2 a4 | g8 fis8 4 r2 | r4 r8 b4(e,8) e(fis) | fis(e) fis(g) e(fis) fis(g) | g(fis) g(a) fis4 r |
  r4 r8 g4 gis8 8 a | a b b c fis, g16 a g8 e | 4(dis) 4 r | R1 | % 31a
  R1*4 |
  R1*4 |
  R1*4 |
  R1*3 | % 32a
  R1*3 |
  R1 | r2 r4 r8 b'~ | b(c) c(d) d(c) d(e) |
  c8 b a g fis e'16 dis e8 a, | g4(fis) e r8 b'~ | b b ais8 8 b fis r4 | % 33a
  r4 r8 cis'4(a8) a(gis) fis4 4 4 r | r r8 b4(a8) gis(fis) e4 4 4 r |
  r4 r8 cis'8(d e) e(fis) | a,(g) a(b) g b e fis16(g) | cis,8 d16 e d4. e16(fis) a,8(cis) | d8 16(cis d8) a a gis16(fis) g4 |
  a4 r r2 | R1*2 | % 34a
  R1*4 |
  R1*3 |
  r4 r8 a4(b8) b(c) | c(b) c(d) b a g fis | e8 16 16 a8 g fis4(e) | % 35a
  d4 r r2 | R1 | r4 b'4. 8 ais8 8 |
  b8 fis b2.~ | 8(a) a(gis) 8(a) b gis | a d d cis16(b) a8.(b32 cis) 8 r | fis,8(g) g(a) a(g) a(fis) |
  g4 r gis8(a) a(b) | b(a) b(gis) a4 r | ais8(b) b(cis) cis(b) cis(ais) | b2~8(a) a(b) | % 36a
  b4 a a b~ | 8 cis16(d) e8 d e16(d e fis e fis e d | cis8) a r4 r r8 a~ |
  a8(b) b(c) c(b) c(d) | b a g fis e d'16 cis d8 d | 4(cis) d2\fermata |
}

wordsSopII = \lyricmode {
  \Gl \iec \ie \doc
  \gl in __ \exc \doc \iec % 27
  \iec \ie \doc \gl \ie \doc
  \glc \glc \gl \iec \iec __ % 29
  \glc \gl \ie \do et __ in __ \tpc et __ in __ \tpc pax \hoc et __ in __ \tpc \itpc
  \eitp \ho \bvc  % 31
  et __ in __ ter -- ra __
  pax \ho \bvc \bvc et __ in __ \tpc et __ \itpc et __ in __ \tp \ho \bvc \bvc % 33
  et __ in __ ter -- ra __ pax \ho \bvc \bvc pax __ \ho \bvc et in __ ter -- ra __ pax, % 35
  et __ in __ ter -- ra __ pax, et in __ \tp __ \ho \bvc et __ in __ ter -- ra __ pax \ho bo -- næ vo -- lun -- ta -- tis!
}

wordsSopIIMidi = \lyricmode {
  \MGl \Miec \Mie \Mdoc
  \Mgl "in " \Mexc \Mdoc \Miec % 27
  \Miec \Mie \Mdoc \Mgl \Mie \Mdoc
  \Mglc \Mglc \Mgl \Miec \Miec __ % 29
  \Mglc \Mgl \Mie \Mdo "et " "in " \Mtpc "et " "in " \Mtpc "pax " \Mhoc "et " "in " \Mtpc \Mitpc
  \Meitp \Mho \Mbvc  % 31
  "\net "  "in "  ter "ra " 
  "\npax " \Mho \Mbvc \Mbvc "et "  "in "  \Mtpc "et "  \Mitpc "et "  "in "  \Mtp \Mho \Mbvc \Mbvc % 33
  "\net "  "in "  ter "ra "  "pax " \Mho \Mbvc \Mbvc "pax "  \Mho \Mbvc "et " "in "  ter "ra "  "pax, " % 35
  "\net "  "in "  ter "ra "  "pax, " "et " "in "  \Mtp  \Mho \Mbvc "et "  "in "  ter "ra "  "pax " \Mho bo "næ " vo lun ta "tis! "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R4.*24 |
  d'8(a d | e fis16 e d e | fis8) a16(g) a(fis) | g8(a) b | a4.~( | 8 b16 a g fis | e8 a g |
  fis8 g16 fis) e(d) a'4 8 | R4.*5 | % 27a
  R4.*6 | a8 e d |
  cis8(b) e | gis e gis | a e e | 4 8 | R4. r8 ais ais |
  ais8(b) fis | r8 8 8 | b4.~ | b~ | 16(d cis b a gis | a8) e r | b' b gis | % 28a
  cis8(a) fis | d'(b) cis | 16(a) fis8 16 b | 8(a16 gis a8~ | 4.~ | 16) fis e4 | e r8 |
  R4.*5 | b'8(e, b' | cis d16 cis b cis |
  d4.~ | 8 cis16 b) a(g) | fis8 d a' | b(a) a | a(fis a | e a) a | a r r | % 29a
  R4. | a4.~ | 8(b16 a) g(fis) | e8 r r | R4.*3 |
  r8 fis8 8 | b4.~ | 16(a b c b a | g4.~ | g~ | 16 b a g fis e | fis8) d r |
  R4. | fis8 8 d | e cis'16(b a8) | b4 g8 | e(a) fis | g16(fis) e(d) b'(cis | d) g, e4 \section \time 4/4 | % 30a
  fis4 r8 a4(g8) 4 | g fis g r | R1 | r4 r8 c,4(d8) d(fis) | fis(g) fis(e) d4 g |
  fis4 4 e e | b'8. 16 8 fis4(g8) g(a) | a(g) a(b) g4 r | fis4 r g fis8(e) | e(c'4) a8 b4 r8 b~ |
  b8 a a g g b gis e | e' r r a,~a b16(c) b8 e, | g(e b4) b r | R1 | % 31a
  R1*4 |
  R1*4 |
  R1 | r4 r8 e4(fis8) 8(g) | g(fis) g(a) fis e d cis | b a'16 gis a8 d, cis4(b) |
  a8 a(cis) e g(a16 b a g) fis(e) | fis(a d cis b a g fis e g c b a g fis e | d fis g a b c b a g fis e g fis e d cis | % 32a
  a'8 d,4 cis8) d a' d e, | fis gis16(a b4.) a8 a b | 8.(cis16 4\trill) d r8 a, |
  fis'8(e4) a8 a(gis16 fis e8) d | cis8 16 d e4. a16(g) a8 8 | g4(a~ 16\trill gis a8 d) e, |
  e4 r8 8 fis8 16 16 g8 a | b c fis,4 g8 b16(a g8) fis | e d cis4 b r | % 33a
  r4 r8 cis'4(a8) a(gis | a b) cis4 b r | r r8 a(gis) e e(fis) | gis(a) b4 a r |
  r4 r8 g8(fis) g g(a | d,4) d d r8 d | a'8 16 g a8 d, a' g16(fis) g4 | fis8 a16 g fis8 e fis(b,) b e~ |
  e8(fis) 8(g) g(fis) g(a) | fis e d cis b a'16 gis a8 d, | cis4(b) a8 8(cis) e | % 34a
  g8(a16 b a g) fis(e) fis(a d c b a g fis | e g c b a g fis e d fis g a b cis b a | g fis e g fis e d cis a'8 d,4 cis8) | d a' d d, e fis16(g a4~ |
  a8) g g a8 16(b a b b8.\trill e16) | c4 r8 g, e'(d4) g8 | g(fis16 e d8) a' b d16 cis b(a) g(fis) |
  e8 fis16(g) a8(g) fis4 r8 d | a'4 r8 fis8 g4 r8 b | cis16 d e8 d b a8 8 4 | % 35a
  a4 r r2 | R1 | r8 b16(a g8) fis e d cis4 |
  b4 fis'2. | gis4 e e gis8 b | a8 8 8 g16(fis) e4 8 r | r2 r8 d fis a |
  b4 r r2 | r8 e, gis b cis4 r | r2 r8 b ais fis | 4 r8 e4(fis8) 8(g) | % 36a
  g8(fis) g(a) fis e d cis | b a'16 gis a8 d, cis4(b) | a8 a(cis) e g(a16 b a g) fis(e) |
  fis16(a d c b a g fis e g c b a g fis e | d fis g a b g a b e,8 fis16 g a8 b | a2) a\fermata |
}

wordsAlto = \lyricmode {
  \Gl \ie \doc
  \gl in __ \exc \doc \iec \iec % 27
  \iec \gl in __ \ex \doc \ie \doc \gl
  \iec \glc \gl \iec % 29
  \gl \ie \doc \ie \do et __ in __ \tpc et __ in __ \tpc \itp \hoc et __ \itpc pax, et \itpc et __ in __ \tp \ho 
  \bvc et __ in __ ter -- ra __ pax \ho \bvc % 31
  \bvc \ho \bvc \itpc \ho \bvc
  pax \ho \bvc \bvc et __ \itpc et __ \itpc et __ \itp \ho \bvc \bvc et __ in __ ter -- ra __ pax % 33
  \ho \bvc \bvc \ho \bvc \itp __ \ho \bvc
  pax, pax, pax, pax, \ho \bvc \bvc pax, pax \ho \bvc \itpc % 35
  \itpc \itpc et __ in __ ter -- ra __ pax \ho \bvc bo -- næ vo -- lun -- ta -- tis!
}

wordsAltoMidi = \lyricmode {
  \MGl \Mie \Mdoc
  \Mgl "in " \Mexc \Mdoc \Miec \Miec % 27
  \Miec \Mgl "in " \Mex \Mdoc \Mie \Mdoc \Mgl
  \Miec \Mglc \Mgl \Miec % 29
  \Mgl \Mie \Mdoc \Mie \Mdo "et " "in " \Mtpc "et " "in " \Mtpc \Mitp \Mhoc "et " \Mitpc "pax, " "et " \Mitpc "et " "in " \Mtp \Mho 
  \Mbvc "et " "in " ter -- "ra " "pax " \Mho \Mbvc % 31
  \Mbvc \Mho \Mbvc \Mitpc \Mho \Mbvc
  "\npax " \Mho \Mbvc \Mbvc "et "  \Mitpc "et "  \Mitpc "et "  \Mitp \Mho \Mbvc \Mbvc "et "  "in "  ter "ra "  "pax " % 33
  \Mho \Mbvc \Mbvc \Mho \Mbvc \Mitp \Mho \Mbvc
  "\npax, " "pax, " "pax, " "pax, " \Mho \Mbvc \Mbvc "pax, " "pax " \Mho \Mbvc \Mitpc % 35
  \Mitpc \Mitpc "et " "in " ter "ra " "pax " \Mho \Mbvc bo "næ " vo lun ta tis!
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  R4.*24 |
  R4.*2 | d'8(a d | e8 fis16 e d e | fis8) 8 e d(cis) d | a(e'16 d e cis |
  a8 a') a, | e'4 8 | R4.*5 | % 27a
  R4.*6 | e,8 a gis |
  a8(d) e | e b b | cis b cis | b4 8 | R4. | r8 cis cis |
  fis4.~ | 16(e fis g fis e | d4.~ | d~ | 16 fis e d cis b | cis8) e r | R4. | % 28a
  cis8 8 a | b gis'16(fis e8) | fis4 d8 | b(e) cis | d16(cis) b(a) fis'(gis | a) d, b4 | cis r8 |
  R4.*3 | e8(a, e' | fis g16 fis e fis | g4.~ | 8 fis16 e) d(cis) |
  b8 fis' d | e4 8 | d8. e16 fis8 | e8. fis16(g8) | fis(a) d, | a4 8 | d,8 r r | % 29a
  R4. | a'8 fis' e | a,4 d8 | cis r r | R4.*3 |
  r8 dis8 8 | 8(e) b | r b b | e4.~ | e~ | 16(g fis e d cis | d8) a r |
  e'8 8 cis | fis(d) b | g'(e) fis | 16(d) b8 16 e | 8(d16 cis d8~ | 4.~ | 16) b a4 \section \time 4/4 | % 30a
  a4 r r d8 d | e4 d d r | R1 | r2 r4 d~ | 2. b8 c |
  c8(b) b(a) g(c) e,(fis) | g(a) b(cis) dis e4 fis8 | 8(e) fis(g) e4 r | d r e b | c8(a) e(c') b4 r |
  r2 r8 b4 a8 | a g g e c' b16 a b8 c | b a16(g) a4 g r | R1 | % 31a
  R1*4 |
  R1*4 |
  R1*4 |
  r2 r4 r8 a~ | a(b) b(c) c(b) c(d) | b a g fis e d'16 cis d8 g, | % 32a
  fis4(e) d8 d(fis) a | d(e16 fis e d) cis(b) cis(e a g fis e d cis | b d g fis e d cis b a cis d e fis g fis e |
  d16 cis b d cis b a gis e'8 a,4 g8) | a e' a b, cis dis16(e fis4~ | 8) e e e f8.(e16 d c b a |
  gis16 e fis gis a b c d c b a c b8 e,16 fis | g b e4 dis8) e b(e) fis | g b, fis'4 4 r | % 33a
  r4 r8 cis4 fis8 a,(b | cis b) a4 b r | r r8 b4 e8 gis,(a | b a) gis,4 a r |
  r4 r8 e' d2~ | 4 a b r8 b | e a16 a d8 b fis e16(d) a'4 | 4 8 cis fis, d' b4 |
  a8 r r4 r2 | R1*2 | % 34a
  r4 r8 a4(b8) b(c) | c(b) c(d) b a g fis | e d'16 cis d8 g, fis4(e) | d8 d(fis) a c(d16 e d c) b(a) |
  b16(d g f e d c b a c f e d c b a | g b c d e f e d c b a c b a g fis | d'8 g,4 fis8) g b(d) g |
  b,8 cis16(d) e4 d r8 fis | 4 r8 d8 4 r8 b | e a,8 8 d16 e fis8 e16(d) e8(g) | % 35a
  fis4 r r2 | R1 | r8 b,(e) fis g b, fis'4 |
  fis4 d2 b4 | e4. 8 4 8 8 | e(d) d(a) 4 8 r | r4 d8 a fis(d) d'4 |
  d4 r r e8 b | gis(e) e'4 4 r | r fis8 cis ais(fis) fis'(cis) | d4 r8 b4(d8) d(e) | % 36a
  e4 e d8 a d4~ | 8 cis16 b a8 16(b) cis8 a e'4 | e r8 cis e(g,16 fis g8) a |
  fis8 r r g c4 r8 a | b4. a16 g a8 8 d, d' | d(e16 fis g8 e) fis2\fermata |
}

wordsTenor = \lyricmode {
  \Gl in __ \ex \doc
  \gl in __ \exc \ie \doc \iec % 27
  \gl \ie \doc \ie \doc \gl
  \iec \gl \iec \glc \glc \gl \iec \iec % 29
  \gl in __ \ex \doc \ie \do \eitpc pax, __ \eitp \hoc \eitpc pax, \eitpc
  \eitp \ho \bvc % 31
  et __ in __ ter -- ra __ pax \ho \bvc \bvc \ho \bvc
  \bvc \eitpc \eitpc \itp \ho \bvc \bvc % 33
  et __ in __ ter -- ra pax \ho \bvc \bvc \bvc
  pax, pax, pax, pax, \ho \bvc \bvc pax \ho \bvc \eitpc % 35
  \eitpc \eitpc et __ in __ ter -- ra pax \ho \bvc \itpc pax, pax \ho bo -- næ vo -- lun -- ta -- tis!
}

wordsTenorMidi = \lyricmode {
  \MGl "in " \Mex \Mdoc
  \Mgl "in " \Mexc \Mie \Mdoc \Miec % 27
  \Mgl \Mie \Mdoc \Mie \Mdoc \Mgl
  \Miec \Mgl \Miec \Mglc \Mglc \Mgl \Miec \Miec % 29
  \Mgl "in " \Mex \Mdoc \Mie \Mdo \Meitpc "pax, " \Meitp \Mhoc \Meitpc "pax, " \Meitpc
  \Meitp \Mho \Mbvc % 31
  "\net "  "in "  ter "ra "  "pax " \Mho \Mbvc \Mbvc \Mho \Mbvc
  \Mbvc \Meitpc \Meitpc \Mitp \Mho \Mbvc \Mbvc % 33
  "\net "  "in "  ter "ra " "pax " \Mho \Mbvc \Mbvc \Mbvc
  "\npax, " "pax, " "pax, " "pax, " \Mho \Mbvc \Mbvc "pax " \Mho \Mbvc \Meitpc % 35
  \Meitpc \Meitpc "et " "in " ter "ra " "pax " \Mho \Mbvc \Mitpc "pax, " "pax " \Mho bo "næ " vo lun ta tis!
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4.*100 | s1\mf | s1*7 | s1-\markup{\dynamic mf only} | s | s\cresc |
  s1 | s2.\dim s4\omit\p | s1*17 | s4. s8\p s2 |
  s1*7 | s4. s8\mf s2 | s1*2 | s1\cresc | s4. s8\f s2 |
  s1*2 | s2. s4\dim | s8 s2..\omit\p | s1*14 | s8 s2..\f | s4 s2.\p\cresc |
  s1*2 | s1\f | s1*10 |
}

bass = \relative {
  \global
  R4.*24 |
  R4.*4 | d8^\markup{\with-color "red" \large\bold "keep the whole thing light"} d e | fis g16(fis e d) | a'8 a, a' |
  d8 cis d | a4 8 | R4.*5 | % 27a
  R4.*6 | a,8 a b |
  cis8 16(cis b a) | e'8 8 8 | a gis a | e4 8 | r cis cis | fis4 e8 |
  d16(cis d e fis8) | b,8 r r | r b b | e4 d8 | cis16(b cis d e8) | a, a'16(b cis a | d8) b e | % 28a
  fis,8(a) d | b(gis) cis | d,(fis) b | gis e a | d, e fis | e16(d) e4 | a, r8 |
  R4.*7 |
  fis'8(b, fis' | g a16 g fis g | a8)  d fis, | g(a) a, | d(d'16 cis) d8~ | 8 cis4 | d8 r r | % 29a
  R4. | d,8 8 e | fis(g16 fis) e(d) | a'8 r r | R4.*2 | r8 fis8 8 |
  b4 a8 | g16(fis g a b8) | e,8 r r | r e e | a4 g8 | fis16(e dis g a8) | d,8 16(e fis d |
  g8) e a | b,(d) g | e(cis) fis | g(b) e | cis a d | g, a b | a16(g) a4^\markup{\halign #RIGHT \with-color "red" \large\bold watch} \section \time 4/4 | % 30a
  d,4 d'8 d, c4 b8 8 | a4 d g, r | R1 | r4 g'2.~ | 2. r8 a,~ |
  a8(b) b(c) c(b) c(d) | b1~ | b | r4 r8 b'4(a8) a(g) | a2~8(b) b(a) |
  g8(fis) 8(e) e(d) d(c) | c b4 a8~a g16(fis g8) a | b2 e4 r | R1 | % 31a
  R1*4 |
  R1*4 |
  R1*4 |
  R1*3 | % 32a
  R1 | r4 r8 e4(fis8) 8(g) | g(fis) g(a) fis e d cis |
  b8 a'16 gis a8 d, cis4(b) | a8 8(cis) e a(b16 c b a) g(fis) | g(b e d c b a g f a d c b a gis f |
  e16 gis a b c d c b a g fis a g fis e dis | b'8 e, b4) e8 g16(fis e8) d | cis d16(e) fis4 b, r | % 33a
  r4 r8 cis fis4 4~ | 4 4 b, r | r r8 b e4 4~ | 4 4 a, r |
  r4 r8 a d4 4~ | 4 4 g, r8 g' | g fis16 e fis8 g a4 a, | d8 fis16(e) d8 cis b cis16(d) e4 |
  a,8 r r4 r2 | R1*2 | % 34a
  R1*3 | r2 r4 r8 d~ |
  d8(e) e(f) f(e) f(g) | e d c b a g'16 fis g8 c, | b4(a) g8 g(b) d |
  g8(a16 b a g) fis(e) fis(a d c b a g a | fis a c b a g fis e d fis g a b c b a | g fis e g fis e d cis a'8 d, a4) | % 35a
  d4 r r2 | R1 | r8 e4 d8 cis d16(e) fis4 |
  b,4 2. | r4 e2. | r4 a2. | d4 d, d d |
  g4 r e e | e e a r | fis4 4 4 4 | b8(a) a(g) g(fis) 8(e) | % 36a
  e8(d) e(a,) d(e) fis d | e d cis fis e(d e4) | a,8 a'4 g16(fis) e8(d) cis(a) |
  d8 d g e a4 r8 d, | g d g4. fis16 e fis8 g | a4(a,) d2\fermata |
}

wordsBass = \lyricmode {
  \Gl \iec \ie
  \doc \gl\iec \ie \doc \ie % 27
  \doc \iec \doc \gl in __ \ex \doc \gl \ie \doc
  \gl in __ \ex __ \doc \glc \gl \ie \doc \ie \doc \gl % 29
  in __ \ex \doc \gl \ie \do et in ter -- ra, \itpc pax, __ et __ in __ ter -- ra pax, __ et __ \itp
  \ho \bvc % 31
  et __ in __ ter -- ra __ pax \ho \bvc \bvc
  \bvc \eitpc \eitpc \eitp \ho \bvc \bvc % 33
  et __ in __ ter -- ra __ pax \ho \bvc \bvc
  \bvc pax, pax, pax, \eitpc % 35
  \eitpc \eitpc __ in __ ter -- ra __ pax \ho \bvc \eitpc \itp \ho bo -- næ vo -- lun -- ta -- tis!
}

wordsBassMidi = \lyricmode {
  \MGl \Miec \Mie
  \Mdoc \Mgl\Miec \Mie \Mdoc \Mie % 27
  \Mdoc \Miec \Mdoc \Mgl "in " \Mex \Mdoc \Mgl \Mie \Mdoc
  \Mgl "in " \Mex \Mdoc \Mglc \Mgl \Mie \Mdoc \Mie \Mdoc \Mgl % 29
  "\nin "  \Mex \Mdoc \Mgl \Mie \Mdo "et " "in " ter "ra, " \Mitpc "pax, "  "et "  "in "  ter "ra " "pax, "  "et "  \Mitp
  \Mho \Mbvc % 31
  "\net "  "in "  ter "ra "  "pax " \Mho \Mbvc \Mbvc
  \Mbvc \Meitpc \Meitpc \Meitp \Mho \Mbvc \Mbvc % 33
  "\net "  "in "  ter "ra "  "pax " \Mho \Mbvc \Mbvc
  \Mbvc "pax, " "pax, " "pax, " \Meitpc % 35
  \Meitpc \Meitpc "in " ter "ra " "pax " \Mho \Mbvc \Meitpc \Mitp \Mho bo "næ " vo lun ta tis!
}

pianoRHone = \relative {
  \global \ov
  <fis' d'>8 <d fis a> <fis a d> | \vo e' fis16 e d e |
  \ov <a, d fis>8 <fis a d> <a d fis>~ | <a e' g> <fis' a>16 <e g> <d fis> <e g> |
  <fis a>16 a, d fis a cis, | d fis <d b'> a' <d, g> fis |
  <cis e>8 <a e' a> <a e' g> | <d fis>16 <fis a> <e g> <d fis> <cis e> <b d> | % 26b
  <cis e>16 a cis e cis a | a' fis, [ a cis a fis ] |
  fis'16 b, dis fis dis b | b' <a c> <g b> <fis a> <e g> <dis fis> |
  <e g>16 b e g e b | <e g> e, g b g e | % 26c
  \vo g'4 8 | \ov a16 <g b> <fis a> <e g> <d fis> <cis e> |
  <d fis>16 d fis a <d, d'> fis | e <b' d> <a cis> <g b> <a cis> e |
  d16 b d fis <g a> d | cis q <fis a> <e g> <d a'> c | % 26d
  b16 g b d g b, | a [ g' <d fis> <cis e> ] \vo fis8 |
  e8 s r16 fis32 g | \ov <d fis>16 [ <b d e> ] \vo <cis e>8.\trill d16 |
  d8 d, d'~ | \ov d8 cis16 d b cis | \vo d cis d e fis g | % 26e
  e8 a, g' | \ov <d fis>16 a d fis <a, a'> cis |
  <a d>8 <b e>16 <a d> <a cis> d | <a cis e> a cis e cis a |
  <a d fis a>16 fis a d a fis | % 27a
  <a cis e>16 e a cis a e |
  <g a cis e>16 cis e g e cis |
  <cis fis cis'>16 fis ais cis ais fis~ |
  <fis cis'>16 <g e'> <fis d'> <e cis'> <d b'> <cis ais'> |
  <d b'>16 fis, [ b d b fis ] |
  d'16 b d fis d b |
  <b e b'>16 e gis b gis e~ | % 27b
  <e b'>16 <fis d'> <e cis'> <d b'> <cis a'> <b gis'> |
  <cis a'>8 cis, [ a'~ ] |
  a8 gis16 a fis gis |
  \vo <cis, e a>16 gis' a b cis d |
  b8 e, d' |
  \ov <a cis>16 e a cis e gis, |
  \vo a16 e' fis e d cis | % 27c
  <gis b>16 e gis b gis e |
  <a cis e>16 cis e a e dis |
  <e gis b>16 e, [ gis b gis e ] |
  <e gis e'>16 cis' <g e'> gis' e cis |
  <cis fis cis'> fis ais cis ais fis~ |
  <fis cis'>16 <g e'> <fis d'> <e cis'> <d b'> <cis ais'> | % 28a
  <d b'>16 fis, [ b d b fis ] |
  d'16 b d fis d b |
  b'16 e, gis b gis e~ |
  <e b'>16 <fis d'> <e cis'> <d b'> <cis a'> <b gis'> |
  <cis a'>16 a cis e a cis, |
  b16 a' gis fis gis b, |
  a16 fis a cis fis a, | % 28b
  gis16 fis' e d e g, |
  fis16 d fis a d fis, |
  e16 d' cis b cis e, |
  <d fis>16 <cis e> <b d> <a cis> b <gis' d'> |
  <a cis>16 [ <fis b> ] \vo <gis b>8. a16 \ov |
  <cis, e a>8 <cis e> <cis e a> |
  \vo b'8 cis16 b a b | % 28c
  \ov <e, a cis>8 <cis e a> <e a cis > |
  <b' d>8 <cis e>16 <b d> <a cis> <b d> |
  <cis e>16 a [ cis e cis a ] |
  <a e'>8 dis16 e cis dis |
  <g, e'>16 e [ g b g e ] |
  \vo e'8 r r |
  d8 4~ | % 29a
  d8 cis16 d b cis |
  d8 4~ |
  d8 cis16 d b cis |
  \ov <fis, d'>16 d [ fis a fis d' ] |
  \vo e8 fis16 e d e |
  \ov <a, fis'>8 <fis a d> <a d fis> |
  <a e' g>8 <fis' a>16 <e g> <d fis> <e g> | % 29b
  <fis a>16 a, d fis a cis, |
  d16 fis <d b'> a' <d, g> fis |
  <cis e>8 <a e' a> <a e' g> |
  <d fis>16 <fis a> <e g> <d fis> <cis e> <b d> |
  <cis e>16 a cis e cis a |
  <a cis a'>16 fis [ a cis a fis ] |
  <a b fis'>16 b [ dis fis dis b ] | % 29c
  b'16 <a c> <g b> <fis a> <e g> <dis fis> |
  <e g>16 b e g e b |
  <g b g'>16 e [ g b g e ] |
  <g a e'>16 a [ cis e cis a ] |
  a'16 <g b> <fis a> <e g> <d fis> <cis e> |
  <d fis>16 d fis a d fis, |
  e16 d' cis b cis e, | % 30a
  d16 b d fis b d, |
  cis16 b' a g a c, |
  b16 g b d g b, |
  a16 g' fis e fis a, |
  <g b>16 <fis a> <e g> <d fis> e cis' |
  <fis, a d>16 [ <g b e> ] \vo cis8. d16 \section \time 4/4 |
  \ov <fis, a d>4 r8 <fis a>4 <g b>8 8(<a c>) | % 30b
  <a c>4 r8 \vo d,4 e8 e(f) |
  f8(e) <d fis>(<b g'>)~ <e g>(<fis a>) q(<g b>) |
  q8(<fis a>) <g b>(<a c>) q(<b d>) q(<a c>) |
  \ov <fis a c>4 <a fis'> <b g'> <g e'>~ |
  \vo e'4 dis e2~ | % 30c
  e8 dis8 4 \ov <dis, a' c> <e g b> |
  \vo <fis a>4. fis8 <e g>2 |
  <d fis>2 \ov <cis e g>4 fis8 <e b'> |
  <e a c>2 <dis fis b>4 r8 <b dis fis> |
  \vo <e g>4 <fis a> b2 | % 31a
  \ov <e, a c>4 <e g>8 <a cis g'> <a cis fis> <b e>16 <cis dis> <b e>8 <c, e a> |
  \vo <e g>4 \ov <a, dis fis>8 <dis fis b>~<e g b>(<e a c>) q(<gis b d>) |
  <gis b d>8(<a c>) <a b d>(<gis c e>) <a c e>(<a fis'>) q(<b e g>) |
  <b e g>8(<a dis fis>) <b e g>(<c fis a>) <a dis fis>(<b e g>) q(<c dis fis a>) | % 31b
  <c dis fis a>8(<b e g>) <c fis a>(<b dis b'>) <b e gis>(<cis fis ais>) q(<d g b>) |
  q8(<cis ais'>) <d g b>(<e cis'>) <cis a'>(<ais fis'>) q(<cis ais'>) |
  \vo b'2 2 |
  \ov <b, e b'>8(<e fis ais>) <d fis b>(<g b d>) <cis, g' cis> <d fis b>16 <e ais> <fis b>8 <g, b e> | % 31c
  <fis b d>4 <e ais cis>\trill <d fis b>8(<e g cis>) < g cis>(<fis a d>) |
  \vo d'2 2 | 2 2 |
  <a d>4 \ov <g cis> <fis d'>8 r <fis a d> r | % 31d
  <fis b d>8 r <e b' d> r <e a cis> r <a d fis> r |
  <g b fis'>8 r <g a e'> r <fis a e'> r <fis b d> r |
  <b d fis>8 r <a cis a'> r <cis e a> r <b d e> r |
  <a cis e>8 r <cis e a> r <b e g> r <a e' g> r | % 32a
  <a d fis>8 r <g b e> r <a c e> r <d, a' d> r |
  <g b d>8 r <g b e> r <e b' e> r <a d fis> r |
  <d fis a>8 r <a g' a> r <d fis a> r <a d fis> r | % 32b
  <b d fis>8 r <b d e> r <a cis e> r <fis b d> r |
  <g b g'>8 r <a e'> r <a d fis> r <b d fis> r |
  <b d fis>8 r <cis e a> r q r <e, d' e> r | % 32c
  <e cis' e>8 r <e a cis> r <a cis fis> r <fis b fis'> r |
  <g b e>8 r <a e' a> r <a d> r <a b d> r |
  <g b c>8 r <e a e'> r <a c fis> r <b e> r | % 33a
  <g b e>8 r <b, dis fis a> r <b e g> \vo e g b |
  e8 fis16 g fis e d cis d8 b [ d fis ] |
  b8 cis16 d cis b a gis a8 fis \ov <fis a>4~ | % 33b
  q4. <a, cis fis>8 <a dis fis>(<gis e' gis>) q(<e' fis a>) |
  <dis fis a>(<e gis>) <fis a>(<d fis b>) <e gis>4 q~ |
  q4. <gis, b e>8 <g cis e>(<a d fis>) q(<cis e g>) |
  <cis e g>8(<d fis>) <e g>(<cis a'>) <d fis>(<b e g>) q(<c fis a>) | % 33c
  q8(<b e g>) <c fis a>(<d b'>) <b d g> <a fis'> \vo e' fis16 g |
  <cis, e>8 <d fis>16 <e g> <d fis>8(d) \ov <fis, d'> <g e'>16 <a fis'> a8 <g cis> |
  <fis d'>8 d <d fis> <fis a> <fis d'> e'16 fis <gis, e'> d' cis b |
  <a cis>16 e' a g fis e d cis b d g fis e d cis b | % 34a
  a16 cis d e <d fis> g fis e d cis b d cis b a gis |
  \vo e'8 a,4 \ov gis8 a16 <g b> <a cis> <b d> <cis e> <d fis> <e g> <fis a> |
  <g, b g'>8 <a cis>16 <b d> <a e'>4~ \vo e'8 d4 e8~ | % 34b
  e16 fis e fis16 4\trill g 4 r8 d, |
  b'8 a a d~d cis16 b a8 g |
  fis16 g fis g a4~8 c16 b c8 d |
  b8 g r c f4 r8 d | % 34c
  e4 r8 g, a16 b cis a b8 cis |
  d2 4 4~ |
  d8 [ cis16 b cis8 ] \ov <cis e a> <d fis a>(<g b>) q(<d fis a c>) | % 35a
  q8(<g b>) <a c>(<d, fis a d>) <d g b>(<b fis' a>) <e g>(<d fis>) |
  \vo e8<a d>16 cis \ov <d, a' d>8 <b d g> \vo fis'4 e\trill |
  \ov <fis, a d>8 \vo d' fis a \ov <fis a d> <e b' d>16 <a cis> <<{\vo d8 b} \new Voice {\vth gis16 a s8}>> \ov | % 35b
  <e a cis>8 \vo a, cis e a b16 c b a g fis |
  \ov <e g>8 e, [ g \vo b ] e fis16 g fis e d cis |
  d8 s \ov gis,(a) <fis a>(<e gis>) <fis a>(<d b'>) | % 35c
  <gis b>8(<e a cis>) q(<gis b d>) q(<a cis>) <b d>(<gis e'>) |
  <a cis e>8(<a d fis>) q(<a e' g>) q(<a d fis>) <a e' g>(<a fis' a>) |
  <a d g>4 r8 <d, fis a> <fis a d>4 r8 <d fis a> |
  <d g b>8 <d' g b> [ <b d g> ] b e4. <e, gis b>8 | % 36a
  <gis b e>8 r r <e gis b> <e a cis> <e' a cis> [ <cis e a> ] cis |
  <fis, fis'>4. <fis ais cis>8 <ais cis fis>4 r8 <fis ais cis> |
  <fis b d>16 e d cis b fis' g a b g, a b a a' g fis |
  g16 a b a g fis e a a b a g fis e fis a | % 36b
  e16 d cis b a b cis d e d e fis e fis e d |
  <cis a'>16 <g' b> <a cis> <b d> <cis e> <d fis> <e g> <fis a> g b, <a cis> <b d> <a e'>8 <a cis e a> |
  <e' a>8(<d b'>) <d g b>(<e c'>) <e a c>(b') <d, a' c>(d') | % 36c
  <d, g b>8(<fis a>) <e g>(<d fis>) <cis e> <d a' d>16 <e a cis> <d a' d>8 <b d g> |
  \vo <d fis>4 <cis e> d2\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s4. | a'4 8 | s4.*4 |
  s4.*6 |
  s4.*2 | e'16 a, cis e cis a | s4.*3 |
  s4.*3 | s4 d16 a | <b d> [ a g fis e ] cis' | s8 a4 |
  <fis a>8 s4 | s4. | q8 r d'~ | d cis16 d b cis | s4.*3 |
  s4.*7 | % 27a
  s4.*4 | s4 a8~ | 8 gis16 a fis gis | s4. |
  a8 gis a | s4.*5 |
  s4.*7 | % 28a
  s4.*5 | s8 b, d | s4. |
  e4. | s4.*5 | b'8 ais16 b gis ais |
  b8 fis d | e4. | fis8 d a' | b a g | s4. | a | s | % 29a
  s4.*7 |
  s4.*7 |
  s4.*6 | s8 <e a>4 \section \time 4/4 | % 30a
  s1 | s4. a,8 b(c) c(d) | d c s4 c8 8 8 d | d c d e fis g g fis | s1 |
  fis4 b2 a4 | g8 fis8 4 s \once\hideNotes e4~ | e dis b ais | b fis s2 | s1 |
  b2 <e g>8(gis) q(a) | s1 | b,8 a16 g s2. | s2 \lh e'8(dis) dis(b) \rh | % 31a
  s1*3 | <b' fis'>8(e) <cis e>(d) d(dis) <b d>(e) |
  s1*2 | <fis, a>8(<d b'>) <d a'>(<e g>) <fis a>(g) q(fis) | <d g>(fis) <e g>(<fis a>) <g b>(a16 g) a8(<e b'>) |
  s1*4 |
  s1*9 | % 32
  s1 | s2.. b'8~ | 4 ais b8 r r fis'~ | % 33a
  fis4 eis <cis fis>8 <a cis> s4 | s1*3 |
  s1 | s2. b4 | a4 8 b s2 | s1 |
  s1*2 | gis8 a e4 s2 | % 34a
  s2 b'8 4 c8~ | 8 b c d b a g s | g d16 cis d8 <d g>~<d fis> d4 cis8 | d d fis d c fis16 g a4~ |
  a8 s4 a8 16 b a b b4_\trill | c r8 e,16 d e8 d4 g8~ | 8 fis16 e d8 c' b d16 cis b a g fis |
  e8 fis16 g a8 s8 s2 | s1 | cis16 d e8 s4 <a, d>8 cis16 b <a cis>4 | % 35a
  s8 a4 e' s8 e8 <<{\vt e8} \new Voice {\vf fis16 gis}>> \vt | s8 e,4 e'8 e dis16 e fis8 e16 d | s4. b8~4 ais8 <fis ais> |
  fis8 <d gis> s2. | s1*3 |
  s1*9 | a'8 fis16 d a'8 16 16 <fis a>2\omit\fermata |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global \ov
  <d, d'>16 d' [ fis a fis d~ ] | <d d'>8 <cis cis'> <a a'> |
  <d d'>16 d fis a fis d~ | <d d'>8 <cis cis'> <a a'> |
  <d d'>8 <d fis> e | fis g16 fis e d |
  a'16 a [ cis e cis a ] | <a, a'>16 \clef treble d' [ fis a fis d ] | % 26b
  a'8 \clef bass \ov <a, e'> [ <g e'> ] | <fis fis'> <fis cis'> <e cis'> |
  <dis b'>8 <b' fis'> <a fis'> | <g b>16 fis g a b8 |
  <e, b'>8 <g b> <fis b> | <e b'> q <d b'> | % 26c
  <cis a'>8 <a' e'> <g e'> | <fis a>16 e fis g a8 |
  <d, a'>8 <d d'> <b b'> | <g g'>8 <e e'> <a a'> |
  b8 <b b'> <g g'> | <e e'> <cis cis'> <fis fis'> | % 26d
  <gis, gis'> <gis' gis'> <e e'> | <cis cis'> <a a'> <d d'> |
  <g g'>8 <a a'> <b b'> | <a a'>16 <g g'> <a a'>8 <a, a'> |
  <d d'>16 d' fis a fis d | a'8 r r | % 26e
  <d,, d'>16 d' [ fis a fis d ] | a'8 r r |
  <d,, d'>8 8 <e e'> | <fis fis'> <g g'>16 <fis fis'> <e e'> <d d'> | <a' a'>8 r r |
  <a, a'>8 r r | <a' a'> <e e'> <cis cis'> | <a a'> <cis cis'> <e e'> | % 27a
  <ais, ais'>8 <fis' fis'> <e e'> | <d d'>16 <cis cis'> <d d'> <e e'> <fis fis'>8 |
  <b, b'>8 <d d'> <cis cis'> | <b b'> q <a a'> |
  <gis gis'>8 <e' e'> <d d'> | <cis cis'>16 <b b'> <cis cis'> <d d'> <e e'>8 | % 27b
  <a, a'>16 a' [ cis e cis a ] | e'8 r r |
  a16 a, [ cis e cis a ] | e'8 r r | <a,, a'> q <b b'> |
  <cis cis'>8 <d d'>16 <cis cis'> <b b'> <a a'> | <e' e'>8 r r | % 27c
  <e, e'>8 r r | <e' e'> q <d d'> |
  <cis cis'>8 q <b b'> | <ais ais'> <fis' fis'> <e e'> |
  <d d'>16 <cis cis'> <d d'> <e e'> <fis fis'>8 | % 28a
  <b, b'>8 <d d'> <cis cis'> | <b b'> q <a a'> | <gis gis'> <e' e'> <d d'> |
  <cis cis'>16 <b b'> <cis cis'> <d d'> <e e'>8 |
  <a, a'>8 <a' a'> <fis fis'> | <d d'> <b b'> <e e'> |
  <fis, fis'>8 <fis' fis'> <d d'> | <b b'> <gis gis'> <cis cis'> | % 28b
  <d, d'>8 <d' d'> <b b'> | <gis gis'> <e e'> <a a'> |
  <d d'>8 <e e'> <fis fis'> | <e e'>16 <d d'> <e e'>8 <e, e'> |
  <a a'>8 a''16 [ gis a8~ ] |
  a8 gis e | a16 a, [ cis e cis a ] | e'8 gis' [ e ] | <a, e'> a g | % 28c
  g8 b b, | e e' d | cis fis fis, |
  b16 fis, [ b d b fis ] | g e a8 [ a, ] | d16 16 [ fis a fis d ] | % 29a
  g8 a a, | d <d d'> [ <d' d'>~ ] q <cis cis'> <a a'> |
  d8 <d d'>16 <cis cis'> <d d'>8~ |
  q8 <cis cis'> <a a'> | <d, d'> q <e e'> | % 29b
  <fis fis'> <g g'>16 <fis fis'> <e e'> <d d'> | <a' a'>16 a' [ cis e cis a ] |
  <a, a'>16 \clef treble d' [ fis a fis d ] |
  a'8 \clef bass <a,, a'> [ <g g'> ] | <fis fis'>8 q <e e'> |
  <dis dis'>8 <b' b'> <a a'> | <g g'>16 <fis fis'> <g g'> <a a'> <b b'>8 | % 29c
  <e, e'>8 <g g'> <fis fis'> | <e e'> q <d d'> | <cis cis'> <a' a'> <g g'> |
  <fis fis'>16 <e e'> <fis fis'> <g g'> <a a'>8 | d <d d'> <b b'> |
  <g g'>8 <e e'> <a a'> | b <b b'> <g g'> | <e e'> <cis cis'> <fis fis'> | % 30a
  <g, g'>8 <g' g'> <e e'> | <cis cis'> <a a'> <d d'> |
  <g g'>8 <a a'> <b b'> | <a a'>16 [ <g g'> ] <a a'>8 <a, a'> \section \time 4/4 |
  <d, d'>4 <d' d'> <c c'> <b b'> | <a a'> <d, d'> <g g'>2~ | q q~ | % 30b
  q4 \vo \crossStaff g''8 s a(d,) d(a') | a4 d, s2 |
  s1 | \ov <b, b'>1 | q | q2~8 <a' a'> q <g g'> | <a a'>2~8 <b b'> q(<a a'>) | % 30c
  <g g'>8(<fis fis'>) q(<e e'>) q(<d d'>) q(<c c'>) | % 31a
  q8(<b b'>) q(<a a'>) q <g g'>16 <fis fis'> <g g'>8 <a a'> |
  <b b'>2 <e, e'>~ | q \vt e'' | \vo
  b'8(c) b(a) a(g) g(fis) | fis(g) fis fis b(fis) fis(b) | % 31b
  e4 b \vt <e, fis'>8 fis fis(e) \ov | d(cis) cis(b) b(a) a(g) |
  <g g'>8(<fis fis'>) q(<e e'>) q <d d'>16 <cis cis'> <d d'>8 <e e'> | % 31c
  <fis fis'>2 b8(b') a(g) | fis(g) fis(e) d4 r8 d | g(a) b(a) g fis16 e fis8 g |
  \rh fis'8 d \lh a4~8 \ov d4 cis8 | b a gis e a fis d b | % 31d
  e4 cis8 a d cis b cis | d e fis fis, e d e e' |
  a,8 a'4 g16 fis e8 d cis a | d b g e a4 fis8 d | g fis e fis g a d b | % 32a
  a8 g a a' d, fis16 e d8 cis | b a gis e a fis <d d'> <b b'> | % 32b
  <e e'>4 <cis cis'>8 <a a'> <d d'> <cis cis'> <b b'> <cis cis'> |
  <d d'>8 <e e'> a fis e d e e' | a, cis16 b a8 g fis e' dis b | % 32c
  e,16 b' e d c b a g f a d c b a gis f |
  e16 gis a b c d c b a g fis a g8 c | % 33a
  b a b <b, b'> <e e'> <g g'>16 <fis fis'> <e e'>8 <d d'> |
  <cis cis'>8 <d d'>16 <e e'> <fis fis'>8 fis b <d' fis>16 [ <cis e> ] <b d>8 <a cis > |
  <gis b>8 a16 b cis8 <cis,, cis'> <fis fis'>4 r | % 33b
  <fis, fis'>4 r <b b'> r | q r <e e'> r | <e, e'> r <a a'> r |
  q4 r <d d'> r | <d, d'> r <g g'> <g' g'>~ | % 33c
  q8 <fis fis'>16 <e e'> <fis fis>8 <g g'> <a a'>4 <a, a'> |
  <d d'>8 <fis fis'>16 <e e'> <d d'>8 <cis cis'> <b b'> <cis cis'>16 <d d'> <e e'>8 <e, e'> |
  <a a'>4 d'8 b <e g>4 cis8 a | <d fis> cis b cis d e fis fis, | % 34a
  e8 d e e' a, a'4 g16 fis |
  e8 d cis a d b g e | a4 fis8 d g fis e fis | % 34b
  g8 a d, b' a g a a' | d, fis16 e d8 fis a g fis d |
  <g, d'>8 <e e'> <c' e> <a f'> \vo f' e f g | % 34c
  \ov <c, e>8 <b d> <a c> b c d g, <e c'> |
  \vo b'4 a g8 g b d |
  <g, g'>8 <e e'> <a a'> <a, a'> \vo d'8 16 16 8 8 | % 35a
  d8 16 16 8 8 \ov <g, d'>4 r8 <g g'>~ |
  q8 <e e'> <fis fis'> <g g'> <a a'>16 <g g'> <a a'>8 <a, a'> <a' a'> |
  <d, d'>8 fis'16 e d8 cis b e e, e' | a,8 cis'16 [ b ] a8 cis fis, a dis, b | % 35b
  e8 <g, g'>16 <fis fis'> <e e'>8 <d d'> <cis cis'> <d d'>16 <e e'> <fis fis'>8 <fis, fis'> |
  <b b'>4 \vo b'' \ov <b, b'> r | <e, e'> r <e, e'> r | % 35c
  \repeat tremolo 8 {a32 a'} \repeat tremolo 8 {a, a'} | d,4 r <d, d'> r |
  <g g'>4 r <e' e'> r | <e, e'> r <a a'> r | % 36a
  <fis' fis'> r <fis, fis'> r8 <fis' fis'> |
  <b b'>8(<a a'>) q(<g g'>) q(<fis fis'>) q(<e e'>) |
  <e e'>8(<d d'>) <e e'>(<a, a'>) <d d'>(<e e'>) <fis fis'>(<d d'>) | % 36b
  <e e'>8(<d d'>) <cis cis'>(<fis fis'>) <e e'>(<d d'>) <e e'>(<e, e'>) |
  <a a'>8 <a' a'>4 <g g'>16 <fis fis'> <e e'>8 <d d'> <cis cis'> <a a'> |
  <d d'>8 <b b'> <g g'> <e e'> <a a'>4 <fis fis'>8 <d d'> | % 36c
  <g g'>8 <d' d'> <g g'>4~8 <fis fis'>16 <e e'> <fis fis'>8 <g g'> |
  <a a'>8 a16 16 \vo 8 16 16 \ov <d,, d'>2\fermata |
}

pianoLHtwo = \relative {
  \global \vt
  s4.*100 |
  s1*3 | s4 g,2. | 2~ \vo <g g'>8 <g, g'> q <a a'>~ | % 30ab
  \ov q8 <b b'> q(<c c'>) q(<b b'>) <c c'>(<d d'>) | s1*4 |
  s1*4 | % 31a
  \vt e'1 | e | e2~ \once\hideNotes e8 s4. | s1 |
  s1*4 |
  a8 g a a, d s4. | s1*3 |
  s1*9 | % 32
  s1*11 |
  s1*7 | % 34ab
  s2 d4 b8 g | s1 | d8 c d d g4 r8 b |
  s2 d,4 r8 d' | a4 r8 d, s2 | s1*4 | s4 r s2 | s1*3 | % 35
  s1*9 | s4 a s2 |
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
    output-suffix = "single-sop1"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
    output-suffix = "single-sop2"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
    output-suffix = "singlepage-sop1"
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
    output-suffix = "singlepage-sop2"
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
    output-suffix = "midi-sop1"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopIMidi
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
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
    output-suffix = "midi-sop2"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopIIMidi
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
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
          \new Staff = piano \with {
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
