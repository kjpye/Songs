globalKyrie = {
  \key g \minor
  \time 4/4
}

TempoTrackKyrie = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
  s1*118
}

RehearsalTrackKyrie = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "2d" } s1*3
  \textMark \markup { \box "2e" } s1*3
  \textMark \markup { \box "2f" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "5c" } s1*3
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "7c" } s1*3
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*3
  \textMark \markup { \box "8c" } s1*3
  \textMark \markup { \box "9a" } s1*3
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "9c" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "10c" } s1*3
  \textMark \markup { \box "11a" } s1*3
  \textMark \markup { \box "11b" } s1*3
  \textMark \markup { \box "11c" } s1*3
  \textMark \markup { \box "12a" } s1*3
  \textMark \markup { \box "12b" } s1*3
  \textMark \markup { \box "12c" } s1*3
  \textMark \markup { \box "13a" } s1*3
  \textMark \markup { \box "13b" } s1*3
  \textMark \markup { \box "13c" } s1*3
}

dynamicsSopKyrie = {
  \override DynamicTextSpanner.style = #'none
  s1*118 |
}

sopranoKyrie = \relative {
  \globalKyrie
  R1*18 |
  R1*2 | d''8. 16 8 r r2 | % 3a
  R1*3 |
  R1 | d8. 16 ees(d) c(d) ees(d c8) 4 | a'8 c, c c c(bes) 4 |
  g'8 d c16(bes) a(g) c(d ees4 d16 c) % 4a
  d8 e16(fis) g8(d~8. c32 bes) a4 |
  d4~16(e32 d) cis16(d) e8 a,8 16(b cis d |
  e16 f g8) a, g' g(f) f4 | R1*2 | % 4b
  f8. 16 g(f) e(f) g(f e8) 4 | % 4c
  g8 e e e e(d) 4 |
  f8. 16 8 8 8(e16 d e4~ |
  e8 d16 cis) a'8 d, d(cis) 8 a | % 5a
  c8(f) r d b4 r8 g |
  ees'4 4 4 r |
  d4(c16 bes) a(g) a8 a e'4~ | % 5b
  e8(f16 e d c) bes(a) g8 c g'4~ |
  g8(a16 g f e d c bes8) a g4 |
  r16 e'(f g) f(e d cis a'8) g16 f e4 | % 5c
  d4 r r2 | R1 |
  R1  r2 r8 d f, d' | ees(g r16 f ees s c8) ees a, c | % 6a
  d8(f r16 ees d c bes8) d g, bes |
  c8(ees r16 d c bes a8) c fis,4 | % 6b
  r8 d'4 e16 f e8(f g4~ | 8) f8 8 ees d d, d'4~ |
  d8(g, c4~8 d ees4~ | 8 d16 c d ees f8~8 bes,16 c des8) c | % 6c
  c4 4~8 b16 c d4~ |
  d8(f) ees(d) c r r c | f8(aes r16 g f ees d8) bes r d | % 7a
  ees8(g r16 f ees d c8) aes f ees'~ |
  ees8 d16 c f8 16(ees) d4 r | r8 b c d g, r r4 | % 7b
  r8 c8 16(bes) aes(g) aes8 r r4 |
  r2 r8 g4 ges16 bes | c8(d16 ees d c) b(c) b8 r ees4~ | % 7c
  ees8 d16 c d4~8 c8 4 |
  r8 bes16(a) bes8(g c16 d ees4 d16 c | % 8a
  b8) g g'4~8(bes,) c ees | d8 b g'4~8(bes,) c ees |
  d16(g, a b c d ees d f ees) d(c) d(b) c8 | 4(b) c r | R1 | % 8b
  R1*3 |
  R1*6 |
  r4 c8. 16 f,4 f' | b,(c8 d ees4.) d16(c) | fis4 r8 fis g(f16 ees d8 ees | % 9c
  f8 ees16 d c8 d ees d16 c bes8 c | % 10a
  d4.) ees16(f) bes,8 c des4~ |
  des16(bes c des c bes aes g f g aes bes c ees d c |
  g'4) g, r c8. 16 | f,4 f' b,(c8 d | ees4.) d16(c) fis4 r8 fis | % 10b
  g8(f16 ees d8 ees f ees16 d c8 d | % 10c
  ees8 d16 c bes8) c d g, g'4~ |
  g8(f16 g a g f e f4~8 g16 f) |
  ees8 d16(c) bes(a g f e8 e'4 d16 cis | % 11a
  d16 a d e f4~8) e8 4~ |
  e8 16(d) e8 d d g4 g,8 |
  a8 bes c4~8(d16 ees d8.) c16 | % 11b
  bes8 c d(cis16 d e4) a, |
  r8 a d4~8(g, c4~ |
  c8 fis,16 g a bes c d e d c8~16 bes a bes | % 11c
  c8) c a' c, c(bes) 4 |
  g'8 d c16(bes) a(g) c(d ees4 d16 c |
  d8) e16(fis) g8 d8 8. c32(bes) a8 d | % 12a
  d8(f) r d c4 r8 g | ees'4 4 4 r |
  d4(c16 bes) a(g) a8 a e'4~ | % 12b
  e8(f16 e) d(c bes a) g8 c g'4~ |
  g8(a16 g f e d c bes8) a g4 |
  r16 e'16(f g) f(e d cis a'8) g16 f e4 | % 12c
  d4 r r2 | r8 d4 16(ees) f8 ees16(d) ees(d) c(b) |
  c8 r r4 r8 fis g d | bes4 r r8 ees a, c | d r d4~8 ees16(d) c8 d | % 13a
  d4 d r8 a16(bes) c8(bes) | 8 g ees'4~8 d r4 | d4. g8 fis(d) bes(g) |
  fis8(c') bes(g) d'2~ | 8 c16(d) ees(a,) bes8 4(a) | g1\fermata |
  \bar "|."
}

wordsSopKyrie = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  e -- lei -- son, e -- le -- i -- son, e -- le -- i -- son,
                                % 5b
  Ky -- ri -- e e -- le -- i -- son, e -- le -- i -- son,
  e -- lei -- son, e -- lei -- son.
                                % 6a
  Chri -- ste e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
                                % 7a
  e -- lei -- son, e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
                                % 8a
  e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- le -- i -- son, e -- lei -- son.
                                % 9c
  Ky -- ri -- e e -- le -- i -- son,
  e -- le -- i -- son,
                                % 10a
  e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son,
  e -- le -- i -- son, e -- lei -- son,
                                % 11a
  e -- le -- i -- son, __ e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son, e -- lei -- son,
  e -- le -- i -- son, e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son,
                                % 12a
  e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son, e -- le -- i -- son,
  e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son,
                                % 13a
  e -- le -- i -- son, e -- le -- i -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son.
}

dynamicsAltoKyrie = {
  \override DynamicTextSpanner.style = #'none
  s1*118
}

altoKyrie = \relative {
  \globalKyrie
  R1*18 |
  R1*2 | g'4~16(a32 g) fis16(g) a8 d,8 16(e fis g | % 3a
  a16 bes c8) d, c' c(bes8) 4 | R1*2 |
  R1 | bes8. 16 c(bes) a(bes) c(bes a8) 4 | c8 a a a a(g) 4 |
  bes8. 16 8 8 8(a16 g a4~ | % 4a
  a8 g16 fis) d'8 g, g(fis) 4 |
  a8. 16 8 r r2 |
  R1*3 | % 4b
  a8. 16 bes(a) g(a) bes(a g8) 4 | % 4c
  e'8 g, g g g(f) 4 |
  a8. 16 8 8 8(g16 f g4~ |
  g8 f16 e) f8 8 8(e) 8 8 | % 5a
  ees8(aes) r f d4 r8 g |
  g8(ges4) f8 4 r |
  r4 g~8 f16(g) a(g) f(e) | % 5b
  f8 d bes'4~8 a16(bes) c(bes) a(g) |
  a8(a, d4~8 cis16 d e d cis b |
  cis8 d16 e f g a bes a4. g8) | % 5c
  f4 r r2 |
  r2 r8 a d, a' |
  bes8(d r16 c bes a g8) bes e, g | a(c r16 bes a g f8) a d,4 | % 6a
  r8 g4 a16 bes a8(bes c4~ | 8) bes8 8 aes g( a bes4~ |
  bes8) a a g fis d a'4~ | 8(d, g4~8 a bes4~ | % 6b
  bes8 a16 g a bes c8~8 f,16 g aes8) g |
  g4 4~8 f16 ees f4~ | 8(aes) g(f) bes r r g | % 6c
  ees8(c) r ees f d4 16 16 |
  g8 bes16(a) bes8 g c(ees r16 d c bes | aes8) ees r aes b(d r16 c bes aes | % 7a
  bes8) d, ees bes'~8 aes16 g c(bes a g |
  f16 ees d f aes8) 8 8(g) r4 | % 7b
  r2 r8 g4 16 aes | bes8(aes16 g f8) 16(e) f8 r r4 |
  r8 b c g ees r r4 | r8 aes d, f g r b g | r aes16(g) a8 g8 4 4 | % 7c
  r8 f16(ees) f8(ees) 8 c aes'4~ | 8 g r4 4.(c8) | % 8a
  b8 g ees(c) b f' ees c |
  g'2~8(f16 g) aes(d,) ees8 | 4(d) ees r | R1 | % 8b
  R1*3 |
  R1*3 | % 9a
  r4 g8. 16 c,4 c' | fis,4(g8 a bes4.) a16(g) | % 9b
  cis4 r8 cis d(c16 bes a8 bes |
  c8 bes16 a g8 a bes a16 g f8 g | aes8 g16 f ees8) f g c, c'4~ | % 9c
  c8(bes16 c d c bes a g4. c16 bes |
  a8 bes c bes16 a g8 a bes a16 g | f8 g aes g f) g16(a) bes4~ | % 10a
  bes2 aes8 c bes a |
  g16(aes g f ees f g8 c,16 d ees f g8 f~ | 16 g) f(e) d2 r4 | R1 | % 10b
  r4 g8. 16 c,4 c' | fis,4(g8 a bes4.) a16(g) | cis4 r8 cis d(c16 b a8 b | % 10c
  c8 bes16 a g8 a bes a16 g f8) g | % 11a
  a8 d, d'4~8(cis16 d e d) cis(b) |
  cis4 c b(bes |
  a4~16 g fis g a8 d~16 c b a | % 11b
  g8) a bes8. a16 g8(a16 bes e,8) a |
  a4 r8 g8 4(r8 f~ |
  f16 g a bes c bes a bes c bes a8~8 d, | % 11c
  a'8) a a a a(g8) 4 |
  bes8. 16 8 8 8(a16 g a4~ |
  a8) g16(fis) d'8 g, g(fis) fis d | % 12a
  f8(aes) r f d4 r8 g | g4 8.(f16) 4 r |
  r4 g4~8 f16(g) a(g) f(e) | % 12b
  f8 d bes'4~8 a16(bes) c(bes) a(g) |
  a8(a, d4~8 cis16 d e d cis b |
  cis8 d16 e f g a bes a2) | % 12c
  fis4 r r8 8 g a | d, r r4 r8 g8 16(f) ees(d) |
  ees8 r r4 r2 | r8 d4 ees16(f) g8 a16(bes) a(g) fis(g) | fis8 r bes4~8 a16(g) a8 a | % 13a
  a8(g) 4 r8 f16(e) f8(d | g16 a bes4) a16(g) fis4 d'4~ | 8 fis, g bes a fis d'4~ |
  d8 fis, g bes a16(d, e fis g a bes a | c bes) a(g) a(fis) g8 4(fis) | d1\fermata |
}

wordsAltoKyrie = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e,
                                % 4c
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  e -- lei -- son, e -- le -- i -- son, e -- le -- i -- son,
                                % 5b
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Chri -- ste e -- le -- i -- son, e -- le -- i -- son,
                                % 6a
  Chri -- ste e -- le -- i -- son, e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son, e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
                                % 7a
  e -- lei -- sonm e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  e -- le -- i -- son, e -- le -- i -- son,
  Chri -- ste, Chri -- ste e -- lei -- son,
                                % 8a
  e -- lei -- son, e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son, e -- lei -- son.
                                % 9b
  Ky -- ri -- e e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son, __
                                % 10a
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son, e -- le -- i -- son,
                                % 11a
  e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son, e -- le -- i -- son, e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son,
                                % 12a
  e -- lei -- son, e -- le -- i -- son,
  e -- le -- i -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  e -- le -- i -- son, e -- le -- i -- son,
                                % 13a
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- lei -- son, e -- le -- i -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son, e -- lei -- son.
}

dynamicsTenorKyrie = {
  \override DynamicTextSpanner.style = #'none
  s1*118
}

tenorKyrie = \relative {
  \globalKyrie
  R1*18 |
  R1*2 | bes8. 16 8 r r2 | % 3a
  R1*3 |
  R1 | g'8. 16 8 8 16(f ees8) 4 | d8 d fis d8 4 4 |
  d8. 16 8 8 8(c16 bes c4~ | % 4a
  c8 bes16 a) bes8 8 8(a) d4 |
  f8. 16 8 r r2 |
  R1*3 | % 4b
  d8. 16 8 8 16(c bes8) 4 | % 4c
  a8 8 cis a8 4 4 |
  d8 a g16(f) e(d) g(a bes4) a16(g) |
  a8 8 d a a4 8 8 | % 5a
  aes8(f) r a g4 r8 f' |
  ees8(c) a16(bes c8) a4 r |
  r8 f' e(d e cis a cis) | % 5b
  a8 8 f'(d g e) c4 |
  r8 e a(f g f) e(f) |
  e8 a, a e' d4 cis | a4 r r2 | R1 | % 5c
  R1*4 | % 6a
  R1*2 r2 r8 d f, d' |
  ees8(g r16 f ees d c8) ees a, c | d(f r16 ees d c bes8) d g, bes | % 6c
  c8(ees r16 g f ees d8 f r16 ees d c |
  b8) d g4 r8 c,4 d16 ees | aes,8(bes c4~8 bes) 8(aes) | % 7a
  g8 aes bes4~8 b c c~ |
  c8 d16 ees d8 16(c) b4 r | r2 r8 ees4 e16 f | % 7b
  g8(f16 e f8) c8 c r r4 |
  r8 g ees g c, r r4 | r8 f' b, c d r g b, | r f'16(g) f8 f ees4 4 | % 7c
  r8 d16(ees) d8 8 c g' c,16(d ees8) | % 8a
  d4 r r g~ | 8(d) ees g f(d) ees g |
  b,8(f' ees d c d16 ees) f8 a, | g2 4 r | R1 | % 8b
  R1*3 |
  r2 r4 c8. 16 | f,4 f' b,(c8 d | ees4.) d16(c) fis4 r8 fis | % 9a
  g8(f16 ees d8 ees f ees16 d c8 d | ees8 d16 c bes8) c d g, g'4~ | % 9b
  g8(f16 g a g f e f2~ |
  f8 g16 f ees8 f16 ees d2~ | 8 ees16 d c8 b) c4 g8. 16 | % 9c
  a4. bes16(c) d8 g, r g' |
  f8(g a g16 f ees8 f g f16 ees | % 10a
  d8 ees) f ees d(ees16 f g,8 aes |
  bes8 aes16 g f8 c'4 f8~16 g f ees |
  d8 g,16 a b8 c16 d g,8 g'16 f ees8 d16 c | % 10b
  bes8 c d c16 bes f'8 ees16 d g4~ |
  g8) a16(g) fis8 g c,8(d16 ees) a,4 |
  g4 r r2 | R1 | r2 r4 d'8. 16 | % 10c
  g,4 g' cis,(d8 e | % 11a
  f4.) e16(d) gis4 r8 gis |
  a8(g16 f e8 fis g f16 e d8 e |
  f8 ees16 d c8 d ees d16 c bes8 c | % 11b
  d4. e16 f e8 f16 g cis,8) e |
  d4 r8 g, c4(r8 f, |
  d'8 c16 bes a8) d c ees4 8 | % 11c
  d8 8 4~16(c) d(c) d4 |
  d8. 16 8 8 8(c16 bes c4~ |
  c8) bes16(a) bes8 8 8(a) d a | % 12a
  a8(f) r aes g4 r8 f' | ees(c) a16(bes c8) a4 r |
  r8 f'(e d) e(cis a cis) | a a f'(d) g(e) c4 | % 12b
  r8 e a(f g f) e(f) |
  e8 a, a e' d4(cis) | a r r8 d e fis | g r r4 r8 b, c g | % 12c
  g8 r r4 r2 | r8 bes4 c16(d) ees8 c fis, g | a r fis'8. 16 g8 c, c(a | % 13a
  bes8) d16(c) bes4 r8 c16(bes) a8 a | g d' g,16(a) bes8 a4 r | r d4~8 a bes d |
  c8(a bes) d fis, c' bes a | g a16(bes) c(d) e8 d g, d'(c) | bes1\fermata |
}

wordsTenorKyrie = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
                                % 4a
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
                                % 5a
  Ky -- ri -- e e -- lei -- son, e -- le -- i -- son,
  e -- le -- i -- son, e -- lei -- son, e -- lei -- son,
  e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son.
                                % 6b
  Chri -- ste e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son,
                                % 7a
  Chri -- ste e -- le -- i -- son, e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  e -- le -- i -- son, e -- le -- i -- son,
  Chri -- ste, Chri -- ste e -- lei -- son,
                                % 8a
  e -- le -- i -- son, e -- lei -- son,
  Chri -- ste e -- lei -- son, e -- lei -- son,
  e -- lei -- son.
                                % 9a
  Ky -- ri -- e e -- le -- i -- son,
  e -- le -- i -- son, e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
                                % 10a
  e -- le -- i -- son, e -- le -- i -- son,
  Ky -- ri -- e e le -- i -- son,
                                % 11a
  e -- le -- i -- son, e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
                                % 12a
  e -- lei -- son, e le -- i -- son,
  e -- le -- i -- son, e -- lei -- son,
  e -- le -- i -- son, e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  e -- le -- i -- son, e -- le -- i -- son,
                                % 13a
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  e -- le -- i -- son, e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son, e -- lei -- son.
}

dynamicsBassKyrie = {
  \override DynamicTextSpanner.style = #'none
  s1*118
}

bassKyrie = \relative {
  \globalKyrie
  R1*18 |
  R1*2 | g8. 16 8 r r2 | % 3a
  R1*3 |
  R1 | g8. 16 8 bes a16(bes c8) 8 a | fis(a d, fis g4) g, |
  g'8 a16(bes) a(g) fis(g) a8(bes16 c bes a g a | % 4a
  bes8 c16 d) c(bes) a(g) d'4 d, |
  d8. 16 8 r r2 |
  R1*3 | % 4b
  d8. 16 8 f e16(f g8) g e | % 4c
  cis8(e a, c d4) d |
  d8 e16(f) e(d) cis(d) e8(f16 g f e d e |
  f8 g16 a) g(f) e(d) a'4 a, | % 5a
  r2 r8 g' ees(g |
  c8) c, r4 r8 f d(f) |
  bes8 16 a g4 r8 a cis,(a | % 5b
  d8 cis) d g e(d e c |
  f8 e) f bes g(a) bes(g) |
  a8 cis, d e f(d a' a,) | d4 r r2 | R1 | % 5c
  R1*4 | % 6a
  r2 r8 a' d, a' | bes(d r16 c bes a g8) bes e, g | % 6b
  a8(c r16 bes a g f8) bes d,4 |
  r8 g4 a16 bes a8(bes c4~ | 8) bes8 8 aes g(a bes4~ | % 6c
  bes8) aes aes g f(g aes4~ |
  aes8 g) g(f) ees r8 r4 | r8 c f(aes r16 aes g f bes8) 8 | % 7a
  ees,8 bes ees(g r16 g f ees aes8) aes |
  d,8 8 f d g4 r | r8 g a b c r r4 | r8 g aes c f, r r4 | % 7b
  r2 r8 ees4 f16 g | aes8(f g) aes g r g g, | r f'16(ees) f8(b, c) ees16(d) ees4 | % 7c
  r8 d'16(c) d8(g,) aes(g) f(ees16 f) | g1~ | g~ | % 8a
  g8 g a bes c(aes) f fis | g(d g4) c, r | R1 |
  r2 r4 g'8. 16 | c,4 c' fis,(g8 a | bes4.) a16(g) cis4 r8 cis |
  d8(c16 bes a8 bes c bes16 a g8 a | bes8 a16 g f8 g aes g16 f ees8) f | % 9a
  g8 c, c'4~8(d16 ees d c bes a |
  bes2~8 c16 bes a4~ | 8 bes16 a g8 fis) g4 d8. 16 | % 9b
  e8 8 a, a d4 r8 d' |
  a8(bes c a d, c d ees | f g16 aes g f ees d c8 d ees4~ | % 9c
  ees4 d8 c) bes4 r8 c' |
  d8(c16 bes a8 bes c bes16 a g8 a | % 10a
  bes8 aes16 g f8 g aes g16 f ees8 f |
  g8 f16 e d8) ees d c f4~ |
  f8(ees16 f g f ees d ees4.) f16(ees) | % 10b
  d2~8 g16(aes) g(f ees d | c8) c d ees a,4 d |
  g,4 r r2 | R1*2 | % 10c
  R1*2 | r2 r4 g'8. 16 | % 11a
  c,4 c' fis,(g8 a | % 11b
  bes4.) a16(g) cis4 r8 cis |
  d8(c16 bes a8 b c bes16 a g8 a |
  bes8 a16 g fis8 g~g a16 bes a g fis e | % 11c
  fis8 g16 a g fis e d g4) g, |
  g'8 a16(bes) a(g) fis(g) a8(bes16 c bes a g a |
  bes8) c16(d) c(bes) a(g) d'4 d, | r2 r8 g(ees g) | % 12a
  c8 c, r4 r8 f d f |
  bes8 16 a g4 r8 a cis,(a | % 12b
  d8 cis) d g e(d e c | f e) f bes g(a) bes(g) |
  a8 cis, d e f(d a' a,) | d4 r r2 | r8 bes'4 16(c) d8 g, ees g | % 12c
  c,8 r r4 r8 d' bes d | g,4 r r8 c, d ees | d r d'8. d,16 e8 c'16(bes) c8(fis, | % 13a
  g8) bes16(a) bes4 r8 a16(g) a8(d,) | ees(d) c(bes16 c) d2~ | d1~ |
  d2~8 d e fis | g(ees) c(cis) d(c) d4 | g,1\fermata |
}

wordsBassKyrie = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
                                % 4a
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lsi -- son,
                                % 5b
  Ky -- ri -- e e -- lei -- son, e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e e -- lei -- son.
                                % 6b
  Chri -- ste e -- le -- i -- son, e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son,
                                % 7a
  e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
                                % 8a
  e -- lei -- son, e -- lei -- son,
  Chri -- ste, Chri -- ste e -- lei -- son.
  Ky -- ri -- e e -- le -- i -- son, e -- le -- i -- son,
                                % 9a
  e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son, e -- lei -- son,
  e -- le -- i -- son,
                                % 10a
  e -- le -- i -- son, e -- le -- i -- son,
  e -- le -- i -- son,
                                % 11a
  Ky -- ri -- e e -- le -- i -- son, e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son,
                                % 12a
  e -- lei -- son, e -- lei -- son,
  e -- le -- i -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son,
                                % 13a
  e -- le -- i -- son, e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son, e -- lei -- son,
  e -- lei -- son,
  Ky -- ri -- e -- e -- le -- i -- son.
}

pianoRHoneKyrie = \relative {
  \globalKyrie \ov
  <bes' d>4^\markup "Oboen."^\markup\bold\larger Kyrie <c ees>16(<bes d> <a c> <bes d> <c ees>8-.) <a c>-. q-. q-. |
  <c a'>8-. <a c>-. q-. q-. q(<g bes>) bes4 |
  \vo bes'4. 8 <g bes>8 <fis a>16 g <fis a>4~ |
  q8 s \ov <bes, g'>-. <bes d g>-. \vo d16(e fis g a8) c, | % 2b
  f4 4~8 <ees g>16(<f aes> <ees g> <d f> <c ees> <b d>) |
  ees8 4.~8 <d f>16(<ees g> <d f> <c ees> <bes d> <a c>) |
  d4 g~8 f16(g a g f e) | % 2c
  f8 16(ees) bes'4~8 a16(bes c bes a g) |
  <g a>8 a16(g f e d8)~d cis16(d e d cis b) |
  cis8 d16(e f g a bes) a4 cis, | % 2d
  d8 \ov r <fis a>4~8 <g bes>16(<a c> <g bes> <fis a> <e g> <d a'>) |
  \vo <g bes>8 <bes, d> <d f>4~8 <ees g>16(<f aes> <ees g> <d f> <c ees> <b d>) |
  ees16(d c d) \ov <c ees>4~8 <bes d>16(<a c> <bes d> <a c> <g bes> <fis a>) | % 2e
  \vo bes8 d \ov <bes g'>4~8 <c a'>16(<d bes'> <c a'> <bes g'> <a fis'> <g g'>) |
  \vo fis'8-. s bes-. s c,-. s a'-. s |
  bes,8-. s g' s a,-. s f' s | % 2f
  g,8-. s ees' s s fis8 g <g bes> |
  <fis a>8 fis g <g bes> \ov <d fis a> d16(ees) d(ees) d(ees) |
  d16([e]) \vo d(ees) d(ees) g8 <d fis> e16(fis g a bes a) | % 3a
  c16(bes) a(g) a(fis) g8-. \ov <d, g bes>4 \vo <fis a> |
  \ov <bes, d g>8 r <d bes' d> r <ees a c> r <d a' c> r |
  <d fis a>8 r <a' d fis> r <g d' g> d'16([ees]) d(ees) d(ees) | % 3b
  \vo d16(ees) d(ees) d(ees) <g bes>8 \ov <d fis a> d16([ees]) d(ees) d(ees) |
  d16([ees]) \vo d(ees) d(ees) g8 <d fis>16(d e fis g a bes a) |
  c16(bes) a(g) a(fis) <e g>8-. \ov <d, g bes>4 \vo <fis a>\trill | % 3c
  \ov <bes, d g>8 <g' bes d> \vo <c ees>16(<bes d> <a c> <bes d> <c ees>8-.) c-. c-. c-. |
  \ov <a c a'>16-. bes(<a c> d \vo ees8) d d e16(fis g fis e fis) |
  bes4. <g bes>8 8 <fis a>16 g q4~ | % 4a
  q8 \ov <bes, e g>16[<a fis'>-.] <bes g'>8-. <bes d g>-. \vo g'16 e(fis g a <g bes> <fis a> <e g>) |
  \ov <d f a>8 r <a d f> r <bes e g> r <a e'> r |
  <d, a' cis>8 r <g a c e> r <f a d> a'16(bes) a(bes) a(bes) | % 4b
  \vo \repeat unfold 4 {a16(bes)} a8 cis, d f |
  e8 cis d <d f> e16 g(f e \ov d <cis e> <d f> <e g>) |
  <a, d f>4 <bes d g>16(<a f'> <g e'> <a f'> <bes d g>8) \vo e16(f e d cis d) | % 4c
  \ov <g, a e'>16(f' g a <cis, e bes'>8) a' <d, f a> b'16(cis <d, f d'> cis' b cis)
  <d, f a d>8 a' f <a, d f> \vo <d f> <bes cis e>16 d e8 <cis e>~ |
  q8 \ov <d, b' d>16 <e cis'> <f d'>8 <d f a d> <f a>16(<g b> <a cis> <b d> <cis ees> <d f> <e g> <cis e>) | % 5a
  <c ees aes>8 <f, d'>16(<g ees'> <f d'> <ees c'> <d b'> <ees c'>) <d f b>8 \vo <ees' g>16(<d f> <ees g> <d f> <c ees> <b d>) |
  \ov <c ees>8 <ees, c'>16(<f d'> <ees c'> <d bes'> <c a'> <d bes'>) <c a'>8 \vo <d' f>16(<ees g> <d f> <c ees> <bes d> <a c>) |
  d8 d g4~8 f16(g a g f e) | % 5b
  f8 d bes'4~8 a16(bes c bes a g) |
  a8 16(g f e d c) d8 cis16(d e d cis b) |
  cis16(e <d f> <e g> f q <d a'> <cis bes'>) a'8 g16(f) g(f e f) | % 5c
  \ov <f, d'>8 \vo d'4 8~8 e16(f e d cis d) |
  e16(f g a bes8) a~16 g(a bes a g f e) |
  \ov <bes d>8 r <g d'> <bes d g> r4 <bes c e g>8 <e, g bes> | % 6a
  r4 <f c'>8 <a c f> r4 <d f>8 <f, aes> |
  r4 g8 <ees g c> r4 <f a c>8 <c ees a> |
  r4 <f bes>8 <aes bes d f> r4 <g bes ees>8 <ees g bes> |
  r4 <ees a c>8 <g c ees> r4 <fis a d>8 <d fis a> | % 6b
  r4 <g d'>8 <bes d g> r4 <bes c e g>8 <g bes c e> |
  r4 <f a c>8 <a c f> r4 <d f>8 <g, d'> |
  r4 <g c>8 <c, ees g> r4 <f a c>8 <a c ees f> | % 6c
  r4 <bes d f>8 <d f bes> r4 <des g bes>8 <ees g> |
  r4 <aes, c ees>8 <ees aes c> r4 <f aes c d>8 <aes c d f> |
  r8 d g, d' \vo r g c, g' | % 7a
  \ov <c, g' aes>8 <ees aes c> \vo r16 bes' aes g <d f>8 <f aes> d f |
  \ov <bes, d g>8 <d g bes> \vo r16 aes' g f <c ees>8 <ees g> c ees |
  \ov <aes, c f>8 <c f aes> \vo r16 g' f ees \ov <b d> <d g> <g aes> <ees g> \vo s8 d~ | % 7b
  \ov <g, bes d>8 <c ees>16(<d f> <c ees> <b d> <a c> <g d'>) s4 \vo bes~ |
  bes8 <aes c>16(<bes des> <aes c> <g bes> <f aes> <e g>) aes8 c \ov <aes f'>4~ |
  q8 <g ees'>16(<f d'> <g ees'> <f d'> <ees c'> <d b'>) <ees c'>8 \vo s8 ees'4~ | % 7c
  ees8 s4.g8 g, ees'4 | f,8-. s d'-. s ees,-. s c'-. s |
  d,8 s bes' s r c16(d ees f g aes) | % 8a
  b,8 g' ees c b <b d f> <c ees> <g' c> |
  \ov <d g b>8 \vo \repeat unfold 7 {g16([aes]) }
  g8 d g4~8 f16(g) aes(d,) ees8-. | % 8b
  \ov <ees, g c>4 <d g b> <ees g c>16 <ees g>(<f a> <g b> <a c> <b d> <c ees> <d f>) |
  <ees g>4 <f aes>16(<ees g> <d f> <ees g>) <f aes>8-. <d f>-. q-. q-. |
  <f d'>8-. <d f>-. q-. q-. q16 q(<ees g> <f aes> <ees g> <d f> <c ees> <b d>) | % 8c
  <g c ees>8 <ees g c> \clef bass <g, c>4 fis \vo g8 a |
  bes4. a16 g cis4 r8 cis |
  d8 c16 bes a8 bes c bes16 a c8. 16 | % 9a
  f,4 f' b, c8 d |
  \ov <g, c ees>4. \clef treble \vo s8 fis'4 r8 fis |
  g8 f16 ees g8. 16 c,4 c' | % 9b
  fis,4 g8 a bes4. a16 g |
  cis4 r8 c d c16 bes a8 bes |
  c8 bes16 a c8. 16 f,4 f' | % 9c
  b,4 c8 d ees4. d16 c |
  fis4 r8 fis g f16 ees d8 ees |
  f8 ees16 d c8 d ees d16 c bes8 c | % 10a
  d4 f8. 16 bes,4 bes' |
  e,4 f8 g aes4. g16 f |
  \ov <d g b>4 r8 q \vo c' bes16 aes g8 a | % 10b
  bes8 a16 g f8 g <f aes> g16 f ees8 f |
  g8 ees c'4~8 bes16(c d c bes a) |
  bes4~8 c16 bes a8 bes c4~ | % 10c
  c8 bes16 a g8 fis g g, g'4~ |
  g8 f16(g a g f ees) f4~8 g16 f |
  g16 fis g a bes8 d, e16(fis) g4 fis16 e | % 11a
  d16 a d e f4~8 e16 d b'4~ |
  b8 e,16 <d f> <e g>8 <d fis a>(<d a'>) d16 c d8 g |
  c,4 8 bes16 a a'4. 8 | % 11b
  a8 g16 fis g a bes8~8 a16(g a g f e) |
  f8 ees16(f g f ees d) ees8 d16(ees f ees d c) |
  d4 ees16(d c d ees8-.) c-. <a c>-. c-. | % 11c
  <c a'>8-. <a c>-. q-. q-. q(<bes d>) q4 |
  bes'4. 8 <ees, g bes>8 <ees fis a>16 g <ees fis a>8 <fis a>~ |
  <fis a>8 s s4 d16(e fis g a8) <d, fis> | % 12a
  f4. 8~ \ov <bes, d f> <ees g>16(<f aes> <ees g> <d f> <c ees> <c d>) |
  <c ees>8 <g ees'>16(<f d'> <ees c'> <d bes'> <c a'> <bes g'>) <c ees a>8 <d' f>16(<ees g> <d f> <c ees> <bes d> <a c>) |
  \vo d8 d g4~8 f16(g a g f e) | % 12b
  f8 d bes'4~8 a16(bes c bes a g) |
  a8 16(g f e) d8~8 cis16(d e d cis b) |
  cis16(e f g f g a bes) a8 g16(f g f e f) | % 12c
  \ov <fis, a d>4 <fis' a>4~8 <g bes>16(<a c> <g bes> <fis a> <e g> <d a'>) |
  <g bes>8 <bes, d> <d f>4~8 <ees g>16(<f aes> <ees g> <d f> <c ees> <b d>) |
  \vo ees16(d c d) \ov <c ees>4~8 <bes d>16(<a c> <bes d> <a c> <g bes> <fis a>) | % 13a
  \vo bes8 d \ov <bes g'>4~8 <c a'>16(<d bes'> <c a'> <bes g'> <a fis'> <g g'>) |
  \vo fis'8-. s bes-. s c,-. s a'-. s |
  bes,8-. s g'-. s a, s g' s | % 13b
  g,8-. s ees'-. s4 fis8 g <g bes> |
  a8 fis g <g bes> <fis a> d16(ees) d(ees) d(ees) |
  d16(ees) d(ees) d(ees) <d g>8 fis e16(fis g a bes a) | % 13c
  c16(bes) a(g) a(fis) g8-. <g, bes>4 <fis a>\trill |
  \ov <b, d g>1\fermata |
}

pianoRHtwoKyrie = \relative {
  \globalKyrie \vt
  s1 | s | <bes' d g>8 d bes <d g> c16 d <c ees> <bes d> <c ees>8 d16 c~ |
  <c d>8 <bes e g>16 <a fis'> s4 <bes g'>8 <a fis'> <d fis> a | % 2b
  <a c>8 d16(ees <aes, d> c b a) <g b>8 r r4 |
  c16(d ees d c bes a g) a8 r r4 |
  bes8 a16 bes c bes a g a8 cis <a e'> c | % 2c
  <a e'>8 d8 16(d bes a) g8 e' <c g'> e |
  c8 a <a d> <f d'>16 c' <g bes>8 <f a> <e g> f |
  <e g>16 e f g a8 d16 cis d8 g,16(f g f e f) | % 2d
  <d fis>8 s2.. |
  s1 |
  c'8 g s2. | % 2e
  g16 fis g a s2. |
  d8 16(e fis g a bes) c,8 16(d e fis g a) |
  bes,8 16(c d e fis g) a,8 16(bes c d ees f) | % 2f
  g,8 16(a b c d) ees~<fis, ees'>8 <a d>16(ees') <bes d>(ees) d(ees) |
  d16(ees) <c d>(ees) <bes d>(ees) d(ees) s2 |
  s8 <a, c>8 <bes d>8 16(ees) a,8 8 d4 | % 3a
  d8 <a c>16 <bes d> <c ees> <a d> <bes e>8 s4 d,8 c |
  s1 |
  s1 | r8 <a' c> bes d16(ees) s2 |  s8 <a, c> bes <bes d>16 ees a,8 a d4 | % 3b
  d8 <a c>16 <bes d> <c ees> <a d> bes8 s4 d,8 c | % 3c
  s4 \after 8. ) g'( 8 16(bes a g fis g) |
  s4 <fis a c>8 <a c> q <g bes>8 4 |
  <bes d g>8 g' d d c16 d <c ees> <bes d> <c ees>8 d16 c~ | % 4a
  <c d>8 s4. <bes d>8 a8 4 | s1 |
  s1 | r8 cis d f e a,16(bes) a(bes) a(bes) | % 4b
  a16(bes) <e, a>(bes') <f a>(bes) a(bes) <a cis>8 b16 cis s4 |
  s2 s8 g <g bes> g | s1 | % 4c
  s2 g16 a g f <g bes>8 a16 g~ |
  <g a>8 s2.. | s2 s8 b c g | s2 s8 a bes f | % 5a
  <f bes>16(bes a bes c bes a g) a4 <a e'>~ | % 5b
  a8 f'16(e d c bes a) g8 <c e> <c g'>4~ |
  c8 a <a d> \after 8 ) <ees d'>^( <g bes> <f a> <e g> f |
  <e g>8 a4 8 <a d>4 <<{\vf cis4} \new Voice {\vt a8 g}>> \vt | % 5c
  s8 <f a> <g bes>16(<f a> <e g> <f a> <g bes>8) <e g>-. q-. q-. |
  <e g>8 e' <cis e g> <e g> q(<d f>) q r |
  s1*10 | % 6
  s2 <g, c ees>8 r g16 f'[ees d] | % 7a
  s4 aes8 c aes r r16 ees' d c |
  s4 g8 bes bes r r16 d c bes |
  s4 f8 aes <b d>16(<d f> <f aes> <ees g> <d f> <c ees> <b d> <a c>) | % 7b
  s2 <c ees>8 <bes des>16(<aes c> <g bes>16 <f a> <e g> <d f>) |
  <c e>8 s4. f8 aes16(<g bes> \lh f <ees g> <d f> <c ees>) |
  \rh s2 s8 <ees' g>16(<d f> <c ees> <bes d> <aes c> <g bes>) | % 7c
  <f aes>8 <d' f>16(<ees g> <d f> <c ees> <b d> c) b8 g16(a b c d ees) |
  r8 f,16(g a b c d) r8 ees,16(f g a b c) |
  r8 d,16(ees f g aes bes) c,8 r aes'4~ | % 8a
  aes8 \repeat unfold 5 {g16(aes)} g aes ees' aes |
  s8 b, c <c ees> <b d> f' ees <c ees> |
  <b d>16(g a b c d ees d) f(ees) d(c) d(b) <a c>8 | s1*2 | % 8b
  s1 | s2. d,,4 | 2 <e a>4 r8 a |
  a4 d, g4 8 a | % 9a
  f4 <f a c>8 g aes g16 f ees8 <f bes> |
  s4. d'16 c~8 d16 ees d c bes a |
  bes2~4 c8 d | ees8 d16 c bes8 c d4 g~ | g8 f16 g a g f e f2~ | % 9b
  f8 g16 f <ees g>8 <f a>16 ees d4 f8 g | % 9c
  aes8 g16 f ees8 f g4 c~ |
  c8 bes16(c d c bes a) g4~8 <g c>16 bes |
  <f a>8 <g bes> a <g bes>16 <f a> <ees g>8 <f a> g <f a>16 <ees g> | % 10a
  <d f>8 <ees g> <f aes> <ees g> <d f> <ees g>16 <f aes> <bes des>4~ |
  q16 bes c d <bes c>4 <aes c>4. <c d>8 |
  s2 <c g'>4 c8. 16 | % 10b
  <bes f'>8 c d c16 bes b4 c8 d |
  ees8 r r d16 c fis4 r8 fis |
  g8 f16 ees d8 e f ees16 d c8 d | % 10c
  ees8 d16 c <g bes>8 <a c> <bes d> cis4 <<{d8} \new Voice {\vf a16 g}>>
  <cis e>8 cis a cis d c16 bes a8 b |
  <c ees>8 d16 c bes a g f e8 e'4 d16 cis | % 11a
  d16 s d8~16 c \tuplet 3/2 {b[c d]} gis,8 cis16(d ees d cis b) |
  cis4 c b bes |
  a8 bes a4 <a c ees>8 d16 ees <bes d>8. c16 | % 11b
  <bes d>8 <a c> <bes d> cis16 d e4 a,8 8 |
  a8 a d g, g g c f, |
  f16 g <fis a> <g bes> <a c>(bes a bes c8-.) <ees, a>4 a8 | % 11c
  a8 d, d4 d d |
  <bes' d g>8 d bes <d g> c16 d c bes c8 d16 c |
  <c d>8 <bes e g>16 <a fis'> <bes d g>8 <g bes d> <g bes> <a d> q <a c> | % 12a
  <a c d>8 <b d>16(<c ees> <b d> <a c> <g b> <f c'>) s2 | s1 |
  bes16 16(a bes c bes a g) a4 <a e'>~ | % 12b
  a8 f'16(e d c bes a) g8 c <c g'>4~ |
  c8 a d d16 c bes8 a g4~ |
  g8 d'16 e f e d cis <a d>4 <a cis> | s1*2 | % 12c
  c8 g s2. | % 13a
  g16 fis g a s2. |
  d8 16(e fis g a bes) c,8 16(d e fis g a) |
  bes,8 16(c d e fis g) a,8 16(bes c d ees f) | % 13b
  g,8 16(a bes c d ees~) <fis, ees'>8 <a d>16(ees') <bes d>(ees) d(ees) |
  <d fis>(ees) <a, c d>(ees') <bes d>(ees) d(ees) <d fis>8 <fis, a> <g bes> q |
  <fis a>8 <fis c'> <g bes> bes16(ees) <a, d>8 a d4~ | % 13c
  d8 <a c>16 <bes d> <c ees> <a d> <bes e>8 d,4 d8(c) |
  s1 |
}

dynamicsPianoKyrie = {
  \override DynamicTextSpanner.style = #'none
  s1*118
}

pianoLHoneKyrie = \relative {
  \globalKyrie \vo
  r4^\markup Viol. g~8 a16(bes a g fis g) |
  a16(bes c d ees8) d~d e16(fis g fis e fis) |
  g8 s2.. |
  \ov bes,8-. c16(d c bes a g) d'8-. c16(bes a g fis e) | % 2b
  d4 ees8 f g g' ees g |
  r8 <a,, c> <bes d> <ees g> f f' d f |
  r8 bes, g e cis a' cis, a | % 2c
  d8 cis d g e c' e, c |
  f8 e f bes g a bes g |
  a8 cis, d e s4 \vo a \ov | % 2d
  <d, a'>8 \clef treble <c'' ees>16(<bes d> <a c> <g bes> <fis a> <e g>) <d f>8 \clef bass \vo d4.~ |
  \ov <g, d'>8 <f' aes>16(<ees g> <d f> <c ees> <b d> <a c>) <g b>8 <d f b> <ees g c> g~ |
  <c, g'>8 ees'16(<d f> <c ees> <bes d> <a c> <g bes>) <fis a>8 d <bes g'> d | % 2e
  <g, g'>8 <bes' d>16(<a c> <g bes> <f a> <ees g> <d f>) <c ees>8 <c g'> <d fis> <ees c'> |
  <d a'>8 d'16(c d8) <d, fis> <e g> <c' ees>16(<bes d> c8) <fis, a> |
  \vo d'8 8 \ov s4 <c, ees>8 <a' c>16(<g bes> a8) <d, a' bes>~ | % 2f
  \vo bes'8 bes g bes \ov <d, a'> d' d d |
  d8 <d, a' d> <d bes' d> <d g d'> d \clef treble <d' fis> [ <d g> <d g bes> ] |
  <d fis a>8 \clef bass <d, fis d'> [ <d g d'> <d bes' d> ] d <d c'> <e bes'> <fis a> | % 3a
  g8 ees c cis d c d d, |
  g8 r <g g'> r q r <fis fis'> r |
  d'8 r <d, d'> r <g, g'> \clef treble d''' <d bes'> <d g> | % 3b
  <d fis>8 \clef bass <d, fis d'> <d g d'> <d bes' d> <d d'> \clef treble <d' fis> <d g> <d g bes> |
  <d fis a>8 \clef bass <d, fis d'> <d g d'> <d bes' d> d <d c'> <e bes'> <fis a> |
  g8 ees c cis d c d d, | % 3c
  <g, g'>8 r <g' g'> r <g, g'> r <g' g'> r |
  <fis fis'>8 r <d d'> r <g g'> r <g, g'> r |
  <g' g'>8-. <a a'>16(<bes bes'> <a a'> <g g'> <fis fis'> <g g'>) <a a'>8-. <bes bes'>16(<c c'> <bes bes'> <a a'> <g g'> <a a'>) | % 4a
  <bes bes'>8-. <c c'>16(<d d'> <c c'> <bes bes'> <a a'> <g g'>) <d' d'>8 <a a'> <fis fis'> <d d'> |
  <d, d'>8 r <d' d'> r d' r cis r |
  a8 r a' r d, <a' a'> <a f' a> <a d a'> | % 4b
  <a cis a'>8 <a, e' g a> <a f' a> <a d a'> <a cis a'> <a' e'> <a f'> <a d> |
  <a cis>8 <a, g'> <a f'> <a d> <a a'> <g, g'> <f f'> <e e'> |
  <d d'>8 r <d' d'> r <e, e'> r <d' d'> r | % 4c
  <cis cis'>8 r <a a'> r <d d'> r <d, d'> r |
  <d' d'>8-. <e e'>16(<f f'> <e e'> <d d'> <cis cis'> <d d'>) <e e'>8-. <f f'>16(<g g'> <f f'> <e e'> <d d'> <e e'>) |
  <f f'>8 <g g'>16(<a a'> <g g'> <f f'> <e e'> <d d'>) <a' a'>8 <a, a'> <a' a'> <g g'> | % 5a
  <f f'>8 d' ees d f <g, g'> <ees ees'> <g g'> |
  <c, c'>8 c' d ees f <f, f'> <d d'> <f f'> |
  <bes, bes'>8 <bes' bes'> <g g'> <e e'> <cis cis'> <a' a'> <cis, cis'> <a a'> | % 5b
  <d d'>8 <cis cis'> <d d'> <g g'> <e e'> <d d'> <e e'> <c c'> |
  <f f'>8 <e e'> <f f'> <bes bes'> <g g'> <a a'> <bes bes'> <g g'> |
  <a a'>8 <cis, cis'> <d d'> <e e'> <f f'> <d d'> <a' a'> <a, a'> | % 5c
  \ottava #-1 d,8 \ottava #0 r <d'' d'> r <e, e'> r <d' bes'> r |
  <cis a'>8 r <a a'> r <d a'> r <d, d'> r |
  <g g'>8 r <bes g'> r <c ees bes'> r <c, c'> r | % 6a
  <f c' f>8 r <a c f> r <bes d f> r <b f' aes> r |
  <c ees g bes>8 r <ees bes' c> r <f a c> r <f, c' f> r |
  <bes d f>8 r <d f bes> r <ees g bes> r <ees, bes' ees> r |
  <a c ees>8 r <c ees a> r <d fis a> r <d, a' d> r | % 6b
  <f bes d>8 r <bes d g> r <c e g> r <c, g' c> r |
  <f a c>8 r <a c f> r <bes d f> r <b f' aes> r |
  <c ees g>8 r <ees g> r <f a> r <f, c' f> r | % 6c
  <bes d f>8 r <d f bes> r <ees g bes> r <ees, bes' ees> r |
  <aes c ees>8 r <c ees aes> r <d f aes> r <f, c' d> r |
  <g b d>8 r <b, b'> r <c c'> r <ees ees'> r | % 7a
  <f f'>8 r <f, f'> r <bes bes'> r <bes' bes'> r |
  <ees, ees'>8 r <ees, ees'> r <aes aes'> r <aes' aes'> r |
  <d, d'>8 r \ottava #-1 d, \ottava #0 r <g g'> d'' g b | % 7b
  d8 <g,, g'> <a a'> <b b'> <c c'> g' c r |
  r8 <g, g'> <aes aes'> <c c'> <f, f'> \vt aes' c f, \ov |
  <g b d>8 <g, g'> <ees ees'> <g g'> <c, c'> c'' g ees | % 7c
  c8 <f,, f'> <g g'> <aes aes'> <g g'> <g' g'>16(<f f'> <g g'>8) <g, g'> |
  <a a'>8 <f' f'>16(<ees ees'> <f f'>8) <b, b'> <c c'> <ees ees'>16(<d d'> <ees ees'>8) <ees, ees'> |
  <f f'>8 <d'' d'>16( [ <c c'> ] <d d'>8) <g, g'> <aes aes'> <g g'> <f f'> <ees ees'>16(<f f'>) | % 8a
  <g g'>8 <g' b> [ <g c> <g ees'> ] <g d'> <g, g'> [ q q ] |
  <g, g'> <g'' d'> [ <g ees'> <g g'> ] <g f'> <g, g'> [ q q ] |
  <g, g'>8 <g' g'> <a a'> <b b'> <c c'> <aes aes'> <f f'> <fis fis'> | % 8b
  <g g'>8 <f f'> <g g'> <g, g'> <c c'>4 r |
  q8 r \vo c''4~8(d16 ees d c b c) |
  d16(ees f g aes8) g~8 r c, ees | % 8c
  \ov c,4 ees,4~8 d16(c bes a g fis) |
  g8 d' g4~8 f16(g a g f e) |
  f8 f, f'4 e ees | d8 ees f4~8 g16(aes g f ees d) | c4 <ees ees'> <a, a'> <d d'> | % 9a
  <g, g'>8 <a a'> <bes bes'>4~8 <c c'>16 <bes bes'> <a a'>8 <bes bes'> | % 9b
  <c c'>8 <d d'>16(<ees ees'> <d d'> <c c'> <bes bes'> <a a'>) <g g'>4 <bes bes'> |
  <e, e'> <a a'> <d, d'> <d' d'> |
  <a a'>8 <bes bes'> <c c'> <a a'> <d d'> <c c'> <d d'> <ees ees'> | % 9c
  <f f'>8 <g g'>16(<aes aes'> <g g'> <f f'> <ees ees'> <d d'>) <c c'>8 <d d'> <ees ees'>4~ |
  q8 q <d d'> <c c'> <bes bes'> a' bes <c c'> |
  <d d'>8 <c c'>16 <bes bes'> <a a'>8 <bes bes'> <c c'> <bes bes'>16 <a a'> <g g'>8 <a a'> | % 10a
  <bes bes'>8 <aes aes'>16 <g g'> <f f'>8 <g g'> <aes aes'> <g g'>16 <f f'> <ees ees'>8 <f f'> |
  <g g'>8 <f f'>16 <e e'> <d d'>8 <e e'> <f f'> <c c'> <f f'>4~ |
  q8 <ees ees'>16(<f f'> <g g'> <f f'> <ees ees'> <d d'>) <ees ees'>4. <f f'>16 <ees ees'> | % 10b
  <d d'>2~8 <g g'>16(<aes aes'> <g g'> <f f'> <ees ees'> <d d'>) |
  <c c'>8 8 <d d'> <ees ees'> <a, a'>4 <d d'> |
  <g, g'>4 \vo g'''8. 16 c,4 s | % 10c
  fis4 \ov d8 d, g a bes4~ |
  bes8 a16 g f8 a d, e \vo d'8. 16 |
  g,4 s cis d8 e | f4 s \ov b,, e, | a r8 d, s4 \vo g'8. 16 |% 11a
  c,2 \ov <fis, fis'>4 <g g'>8 <a a'> | % 11b
  <bes bes'>4. <a a'>16 <g g'> <cis cis'>4 r8 q |
  <d d'>8 <c c'>16 <bes bes'> <a a'>8 <b b'> <c c'> <bes bes'>16 <a a'> <g g'>8 <a a'> |
  <bes bes'>8 <a a'>16 <g g'> <fis fis'>8 <g g'>~8 <a a'>16(<bes bes'> <a a'> <g g'> <fis fis'> <e e'>) | % 11c
  <fis fis'>8 <g g'>16(<a a'> <g g'> <fis fis'> <e e'> <d d'>) <g g'>4~16 g' d bes |
  <g g'>8-. <a a'>16(<bes bes'> <a a'> <g g'> <fis fis'> <g g'>) <a a'>8-. <bes bes'>16(<c c'> <bes bes'> <a a'> <g g'> <a a'>) |
  <bes bes'>8 <c c'>16(<d d'> <c c'> <bes bes'> <a a'> <g g'>) <d' d'>8 <d, d'> <fis fis'> <a a'> | % 12a
  <d d'>8 d ees <f aes> g <g, g'> <ees ees'> <g g'> |
  <c, c'>8 c' d ees f <f, f'> <d d'> <f f'> |
  <bes, bes'>8 <bes' bes'> <g g'> <e e'> <cis cis'> <a' a'> <cis, cis'> <a a'> | % 12b
  <d d'>8 <cis cis'> <d d'> <g g'> <e e'> <d d'> <e e'> <c c'> |
  <f f'>8 <e e'> <f f'> <bes bes'> <g g'> <a a'> <bes bes'> <g g'> |
  <a a'>8 <cis, cis'> <d d'> <e e'> <f f'> <d d'> <a' a'> <a, a'> | % 12c
  <d d'>8 <c'' ees>16( [ <bes d> ] <a c> <g bes> <fis a> <e g>) <d fis>8 <d' fis> [ <e g> <fis a> ] |
  <g, d' g>8 <f' aes>16( [ <ees g> ] <d f> <c ees> <b d> <a c>) <g b>8 <g, g'> [ <ees ees'> <g g'> ] |
  <c, c'>8 ees''16( [ <d f> ] <c ees> <bes d> <a c> <g bes>) <fis a>8 <d d'> [ <bes bes'> <d d'> ] | % 13a
  <g, g'>8 <bes' d>16( [ <a c> ] <g bes> <f a> <ees g> <d f>) <c ees>8 <c, c'>8 [ <d d'> <ees ees'> ] |
  <d d'>8 <d' d'>16(<c c'> <d d'>8) <d, d'> <e e'> <c' c'>16(<bes bes'> <c c'>8) <fis, fis'> |
  <g g'>8 <bes bes'>16(<a a'> <bes bes'>8) <bes, bes'> <c c'> <a' a'>16(<g g'> <a a'>8) <d, d'> | % 13b
  <ees ees'>8 <d d'> <c c'> <bes bes'>16 <c c'> <d d'>8 d'' [ d d ] |
  d8 q [ q q ] <d,,, d'> d''' [ d d ] |
  d8 <d,, d'> [ q q ] <d, d'> <d' d'> <e e'> <fis fis'> | % 13c
  <g g'>8 <ees ees'> <c c'> <cis cis'> <d d'> <c c'> <d d'> <d, d'> |
  <g g'>1\fermata |
}

pianoLHtwoKyrie = \relative {
  \globalKyrie \vt
  g,4 r a8 r r4 |
  fis'8 r d r g r g r |
  g8-. a16(bes a g fis g) a8-. bes16(c bes a g a) |
  s1*3 | % 2b
  s1*3 |
  s2 f8 d a' a, | s2 s8 <d fis> <e g> <fis a> | s1 | % 2d
  s1*3 |
  g8 bes16(a bes8) <bes, d> s2 | <ees g>8 d c bes16 c s2 | s1 |
  s1*9 | % 3
  s1*9 |
  s1*9 | % 5
  s1*10 |
  s1*9 | % 7
  s1*5 | s4 c8 r d r c r | b r <g' b> r c r <c, g'> r | s1*2 |
  s1*9 | % 9
  s1*6 | s4 r8 g' f g a4~ | 8 bes16 c s2. | s2 d,8 e f ees16 d |
  c16(d e fis) g4~8 cis, d e | f16(g f e d8) f s2 | s g,8 a bes8 a16 g | f8 g a g s2 | s1*5 | % 11
  s1*9 |
  s1*9 | % 13
}
