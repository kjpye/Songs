globalGloria = {
  \key d \major
  \time 2/2
}

TempoTrackGloria = {
  \tempo "Allegro maestoso" 4=120
  s1*86
}

RehearsalTrackGloria = {
  \textMark \markup\box "9a" s1*4
  \textMark \markup\box "9b" s1*5
  \textMark \markup\box "9c" s1*4
  \textMark \markup\box "10a" s1*4
  \textMark \markup\box "10b" s1*4
  \textMark \markup\box "10c" s1*4
  \textMark \markup\box "11a" s1*4
  \textMark \markup\box "11b" s1*4
  \textMark \markup\box "11c" s1*4
  \textMark \markup\box "12a" s1*5
  \textMark \markup\box "12b" s1*4
  \textMark \markup\box "12c" s1*4
  \textMark \markup\box "13a" s1*4
  \textMark \markup\box "13b" s1*4
  \textMark \markup\box "13c" s1*4
  \textMark \markup\box "14a" s1*4
  \textMark \markup\box "14b" s1*3
  \textMark \markup\box "14c" s1*4
  \textMark \markup\box "15a" s1*4
  \textMark \markup\box "15b" s1*4
  \textMark \markup\box "15c" s1*5
}

dynamicsSopSoloGloria = {
  \override DynamicTextSpanner.style = #'none
  s1*39 | s1\p | s1*45 |
}

sopranoSoloGloria = \relative {
  R1*39 | c''2^\markup Solo b4 a | \appoggiatura a8 gis4 4 r2 | cis2(b4) a | % 12a
  \appoggiatura a8 gis4 4 r2 | R1*2 | d'2 cis4 b |
  \appoggiatura b8 ais4 4 r2 | d2(cis4) b | \appoggiatura b8 ais4 4 r2 | R1 |
  R1*2 | d2 4 4 | g2 d4 r | % 13a
  d4. 8 4 4 | g2 fis | e(cis) | b2 r |
  R1*4 |
  R1*11 | % 14
  R1*13 |
}

wordsSopSoloGloria = \lyricmode {
  Do -- mi -- ne De -- us,
  a -- gnus De -- i,
  Do -- mi -- ne De -- us,
  a -- gnus De -- i,
                                % 13a
  Fi -- li -- us Pa -- tris,
  mi -- se -- re -- re no -- bis, no -- bis,
}

wordsSopSoloGloriaMidi = \lyricmode {
  "\nDo" mi "ne " De "us, "
  "\na" "gnus " De "i, "
  "\nDo" mi "ne " De "us, "
  "\na" "gnus " De "i, "
                                % 13a
  "\nFi" li "us " Pa "tris, "
  "\nmi" se re "re " no "bis, " no "bis, "
}

dynamicsAltoSoloGloria = {
  \override DynamicTextSpanner.style = #'none
  s1*86
}

altoSoloGloria = \relative {
  R1*86
}

wordsAltoSoloGloria = \lyricmode {
}

wordsAltoSoloGloriaMidi = \lyricmode {
}

dynamicsTenorSoloGloria = {
  \override DynamicTextSpanner.style = #'none
  s1*86
}

tenorSoloGloria = \relative {
  R1*86
}

wordsTenorSoloGloria = \lyricmode {
}

wordsTenorSoloGloriaMidi = \lyricmode {
}

dynamicsBassSoloGloria = {
  \override DynamicTextSpanner.style = #'none
  s1*40 | s1\p | s1*45 |
}

bassSoloGloria = \relative {
  \globalGloria
  R1*40 | e2^\markup{\halign #RIGHT Solo} fis4 gis | a a r a | % 12a
  e4 8 8 fis4 gis | a4 4 r2 | R1*2 |
  fis2 gis4 ais | b b r fis | 4 8 8 gis4 ais | b4 4 r2 |
  R1 | b2 a4 g | \appoggiatura g8 fis4 4 r2 | b2(a4) g | % 13a
  \appoggiatura g8 fis4 4 r2 | R1*3 |
  R1*4 |
  R1*11 | % 14
  R1*13 |
}

wordsBassSoloGloria = \lyricmode {
  Fi -- li -- us Pa -- tris,
  qui tol -- lis pec -- ca -- ta mun -- di,
  Fi -- li -- us Pa -- tris,
  qui tol -- lis pec -- ca -- ta mun -- di,
                                % 13a
  Do -- mi -- ne De -- us,
  a -- gnus De -- i,
}

wordsBassSoloGloriaMidi = \lyricmode {
  "\nFi" li "us " Pa "tris, "
  "\nqui " tol "lis " pec ca "ta " mun "di, "
  "\nFi" li "us " Pa "tris, "
  "\nqui " tol "lis " pec ca "ta " mun "di, "
                                % 13a
  "\nDo" mi "ne " De "us, "
  "\na" "gnus " De "i, "
}

dynamicsSopGloria = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s1\f | s1*3 | s1\ff | s | s\p | s1*4 |
  s1*5 | s2. s4\p | s1*6 | % 10
  s1*2 | s1\ff | s1*9 |
  s1*6 | s1\p | s1*6 | % 12
  s1*12 |
  s1 | s\f | s1*9 | % 14
  s1*13 |
}

sopranoGloria = \relative {
  \globalGloria
  R1*2 | cis''4.^\markup{\halign #RIGHT Tutti} 8 d2 | e4 dis e fis | % 9a
  g1 | fis2 r | g4. 8 4 4 | 2. 4 | e4. 8 fis2 |
  c4. 8 d4 fis | 1 | e2 r4 a, | fis'2. 4 |
  e2. 8 8 | g2 4 4 | fis2. 8 8 | g2. 4 | % 10a
  fis8. a16 8 8 fis4 d | a2 r4 e'8 8 | 2. 4 | 2. r4 |
  R1*2 | b4 8 8 cis4 8 8 | d2 a4 8 8 |
  g4 g fis4 8 8 | e4 e r2 | cis'2 4 4 | d2 2 | % 11a
  d2. 4 | 2 2 | dis2. 4 | e2 4 4 |
  dis2. 4 | e2 4 8 8 | 4. 8 4 4 | 4 8 8 4 4 |
  e1 | 4 r r2\fermata | R1*3 | % 12a
  R1 | cis4. 8 4 4 | d2(cis) | b4 r r2 |
  R1*3 | b4. 8 d4 4 |
  c2(a) | g4 r r2 | R1*2 | % 13a
  R1 | b4. 8 d4 4 | cis2(ais) | b2 r |
  R1*4 |
  R1 | cis4. 8 d4 4 | e2 fis | g1 | % 14a
  fis2 d4. 8 | cis4 4 d4. 8 | cis4 4 g'4. 8 |
  fis4 4 g4 8 8 | fis8. 16 4 e4. 8 | g4 a g a | g4. 8 2 |
  r4 g g g | f2 2 | r4 4 4 8 8 | e4. 8 2 | % 15a
  r4 e~e e | 1~ | 4 4 a2 | d,4 4 cis b |
  a8. 16 b8 8 a4 g8 8 | fis4 g fis e | d1 | 4 r r2 | R1 |
}

wordsSopGloria = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o!
  et in ter -- ra pax hu -- mi -- nu -- bus
  bo -- næ vo -- lun -- ta -- tis.
  Lau -- da -- mus te be -- ne -- di -- ci -- mus te,
  ad -- o -- ra -- mus te, glo -- ri -- fi -- ca -- mus te,
  ad -- o -- ra -- mus te!
                                % 10c
  Gra -- ti -- as a -- gi -- mus ti -- bi prop -- ter
  ma -- gnam glo -- ri -- am tu -- am,
  Do -- mi -- ne De -- us,
  Rex cœ -- le -- stis,
  De -- us, Pa -- ter om -- ni -- po -- tens,
  Do -- mi -- ne Fi -- li u -- ni -- ge -- ni -- te
  Je -- su Chri -- ste!
                                % 12b
  mi -- se -- re -- re no -- bis.
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
                                % 14a
  Quo -- ni -- am tu so -- lus __ san -- ctus,
  Quo -- ni -- am tu so -- lus san -- ctus,
  Quo -- ni -- am tu so -- lus al -- tis -- si -- mus,
  Quo -- ni -- am tu so -- lus Do -- mi -- nus,
                                % 15a
  tu so -- lus san -- ctus,
  tu so -- lus al -- tis -- si -- mus,
  Je -- su, Je -- su Chri -- ste,
  cum san -- cto spi -- ri -- tu
  in glo -- ri -- a De -- i Pa -- tris.
  A -- men.
}

wordsSopGloriaMidi = \lyricmode {
  "\nGlo" ri "a " "in " ex cel "sis " De "o! "
  "\net " "in " ter "ra " "pax " hu mi nu "bus "
  "\nbo" "næ " vo lun ta "tis. "
  "\nLau" da "mus " "te " be ne di ci "mus " "te, "
  "\nad" o ra "mus " "te, " glo ri fi ca "mus " "te, "
  "\nad" o ra "mus " "te! "
                                % 10c
  "\nGra" ti "as " a gi "mus " ti "bi " prop "ter "
  "\nma" "gnam " glo ri "am " tu "am, "
  "\nDo" mi "ne " De "us, "
  "\nRex " cœ le "stis, "
  "\nDe" "us, " Pa "ter " om ni po "tens, "
  "\nDo" mi "ne " Fi "li " u ni ge ni "te "
  "\nJe" "su " Chri "ste! "
                                % 12b
  "\nmi" se re "re " no "bis. "
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re " no "bis, "
                                % 14a
  "\nQuo" ni "am " "tu " so "lus "  san "ctus, "
  "\nQuo" ni "am " "tu " so "lus " san "ctus, "
  "\nQuo" ni "am " "tu " so "lus " al tis si "mus, "
  "\nQuo" ni "am " "tu " so "lus " Do mi "nus, "
                                % 15a
  "\ntu " so "lus " san "ctus, "
  "\ntu " so "lus " al tis si "mus, "
  "\nJe" "su, " Je "su " Chri "ste, "
  "\ncum " san "cto " spi ri "tu "
  "\nin " glo ri "a " De "i " Pa "tris. "
  "\nA" "men. "
}

dynamicsAltoGloria = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s1\f | s1*3 | s1\ff | s | s\p | s1*4 |
  s1*5 | s2. s4\p | s1*6 | % 10
  s1*2 | s1\ff | s1*9 |
  s1*3 | s1\p | s1*5 | s1\p | s1*3 | % 12
  s1*12 |
  s1 | s\f | s1*9 | % 14
  s1*13 |
}

altoGloria = \relative {
  \globalGloria
  R1*2 | a'4. 8 2 | 4 4 4 4 |
  cis1 | d2 r | b4. 8 4 4 | 2. 4 | a4. 8 2 |
  a4. 8 4 4 | 1 | 2 r4 4 | 2. 4 |
  a2. 8 8 | b2 4 4 | 2. 8 8 | 2. 4 | % 10a
  a8. 16 8 8 fis4 d | a'2 r4 e8 8 | 2. 4 | 2. r4 |
  R1*2 | g4 8 8 4 8 8 | fis2 f4 8 8 |
  e4 e d4 8 8 | cis4 4 r2 | fis2 4 4 | 2 2 | % 11a
  gis2. 4 | 2 2 | a2. 4 | gis 2 4 4 |
  a2. 4 | gis2 4 8 8 | 4. 8 4 4 | 4 8 8 4 4 |
  gis1 | 4 r r2\fermata | R1 | e4. 8 4 4 | 4 4 r2 | % 12a
  e4. 8 4 4 | 4. 8 eis4 4 | fis2.(e4) | d r r2 |
  fis4. 8 4 4 | 4 4 r2 | 4. 8 4 4 | 4. 8 4 4 |
  e2(fis) | g4 r r2 | d2 4 4 | 4. 8 4 4 | % 13a
  d2. 4 | 4 4 4 4 | g2(fis) | 2 r |
  R1*4 |
  R1 | a4. 8 4 4 | 2 2 | cis1 | % 14a
  d2 gis,4. 8 | a4 4 gis4. 8 | a4 4 4. 8 |
  a4 4 4 8 8 | 8. 16 4 c4. 8 | b4 c b c | b4. 8 2 |
  r4 b b b | 2 2 | r4 4 4 8 8 | 4. 8 2 | % 15a
  r4 b~b b | a1~ | 4 4 2 | fis4 d d d |
  d8. 16 8 8 4 8 8 | 4 4 4 4 | 1 | 4 r r2 | R1 |
}

wordsAltoGloria = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o!
  et in ter -- ra pax hu -- mi -- nu -- bus
  bo -- næ vo -- lun -- ta -- tis.
  Lau -- da -- mus te be -- ne -- di -- ci -- mus te,
  ad -- o -- ra -- mus te, glo -- ri -- fi -- ca -- mus te,
  ad -- o -- ra -- mus te!
                                % 10c
  Gra -- ti -- as a -- gi -- mus ti -- bi prop -- ter
  ma -- gnam glo -- ri -- am tu -- am,
  Do -- mi -- ne De -- us,
  Rex cœ -- le -- stis,
  De -- us, Pa -- ter om -- ni -- po -- tens,
  Do -- mi -- ne Fi -- li u -- ni -- ge -- ni -- te
  Je -- su Chri -- ste!
                                % 12b
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
                                %13a
  sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram,
  mi -- se -- re -- re,
                                % 14a
  Quo -- ni -- am tu so -- lus __ san -- ctus,
  Quo -- ni -- am tu so -- lus san -- ctus,
  Quo -- ni -- am tu so -- lus al -- tis -- si -- mus,
  Quo -- ni -- am tu so -- lus Do -- mi -- nus,
                                % 15a
  tu so -- lus san -- ctus,
  tu so -- lus al -- tis -- si -- mus,
  Je -- su, Je -- su Chri -- ste,
  cum san -- cto spi -- ri -- tu
  in glo -- ri -- a De -- i Pa -- tris.
  A -- men.
}

wordsAltoGloriaMidi = \lyricmode {
  "\nGlo" ri "a " "in " ex cel "sis " De "o! "
  "\net " "in " ter "ra " "pax " hu mi nu "bus "
  "\nbo" "næ " vo lun ta "tis. "
  "\nLau" da "mus " "te " be ne di ci "mus " "te, "
  "\nad" o ra "mus " "te, " glo ri fi ca "mus " "te, "
  "\nad" o ra "mus " "te! "
                                % 10c
  "\nGra" ti "as " a gi "mus " ti "bi " prop "ter "
  "\nma" "gnam " glo ri "am " tu "am, "
  "\nDo" mi "ne " De "us, "
  "\nRex " cœ le "stis, "
  "\nDe" "us, " Pa "ter " om ni po "tens, "
  "\nDo" mi "ne " Fi "li " u ni ge ni "te "
  "\nJe" "su " Chri "ste! "
                                % 12b
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re, " mi se re "re " no "bis, "
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re, " mi se re "re " no "bis, "
                                %13a
  "\nsus" ci "pe " de pre ca ti o "nem " no "stram, "
  "\nmi" se re "re, "
                                % 14a
  "\nQuo" ni "am " "tu " so "lus "  san "ctus, "
  "\nQuo" ni "am " "tu " so "lus " san "ctus, "
  "\nQuo" ni "am " "tu " so "lus " al tis si "mus, "
  "\nQuo" ni "am " "tu " so "lus " Do mi "nus, "
                                % 15a
  "\ntu " so "lus " san "ctus, "
  "\ntu " so "lus " al tis si "mus, "
  "\nJe" "su, " Je "su " Chri "ste, "
  "\ncum " san "cto " spi ri "tu "
  "\nin " glo ri "a " De "i " Pa "tris. "
  "\nA" "men. "
}

dynamicsTenorGloria = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s1\f | s1*3 | s1\ff | s | s\p | s1*4 |
  s1*7 | s2. s4\p | s1*4 | % 10
  s1*2 | s1\ff | s1*9 |
  s1*3 | s1\p | s1*5 | s1\p | s1*3 | % 12
  s1*12 |
  s1 | s\f | s1*9 | % 14
  s1*13 |
}

tenorGloria = \relative {
  \globalGloria
  R1*2 | e'4. 8 d2 | cis4 bis cis dis |
  e1 | fis2 r | d4. 8 4 4 | 2. 4 | cis4. 8 d2 |
  g4. 8 fis4 d | 1 cis2 r4 a | d2. 4 |
  cis2. 8 8 | e2 4 4 | dis2. 8 8 | d2. 4 | % 10a
  d8. a16 8 8 fis'4 d | a2 r | R1 | r2 r4 e8 8 |
  e2. 4 | 2 r | e'4 8 8 4 8 8 | d2 4 a8 8 |
  cis4 4 d4 8 8 | a4 4 r2 | ais2 4 4 | b2 2 | % 11a
  b2. 4 | 2 2 | c2. 4 | b2 4 4 |
  c2. 4 | b2 4 8 8 | 4. 8 4 4 | 4 8 8 4 4 |
  b1 | 4 r r2\fermata | R1 | d4. 8 4 4 | cis4 4 r2 | % 12a
  d4. 8 4 4 | cis4. 8 b4 4 | 2(ais) | b4 r r2 |
  e4. 8 4 4 | d d r2 | e4. 8 4 4 | d4. 8 4 4 |
  a2(c) | b4 r r2 | c2 4 4 | b4. 8 c4 d | % 13a
  c2. 4 | b4 4 4 4 | cis2(e) | d2 r |
  R1*4 |
  R1 | e4. 8 d4 4 | c2 d4(dis) | e1 | % 14a
  d2 e4. 8 | 4 4 4. 8 | 4 4 cis4. 8 |
  d4 d c4 8 8 | d8. 16 4 4. 8 | 4 4 4 4 | 4. 8 2 |
  r4 d d d | 2 2 | r4 d4 4 8 8 | 4. 8 2 | % 15a
  r4 d~d d | 1( | cis4) 4 2 | d4 b a g |
  fis8. 16 g8 8 fis4 e8 8 | d4 b' a g | fis1 | d4 r r2 | R1 |
}

wordsTenorGloria = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o!
  et in ter -- ra pax hu -- mi -- nu -- bus
  bo -- næ vo -- lun -- ta -- tis.
  Lau -- da -- mus te be -- ne -- di -- ci -- mus te,
  ad -- o -- ra -- mus te, glo -- ri -- fi -- ca -- mus te,
  ad -- o -- ra -- mus te!
                                % 10c
  Gra -- ti -- as a -- gi -- mus ti -- bi prop -- ter
  ma -- gnam glo -- ri -- am tu -- am,
  Do -- mi -- ne De -- us,
  Rex cœ -- le -- stis,
  De -- us, Pa -- ter om -- ni -- po -- tens,
  Do -- mi -- ne Fi -- li u -- ni -- ge -- ni -- te
  Je -- su Chri -- ste!
                                % 12b
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
                                %13a
  sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram,
  mi -- se -- re -- re,
                                % 14a
  Quo -- ni -- am tu so -- lus __ san -- ctus,
  Quo -- ni -- am tu so -- lus san -- ctus,
  Quo -- ni -- am tu so -- lus al -- tis -- si -- mus,
  Quo -- ni -- am tu so -- lus Do -- mi -- nus,
                                % 15a
  tu so -- lus san -- ctus,
  tu so -- lus al -- tis -- si -- mus,
  Je -- su, Je -- su Chri -- ste,
  cum san -- cto spi -- ri -- tu
  in glo -- ri -- a De -- i Pa -- tris.
  A -- men.
}

wordsTenorGloriaMidi = \lyricmode {
  "\nGlo" ri "a " "in " ex cel "sis " De "o! "
  "\net " "in " ter "ra " "pax " hu mi nu "bus "
  "\nbo" "næ " vo lun ta "tis. "
  "\nLau" da "mus " "te " be ne di ci "mus " "te, "
  "\nad" o ra "mus " "te, " glo ri fi ca "mus " "te, "
  "\nad" o ra "mus " "te! "
                                % 10c
  "\nGra" ti "as " a gi "mus " ti "bi " prop "ter "
  "\nma" "gnam " glo ri "am " tu "am, "
  "\nDo" mi "ne " De "us, "
  "\nRex " cœ le "stis, "
  "\nDe" "us, " Pa "ter " om ni po "tens, "
  "\nDo" mi "ne " Fi "li " u ni ge ni "te "
  "\nJe" "su " Chri "ste! "
                                % 12b
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re, " mi se re "re " no "bis, "
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re, " mi se re "re " no "bis, "
                                %13a
  "\nsus" ci "pe " de pre ca ti o "nem " no "stram, "
  "\nmi" se re "re, "
                                % 14a
  "\nQuo" ni "am " "tu " so "lus "  san "ctus, "
  "\nQuo" ni "am " "tu " so "lus " san "ctus, "
  "\nQuo" ni "am " "tu " so "lus " al tis si "mus, "
  "\nQuo" ni "am " "tu " so "lus " Do mi "nus, "
                                % 15a
  "\ntu " so "lus " san "ctus, "
  "\ntu " so "lus " al tis si "mus, "
  "\nJe" "su, " Je "su " Chri "ste, "
  "\ncum " san "cto " spi ri "tu "
  "\nin " glo ri "a " De "i " Pa "tris. "
  "\nA" "men. "
}

dynamicsBassGloria = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s1\f | s1*3 | s1\ff | s | s\p | s1*4 |
  s1*7 | s2. s4\p | s1*4 | % 10
  s1*2 | s1\ff | s1*9 |
  s1*6 | s1\p | s1*6 | % 12
  s1*12 |
  s1 | s\f | s1*9 | % 14
  s1*13 |
}

bassGloria = \relative {
  \globalGloria
  R1*2 | g4. 8 fis2 | a4 4 4 4 | % 9a
  a1 | d2 r | g,4. 8 4 4 | 2. 4 | a4. 8 2 |
  a4. 8 4 4 | 1 | 2 r4 4 | d,2. 4 |
  a'2. 8 8 | e2 4 4 | b'2. 8 8 | g2. 4 | % 10a
  d'8. a16 8 8 fis4 d | a'2 r | R1 | r2 r4 e8 8 |
  e2. 4 | 2 a,4 8 8 | 2 4 4 | 2 4 8 8 |
  a4 4 4 8 8 | 4 4 r2 | fis'2 4 4 | 2 2 | % 11a
  f2. 4 | e2 e | 2. 4 | 2 4 4 |
  e2. 4 | 2 4 8 8 | 4. 8 4 4 | 4 8 8 4 4 |
  e1 | 4 r r2\fermata | R1*3 | % 12a
  R1 | a4 4 g g | fis1 | b4 r r2 |
  R1*3 | b,4. 8 4 4 |
  c2(d) | g, r | R1*2 | % 13a
  R1 | g'4 g b, b | e2(fis) b, r2 |
  R1*4 |
  R1 | g'4. 8 fis4 4 | a2 2 | 1 | % 14a
  d,2 b'4. 8 | a4 4 b4. 8 | a4 4 e4. 8 |
  d4 4 e4 8 8 | d8. 16 4 fis4. 8 | g4 fis g fis | g4. 8 2 |
  r4 g g g | 2 2 | r4 4 4 8 8 | gis4. 8 2 | % 15a
  r4 gis~4 4 | a1~ | 4 4 2 | d,4 4 4 4 |
  d8. 16 8 8 4 8 8 | 4 4 4 4 | 1 | 4 r r2 | R1 |
  \bar "|." \break \pageBreak
}

wordsBassGloria = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o!
  et in ter -- ra pax hu -- mi -- nu -- bus
  bo -- næ vo -- lun -- ta -- tis.
  Lau -- da -- mus te be -- ne -- di -- ci -- mus te,
  ad -- o -- ra -- mus te, glo -- ri -- fi -- ca -- mus te,
  ad -- o -- ra -- mus te!
                                % 10c
  Gra -- ti -- as a -- gi -- mus ti -- bi prop -- ter
  ma -- gnam glo -- ri -- am tu -- am,
  Do -- mi -- ne De -- us,
  Rex cœ -- le -- stis,
  De -- us, Pa -- ter om -- ni -- po -- tens,
  Do -- mi -- ne Fi -- li u -- ni -- ge -- ni -- te
  Je -- su Chri -- ste!
                                % 12b
  mi -- se -- re -- re no -- bis.
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
                                % 14a
  Quo -- ni -- am tu so -- lus __ san -- ctus,
  Quo -- ni -- am tu so -- lus san -- ctus,
  Quo -- ni -- am tu so -- lus al -- tis -- si -- mus,
  Quo -- ni -- am tu so -- lus Do -- mi -- nus,
                                % 15a
  tu so -- lus san -- ctus,
  tu so -- lus al -- tis -- si -- mus,
  Je -- su, Je -- su Chri -- ste,
  cum san -- cto spi -- ri -- tu
  in glo -- ri -- a De -- i Pa -- tris.
  A -- men.
}

wordsBassGloriaMidi = \lyricmode {
  "\nGlo" ri "a " "in " ex cel "sis " De "o! "
  "\net " "in " ter "ra " "pax " hu mi nu "bus "
  "\nbo" "næ " vo lun ta "tis. "
  "\nLau" da "mus " "te " be ne di ci "mus " "te, "
  "\nad" o ra "mus " "te, " glo ri fi ca "mus " "te, "
  "\nad" o ra "mus " "te! "
                                % 10c
  "\nGra" ti "as " a gi "mus " ti "bi " prop "ter "
  "\nma" "gnam " glo ri "am " tu "am, "
  "\nDo" mi "ne " De "us, "
  "\nRex " cœ le "stis, "
  "\nDe" "us, " Pa "ter " om ni po "tens, "
  "\nDo" mi "ne " Fi "li " u ni ge ni "te "
  "\nJe" "su " Chri "ste! "
                                % 12b
  "\nmi" se re "re " no "bis. "
  "\nmi" se re "re " no "bis, "
  "\nmi" se re "re " no "bis, "
                                % 14a
  "\nQuo" ni "am " "tu " so "lus "  san "ctus, "
  "\nQuo" ni "am " "tu " so "lus " san "ctus, "
  "\nQuo" ni "am " "tu " so "lus " al tis si "mus, "
  "\nQuo" ni "am " "tu " so "lus " Do mi "nus, "
                                % 15a
  "\ntu " so "lus " san "ctus, "
  "\ntu " so "lus " al tis si "mus, "
  "\nJe" "su, " Je "su " Chri "ste, "
  "\ncum " san "cto " spi ri "tu "
  "\nin " glo ri "a " De "i " Pa "tris. "
  "\nA" "men. "
}

pianoRHoneGloria = \relative {
  \globalGloria \ov
  d'8 e16 fis g a b cis d4 <e, a cis e> |
  <fis a d fis>4 <g b d g> <a d fis a> <b d g b> |
  <cis e cis'>8 a16 16 8 8 <d fis d'>8 a16 16 8 8 |
  <cis e>4 <bis dis> <cis e> <dis fis> |
  <e g>16 fis e fis fis d e fis g fis e d cis b a g | % 9b
  fis4 <a d fis> <d fis a> <d fis a d> |
  <b d g b>4 r r2 |
  b'8(g d' b g d b d) |
  a8 a g'4(fis8 a fis d) |
  a8 a(cis4)(d8 cis d fis) | % 9c
  \vo a8(gis b a gis a b a) |
  a8(g e fis g b, e cis) |
  \ov d8 e16 fis g a b cis d8-. e-. fis-. d-. |
  cis8 a e cis a e cis a | % 10a
  e''8 fis16 g a b cis dis e8 fis g e |
  dis8 b fis dis b fis dis b |
  g'8 a16 b c d e fis g8 a b cis |
  <d, d'>8 8 <a a'> q <fis fis'> q <d d'> q | % 10b
  a'16(cis e cis e cis e cis \repeat tremolo 4 {e16 cis)} |
  \repeat unfold 2 \repeat tremolo 4 {d16 e} |
  <a, cis>8 b16 cis d e fis gis a4 cis |
  ais4(b) a8(gis fis gis) | % 10c
  <cis, e a>4 r \vo b' b |
  b4(e8) r a,4-. a-. |
  a4(d8) r d,4-. d-. |
  cis4(g'8) r fis(g a fis) | % 11a
  \ov <cis e>16 a b cis d e fis g <a, a'>4 <g g'> |
  <fis ais cis fis>4 r <ais cis fis ais> q |
  <b d fis b>4 r q q |
  <b d gis b>4 r q q | % 11b
  q4 r q q |
  dis8 e16 fis gis a b cis dis4 4 |
  e,8 fis16 gis a b cis dis e4 4 |
  dis,8 e16 fis gis a b cis dis4 4 | % 11c
  e,8 fis16 gis a b cis dis <e, e'>8-. <b b'>-. <e e'>-. <b b'>-. |
  <e e'>8 8 8 8 <b b'> q <gis gis'> q |
  <e e'>8 8 8 8 <b b'> q <gis gis'> q |
  e'4 r <e gis b e> r | % 12a
  q4 r r2\fermata |
  <cis e>8 8 8 8 <d e> q e e |
  e8-. e'(dis e fis gis a b |
  \vt cis8) \vo <cis,, e>8 8 8 <d e> q e e \ov |
  e8-. e'(dis e fis gis a b) | % 12b
  cis4 r <cis, cis'>-.(q-.) |
  <d d'>2(<ais ais'>) |
  <b b'>8 <d, fis> q q <e fis> q fis fis |
  fis8-. fis'(eis fis gis ais b cis) | % 12c
  \vt d8 \vo <d,, fis> q q <e fis> q fis fis \ov |
  fis8-. fis'(eis fis gis ais b cis) |
  d4 r <d, d'>-.(q-.) |
  \vo c'2(b) \ov | % 13a
  <b, g'>8 <b, d> q q <c d> q d d |
  d8-. d'(cis d e fis g a) |
  \vt b8 \vo <b,, d> q q <c d> q e e \ov |
  d8-. d'(cis d e fis g a) | % 13b
  b4 r <d, fis d'>-.(q-.) |
  \vt <e g c>2(<cis ais'>) \ov |
  <b d b'>2 fis'4-.(4-.) |
  \vo e2(cis) \ov | % 13c
  <d, b'>8 <d fis b> q q q q q q |
  <e g cis>8 8 8 8 8 8 8 8 |
  <fis d'>16 d e fis g a b cis d4 <e, a cis e> |
  <fis a d fis>4 <g b d g> <a d fis a> <b d g b> | % 14a
  <cis e cis'>8 a16 16 8 8 <d fis d'>8 a16 16 8 8 |
  \repeat tremolo 4 {<cis'e>16 e,} <fis d' fis>4 <fis dis' fis> |
  <g e' g>8 <d' fis> <cis e> <b d> <a cis> <g b> <fis a> <e g> |
  fis16 d e fis g a b cis <d, gis d'>2 | % 14b
  <cis a' cis>16 d e fis gis a b cis <d, gis d'>2 |
  <cis a' cis>8 a16 b cis d e fis <g, cis g'>2 |
  <fis d' fis>16 g a b cis d e fis <g, cis g'>2 | % 14c
  <fis d' fis>16  e' d e fis g a b <c, d c'>2 |
  <b d b'>4 <c d c'> <b d b'> <c d c'> |
  <b d b'>8-. g'-. d'-. b-. g-. d-. b-. d-. |
  g,8 \lh b,16[ \rh b' \lh d, \rh d' \lh b, \rh b'] \lh g, \rh g' \lh d, \rh d' \lh b, \rh b' \lh g, \rh g' | % 15a
  \ov b''8 d g d b f d c |
  \lh b,16 \rh b' \lh d, \rh d' \lh f, \rh f' \lh d, \rh d' \lh b, \rh b' \lh f, \rh f' \lh d, \rh d' \lh b, \rh b' |
  \ov <e' b'>8 d' e d b e, d b |
  \lh d,16 \rh d' \lh e, \rh e' \lh d, \rh d' \lh b, \rh b' \lh gis, \rh gis' \lh e, \rh e' \lh d, \rh d' \lh gis,, \rh gis' | % 15b
  a8 <a' d e>16 e q e q e \repeat tremolo 4 {q16 e} |
  \repeat unfold 2 \repeat tremolo 4 {<a' cis e>16 e} |
  <d fis a d>4 <b' d>8 <d, d'> <a' cis> <d, d'> <g d> <d d'> |
  <fis a>8 <d d'> <g b> <d d'> <fis a> <d d'> <e g> <d d'> | % 15c
  fis8 <d d'> <b g'> d <a fis'> d <g, e'> d' |
  <fis, d'>8 d fis a d d fis a |
  <d, fis a d>4 r d, d | d2 r |
}

pianoRHtwoGloria = \relative {
  \globalGloria \vt
  s1*10 | <d'' fis>1( | <cis e>4) r s2 | s1 |
  s1*9 | s2 <dis fis> | <e g> <cis e> | <d fis> <f, a> | % 10
  <e a>2 <a d> | s1*11 |
  s1*13 | % 12
  c1 | s1*5 | s2 \vo fis4(e) \vt | s1 | g,8 8 8 8 fis fis e e | s1*3 |
  s1*11 | % 14
  s1*13 |
}

dynamicsPianoGloria = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s | s2\fz s\fz | s1 | s\ff | s1*2 | s1\p | s4 s\> s2\! | s4 s\> s2\! | s1*2 | s1\f |
  s1*3 | s1\fz | s | s\p | s1*6 | % 10
  s1 | s\cresc | s\ff | s1*9 |
  s1*2 | s1\p | s1*3 | s2 s\< | s1\> | s\! | s1*3 | s2 s\< | % 12
  s2\> s\! | s1*4 | s2 s\< | s\> s\! | s s\< | s\> s\! | s1 | s\cresc | s\ff |
  s1 | s2\fz s\fz | s1*2 | s2 s\fz | s s\fz | s s\fz | s s\fz | s s\fz | s4 s2\fz s4\fz | s1 | % 14
  s4 s2.\fz | s1 | s4 s2.\fz | s1 | s4 s2.\fz | s1*2 | s4 \repeat unfold 12 s\fz s2. | s1*2 | 
}

pianoLHoneGloria = \relative {
  \globalGloria \ov
  <b,, b'>8 e'16 fis g a b cis d4 a |
  <d, d'>4 <b b'> <fis fis'> <g g'> |
  q4 r <fis fis'> r |
  <a a'>4 4 4 4 |
  q8 a16 q a8 q q q q q | % 9b
  <d d'>4 <a a'> <fis fis'> <d d'> |
  <g g'>4 r r2 | R1 |
  <a e' a>4 r <a fis' a> r |
  <a g' a>4 r <a fis' a> r | r <a, a'>2~4 | 2 r | \repeat unfold 2 \repeat tremolo 4 {<d' fis>16 a'} | % 9c
  a,8 b16 cis d e fis gis a8 b \rh cis a | % 10a
  \lh \ov \repeat unfold 2 \repeat tremolo 4 {<e g>16 b'} |
  b,8 cis16 dis e fis gis ais b8 c \rh dis b |
  \lh \ov \repeat unfold 2 \repeat tremolo 4 {<g b>16 d'} |
  <d, a' d>4\arpeggio <a a'> <fis fis'> <d d'> | % 10b
  a'8 b16 cis d e fis gis a4 4 |
  ais4(b) a8(gis fis gis) |
  a8 r e r cis r a r |
  <e e'>8 <e' gis>16 d' q d q d \repeat tremolo 4 {<e, b'>16 d'} | % 10c
  a,8 b16 cis d e fis gis a4 r |
  \repeat unfold 3 {a,8 b16 cis d e fis g a4 r | }
  a,8 b16 cis d e fis g <a, a'>4 <g g'> | % 11a+
  \repeat unfold 2 {<fis fis'>8 gis16 ais b cis d e <fis, fis'>4 4 | }
  <f f'>8 g16 a b cis d e <f, f'>4 4 | % 11b
  <e e'>8 fis'16 gis a b c dis <e, e'>4 4 |
  \repeat unfold 2 \repeat tremolo 4 {<e a c>16 dis'} |
  \repeat unfold 2 \repeat tremolo 4 {<e, gis b>16 e'} |
  \repeat unfold 2 \repeat tremolo 4 {<e, a c>16 dis'} | % 11c
  \repeat tremolo 4 {<e, gis b>16 e'} q8-. b-. <e, e'>-. b'-. |
  <e, e'>8 8 8 8 <b b'> q <gis gis'> q |
  <e e'>8 8 8 8 <b b'> q <gis gis'> q |
  \crossStaff <e e' e'>4 r <e' gis b e> r | % 12a
  q4 r r2\fermata |
  a2(b4 cis) |
  \vo r8 e e e e e e e |
  \ov a,2(b4 cis) |
  \vo r8 e e e e e e e | % 12b
  e8 <cis e> q q <b eis> q q q |
  <b fis'> q q q <cis fis> q <cis e> q |
  d8 r r4 r2 |
  r8 fis8 8 8 8 8 8 8 | % 12c
  b,2(cis4 d) |
  r8 fis8 8 8 8 8 8 8 |
  d8 fis <d fis> q <d g> q q q |
  <e a>8 8 8 8 <fis c'>8 8 8 8 | % 13a
  b8 s4. s2 |
  r8 d, d d d d d d |
  \ov g,2(a4 b) |
  \vo r8 d d d d d d d | % 13b
  d8 b' b b b b b b |
  e8 e e e cis8 8 8 8 |
  r8 <b d> q q q q q q |
  c8 8 8 8 ais8 8 8 8 | % 13c
  b,8 b' b b <b, b'> q q q |
  <a a'>8 8 8 8 8 8 8 8 |
  d8 e16 fis g a b cis d4 a |
  <d, d'>4 <b b'> <fis fis'> <g g'> | % 14a
  q4 r <fis fis'> r |
  <a a'>4 4 4 4 |
  q8 a16 q a8 q q q q q |
  d4 r b16 cis d e fis gis a b | % 14b
  a4 a, b16 cis d e fis gis a b |
  a4 a, e'16 fis g a b cis d e |
  d4 d, e16 fis g a b cis d e | % 14c
  d4 d, fis,16 g a b c d e fis |
  g4 <fis, fis'> <g g'> <fis fis'> |
  <g g'>8 4 4 4 8~ |
  q8 s s2. | % 15a
  g'8 <g, g'>4 4 4 8 |
  s1 |
  gis8 <gis, gis'>4 4 4 8 |
  s1 | % 15b
  a'8 a' <a, a'>8 8 8 8 8 8 |
  q8 8 8 8 8 8 8 8 |
  d4 <d, d'>4 4 4 |
  q4 4 4 4 | % 15c
  q4 4 4 4 |
  q8 d' fis a d d a fis |
  d4 r <d, d'>4 4 |
  q2 r |
}

pianoLHtwoGloria = \relative {
  \globalGloria \vt
  s1*13 |
  s1*12 | % 10
  s1*12 |
  s1*3 | d2(b4 gis) | s1 | d'2(b4 gis) | a2 g | fis1 | b2(cis4 d) | e2(cis4 ais) | s1 | e'2(cis4 ais) | b1 | % 12
  c2(d) | g,2(a4 b) | c2(a4 fis) | s1 | c'2(a4 fis) | g2(b) | e fis | b, d4 d | e2(fis) | s1*3 |
  s1*12 | % 14
  s1*12 |
}
