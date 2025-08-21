\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title        = "№ 21. Osanna (chorus)"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
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
  \partial 8
}

TempoTrack = {
  \tempo 4=90
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "141a" } s8 s4.*6
  \textMark \markup { \box "141b" }    s4.*6
  \textMark \markup { \box "142a" }    s4.*2
  \mark \markup\circle\bold O          s4.*5
  \textMark \markup { \box "142b" }    s4.*6
  \mark \markup\circle\bold P          s4.
  \textMark \markup { \box "143a" }    s4.*6
  \textMark \markup { \box "143b" }    s4.*6
  \textMark \markup { \box "144a" }    s4.*4
  \mark \markup\circle\bold Q          s4.*2
  \textMark \markup { \box "144b" }    s4.*7
  \textMark \markup { \box "145a" }    s4.*6
  \mark \markup\circle\bold R
  \textMark \markup { \box "145b" }    s4.*6
  \textMark \markup { \box "146a" }    s4.*7
  \textMark \markup { \box "146b" }    s4.*7
  \textMark \markup { \box "147a" }    s4.*2
  \mark \markup\circle\bold S          s4.*5
  \textMark \markup { \box "147b" }    s4.*5
  \mark \markup\circle\bold T          s4.*2
  \textMark \markup { \box "148a" }    s4.*7
  \textMark \markup { \box "148b" }    s4.*5
  \mark \markup\circle\bold U          s4.*2
  \textMark \markup { \box "149a" }    s4.*7
  \textMark \markup { \box "149b" }    s4.*7
  \textMark \markup { \box "150a" }    s4.*7
  \textMark \markup { \box "150b" }    s4.*7
  \textMark \markup { \box "150c" }    s4.*7
  \textMark \markup { \box "150d" }    s4.*8
}

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
  s8 s4.*12 |
  s4.*14 | % 142
  s4.*12 |
  s4.*13 |
  s4.*12 | % 145
  s4.*14 |
  s4.*14 |
  s4.*12 | s4 s8\p | s4. | % 148
  s4.*2 | s4 s8\f | s4.*3 | s4 s8\p | s4. | s8 s4\f | s4.*5 |
  s4.*29 |
}

sopranoI = \relative {
  \global
  d'8 | a' a a | d a r | R4.*3 | r8 r d |
  cis8(e16 d e cis | d8 cis16 d e cis | d8) cis16(b) a(g) | % 141b
  fis8 d d' | c16(b) a(g) r8 | r r a |
  a'8 g fis | e a, r | R4. | r8 r a | b16(a g b a c | % 142a
  b16 a b cis a b | cis e d fis e d |
  cis16 b cis d e fis | d e fis d e cis | d8) b fis' | e e, g | % 142b
  g8(a16 fis g8 | fis) a cis | d4.~ |
  d8(cis16 d e cis | fis8) e fis | d(e16 d e cis | % 143a
  d4.~ | 8) cis fis | d16(cis b cis d b |
  e8) fis16(e) fis8 | g4.~ | 8(fis16 e d c | b8)a b | % 143b
  g8(fis16 g a fis | g4.~ |
  g4.~ | 8) e a | d fis16(d) e(cis) | d8 d, r | R4.*2 | % 144a
  R4.*5 | r8 r a' | e' e e |
  a8 e r | R4. | r8 r fis, | cis'8 8 8 | fis cis r | R4. | % 145a
  r8 r d, | a' a a | d a r | R4.*3 |
  R4.*4 | r8 r d | b16(a g b a c | b a b cis ais b | % 146a
  cis16 b ais cis b d | cis4.~ | 4.~ | 8) 8 8 | b d fis | b, b r | r r b |
  b8 e, e' | cis a r | r r a | a a a | d a r | R4. | r8 r a' | % 147a
  fis8 d r | r r e | fis4.~ | 8 b, r | r r b | e g e | a,(cis16 d g8~ |
  g8) e a | fis16(e fis g a fis | d cis d e fis d | b8) e fis | % 148a
  e16(fis) g8 b, | e16(d e fis g e | cis b cis d e cis |
  a8) d cis | d a d | d b r | r r fis' | d e cis | d a d | d cis r | % 148b
  r8 d fis | fis e r | r r d | cis(e16 d e cis | d8 cis16 d e cis | % 149a
  d8) cis16(b) a(g) | fis8 d c' |
  c16(b) 8 r | r e a | fis(d cis) | d4 r8 | R4.*3 | % 149b
  R4.*3 |
  R4.*26 |
}

Oc = \lyricmode { O -- san -- na, }
oc = \lyricmode { o -- san -- na, }
osc   = \lyricmode { o -- san -- san -- na, }
oiec = \lyricmode { o -- san -- "na in" ex -- cel -- sis, }
oiep = \lyricmode { o -- san -- "na in" ex -- cel -- sis. }
osiec = \lyricmode { o -- san -- na in ex -- cel -- sis, }
osiep = \lyricmode { o -- san -- na in ex -- cel -- sis. }

wordsSopI = \lyricmode {
  \Oc \oc \oc \oc \oc \oiec
  \oiec \oiec % 142
  \oc \oiec \oc
  \oiec \oiec
  \oiec \oc \oc % 145
  \oc \oiec \oiec
  \oiec \oc \oc \oiec
  \oiec \oiec \oc \oiec \osiec % 148
  \oc \oc \osiep
}

MOc = \lyricmode { O san "na, " }
Moc = \lyricmode { o san "na, " }
Mosc   = \lyricmode { o san san "na, " }
Moiec = \lyricmode { o san "na in " ex cel "sis, " }
Moiep = \lyricmode { o san "na in " ex cel "sis. " }
Mosiec = \lyricmode { o san "na " "in " ex cel "sis, " }
Mosiep = \lyricmode { o san "na " "in " ex cel "sis. " }

wordsSopIMidi = \lyricmode {
  \MOc \Moc \Moc \Moc \Moc \Moiec
  \Moiec \Moiec % 142
  \Moc \Moiec \Moc
  \Moiec \Moiec
  \Moiec \Moc \Moc % 145
  \Moc \Moiec \Moiec
  \Moiec \Moc \Moc \Moiec
  \Moiec \Moiec \Moc \Moiec \Mosiec % 148
  \Moc \Moc \Mosiep
}

dynamicsAltoI = {
  \override DynamicTextSpanner.style = #'none
  s8 s4.*12 |
  s4.*14 | % 142
  s4.*12 |
  s4.*13 |
  s4.*12 | % 145
  s4.*14 |
  s4.*14 |
  s4.*12 | s4 s8\p | s4. | % 148
  s4.*2 | s4 s8\f | s4.*3 | s4 s8\p | s4. | s8 s4\f | s4.*5 |
  s4.*29 |
}

altoI = \relative {
  \global
  d'8 | a' a a | d a r | R4.*3 | r8 r a |
  a4.~ | 8 8 8 | 8(g fis | d) fis a | g d r | r r a' |
  a8 cis fis, | a e e | fis16(e d fis e g | fis e fis g e fis | % 142a
  g8 d16 g fis a | g fis g a fis g | e8) a b |
  e,8 a cis | fis,4.~ | 8 16(e) fis(gis) | a4.~ | a~ | 8 d a | 4.~ | % 142b
  a8 a a | a a cis | b cis ais | b4.~ | 8 ais cis b8(fis16 e fis d | % 143a
  g8) a16(g) a8 | b4.~ | 8(a16 g a fis | g8) fis8 8 | e e dis | e4.~ |
  e4.~ | 8 cis e | a8 16(fis) g(e) | fis8 8 r | R4.*2 | % 144a
  R4.*5 | r8 r a, | e' e e |
  a8 e r | R4. | r8 r fis | cis' cis, cis | fis cis r | R4. | % 145a
  r8 r d | a' a a | d a r | R4.*3 |
  R4.*2 | r8 r a | fis16(e d fis e g | fis e fis g e fis | % 146a
  g8 d16 g fis a | g4.~ |
  g4.~ | 8) g gis | fis ais, cis | fis8 8 r | r r fis | d b d | e e dis | % 146b
  gis8 b gis | e cis r | r r a' | a a a | d a r | R4. | r8 r a | % 147a
  a8 fis r | r r a | 4.~ | 8 fis r | r r b | b b b | e,(a16 g a8~ |
  a8) a r | R4. | r8 r fis | g g a | b b r | R4. | r8 r e, | % 148a
  fis8 8 g | a a a | g g r | r r cis | b b a | a fis fis | fis e r |
  r8 fis a | a g r | r r a | 4.~ | a~ | 8 g e | d fis a | % 149a
  a16(g) 8 r | r a a | 4. | 4 r8 | R4.*3 |
  R4.*29 | % 150
}

wordsAltoI = \lyricmode {
  \Oc \oc \oc \oc \oc \oiec
  \oiec \oiec \oiec % 142
  \oc \oc \oiec \oc \oc
  \oiec \oiec
  \oiec \oc \oc % 145
  \oc \oiec \oiec \oiec
  \oiec \oc \oc \oiec
  \oiec \oiec \oc \oiec \osiec % 148
  \oc \oc \osiep
}

wordsAltoIMidi = \lyricmode {
  \MOc \Moc \Moc \Moc \Moc \Moiec
  \Moiec \Moiec \Moiec % 142
  \Moc \Moc \Moiec \Moc \Moc
  \Moiec \Moiec
  \Moiec \Moc \Moc % 145
  \Moc \Moiec \Moiec \Moiec
  \Moiec \Moc \Moc \Moiec
  \Moiec \Moiec \Moc \Moiec \Mosiec % 148
  \Moc \Moc \Mosiep
}

dynamicsTenorI = {
  \override DynamicTextSpanner.style = #'none
  s8 s4.*12 |
  s4.*14 | % 142
  s4.*12 |
  s4.*13 |
  s4.*12 | % 145
  s4.*14 |
  s4.*14 |
  s4.*12 | s4 s8\p | s4. | % 148
  s4.*2 | s4 s8\f | s4.*3 | s4 s8\p | s4. | s8 s4\f | s4.*5 |
  s4.*29 |
}

tenorI = \relative {
  \global
  d8 | a' a a | d a r | R4.*3 | r8 r fis' |
  e8(g16 fis g e | fis8) e e | d d cis | a a d | d b r | r r cis |
  d8 e a, | cis8 8 r | R4.*5 | % 142a
  r8 r cis | d16(cis b d cis e | d cis d e cis d | e d cis e d fis | % 142b
  e16 d e fis d e | fis e d fis e g | fis4.~ |
  fis8) e e | d cis fis | 8 g fis | 4.~ | 8 8 8 | 16(e d cis b d | % 143a
  c16 b) c(e) d8 | 4.~ | d~ | 8 8 b | b c b | b cis d |
  cis16(d e cis d b | cis8) e cis | a a a | a a r | R4.*2 | % 144a
  R4.*5 | r8 r a | e' e e |
  a8 e r | R4. | r8 r fis, | cis'8 8 8 | fis cis r | R4. | % 145a
  r8 r d, | a' a a | d a r | R4.*3 |
  r8 r e' | cis16(b a cis b d | cis b cis d b cis | % 146a
  d8 a16 d cis e | d4.~ | d~ | 8) d d |
  cis8 e g | cis, cis r | r r cis | ais fis ais | b b r | R4. | r8 r b | % 146b
  b8 e e | e a r | r r a, | a a a | d a r | R4. | r8 r e' | % 147a
  d8 a' r | r r cis, | c(c a | fis) b r | r r e | e b e | cis(a16 cis e8~ |
  e8) e r | R4. | r8 r d | d b a | e' e r | R4. | r8 r cis | % 148a
  cis8 a g | d' d fis | d d r | r r fis | fis e e | fis d d, | a'16(g a b cis a |
  d16 cis d e d cis | b c b a g fis | e8) e' fis | % 149a
  e8(g16 fis g e | fis8) e e | d d cis | a a d |
  d8 d r | r e e | d4(e8) | fis4 r8 | R4.*3 | % 149b
  R4.*29 | % 150
}

wordsTenorI = \lyricmode {
  \Oc \oc \oc \oc \oc \oc \oiec
  \oiec % 142
  \oc \oc \oiec \oc \oiec
  \oiec \oiec
  \oiec \oc \oc % 145
  \oc \oiec \oiec \oiec
  \oiec \oc \oc \oiec
  \oiec \oiec \oc \oiec \oc % 148
  \oc \oc \oc \osiep
}

wordsTenorIMidi = \lyricmode {
  \MOc \Moc \Moc \Moc \Moc \Moc \Moiec
  \Moiec % 142
  \Moc \Moc \Moiec \Moc \Moiec
  \Moiec \Moiec
  \Moiec \Moc \Moc % 145
  \Moc \Moiec \Moiec \Moiec
  \Moiec \Moc \Moc \Moiec
  \Moiec \Moiec \Moc \Moiec \Moc % 148
  \Moc \Moc \Moc \Mosiep
}

dynamicsBassI = {
  \override DynamicTextSpanner.style = #'none
  s8 s4.*12 |
  s4.*14 | % 142
  s4.*12 |
  s4.*13 |
  s4.*12 | % 145
  s4.*14 |
  s4.*14 |
  s4.*14 | % 148
  s4.*2 | s4 s8\f | s4.*3 | s4 s8\p | s4. | s8 s4\f | s4.*5 |
  s4.*29 |
}

bassI = \relative {
  \global
  d8 | a' a a | d a r | R4.*3 | r8 r d, |
  a'8 a a | d(a16 fis g e | fis8) g a | d, d fis | f f, r | r r g' |
  fis8 e d^\markup{\with-color "red" \large\bold EK} | a'^\markup{\with-color "red" \large\bold CHEL} a^\markup{\with-color "red" \large\bold SIS} r | R4.*3 | r8 r g | a16(g fis a gis b | % 142a
  a16 gis a b gis ais | b8 fis16 b ais cis | b a b cis a b | % 142b
  cis16 b a cis b d | cis b cis d b cis | d8) fis, a | d,16(cis d e fis g |
  a16 g a b cis a | d8) a ais | b e, fis | b,16(ais b cis d e | % 143a
  fis16 e fis gis ais fis | b8) b, b' |
  b8 a d, | g,16(fis g a b c | d c d e fis d | % 143b
  g8) d dis | e a, b | e16(fis e d cis b |
  a8) cis e | a a, g' | fis16 g a8 a, | d d r | R4.*2 | % 144a
  R4.*5 | r8 r a | e' e e |
  a8 e r | R4. | r8 r fis, cis'8 8 8 | fis cis r | R4. | % 145a
  r8 r d | a' a a | d a r | R4. | r8 r b | g16(fis e g fis a |
  g16 fis g a fis gis | a8 e16 a gis b | a4.)~ | a~ | 8 8 8 | g b d | g, g r | % 146a
  r8 r g | e cis e | fis8 8 r | R4.*3 | r8 r b, |
  e8 gis e | a a, r | r r a' | a a a | d a r | R4. | r8 r a | % 147a
  d8 d, r | r r a' | c(a fis | dis8) 8 r | r r b' | g e g | a4.~ |
  a8 a, r | R4. | r8 r a' | g g fis | e e r | R4. | r8 r g | % 148a
  fis8 8 e | d fis d | g g, r | r r fis' b g a | d d, r | R4. |
  R4.*2 | r8 r d | a' a a | d a g | fis(g a | d,) d fis | % 149a
  g8 g, r | r a' cis | d(fis, a) | d,4 r8 | R4.*3 |
  R4.*29 | % 150
}

wordsBassI = \lyricmode {
  \Oc \oc \oc \oc \oc \oc \oiec
  \oiec % 142
  \oc \oc \oiec \oc \oiec
  \osiec \oiec
  \oiec \oc \oc \oc % 145
  \oiec \oiec \oiec
  \oiec \oc \oc \oiec
  \oiec \oiec \oc \oiec % 148
  \oiec \oc \osiep
}

wordsBassIMidi = \lyricmode {
  \MOc \Moc \Moc \Moc \Moc \Moc \Moiec
  \Moiec % 142
  \Moc \Moc \Moiec \Moc \Moiec
  \Mosiec \Moiec
  \Moiec \Moc \Moc \Moc % 145
  \Moiec \Moiec \Moiec
  \Moiec \Moc \Moc \Moiec
  \Moiec \Moiec \Moc \Moiec % 148
  \Moiec \Moc \Mosiep
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
  s8 s4.*12 |
  s4.*14 | % 142
  s4.*12 |
  s4.*13 |
  s4.*12 | % 145
  s4.*14 |
  s4.*14 |
  s4.*13 | s4 s8\p | % 148
  s4.*2 | s4 s8\f | s4.*4 | s4 s8\p | s4 s8\f | s4.*5 |
  s4.*29 |
}

sopranoII = \relative {
  \global
  d'8 | a' a a | d a r | R4.*3 | r8 r d |
  e8(cis16 b cis a | fis'16 g) a8 cis, | d(cis16 b a g | fis8) d r | r r e' | d16(cis) b(a) e'8 |
  fis8 e d | cis16(d) e8 r | R4.*5 | % 142a
  R4.*6 | r8 r d, |
  a'8 a a | d a r | R4. | r8 r b, | fis'8 8 8 | b fis r | % 143a
  R4. | r8 r g | d' d d | g d r | R4.*2 |
  R4.*5 | r8 r gis, | % 144a
  a16(gis fis a gis b | a gis a b gis a | b a gis b a cis | % 144b
  b16 a b cis a b | cis b a cis b d | cis4.)~ | 8 b e |
  cis8 b cis | a(b16 a b gis | a4.)~ | 8 gis cis | a16(gis fis gis a fis | b8) cis16(b) cis8 | % 145a
  d4.~ | 8(cis16 d e cis | d8) cis8 8 | b b ais | b b r | r r dis |
  e8 b r | r r e | e cis r | r r cis | d a r | r r d | d b g' | % 146a
  e16(d cis e d fis | e d e fis d e | cis b cis fis eis gis | % 146b
  fis4.)~ | 4.~ | 8 8 8 | e gis, b |
  e,8 e b' | cis e16(cis) d(b) | cis8 a r | R4. | r8 r a | a a a | e' a, r | % 147a
  r8 r cis | d fis e | fis4.~ | 16(e fis g fis a | g8) e r | r r b | cis e e |
  a8 cis, r | r r a | b16(a b cis d8)~ | 8 e fis | g16(fis) e8 r | % 148a
  r r g, a16(g a b cis8)~ |
  cis8 d e | fis16(e) d8 r | r r e | e cis a | fis' g e | d16(e) fis8 r | r r e | % 148b
  e8 d r | r e g | g fis16(e) fis(d) | e(d cis b cis a | % 149a
  fis'16 g) a8 cis, | d(cis16 b a g | fis8) d r |
  r8 r d' | d16 cis16 8 e | fis(g16 fis e fis) | d4 r8 | R4.*3 | % 149b
  R4.*29 |
}

wordsSopII = \lyricmode {
  \Oc \oc \oc \oc \oc \oiec
  \oiec % 142
  \oiec \oiec
  \oiec
  \oc \oiec \oiec \oc % 145
  \oc \oc \oc \oiec \oc
  \oiec \oiec \oiec \oiec
  \oiec \oiec \oc \oiec \osiec % 148
  \oc \oc \osiep
}

wordsSopIIMidi = \lyricmode {
  \MOc \Moc \Moc \Moc \Moc \Moiec
  \Moiec % 142
  \Moiec \Moiec
  \Moiec
  \Moc \Moiec \Moiec \Moc % 145
  \Moc \Moc \Moc \Moiec \Moc
  \Moiec \Moiec \Moiec \Moiec
  \Moiec \Moiec \Moc \Moiec \Mosiec % 148
  \Moc \Moc \Mosiep
}

dynamicsAltoII = {
  \override DynamicTextSpanner.style = #'none
  s8 s4.*12 |
  s4.*14 | % 142
  s4.*12 |
  s4.*13 |
  s4.*12 | % 145
  s4.*14 |
  s4.*14 |
  s4.*13 | s4 s8\p | % 148
  s4.*2 | s4 s8\f | s4.*4 | s4 s8\p | s4 s8\f | s4.*5 |
  s4.*29 |
}

altoII = \relative {
  \global
  d'8 | a' a a | d a r | R4.*3 | r8 r fis |
  a8 e a | 16(b cis8 e, | a) g e | d a r | r r b' | a e cis |
  a8 e' a | 16(b) cis8 r | R4.*5 | % 142a
  R4.*6 | r8 r d, |
  a'8 8 8 | d a r | R4. | r8 r b, | fis'8 8 8 | b fis r | % 143a
  R4. | r8 r g | d' d, d | g d r | R4.*2 |
  R4. | r8 r e fis16(e d fis e g | fis e fis gis e fis | % 144a
  gis16 b a cis b a | gis fis gis a b cis |
  a16 b cis a b gis | a8) fis cis' | b b, d | d(e16 cis d8 | % 144b
  cis) e gis | a4.~ | 8(gis16 a b gis |
  a8) gis8 8 | fis gis eis | fis4.~ | 8 eis cis | cis'16(b a gis fis a | g fis) g b a8 | % 145a
  a4.~ | a~ | 8 8 fis | 8 g fis | 8 8 r | r r b |
  b8 g r | r r gis | e e r | r r a | a fis r | r r fis | d d r | % 146a
  R4. | r8 r cis' | ais16(gis fis ais gis b | % 146b
  ais16 gis ais b gis ais | f e f b ais cis | b4.)~ | b~ |
  b8 b b | a cis16(a) b(gis) | a8 e r | R4. | r8 r a | a a a | e' a, r | % 147a
  r8 r a | a a a | 4.~ | 8(fis b~ | b) g r | r r g | g g e |
  e8 a a | a fis8 8 | 8 d r | R4. | r8 r g | g e e | e cis r | % 148a
  R4.*2 | r8 r b' | a a cis, | d g g | fis16(g) a8 r | r r g |
  g8 fis r | r b b | b(a16 g a8)~ | a e a | 16(b cis8 e, | a) g e | d a r | % 149a
  r8 r b' | 16 a a8 a | a(b16 a g a) | fis4 r8 | R4.*3 |
  R4.*29 | % 150
}

wordsAltoII = \lyricmode {
  \Oc \oc \oc \oc \oc \oc \oiec
  \oiec % 142
  \oiec \oiec
  \oiec \oiec
  \oc \oc \osiec \oiec \oc % 145
  \oc \oc \oc \oc
  \oiec \oiec \oiec \oiec
  \oc \oc \oiec \oc \oiec \osiec % 148
  \oc \oc \osiep
}

wordsAltoIIMidi = \lyricmode {
  \MOc \Moc \Moc \Moc \Moc \Moc \Moiec
  \Moiec % 142
  \Moiec \Moiec
  \Moiec \Moiec
  \Moc \Moc \Mosiec \Moiec \Moc % 145
  \Moc \Moc \Moc \Moc
  \Moiec \Moiec \Moiec \Moiec
  \Moc \Moc \Moiec \Moc \Moiec \Mosiec % 148
  \Moc \Moc \Mosiep
}

dynamicsTenorII = {
  \override DynamicTextSpanner.style = #'none
  s8 s4.*12 |
  s4.*14 | % 142
  s4.*12 |
  s4.*13 |
  s4.*12 | % 145
  s4.*14 |
  s4.*14 |
  s4.*14 | % 148
  s4 s8\p | s4. | s4 s8\f | s4.*4 | s4 s8\p | s4 s8\f | s4.*5 |
  s4.*29 |
}

tenorII = \relative {
  \global
  d8 | a' a a | d a r | R4.*3 | r8 r a |
  cis8 a e' | d(e a | d,) d cis | a fis r | r r e' | e cis e |
  d8 g, d' | e e r | R4.*5 | % 142a
  R4.*6 | r8 r d, |
  a'8 a a | d a r | R4. | r8 r b | fis' fis,8 8 | b fis r | % 143a
  R4. | r8 r g | d' d d | g d r | R4. | r8 r b |
  cis16(b a cis b d | cis b cis d b cis | d8 a16 d cis e | % 144a
  d16 cis d e cis d | b8) e fis | b, e gis |
  cis,4.~ | 8 16(b) cis(a) | e'4.~ | e~ | 8 a e | 4.~ | 8 8 8 | % 144b
  e8 e cis | cis d cis | 4.~ | 8 8 8 | 16(d cis b cis a | d8) e16(d) e8 | % 145a
  fis4.~ | 8 e e | fis e fis | d cis16(d) e(cis) | d8 d r | r r fis |
  e8 e r | r r b | cis a r | r r e' | fis d r | r r a | b g r | % 146a
  R4.*3 | r8 r fis' | d16(cis b d cis e | d cis d e cis d | b a b e dis fis |
  e4.)~ | 8 8 8 | 8 cis r | R4. | r8 r a | a a a | e' a, r | % 147a
  r8 r e' | a, d cis | d(a fis | fis' dis fis | e) b r | r r e | e cis8 8 |
  cis8 e e | d a a | d b r | R4. | r8 r e | e a, b | cis8 8 r | % 148a
  R4.*2 | r8 r g' | e e fis | 8 b, cis | a d r | R4. |
  r8 r d, | g16(fis g a b g | cis d cis b a b | cis8) a e' | % 149a
  d8(e a | d,) d cis | a fis r |
  r8 r e' | e e cis | a4. | 4 r8 | R4.*3 | % 149b
  R4.*29 | % 150
}

wordsTenorII = \lyricmode {
  \Oc \oc \oc \oc \oc \oc \oiec
  \oiec % 142
  \oiec \oiec \oiec
  \oiec \oiec
  \oc \oc \oiec \oc \oiec \oc % 145
  \oc \oc \oc \oiec
  \oiec \oiec \oiec
  \oc \oc \oiec \oc \oiec % 148
  \oc \oc \oc \oiep
}

wordsTenorIIMidi = \lyricmode {
  \MOc \Moc \Moc \Moc \Moc \Moc \Moiec
  \Moiec % 142
  \Moiec \Moiec \Moiec
  \Moiec \Moiec
  \Moc \Moc \Moiec \Moc \Moiec \Moc % 145
  \Moc \Moc \Moc \Moiec
  \Moiec \Moiec \Moiec
  \Moc \Moc \Moiec \Moc \Moiec % 148
  \Moc \Moc \Moc \Moiep
}

dynamicsBassII = {
  \override DynamicTextSpanner.style = #'none
  s8 s4.*12 |
  s4.*14 | % 142
  s4.*12 |
  s4.*13 |
  s4.*12 | % 145
  s4.*14 |
  s4.*14 |
  s4.*14 | % 148
  s4.*2 | s4 s8\f | s4.*4 | s4 s8\p | s4 s8\f | s4.*5 |
  s4.*29 |
}

bassII = \relative {
  \global
  d8 | a' a a | d a r | R4.*3 | r8 r d, |
  a'8 a a | d(a16 fis g e | fis8) g a | d, d r | r r gis | a a, g' |
  fis8 e d | a' a, r | R4.*5 | % 142a
  R4.*6 | r8 r d |
  a'8 a a | d a r | R4. | r8 r b, fis'8 8 8 | b fis r | % 143a
  R4. | r8 r g, | d' d d | g d r | R4.*2 |
  R4.*3 | r8 r d | e16(d cis e dis fis | e dis e fis dis eis | % 144a
  fis8 cis16 fis eis gis | fis e fis gis e fis | gis fis e gis fis a | % 144b
  gis16 fis gis a fis gis | a8) cis, e |
  a,16(gis a b cis d | e d e fis gis e |
  a8) e eis | fis b, cis | fis16(eis fis gis a b | % 145a
  cis8 cis,16 dis eis cis | fis4.)~ | 8 e a, |
  d16(cis d e fis g | a g a b cis a | d8) a ais | b e, fis | b b, r | r r b' | % 145b
  e8 e, r | r r e | a a, r | r r a' | d d, r | r r d | g g, r | % 146a
  R4.*5 | r8 r b' | gis16(fis e gis fis a |
  gis16 fis gis a fis gis | a8) e16 a gis(b) | a8 a a | 4.~ | a~ | 8 8 8 | e' a, r | % 147a
  r8 r g | fis d a' | c(fis, a | dis16 cis dis e cis dis | % 147b
  e8) e, r | r r e | a a, a |
  a'8 a cis | d d, cis | b b' r | R4. | r8 r d | cis cis, b | a a' r | % 148a
  R4.*2 | r8 r e | a a, fis' | b g a | fis d' r | R4. |
  R4.*2 | r8 r d, | a' a a | d a g | fis(g a) | d, d r | % 149a
  r8 r gis | a a, cis | d(fis a) | d,4 r8 | R4.*3 |
  R4.*29 | % 150
}

wordsBassII = \lyricmode {
  \Oc \oc \oc \oc \oc \oc \oiec
  \oiec % 142
  \oiec \oiec
  \oiec
  \oc \oiec \oiec \oc % 145
  \oc \oc \oc \osiec
  \oiec \oiec \oiec
  \oc \oc \oiec \oc \oiec % 148
  \oiec \osc \oiep
}

wordsBassIIMidi = \lyricmode {
  \MOc \Moc \Moc \Moc \Moc \Moc \Moiec
  \Moiec % 142
  \Moiec \Moiec
  \Moiec
  \Moc \Moiec \Moiec \Moc % 145
  \Moc \Moc \Moc \Mosiec
  \Moiec \Moiec \Moiec
  \Moc \Moc \Moiec \Moc \Moiec % 148
  \Moiec \Mosc \Moiep
}

pianoRHone = \relative {
  \global \ov
  r8 | R4. | r8 <fis'' a>16 <d fis> <e g> <cis e> | \vo
  fis16 e a fis g e | fis g <fis a> <d fis> <e g> <cis e> |
  s8 d' a | a16 g fis e <d a'> fis |
  a4 8 | 4 8 | \ov <d, fis a>8 <d b'> <e g a cis> | % 141b
  <fis a d>16 <e g cis> <fis a d>8 r | R4. | r8 r \vo a |
  a8 16 g a b | cis8 a r | \ov r <fis a d> <e a cis> | % 142a
  <fis a d>8 <d, fis a> [ <d fis a d> ] | <d g> <d g b d> [ <d fis a c> ] |
  <d g b> <e' g b e> [ <e g b d> ] | <e a cis> <d, fis a d> [ <d gis b> ] |
  <e a cis>8 <a cis e> [ <ais cis fis> ] | % 142b
  <fis b d> <fis b d fis> [ <fis ais cis e> ] |
  <fis b d> <b d> [ <b fis'> ] | <a e' a> <cis, e a> [ <d d'> ] |
  <a' a'>8 8 8 | <d d'> <a a'>16 fis' q e |
  \vo fis16 e fis g a8~ |
  a16 b a g a e | fis g a g fis e | d e cis d e cis | % 143a
  d16 cis d e fis8~ | 16 g fis e fis cis | d cis b cis d fis |
  e16 g fis e fis a | g a b c d8~ | 8 <d, fis>16 <c e> d8~ | % 143b
  d16 e fis g a fis | g e c'8 dis, | e16 d e fis g e |
  a8 g g | g \ov <e, cis' e> [ <cis e a> ] | % 144a
  <d a' d>8 <d fis a> [ <cis e g> ] | <a d fis> <b' d fis> [ <d fis b> ] |
  <e gis>8 <cis e a> <a fis'> | <gis b e> <e gis b> [ <eis gis cis> ] |
  <cis fis a>8 <cis' a' cis> [ <cis eis b'> ] | % 144b
  <cis a'>8 <fis, a> [ <fis cis' fis> ] |
  <b e>8 <e, b'> [ a ] | \vo e'8 16 16 16 16 | a8 e16 cis d b |
  cis16 b cis d e8 | 16 fis e d e b |
  cis16 d e d cis b | a b gis a b gis | a gis a b cis8~ | % 145a
  cis16 d cis b cis gis | a gis fis gis a cis | b d cis b cis e |
  d16 e fis g a8~ | a cis,16 d e cis | d b cis d e cis | % 145b
  s16 b g'8 cis, | b16 cis d e fis d | g8 \ov <b, g'>16 [ e <a, fis'> dis ]
  <b e g b>8 <e, b' e> [ <e gis b> ] | % 146a
  <a cis e a> <e' cis'>16 a <d, b'> gis | <a, cis e a>8 <a e' a> <a cis e> |
  <a d fis>8 <a fis'>16 d <g, e'> cis | <a d fis a>8 <d, a' d> [ <d fis a> ] |
  <g b d g>8 <d' b'>16 [ g <c, a'> fis ] | <b, g'>8 <g d' g> [ <g b d> ] |
  <g e'>8 16 cis <fis, d'> b | <e, cis'>8 <e g cis> [ <e gis e'> ] | % 146b
  <fis ais cis fis>8 <cis' ais'>16 [ fis <b, gis'> eis ] |
  <fis, ais cis fis>8 <fis cis' fis> [ <fis ais cis> ] |
  <fis b d>8 <fis' d'>16 [ b <e, cis'> ais ] |
  <b, d fis b>8 <d, fis b> [ <fis b d> ] |
  <e gis b e>8 <b' gis'>16 [ e <a, fis'> dis ] |
  <e, gis b e>8 <e b' e> [ <e gis b e> ] | % 147a
  \vo cis'16 b a cis b d | cis b cis d a'8 | fis16 e fis g e fis |
  fis16 e fis g e fis | g fis e g fis a | s4 a8 |
  a8 a a | <a d> a16 fis g e | fis8 8 8 | c' b16 g a fis | % 147b
  g8 e e | e' d16 cis d b | cis8 a a |
  a8 g16 fis g e | fis e fis g a fis | d cis d e fis d | b8 b' a | % 148a
  <e g>16 <dis fis> e fis g e | a d, e fis g e | cis b cis d e cis |
  a8 a' g | fis16 [ e d8 ] <c fis>8~ | fis8 e g~ | g fis a | % 148b
  fis8 g16 fis e fis | d4 \ov r8 | R4. |
  R4.*2 | r8 r \vo a' | 4. | 4 s8 | \ov <d, fis a> <d b'> <e g a cis> | % 149a
  <fis a d>16 <e g cis> <fis a d>8 r |
  R4. | r8 r \vo <e a> | a <g b>16 <fis a> <e g> <fis a> | % 149b
  fis4 \ov <d, d'>8 | <a' a'>8 8 8 | <d d'> a'16 fis g e | fis8 <fis, fis'> q |
  \vo s4 a'8 | fis8 d16 e fis g | a4.^\markup{\with-color "red" \large\bold SIT} | 8 cis d | % 150a
  e8 a, g | fis16 e d fis e g | <d fis> <cis e> <d fis> <e g> e <d fis> |
  g16 fis e g fis a | <e g> <d fis> <e g> <fis a> <d fis> <e g> | % 150b
  <fis a>8 a a | \ov <d, fis a d> a'16 fis g e | \vo <d fis>8 fis8 8 |
  \ov <c fis a c>8 b'16 g a fis | \vo <e g>8 e e |
  <e g b e>8 <b' d>16 <a cis> <b d> <g b> | % 150c
  <e g cis>8 a [ a ] | a g16 fis g e | fis e fis g e fis |
  \ov <fis, d'> <e cis'> <fis d'> <g e'> <a fis'> <fis d'> |
  \vo b8 b' a | g16 fis s4 |
  \vo a8 e16 [ fis g e ] | cis b cis d e cis | a8 a' g | % 150d
  fis16 e d8 fis~ | 8 e <e g>~ | 8 fis a | fis g16 fis e fis |
  \ov <fis, a d>4.\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s8 | s4.*2 | d''8 d cis | d16 [ e ] a,8 8 |
  <d fis>16 <e g> <fis a> <d fis> <e g> <cis e> | <d fis>8 a a |
  <cis e>16 d q fis q g | fis d <cis e> <d fis> e <cis g'> | s4.*3 | s4 <cis e>8 | % 141b
  <a d>8 <cis e> <d fis> | <cis e> q r | s4.*11 | a8 a d | % 142
  <d fis>8 <cis e> cis | a16 b cis8 8 | b g <fis ais> | % 143a
  <fis b> [ fis ] <b d>~ | d <ais cis> fis | fis b b |
  g8 a <a d> | <b d> r <g' b>~ | 8 a,16 g a cis | % 143b
  b8 a b | b e a, | g cis d |
  a8 e e | e s4 | s4.*4 | % 144a
  s4.*3 | b'8 b a16 b | cis8 a gis | a4 <a cis>8~ | 8 <gis b> e |
  e8 gis16 fis gis8 | fis d <cis eis> | <cis fis> <fis a>4~ | % 145a
  q8 <eis gis> cis | cis fis fis | d e16 d <e a>8 |
  <fis a>8 a <a d>~ | q a a | <fis a>16 b a8 fis | 8 b ais | % 145b
  b8 fis b | <b e> s4 |
  s4.*14 | % 146
  s4. | e,16 d cis8 d | e e b'16 cis | d8 fis, a | d16 cis d e cis d | % 147a
  e8 a, d | <e g>16 <d fis> <e g> <fis a> <d fis> <e g> |
  fis16 d fis d e cis | d8 a a | 16 b c b c a | <c fis>8 b b | % 147b
  b16 a g b a c | g'8 8 <e g> | q cis16 e d fis |
  e8 cis a | a d d | d b b | b8 16 cis dis b | % 148a
  b16 a g a b8 | <a e'> a b | e, a16 b e,8~ |
  e8 a16 b cis a | d8 a16 g a fis | c' b e cis d b | % 148b
  cis16 a fis' d e cis | d8 <b e> <g a cis> | <fis a>4 s8 | s4. |
  s4.*2 | s4 <d' fis>8 | <cis e>16 d q fis q g | % 149a
  fis16 d q <d fis> e <cis g'> | s4.*2 |
  s4. | s4 cis8 | <d fis> d cis | <a d>4 s8 | s4.*3 | % 149b
  <a a'>8 fis'16 d e cis | <a d>8 d d | <d fis> <e g> <d fis> | % 150a
  d16 fis e g fis a | cis a e8 <a, e'> | <a d> q <a cis> | a4 8 |
  <a e'>8 a <a d> | a r a | d16 e <a, fis'> d <a e'> cis | % 150b
  s4. | a16 b c b c a | s4. | b16 a g b a c |
  s4. | s8 cis16 e d fis | e8 r r | d <a d> q | s4. | % 150c
  b16 a b cis dis b | <b e> <a dis> <g e'> <a fis'> <b g'> <g e'> |
  e'16 [ d ] a8 b | s a16 b e,8 | <cis e>8 a'16 b cis a | % 150d
  <a d>8 a16 g <a c> fis | c' b e cis d b |
  cis16 a cis d e cis | d8 <b e> <g cis> | s4. |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s8 | s4.*91 |
  s4.*12 | s8 s4\p | s4. | % 148
  s4.*2 | s4 s8\f | s4.*3 | s8 s4\p | s4. | s8 s4\f | s4.*5 |
  s4.*29 |
}

pianoLH = \relative {
  \global \ov
  r8 | r <a, a'>16 <fis fis'> <g g'> <e e'> | <fis fis'>8 <d d'> <a' a'> |
  <d d'>8 <fis, fis'> <a a'> | \repeat unfold 2 {<d, d'> <fis, fis'> <a a'> |}
  d8 <d d'>16 <e e'> <fis fis'> d' |
  <a a'>8 8 8 | <d d'> <a a'>16 fis' <g, g'> e' | % 141b
  <fis, fis'>8 <g g'> <a a'> | <d, d'> d16 e fis d |
  g8 <g g'>16 <fis fis'> <gis gis'> e' | <a, a'>8 a16 fis g e |
  fis8 <e e'> <d d'> | a' <a a'>16 <b b'> <cis cis'> a' | % 142a
  <d, d'>8 <fis, fis'> <a a'> | <d, d'> d' c | b <b, b'> <d d'> |
  <g, g'> <g' g'> <e e'> | <a a'> q q |
  q8 <g g'> <fis fis'> | <b b'> <d, d'> <fis fis'> | b16 a b cis a b | % 142b
  cis16 b a cis b d | cis b cis d b cis | d8 fis, a | d,16 cis d e fis g |
  a16 g a b cis a | d8 a ais | b <e, e'> <fis fis'> | % 143a
  <b, b'>16 ais' b cis d e | <fis, fis'> e' fis gis ais fis |
  <b, b'>8 <b, b'> q |
  q8 <a a'> d | g16 fis g a b c | <d, d'>  c' d e fis d | % 143b
  <g, g'>8 <d d'> <dis dis'> | <e e'> <a, a'> <b b'> |
  <e e'>16 <fis fis'> <e e'> <d d'> <cis cis'> <b b'> |
  <a a'>8 <cis cis'> <e e'> | <a a'> a g | fis <fis fis'> <a a'> | % 144a
  d8 <d, d'> <b b'> | <e e'> q q | q <d d'> <cis cis'> |
  <fis fis'>8 <a, a'> <cis cis'> | fis16 e fis gis e fis | % 144b
  gis16 fis e gis fis a | gis fis fis a fis gis | a8 <cis, cis'> <e e'> |
  <a, a'>16 gis' a b cis d | <e, e'> d' e fis gis e |
  <a, a'>8 <e e'> <eis eis'> | <fis fis'> <b, b'> <cis cis'> | % 145a
  fis16 eis fis gis a b | cis b cis dis eis cis |
  fis8 fis, <fis fis'>~ | 8 <e e'> <a, a'> |
  d16 cis d e fis g | a g a b cis a | d8 <a a'> <ais ais'> | % 145b
  <b b'>8 <e, e'> <fis fis'> | b16 ais b cis d b | <e, e'>8 <g g'> <b b'> |
  <e, e'>8 <g g'> <e e'> | <a a'> <cis, cis'> <e e'> | % 146a
  <a, a'>8 <cis cis'> <e e'> | <d d'> <fis fis'> <a a'> |
  <d, d'> <fis fis'> <d d'> | <g g'> <b, b'> <d d'> | <g, g'> <b b'> <g g'> |
  <cis cis'>8 <e e'> <g g'> | <cis, cis'> <e e'> <cis cis'> | % 146b
  <fis, fis'> <ais ais'> <cis cis'> | <fis, fis'> <ais ais'> <fis fis'> |
  <b b'>8 <d d'> <fis fis'> | <b, b'> <d d'> <b b'> | <e e'> <gis, gis'> <b b'> |
  <e, e'>8 <gis gis'> <e e'> | <a a'>4.~ | 8 <a' a'>16 <g g'> <fis fis'> <e e'> | % 147a
  <d d'>4.~ | 8 <fis fis'> <a a'> | <cis, cis'>4 <d d'>8~ | 8 <cis cis'> <a' a'> |
  <d d'>8 <a a'>16 [ fis' <g, g'> e' ] | <fis, fis'>8 <d d'> <a' a'> | % 147b
  <c c'>8 <fis, fis'>16 dis' <e, e'> cis' | <dis, dis'>8 <dis' dis'> <b b'> |
  <e e'>8 <b b'>16 g' <a, a'> fis' | <g, g'>8 <e e'> <g g'> |
  <a a'>8 <e e'>16 cis' <d, d'> b' |
  <cis, cis'>8 <a a'> <cis cis'> | <d d'> d' cis | b <b, b'> <a a'> | % 148a
  <g g'>8 <g' g'> <fis fis'> | <e e'> e d | cis <cis cis'> <b b'> |
  <a a'>8 <a' a'> <g g'> |
  <fis fis'>8 fis e | d <fis fis'> <d d'> | g <g g'> <e e'> | % 148b
  <a, a'> <a' a'> <fis fis'> | <b, b'> <g g'> <a a'> |
  d8 d'16 [ e fis d ] | <a a'>8 r <a, a'> |
  <b b'>8 r <b' b'> | <g g'> r <e e'> | <cis cis'> <a a'> <d d'> | % 149a
  <a' a'>8 8 8 | d <a a'>16 [ fis' <g, g'> e' ] |
  <fis, fis'>8 <g g'> <a a'> | <d, d'> d16 e fis d |
  <g, g'>8 g'16 fis gis e | a8 <a, a'>16 <b b'> <cis cis'> <a a'> | % 149b
  <d d'>8 fis a | d,4 <d d'>8 | <a' a'> q q | <d d'> a'16 fis g e | fis8 8 8 |
  a8 fis16 d e cis | d8 8 8 | 16 fis e cis d e | fis a g e fis d | % 150a
  a8 r cis' | d <a fis'> r | r r d |
  cis8 r r | r r d, | <d d'> a'16 fis f e | fis8 d <a a'> | % 150b
  <c c'>8 fis16 dis e cis | dis8 <dis dis'> <b b'> | e'8 b16 g a fis |
  g8 e g | a e16 cis d b | cis8 a cis | d <d d'> <cis cis'> | % 150c
  <b b'>8 b a | g <g g'> <fis fis'> | <e e'> e d |
  cis8 cis' b | a <a a'> <g g'> | <fis fis'> fis e | d fis d | % 150d
  g8 <g g'> <e e'> | <a, a'> <a' a'> <fis fis'> | <b, b'> <g g'> <a a'> |
  <d, d'>4._\fermata |
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorI
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
            \addlyrics \wordsBassI
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
            \addlyrics \wordsBassII
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
            \new Voice \pianoLH
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "single-alto1"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "single-tenor1"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorI
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "single-bass1"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
            \addlyrics \wordsBassI
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "single-alto2"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "single-tenor2"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "single-bass2"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
            \addlyrics \wordsBassII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorI
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
            \addlyrics \wordsBassI
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
            \addlyrics \wordsBassII
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
            \new Voice \pianoLH
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "singlepage-alto1"
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
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "singlepage-tenor1"
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
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorI
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "singlepage-bass1"
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
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
            \addlyrics \wordsBassI
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "singlepage-alto2"
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
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "singlepage-tenor2"
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
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = "singlepage-bass2"
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
            \magnifyStaff #4/7
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
            \addlyrics \wordsBassII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff <<
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
%            \addlyrics \wordsSopIIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
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
    output-suffix = "midi-alto1"
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
%            \addlyrics \wordsSopIMidi
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoIMidi
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff <<
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
%            \addlyrics \wordsSopIIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
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
    output-suffix = "midi-tenor1"
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
%            \addlyrics \wordsSopIMidi
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorIMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff <<
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
%            \addlyrics \wordsSopIIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
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
    output-suffix = "midi-bass1"
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
%            \addlyrics \wordsSopIMidi
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff <<
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
%            \addlyrics \wordsSopIIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
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
%            \addlyrics \wordsSopIMidi
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff <<
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
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
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
    output-suffix = "midi-alto2"
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
%            \addlyrics \wordsSopIMidi
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff <<
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
%            \addlyrics \wordsSopIIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoIIMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
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
    output-suffix = "midi-tenor2"
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
%            \addlyrics \wordsSopIMidi
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff <<
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
%            \addlyrics \wordsSopIIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorIIMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
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
    output-suffix = "midi-bass2"
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
%            \addlyrics \wordsSopIMidi
          >>
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff <<
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
%            \addlyrics \wordsSopIIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
            \addlyrics \wordsBassIIMidi
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
