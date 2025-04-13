globalBenedictus = {
  \key g \major
  \time 6/8
}

TempoTrackBenedictus = {
  \tempo "Andante grazioso" 4.=100
  s2.*54 | \tempo 4=100 s2*28 |
}

RehearsalTrackBenedictus = {
  \set Score.currentBarNumber = #1
  \textMark \markup\box "29a" s2.*5
  \textMark \markup\box "29b" s2.*5
  \textMark \markup\box "29c" s2.*5
  \textMark \markup\box "29d" s2.*3
  \mark \markup\circle\bold A s2.*2
  \textMark \markup\box "30a" s2.*3
  \textMark \markup\box "30b" s2.*3
  \textMark \markup\box "30c" s2.*3
  \textMark \markup\box "31a" s2.*3
  \textMark \markup\box "31b" s2.*2
  \mark \markup\circle\bold B s2.
  \textMark \markup\box "31c" s2.*2
  \textMark \markup\box "32a" s2.*2
  \textMark \markup\box "32b" s2.*2
  \textMark \markup\box "32c" s2.*2
  \textMark \markup\box "33a" s2.*2
  \textMark \markup\box "33b" s2.*2
  \textMark \markup\box "33c" s2.*2
  \textMark \markup\box "34a" s2.*2
  \textMark \markup\box "34b" s2.*3
  \textMark \markup\box "34c" s2*5
  \textMark \markup\box "35a" s2*5
  \textMark \markup\box "35b" s2*5
  \mark \markup\circle\bold C
  \textMark \markup\box "35c" s2*4
  \textMark \markup\box "36a" s2*4
  \textMark \markup\box "36b" s2*5
}

dynamicsSopSoloBenedictus = {
  \override DynamicTextSpanner.style = #'none
  s2.*13 | s4.\< s\cresc | s2. | s\fz | s2.*4 |
  s2.*9 | % 30
  s2.*8 |
  s2.*6 | % 32
  s2.*4 | s4\> s2\! | s2. |
  s2.*5 | s2*5 | % 34
  s2*23 |
}

sopranoSoloBenedictus = \relative {
  \globalBenedictus
  R2.^\markup\bold\huge Benedictus | R | r4 r8 r b'8 c | d4.~8 b g | fis4(a8) c4 8 |
  b4 a16 g cis4(\grace {d16 c} b16) c | d4. r4 r8 | 4.~8(e16 d) c(b) | 8.(c16) 8 r4 8 | 4 16 16 8(d16 c) b a |
  ais8. b16 8 r4 r8 | c8.(d16) e8 cis4 d8 | c8.(d16) e8 cis4 d8 | 4. 16(c) b(a) gis(a) | b8. a16 g8 8(a) ais |
  b4. r4 r8 | d4(dis8) e16(b) d(c) b(a) | g8. a16 b8 c4 fis,8 | g4. r4 r8 | r d g b d r |
  r8 c a fis d fis | g4 a16 b a4 g16. 32 | fis8(a) cis d4 r8 | % 30a
  r4 b16 a gis8 e e' | 4(\tuplet 3/2 {\grace d16 c b c)} a8 r r | r4 a16 g fis8 d d' |
  d4(\tuplet 3/2 {\grace c16 b a b)} g8 r r | r g c ais4 b8 | r g c ais4 b8 |
  r8 b f'8 16(e) d(c) b(c) | d8. c16 b8 b(c) e | dis4. r8 b b | % 31a
  b8 d g8 16(dis) fis(e) d(c) | b8. a16 g8 fis4 c'8 | b4. r4 r8 |
  r4 r8 r g b | e4 d8 r4 d8 |
  d4 b16 g g'4 e16. 32 | fis4~32(a) g(e) d4 r8 | % 32a
  r8 f8. 16 16(e) 8 r | r e8. 16 a8 e r |
  r8 ees8. 16 16(d) 8 r | r d8. 16 g8 d r |e8.(fis16) g8 4 d8 | e8.(fis16) g8 4 d8 | % 33a
  r8 g b, b16(c) d(e) d(c) | b8. c16 d8 g(fis8.) 16 |
  fis4. r4 r8 | r g(b,) c8. e16 gis(a) |
  d,8. c16 b8 a(e'8.) d16 | g,4 r8 r4 r8 | % 34a
  R2.*3 \section \key d \major \time 2/4 |
  R2*5 |
  R2*14 | % 35
  R2*9 |
}

wordsSopSoloBenedictus = \lyricmode {
  Be -- ne -- di -- ctus qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus, qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus,
  be -- ne -- di -- ctus qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus,
                                % 30a
  be -- ne -- di -- stus qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus qui ve -- nit,
  be -- ne -- di -- ctus qui ve -- nit,
  be -- ne -- di -- ctus,
  be -- ne -- di -- ctus,
                                % 31a
  be -- ne -- di -- ctus in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus qui ve -- nit in nmo -- mi -- ne Do -- mi -- ni,
                                % 31c
  be -- ne -- di -- ctus qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus, be -- ne -- di -- ctus,
  be -- ne -- di -- ctus, be -- ne -- di -- ctus,
                                % 33a
  be -- ne -- di -- ctus, be -- ne -- di -- ctus,
  be -- ne -- di -- ctus in __ no -- mi -- ne Do -- mi -- ni,
  qui __ ve -- nit in __ no -- mi -- ne Do -- mi -- ni.
}

wordsSopSoloBenedictusMidi = \lyricmode {
  "\nBe" ne di "ctus " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus, " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus, "
  "\nbe" ne di "ctus " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus, "
                                % 30a
  "\nbe" ne di "stus " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus " "qui " ve "nit, "
  "\nbe" ne di "ctus " "qui " ve "nit, "
  "\nbe" ne di "ctus, "
  "\nbe" ne di "ctus, "
                                % 31a
  "\nbe" ne di "ctus " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus " "qui " ve "nit " "in " nmo mi "ne " Do mi "ni, "
                                % 31c
  "\nbe" ne di "ctus " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus, " be ne di "ctus, "
  "\nbe" ne di "ctus, " be ne di "ctus, "
                                % 33a
  "\nbe" ne di "ctus, " be ne di "ctus, "
  "\nbe" ne di "ctus " "in "  no mi "ne " Do mi "ni, "
  "\nqui "  ve "nit " "in "  no mi "ne " Do mi "ni. "
}

dynamicsAltoSoloBenedictus = {
  \override DynamicTextSpanner.style = #'none
  s2.*54 | s2*28 |
}

altoSoloBenedictus = \relative {
  \globalBenedictus
  R2.*54 | R2*28 |
}

wordsAltoSoloBenedictus = \lyricmode {
}

wordsAltoSoloBenedictusMidi = \lyricmode {
}

dynamicsTenorSoloBenedictus = {
  \override DynamicTextSpanner.style = #'none
  s2.*47 | s4\> s2\! | s2.*6 | s2*28 |
}

tenorSoloBenedictus = \relative {
  \globalBenedictus
  R2.*15 |
  R2.*3 | r4^\markup "Tenor solo" r8 r d'8 8 | 4.~8 b g | % 29d
  fis4(a8) c4 8 | b4 a16 g cis8.(d32 c b16) c | d4 r8 r4 r8 | % 30a
  d4.~8(e16 d) c(b) | 8.(c16) 8 r4 c8 | 4 16 16 8(d16 c) b a |
  ais8. b16 8 r4 r8 | c8.(d16) e8 cis4 d8 | c8.(d16) e8 cis4 d8 |
  d4. 16(c) b(a) gis(a) | b8. a16 g8 8(a) ais | b4 r r | % 31a
  d4(dis8) e16(b) d(c) b(a) | g8. a16 b8 c4 fis,8 | g4. r4 r8 |
  r8 d g b d r | r c a fis d fis |
  g4 a16 b a4 g16. 32 | fis8(a) cis d4 r8 | % 32a
  r4 d16 b gis8 e e' | 4(\tuplet 3/2 {\grace d16 c b c)} a8 r r |
  r4 c16 a fis8 d d' | 4(\tuplet 3/2 {\grace c16 b a b)} g8 r r |
  r8 g c ais4 b8 | r g c ais4 b8 | % 33a
  r8 b f'8 16(e) d(c) b(c) | d8. c16 b8 b(c) e |
  dis4. r8 b b | b d g g16(dis) fis(e) d(c) |
  b8. a16 g8 fis4 c'8 | b4 r8 r4 r8 | % 34a
  R2.*3 \section \key d \major \time 2/4 |
  R2*5 |
  R2*14 | % 35
  R2*9 |
}

wordsTenorSoloBenedictus = \lyricmode {
  Be -- ne -- di -- ctus qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus, be -- ne -- di -- ctus,
                                % 31a
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  qui __ ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus,
  be -- ne -- di -- ctus qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
                                % 32b
  be -- ne -- di -- ctus, qui ve -- nit
  be -- ne -- di -- ctus, qui ve -- nit,
  be -- ne -- di -- ctus, be -- ne -- di -- ctus,
  be -- ne -- di -- ctus in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
}

wordsTenorSoloBenedictusMidi = \lyricmode {
  "\nBe" ne di "ctus " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus, " be ne di "ctus, "
                                % 31a
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nqui "  ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus, "
  "\nbe" ne di "ctus " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
                                % 32b
  "\nbe" ne di "ctus, " "qui " ve "nit "
  "\nbe" ne di "ctus, " "qui " ve "nit, "
  "\nbe" ne di "ctus, " be ne di "ctus, "
  "\nbe" ne di "ctus " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
}

dynamicsBassSoloBenedictus = {
  \override DynamicTextSpanner.style = #'none
  s2.*47 | s4\> s2\! | s2.*6 | s2*28 |
}

bassSoloBenedictus = \relative {
  \globalBenedictus
  R2.*32 |
  R2.*2 | r4^\markup "Baß Solo." r8 r d' d | % 31b
  d4.~8 b g | fis4(a8) c4 8 |
  b4 a16 g cis8.(d32 cis b16) cis | d4 r8 r4 r8 | % 32a
  d4.~8(e16 d) c(b) | 8.(c16) 8 r4 c8 |
  c4 16 16 8(d16 c) b a | ais8. b16 8 r4 r8 |
  c8.(d16) e8 cis4 d8 | c8.(d16) e8 cis4 e8 | % 33a
  d4. 16(c) b(a) gis(a) | b8. a16 g8 g(a) ais |
  b4. r4 r8 | d4(dis8) a16(b) d(c) b(a) |
  g8. a16 b8 c4 fis,8 | g4 r8 r4 r8 | % 34a
  R2.*3 \section \key d \major \time 2/4 |
  R2*5 |
  R2*14 | % 35
  R2*9 |
}

wordsBassSoloBenedictus = \lyricmode {
  Be -- ne -- di -- ctus qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne -- di -- ctus,
  be -- ne -- di -- ctus, qui ve -- nit in __ no -- mi -- ne Do -- mi -- ni,
  qui __ ve -- nit in __ no -- mi -- ne Do -- mi -- ni.
}

wordsBassSoloBenedictusMidi = \lyricmode {
  "\nBe" ne di "ctus " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus " "qui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nbe" ne di "ctus, "
  "\nbe" ne di "ctus, " "qui " ve "nit " "in "  no mi "ne " Do mi "ni, "
  "\nqui "  ve "nit " "in "  no mi "ne " Do mi "ni. "
}

dynamicsSopBenedictus = {
  \override DynamicTextSpanner.style = #'none 
  s2.*54 | s2\parenthesize\f | s2*17 | s2\ff | s2*9 |
}

sopranoBenedictus = \relative {
  \globalBenedictus
  R2.*51 |
  R2.*2 | r4 r8 r4 a'8 \section \key d \major \time 2/4 | % 34b
  d8. 16 cis8 a | g'4 fis8 e | d cis16(d) e8 d | cis16(b cis d) e8 8 | a8. 16 gis8 fis |
  e16(fis e d) cis8 8 | d8. 16 a(b) cis(d) | e4 d8 e | fis d b e | cis a r4 | % 35a
  R2 | r4 r8 a | fis'4 g8 8 | cis,8. 16 d8 e16(fis) | g8(fis e d) |
  cis8 r r a | d8. 16 cis8 a | g'4 fis8 d | 8. 16 8 8 |
  d4 8 8 | c4 b8 d | ees8. 16 8 8 | e4 8 8 | % 36a
  e8. 16 8 a | fis2 | d4 r | R2 | R\fermata |
}

wordsSopBenedictus = \lyricmode {
  O -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
                                % 35b
  O -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis.
}

wordsSopBenedictusMidi = \lyricmode {
  "\nO" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
                                % 35b
  "\nO" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis. "
}

dynamicsAltoBenedictus = {
  \override DynamicTextSpanner.style = #'none
  s2.*54 | s2*8 | s4. s8\parenthesize\f | s2*9 | s2\ff | s2*9 |
}

altoBenedictus = \relative {
  \globalBenedictus
  R2.*54 \section \key d \major \time 2/4 |
  R2*5 | % 34c
  R2*3 | r4 r8 e' | a8. 16 gis8 e | % 35a
  cis'4 b8 a | gis8 fis16(gis) a8 g | fis16(a cis d) e8 cis | a16(g fis e) d8 d'16 16 | b2 |
  a8 r r a | 8. 16 8 8 | 4 8 d, | g8. 16 fis8 d |
  c'4 b8 d, | a'4 g8 8 | bes8. 16 8 8 | b4 8 8 | % 36a
  a8. 16 8 8 | 2 | fis4 r | R2 | R\fermata |
}

wordsAltoBenedictus = \lyricmode {
                                % 35c
  O -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis.
}

wordsAltoBenedictusMidi = \lyricmode {
                                % 35c
  "\nO" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis. "
}

dynamicsTenorBenedictus = {
  \override DynamicTextSpanner.style = #'none
  s2.*54 | s2*2 | s4. s8\parenthesize\f | s2*15 | s2\ff | s2*9 |
}

tenorBenedictus = \relative {
  \globalBenedictus
  R2.*54 \section \key d \major \time 2/4 |
  R2*2 | r4^\markup "Tutti tenori" r8 e | a8. 16 gis8 e | cis'4 b8 a | % 34c
  gis8 fis16(gis) a8 g | fis16(e fis gis) a8 8 | cis16(b) a(cis) d8 cis | b16(cis b a) gis(a) b(gis) | a4 e16(fis) gis(e) | % 35a
  e'8. 16 b(cis) b(dis) | e8(cis) a a | 4 8 8 | 8. 16 8 8 | g(a b e) |
  e8 r r a, | fis'8. 16 g8 e | cis4 d8 8 | 8. 16 8 8 |
  d4 8 8 | 4 8 g | ees8. 16 8 8 | d4 8 8 | % 36a
  d8. 16 cis8 8 | d2 | d,4 r | R2 | R\fermata |
}

wordsTenorBenedictus = \lyricmode {
  O -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis.
}

wordsTenorBenedictusMidi = \lyricmode {
  "\nO" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis. "
}

dynamicsBassBenedictus = {
  \override DynamicTextSpanner.style = #'none
  s2.*54 | s2*5 | s4. s8\parenthesize\f | s2*12 | s2\ff | s2*9 |
}

bassBenedictus = \relative {
  \globalBenedictus
  R2.*54 \section \key d \major \time 2/4 |
  R2*5 |
  r4^\markup "Tutti bassi" r8 a, | d8. 16 cis8 a | g'4 fis8 e | d cis16(d) e8 d | cis16(b cis d) e8 8 | % 35a
  a8. 16 gis8 fis | e16(fis e d) cis(d) e(cis) | d8. 16 cis8 a | g'4 fis8 d16 16 | e8(fis g gis) |
  a8 r r4 | R2 | r4 r8 d, | b'8. 16 c8 a |
  fis4 g8 b | fis4 g8 8 | 8. 16 8 8 | gis4 8 8 | % 36a
  a8. 16 8 8 | d2 | d,4 r | R2 | R\fermata |
  \bar "|." \break \pageBreak
}

wordsBassBenedictus = \lyricmode {
  O -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis, in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis.
}

wordsBassBenedictusMidi = \lyricmode {
  "\nO" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis. "
}

pianoRHoneBenedictus = \relative {
  \globalBenedictus \vo
  g''8(a ais b c cis) | \ov <d, d'>4.~16 c'(a fis d fis) |
  a8.(gis16 a b) g8 r r | \vo b,,8(d g b, d g) c,(d fis c d fis) |
  b,8(d g a, cis g') | a,8(d fis) a,(d fis) | a,(d f) g,(<b d> e) | % 29b
  a,8(c e) \ov <a, c e>(<gis d' e> <a c e>) \vo | g(c ees) fis,(c' d) |
  g,8(b d) b(<a c> <b d>) | c8 g e' <ais, cis>4->(<b d>8) | % 29c
  c8 g e' <ais, cis>4->(<b d>8) | d4.->(e8) r e |
  b8(d g) \ov <b, g'>(<c fis>) <ais e'>-. |
  <b dis>4. 8-.(8-. 8-.) | d4->(dis8 \vo <c e>) \ov r \vo e | d(b g') c,(d <a' c>) | % 29d
  <b, g'>8 <g b d> q <b d>4 r8 | \ov r \vo fis''16(g a g) d s s4 |
  r8 gis16(a b a) d s16*5 | \ov r8 ais16(b a g) cis8 r a | % 30a
  d16(cis d a g e) d <d, fis> q q q q |
  <d f>16 r d''(c b a) <d, e gis> r e r e' r | % 30b
  r8 a,,16(c e gis) a <c,, e> <d gis> q <c a'> q |
  <c ees>16 r c''(bes a g) <c, d fis> r d r d' r |
  r8 g,,16(b d g) a8 <c,, fis>16 q <b f'> q | % 30c
  <c e>16 r g''(fis a g) <ais,, cis>-> q q q <b d> q |
  <c e>16 r g''(fis a g) <ais,, cis>-> q q q <b d> q |
  <d f>16 r gis'(b d g,) a r c r e r | % 31a
  d16(cis d b g d) d8 r e |
  b'16(ais b fis dis b) <dis, fis> q q q q q |
  <b d f>16 r d'' b g b c r g r e' r | % 31b
  r8 g,16(a b c) d r c r <c, a'> r |
  <g b g'>16(fis' g d b g) <b, d g>-. d(cis c b a) |
  \tuplet 3/2 {b16(d b} \tuplet 3/2 {d b d} \tuplet 3/2 {b d b} \tuplet 3/2 {d b d} \tuplet 3/2 {b d b} \tuplet 3/2 {d b d)} | % 31c
  d16(e fis g a b c d e fis g a) |
  b8 \tuplet 3/2 {b,,16[d b]} e''8 <e, g cis> \tuplet 3/2 {<e, g>16[a, q]} <cis' a'>8 | % 32a
  <d, d'>16(e fis g a cis d fis g a b cis) |
  \tuplet 3/2 {\vt d16(\vo <d,, f> a} \tuplet 3/2 {q a q} \tuplet 3/2 {a q a)} \ov d''(b e d c b) | % 32b
  \tuplet 3/2 {\vt c16(\vo e,, c} \tuplet 3/2 {e c e} \tuplet 3/2 {c e c)} \ov c''(e c b a e) |
  \tuplet 3/2 {<c, ees>16(g q} \tuplet 3/2 {g q g} \tuplet 3/2 {q g q)} c''(a d c b a) | % 32c
  \tuplet 3/2 {\vt b16(\vo d,, b} \tuplet 3/2 {d b d} \tuplet 3/2 {b d b)} \ov g''(fis g d b g) |
  \repeat unfold 4 {r8 fis'16(g a g) } | % 33a
  g16(f d b g b) <d, f b>-.(c' d e d <c, c'>) | % 33b
  b'16(d b' c d d,) b'(d, c' d, e e') |
  dis16(ais b fis dis fis) b,-. b(ais b d fis) | % 33c
  \vt g16(f d b g b) \ov <e, c'>(b' c e b' a) |
  g16(d b' c d d,) d'(d, c' d, a' d,) | % 34a
  \tuplet 3/2 {g16(b a} \tuplet 3/2 {g fis e} \tuplet 3/2 {d c b)} \tuplet 3/2 {<c, fis a>(e' d} \tuplet 3/2 {c b a} \tuplet 3/2 {g fis a)} |
  \tuplet 3/2 {<b, g'>16(d'' c} \tuplet 3/2 {b a g} \tuplet 3/2 {fis g e)} \tuplet 3/2 {<fis, d'>(c' b} \tuplet 3/2 {a <e g> <d fis>} \tuplet 3/2 {<cis e> d <c fis>)} | % 34b
  \vo g'8 r g-.(g-.) r g-.( |
  \ov <b, g'>-.) <g' b d g>-.[<e g b e>-.] <cis e a cis>4\fermata a'8 \section \key d \major \time 2/4 |
  d4 cis8-. a-. | g'4 fis8 e | d cis16 d e8 d | % 34c
  cis16 b cis d e8 8 | a16 gis a b gis8 fis |
  e16 fis e d cis d e cis | d4 a16-. b-. cis-. d-. | e4 d16 fis a e | % 35a
  fis8 d b <e, e'> | \vo cis'8 r \ov gis e |
  <e cis'>4 b'8 a | \vo gis8 fis16 g \ov <a, a'>8 <a g' a> | % 35b
  \vo fis''4 \ov <e g>8 <c b'> | \vo cis4 d8 e16 fis |
  g16 a fis g e fis d e |
  \ov <a, cis>16. <a a'>32 \repeat unfold 10 {q16. 32} % 35c
  \repeat unfold 13 {<d d'>16. 32}
  \ov \repeat unfold 4 {<ees bes' ees>16. 32} | % 36a++
  \repeat unfold 4 {<e b' d e>16. 32} |
  <e a d e>16. 32 16. 32 <e a cis e>16. 32 16. 32 | % 36b
  <fis a cis fis>16. <d fis a d>32 16. <a d fis a>32 16. <fis a d fis>32 16. <d fis a d>32 |
  <fis a d fis>16. <fis a d>32 16. <d fis a>32 16. <a d fis>32 16. <fis a d>32 |
  q8 r <d'' fis a d> r | q4 r\fermata |
}

pianoRHtwoBenedictus = \relative {
  \globalBenedictus \vt
  g'8(a ais b c cis) | s2.*2 | b,4. g | c a |
  b4. g | a fis | a gis | a s | g fis |
  g4. g | s8 g4 4. | s8 g4 4. | s2. | g4. s |
  s2.*3 | s4. g4 r8 | s2. |
  <c d>16 q \lh q q q q d \rh d d <c d> q q | s2.*2 | % 30a
  s2.*3 |
  s2.*3 |
  s2.*8 | % 31
  s2.*6 |
  s2.*6 | % 33
  s2.*5 \section \key d \major \time 2/4 | s2*5 |
  s2*4 | a'4 s | % 35a
  s2 | e8 cis s4 | fis16 a cis d s4 | a16 g fis e d8 d' | b b b b |
  s2 | \vo d4 8 s | g4 fis8 s | g4 fis8 s |
  c'4 b8 s | c4 b8 g | s2*2 | % 36a
  s2*5 |
}

dynamicsPianoBenedictus = {
  \override DynamicTextSpanner.style = #'none
  s2.\pp\< | s4.\> s\! | s2.*3 |
  s2.*3 | s4. s\< | s2.\! |
  d4. s\p\< | s2.\! | s | s2\fz s8 s\p | s2.\cresc |
  s4.\fz s\p | s2\fz s8 s\p | s2.*2 | s2.\pp |
  s2.*9 | % 30
  s2.\fz | s | s\fz | s4.\f\> s\! | s2.*2 | s2.\pp | s |
  s2.*6 | % 32
  s4. s\fz | s s\fz | s\fz\> s\! | s s\cresc | s\f\> s\p | s\f\> s\p |
  s2.\pp | s2.*3 | s8 s\f s2 | s2\fz | s\fz | s2*3 | % 34
  s2*13 | s2\ff |
  s2*9 | % 36
}

pianoLHoneBenedictus = \relative {
  \globalBenedictus \ov
  s2. | r4 r8 <d fis c'>8-.(8-. 8-.) | 4. <g b>8 r r | g,8-. r r r g-. b-. | d-. r r r d-. d-. |
  g,8-. r g'-. e-. r e-. | d-. a-. fis-. d4-. r8 | d'-. r d-. b-. r e-. | % 29b
  a,8 r r a-. b-. c-. | c-. e c-. a-. r d-. |
  g,4-. r8 g(fis f) | e r c g'4.-> | e8 r c g'4.-> | \vo % 29c
  \crossStaff {<f' g b>4. <e g c>8 r <g a>} | \ov d4 r8 \vo g(a) e-. |
  \ov <b fis'>4. 8-.(8-. 8-.) | \vo <f' g b>4. \crossStaff {<e g>8 r <g a>} | % 29d
  \crossStaff <g b>4 r8 a4 c8 | \ov g, b d s4 r8 |
  \vo <b' d>16 q q q q q q \rh q q q q q \lh |
  \vt d,8 r r d'16-. cis-. d-. a-. fis-. d-. | % 30a
  \vo <b' d>16 q q q q q \ov <e, g cis>16-. dis-. e-. fis-. <g c>-. a-. |
  <d, fis d'>16 <fis d'> q q <e cis'> <g c> <d fis d'> e fis g gis a^\markup{\halign #RIGHT \italic "sempre staccato"} |
  d,16 <a' f'> q q <d f> q b,-. ais-. b-. c-. d-. e-. | % 30b
  a,16 <c' e> q q q q c,8-. b-. a-. |
  c16 <g' ees'> q q <c e> q a,-. gis-. a-. b-. c-. d-. |
  g,16 <b' d> q q q q g,8-. a-. b-. | % 30c
  c16 <c' e> q q q q g-. fis-. g-. fis-. g-. g,-. |
  c16 <c' e> q q q q g-. fis-. g-. fis-. g-. d-. |
  <b gis'>16 <fis' g d> q q q q <c e a c>(<c' e> <b d> <a c> <a, g' b>\arpeggio <a' c>) | % 31a
  <d, b' d>16 <b' d> q <a c> <g b> q \vt <d g b> <g b> <a c> q <c, ais'> a |
  \vo \grace b8 <b' dis>16 <fis d'> q q q q <b, b'>-. ais'-. b-. fis-. dis-. b-. |
  g16 <f' g b d>16 q q <f g b dis> q <c g' c e>\arpeggio(<b' dis> <d fis> <c e> <c, b' d>\arpeggio <a' c>) | % 31b
  <d, g b>16 <g d> <a c> q <b d> q <d, b' d> <b' d> <d, c' e>\arpeggio <c' e> <d, fis'>\arpeggio q |
  g,8-. r16 g-. b-. d-. g8 r r |
  g,16(a b c d e fis g a b c d) | % 31c
  \tuplet 3/2 {<a c>16(d c} \tuplet 3/2 {d c d} \tuplet 3/2 {c d c} \tuplet 3/2 {<d, d'> c' d} \tuplet 3/2 {c d c} \tuplet 3/2 {d c d)} |
  g,16([fis g16*4/3 \rh b16*2/3 \lh \ov g16 fis] e dis e fis g a) | % 32a
  \tuplet 3/2 8 {<d, fis>16(a' q a q a) <a, g'>(a' g) <d fis>(a' q a q a q a q)} |
  d,16(f d c b d) \tuplet 3/2 8 {<e b' d>(e' <b d> e b e <gis, b> e' q)} | % 32b
  a,16(gis a a, c e) \tuplet 3/2 8 {<a c>(e' q e q e q e q)} |
  c,16(ees c bes a c) \tuplet 3/2 8 {<d fis c'>(d' <fis, c'> d' q d q d q)} | % 32c
  g,16(fis g g, b d) \tuplet 3/2 8 {<g b>(d' q d q d q d q)} |
  \tuplet 3/2 8 {c,16(c' e c e c g c e) <g, ais>(cis ais cis ais cis <g b> d' b)} | % 33a
  \tuplet 3/2 8 {c,16(c' e c e c g c e) <g, ais>(cis ais cis ais cis <g b> d' b)} |
  \tuplet 3/2 8 {<g b d>16 fis' q fis q fis q fis q c,-. <d' fis>(<c e>) <b d>-. q(<a c>) \vo <gis b>-.[q(a])} | % 33b
  \ov \tuplet 3/2 8 {<d, b'>16(d' b d b <a c> <d, b'> g b) <d, g>(b' g c a c <c, ais'> e' ais,)} |
  \tuplet 3/2 8 {b,16(dis' b dis b dis b dis b) dis(b dis b dis b dis b dis)} | % 33c
  \tuplet 3/2 8 {g,,16(d'' <g, b> d' q d q dis q) c,(c' e c e c <c, c'> a' c)} |
  \tuplet 3/2 8 {<d, g>16(b' g b g <a c> b d b) <d, c'>(d' c e c e <d, c'> fis' c)} | % 34a
  \vt \tuplet 3/2 8 {<g b g'>16( \vo g,, g' g, g' g, g' g, g') \ov g,( g' g, g' g, g' g, g' g,)} |
  \tuplet 3/2 8 {g( \repeat unfold 8 {g' g,} g')} | % 34b
  <g, g'>8 r q-.(q-.) r q-.( |
  q-.) <e' e'>8 <g g'>-. <a a'>4\fermata r8 \section \key d \major \time 2/4 |
  R2*2 | r4 r8 e' | a4 gis8 e | cis'4 b8 a | % 34c
  gis8 fis16 gis a8 <a, g'> | \vo fis'16 e fis gis a8 a | % 35a
  cis16 b a cis d8 cis | b16 cis b a gis a b gis | a4 e16 fis gis e |
  \ov a4 \vo b16 cis b dis | \ov e, fis e d cis d e cis | % 35b
  <d a'>4 <cis a'>8 <a a'> | <g' a>4 <fis a>8 <d a'> |
  <e g>8 <fis a> <g b> <gis e'> |
  <a e'>8 r r a | fis'4 g8 e | cis4 d8 <d,, d'> | <b' b'>4 <c c'>8 <a a'> | % 35c
  <fis fis'>4 <g g'>8 <b b'> | <fis fis'>4 <g g'>8 8 | % 36a
  \repeat unfold 4 {q16. 32} | \repeat unfold 4 {<gis gis'>16. 32} |
  \repeat unfold 4 {<a a'>16. 32} | <d, d'>8 <d' d'> q q | % 36b
  q16. 32 16. <a a'>32 16. <fis fis'>32 16. <d d'>32 |
  q8 r <d' d'> r | <d, d'>4 r\fermata |
}

pianoLHtwoBenedictus = \relative {
  \globalBenedictus \vt
  s2.*5 |
  s2.*5 |
  s2.*3 | g,4. c,8 r cis' | s4 r8 d4(c8) |
  s2. | g4.(c,8) r cis' | d4 r8 d4 8 | s2. | g8 r r g16-. fis-. g-. d-. b-. g-. |
  s2. | g'8-. r r s4. | s2.*7 | % 30
  s2. | s2 s8 \vo e'16 16 \vt | s2. | g,,4. s | s2.*4 |
  s2.*6 | % 32
  s2.*2 | s2 s8 c16-. a-. | s2.*3 |
  s2.*5 | s2*5 | % 34
  s2 | d4 cis8 a | g'4 fis8 e | d cis16 d e8 d | cis16 b cis d e4 | % 35a
  s4 gis8 fis | s2*4 |
  s2*4 |
  s2*9 | % 36
}
