globalAgnusDei = {
  \key g \major
  \time 4/4
}

TempoTrackAgnusDei = {
  \tempo "Lento" 4=60
}

RehearsalTrackAgnusDei = {
  \textMark \markup\box "36c" s1*3
  \textMark \markup\box "36d" s1*3
  \textMark \markup\box "37a" s1*3
  \textMark \markup\box "37b" s1
  \mark \markup\circle\bold A s1*2
  \textMark \markup\box "37c" s1*3
  \textMark \markup\box "37d" s1*4
  \textMark \markup\box "38a" s1*3
  \textMark \markup\box "38b" s1*2
  \mark \markup\circle\bold B s1
  \textMark \markup\box "38c" s1*3
  \textMark \markup\box "38d" s1*2
  \textMark \markup\box "39a" s1*3
  \textMark \markup\box "39b" s1*3
  \textMark \markup\box "39c" s1*2
  \mark \markup\circle\bold C s1
  \textMark \markup\box "39d" s1*5
}

dynamicsSopSoloAgnusDei = {
  \override DynamicTextSpanner.style = #'none
  s1*44 |
}

sopranoSoloAgnusDei = \relative {
  \globalAgnusDei
  R1*5 | b'4. e8 4 c8 a |
  fis8 16. a32 c8. b16 \appoggiatura a16 g8 g r4 | % 37a
  e'8. 16 8 8 g4. fis16(e) | d4. cis16(b) a4~16(gis) b(a) |
  g8 fis r4 r2 | R1*2 | % 37b
  R1*3 |
  R1*4 |
  R1*11 | % 38
  R1*3 | % 39a
  e'4. a8 4 f8 d | b8 16. d32 f8. e16 \grace d16 c8 c r4 | a'4. 8 \appoggiatura a8 c,4. e16(d) |
  \grace c16 b8 b g'8. 16 8. fis32(e) d16(cis e d) | g,4 r r2 | R1 |
  R1*5 |
}

wordsSopSoloAgnusDei = \lyricmode {
  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re nob -- is,

  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  do -- na no -- is pa -- cem,
  do -- na no -- is pa -- cem.
}

wordsSopSoloAgnusDeiMidi = \lyricmode {
  "\nA" "gnus " De "i, " "qui " tol "lis " pec ca "ta " mun "di, "
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re " nob "is, "

  "\nA" "gnus " De "i, " "qui " tol "lis " pec ca "ta " mun "di, "
  "\ndo" "na " no "is " pa "cem, "
  "\ndo" "na " no "is " pa "cem. "
}

dynamicsAltoSoloAgnusDei = {
  \override DynamicTextSpanner.style = #'none
  R1*6 |
  R1*13 | % 37
  R1*11 |
  R1*14 |
}

altoSoloAgnusDei = \relative {
  \globalAgnusDei
  R1*6 |
  R1*13 | % 37
  R1*11 |
  R1*14 |
}

wordsAltoSoloAgnusDei = \lyricmode {
}

wordsAltoSoloAgnusDeiMidi = \lyricmode {
}

dynamicsTenorSoloAgnusDei = {
  \override DynamicTextSpanner.style = #'none
  R1*6 |
  R1*13 | % 37
  R1*11 |
  R1*14 |
}

tenorSoloAgnusDei = \relative {
  \globalAgnusDei
  R1*6 |
  R1*13 | % 37
  R1*11 |
  R1*14 |
}

wordsTenorSoloAgnusDei = \lyricmode {
}

wordsTenorSoloAgnusDeiMidi = \lyricmode {
}

dynamicsBassSoloAgnusDei = {
  \override DynamicTextSpanner.style = #'none
  s1*6 |
  R1*13 | % 37
  R1*11 |
  R1*14 |
}

bassSoloAgnusDei = \relative {
  \globalAgnusDei
  R1*6 |
  R1*13 | % 37
  fis4.^\markup "Baß Solo" b8 4 g8 e | cis8 16. e32 g8. fis16 \grace e16 d8 d r4 | b'8. 16 8 8 d4. cis16(b) | R1*8 |
  R1*14 |
}

wordsBassSoloAgnusDei = \lyricmode {
  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis,
}

wordsBassSoloAgnusDeiMidi = \lyricmode {
  "\nA" "gnus " De "i, " "qui " tol "lis " pec ca "ta " mun "di, "
  "\nmi" se re "re " no "bis, "
}

dynamicsSopAgnusDei = {
  \override DynamicTextSpanner.style = #'none
  s1*6 |
  s1*4 | s1\pp | s1*8 | % 37
  s1*5 | s1\pp | s1*5 |
  s1*8 | s1\pp | s1*5 |
}

sopranoAgnusDei = \relative {
  \globalAgnusDei
  R1*6 |
  R1*3 | % 37a
  R1 | a'8.^\markup\halign #RIGHT Tutti g16 e8 fis g4(e) | fis4 r r2 |
  b8. a16 fis8 g a8. g16 e8 fis | g4(e) d r | R1 |
  R1*4 |
  R1*3 | % 38a
  R1*2 | e'8.^\markup{\halign #RIGHT Tutti} d16 b8 cis d4(b) |
  cis4 r r2 | fis8. e16 cis8 d e8. d16 b8 c | d4(b) a r |
  R1*2 |
  R1*3 | % 39a
  R1*3 |
  R1*2 | d8.^\markup\halign #RIGHT Tutti c16 a8 b c4(a) |
  b4 r r2 | e8. d16 b8 c d8. c16 a8 b | c4(a) g r | R1 | R\fermata |
}

wordsSopAgnusDei = \lyricmode {
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re nob -- is.
}

wordsSopAgnusDeiMidi = \lyricmode {
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re " nob "is, "
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re " nob "is, "
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re " nob "is. "
}

dynamicsAltoAgnusDei = {
  \override DynamicTextSpanner.style = #'none
  s1*6 |
  s1*4 | s1\pp | s1*8 | % 37
  s1*5 | s1\pp | s1*5 |
  s1*8 | s1\pp | s1*5 |
}

altoAgnusDei = \relative {
  \globalAgnusDei
  R1*6 |
  R1*3 | % 37a
  R1 | d'8.^\markup\halign #RIGHT Tutti cis16 8 dis e4(c) | d r r2 |
  b8. 16 8 8 d8. cis16 8 dis | e4(cis) d r | R1 |
  R1*4 |
  R1*3 | % 38a
  R1*2 | a'8.^\markup{\halign #RIGHT Tutti} gis16 8 ais b4(g)
  a4 r r2 | fis8. 16 8 8 a8. gis16 8 ais | b4(gis) a r |
  R1*2 |
  R1*3 | % 39a
  R1*3 |
  R1*2 | g8.^\markup\halign #RIGHT Tutti fis16 8 gis a4(fis) |
  g4 r r2 | e8. 16 8 8 g8. fis16 8 gis | a4(fis) g r | R1 | R\fermata |
}

wordsAltoAgnusDei = \lyricmode {
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re nob -- is.
}

wordsAltoAgnusDeiMidi = \lyricmode {
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re " nob "is, "
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re " nob "is, "
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re " nob "is. "
}

dynamicsTenorAgnusDei = {
  \override DynamicTextSpanner.style = #'none
  s1*6 |
  s1*4 | s1\pp | s1*8 | % 37
  s1*5 | s1\pp | s1*5 |
  s1*8 | s1\pp | s1*5 |
}

tenorAgnusDei = \relative {
  \globalAgnusDei
  R1*6 |
  R1*3 | % 37a
  R1 | a8.^\markup\halign #RIGHT Tutti 16 8 8 b4(a) | 4 r r2 |
  g8. fis16 dis8 e a8. 16 8 8 | b4(g) fis r | R1 |
  R1*4 |
  R1*3 | % 38a
  R1*2 | e'8.^\markup\halign #RIGHT Tutti 16 8 8 fis4(a) |
  e4 r r2 | d8. cis16 ais8 b e8. 16 8 8 | fis4(d) cis r |
  R1*2 |
  R1*3 | % 39a
  R1*3 |
  R1*2 | d8.^\markup\halign #RIGHT Tutti 16 8 8 e4(d) |
  d4 r r2 | c8. b16 gis8 a d8. 16 8 8 | e4(c) b r | R1 | R\fermata |
}

wordsTenorAgnusDei = \lyricmode {
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re nob -- is.
}

wordsTenorAgnusDeiMidi = \lyricmode {
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re " nob "is, "
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re " nob "is, "
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re " nob "is. "
}

dynamicsBassAgnusDei = {
  \override DynamicTextSpanner.style = #'none
  s1*6 |
  s1*4 | s1\pp | s1*8 | % 37
  s1*5 | s1\pp | s1*5 |
  s1*8 | s1\pp | s1*5 |
}

bassAgnusDei = \relative {
  \globalAgnusDei
  R1*6 |
  R1*3 | % 37a
  R1 | fis8.^\markup\halign #RIGHT Tutti e16 a,8 fis' e4(a) | d,4 r d8. 16 8 g |
  b,8. 16 8 e fis8. e16 a,8 fis' | e4(a) d, r | R1 |
  R1*4 |
  R1*3 | % 38a
  R1*2 | cis8.^\markup\halign #RIGHT Tutti b16 e,8 cis b4(e) |
  a4 r a'8. 16 8 d | fis,8. 16 8 b cis8. b16 e,8 cis | b4(e) a, r |
  R1*2 |
  R1*3 | % 39a
  R1*3 |
  R1*2 | b'8.^\markup\halign #RIGHT Tutti a16 d,8 b a4(d) |
  g,4 r g8. 16 8 c | e8. 16 8 a b8. a16 d,8 b | a4(d) g, r | r1 | R\fermata |
  \bar "|." \break \pageBreak
}

wordsBassAgnusDei = \lyricmode {
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re, mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re, mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re nob -- is,
  mi -- se -- re -- re, mi -- se -- re -- re, mi -- se -- re -- re nob -- is.
}

wordsBassAgnusDeiMidi = \lyricmode {
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re, " mi se re "re " nob "is, "
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re, " mi se re "re " nob "is, "
  "\nmi" se re "re " nob "is, "
  "\nmi" se re "re, " mi se re "re, " mi se re "re " nob "is. "
}

pianoRHoneAgnusDei = \relative {
  \globalAgnusDei
  r16^\markup\bold\larger "Agnus Dei"  b'16(c b g'8 e) r16 b16(c b a'8 fis) |
  r16 b,16(c b b'8 g) fis8. g32 a <g, e'>8(<fis dis'>) |
  \vo f'8.(a16 c8) \ov r r <gis, fis'>(<a e'>) <fis ees'>( |
  <g d'>) <dis c'>(<e b'>) <d a'>(<e g>) e'(c a) | % 36d
  \vo fis8.(g32 a) \ov <b, e>8-.(<b dis>-.) <dis fis>4(e8) r |
  <b e g>8 r <b d e gis> r <a c e a>4 r |
  <c fis a>8 r <a dis fis> r <g e'> r <g c e> q | % 37a
  <e' g ais>8 r <e g b>-. <e g c>-. <e g cis>16 q q q q q q q |
  \repeat tremolo 4 <fis a d>16 \repeat tremolo 4 <f gis d'> \repeat tremolo 4 <e g d'> \repeat tremolo 4 <e g cis> |
  <d fis d'>16 <fis a> q q \repeat tremolo 4 q \repeat tremolo 4 <g a> <fis a> q <e a> q | % 37b
  <d a'>8.(<cis g'>16 <a c e>8 <a dis fis>) <b e g>4(<a c e>) |
  <a d fis>8 d-.(d-. d-.) \vo d'8.(cis16 ais8 b) |
  b8.(a16 fis8 g) \ov <d a'>8.(<cis g'>16 <a c e>8 <a dis fis>) | % 37c
  <b e g>4(<g a cis e>) \vo d'4 8-. \lh ais-. \rh \ov |
  b16(fis')g(fis) d'8(b) r16 fis(g fis) e'8(cis) |
  r16 fis,(g fis) fis'8(d) cis8.(d32 e) <fis, b>8-.(<fis ais>-.) | % 37d
  \vo c'8.(e16 <g, g'>8) \ov r r <dis c'>-.(<e b'>) <cis bes'>( |
  <d a'>) <ais g'>(<b fis'>) <a cis e>(<b d>) b'(g e) |
  \vo cis8.(e32 g) \ov <b, d fis>8-.( \lh <e, fis ais>-.) \rh \vo cis'4( \lh <d, fis b>8) \rh \ov r |
  \vo d'8 \ov r \vo dis \ov r \vo e4 \ov r | % 38a
  <g, cis e>8 r \vo cis \ov r \vo b \ov r \lh <d, g b>-. q-. \rh |
  \vo <d' eis>8 \ov r <b d fis>8-. <b d g>-. \repeat unfold 8 <b d gis>16 |
  \repeat tremolo 4 <cis e a>16 \repeat tremolo 4 <c dis a'> \repeat tremolo 4 <b d a'> \repeat tremolo 4 <b d gis> | % 38b
  \vo <a cis a'>16 <cis' e> q q q q q q \repeat tremolo 4 <d e> <cis e> q <b e> q |
  \ov <a e'>8.(<gis d'>16 <e g b>8 <e ais cis>) <fis b d>4(<e g b>) |
  <e a cis>4 r \vo a'8.(gis16) eis8(fis) | % 38c
  fis8.(e16) cis8(d) e,4 s |
  \ov <fis b d>4 <d gis b> <cis a'> e8-. <d e g>-. |
  <c e a>16 e'(f e) \vo c'8(a) r16 e(f e) d'8(b) | % 38d
  r16 e,(f e) e'8(c) b8.(c32 d) a8(gis) |
  bes8.(d16 f8) \ov r r <cis,, b'>(<d a'>) <d aes'>( | % 39a
  <c g'>8) <gis f'>(<a e'>) <g b d>(<c e>) a'(f d) |
  b8.(d32 f) <a, c e>8-.( \lh <d, e gis>-.) <d e gis b>4(<e a>8) \rh \ov r |
  <e' a c>8 r <e g a cis> r <d f a d>4 r | % 39b
  <f b d>8 r <d gis b> r <c a'> r <c fis a>-. q-. |
  <a' cis d>8 r <a cis e>8-. <a cis f>-. \repeat unfold 8 <a cis fis>16 |
  \repeat tremolo 4 <b d g>16 \repeat tremolo 4 <bes cis g'> \repeat tremolo 4 <a c g'> \repeat tremolo 4 <a c fis> | % 39c
  <g b g'>16 <b d> q q \vo q q q q \repeat tremolo 4 <c d> <b d> q <a d> q |
  <b d>8.(<a c>16) \ov <d, fis a>8(<d gis b>) <e a c>4(<d fis a>) |
  <d g b>8 g-.(g-. g-.) \vo g'8.(fis16) d8(e) | % 39d
  e8.(d16) b8(c) <g d'>8.(<fis c'>16) \ov <d fis a>8(<d gis b>) |
  <e a c>4(<c fis a>) <b d g> g'8(<c, e>) |
  <b d>8.(<a c>16) \vo <fis a>8(<gis b>) c4(\lh <c, d fis a>) |
  <b g'>4 \rh \ov <g' b d g>-.(q-.) r\fermata |
}

pianoRHtwoAgnusDei = \relative {
  \globalAgnusDei \vt
  s1*2 | f'8.(a16 c8) s8 s2 |
  s1 | c,4 s2. | s1 |
  s1*5 | s2 d4. 8 | b4. 8 s2 | s1*3 | g'4 s2. | s1 | g,4 s2. | % 37
  s1*4 | s2 b'4(a8 e) | s1 | s2 a4. 8 | fis4. 8 <a e'>8.(<gis d'>16) <e g b>8(<e ais c>) | s1 | s4 e8(a) 4(gis) | g4(a) <d, f b> <e c'>8 <e b'> |
  <<{\vf <d f>4 s8} \new Voice {\vt bes'8.(d16 f8)}>> \vt s8 s2 | % 39a
  s1*6 | s4 r8 gis, a4 g8 d | d4 s2. | s2 g4. 8 | e4. 8 d4 s | s1*3 |
}

dynamicsPianoAgnusDei = {
  \override DynamicTextSpanner.style = #'none
  s4\mf s\> s\! s\> | s\! s\> s2\! | s4\fp\> s\! s8 s4\fp s8\fp |
  s8 s4\fp s8\fp s2 | s1 | s4\p s4\f s2\fz |
  s1\p | s2\cresc s4\fp s\pp | s1 | % 37a
  s1*2 | s2 s4\fp\> s\! |
  s4\fp\> s2.\! | s s4\f | s1\mf |
  s1 | s2\fp s8 s4\fp s8\fp | s8 s4\fp s8\fp s2 | s1 |
  s4\p s2.\f | s1\p | s2\cresc s\fp | % 38a
  s1\pp | s2 s4\> s\! | s8.\> s16\! s2. |
  s1 | s8.\> s16\! s4 s8.\> s16\! s4 | s2. s4\f |
  s2\mf s4\> s\! | s1 |
  s4\fp\> s\! s8 s4\fp s8\fp | s8 s4\fp s8\fp s2 | s1 | % 39a
  s4\p s2.\f | s1\p | s2\cresc s\fp |
  s1\pp | s2 s4\> s\! | s8.\> s16\! s2. |
  s2 s8.\> s16\! s4 | s8.\> s16\! s2. | s1 | s\pp | s |
}

pianoLHoneAgnusDei = \relative {
  \globalAgnusDei \vo
  b4.(e8) 4(dis) | dis4(e) \ov <a, c fis> b8-.(8-.) | \ov <a c>4. r8 r <b d>(<c e>) <a c>( |
  <b d>8) <fis a>(<g b>) <b, fis'>(<c e>) gis'(a c) | % 36d
  <a, a'>4 <b g'>8-.(<b fis'>-.) <b a'>4 <e g>8 r |
  <e, e'>8 r q r <a, a'>4 r |
  q8 r <b b'> r <c c'> r q q | % 37a
  <c' c'>8 r <b b'>-. <bes bes'>-. <a a'>2~ | q <a, a'> |
  <d d'>4 r8 dis''(e4 b8 a) | % 37b
  \vo a4 s <e, e'>(a) |
  <d, d'>8 d'-.(d-. d-.) \vo b'8.(a16 fis8 g) |
  g8.(fis16 dis8 e) a4 \ov a,8(<fis fis'>) | % 37c
  <e e'>4(a) \vo \crossStaff{<fis' a> fis8 <e fis ais>} |
  fis4.(b8) 4(ais) |
  ais4(b) \ov <e, g cis> <fis d'>8-.(<fis c'>-.) | % 37d
  \vo c'8. e16 r4 \ov r8 <fis, a>(<g b>) <e g>( |
  <fis a>8) <cis e>(<d fis>) fis,(g) dis'(e g) |
  <e, e'>4 \vt <fis fis'>8 fis8 \vo \crossStaff <e' fis ais>4 \vt b8 \ov r |
  \vo \crossStaff {<fis' b>8 r <fis a b> r <e g b>4} r4 | % 38a
  <e, e'>8 r \vo \crossStaff {<e' fis ais> r <d g>} s4. |
  \crossStaff <g b>8 \ov r <fis, fis'>-. <f f'>-. <e e'>2~ |
  q2 q | <a, a'>4 r s2 | \vo e'''4 s \ov <b, b'>4(e) | % 38b
  <a, a'>8-.(q-. q-. q-.) \vo fis''8.(e16) cis8(d) | % 38c
  d8.(cis16) ais8(b) \ov cis8.(b16) e,8(<cis cis'>) |
  <b b'>4 e <a, a'> <c c'>8-. <b b'> |
  <a a'>4 <a' c> <b d>2 | <c e>2 s | % 38d
  s4. r8 r <e, g>(<f a>) <d f>( | % 39a
  <e g>8) <b d>(<c e>) e,(f) cis'(d f) |
  \vo f4 s <d e g b>4(<c e a>8) \ov r |
  <a a'>8 r q r <d, d'>4 r | % 39b
  q8 r <e e'> r <f f'> r q-. q-. |
  q8 r <e e'>-. <ees ees'>-. <d d'>2~ |
  q2 q | <g, g'>4 s2. | b''8.(a16 d,8 <b b'>) <a a'>4 d | % 39c
  <g, g'>8 g'-.(g-. g-.) \vo e'8.(d16) b8(c) | % 39d
  c8.(b16) gis8(a) \ov b8.(a16 d,8 <b b'>) |
  <a a'>4(d) <g, g'> r8 c |
  \vo d4 \crossStaff \vo d8 <<{d4 s8} \new Voice {\vo s8 a' e}>> s4 |
  <b g'>4 \ov <g, g'>-.(q-.) r\fermata |
}

pianoLHtwoAgnusDei = \relative {
  \globalAgnusDei \vt
  <e g>2 <fis a> | <g b>2 s | s1*4 |
  s1*4 | fis8.(e16 \vo a,8 <fis fis'>) \vt s2 | s d'4. g8 | % 37a
  b,4.(e8) fis8.(e16) s4 | s2 <d, d'>4 8 <cis cis'> | % 37c
  <<{\vf b8 s2..} \new Voice {\vt <b' d>2 <cis e>}>> |
  <d fis>2 s | <e g>4. r8 s2 | s1 | s2 fis,4 s | % 37d
  <b, b'>8 r q r <e, e'>4 r | s4 fis'8 r g r <g, g'> q | q8 s2.. | % 38a
  s1*2 | cis''8.(b16 e,8 <cis cis'>8) s2 |
  s2 a'4.(d8) | fis,4. b8 s2 | s1 |
  s1*2 |
  s1*2 | <d,, d'>4 <e e'>8 e8 4(a8) s | % 39a
  s1*3 |
  s1*3 |
  s2 g'4.(c8) | e,4.(a8) s2 | s1 | b,8.(a16 d,8 <b b'>) <a a'>4(d) | <g, g'> s2. |
}
