globalGloria = {
  \key g \minor
  \time 3/4
}

TempoTrackGloria = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
  s2.*102
}

RehearsalTrackGloria = {
  \set Score.currentBarNumber = #1
  \textMark \markup\box "14a" s2.*3
  \textMark \markup\box "14b" s2.*3
  \textMark \markup\box "14c" s2.*3
  \textMark \markup\box "15a" s2.*3
  \textMark \markup\box "15b" s2.*3
  \textMark \markup\box "15c" s2.*3
  \textMark \markup\box "16a" s2.*3
  \textMark \markup\box "16b" s2.*3
  \textMark \markup\box "16c" s2.*3
  \textMark \markup\box "17a" s2.*3
  \textMark \markup\box "17b" s2.*3
  \textMark \markup\box "17c" s2.*3
  \textMark \markup\box "18a" s2.*3
  \textMark \markup\box "18b" s2.*3
  \textMark \markup\box "18c" s2.*5
  \textMark \markup\box "19a" s2.*5
  \textMark \markup\box "19b" s2.*5
  \textMark \markup\box "19c" s2.*4
  \textMark \markup\box "20a" s2.*4
  \textMark \markup\box "20b" s2.*3
  \textMark \markup\box "20c" s2.*3
  \textMark \markup\box "21a" s2.*3
  \textMark \markup\box "21b" s2.*3
  \textMark \markup\box "21c" s2.*4
  \textMark \markup\box "22a" s2.*4
  \textMark \markup\box "22b" s2.*3
  \textMark \markup\box "22c" s2.*3
  \textMark \markup\box "23a" s2.*3
  \textMark \markup\box "23b" s2.*3
  \textMark \markup\box "23c" s2.*4
}

dynamicsSopGloria = {
  \override DynamicTextSpanner.style = #'none
  s2.*102 |
}

sopranoGloria = \relative {
  \globalGloria
  g'16^\markup\bold\huge Gloria. (d e fis g a fis g a bes g a | % 14a
  bes16 a g a bes c a bes c d bes c |
  d8) 16 16 8 8 8 8 |
  d8 c16(d bes8) r r4 | % 14b
  g'8. f16 ees8 r r4 |
  r8 c16(d ees d c bes a c bes d |
  c8) 16 16 d8 c bes a | % 14c
  bes8 16(a g8) r r4 |
  a8 g16 f bes8 a g f |
  g8 16(f e8) r r4 | cis'8. a16 4 r | r a8. d16 4 | % 15a
  r4 bes8. 16 4 | 8 d c(bes) a(g) | a c bes16(a8.) g8(a16 c) |
  f8.(d16) e4 r | f8 f, d'(c) c(b) | b8 16(a g8) r r4 |
  r4 g c8(b) | c2.~ | 8 d ees d ees c | % 16a
  c4 b r | c8. g16 4 r | ees'8. b16 4 r |
  c8. g16 4 r | aes8. e16 4 r | f8(aes c) 16 16 8 8 |
  ees,8(g c) c c c | aes4 g8(f) f'4 | ees r r | % 17a
  r4 aes,8(g) f(ees') | d2.~ | 8 f g(f) ees(des) |
  c8 aes c8 16 16 8 8 | 2.~ | 8 b b(c) c(d) |
  d8(c16 b c8) g ees'4~ | 8 c b4. c8 | 4 r r | % 18a
  R2.*3 |
  R2.*2 | g8 f g(aes) f(ees) | f4 bes2~ | 4 a a~ |
  a8 fis g4 a8 bes | c4 4 4~ | 8(a) bes c a g | a4 d2~ | 4 c c~ | % 19a
  c8 a bes4 c8 d | ees4 4 4~8(c) d ees c bes | c4 f,2~ | 4 e e~ |
  e8 cis d4 e8 f | g4 4 4~ | 8(f) 4 r | R2. |
  R2.*4 | % 20a
  R2. | r8 a d,16(e cis d e f d e | f a g f bes8 a) g(f) |
  g2 r4 | r8 cis d e a, r | r a a(b16 cis d e d e |
  c8) a b4 r | r8 b16(c) d(c b a gis b) a(c) | b8 16 16 c8 b a(gis) | % 21a
  a8 e c'4 c | 8 a4 8 d4~ | 8 c d b4 d8 |
  c4 g r | e'8 c d(g,) a(b) | c4 r r | a8 g a(fis) g(a) |
  bes4 r r | 8 8 c16(d ees4) d16(c) | bes4 r r | a8 a d4. c8 | % 22a
  bes8 d bes g a fis | g bes c(ees) a,(fis') | g(d bes d f g16 f |
  ees8 d16 c d8 f16 ees d8 b | g c ees) 16 16 8 8 | g,(bes d) 16 16 8 8 |
  c8(a fis a c) a | bes4 r r | r8 g ees'(d) c(ees) | % 23a
  a,4.(g8) a4~ | 8 c bes aes g f | g2 r4 |
  R2. | r8 c8 8 8 16(d c bes | c8) bes16(a) d8 bes g4~ | 8 c a4. g8 | 2.\fermata |
  \bar "|."
}

wordsSopGloria = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o, __
  glo -- ri -- a,
  glo -- ri -- a in ex -- cel -- sis De -- o, __
  glo -- ri -- a in ex -- cel -- sis De -- o, __
                                % 15a
  glo -- ri -- a, glo -- ri -- a,
  glo -- ri -- a in ex -- cel -- sis De -- o,
  in ex -- cel -- sis, in ex -- cel -- sis De -- o, __
                                % 16a
  in ex -- cel -- sis, in ex -- cel -- sis De -- o,
  glo -- ri -- a, glo -- ri -- a,
  glo -- ri -- a, glo -- ri -- a,
  glo -- ri -- a in ex -- cel -- sis, in ex -- cel -- sis, De -- o,
                                % 17b
  in ex -- cel -- sis in ex -- cel -- sis,
  glo -- ri -- a in ex -- cel -- sis,
  in ex -- cel -- sis De -- o glo -- ri -- a.
                                % 18c
  Et in ter -- ra pax,
  pax __ ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis,
                                % 19a
  in ter -- ra pax,
  pax __ ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis,
  in ter -- ra pax,
  pax __ ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis.
                                % 20b
  lau -- da -- mus te, lau -- da -- mus te,
  lau -- da -- mus te,
                                % 21a
  lau -- da -- mus te,
  be -- ne -- di -- ci -- mus te,
                                % 21b
  lau -- da -- mus te, be -- ne -- di -- ci -- mus,
  a -- do -- ra -- mus, a -- do -- ra -- mus te,
  a -- do -- ra -- mus te,
                                % 22a
  a -- do -- ra -- mus te, a -- do -- ra -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- di -- ca -- mus,
  glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus te,
                                % 23a
  glo -- ri -- fi -- ca -- mus, __
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus te.
}

dynamicsAltoGloria = {
  \override DynamicTextSpanner.style = #'none
  s2.*102
}

altoGloria = \relative {
  \globalGloria
  d'8. c16 bes4 r | % 14a
  g'16(d e fis g a fis g a bes g a |
  bes16 a g a bes c a bes c d bes c |
  d8) d,16 16 8 8 8 8 | % 14b
  d8 ees16(d c8) r r4 |
  r8 a'16(bes c bes a g fis a g bes |
  a8) 16 16 bes8 a g fis | % 14c
  g8 d16(c bes8) r r4 |
  f'8 e16 d g8 f e d |
  e8 16(d cis8) r r4 | bes'8. cis,16 4 r | r f8. 16 4 | % 15a
  r4 d8. g16 4 | 8 f g(e4) g8 | f4 f r |
  c'8 bes16 a bes8 e, f g | a(c) f r r4 | d8 16 c d8 b c d |
  c8 b16(c g8) r r4 | ees8 8 f f f g | a4 a r | % 16a
  g8 aes d, c g' g | 8. ees16 4 r | g8. d16 4 r |
  g8. ees16 4 r | c8. 16 4 r | c8(f aes) 16 16 8 8 |
  c,8(ees g) g g g | f4. b,8 d(g) | 4 c,8(d) ees(c) | % 17a
  aes'2.~ | 8 c bes(aes) g(f) | g aes bes4(ees,) |
  ees4 r r | r aes8 16 16 8 8 | 2.~ |
  aes8 g g ees c'4~ | 8 aes d,4 g | 4 r r | % 18a
  R2.*3 |
  R2.*4 | ees8 d ees(f) d(c) |
  d4 g2~ | 4 fis8(g a4) | g8 f e4 4~ | 8 c d4 d | g8(f) g a f e | % 19a
  f4 bes2~ | 8 g a bes c4 | bes8 a g4 g | 8(e) f4 r | bes8 a bes(c) a(g) |
  a4(d,2~ | 4 cis2) | d r4 | R2. |
  R2.*4 | % 20a
  r8 a d16(e cis d e f d e | f e d e f g e f g a f g | a f e d g8 f) e(d) |
  e2 r4 | r8 bes' a cis, r a | d16(cis d e f g f g a b a b |
  e,8) c f4 r | r8 d16(e) f(e d c b d) c(e) | d8 16 16 e8 d c(b) | % 21a
  c8 a e'4 a | 8 f4 8 4~ | 8 a g f(e) d |
  e8 g f16(e8.) d16(f e d) | g2.~ | 8 c, a'(g) g(fis) | 8(e) d4 r |
  d4 bes'8(a) g(fis) g2.~ | 8(a bes a) bes(g) | 4(fis) r | % 22a
  R2. | r8 g ees c d a | bes d g(d) b(d) |
  c8(ees f aes d, f | ees g c) 16 16 8 8 | d,(g bes) 16 16 8 8 |
  a2 4 | g8 d bes'(a) g(bes) ees,2.~ | % 23a
  ees8 g16 f f8 ees d c | d2 r4 | r8 g g g g16(a g fis |
  g2.)~ | g8(fis) 8 g g fis16(g) | a4.(d,8 g4~ | 8 a fis4.) d8 | 2.\fermata |
}

wordsAltoGloria = \lyricmode {
  Glo -- ri -- a, glo -- ri -- a in ex -- cel -- sis De -- o, __
  glo -- ri -- a in ex -- cel -- sis De -- o, __
  glo -- ri -- a in ex -- cel -- sis De -- o, __
                                % 15a
  glo -- ri -- a, glo -- ri -- a,
  glo -- ri -- a in ex -- cel -- sis De -- o,
  glo -- ri -- a in ex -- cel -- sis De -- o, __
  glo -- ri -- a in ex -- cel -- sis De -- o, __
                                % 16a
  in ex -- cel -- sis, in ex -- cel -- sis,
  in ex -- cel -- sis De -- o, glo -- ri -- a,
  glo -- ri -- a, glo -- ri -- a, glo -- ri -- a,
  glo -- ri -- a in ex -- cel -- sis, in ex -- cel -- sis De -- o,
                                % 17b
  in ex -- cel -- sis, in ex -- cel -- sis De -- o,
  glo -- ri -- a in ex -- cel -- sis De -- o,
                                % 18a
  De -- o glo -- ri -- a.
  Et in ter -- ra pax,
                                % 19a
  pax __ ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis,
  in ter -- ra pax,
  pax __ ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis,
  bo -- næ vo -- lun -- ta -- tis.
                                % 20b
  lau -- da -- mus te, lau -- da -- mus, lau -- da -- mus te,
                                % 21a
  lau -- da -- mus te, be -- ne -- di -- ci -- mus te,
  lau -- da -- mus te, be -- ne -- di -- ci -- mus,
  a -- do -- ra -- mus, a -- do -- ra -- mus,
  a -- do -- ra -- mus te,
                                % 22a
  a -- do -- ra -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus te,
                                % 23a
  glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus te.
}

dynamicsTenorGloria = {
  \override DynamicTextSpanner.style = #'none
  s2.*102
}

tenorGloria = \relative {
  \globalGloria
  bes8. a16 g4 r | % 14a
  g'8. d16 4 r |
  g,16(d e fis g a fis g a bes g a |
  bes16 a g a bes c a bes c d bes c | % 14b
  d8) bes16 16 ees8 d c bes |
  c8 16(bes a8) r r4 |
  ees'8. fis,16 4 r | % 14c
  d'8 16 16 8 8 8 8 |
  d8 cis16(d bes8) r r4 |
  r8 e16(f g f e d cis e d f | e8) cis16 16 f8 e d c | d a d8. 16 4 | % 15a
  r4 d8. 16 4 | e8(g,4) 8 c e | c4 c r |
  c8 bes16 a bes8 e, f g | a(c) f r r4 | d8 16 c d8 b c d |
  ees8(f) g r r4 | c,8 c d d d ees | 4 a, r | % 16a
  d8 d g f f f | ees8. c16 4 r | c8. f,16 4 r |
  ees'8. c16 4 r | f8. g16 4 r | aes,8(c f) 16 16 8 8 |
  g,8(c ees) 8 8 8 | d8 8 2 | c4 r r | % 17a
  r4 c8(bes) aes(c) | bes2.~ | 8 8 ees(des) c(bes) |
  aes8 8 r4 r | R2. | f'8 16 16 8 8 8 8 |
  f8 ees16(d) ees8 c c4~ | 8 8 g'4 d | ees r r | % 18a
  R2.*8 |
  bes8 a bes(c) a(g) | a4 d2~ | 4 c2~ | 4 bes4 4~ | 8 g a4 r | % 19a
  d8 c d(ees) c(bes) | c4 f2~ | 4 d d | e8 c d4 d | 8 bes c4 r |
  f8 e f(g) e(d) | e2(a,4) | 2 r4 | R2. |
  R2.*3 | r8 a d,16(e cis d e f d e | % 20a
  f16 e d e f g e f g a f g | a g f g a8) 8 8 8 | 16(c bes a) g8 r r4 |
  r8 g16(a) bes(a g f e g) f(a) | g8 16 16 a8 g f(e) | f r r a a a |
  a8 e' d(c) b(a) | b2 r4 | r8 f' e gis, r4 | % 21a
  r8 e' a,(c) e(c) | d8 4 8 8 a16 16 | b8 r r d,(g) b |
  g4 g r | g'8 e f(b,) c(d) | e4 r r | d8 e f(d) e(f) |
  g4 r r | g,8 g ees'(a,4) 8 | e'4 r r | d4. g,8 d' d | % 22a
  d4 r r | R2. | r8 g d bes d g, |
  c8 g b(d) b(d) | c(e g) 16 16 8 8 | bes,(d g) 16 16 8 8 |
  ees4(d) c8(d) | 4 r r | r8 g, g'(f) ees(g) | % 23a
  c,2 f,4~ | 8 8 f' ees d f | bes,4 r r |
  r8 ees8 8 8 16(f ees d | ees2.)~ | 8 d g, bes8 4~ | 8 ees d4 c b2.\fermata |
}

wordsTenorGloria = \lyricmode {
  Glo -- ri -- a, glo -- ri -- a,
  glo -- ri -- a in ex -- cel -- sis De -- o, __
  glo -- ri -- a, glo -- ri -- a in ex -- cel -- sis De -- o, __
                                % 15a
  glo -- ri -- a in ex -- cel -- sis De o,
  glo -- ri -- a, glo -- ri -- a in ex -- cel -- sis -- De -- o,
  glo -- ri -- a in ex -- cel -- sis De -- o,
  glo -- ri -- a in ex -- cel -- sis De -- o,
                                % 16a
  in ex -- cel -- sis, in ex -- cel -- sis,
  in ex -- cel -- sis De -- o, glo -- ri -- a,
  glo -- ri -- a, glo -- ri -- a, glo -- ri -- a,
  glo -- ri -- a in ex -- cel -- sis, in ex -- cel -- sis De -- o,
                                % 17b
  in ex -- cel -- sis, in ex -- cel -- sis,
  glo -- ri -- a in ex -- cel -- sis,
                                % 18a
  in ex -- cel -- sis De -- o glo -- ri -- a.
                                % 19a
  Et in ter -- ra pax, pax, __
  pax __ ho -- mi -- ni -- bus,
  et in ter -- ra pax, pax, __
  pax ho -- mi -- ni -- bus,
  ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis.
                                % 20a
  Lau -- da -- mus te, lau -- da -- mus,
  lau -- da -- mus te, be -- ne -- di -- ci -- mus te,
  lau -- da -- mus te,
                                % 21a
  lau -- da -- mus te,
  lau -- da -- mus, lau -- da -- mus te,
  be -- ne -- di -- ci -- mus te,
  a -- do -- ra -- mus, a -- do -- ra -- mus te,
  a -- do -- ra -- mus te,
                                % 22a
  a -- do -- ra -- mus te, a -- do -- ra -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus te,
                                % 23a
  glo -- ri -- fi -- ca -- mus, __
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus te.
}

dynamicsBassGloria = {
  \override DynamicTextSpanner.style = #'none
  s2.*102
}

bassGloria = \relative {
  \globalGloria
  g8. g,16 4 r | % 14a
  g'8. g,16 4 r |
  g'8. g,16 4 r |
  g'16(d e fis g a fis g a bes g a | % 14b
  bes8) g16 16 c8 bes a g |
  a8 16(g fis8) r r4 |
  fis8. d16 4 r | % 14c
  r16 d(e fis g a g a bes c bes c |
  d8.) d,16 8 r r4 |
  r8 g16(a bes a g f e g f a | g8) e16 16 a8 g f e | f d d'8. d,16 4 | % 15a
  r4 g8. g,16 4 | c8(d e) c c' c, | f4 f r |
  f8 16 16 8 8 8 8 | 16(e f8) d,4 r | f'8 16 16 8 8 8 8 |
  ees8(d) ees r r4 | aes8 8 8 8 8 g | fis4 4 r | % 16a
  g8 f g a b g | c8. c,16 4 r | c'8. c,16 4 r |
  c'8. c,16 4 r | c'8. c,16 4 r | r4 r8 f16(g aes8 f |
  c'8) c,16 16 8 8 c' c | c b16(a) b8(d) f,(b) | c4 r r | % 17a
  r4 f, f | bes2 bes,4 | ees2. |
  aes,4 r r | R2. | d'8 16 16 8 c c b |
  b8 g c ees, aes4~ | 8 f g4 g, | c4 r r | % 18a
  R2.*3 |
  R2.*3 | d8 c d(ees) c(bes) | c4 f2~ |
  f4 ees4 4~ | 8 c d4 e8 fis | g4 4 4~ | 8(d) f g e d | e4 a2~ | % 19a
  a4 g g~ | 8 ees f4 g8 a | bes4 4 4~ | 8(g) a bes g f | g g c c,8 4~ |
  c4 bes8 a bes4~ | 8 g a2 | d r4 | R2. |
  R2.*2 | r8 a d16(e cis d e f d e | f e d e f g e f g a f g | % 20a
  a16 g f g a8) a a a | 16(bes a g) f8 r r4 | r8 d' d d, r4 |
  r8 e16(f) g(f e d cis e) d(f) | e8 16 16 f8 e d(cis) | d a d16(e d e f g f g |
  a8 g) f e d c | d2 r4 | r8 gis a b e, r | % 21a
  r8 a, a'4 4 | d,8 d'4(d,8) 4 | g,8 a b g(g') g |
  c4 c, r | c'4. c,8 c c | c'4 r r | c,8(c'4) c,8 c c |
  bes4 r r | ees8 d d(c) d(ees) | cis4 r r | d'8 d, d(e) fis(d) | % 22a
  g4 r r | R2.*2 |
  r8 c aes f g d | ees4 r8 c16(d) ees8 c | g' g, g'4. 8 |
  g8 fis16(e) fis8(a) d,(fis) | g4 r g | c4. c,8 ees c | % 23a
  f2 4 | bes4. bes,8 d bes | ees4 r r |
  R2. | r8 a a g g16(bes a g | fis8) d bes d ees4~ | 8 c d4 4 | g,2.\fermata |
}

wordsBassGloria = \lyricmode {
  Glo -- ri -- a, glo -- ri -- a, glo -- ri -- a,
  glo -- ri -- a in ex -- cel -- sis De -- o, __
  glo -- ri -- a, glo -- ri -- a,
                                % 15a
  glo -- ri -- a in ex -- cel -- sis De o,
  glo -- ri -- a, glo -- ri -- a in ex -- cel -- sis -- De -- o,
  glo -- ri -- a in ex -- cel -- sis De -- o,
  glo -- ri -- a in ex -- cel -- sis De -- o,
                                % 16a
  in ex -- cel -- sis, in ex -- cel -- sis,
  in ex -- cel -- sis De -- o, glo -- ri -- a,
  glo -- ri -- a, glo -- ri -- a, glo -- ri -- a,
  glo -- ri -- a in ex -- cel -- sis De -- o,
                                % 17a
  glo -- ri -- a in ex -- cel -- sis De -- o,
  glo -- ri -- a in ex -- cel -- sis,
                                % 18a
  in ex -- cel -- sis De -- o glo -- ri -- a.
  Et in ter -- ra pax,
  pax __ ho -- mi -- ni -- bus bo -- næ vo -- luon -- ta -- tis,
                                % 19a
  in ter -- ra pax,
  pax __ ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis,
  in ter -- ra pax ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis.
                                % 20a
  Lau -- da -- mus -- te, lau -- da -- mus, lau -- da -- mus,
  lau -- da -- mus te, be -- ne -- di -- ci -- mus te,
  lau -- da -- mus, lau -- da -- mus te,
                                % 21a
  lau -- da -- mus te, lau -- da -- mus te,
  be -- ne -- di -- ci -- mus,
  a -- do -- ra -- mus, a -- do -- ra -- mus te,
  a -- do -- ra -- mus te,
                                % 22a
  a -- do -- ra -- mus te,
  a -- do -- ra -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus te,
                                % 23a
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus te,
  glo -- ri -- fi -- ca -- mus te.
}

pianoRHoneGloria = \relative {
  <bes d g>8 g'' [ <g, bes> d' <d, fis> c' ] | % 14a
  <d, g bes>8 <d' g bes> [ <bes d g> <d g bes> <fis, c' d> <c' d fis> ] |
  <bes d g>8 q _[ <d, g bes> <g bes d> <d fis> <fis c'> ] |
  <g bes>8 <d' g bes> [ <bes d g> <d g bes> <fis, c' d> <c' d fis> ] | % 14b
  <bes d g>16 g' a bes <c, ees a> g' fis g d f ees d |
  \vo <fis, a c>4-. q-. r |
  \ov <c ees fis a>16 g'' a bes <d, a'> g fis g c, ees d c | % 14c
  <g bes>16 fis g a bes <c d> <bes e> <c fis> <d g> <e a> <d g> <e a> |
  <a, f'>16 d e f <g, cis e> d' cis d a c bes a |
  \vo <g bes>8 g g g g g | % 15a
  \ov <g cis e>16 d' e f <a, cis e> d cis d g, bes a g |
  <a f' a>16 <a d f> <g cis e> <a d f> <f a d> f' c f bes, f' a, f' |
  <g, bes>16 <bes d g> <a c fis> <bes d g> \vo d8 \ov d [ g, f' ] | % 15b
  <bes, e>16 <g c e> <f b d> <g c e> <e g c> e' bes e a, e' g, e' |
  <a, c f>16 f' g a <a, c g'> f' e f s8 \vo e |
  s8 c-. bes-. g'-. g,-. e'-. | % 15c
  <c f>4 d8(c) c(b) |
  <b d g>8-. s <d, g>-. <b g'> <c a'> <d b'> |
  \ov <ees g c>16 c' [ d ees ] <g, d'> c b c \vo c8 b | % 16a
  <g c>8 g f aes d, b' |
  \ov <ees, a c> <a c d> <a c ees> <a c d> <a c ees> <a c> |
  <g c d>16-. <d' f> <ees g> <f aes> <ees g> <d f> <c ees> <d f> <g, d'> <d' f> <c ees> <b d> | % 16b
  <ees, g c>16 c' d ees <ees, g d'> c' b c f, aes g f |
  \vo s8 g-. f-. aes-. d,-. b'-. |
  \ov <ees, g c>16 c' d ees <ees, g d'> c' b c g bes aes g | % 16c
  \vo aes8-. c-. bes-. des-. g,-. e'-. |
  \ov <f, aes f'>16 c' aes f aes c f c aes f aes c |
  <ees, g ees'>16 c' g ees g c ees c g ees g c | % 17a
  \vo d8 f d(b) aes'(g) |
  \ov <c, ees>16 <g c ees> <f b d> <g c ees> <ees g c>8 g' c, bes' |
  <c, ees aes>16 <aes c f> [ <g bes e> <aes c f> ] <f aes c>8 s8 \vo aes'4 | % 17b
  \ov <d, f aes>16 <f, bes d> [ <ees a c> <f bes d> ] <d f bes>8 f' [ bes, <bes d aes'> ] |
  <bes d g>16 <g bes ees> [ <f aes d> <g bes ees> ] <bes, ees g>8 s \vo g''4 |
  \ov <c, g'>8 f <g, c ees>(<f d'>) <g ees'>(<ees c'>) | % 17c
  <aes c aes'>8 <f des'> [ <ees c'>(<d b'>) <ees c'>(<c aes'>) ] |
  \vo aes''4 <f aes> q |
  \ov <d f aes>16 <b d> <c ees> <d f> <c ees> <b d> <a c> <b d> <c e> <g g'> <aes f'> <f d'> | % 18a
  <g ees'>16 <d g b> <ees aes c> <aes c f> \vo <b d>4. c8 |
  \ov <ees, g c>16-. c' d ees d c b c g bes aes g |
  aes16 c f aes c8 <aes c> <f c'> <c c'> | % 18b
  g16 c ees g c8 <g c> <ees c'> <c c'> |
  f,16 b d f <f b>8 <d b'> <aes' b> <g b> |
  \vo c16 g f g ees8 g c, ees | % 18c
  ees8 d <b d>4. c8 |
  \ov <ees, g c>4-. <g c ees>-. r |
  <f c' f>4-. <f g bes d>-. r |
  <ees g bes ees>4-. <ees f a c>-. r |
  <d f a d>4-. <d ees g bes>-. r | % 19a
  <c ees g c>4-. <c d fis a>-. r |
  <c d g>4-. <bes' e g bes>-. r |
  <a c e a>4-. <a bes d f>-. r |
  <g bes d g>4 <g c e> r |
  <f a c f>4-. <f g bes d>-. r | % 19a
  <ees g bes ees>4-. <ees f a c>-. r |
  <f a bes>4-. <d g d'>-. r |
  <c e g c>4-. <c d f a>-. r |
  <bes d f bes>4-. <bes c e g>-. r |
  <a c e a>4-. <a bes d f>-. r | % 19b
  <g bes d g>4-. <g a cis e>-. r |
  <f a d>16-. d'' [ e f ] e d cis d a c bes a |
  bes16 d f bes d8 <bes d> <g d'> <d d'> |
  a16 d f a d8 <a d> <f d'> <d d'> | % 20a
  g,16 cis e g <g cis>8 <e cis'> <bes' cis> <a cis> |
  <d, f a d>8 d' <a, d f> a' cis, g' |
  <a, d f>8 <f' d'>8 [ <a, d f> <d f a> <a cis> <c g'> ] |
  <a d f>8-. <f d'> [ <d f> <f a> cis <cis g'> ] | % 20b
  <a d f>8 <d' f> [ <f, a d> <a f'> <cis, e a> <g' cis> ] |
  <f a d>16 d' [ e f ] <g, bes e> d' cis d a c bes a |
  <e g cis>8-. g, <bes' e g>-. [ g, g g ] | % 20c
  <g' cis e>16 d' e f \vo a8-. s4. |
  f,8 a a b16 cis d e d e |
  <e, a c>16 a b c b a gis a e g f e | % 21a
  s4 \vo <gis b d>4-. r |
  s4 <e' gis>8 s \ov d,16 f e d |
  <e' a c>16-. <c e a> [ <b d gis> <c e a> ] <a c e> c g c f, c' e, c' | % 21b
  <d, f c'>16-. <a' d f> [ <g cis e> <a d f> ] <f a d> f' c f b, f' a, f' |
  <f, g b>16 <b d g> [ <a c fis> <b d g> ] <g b d> b f b e, b' d, b' |
  <e, g c e>16 c' d e \vo d c b c f, a b8 | % 21c
  <g c e>16 c d e d c bes d f, a b8 |
  c8-.(c-.) ees4-. r |
  <a, d>4-. fis8 fis [ <e g> <fis a> ] |
  \ov <d g>16-. g' [ a bes ] <d, a'> g fis g c, ees d c | % 22a
  \vo g'16 g a bes a g fis g c, ees fis8 |
  \ov <bes, e g bes>8 <e g> <bes e g> <a e' g> <bes e g> <g e' g> |
  <a d g>16 <c a'> <d bes'> <ees c'> <d bes'> <c a'> <bes g'> <c a'> d q <bes g'> <a fis'> |
  <bes d g>16 g' a bes \vo a g fis g c, ees d c | % 22b
  bes8 d c ees a, fis' |
  \ov <bes d g>16 g a bes \vo a g fis g \ov d f ees d |
  \vo ees8 g f aes \ov d, b' | % 22c
  <c, ees c'>16 g' ees c ees g c g ees c ees g |
  <bes, d bes'>16 g' d bes d g bes g d bes d g |
  <c, ees a>16 fis c a c fis a fis c a c fis | % 23a
  <g, bes g'>16-. <d g bes> [ <c fis a> <d g bes> ] <bes d g>8 d' g, f' |
  <bes, c ees>16-. <g c ees> [ <f b d> <g c ees> ] <ees g c> ees' bes ees a, ees' g, ees' |
  <a, ees' f>16-. <c, f a> [ <bes e g> <c f a> ] \vo <a c f>8 c' f, ees' | % 23b
  s16 \ov <f, bes d> <ees a c> <f bes d> <d f bes> d' aes d g, d' f, d' |
  <ees, g d'>8 <c' ees> <bes d>(<a c>) <bes d>(<a c>) |
  <bes ees g>8-. <aes c> [ <g bes>(<fis a>) <g bes>(<ees g>) ] | % 23c
  <ees g c>8-. \vo fis' fis(g) g(fis16 g) |
  s4 <bes, g'>16 <a fis'> <g e'> <a fis'> <g g'> <bes d> <c ees> <a c> |
  \vo r8 c <fis, a>4. <d g>8 |
  \ov <b d g>2.\fermata |
}

pianoRHtwoGloria = \relative {
  \globalGloria \vt
  s2.*5 | r8 c' c c c c | s2.*3 | % 14
  <cis e>4 <bes c e> r | s2.*2 | % 15a
  s4 g'16 bes s4. | s2. | s2 bes16 d c bes |
  <a c f>16 f g a g f s4. | <f a>8-.(q-. <f aes>-. q-. <ees aes>-. q-.) | g g, <g b> s4. |
  s2 f'16 aes g f | ees c d ees d c b c s4 | s2. | % 16a
  s2.*2 | <ees g c ees>16-. c d ees d c b c s4 |
  s2. | <c f>16 f g aes g f e f s4 | s2. |
  s2. | <f aes>16 b aes b g b f g b d f d | s2. | % 17a
  s4. c8 f ees | s2. | s4. <bes f'>8 ees des |
  s2.*2 | <c f>8 b b(c) c(d) |
  s2. | s4 g, <d g> | s2. | % 18a
  s2.*3 |
  <c' ees>8 b c4 <ees, g>8 c'16 b | <a c>8. b16 d,4 g | s2.*3 |
  s2.*14 | % 19
  s2.*8 | s4 e'16 d cis e g, bes a g | d cis d e f g f g a b a b |
  s2. | <f b d f>8 d d d d d | <d' gis b>16-. a b c b a gis a s4 | % 21a
  s2.*3 |
  s4. e8 d g16 f | e8 g f d~d g16 f | e8 <e g> <ees a>(<c ees g>) <bes ees g>(<bes ees fis>) | <d fis>8 d d d d d |
  s2. | <bes' d>8 r r ees a, d16 c | s2.*2 | % 22a
  s4 <bes d> a8 fis | <d g>16 g a bes a g fis g s4 | s4 <bes d> s |
  <g c>16 c d ees d c b c s4 | s2.*2 |
  s2.*3 | % 23a
  s2 f,8*2~ | \vo <f d'>16-. \vt s16 s8 s2 | s2. |
  s2. | s8 r <c' ees>4 4~ | <c ees a>16 <a fis'> <bes g'> <c a'> s2 | <bes d>16 <fis a> <g bes> <ees g> d4 a | s2. |
}

dynamicsPianoGloria = {
  \override DynamicTextSpanner.style = #'none
  s2.*102
}

pianoLHoneGloria = \relative {
  \globalGloria
  \repeat unfold 4 {<g, d' g>4-. <g, g'>-. r |}
  <g' d' g>4-. <g, g'>8-. <bes'' d> [ <a c> <g bes> ] | % 14b+
  <g, g'>4-. <g, g'>-. r |
  <g' g'>4-. <g, g'>8-. \clef treble <a''' c> [ <g bes> <fis a> ] \clef bass | % 14c
  r16 <d,, d'>16 <e e'> <fis fis'> <g g'> <a a'> <g g'> <a a'> <bes bes'> <c c'> <bes bes'> <c c'> |
  <d d'>4 <d, d'>8-. \clef treble <f'' a>8 [ <e g> <d f> ] \clef bass |
  <d,, d'>4-. <d, d'>-. r | % 15a
  <d' d'>4-. <d, d'>8-. g'' [ f e ] |
  <d, a' d>4 <d, d'>8-. a''' [ d, c' ] |
  <g, d' g>4-. <g, g'>8-. \clef treble f'''16 [ bes e, ] bes' d, bes' \clef bass | % 15b
  <c,, g' c>4-. <c, c'>8-. c' [ c' c, ] |
  <f, c' f>4 <f, f'>8 a'''8-. [ g-. ] r |
  <f,, c' f>4-. <f, f'>8 e'''16 [ g ] bes, d c bes | % 15c
  <f, f'>4-. <f, f'>-. f''8-.(f-.) |
  \crossStaff <f, f'>8-. s <f, f'> <f'' g> [ q q ] |
  <ees, ees'>4-. <ees, ees'>-. r | % 16a
  <aes' ees' aes>4-. <aes, aes'>-. f''16 aes g f |
  <fis, fis'>4-. <fis, fis'>-. r |
  <g' d' g>4-. <g, g'>-. r | % 16b
  <c c'>4-. <c, c'>-. r |
  <c' c'>4-. <c, c'>-. f''16 aes g f |
  <c, c'>4-. <c, c'>8-. g''' [ bes e, ] | % 16c
  <c, c'>4-. <c, c'>-. bes'''16 des c bes |
  <c,, c'>4-. <c, c'>8-. <f'' aes>16 [ <g bes> ] <aes c>8 <f aes c> |
  <c, c'>4 <c, c'>8-. c'' [ c' c ] | % 17a
  c8 <c,, c'> [ q q q q ] |
  q4-. <c, c'>8-. bes'''16 [ ees ] aes, ees' g, ees' |
  <f,, c' f>4-. <f, f'>8-. \clef treble ees'''16 [ aes ] d, aes' c, aes' \clef bass | % 17b
  <bes,, f' bes>4-. <bes, bes'>8-. aes''16 [ d ] g, d' f, d' |
  <ees,, bes' ees>4-. <ees, ees'>8-. des'''16 [ g ] c, g' bes, g' |
  <aes,, aes'>16 c' d ees d c b c g bes aes g | % 17c
  f16 aes bes c bes aes g aes ees g f ees |
  d16 <f, f'> <g g'> <aes aes'> <g g'> <f f'> <ees ees'> <f f'> <c c'> <ees ees'> <d d'> <c c'> |
  <b b'>8 <g g'> <c c'> <ees ees'> <aes aes'>4 | % 18a
  r8 <f f'> <g g'>4 <g, g'> |
  s4 \vo c''2 |
  c8 aes \ov <f, f'>16 c'' [ f c ] aes f aes c | % 18b
  \vo c8 g \ov <ees, ees'>16 c''16 [ ees c ] f ees f c |
  \vo b8 f \ov <d, d'>16 b''16 [ d b ] f d f b |
  c,16 ees d ees c ees bes ees aes, ees' g, ees' | % 18c
  fis,4 g <g, g'> | <c, c'>-. <c' c'>-. r |
  <d d'>-. <g, g'>-. r | <c c'>-. <f, f'>-. r |
  <bes bes'>4-. <ees ees'>-. r | % 19a
  <a, a'>4-. <d d'>-. r |
  <g g'>4-. <c, c'>-. r |
  <f f'>4-. <bes, bes'>-. r |
  <e e'>4-. <a, a'>-. r |
  <d d'>4-. <g, g'>-. r | % 19b
  <c c'>4-. <f, f'>-. r |
  <bes bes'>4-. <bes' bes'>-. r |
  <a a'>4-. <d, d'>-. r |
  <g g'>4-. <c, c'>-. r |
  <f, f'>4-. <bes bes'>-. r | % 19c
  <ees, ees'>4-. <a a'>-. r |
  <d, d'>8 d'' [ f a f d ] |
  \vo d'8 bes \ov <g, g'>16 d'' [ g d ] bes g bes d |
  \vo d8 a \ov <f, f'>16-. d'' [ f d ] a f a d | % 20a
  \vo cis8 g \ov <e, e'>16-. cis'' [ e cis ] g e g c |
  <d,, d'>4-. <d, d'>8-. cis''16 d e f d e |
  <d, d'>4-. <d, d'>8-. <cis'' e>16 <d f> \vo g a f g |
  \ov <d, d'>4-. <d, d'>8-. a''' [ a a ] | % 20b
  <d,, d'>4-. <d, d'>8-. a''' [ a a ] |
  <d,, d'>4-. <d, d'>-. r |
  <d' d'>4-. <d, d'>8-. e''16 [ d ] cis e d f | % 20c
  <d, d'>4-. <d, d'>8-. <e'' g>8 [ <d f> <cis e a> ] |
  <d f a>16 <a, a'>16 [ <b b'> <cis cis'> ] <d d'> <e e'> <d d'> <e e'> <d d'> <g g'> <f f'> <g g'> |
  <a a'>4-. <a, a'>8-. <e'' c'> <d b'> <c a'> | % 21a
  <a a'>4-. <a, a'>-. a''8 c |
  <a, a'>4-. <a, a'>8-. b'' e, b' |
  <a, a'>4-. <a, a'>8-. e''' [ a, \rh g' ] \lh \ov | % 21b
  <d,, d'>4-. \ottava #-1 d,8-. \ottava #0 a''' [ d, c' ] |
  <g, g'>4-. <g, g'>8-. d''' [ g, \rh f' ] \lh \ov |
  <c,, c'>4 \ottava #-1 c,-. \ottava #0 r | % 21c
  q4-. \ottava #-1 c8-. \ottava #0 c''8 [ c c ] |
  q4-. \ottava #-1 c,,-. \ottava #0 r |
  <c'' c'>4-. <c, c'>8-. c' c c |
  <bes bes'>4-. <bes, bes'>8-. a''' [ g fis ] | % 22a
  <ees,, ees'>4-. <ees, ees'>8-. c'' [ d ees ] |
  <cis, cis'>4 <cis, cis'>-. r |
  <d' d'>4-. <d, d'>8 e'' [ fis d ] |
  <g, g'>4-. <g, g'>-. r | % 22b
  <g' g'>4-. <g, g'>-. c''16 ees d c |
  <g, d' g>4-. <g, g'>8-. <bes'' d> [ <b d> <g b> ] |
  <g, g'>4-. <g, g'>-. f'''16 aes g f | % 22c
  <g,, g'>4-. <g, g'>8-. <ees''' g> [ <c ees> <g c> ] |
  <g, g'>4-. <g, g'>8 <d''' g> [ <bes d> <g bes> ] |
  \vo g8 fis16 e fis8 a d, fis | % 23a
  \ov <g, d' g>4-. <g, g'>8-. f''16 [ bes ] ees, bes' d, bes' |
  <c, c'>4-. <c, c'>8-. <c' g'> [ <ees c'> <c bes'> ] |
  <f, f'>4-. <f, f'>8-. ees''16 [ a ] d, a' c, a' | % 23b
  <bes, bes'>4-. <bes, bes'>8 <bes' f'> [ <d bes'> <bes aes'> ] |
  <ees, ees'>16 g' [ a bes ] a g fis g d f ees d |
  c16 ees f g f ees d ees bes d c bes | % 23c
  a16 <c, c'> <d d'> <ees ees'> <d d'> <c c'> <bes bes'> <c c'> <g g'> <bes bes'> <a a'> <g g'> |
  <fis fis'>8 <d' d'> <bes bes'> <d d'> <ees, ees'>4 |
  r8 <c' c'>8 <d d'>4 <d, d'> |
  <g g'>2.\fermata |
}

pianoLHtwoGloria = \relative {
  \globalGloria \vt
  s2.*36 |
  s2.*2 | <c,, c'>8 c'' [ ees g ees c ] | % 18a
  f4 s2 | ees4 s2 | d4 s2 |
  s2.*5 |
  s2.*13 | g4 s2 | % 19
  f4-. s2 | e4-. s2 | s2. | s2 e8 d | s2.*6 |
  s2.*10 | % 21
  s2.*10 |
  r8 g, g g g g | s2.*10 | % 23
}
