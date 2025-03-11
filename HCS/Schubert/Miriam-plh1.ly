pianoLHone = \relative {
  \global
  <c c'>2 r8. q16 8. 16 |
  <b b'>2 r8. 16 8. 16 |
  <a a'>4. 8 4 4 |
  <dis, dis'>2 <b b'> |
  <e e'>4 <f f'> <g g'> <g, g'> |
  <c c'> c r <c' g'>8. 16 | % 1b
  q4 <c c'> r <c g'>8. 16 |
  q4 <c c'> r <c g'>8. 16 |
  q4 4 <b g'> <c g'> |
  g4 g' r q8. 16 |
  \repeat unfold 2 {q4 <c, c'> r <c g'>8. 16 |} % 1c
  q4 q q q |
  g4 g' r <g, g'>8 <bes bes'> |
  <d d'>4 <f, f'> <g g'> <a a'> | % 1d
  d4 d' r <bes, bes'>8 <d d'> |
  <f f'>4 <a, a'> <bes bes'> <c c'> |
  <f, f'>4 f'8 g <a, a'>4 <c c'> |
  <b b'>4. 8 <g g'>4 <e e'> | % 2a
  <b' b'>4. 8 <g g'>4 <e e'> |
  <b' b'>2 <g, g'>4. 8 |
  <c c'>4 <e e'> <g g'> <g, g'> |
  <c c'>4 r8 <c' c'> <a a'>4 <c c'> | % 2b
  <b b'>4. 8 <g g'>4 <e e'> |
  <b' b'>4. 8 <g g'>4 <e e'> |
  <b' b'>2 <g, g'>4. 8 |
  <c c'>4 <e e'> <g g'> <g, g'> | % 2c
  <c c'>4 e'8 g c4 r |
  c,8 e fis gis a4-. <ais, ais'>-. |
  <b b'>2 <g, g'>4. 8 |
  <c c'>4 <e e'> <g g'> <g, g'> | % 3a
  \repeat unfold 3 {<c' c'>4 <c, c'> r2 |}
  r4 <c' c'> q q | % 3b
  \repeat unfold 3 {<b b'>4 <b, b'> r2 |}
  r4 <b' b'> q q % 3c
  q4 <b, b'> r2 |
  <b' b'>4 <b, b'> r2 |
  <b' b'>4 <b, b'> <b' b'>8 <ais ais'> <b b'> <cis cis'> |
  <d d'>4 <d, d'> <d' d'>8 <cis cis'> <d d'> <c c'> | % 4a
  <d d'>4 <d, d'> <d' d'>8 <cis cis'> <d d'> <e e'> |
  <f f'>4 <f, f'> <f' f'>8 <e e'> <f f'> <g g'> |
  <f f'>4 <f, f'> r <a a'> |
  <b b'>4 <c c'> <b b'> <c c'> | % 4b
  <g g'>4 <f' g> <e g> <d g> |
  <c g'>4 c, r q8. 16 |
  q4 <c' c'> r < c g'>8. 16 |
  q4 <c c'> r <c g'>8. 16 | % 5a
  q4 4 <b g'> <c g'> |
  g4 g' r <c, g'>8. 16 |
  q2 r4 q8. 16 |
  q2 r4 q8. 16 | % 5b
  q4 q q q |
  <g g'>4 g' r g8 bes |
  d4 f, g a |
  d4 d, r <bes bes'>8 <d d'> | % 6a
  <f f'>4 <a, a'> <bes bes'> <c c'> |
  <f, f'>4 f'8 g a4 c |
  b4. 8 g4 e |
  b'4. <b, b'>8 <g g'>4 <e e'> | % 6b
  <b' b'>2 <g, g'>4. 8 |
  <c c'>4 <e e'> <g g'> <g, g'> |
  <c c'>4 r8 <c' c'> <a a'>4 <c c'> |
  <b b'> 4. 8 <g g'>4 <e e'> |
  <b' b'>4. 8 <g g'>4 <e e'> | % 7a
  <b' b'>2 <b, b'>4. 8 |
  <c c'>4 <e e'> <g g'> <g, g'> |
  <c c'>4 e'8 g c4 r |
  <c,, c'>8 <e e'> <fis fis'> <gis gis'> <a a'>4-. <ais ais'>-. | % 7b
  <b b'>2 <g, g'>4. 8 |
  <c c'>4 <e e'>4 <g g'> <g, g'> |
  <c c'>2 g'4. 8 | c4 <<{\vt c8 e g4} \new Voice {\vo g4 g}>> \ov g, |
  c2 r\fermata \section \key f \major \time 6/8 |
  <f, f'>2. | % 7d
  q2. |
  <f, f'>8(<a a'> <bes bes'> <f' f'> <cis cis'> <d d'>) |
  <bes bes'>4(<b b'>8 <c c'>4) d'16(e)
  <f, f'>2. | % 7d
  q2. |
  <<{\vt f4. f} \new Voice {\vo f'16(d c4) 8(d16 e f8)}>> |
  <<{\vt f4. f} \new Voice {\vo a8(f b) a(f16 g a b)}>> | % 8a
  <<{\vt f4 b8} \new Voice {\vo a8(c d)}>> \ov c4 <e, c'>8 |
  <f c'>8. a,16(bes b c4 cis8) |
  <d, d'>2. | % 8b
  q4.~8 d'16(e f e) |
  <<{\vt d2.} \new Voice {\vo a'4.(g4 a16 bes)}>> |
  <<{\vt d,4. 8. e16 f e} \new Voice {\vo a8.(f16 e g f g a4)}>> | % 8c
  <<{\vt f4 8} \new Voice {\vo a8 g f}>> \ov <bes, bes'>8 <a a'> <g g'> |
  <bes bes'>4 8 <ees, ees'>8.. ees'32 16. 32 |
  ees16. 32 16. 32 des16. 32 c4 r8 | % 8d
  <<{\vt cis8 d d c4 8} \new Voice {\vo a'4 g8 a c bes}>> |
  <f a>8 8 <d g> <<{\vt c4 8} \new Voice {\vo a'8 c bes}>> |
  \ov <f a>4. <f, f'> | % 9a
  q4. q |
  <<{\vt g4. g} \new Voice {\vo f'16(d c4) c8(d16 e f g)}>> |
  <<{\vt f4. f} \new Voice {\vo a8(f bes a f16 g a bes)}>> |
  <<{\vt f4 b8} \new Voice {\vo a8(c d)}>> \ov c4 <e, c'>8 | % 9b
  <f c'>8. a,16(bes b c4 cis8) |
  <d, d'>2. |
  <d d'>4.~d'8 16(e f e) |
  <<{\vt d4. d} \new Voice {\vo a'4.(g4 a16 bes)}>> | % 10a
  <<{\vt d,4. 8. e16 f e} \new Voice {\vo a8(f16 e g f g) a4}>> |
  <<{\vt f4 8} \new Voice {\vo a8 g f}>> \ov <bes, bes'>8 <a a'> <g g'> |
  <bes bes'>4 8 <ees ees'>4 ees8 | % 10b
  <aes, aes'>8 <g g'> <f f'> <a a'> <bes bes'>16 <a a'> <bes bes'> <c c'> |
  <des des'>8.. <des, des'>32 16. 32 16. 32 <f f'>16. 32 aes16. 32 |
  <des, des'>8 r des''(c) <aes, aes'>8-. <c, c'>-. | % 11a
  <b b'>8-. r des''(c) <aes, aes'>8-. <c, c'>-. |
  <bes bes'>8-. r bes''(aes16) <aes, aes'> q q q q |
  <g g'>16 q q q q q <c, c'> q q q q q | % 11b
  <bes bes'>16 q q q q q <c c'> q q q q q |
  <f f'>4. q |
  \repeat unfold 2 {<<{\vt f4. f} \new Voice {\vo f'16(d c4) 8(d16 e f8)}>> |} % 12a
  \ov d'8 d, f a(g16 fis e fis) |
  g8 g, bes d(e16 f e d) |
  a8 r <cis cis'>-. <d d'>-. <g, g'>-. <a a'>-. | % 12b
  <d, d'>8 <d' d'> <cis cis'> <b b'>4 <g g'>8 |
  <d' d'>8 <fis, fis'> <c' c'> <b b>4 <g g'>8 |
  <d' d'>8 d c' bes4 g8 |
  <cis, a'>8 r cis' d bes <c, c'> | % 13a
  <f, f'>8 <f' f'> <e e'> <d d'>4 <bes bes'>8 |
  <f' f'>8 <a, a'> <ees' ees'> <d d'>4 <bes bes'>8 |
  <f' f'>8 <a, a'> <ees' ees'> <d d'>4 <f f'>16. 32 |
  <bes, bes'>8 <d d'> <g, g'>16. 32 <bes bes'>8 <g g'>-. <a a'>-. | % 13b
  <bes, bes'>8 r16. bes'32 16. 32 16. 32 b16. 32 16. 32 |
  c2. |
  <<{\vt c2.} \new Voice {\vo <g' bes>4.(<f aes>)}>> | % 14a
  <<{\vt c2.} \new Voice {\vo <ees ges a c>4.(<d f bes>)}>> |
  <<{\vt c2.} \new Voice {\vo <des f b>4.(<c e c'>)}>> | % 14b
  \ov <c des f c'>4. <c e g c> |
  <f aes c>4. \repeat unfold 6 {ges,,32 ges'} | % 14c
  \repeat unfold 5 {\repeat tremolo 12 {ges,32 ges'} |}
  \repeat unfold 6 {g,32 g'} \repeat unfold 6 {c, c'} | % 15b++
  <g g'>4. q | % 15c
  q4. q |
  <<{\vt g4. g} \new Voice {\vo f'16(d c4) 8(d16 e f g)}>> |
  <<{\vt g4. g} \new Voice {\vo a8(g bes a16 f' ees d c bes)}>> |
  <<{\vt f4 b8} \new Voice {\vo a8(c d)}>> \ov c4 <e, c'>8 | % 16a
  <f c'>8. a,16(bes b c4 cis8) |
  <d, d'>4. q |
  q4. d'8.(e16 f e) |
  <<{\vo d4. d} \new Voice {\vo a'4.(g4 a16 bes)}>> | % 16b
  <<{\vt d,4. 8. e16 f e} \new Voice {\vo a8.(f16 e g f g a8) r }>> |
  <<{\vt f4 8} \new Voice {\vo a8 g f}>> \ov <bes, bes'>8 <a a'> <g g'> |
  <bes bes'>4 8 <ees ees'>4 ees8 | % 17a
  <aes, aes'>8 <g g'> <f f'> <aes aes'> <bes bes'>16 <aes aes'> <bes bes'> <c c'> |
  <des des'>8.. <des, des'>32 16. 32 16. 32 <f f'>16. 32 aes16. 32 |
  des8 r des'(c) <aes, aes'>8-. <c, c'>-. | % 17b
  <b b'>4 des''8(c) <aes, aes'>8-. <c, c'>-. |
  <bes bes'>4 bes''8(a16) <a, a'> q q q q |
  <g g'>16 q q q q q <c, c'> q q q q q | % 18a
  <bes bes'>16 q q q q q <c c'> q q q q q |
  <f f'>4. q |
  \repeat unfold 2 <<{\vt f4. f} \new Voice {\vo f'16(d c4) 8(d16 e f8)}>> | % 18b
  <f,, f'>4. 8 <g g'> <a a'> \section \key ees \major \time 4/4 |
  <b b'>4 r g'' g8. 16 | % 19a
  g2 8-.(g-. g-. g-.) |
  <<{\vt b,4(c cis d)} \new Voice {\vo g2 4 8. 16}>> |
  <<{\vt c,4(b a g)} \new Voice {\vo g'2 8 8 8 8}>> |
  \ov c,4(aes' g g,) | % 19b
  c(d ees e |
  f4 g aes a) |
  g4 <g,, g'> <a a'> <b b'> | % 20a
  <c c'>4 <a' a'> <g g'> <g, g'> |
  <c c'>4 <d d'> <ees ees'> <e e'> |
  <f f'>4 <g g'> <aes aes'> <a a'> | % 20b
  <g g'>4 f' <e c'> <<{\vt r4} \new Voice {\vo c'8. 16}>> |
  <<{\vt g,4} \new Voice {\vo c'4}>> \ov aes8. 16 c8 8 8 8 |
  <f, c'>4 aes8. g16 <fis d'>4 d'8. 16 | % 21a
  <g, d'>4 b8. 16 d8 8 8 8 |
  q4 g,8. f16 e4 <c c'> |
  <bes bes'>4 <aes aes'> <g g'> <f f'> | % 21b
  <ees ees'> <des des'> <c c'> <bes bes'> |
  <aes aes'> <c c'> <ees ees'> q |
  <aes, aes'>4 <aes' aes'>8. <c c'>16 <ees ees'>4 <des des'> | % 22a
  <c c'>4 <aes aes'> q <g g'> |
  <aes aes'>4 8. <c c'>16 <ees ees'>4 <ees, ees'> |
  <aes aes'>4 8. <bes bes'>16 <c c'>4 <bes bes'> |
  <aes aes'>4 <des des'> <c c'> <c, c'> | % 22b
  <f f'>4 <g g'> <f f'> <ees ees'> |
  <des des'>4 <c c'> <bes bes'> <aes aes'> |
  <g g'>4 <a a'> <b b'> <c c'> | % 23a
  <d d'>4 <aes' aes'> <g g'> <b, b'> |
  <c c'>4 <d d'> <ees ees'> <e e'> |
  <f f'>4 <c' c'> <bes bes'> <a a'> | % 23b
  <g g'>8 <f f'> <e e'> <d d'> <c c'>4 <e e'> |
  <f f'>4 <d d'> <ees ees'> <b b'> |
  <c c'>4 <g' g'> <a a'> <a, a'> | % 24a
  <d d'>4 <fis fis'> <g g'>8 <f f'> <ees ees'> <d d'> |
  <ees ees'>4 <c c'> <g' g'> <g, g'> |
  <c c'>4 <c' c'>8. <ees ees'>16 <g g'>4 <f f'> | % 24b
  <ees ees'>4 <c c'> q <b b'> |
  <c c'>4 8. <ees ees'>16 <g g'>4 <g, g'> |
  <c c'>4 c <e, e'> <c' c'> |
  <bes bes'>4 <aes aes'> <g g'> <f f'> | % 25a
  <ees ees'>4 <des des'> <c c'> <bes bes'> |
  <aes aes'> <c c'> <ees ees'> q |
  <aes, aes'>4 <aes' aes'> <g g'> <ees' ees'> | % 25b
  <des des'>4 <ces ces'> <bes bes'> <aes aes'> |
  <ges ges'> <fes fes'> <ees ees'> <des des'> |
  <ces ces'>4 <ees ees'> <ges ges'> <ges, ges'> | % 26a
  <ces ces'>4 <ces' ces'>8. <ees ees'>16 <ges ges'>4 <fes fes'> |
  <ees ees'>4 <ces ces'> q <bes bes'> |
  <ces ces'>4 8. <ees ees'>16 <ges ges'>4 <ges, ges'> | % 26b
  \tuplet 3/2 {<ces, ces'>8 ces'8 8} \repeat unfold 3 \tuplet 3/2 {ces8 8 8} |
  \tuplet 3/2 {ces8 8 8} \repeat unfold 3 \tuplet 3/2 {\repeat tremolo 3 ces8} \section \key c \major |
  \repeat unfold 15 \tuplet 3/2 {b8-. fis'-. d-.} \tuplet 3/2 {b d e} |
  \repeat unfold 8 \tuplet 3/2 {fis8 ais, cis} | % 27b
  \repeat unfold 2 {\tuplet 3/2 {fis8 cis' ais} \repeat unfold 3 \tuplet 3/2 {g8 cis ais} |}
  \repeat unfold 4 {\tuplet 3/2 {fis8 cis' ais} \tuplet 3/2 {fis8 cis' ais}} |
  \repeat unfold 2 {\tuplet 3/2 {g8 d' b} \tuplet 3/2 {aes d b}} | % 28b
  g,8 g' aes, aes' b, b' d, d' |
  <f, f'>8 q <fis fis'> q <g g'> q q q \section \key ees \major |
  <c, c'>8 ees16 g c8 g16 f ees8 g16 f ees8 d16 c | % 29a
  g8 b16 d g8 d16 b g8 b16 d aes aes' aes, aes' |
  aes,16 aes' aes, aes' b, b' b, b' d, d' d, d' g,, g' g, g' |
  <c, c'>8 ees16 g c8 g16 f ees8 g16 f ees8 d16 c | % 29b
  g8 b16 d g8 d16 b g8 b16 d aes aes' aes, aes' |
  aes,16 aes' aes, aes' b, b' b, b' d, d' d, d' g,, g' g, g' |
  <c, c'>8 ees16 g c8 ees16 d c8 bes16 aes g8 c16 d | % 29c
  ees8 g16 d ees8 d16 c bes8 aes16 g f8 g16 aes |
  bes8 g16 ees bes8 ees16 g bes8 f16 d bes8 bes' |
  ees,8 ges16 bes ees8 bes16 aes g8 bes16 aes g8 f16 ees | % 30a
  bes8 d16 f bes8 f16 d bes8 d16 f ces16 ces' ces, ces' |
  ces,16 ces' ces, ces' d, d' d, d' f, f' f, f' bes,, bes' bes, bes' |
  <ees, ees'>8 ges16 bes ees8 bes16 aes ges8 bes16 aes ges8 f16 ees | % 30b
  bes8 d16 f bes8 f16 d bes8 d16 f ces ces' ces, ces' |
  ces,16 ces' ces, ces' d, d' d, d' f, f' f, f' bes,, bes' bes, bes' |
  <ees, ees'>8 ges16 bes \clef treble ees8 ges16 f ees8 des16 ces bes8 ees16 f | % 30c
  fis8 a16 gis f8 e16 d \clef bass cis8 b16 a gis8 a16 b |
  cis8 a16 fis cis8 fis16 a cis8 gis16 eis cis8 cis' |
  fis,8 a16 cis fis8 cis16 b a8 cis16 b a8 gis16 fis | % 31a
  cis8 eis16 gis cis8 gis16 eis cis8 eis16 gis d16 d' d, d' |
  d,16 d' d, d' eis, eis' eis, eis' gis, gis' gis, gis' cis,, cis' cis, cis' |
  <fis, fis'>8 \repeat unfold 7 {d16 d'} | % 31b
  g,8 bes16 d g8 d16 c bes8 d16 c bes8 a16 g |
  d8 fis16 a d8 a16 fis d8 fis16 a ees16 ees' ees, ees' |
  ees,16 ees' ees, ees' fis, fis' fis, fis' a, a' a, a' d,, d' d, d' | % 31c
  <g,, g'>8 ees'16 ees' ees, ees' ees, ees' \repeat tremolo 4 {ees,16 ees'} |
  \repeat tremolo 4 {aes,,16 aes'} \repeat tremolo 4 {a, a'} |
  \repeat tremolo 4 {bes,16 bes'} \repeat tremolo 4 {b, b'} | % 32a
  \repeat tremolo 4 {c,16 c'} \repeat tremolo 4 {cis, cis'} |
  \repeat unfold 2 \repeat tremolo 4 {d,16 d'} |
  g,8 aes16 d g8 d16 c bes8 d16 c bes8 a16 g |
  \repeat unfold 2 \repeat tremolo 4 {ees16 ees'} | % 32b
  \repeat tremolo 4 {aes,,16 aes'} \repeat tremolo 4 {c, c'} |
  \repeat unfold 4 \repeat tremolo 4 {d,16 d'}
  \repeat unfold 2 {g,8 bes16 d g8 d16 c bes8 d16 c bes8-. a-. |} % 32c
  \repeat unfold 2 {<g, g'>2 r8 d'16(c) bes8-. a-. |}
  <g g'>1\fermata \section \key g \major \time 3/4 |
  <e e'>4.. 16 <g g'>8. <e e'>16 | % 33a
  <b' b'>2 r4 |
  <gis, gis'>4.. 16 <b b'>8. <gis gis'>16 |
  <a a'>4. r16 16 <c c'>8. <e e'>16 |
  <b b'>4 r r |
  q4 r r | % 33b
  <e e'>4 r e'~ |
  e4 d8 cis d4~ |
  d4 cis c |
  b4 r8. b'16 c8. c,16 |
  b4 r gis'8.\trill fis32 gis | % 33c
  a4 a,8. fis'16 8.\trill e32 fis |
  g4 g,8. g'16-. a8.-. b16-. |
  c8.-. b16-. a8.-. g16-. fis8.-. e16-. |
  dis4 b8. dis16 fis8. <b, b'>16 | % 33d
  <c c'>8. <b b'>16 <a a'>8. <g g'>16 <fis fis'>8. <e e'>16 |
  <b b'>4 b''8. b,16 \vt 8.\trill a32 b |
  c2. |
  c2 4 | % 33e
  \repeat unfold 5 \tuplet 3/2 {cis8 8 8} \tuplet 3/2 {fis,8 8 8} |
  b2 \ov ais4 |
  \repeat unfold 3 \tuplet 3/2 {b8 8 8} | % 34a
  <e, e'>8. e'16 g4 r8. e16 |
  e'8. <d, d'>16 <c c'>8. <b b'>16 <a a'>8. <g g'>16 |
  <a a'>2. |
  <b fis'>2. |
  \repeat unfold 3 {<e, e'>4 r r} | % 34b
  r4 <g, g'>(<a a'> |
  <b b'>4) r r |
  <a a'>4 r r | % 34c
  a'4 r r |
  r4 g(fis |
  e2) r4 |
  r4 g'(fis | % 34d
  eis2) r4 |
  r4 g(fis |
  eis2) r4 |
  r4 g,(fis |
  eis2 e4) | % 34e
  d8. e16 fis4 4 |
  d'8. e16 fis4 4 |
  b,8. c16 b4 <b b'> |
  <e, e'>4 r q~ | % 35a
  q4 <d d'>8 <cis cis'> <d d'>4 |
  <cis cis'>2 <c c'>4 |
  <b b'>4 r8. <b' b'>16 <c c'>8. <c, c'>16 |
  <b b'>4 r8. gis''16 8.\trill fis32 gis | % 35b
  a4 a,8. fis'16 8. 16 |
  g4 g,8. g'16 a8. b16 |
  c8. b16 a8. g16 fis8. e16 | % 35c
  dis4 b8. dis16 fis8. <b, b'>16 |
  <c c'>8. <b b'>16 <a a'>8. <g g'>16 <fis fis'>8. <e e'>16 |
  <b b'>4 b''8. \vt b,16 8.\trill a32 b |
  c2. | % 36a
  c2 4 |
  \repeat unfold 5 \tuplet 3/2 {<cis, cis'>8 8 8} \tuplet 3/2 {<fis, fis'>8 8 8} |
  <b b'>2 \ov <ais ais'>4 |
  \repeat unfold 3 \tuplet 3/2 {<b b'>8 8 8} | % 36b
  <e e'>8. e'16 g4 r8. <e, e'>16 |
  <e' e'>8. <d d'>16 <c c'>8. <b b'>16 <a a'>8. <g g'>16 |
  <a a'>2. |
  <b fis'>2. |
  \repeat unfold 3 {<e, e'>4 r r |} % 36c
  r4 <g, g'>4(<a a'> |
  <b b'>2) r4 |
  <a a'>4 r r | % 37a
  q4 r r |
  r4 q q |
  <g g'>2 r4 |
  r4 eis''4(fis | % 37b
  g2) r4 |
  r4 eis(fis |
  g2) r4 |
  r4 g,(fis |
  eis2 e4) | % 37c
  d8. e16 fis4 4 |
  d8. e16 fis4 4 |
  <b, b'>2 r4 |
  q2 r4 | % 38a
  <c c'>2 r4 |
  q2 r4 |
  r4 \vt <ais ais'>4(<b b'> |
  <c c'>2) \ov r4 |
  r4 <c c'>4(<b b'> | % 38b
  <ais ais'>2) <a a'>4 |
  <g g'>8. <a a'>16 <b b'>4 q |
  <g g'>8. <a a'>16 <b b'>4 q |
  <e e'>4 r q( | % 38c
  <e' e'>4 <d d'> <cis cis'> |
  <c c'>4 <b b'> <ais ais'>) |
  <a a'>4(<g g'> <fis fis'>) |
  <c' c'>4(<b b'> <b, b'>) |
  <e e'>2.\fermata \section \key c \major \time 4/4 |
  <c' c'>2 r8. 16 8. 16 | % 39a
  <b b'>2 r8. 16 8. 16 |
  <a a'>4. 8 4 4 |
  <dis, dis'>2 <b b'> |
  <e e'>4 <f f'> <g g'> <g, g'> |
  <c' c'>4 <c, c'> r4 <c' g'>8. 16 | % 39b
  <c g'>4 <c c'> r <c g'>8. 16 |
  q4 <c c'> r <c g'>8. 16 |
  q4 q q q |
  <g g'>4 g' r4 <c, g'>8. 16 | % 40a
  q4 <c c'> r <c g'>8. 16 |
  q4 <c c'> r <c g'>8. 16 |
  q4 <c g' c> <b g' b> <c g' c> |
  <g g'>4 g' r g8 bes | % 40b
  d4 f, g a |
  d,4 d' r <bes, bes'>8 <d d'> |
  <f f'>4 <a, a'> <bes bes'> <c c'> |
  <f f'>4 <f, f'>8 <g g'> <a a'>4 <c c'> | % 41a
  <b b'>4. 8 <g g'>4 <e e'> |
  <b' b'>4. 8 <g g'>4 <e e'> |
  <b' b'>2 <g, g'>4. 8 |
  <c c'>4 <e e'> <g g'> <g, g'> | % 41b
  <c c'>4 r8 <c' c'> <a a'>4 <c c'> |
  <b b'>4. 8 <g g'>4 <e e'> |
  <b' b'>4. 8 <g g'>4 <e e'> |
  <b' b'>2 <g, g'>4. 8 | % 42a
  <c c'>4 <e e'> <g g'> <g, g'> |
  <c c'> e'8 g c4 r |
  <c,, c'>8 <e e'> <fis fis'> <gis gis'> <a a'>4-. <ais ais'>-. |
  <b b'>2 <g, g'>4. 8 | % 42b
  <c c'>4 <e e'> <g g'> <g, g'> |
  <c c'>2 g''4 e8 d |
  c4. 8 a' g f e |
  d4 d b' b |
  b4 a8 b c4 4 | % 42c
  \vt c2 e,8 f e d \ov |
  c4 d8 e f4 ees |
  d4 c' b8 a g a |
  b8 c b a g a g f | % 43a
  e4 c'8 b a4. g8 |
  f4 <<{\vt fis g8 f e d} \new Voice {\vo b'8 a g4 s}>> \ov |
  e8 f e d c4 d | % 43b
  e4 r r2 |
  c'8 d e d c4 cis |
  d8 c b a b c b a | % 43c
  g4 r g e8 d |
  c4. 8 <<{\vt a' g f e} \new Voice {\vo c'4 cis}>> |
  <<{\vt d,4 d b'} \new Voice {\vo d8 c b a b4}>> \ov b4 | % 44a
  <<{\vt b4 a8 b} \new Voice {\vo e8 d c d}>> \ov c4 b8 c |
  cis4 b8 cis d4 b8 a |
  g4. 8 e' d c b | % 44b
  a4. e8 a g fis e |
  d4 d d c8 d |
  e4 e e d8 e | % 44c
  <<{\vt f4 d8 f fis4 e8 fis} \new Voice {\vo a4. 8 fis' e d c}>> |
  <<{\vt g4} \new Voice {\vo b4}>> \ov g4 2 |
  r2 fis4 d8 c | % 45a
  b4. 8 <<{\vt g'8 fis e d} \new Voice {\vo e'4 c8 b}>> |
  <<{\vt c,4 4} \new Voice {\vo a'4. 8}>> \ov a4 g8 a |
  b4 <b d> q <a c>8 <b d> | % 45b
  <c e>4 4 4. 8 |
  <b fis'>4 b, dis e8 fis |
  <b, g'>4\fz <b, b'>4 <<{\vt r2} \new Voice {\vo a''4 fis8 e}>> | % 45c
  <b dis>4\fz <b, b'> b''8 a g fis |
  <b, e>4\fz <b, b'> <<{\vt r2} \new Voice {\vo c''4 a8 g}>> |
  <<{\vt b,4 <b' dis> <b e> b} \new Voice {\vo fis4 s2 fis'8 g}>> | % 46a
  <<{\vt b,4} \new Voice {\vo fis'4}>> \ov <b,, b'>4 4 4 | <c c'> q q <dis dis'> |
  <c c'> <c, c'> e' f8 g |
  <c, a'>4 <c, c'> bes'' g8 f | % 46b
  <c e>4 <c, c'> c''8 bes a g |
  <c, f>4 <c, c'> d'' bes8 a |
  <c, g'>4 <c' e> c2 | % 46c
  <c, c'>4 q q <b b'>8 <c c'> |
  <cis cis'>4 <cis' e> q <b d>8 <cis e> |
  <d, d'>4 4 4 <cis cis'>8 <d d'> | % 47a
  <dis dis'>4 <dis' fis>4 4 <cis e>8 <dis fis> |
  <e g>4 <e, e'> <d d'> <c c'> |
  <g g'>4 <fis fis'>8 <g g'> <a a'>4 r |
  <g g'>4 <fis fis'>8 <g g'> <a a'>4 r | % 47b
  <g, g'>4 <fis fis'>8 <g g'> <aes aes'>4 r |
  <g g'>4 <fis fis'>8 <g g'> <aes aes'>4. 8 |
  <g g'>2 r | % 47c
  <<{\vt R1} \new Voice {\vo c''4 a8 g f4. 8}>> |
  <<{\vt R1} \new Voice {\vo d'8 c b a g4 g}>> |
  \ov R1 |
  R1 | % 48a
  <<{\vt <g,, g'>\fz} \new Voice {\vo r2 g''4 e8 d}>> |
  <<{\vt q1} \new Voice {\vo c4. 8 a' g f e}>> |
  <<{\vt q1} \new Voice {\vo d4 d s2}>> |
  <<{\vt q1} \new Voice {\vo b'4 a8 b c4 c}>> | % 48b
  <<{\vt q1} \new Voice {\vo c2 4 cis}>> |
  <<{\vt q1} \new Voice {\vo d4 d d d}>> |
  \ov <g, d'>4 4 4 <<{\vt g4} \new Voice {\vo e'8 f}>> |
  \ov <g, f'>4 <g e'> <g d'> q | % 48c
  <c, c'>4 <b b'>8 <c c'> <d d'>4 r |
  <c c'>4 <b b'>8 <c c'> <d d'>4 r |
  <c c'>4 <b b'>8 <c c'> ees16 ees' ees, ees' ees, ees' ees, ees' |
  \repeat unfold 8 {ees,16 ees'} | % 49a
  \repeat unfold 8 {b,16 b'} |
  <g, g'>4 <b b'> <c c'> <e e'>8 <f f'> |
  <g g'>2 <g, g'> | % 49c
  \repeat unfold 2 {<c c'>4 <a a'>8 <g g'> <fis fis'>4 r} |
  \repeat unfold 4 {fis16 fis'} \repeat unfold 4 {f,16 f'} |
  \repeat unfold 4 \repeat tremolo 4 {e,16 e'} | % 49c
  \repeat unfold 2 \repeat tremolo 4 {cis,16 cis'} |
  \repeat tremolo 4 {d,16 d'} \repeat tremolo 4 {f,16 f'} |
  \repeat unfold 2 \repeat tremolo 4 {g,16 g'} | % 50a
  \repeat unfold 2 \repeat tremolo 4 {g,,16 g'} |
  <c c'>4 r <g' b d g> r |
  <c e g c>4 r <g, b d g> r |
  <c c'>4 q <g g'> <e e'> | % 50b
  <c c'>4 <c' c'> <g g'> <e e'> |
  <c c'>4 r q4. 8 |
  q2 q |
  q1\fermata |
}
