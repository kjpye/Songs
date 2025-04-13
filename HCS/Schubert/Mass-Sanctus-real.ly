globalSanctus = {
  \key d \major
  \time 4/4
}

TempoTrackSanctus = {
  \tempo "Allegro moderato" 4=116
}

RehearsalTrackSanctus = {
  \set Score.currentBarNumber = #1
  \textMark \markup\box "26a" s1*3
  \textMark \markup\box "26b" s1*3
  \textMark \markup\box "26c" s1*3
  \mark \markup\circle\bold A
  \textMark \markup\box "27a" s8 s2*5
  \textMark \markup\box "27b" s2*5
  \textMark \markup\box "27c" s2*5
  \mark \markup\circle\bold B
  \textMark \markup\box "28a" s2*4
  \textMark \markup\box "28b" s2*4
  \textMark \markup\box "28c" s2*5
}

dynamicsSopSoloSanctus = {
  \override DynamicTextSpanner.style = #'none
  s1*9 | s8 s2*28 |
}

sopranoSoloSanctus = \relative {
  \globalSanctus
  R1*9 | r8 R2*28 |
}

wordsSopSoloSanctus = \lyricmode {
}

wordsSopSoloSanctusMidi = \lyricmode {
}

dynamicsAltoSoloSanctus = {
  \override DynamicTextSpanner.style = #'none
  s1*9 | s8 s2*28 |
}

altoSoloSanctus = \relative {
  \globalSanctus
  R1*9 | r8 R2*28 |
}

wordsAltoSoloSanctus = \lyricmode {
}

wordsAltoSoloSanctusMidi = \lyricmode {
}

dynamicsTenorSoloSanctus = {
  \override DynamicTextSpanner.style = #'none
  s1*9 | s8 s2*28 |
}

tenorSoloSanctus = \relative {
  \globalSanctus
  R1*9 | r8 R2*28 |
}

wordsTenorSoloSanctus = \lyricmode {
}

wordsTenorSoloSanctusMidi = \lyricmode {
}

dynamicsBassSoloSanctus = {
  \override DynamicTextSpanner.style = #'none
  s1*9 | s8 s2*28 |
}

bassSoloSanctus = \relative {
  \globalSanctus
  R1*9 | r8 R2*28 |
}

wordsBassSoloSanctus = \lyricmode {
}

wordsBassSoloSanctusMidi = \lyricmode {
}

dynamicsSopSanctus = {
  \override DynamicTextSpanner.style = #'none
  s1 | s\ff | s1*7 |
  s8\f | s2*15 | % 27
  s2*3 | s2\ff | s2*9 |
}

sopranoSanctus = \relative {
  \globalSanctus
  R1^\markup{\huge\bold Sanctus} | fis''2 4 r | gis2 4 r |
  fis4 4 8. d16 4 | e4. 8 8. cis16 a4 | d4 8 8 4 8 8 |
  ees4 4 4 8 8 | d4 4 8 16. 32 8 16 16 | 2 cis4 r\fermata \section \time 2/4 |
  \partial 8 \grace s8 a8 | d8. 16 cis8 a | g'4 fis8 e | d cis16(d) e8 d | cis16(b cis d) e8 8 | a8. 16 gis8 fis | % 27a
  e16(fis e d) cis8 8 | d8. 16 a(b) cis(d) | e4 d8 e | fis d b e | cis a r4 |
  R2 | r4 r8 a | fis'4 g8 8 | cis,8. 16 d8 e16(fis) | g8(fis e d) |
  cis8 r r a | d8. 16 cis8 a | g'4 fis8 d | 8. 16 8 8 | % 28a
  d4 8 8 | c4 b8 d | ees8. 16 8 8 | e4 8 8 |
  e8. 16 8 a | fis2 | d4 r | R2 | R\fermata |
}

wordsSopSanctus = \lyricmode {
  San -- ctus, San -- ctus,
  San -- ctus Do -- mi -- nus De -- us Sa -- ba -- oth!
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a tu -- a,
  ple -- ni sunt cœ -- li et ter -- ra.
                                % 27a
  O -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis.
                                % 27c
  O -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis.
}

wordsSopSanctusMidi = \lyricmode {
  "\nSan" "ctus, " San "ctus, "
  "\nSan" "ctus " Do mi "nus " De "us " Sa ba "oth! "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " tu "a, "
  "\nple" "ni " "sunt " cœ "li " "et " ter "ra. "
                                % 27a
  "\nO" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis. "
                                % 27c
  "\nO" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis. "
}

dynamicsAltoSanctus = {
  \override DynamicTextSpanner.style = #'none
  s1 | s\ff | s1*7 |
  s8 | s2*8 | s4. s8\f | s2*6 | % 27
  s2*3 | s2\ff | s2*9 |
}

altoSanctus = \relative {
  \globalSanctus
  R1 | a'2 g4 r | d'2 cis4 r |
  d4 a fis8. 16 4 | b4. 8 a8. 16 4 | 4 8 8 bes4 8 8 |
  bes4 4 a4 8 8 | bes4 4 8 16. 32 8 16 16 | gis2 a4 r\fermata \section \time 2/4 |
  \partial 8 \grace s8 r8 | R2*5 | % 27a
  R2*3 | r4 r8 e8 | a8. 16 gis8 e |
  cis'4 b8 a | gis cis16(gis) a8 g | fis16(a cis d) e8 cis | a16(g fis e) d8 d'16 16 | b2 |
  a8 r r a | 8. 16 8 8 | 4 8 d, | g8. 16 fis8 d | % 28a
  c'4 b8 d, | a'4 g8 8 | bes8. 16 8 8 | b4 8 8 |
  a8. 16 8 8 | 2 | fis4 r | R2 | R\fermata |
}

wordsAltoSanctus = \lyricmode {
  San -- ctus, San -- ctus,
  San -- ctus Do -- mi -- nus De -- us Sa -- ba -- oth!
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a tu -- a,
  ple -- ni sunt cœ -- li et ter -- ra.
                                % 27a
                                % 27c
  O -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis.
}

wordsAltoSanctusMidi = \lyricmode {
  "\nSan" "ctus, " San "ctus, "
  "\nSan" "ctus " Do mi "nus " De "us " Sa ba "oth! "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " tu "a, "
  "\nple" "ni " "sunt " cœ "li " "et " ter "ra. "
                                % 27a
                                % 27c
  "\nO" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis. "
}

dynamicsTenorSanctus = {
  \override DynamicTextSpanner.style = #'none
  s1 | s\ff | s1*7 |
  s8 | s2*2 | s4. s8\f | s2*12 | % 27
  s2*3 | s2\ff | s2*9 |
}

tenorSanctus = \relative {
  \globalSanctus
  R1 | d'2 4 r | 2 e4 r |
  d4 4 8. 16 4 | 4. 8 cis8. e16 4 | fis4 8 8 f4 8 8 |
  g4 4 c,4 8 8 | d4 f4 8 16. 32 8 16 16 | f4(d) e r\fermata \section \time 2/4 |
  \partial 8 \grace s8 r8 | R2*2 | r4 r8 e, | a8. 16 gis8 e | cis'4 b8 a | % 27a
  gis8 fis16(gis) a8 g | fis16(e fis gis) a8 8 | cis16(b) a(cis) d8 cis | b16(cis b a) gis(a) b(gis) | a4 e16(fis) gis(e) |
  e'8. 16 b(cis) b(dis) | e8(cis) a a | 4 8 8 | 8. 16 8 8 | g(a b e) |
  e8 r r a, | fis'8. 16 g8 e | cis4 d8 8 | 8. 16 8 8 | % 28a
  d4 8 8 | 4 8 g | ees8. 16 8 8 | d4 8 8 |
  d8. 16 cis8 8 | d2 | d,4 r | R2 | R\fermata |
}

wordsTenorSanctus = \lyricmode {
  San -- ctus, San -- ctus,
  San -- ctus Do -- mi -- nus De -- us Sa -- ba -- oth!
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a tu -- a,
  ple -- ni sunt cœ -- li et ter -- ra.
                                % 27a
  O -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
                                % 27c
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis.
}

wordsTenorSanctusMidi = \lyricmode {
  "\nSan" "ctus, " San "ctus, "
  "\nSan" "ctus " Do mi "nus " De "us " Sa ba "oth! "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " tu "a, "
  "\nple" "ni " "sunt " cœ "li " "et " ter "ra. "
                                % 27a
  "\nO" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
                                % 27c
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis. "
}

dynamicsBassSanctus = {
  \override DynamicTextSpanner.style = #'none
  s1 | s\ff | s1*7 |
  s8 | s2*5 | s4. s8\f | s2*9 | % 27
  s2*3 | s2\ff | s2*9 |
}

bassSanctus = \relative {
  \globalSanctus
  R1 | c'2 b4 r | bes2 a4 r |
  d,4 4 b'8. 16 4 | ais4. 8 b8. 16 4 | d,4 d'8 8 bes4 8 8 |
  bes4 4 4 8 8 | 4 4 8 16. 32 8 16 16 | 2 a4 r\fermata \section \time 2/4 |
  \partial 8 \grace s8 r8 | R2*5 | % 27a
  r4 r8 a, | d8. 16 cis8 a | g'4 fis8 e | d cis16(d) e8 d | cis16(b cis d) e8 8 |
  a8. 16 gis8 fis | e16(fis e d) cis(d) e(cis) | d8. 16 cis8 a | g'4 fis8 d16 d | e8(fis g gis) |
  a8 r r4 | R2 | r4 r8 d, | b'8. 16 c8 a | % 28a
  fis4 g8 b | fis4 g8 g | 8. 16 8 8 | gis4 8 8 |
  a8. 16 8 8 | d2 | d,4 r | R2 | R\fermata |
  \bar "|." \break \pageBreak
}

wordsBassSanctus = \lyricmode {
  San -- ctus, San -- ctus,
  San -- ctus Do -- mi -- nus De -- us Sa -- ba -- oth!
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a tu -- a,
  ple -- ni sunt cœ -- li et ter -- ra.
                                % 27a
  O -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis,
  in ex -- cel -- sis.
                                % 27c
  o -- san -- na in ex -- cel -- sis,
  o -- san -- na, o -- san -- na in ex -- cel -- sis,
  o -- san -- na in ex -- cel -- sis.
}

wordsBassSanctusMidi = \lyricmode {
  "\nSan" "ctus, " San "ctus, "
  "\nSan" "ctus " Do mi "nus " De "us " Sa ba "oth! "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " tu "a, "
  "\nple" "ni " "sunt " cœ "li " "et " ter "ra. "
                                % 27a
  "\nO" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis, "
  "\nin " ex cel "sis. "
                                % 27c
  "\no" san "na " "in " ex cel "sis, "
  "\no" san "na, " o san "na " "in " ex cel "sis, "
  "\no" san "na " "in " ex cel "sis. "
}

pianoRHoneSanctus = \relative {
  \globalSanctus \ov
  d'4~16. 32 fis16. a32 d8 r <d fis a d> r |
  c,2\trill \grace {b16 c} b16. d'32 b16. d32 <g, g'>8 r |
  \grace s8 bes,2\trill \grace {a16 b} a16. e''32 cis16. e32 <a, a'>8 r |
  <d, fis a d>16. a''32 fis16. a32 <d, fis d'>8 d, <d fis b d>16. b''32 fis16. b32 <d, fis d'>8 d, | % 26b
  <e b' d e>16. b''32 e,16. b'32 <e, d' e>8 e, <cis e a>16. e'32 cis16. e32 <a, a'>16-. q-. <b b'>-. <cis cis'>-. |
  <d d'>16 \repeat unfold 7 <d fis a d> \repeat unfold 8 <d fis bes d> |
  \repeat tremolo 8 <ees g bes ees>16 \repeat tremolo 8 <f a c ees f> | % 26c
  <f bes d f>16. <d f bes d>32 16. <bes d f bes>32 16. <f bes d f>32 16. <d f bes d>32 16. <bes d f bes>32 16. <bes d f>32 16. <bes d>32 16. bes32 |
  s8 r <d' gis d'>8-. q-. <cis e a cis>8 r a,4\trill\fermata \section \time 2/4 |
  \partial 8 \grace {gis16 a} a'8 | d4 cis8-. a-. | g'4 fis8 e | % 27a
  d8 cis16 d e8 d | cis16 b cis d e8 8 | a16 gis a b gis8 fis |
  e16 fis e d cis d e cis | d4 a16-. b-. cis-. d-. | e4 d16 fis a e | % 27b
  fis8 d b <e, e'> | \vo cis'8 r \ov gis8 e |
  <e a'>4 b'8 a | \vo gis8 fis16 gis \ov <a, a'>8 <a g' a> | % 27c
  \vo fis''4 \ov <e g>8 <cis b'> | \vo cis4 d8 e16 fis |
  g16 a fis g e fis d e |
  \vt <a, cis>16. <a a'>32 \repeat unfold 10 {16. 32} % 28a
  \repeat unfold 13 {<d d'>16. 32} \ov |
  \repeat unfold 4 {<ees bes' ees>16. 32} | % 28b++
  \repeat unfold 4 {<e b' d e>16. 32} |
  \repeat unfold 4 {<e a d e>16. 32} | % 28c
  <fis a d fis>16. <d fis a d>32 16. <a d fis a>32 16. <fis a d fis>32 16. <d fis a d>32 |
  <fis a d fis>16. <fis a d>32 16. <d fis a>32 16. <a d fis>32 16. <fis a d>32 |
  q8 r <d'' fis a d> r |
  q4 r\fermata |
}

pianoRHtwoSanctus = \relative {
  \globalSanctus \vt
  s1*9 \section \time 2/4 |
  \partial 8 \grace s8 s8 | s2*9 | a'4 s | s2 | e8 cis s4 | fis16 a cis d s4 | a16 g fis e d8 d' | b8 8 8 8 |
  s2 | \vo d4 cis8 s | g'4 fis8 s | g4 fis8 s | % 28a
  cis4 b8 s | cis4 b8 g | s2*2 |
  s2*5 |
}

dynamicsPianoSanctus = {
  \override DynamicTextSpanner.style = #'none
  s1\ff | s\fz | s\fz | s1*6 |
  s8\f | s2\fz | s\fz | s2*13 | % 27
  s2*3 | s2\ff | s2*9 |
}

pianoLHoneSanctus = \relative {
  \globalSanctus \ov
  <d, d'>4~16. d'32 fis16. a32 d8 r <d,, d'> r |
  \grace c8 c'2\trill \grace {b16 c} b16. d32 b16. d32 g8 r |
  \grace b,,8 bes'2\trill \grace {a16 b} a16. e'32 cis16. e32 a8 r |
  <d,, d'>8 r d'16. a'32 fis16. a32 <b, b'>8 e b16. fis'32 d16. fis32 | % 26b
  <fis, fis'>8 r fis16. b32 e16. g32 <a, a'>8 r q16-. <g g'>-. <fis fis'>-. <e e'>-. |
  <d d'>16 \repeat unfold 7 <d' d'> \repeat unfold 24 <bes bes'> |
  q16. <bes, bes'>32 16. 32 16. 32 16. 32 s8 s16. \crossStaff {\vo f''32 16. 32 16. <d f>32} |
  <d f gis>8 \ov r8 <bes bes'>8-. 8-. <a a'> r \slashedGrace a,8 a'4\trill\fermata \section \time 2/4 |
  \partial 8 \grace {gis16 a} r8 | R2*2 | r4 r8 e' | a4 gis8 e | cis'4 b8 a | % 27a
  gis8 fis16 gis a8 <a, g'> | \vo fis'16 e fis gis a8 8 | % 27b
  cis16 b a cis d8 cis | b16 cis b a gis a b gis | a4 e16 fis gis e |
  \ov a4 \vo b16 cis b dis | \ov e,16 fis e d cis d e cis | % 27c
  <d a'>4 <cis a'>8 <a a'> | <g' a>4 <fis a>8 <d a'> |
  <e g>8 <fis a> <g b> <gis e'> |
  <a e'>8 r r a | fis'4 g8 e | cis4 d8 <d,, d'> | <b' b'>4 <c c'>8 <a a'> | % 28a
  <fis fis'>4 <g g'>8 <b b'> | <fis fis'>4 <g g'>8 8 | % 28b
  \repeat unfold 4 {q16. 32} |
  \repeat unfold 4 {<gis gis'>16. 32} |
  \repeat unfold 4 {<a a'>16. 32} | % 28c
  <d, d'>8 <d' d'>8 8 8 |
  q16. 32 16. <a a'>32 16. <fis fis'>32 16. <d d'>32 |
  q8 r <d' d'> r |
  <d, d'>4 r\fermata |
}

pianoLHtwoSanctus = \relative {
  \globalSanctus \vt
  s1*7 | s2 <bes,, bes'>16. 32 16. 32 16. 32 16. 32 | q8 s2.. \section \time 2/4 |
  \partial 8 \grace s8 s8 | s2*5 | % 27a
  s2 | d'4 cis8 a | g'4 fis8 e | d cis16 d e8 d | cis16 b cis d e4 |
  s4 gis8 fis | s2*4 |
  s2*13 |
}
