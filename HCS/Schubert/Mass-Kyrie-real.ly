globalKyrie = {
  \key g \major
  \time 3/4
}

TempoTrackKyrie = {
  \tempo "Andante con moto" 4=100
  s2.*99
}

RehearsalTrackKyrie = {
  \textMark \markup { \box "3a" } s2.*4
  \textMark \markup { \box "3b" } s2.*5
  \textMark \markup { \box "4a" } s2.*5
  \textMark \markup { \box "4b" } s2.*5
  \textMark \markup { \box "4c" } s2.*5
  \textMark \markup { \box "5a" } s2.*3
  \mark \markup\circle\bold A s2.*2
  \textMark \markup { \box "5b" } s2.*5
  \textMark \markup { \box "5c" } s2.*5
  \textMark \markup { \box "5d" } s2.*6
  \mark \markup\circle\bold "B"
  \textMark \markup { \box "6a" } s2.*5
  \textMark \markup { \box "6b" } s2.*5
  \textMark \markup { \box "6c" } s2.*6
  \textMark \markup { \box "7a" } s2.*6
  \textMark \markup { \box "7b" } s2.*6
  \textMark \markup { \box "7c" } s2.*6
  \textMark \markup { \box "8a" } s2.*6
  \textMark \markup { \box "8b" } s2.*6
  \textMark \markup { \box "8c" } s2.*8
}

dynamicsSopSoloKyrie = {
  s2.*99
}

sopranoSoloKyrie = {
  s2.*99
}

wordsSopSoloKyrie = \lyricmode {
}

wordsSopSoloKyrieMidi = \lyricmode {
}

dynamicsSopKyrie = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s2.*8 |
  s2.*14 | s2.\> | % 4
  s2.\! | s2.*17 | s2.\cresc | s\f\> | s\! |
  s2.*9 | s2.\> | s\! | s2.*3 | s2.\fp | s | % 6
  s4\> s2\! | s2.*17 |
  s2.*14 | s2.\< | s\> | s\! | s2.*3 | % 8
}

sopranoKyrie = \relative {
  \globalKyrie
  b'2 c4 | d2 e4 | a,2(c8 b) | a2 r4 |
  b2 c4 | d2 e4 | b2(a4) | b4 8. 16 8 8 | c2 4 |
  r4 c8. 16 8 8 | b2 d8. 16 | a2(cis4) | d2 r4 | R2. | % 4a
  R2. | b2 c4 | d2 e4 | a,2(c8 b) | a2 r4 |
  b2 c4 | d2 e4 | f2. | e4 r e | d2. |
  c4 r r | bes8. 16 d4 f | e(a, c8 b) | a2 r4 | R2. | % 5a
  e'4^\markup "Sopr. Solo" a, r8 8 | a(f') 4 r | 2 e8 dis | 8(e) 2 | 4 d c
  f8(d) b2 | 4.(d8) g f | dis(e) 2~ | 2. | 4 a, r8 8 |
  a8(f') 4 r | 2 e8 dis | 8(e) 2 | 4 4 4 | g2.( | dis) |
  e4 r r | R2. | e2^\markup{\halign #RIGHT Tutti} 4 | R2. | g2 dis4 | % 6a
  e2. | d4 r d | e2 4 | 4. 8 4 | f2. |
  e2 4 | b2. | c2 r4 | R2. | c2. | 4 r r8. 16 |
  c2. | 4 r r | R2.*4 | % 7a
  b2 c4 d2 e4 | a,2(c8 b) | a2 r4 | b2 c4 | d2 e4 |
  b2(a4) b4 8. 16 8 8 | c4 4 r | r c8. 16 8 8 | b4 4 d | a2(cis4) |
  d2 r4 | R2.*2 | b2 c4 | d2 e4 | a,2(c8 b) | % 8a
  a2 r4 | b2 c4 | d2 e4 | b2(a4) g r r | c2 fis,4 |
  g4 r b | c2(fis,4) | g2.~ | 2.~ | 4 r r | R2.*3 |
}

wordsSopKyrie = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
                                % Sop solo
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son, __
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son.
                                % Tutti
  Chri -- ste, Chri -- ste, Chri -- ste, e -- lei -- son,
  Chri -- ste, e -- lei -- son, e -- lei -- son.
  Chri -- ste, e -- lei -- son.
  
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son! __
}

wordsSopKyrieMidi = \lyricmode {
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son. "
                                % Sop solo
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, " 
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son. "
                                % Tutti
  "\nChri" "ste, " Chri "ste, " Chri "ste, " e lei "son, "
  "\nChri" "ste, " e lei "son, " e lei "son. "
  "\nChri" "ste, " e lei "son. "
  
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son! " 
}

dynamicsAltoSoloKyrie = {
  s2.*99
}

altoSoloKyrie = {
  s2.*99
}

wordsAltoSoloKyrie = \lyricmode {
}

wordsAltoSoloKyrieMidi = \lyricmode {
}

dynamicsAltoKyrie = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s2.*8 |
  s2.*14 | s2.\> | % 4
  s2.\! | s2.*20 |
  s2.*9 | s2.\> | s\! | s2.*3 | s2.\fp | s | % 6
  s4\> s2\! | s2.*17 |
  s2.*14 | s2.\< | s\> | s\! | s2.*3 | % 8
}

altoKyrie = \relative {
  \globalKyrie
  g'2 4 | 2 4 | fis2(g4) | fis2 r4 |
  g2 4 | 2 4 | 2(fis4) | f4 8. 16 8 8 | e2 4 |
  r4 ees8. 16 8 8 | d2 8. g16 | fis2(e4) | d2 r4 | R2. | % 4a
  R2. | g2 4 | 2 4 | fis2(g4) | fis2 r4 |
  g2 4 | 2 4 | b2. | c4 r g | gis2. |
  a4 r r | f8. 16 4 4 | a2(gis4) | a2 r4 | R2. | % 5a
  R2.*16 |
  r4 r gis^\markup{\halign #RIGHT Tutti} | a2. | gis4 r gis | a2. | g4 r r | % 6a
  g2 4 | R2. | g2 4 | 4. 8 4 | 2. |
  g2 4 | gis2. | a2 r4 | R2. | a2. | 4 r r8. 16 |
  a2. | 4 r r | R2.*4 | % 7a
  g2 4 | 2 4 | fis2(g4) | fis2 r4 | g2 4 | 2 4 |
  g2(fis4) | f4 8. 16 8 8 | e4 e r | r ees8. 16 8 8 | d4 g g | fis2(e4) |
  d2 r4 | R2.*2 | g2 4 | 2 4 | fis2(g4) | % 8a
  fis2 r4 | g2 4 | 2 4 | 2 fis4 | g2 4 | c,2 4 |
  g'2 8. 16 | c,2(d4) | 2.~ | 2.~ | 4 r r | R2.*3 |
}

wordsAltoKyrie = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.

  e -- lei -- son, e -- lei -- son,
  Chri -- ste, Chri -- ste, Chri -- ste e -- lei -- son,
  e -- lei -- son.
  Chri -- ste, e -- lei -- son!
  
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son! __
}

wordsAltoKyrieMidi = \lyricmode {
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son. "

  "\ne" lei "son, " e lei "son, "
  "\nChri" "ste, " Chri "ste, " Chri "ste " e lei "son, "
  "\ne" lei "son. "
  "\nChri" "ste, " e lei "son! "
  
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son! " 
}

dynamicsTenorSoloKyrie = {
  s2.*99
}

tenorSoloKyrie = {
  s2.*99
}

wordsTenorSoloKyrie = \lyricmode {
}

wordsTenorSoloKyrieMidi = \lyricmode {
}

dynamicsTenorKyrie = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s2.*8 |
  s2.*14 | s2.\> | % 4
  s2.\! | s2.*20 |
  s2.*9 | s2.\> | s\! | s2.*4 | s4\> s2\! | % 6
  s2. | s4\> s2\! | s2.*16 |
  s2.*14 | s2.\< | s\> | s\! | s2.*3 | % 8
}

tenorKyrie = \relative {
  \globalKyrie
  d'2 4 | d(g) e | d2. | 2 r4 |
  d2 4 | 4(g) e | d2. | 4 8. 16 8 8 | c2 4 |
  r4 g8. 16 8 8 | 2 8. 16 | a2(g4) fis2 r4 | R2. | % 4a
  R2. | d'2 4 | 4(g) e | d2. | 2 r4 |
  d2 4 | 4(g) g | 2. | 4 r e | 2. |
  e4 r r | d8. 16 bes4 d | c2(e8 d) | c2 r4 | R2. | % 5a
  R2.*16 |
  r4 r b^\markup{\halign #RIGHT Tutti} | c2. | b4 r b | c2. | b4 r r | % 6a
  c2. | b4 r b | c2 4 | e4. 8 4 | d2. |
  fis2 e,4 | 2. | 2 r4 | R2.*2 | c'2. |
  c4 r r8. 16 | 2. | 4 r r | R2.*3 | % 7a
  d2 4 | 4(g) e | d2. | 2 r4 | 2 4 | 4(g) e |
  d2. | 4 8. 16 8 8 | c4 c r | r g8. 16 8 8 | 4 4 4 | a2(g4) |
  fis2 r4 | R2.*2 | d'2 4 | 4(g) e | d2. | % 8a
  d2 r4 | 2 4 | 4(g) e | d2 c4 | b(d) f | e2 c4 |
  b4 d f | e2(c4) | b2.~ | 2.~ | 4 r r | R2.*3 |
}

wordsTenorKyrie = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
  e -- lei -- son, e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son, e -- lei -- son,
  Chri -- ste e -- lei -- son!
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son! __
}

wordsTenorKyrieMidi = \lyricmode {
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son. "
  "\ne" lei "son, " e lei "son, "
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, " e lei "son, "
  "\nChri" "ste " e lei "son! "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son! " 
}

dynamicsBassSoloKyrie = {
  s2.*99
}

bassSoloKyrie = {
  s2.*99
}

wordsBassSoloKyrie = \lyricmode {
}

wordsBassSoloKyrieMidi = \lyricmode {
}

dynamicsBassKyrie = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s2.*8 |
  s2.*14 | s2.\> | % 4
  s2.\! | s2.*20 |
  s2.*9 | s2.\> | s\! | s2.*4 | s4\> s2\! | % 6
  s2. | s4\> s2\! | s2.*16 |
  s2.*14 | s2.\< | s\> | s\! | s2.*3 | % 8
}

bassKyrie = \relative {
  \globalKyrie
  g2 a4 | b2 c4 | d2. | d,2 r4 |
  g2 a4 | b2 c4 | d2. | g,4 8. 16 8 8 | 2 4 |
  r4 g,8. 16 8 8 | 2 b8. 16 | a2. | d2 r4 | R2. | % 4a
  R2. | g2 a4 | b2 c4 | d2. | d,2 r4 |
  g2 a4 | b2 c8(cis) | d2. | c4 r c | b2. |
  a4 r r | d,8. 16 4 4 | e2. | a,2 r4 | R2. | % 5a
  R2.*16 |
  R2. | e'2^\markup{\halign #RIGHT Tutti} 4 | R2. | a2 4 | g2 4 | % 6a
  R2. | g2 4 | c,2 4 | b4. 8 4 | 2. |
  c2 4 | 2. | 2 r4 | R2.*2 | a'2. |
  a4 r r8. 16 | 2. | 4 r r | R2.*3 | % 7a
  g2 a4 | b2 c4 | d2. | d,2 r4 | g2 a4 | b2 c4 |
  d2. | g,4 8. 16 8 8 | 4 4 r | r g,8. 16 8 8 | 4 4 b | a2. |
  d2 r4 | R2.*2 | g2 a4 | b2 c4 | d2. | % 8a
  d,2 r4 | g2 a4 | b2 c8(cis) | d2(d,4) | g2 r4 | g2 4 |
  g4 r g | 2. | 2.~ | 2.~ | 4 r r | R2.*3 |
  \bar "|." \break \pageBreak
}

wordsBassKyrie = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
  Chri -- ste, Chri -- ste, Chri -- ste,
  Chri -- ste, Chri -- ste, Chri -- ste e -- lei -- son,
  e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son! __
}

wordsBassKyrieMidi = \lyricmode {
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son. "
  "\nChri" "ste, " Chri "ste, " Chri "ste, "
  "\nChri" "ste, " Chri "ste, " Chri "ste " e lei "son, "
  "\ne" lei "son, "
  "\nChri" "ste " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son! " 
}

pianoRHoneKyrie = \relative {
  \globalKyrie
  \vo bes'4 4(c\trill) | d2(e4) | a,4 4(c8 b) | \ov <fis a>8-. <d d'>(<e cis'> <fis c'> <g b> <fis a>) |
  b4 b(c\trill) | d2 e16(g e c) | b2(a4) b(d g) | c,(e g) |
  c,4(g' c) | b(d g,) | fis(a cis,) | <fis, d'> <d' d'>(<a a'>) | <fis fis'>4(a' cis,) | % 4a
  \ov <fis, a d>8(<e cis'> <g e'> <fis d'> <e c'> <fis c'>) | % 4b
  \vo b2(c4) | d2(e4) | a,2(c8 b) |
  <fis a>8-. <d d'>(<e cis'> <fis c'> <g b> <fis a>) |
  b2(c4) | d2(e4) | <b f'>2(g'4) | <c, e>4 dis8(e f e) | d2(e4) | % 4c
  c4 a'8(e d c) | \ov <bes, bes'>4(d' <f, f'>) | \vo e'(a,) c8(b) | \ov <c, a'>8(<b gis'> <c a'> <c e> <b d> <a c>) | e'(d) <a c>4-. <gis b>-. | % 5a
  a8 <c e a>8 8 8 <cis g' a> q | % 5b
  \repeat unfold 10 <d f a>8 <c e a> <b dis a'> |
  <c e a>8 8 8 8 <a c a'> <b d a'> |
  <c e a> q <d e gis> q <c e a> q |
  \repeat unfold 12 <d f g b>8 | % 5c
  \repeat unfold 8 <e g c>8 <e gis d'> q <e g b> <d g b> |
  <c a'>8 <c e a> q q <cis g' a> q |
  \repeat unfold 10 <d f a>8 <c e a> <b dis a'> | % 5d
  <c e a>8 8 8 8 <a c a'> <b d a'> |
  <c e a>8 8 <b e g> q <ais e' fis> q |
  <b e g>8 8 8 8 8 8 |
  <a b dis fis>8 8 <a c dis fis> q <a b dis fis> <a dis fis> |
  <g e'>4 <b b'> <b gis' b> | % 6a
  \vo <c c'>2(<e e'>4) |
  r4 <b b'> q |
  <c c'>2(<e e'>4) |
  r4 <d d'>-.(q-.) |
  <e e'>2(<g g'>4) | r <d d'>-.(q-.) | <e e'>2(<g g'>4) | <b b'>2->(e'4) | <f, f'>2.( | % 6b
  e'2.)( | <b, b'>) | <c c'>2(<gis gis'>4) | <a a'>(<c c'> <e e'>) | \ov <g, g'>(<fis fis'> <e e'>) | <d d'> r r |
  g'4(fis e | d) r r | g,(fis ees) | d r r | d(ees e | fis <b, d g> <d fis a>) | % 7a
  \vo b'2(c4\trill) | d2(e4) | a,2(c8 b) | \ov <fis a>8-. <d d'>(<e cis'> <fis c'> <g b> <fis a>) | \vo b2(c4\trill) | d2 e16(g e c) |
  b2(a4) | b(d g) | c,(e g) | c,(g' c) | b(d g,) | fis(a cis,) |
  <fis, d'>4 <d' d'>(<a a'>) | % 8a
  <fis fis'>4(a' cis,) |
  \ov <fis, d'>8(<e cis'> <g e'> <fis d'> <e cis'> <fis c'>) |
  \vo b2(c4\trill) |
  d2(e4) |
  a,2(c8 b) |
  \ov <fis a>8-. <d d'>( <e cis'> <fis c'> <g b> <fis a>) | % 8b
  \vo b2(c4\trill) |
  d2 \tuplet 3/2 {e8(fis g)} |
  g4.(d8) c(a) |
  g8(d' c b a b) |
  c2. |
  \ov <b, g' b>8-. <d' d'>(<c c'> <b b'> <a a'> <b b'>) | % 8c
  \vo <c c'>2(<fis, fis'>4) |
  <g b g'>8(b' d b g d) |
  b8(b' g d b d) |
  \ov g,2.~ | g | <g, b d g>4 4 4 | q2 r4 |
}

pianoRHtwoKyrie = \relative {
  \globalKyrie \vt
  d'8(g d g d g) | d(g d g d g) | fis(d fis d g d) | s2. |
  g8(d d g d g) | d(g fis f e g) | d(g d g d fis) | f(g f g f g) | e(g e g e g) |
  ees8(g ees g ees g) | d'(g b g d g,) | d'(a <d fis> a <e g> a) | d,(d fis a fis d) | \lh a_(d \rh fis' a, <e g> a) | % 4a
  s2. | g8(d) d(g d g) | d(g d g e g) | fis(d fis d g d) | s2. |
  g8(d) d(g d g) | d(g d g e g) | f(g f g f g) | e(g dis e f e) | d(e d e d e) |
  c8(e a e d c) | s2. | e8(f e dis e d) | s2.*18 | % 5
  s2. | a'8(e a e c' a) | gis(e gis e gis e) | a(e a e c' a) | b(g b g b g-.) | % 6a
  c8(g c g)(c g) | b(g b g b g) | c(g c g e' g,) | g'(e g e g e) | d'(g, d' g, d' g,) |
  e8(g e g e g) | gis(e gis e gis e) | a(e a, e d e) | c(e a e \lh c b) | \rh s2.*2 |
  s2.*6 | % 7a
  g'8(d) d(g d g) | d(g d g e g) | fis(d fis d g d) | s2. | g8(d) d(g d g) | d(g fis f) e(f) |
  d8(g d g d fis) | f(g f g f g) | e(g e g e g) | ees(g ees g ees g) | d'(g b g d g,) | d'(a d a <e g> a) |
  d,8-. d(fis a fis d) | \lh a_(d \rh fis' a, <e g> a) | s2. | g8(d) d(g d g) | d(g d g e g) | fis(d fis d g d) | % 8a
  s2. | g8(d) d(g d g) | d(g d g) g(e') | b(d, \lh b d a c) | \rh b4 d <d f> | e8(a g fis e fis) |
  s2. | e8(a g fis) a(c,) | r b'(d b g d) | b4(g'8 d b d) | s2.*4 |
}

dynamicsPianoKyrie = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s2.*5 | s2.\< | s\fp | s4.\fp s\cresc |
  s2.\fp | s\fp | s\p | s2.*8 | s2.\cresc | s\> | s\! | s\> | % 4
  s2.\! | s2.*4 | s2.\p | s2.*4 | s8\fz s\p s2 | s2.*2 | s4.\< s\> | s2.\! | s2.*3 | s2.\cresc | s\fp | s4 s2\fz |
  s2.\mf | s\> | s\! | s\> | s\! | s\> | s\! | s | s\cresc | s\> | s\p | s | s\decresc | s | s\pp | s | % 6
  s2.*12 | s2.\< | s\fp | s2\fp s4\cresc | s2.\fp | s\fp | s\p |
  s2.*14 | s2.\< | s\> | s\pp | s2.*3 | % 8
}

pianoLHoneKyrie = \relative {
  \globalKyrie \ov
  <g,, g'>2(<a a'>4) | <b b'>2(<c c'>4) | \vo d'2 g8(b) | d8 s s2 |
  \ov <g,,, g'>2(<a a'>4) | <b b'>2(<c c'>4) | <d d'>2 4 | <g, g'>2. | q |
  <g g'>2. | 2(<b b'>4) | <a a'>2 4 | <d d'>2 r4 | \vt r \ov <a a'> q | % 4a
  <d d'>4 r r | <g, g'>2(<a a'>4) | <b b'>2(<c c'>4) | \vo d'2 g8(b) | d8 s s2 |
  \ov <g,,, g'>2(<a a'>4) | <b b'>2 <c c'>8(<cis cis'>) | <b b'>2.( | <c c'>4) g'' <c, g'> | <b gis'>2. |
  <a a'>4 r8 <a c>(<b d> <c e>) | \vo f(d' bes d bes d) | c(d c b c gis) | \ov <a, a'>4 r8 <a c>(<b d> <c e>) | \vo <f bes>4 s <e, e'>-. | % 5a
  \ov a4 r r | a' r8 a-. f-. d-. | a4 r r | a' r r | c,8 r b r a r |
  g4 r8 g b d | g4 r r | c, r8 c' g e | c r b r e r | a,4 r r |
  a'4 r8 a f d | a4 r r | a' r r | a,8 r b r c r | \repeat unfold 12 b8 |
  e,8 e' gis^(e') gis,^(e') | <e,, e'>8 4 4 8~ | 4 r r | <a a'>8 4 4 8( | <g g'>4) r r | % 6a
  <g, g'>8 4 4 8~ | 4 r r | <c c'>8 4 4 8( | <b b'>) 4 4 8~ | 8 4 4 8 |
  <c c'>2.~ | q | q~ | q | \vo <a'' c>8 4 4 8~ | 8 4 4 8~ |
  q8 4 4 8~ | 8 4 4 8~ | 8 4 4 8~ | 8 4 4 8~ | 2.~ | 4 s2 | % 7a
  \ov <g,, g'>2(<a a'>4) | <b b'>2(<c c'>4) | \vo d'2 g8(b) | d8 s s2 | \ov <g,,, g'>2(<a a'>4) | <b b'>2(<c c'>4) |
  <d d'>2 4 | <g, g'>2. | q | q | q2(<b b'>4) | <a a'>2 4 |
  <d d'>2 r4 | \vt r4 \ov <a a'> q | <d d'>4 d' r | <g,, g'>2(<a a'>4) | <b b'>2(<c c'>4) | \vo d'2 g8(b) | % 8a
  d8 s s2 | \ov <g,,, g'>2(<a a'>4) | <b b'>2(<c c'>8 <cis cis'>) | <d d'>2 \vt d'4 | \ov <g,, g'>2. | \rh \vf c''4(\lh a d) |
  <g,,, g'>2. | g'' | q2.~ | q | g8(b d b g d) | b(d g d b d) | g,4 <g, g'> q | q2 r4 |
}

pianoLHtwoKyrie = \relative {
  \globalKyrie \vt
  s2.*2 | b,2. | b'4 r8 b4 8 |
  s2.*5 |
  s2.*5 | % 4a
  s2.*3 | d,,2. | d'4 r8 4 8 |
  s2.*5 |
  s2. | d2 4 | e2 4 | s2. | d4-. e-. s | % 5a
  s2.*16 |
  s2.*14 | d4 r r | g(fis e) | % 6
  d4 r r | g(fis e | d) r r | g,(fis ees) | d2.~ | d | % 7a
  s2.*2 | d2. | d'4 r8 4 8 | s2.*2 |
  s2.*6 |
  s2.*5 | d,2. | d'4 r8 4 8 | s2.*4 | \vo <g,, g'>2. | s2.*8 | % 8
}
