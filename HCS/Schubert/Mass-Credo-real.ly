globalCredo = {
  \key g \major
  \time 2/2
}

TempoTrackCredo = {
  \tempo "Allegro moderato" 2=120
  s1*188
}

RehearsalTrackCredo = {
  \textMark \markup\box "16a" s1*7
  \textMark \markup\box "16b" s1*7
  \textMark \markup\box "16c" s1*6
  \mark \markup\circle\bold A s1
  \textMark \markup\box "17a" s1*7
  \textMark \markup\box "17b" s1*7
  \textMark \markup\box "17c" s1*7
  \textMark \markup\box "18a" s1*5
  \mark \markup\circle\bold B s1*2
  \textMark \markup\box "18b" s1*7
  \textMark \markup\box "18c" s1*7
  \textMark \markup\box "19a" s1*7
  \textMark \markup\box "19b" s1*2
  \mark \markup\circle\bold C s1*5
  \textMark \markup\box "19c" s1*7
  \textMark \markup\box "20a" s1*7
  \textMark \markup\box "20b" s1*5
  \mark \markup\circle\bold D s1
  \textMark \markup\box "20c" s1*5
  \textMark \markup\box "21a" s1*5
  \textMark \markup\box "21b" s1*4
  \mark \markup\circle\bold E s1
  \textMark \markup\box "21c" s1*5
  \textMark \markup\box "22a" s1*5
  \textMark \markup\box "22b" s1*6
  \textMark \markup\box "22c" s1*5
  \textMark \markup\box "23a" s1*4
  \mark \markup\circle\bold F
  \textMark \markup\box "23b" s1*6
  \textMark \markup\box "23c" s1*6
  \textMark \markup\box "24a" s1*3
  \mark \markup\circle\bold G s1*3
  \textMark \markup\box "24b" s1*6
  \textMark \markup\box "24c" s1*6
  \textMark \markup\box "25a" s1*6
  \textMark \markup\box "25b" s1*7
  \textMark \markup\box "25c" s1*8
}

dynamicsSopSoloCredo = {
  \override DynamicTextSpanner.style = #'none
  s1*188
}

sopranoSoloCredo = \relative {
  \globalCredo
  R1*188
}

wordsSopSoloCredo = \lyricmode {
}

wordsSopSoloCredoMidi = \lyricmode {
}

dynamicsAltoSoloCredo = {
  \override DynamicTextSpanner.style = #'none
  s1*188
}

altoSoloCredo = \relative {
  \globalCredo
  R1*188
}

wordsAltoSoloCredo = \lyricmode {
}

wordsAltoSoloCredoMidi = \lyricmode {
}

dynamicsTenorSoloCredo = {
  \override DynamicTextSpanner.style = #'none
  s1*188
}

tenorSoloCredo = \relative {
  \globalCredo
  R1*188
}

wordsTenorSoloCredo = \lyricmode {
}

wordsTenorSoloCredoMidi = \lyricmode {
}

dynamicsBassSoloCredo = {
  \override DynamicTextSpanner.style = #'none
  s1*188
}

bassSoloCredo = \relative {
  \globalCredo
  R1*188
  \bar "|." \break \pageBreak
}

wordsBassSoloCredo = \lyricmode {
}

wordsBassSoloCredoMidi = \lyricmode {
}

dynamicsSopCredo = {
  \override DynamicTextSpanner.style = #'none
  s1\pp | s1*14 | s1\> | s\! | s1*4 |
  s1*21 | % 17
  s1*5 | s2. s4\p | s1*15 |
  s1*9 | s1\f | s1*11 | % 19
  s1\p | s1*11 | s1\ff | s1*5 |
  s1*15 | % 21
  s1*7 | s1\ff | s1*8 |
  s1*4 | s1\pp | s1*11 | % 23
  s1*18 |
  s1*21 | % 25
}

sopranoCredo = \relative {
  \globalCredo
  b'2 4 4 | a2. b4 | c1 | b | e2 4 4 | d2 c | b1 |
  a1 | b2 4 4 | a2 4 b | c1 | b | e2. 4 | d2 c4 4 |
  b2 a | b1 | e2. 4 | d2 c | b a | g1 | d'2 4 4 |
  d4. 8 2 | R1*2 | e2 4 4 | 2 2 | R1 | r2 e4 4 | % 17a
  g2. 4 | 2 2 | R1*2 | c,2 4 4 | 2 2 | 2 4 4 |
  c4. 8 2 | ees2 2 | 2 4 4 | d2 2 | 2 2 | c2. 4 | b2 2 |
  a1 | b | c2 2 | b2 4 4 | a2. 4 | g2 r4 b | 2 4 4 | % 18a
  d4. 8 4 4 | a2 4 4 | c2 4 4 | a2 b4 4 | c2(b) | a2 r | R1 |
  b1 | d2 2 | a2. 4 | c2 2 | g2 4 4 | b2 2 | cis2. 4 |
  d2 2 | ais2. 4 | b2 2 | cis2. 4 | b2 ais | b1 | R | % 19a
  R1*2 | b1~ | 2 2 | 1 | 1 | 2. 4 |
  b2 2 | 1 | 2 2 | cis2. 4 | 2 2 | 1 | 1 |
  b2. 4 | 2 2 | c1 | ais | b | R1*2 | % 20a
  R1*5 | fis'2 4 4 |
  e2 2 | g2 4 4 | fis2 4 4 | g1 | fis2 e |
  d1 | cis2 r | d2. 4 | 2 b4 4 | e1 | % 21a
  cis2 r | fis2 4 4 | d2 b4 4 | cis2(ais) | b2 r4 4 |
  g'2. 4 | e2 2 | g2. 4 | e2 cis | d2. 4 |
  b2 4 4 | d1 | b2 r | dis1 | 2 2 | % 22a
  fis2. dis4 | 2 r | b1~ | 2 2 | 2 4. 8 | 2 2 |
  c,1~ | c~ | c~ | c | b2 r |
  R1*3 | R1\fermata | % 23a
  b'1 | a2.(b4) | c1 | b2 2 | e2 4 4 | d2 c |
  b2. 4 | a1 | b | a2 4 b | c1 | b2 4 4 |
  e2 4 4 | d4. 8 c4 4 | b2(a) | g2 4 b | d2 4 4 | 4. 8 2 | % 24a
  R1 | r2 d4 4 | e2 4 4 | 4. 8 2 | R1*2 |
  g2. 4 | 4. 8 2 | R1 | r2 r4 g, | c2 4 4 | 2 4 4 |
  c2 2 | 4. 8 4 4 | d2 2 | d d | 4. 8 4 4 | 2 4 4 | % 25a
  c2 4 4 | b2 2 | a2. 4 | b2 2 | c2 4 4 | b2 2 | a2. 4 |
  g2 r | 1 | 2 r | 1 | 2 r | fis2 g | d1 | d\fermata |  
}

wordsSopCredo = \lyricmode {
  Cre -- do in u -- num De -- um,
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cœ -- li et ter -- ræ,
  vi -- si -- bi -- li -- um om -- ni -- um
  et in -- vi -- si -- bi -- li -- um.
                                % 17a
  In u -- num Do -- mi -- num,
  Fi -- li -- um De -- i,
  et ex Pa -- tre na -- tum
  De -- um de  De -- o,
  lu -- men de lu -- mi -- ne,
  De -- um ve -- rum de De -- o ve -- ro,
  ge -- ni -- tum non fa -- ctum,
                                % 18a
  per quem  om -- ni -- a fa -- cta sunt,
  qui prop -- ter nos ho -- mi -- nes
  et no -- stram sa -- lu -- tem de -- scen -- dit
  de cœ -- lis.
  Et in -- car -- na -- tus
  est de Spi -- ri -- tu san -- cto ex Ma -- ri -- a
  vir -- gin -- e, et ho -- mo fa -- ctus est.
                                % 19b
  Cru -- ci -- fi -- xus e -- ti -- am
  pro  no -- bis sub Pon -- ti -- o Pi -- la -- to,
                                % 20a
  pas -- sus et se -- pul -- tus est.
  Et re -- sur -- re -- xit ter -- ti -- a
  di -- e se -- cun -- dum scrip -- tu -- ras,
                                % 21a
  et a -- scen -- dir in cœ -- lum,
  se -- det ad dex -- te -- ram Pa -- tris.
  Et i -- te -- rum ven -- tu -- rus est,
  cum glo -- ri -- a in -- di -- ca -- re
                                % 22a
  vi -- vos et mor -- tu -- os,
  cu -- ius re -- gni nopn e -- rit fi -- nis.
                                % 23b
  Cre -- do, __
  cre -- do in Spi -- ri -- tum san -- ctum,
  Do -- mi -- num et vi -- vi -- fi -- can -- tem,
  qui ex Pa -- tre et Fi -- li -- o pro -- ce -- dit,
                                % 24b
  qui cum Pa -- tre et Fi -- li -- o
  qui cum Pa -- tre et Fi -- li -- o
  qui lo -- cu -- tus est
  Con -- fi -- te -- or u -- num ba -- pti -- sma
                                % 25a
  in re -- mis -- si -- o -- nem pec -- cas -- to -- rum
  mor -- tu -- o -- rum,
  et vi -- tam ven -- tu -- ri sæ -- cu -- li,
  et vi -- tam ven -- tu -- ri sæ -- cu -- li.
  A -- men, a -- men, a -- men, a -- men.
}

wordsSopCredoMidi = \lyricmode {
  "\nCre" "do " "in " u "num " De "um, "
  "\nPa" "trem " om ni po ten "tem, "
  "\nfac" to "rem " cœ "li " "et " ter "ræ, "
  "\nvi" si bi li "um " om ni "um "
  "\net " in vi si bi li "um. "
                                % 17a
  "\nIn " u "num " Do mi "num, "
  "\nFi" li "um " De "i, "
  "\net " "ex " Pa "tre " na "tum "
  "\nDe" "um " "de "  De "o, "
  "\nlu" "men " "de " lu mi "ne, "
  "\nDe" "um " ve "rum " "de " De "o " ve "ro, "
  "\nge" ni "tum " "non " fa "ctum, "
                                % 18a
  "\nper " "quem "  om ni "a " fa "cta " "sunt, "
  "\nqui " prop "ter " "nos " ho mi "nes "
  "\net " no "stram " sa lu "tem " de scen "dit "
  "\nde " cœ "lis. "
  "\nEt " in car na "tus "
  "\nest " "de " Spi ri "tu " san "cto " "ex " Ma ri "a "
  "\nvir" gin "e, " "et " ho "mo " fa "ctus " "est. "
                                % 19b
  "\nCru" ci fi "xus " e ti "am "
  "\npro "  no "bis " "sub " Pon ti "o " Pi la "to, "
                                % 20a
  "\npas" "sus " "et " se pul "tus " "est. "
  "\nEt " re sur re "xit " ter ti "a "
  "\ndi" "e " se cun "dum " scrip tu "ras, "
                                % 21a
  "\net " a scen "dir " "in " cœ "lum, "
  "\nse" "det " "ad " dex te "ram " Pa "tris. "
  "\nEt " i te "rum " ven tu "rus " "est, "
  "\ncum " glo ri "a " in di ca "re "
                                % 22a
  "\nvi" "vos " "et " mor tu "os, "
  "\ncu" "ius " re "gni " "nopn " e "rit " fi "nis. "
                                % 23b
  "\nCre" "do, " 
  "\ncre" "do " "in " Spi ri "tum " san "ctum, "
  "\nDo" mi "num " "et " vi vi fi can "tem, "
  "\nqui " "ex " Pa "tre " "et " Fi li "o " pro ce "dit, "
                                % 24b
  "\nqui " "cum " Pa "tre " "et " Fi li "o "
  "\nqui " "cum " Pa "tre " "et " Fi li "o "
  "\nqui " lo cu "tus " "est "
  "\nCon" fi te "or " u "num " ba pti "sma "
                                % 25a
  "\nin " re mis si o "nem " pec cas to "rum "
  "\nmor" tu o "rum, "
  "\net " vi "tam " ven tu "ri " sæ cu "li, "
  "\net " vi "tam " ven tu "ri " sæ cu "li. "
  "\nA" "men, " a "men, " a "men, " a "men. "
}

dynamicsAltoCredo = {
  \override DynamicTextSpanner.style = #'none
  s1\pp | s1*14 | s1\> | s\! | s1*4 |
  s1*21 | % 17
  s1*5 | s2. s4\p | s1*15 |
  s1*9 | s1\f | s1*11 | % 19
  s1\p | s1*11 | s1\ff | s1*5 |
  s1*15 | % 21
  s1*7 | s1\ff | s1*8 |
  s1*4 | s1\pp | s1*11 | % 23
  s1*18 |
  s1*21 | % 25
}

altoCredo = \relative {
  \globalCredo
  g'2 4 4 | fis2. gis4 | a1 | gis | g2 4 4 | 2 a | g1 |
  fis1 | g2 4 4 | fis2 4 gis | a1 | gis | g2. 4 | 2 a4 4 |
  g2 fis | f1 | e4(fis g) a | b2 a | g fis | g1 | d2 4 4 |
  d4. 8 2 | R1*2 | e2 4 4 | 2 2 | R1 | r2 4 4 | % 17a
  g2. 4 | 2 2 | R1*2 | a2 4 4 | 2 g | fis2 4 4 |
  fis4. 8 g2 | a a | a g4 4 | fis2 2 | 2 g | 2. 4 | 2 2 |
  g2(fis) | g1 | 2 2 | 2 4 4 | 2(fis4) 4 | g2 r4 g | 2 4 4 | % 18a
  a4. 8 4 d, | e2 4 4 | g2 4 a | fis2 g4 4 | fis2(g) | fis r | R1 |
  g1 | a2 d, | e2. 4 | g2 2 | e2 4 4 | fis2 2 | 2. 4 |
  fis2 2 | 2. 4 | 2 2 | g2. 4 | fis2 2 | 1 | R | % 19a
  R1*2 | fis1~ | 2 2 | 1 | 1 | g2. 4 |
  g2 2 | 1 | 2 2 | 2. 4 | fis2 2 | eis1 | e |
  d2. fis4 | g2 2 | 1 | fis1 | 1 | R1*2 | % 20a
  R1*5 | a2 4 4 |
  a2 2 | b2 4 4 | 2 4 4 | 1 | a2 b |
  a1 | 2 r | fis2. 4 | g2 4 4 | gis1 | % 21a
  a2 r | ais2 4 4 | b2 fis4 4 | g2(fis) | 2 r4 b |
  b2. 4 | ais2 2 | b2. 4 | ais2 cis | fis,2. 4 |
  eis2 4 4 | fis1 | eis2 r | fis1 | 2 2 | % 22a
  dis2. fis4 | 2 r | b1~ | 2 2 | 2 4. 8 | 2 2 |
  c,1~ | c~ | c~ | c | b2 r |
  R1*3 | R1\fermata | % 23a
  g'1 | fis2.(gis4) | a1 | gis2 2 | g2 4 4 | 2 a |
  g2. 4 | fis1 | g | fis2 4 gis | a1 | gis2 4 4 |
  g2 4 4 | 4. 8 a4 4 | g2(fis) | g2 d4 4 | 2 4 4 | 4. 8 2 | % 24a
  R1 | r2 d4 4 | e2 4 4 | 4. 8 2 | R1*2 |
  g2. 4 | 4. 8 2 | R1 | r2 r4 g | a2 4 4 | 2 g4 4 |
  fis2 2 | 4. 8 g4 4 | a2 2 | a g | fis4. 8 4 4 | 2 g4 4 | % 25a
  g2 4 4 | 2 2 | 2(fis4) 4 | g2 2 | 2 4 4 | 2 2 | fis2. 4 |
  g2 r | e1 | d2 r | e1 | d2 r | c b | a1 | b\fermata |
}

wordsAltoCredo = \lyricmode {
  Cre -- do in u -- num De -- um,
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cœ -- li et ter -- ræ,
  vi -- si -- bi -- li -- um om -- ni -- um
  et in -- vi -- si -- bi -- li -- um.
                                % 17a
  In u -- num Do -- mi -- num,
  Fi -- li -- um De -- i,
  et ex Pa -- tre na -- tum
  De -- um de  De -- o,
  lu -- men de lu -- mi -- ne,
  De -- um ve -- rum de De -- o ve -- ro,
  ge -- ni -- tum non fa -- ctum,
                                % 18a
  per quem  om -- ni -- a fa -- cta sunt,
  qui prop -- ter nos ho -- mi -- nes
  et no -- stram sa -- lu -- tem de -- scen -- dit
  de cœ -- lis.
  Et in -- car -- na -- tus
  est de Spi -- ri -- tu san -- cto ex Ma -- ri -- a
  vir -- gin -- e, et ho -- mo fa -- ctus est.
                                % 19b
  Cru -- ci -- fi -- xus e -- ti -- am
  pro  no -- bis sub Pon -- ti -- o Pi -- la -- to,
                                % 20a
  pas -- sus et se -- pul -- tus est.
  Et re -- sur -- re -- xit ter -- ti -- a
  di -- e se -- cun -- dum scrip -- tu -- ras,
                                % 21a
  et a -- scen -- dir in cœ -- lum,
  se -- det ad dex -- te -- ram Pa -- tris.
  Et i -- te -- rum ven -- tu -- rus est,
  cum glo -- ri -- a in -- di -- ca -- re
                                % 22a
  vi -- vos et mor -- tu -- os,
  cu -- ius re -- gni nopn e -- rit fi -- nis.
                                % 23b
  Cre -- do, __
  cre -- do in Spi -- ri -- tum san -- ctum,
  Do -- mi -- num et vi -- vi -- fi -- can -- tem,
  qui ex Pa -- tre et Fi -- li -- o pro -- ce -- dit,
                                % 24b
  qui cum Pa -- tre et Fi -- li -- o
  qui cum Pa -- tre et Fi -- li -- o
  qui lo -- cu -- tus est
  Con -- fi -- te -- or u -- num ba -- pti -- sma
                                % 25a
  in re -- mis -- si -- o -- nem pec -- cas -- to -- rum
  mor -- tu -- o -- rum,
  et vi -- tam ven -- tu -- ri sæ -- cu -- li,
  et vi -- tam ven -- tu -- ri sæ -- cu -- li.
  A -- men, a -- men, a -- men, a -- men.
}

wordsAltoCredoMidi = \lyricmode {
  "\nCre" "do " "in " u "num " De "um, "
  "\nPa" "trem " om ni po ten "tem, "
  "\nfac" to "rem " cœ "li " "et " ter "ræ, "
  "\nvi" si bi li "um " om ni "um "
  "\net " in vi si bi li "um. "
                                % 17a
  "\nIn " u "num " Do mi "num, "
  "\nFi" li "um " De "i, "
  "\net " "ex " Pa "tre " na "tum "
  "\nDe" "um " "de "  De "o, "
  "\nlu" "men " "de " lu mi "ne, "
  "\nDe" "um " ve "rum " "de " De "o " ve "ro, "
  "\nge" ni "tum " "non " fa "ctum, "
                                % 18a
  "\nper " "quem "  om ni "a " fa "cta " "sunt, "
  "\nqui " prop "ter " "nos " ho mi "nes "
  "\net " no "stram " sa lu "tem " de scen "dit "
  "\nde " cœ "lis. "
  "\nEt " in car na "tus "
  "\nest " "de " Spi ri "tu " san "cto " "ex " Ma ri "a "
  "\nvir" gin "e, " "et " ho "mo " fa "ctus " "est. "
                                % 19b
  "\nCru" ci fi "xus " e ti "am "
  "\npro "  no "bis " "sub " Pon ti "o " Pi la "to, "
                                % 20a
  "\npas" "sus " "et " se pul "tus " "est. "
  "\nEt " re sur re "xit " ter ti "a "
  "\ndi" "e " se cun "dum " scrip tu "ras, "
                                % 21a
  "\net " a scen "dir " "in " cœ "lum, "
  "\nse" "det " "ad " dex te "ram " Pa "tris. "
  "\nEt " i te "rum " ven tu "rus " "est, "
  "\ncum " glo ri "a " in di ca "re "
                                % 22a
  "\nvi" "vos " "et " mor tu "os, "
  "\ncu" "ius " re "gni " "nopn " e "rit " fi "nis. "
                                % 23b
  "\nCre" "do, " 
  "\ncre" "do " "in " Spi ri "tum " san "ctum, "
  "\nDo" mi "num " "et " vi vi fi can "tem, "
  "\nqui " "ex " Pa "tre " "et " Fi li "o " pro ce "dit, "
                                % 24b
  "\nqui " "cum " Pa "tre " "et " Fi li "o "
  "\nqui " "cum " Pa "tre " "et " Fi li "o "
  "\nqui " lo cu "tus " "est "
  "\nCon" fi te "or " u "num " ba pti "sma "
                                % 25a
  "\nin " re mis si o "nem " pec cas to "rum "
  "\nmor" tu o "rum, "
  "\net " vi "tam " ven tu "ri " sæ cu "li, "
  "\net " vi "tam " ven tu "ri " sæ cu "li. "
  "\nA" "men, " a "men, " a "men, " a "men. "
}

dynamicsTenorCredo = {
  \override DynamicTextSpanner.style = #'none
  s1\pp | s1*14 | s1\> | s\! | s1*4 |
  s1*21 | % 17
  s1*5 | s2. s4\p | s1*15 |
  s1*9 | s1\f | s1*11 | % 19
  s1\p | s1*11 | s1\ff | s1*5 |
  s1*15 | % 21
  s1*7 | s1\ff | s1*8 |
  s1*4 | s1\pp | s1*11 | % 23
  s1*18 |
  s1*21 | % 25
}

tenorCredo = \relative {
  \globalCredo
  d'2 4 4 | d2. 4 | e1 | 1 | c2 4 4 | b2 d | d1 |
  d1 | 2 4 4 | 2 4 4 | e1 | e | c2. 4 | b2 e4 4 |
  d2 2 | 1 | c2. 4 | b2 e | d2 2 | b1 | R |
  R1 | d2. 4 | 2 2 | R1*2 | e2. 4 | 4. 8 2 | % 17a
  R1 | r2 g4 4 | 2 4 4 | 4. 8 2 | ees2 4 4 | 2 2 | d2 4 4 |
  d4. 8 2 | c2 2 | 2 4 4 | 2 2 | 2 b | e4. 8 4 4 | d2 2 |
  d1 | 1 | e2 2 | d2 4 4 | 2. 4 | b2 r4 d | 2 4 4 | % 18a
  d4. 8 4 4 | c2 4 4 | 2 4 e | d2 4 4 | 1 | 2 2 | 2 2 |
  d1 | d | c | c | b2 4 4 | 2 2 | e2. 4 |
  d2 2 | e2. 4 | d2 2 | e2. 4 | d2 cis | d1 | R | % 19a
  R1*2 | d1~ | 2 2 | 1 | 1 | 2. 4 |
  d2 2 | 1 | 2 b | 2. 4 | 2 2 | 1 | fis' |
  d2. 4 | 2 2 | e1 | cis | d | r1*2 | % 20a
  R1*5 | d2 4 4 |
  cis2 2 | e2 4 4 | dis2 4 4 | d1 | 2 g |
  fis1 | e2 r | c2. 4 | b2 d4 4 | 2.(b4) | % 21a
  cis2 r | e2 4 cis | d2 4 4 | e2(cis) | b2 r4 b |
  e2. 4 | cis2 2 | e2. 4 | dis2 ais | b2. 4 |
  gis2 4 4 | b1 | gis2 r | a1 | 2 2 | % 22a
  a2. 4 | 2 r | b1~ | 2 2 | 2 4. 8 | 2 2 |
  c,1~ | c~ | c~ | c | b2 r |
  R1*3 | R1\fermata | % 23a
  d'1 | d | e | 2 2 | c2 4 4 | b2 e |
  d2. 4 | 1 | 1 | 2 4 4 | e1 | 2 4 4 |
  c2 4 4 | b4. 8 e4 4 | d1 | b2 r | R1*2 | % 24a
  d4. 8 4 4 | 2 2 | R1*2 | e4. 8 4 4 | 2 2 |
  R1*2 | g2. 4 | 2 4 4 | d2 4 4 | 2 4 4 |
  d2 2 | 4. 8 4 4 | c2 2 | 2 2 | 4. 8 4 4 | 2 b4 4 | % 25a
  e2 4 4 | d2 2 | 2. 4 | 2 2 | e2 4 4 | d2 2 | 2. 4 |
  b2 r | c1 | b2 r | c1 | b2 r | a g | g(fis) | g1\fermata |
}

wordsTenorCredo = \lyricmode {
  Cre -- do in u -- num De -- um,
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cœ -- li et ter -- ræ,
  vi -- si -- bi -- li -- um om -- ni -- um
  et in -- vi -- si -- bi -- li -- um.
                                % 17a
  Je -- sum Chri -- stum u -- ni -- ge -- ni -- tum,
  an -- te om -- ni -- a sæ -- cu -- lam
  De -- um de  De -- o,
  lu -- men de lu -- mi -- ne,
  De -- um ve -- rum de De -- o ve -- ro,
  con sub -- stan -- ti -- a -- lem Pa -- tri,
                                % 18a
  per quem  om -- ni -- a fa -- cta sunt,
  qui prop -- ter nos ho -- mi -- nes
  et no -- stram sa -- lu -- tem de -- scen -- dit
  de cœ -- lis.
  Et in -- car -- na -- tus
  est de Spi -- ri -- tu san -- cto ex Ma -- ri -- a
  vir -- gin -- e, et ho -- mo fa -- ctus est.
                                % 19b
  Cru -- ci -- fi -- xus e -- ti -- am
  pro  no -- bis sub Pon -- ti -- o Pi -- la -- to,
                                % 20a
  pas -- sus et se -- pul -- tus est.
  Et re -- sur -- re -- xit ter -- ti -- a
  di -- e se -- cun -- dum scrip -- tu -- ras,
                                % 21a
  et a -- scen -- dir in cœ -- lum,
  se -- det ad dex -- te -- ram Pa -- tris.
  Et i -- te -- rum ven -- tu -- rus est,
  cum glo -- ri -- a in -- di -- ca -- re
                                % 22a
  vi -- vos et mor -- tu -- os,
  cu -- ius re -- gni nopn e -- rit fi -- nis.
                                % 23b
  Cre -- do, __
  cre -- do in Spi -- ri -- tum san -- ctum,
  Do -- mi -- num et vi -- vi -- fi -- can -- tem,
  qui ex Pa -- tre et Fi -- li -- o pro -- ce -- dit,
                                % 24b
  si -- mul a -- do -- ra -- tur
  con -- glo -- ri -- fi -- ca -- tur,
  per Pro -- phe -- tas.
  Con -- fi -- te -- or u -- num ba -- pti -- sma
                                % 25a
  in re -- mis -- si -- o -- nem pec -- cas -- to -- rum
  mor -- tu -- o -- rum,
  et vi -- tam ven -- tu -- ri sæ -- cu -- li,
  et vi -- tam ven -- tu -- ri sæ -- cu -- li.
  A -- men, a -- men, a -- men, a -- men.
}

wordsTenorCredoMidi = \lyricmode {
  "\nCre" "do " "in " u "num " De "um, "
  "\nPa" "trem " om ni po ten "tem, "
  "\nfac" to "rem " cœ "li " "et " ter "ræ, "
  "\nvi" si bi li "um " om ni "um "
  "\net " in vi si bi li "um. "
                                % 17a
  "\nJe" "sum " Chri "stum " u ni ge ni "tum, "
  "\nan" "te " om ni "a " sæ cu "lam "
  "\nDe" "um " "de "  De "o, "
  "\nlu" "men " "de " lu mi "ne, "
  "\nDe" "um " ve "rum " "de " De "o " ve "ro, "
  "\ncon " sub stan ti a "lem " Pa "tri, "
                                % 18a
  "\nper " "quem "  om ni "a " fa "cta " "sunt, "
  "\nqui " prop "ter " "nos " ho mi "nes "
  "\net " no "stram " sa lu "tem " de scen "dit "
  "\nde " cœ "lis. "
  "\nEt " in car na "tus "
  "\nest " "de " Spi ri "tu " san "cto " "ex " Ma ri "a "
  "\nvir" gin "e, " "et " ho "mo " fa "ctus " "est. "
                                % 19b
  "\nCru" ci fi "xus " e ti "am "
  "\npro "  no "bis " "sub " Pon ti "o " Pi la "to, "
                                % 20a
  "\npas" "sus " "et " se pul "tus " "est. "
  "\nEt " re sur re "xit " ter ti "a "
  "\ndi" "e " se cun "dum " scrip tu "ras, "
                                % 21a
  "\net " a scen "dir " "in " cœ "lum, "
  "\nse" "det " "ad " dex te "ram " Pa "tris. "
  "\nEt " i te "rum " ven tu "rus " "est, "
  "\ncum " glo ri "a " in di ca "re "
                                % 22a
  "\nvi" "vos " "et " mor tu "os, "
  "\ncu" "ius " re "gni " "nopn " e "rit " fi "nis. "
                                % 23b
  "\nCre" "do, " 
  "\ncre" "do " "in " Spi ri "tum " san "ctum, "
  "\nDo" mi "num " "et " vi vi fi can "tem, "
  "\nqui " "ex " Pa "tre " "et " Fi li "o " pro ce "dit, "
                                % 24b
  "\nsi" "mul " a do ra "tur "
  "\ncon" glo ri fi ca "tur, "
  "\nper " Pro phe "tas. "
  "\nCon" fi te "or " u "num " ba pti "sma "
                                % 25a
  "\nin " re mis si o "nem " pec cas to "rum "
  "\nmor" tu o "rum, "
  "\net " vi "tam " ven tu "ri " sæ cu "li, "
  "\net " vi "tam " ven tu "ri " sæ cu "li. "
  "\nA" "men, " a "men, " a "men, " a "men. "
}

dynamicsBassCredo = {
  \override DynamicTextSpanner.style = #'none
  s1\pp | s1*14 | s1\> | s\! | s1*4 |
  s1*21 | % 17
  s1*5 | s2. s4\p | s1*15 |
  s1*9 | s1\f | s1*11 | % 19
  s1\p | s1*11 | s1\ff | s1*5 |
  s1*15 | % 21
  s1*7 | s1\ff | s1*8 |
  s1*4 | s1\pp | s1*11 | % 23
  s1*18 |
  s1*21 | % 25
}

bassCredo = \relative {
  \globalCredo
  g,2 4 4 | d'2. b4 | a1 | e' | c4(d) e fis | g2 c, | d1 |
  d1 | g,2 4 4 | d'2 4 b | a1 | e' | c2. 4 | g'2 c,4 4 |
  d2 d | g1 | c,4(d e) fis | g2 c, | d d | g,1 | R |
  R1 | d'2. 4 | 2 2 | R1*2 | e2. 4 | 4. 8 2 | % 17a
  R1 | r2 g4 g | 2 4 4 | 4. 8 2 | fis2 4 4 | 2 g | a2 4 4 |
  a4. 8 g2 | fis2 2 | 2 4 4 | a2 2 | 2 g | c,4. 8 4 4 | g'2 2 |
  d1 | g | c,2 2 | g'2 4 4 | d2. 4 | g,2 r4 g' | 2 4 4 | % 18a
  fis4.  8 4 4 | a2 4 4 | e2 4 c | 2 b4 4 | a2(g) | d' d | d d |
  g1 | fis | a | e | 2 4 4 | d2 2 | ais'2. 4 |
  b2 2 | cis2. 4 | d2 d, | e2. 4 | fis2 2 | b,1 | R | % 19a
  R1*2 | b'1~ | 2 2 | 1 | 1 | g2. 4 |
  g2 2 | 1 | 2 2 | eis2. 4 | fis2 2 | gis1 | ais |
  b2. 4 | g2 2 | e1 | fis | b, | R1*2 | % 20a
  R1*5 | d2 4 4 |
  a'2 2 | e2 4 4 | b'2 4 4 | g1 | d2 g |
  a1 | 2 r | d,2. 4 | g2 4 4 | e1 | % 21a
  a2 r | fis2 4 4 | b2 4 4 | e,2(fis) | b,2 r4 b' |
  e,2. 4 | fis2 2 | e2. 4 | fis2 2 | b,2. 4 |
  cis2 4 4 | b1 | cis2 r | c1 | b2 2 | % 22a
  c2. 4 | b2 r | b'1~ | 2 2 | 2 4. 8 | 2 2 |
  c,1~ | c~ | c~ | c | b2 r |
  R1*3 | R1\fermata | % 23a
  g1 | d'2.(b4) | a1 | e'2 2 | c2 4 4 | g'2 c, |
  d2. 4 | 1 | g, | d'2 4 b | a1 | e'2 4 4 |
  c2 4 4 | g'4. 8 c,4 4 | d1 | g,2 r | R1*2 | % 24a
  d'4. 8 4 4 | 2 2 | R1*2 | e4. 8 4 4 | 2 2 |
  R1*2 | g2. 4 | 2 4 e | fis2 4 4 | 2 g4 4 |
  a2 2 | 4. 8 g4 4 | fis2 2 | 2 g | a4. 8 4 4 | 2 g4 4 | % 25a
  c,2 4 4 | g'2 2 | d2. 4 | g2 2 | c,2 4 4 | g'2 2 | d2. 4 |
  g,2 r | c1 | g'2 r | c,1 | g'2 r | d2 2 | 1 | g,\fermata |
  \bar "|." \break \pageBreak
}

wordsBassCredo = \lyricmode {
  Cre -- do in u -- num De -- um,
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cœ -- li et ter -- ræ,
  vi -- si -- bi -- li -- um om -- ni -- um
  et in -- vi -- si -- bi -- li -- um.
                                % 17a
  Je -- sum Chri -- stum u -- ni -- ge -- ni -- tum,
  an -- te om -- ni -- a sæ -- cu -- lam
  De -- um de  De -- o,
  lu -- men de lu -- mi -- ne,
  De -- um ve -- rum de De -- o ve -- ro,
  con sub -- stan -- ti -- a -- lem Pa -- tri,
                                % 18a
  per quem  om -- ni -- a fa -- cta sunt,
  qui prop -- ter nos ho -- mi -- nes
  et no -- stram sa -- lu -- tem de -- scen -- dit
  de cœ -- lis.
  Et in -- car -- na -- tus
  est de Spi -- ri -- tu san -- cto ex Ma -- ri -- a
  vir -- gin -- e, et ho -- mo fa -- ctus est.
                                % 19b
  Cru -- ci -- fi -- xus e -- ti -- am
  pro  no -- bis sub Pon -- ti -- o Pi -- la -- to,
                                % 20a
  pas -- sus et se -- pul -- tus est.
  Et re -- sur -- re -- xit ter -- ti -- a
  di -- e se -- cun -- dum scrip -- tu -- ras,
                                % 21a
  et a -- scen -- dir in cœ -- lum,
  se -- det ad dex -- te -- ram Pa -- tris.
  Et i -- te -- rum ven -- tu -- rus est,
  cum glo -- ri -- a in -- di -- ca -- re
                                % 22a
  vi -- vos et mor -- tu -- os,
  cu -- ius re -- gni nopn e -- rit fi -- nis.
                                % 23b
  Cre -- do, __
  cre -- do in Spi -- ri -- tum san -- ctum,
  Do -- mi -- num et vi -- vi -- fi -- can -- tem,
  qui ex Pa -- tre et Fi -- li -- o pro -- ce -- dit,
                                % 24b
  si -- mul a -- do -- ra -- tur
  con -- glo -- ri -- fi -- ca -- tur,
  per Pro -- phe -- tas.
  Con -- fi -- te -- or u -- num ba -- pti -- sma
                                % 25a
  in re -- mis -- si -- o -- nem pec -- cas -- to -- rum
  mor -- tu -- o -- rum,
  et vi -- tam ven -- tu -- ri sæ -- cu -- li,
  et vi -- tam ven -- tu -- ri sæ -- cu -- li.
  A -- men, a -- men, a -- men, a -- men.
}

wordsBassCredoMidi = \lyricmode {
  "\nCre" "do " "in " u "num " De "um, "
  "\nPa" "trem " om ni po ten "tem, "
  "\nfac" to "rem " cœ "li " "et " ter "ræ, "
  "\nvi" si bi li "um " om ni "um "
  "\net " in vi si bi li "um. "
                                % 17a
  "\nJe" "sum " Chri "stum " u ni ge ni "tum, "
  "\nan" "te " om ni "a " sæ cu "lam "
  "\nDe" "um " "de "  De "o, "
  "\nlu" "men " "de " lu mi "ne, "
  "\nDe" "um " ve "rum " "de " De "o " ve "ro, "
  "\ncon " sub stan ti a "lem " Pa "tri, "
                                % 18a
  "\nper " "quem "  om ni "a " fa "cta " "sunt, "
  "\nqui " prop "ter " "nos " ho mi "nes "
  "\net " no "stram " sa lu "tem " de scen "dit "
  "\nde " cœ "lis. "
  "\nEt " in car na "tus "
  "\nest " "de " Spi ri "tu " san "cto " "ex " Ma ri "a "
  "\nvir" gin "e, " "et " ho "mo " fa "ctus " "est. "
                                % 19b
  "\nCru" ci fi "xus " e ti "am "
  "\npro "  no "bis " "sub " Pon ti "o " Pi la "to, "
                                % 20a
  "\npas" "sus " "et " se pul "tus " "est. "
  "\nEt " re sur re "xit " ter ti "a "
  "\ndi" "e " se cun "dum " scrip tu "ras, "
                                % 21a
  "\net " a scen "dir " "in " cœ "lum, "
  "\nse" "det " "ad " dex te "ram " Pa "tris. "
  "\nEt " i te "rum " ven tu "rus " "est, "
  "\ncum " glo ri "a " in di ca "re "
                                % 22a
  "\nvi" "vos " "et " mor tu "os, "
  "\ncu" "ius " re "gni " "nopn " e "rit " fi "nis. "
                                % 23b
  "\nCre" "do, " 
  "\ncre" "do " "in " Spi ri "tum " san "ctum, "
  "\nDo" mi "num " "et " vi vi fi can "tem, "
  "\nqui " "ex " Pa "tre " "et " Fi li "o " pro ce "dit, "
                                % 24b
  "\nsi" "mul " a do ra "tur "
  "\ncon" glo ri fi ca "tur, "
  "\nper " Pro phe "tas. "
  "\nCon" fi te "or " u "num " ba pti "sma "
                                % 25a
  "\nin " re mis si o "nem " pec cas to "rum "
  "\nmor" tu o "rum, "
  "\net " vi "tam " ven tu "ri " sæ cu "li, "
  "\net " vi "tam " ven tu "ri " sæ cu "li. "
  "\nA" "men, " a "men, " a "men, " a "men. "
}

pianoRHoneCredo = \relative {
  \globalCredo
  <d' g b>1 | \vo <fis a>2.(<gis b>4) | \ov <e a c>1 | <e gis b> <g c e> <g b d>2(<e a c>) | <d g b>1 |
  <d fis a>1 | <d g b> | \vo <fis a>2.(<gis b>4) | \ov <e a c>1 | <e gis b> | <g c e> | <g b d>2(<e a c>) |
  <d g b>2(<d fis a>) | <d f b>1 | \vo e' \ov | <b d>2(<e, a c>) | <d g b> <d fis a> | <b g'>1 | <d d'>~ |
  \vo q1 | q1_( | q) | <e e'>1~ | q | <a e'>1~_( | <b e>) | % 17a
  <g g'>1~ | q | <g c>~ | g | <ees a c>( | <ees' c'>) | <d, fis c'>( |
  <d' c'>1) | <c ees>~ | q | d~ | d | <e, g c> | s |
  \vt <d a'>1( | <d g b>) | <e g c> | s | <d a'> | \ov <b g'> | <b' b'>4(<a a'> <b b'> <c c'>) | % 18a
  <d d'>4(<e e'> <d d'> <c c'>) | % 18b
  <a a'>(<gis gis'> <a a'> <b b'>) |
  <c c'>4(<d d'> <c c'> <a a'>) |
  <fis fis'>4(<a a'> <b b'> <d d'>) |
  <c c'>4(<d d'> <b b'> <d d'>) |
  <a a'>4(<fis fis'> e' d |
  cis4 d <g, g'> <a a'>) |
  <b b'>4(<a a'> <b b'> <c c'>) | % 18c
  <d d'>4(<e e'> <d d'> <c c'>) |
  <a a'>4(<gis gis'> <a a'> <b b'>) |
  <c c'>4(<d d'> <c c'> <g g'>) |
  <g g'>4(<fis fis'> <g g'> <a a'>) |
  <b b'>4(<c c'> <b fis' b> <fis fis'>) |
  <cis' fis cis'>4(<d d'> <cis cis'> <fis, fis'>) |
  <d' fis d'>4(<e e'> <d fis d'> <b b'>) | % 19a
  \vo fis'1 |
  \vt <b, fis' b>4^( s \vo e d) |
  cis4(e fis g) |
  \ov <fis, fis'>4(<d d'> <cis cis'> <fis fis'>) |
  b4(cis d cis |
  b4 a g fis) |
  e4(g fis e | % 19b
  fis4 e d cis) |
  b4-. cis-. d-. cis-. |
  b4-.^\markup\italic staccato cis-. d-. cis-. |
  b4 d fis e |
  d cis b a |
  g a b a |
  g4 a b a | g4 b' d cis | b4 a g fis | eis4 fis g eis | fis4 g fis b | gis4 b ais gis | ais4 cis fis, ais | % 19c
  b4 d b a | g4 b g fis | e d c e | fis e fis fis | b(cis d cis) | b(a g fis) | e(g fis e) | % 20a
  fis4(e d cis) | b(d cis b) | cis(e fis g) | fis(d' b gis) | a(g fis e) | <d fis>8 d' e, e' fis, fis' g, g' |
  <a, cis e>8 a' b, b' q a e, e' | % 20c
  <g, b>8 g' fis, fis' e, e' g, g' |
  <b, dis fis>8 b' c, c' q b fis, fis' |
  <g, b>8 g' a, a' b, b' cis, cis' |
  <d, fis>8 d' fis,, fis' <e, b'> e' b b' |
  \vo <d, fis>1 | <cis e> | % 21a
  \ov <d, fis c' d>4 fis8 fis' a, a' c, c' |
  <b, d g>8 b' a, a' <g, b> g' b, b' |
  <e,, gis d' e>4 gis8 gis' b, b' d, d' |
  <cis, e a>8 cis' b, b' <a, cis> a' cis, cis' | % 21b
  <fis,, ais e' fis>4 ais8 ais' cis, cis' e, e' |
  <d, fis b>8 d' ais, ais' <b, d> b' d,, d' |
  <e, g>8 e' cis cis' <cis,, e> cis' ais ais' |
  <b, d>8 b' fis, fis' d, d' b, b' |
  <g b>8 g' e, e' cis, cis' b, b' | % 21c
  <ais, fis'>8 ais' cis, cis' fis, fis' c, c' |
  <g' b>8 g' e, e' cis, cis' b, b' |
  <ais,, fis'>8 ais' cis, cis' fis, fis' cis cis' |
  <d, fis>8 d' b, b' gis, gis' fis, fis' |
  <eis, cis'>8 eis' gis, gis' cis, cis' gis, gis' | % 22a
  <d fis>8 d' b, b' gis, gis' fis, fis' |
  <eis, cis'>8 eis' gis, gis' cis, cis' gis, gis' |
  <a, dis fis a>4 <fis fis'> <dis dis'> <a a'> |
  <dis fis a dis>4 <a a'> <dis fis a dis> <fis fis'> |
  <a dis fis a>4 <fis fis'> <dis dis'> <a a'> | % 22b
  <dis fis a dis>4 <a a'> <dis fis a dis> <fis fis'> |
  <a a'>4 <b b'> <c c'> <a a'> |
  <fis fis'>4 <dis dis'> <c c'> <a a'> |
  fis'8 a, a' a, e' a, a' a, |
  dis8 a a' a, b a a' a, \clef bass |
  \repeat unfold 8 {c8 c,} \clef treble | % 22c
  \repeat unfold 8 {<e'' gis a>8 ais,} |
  <b dis fis b>4 b8 b' \lh fis, \rh fis' \lh dis, \rh dis' |
  \lh b, \rh b' \lh b, \rh b' \lh fis, \rh fis' \lh dis, \rh dis' % 23a
  \lh b, \rh b' \lh b \rh b' \lh fis, \rh fis' \lh dis, \rh dis' |
  \lh b, \rh b' \lh <b, b'> \rh b'' \lh <fis,, fis'> \rh fis'' \lh <dis,, dis'> \rh dis'' |
  \ov b4 r <b' dis fis b> r\fermata |
  <d, g b>1 | \vo <fis a>2.(<gis b>4) | \ov <e a c>1 | <e gis b> | <g c e> | <g b d>2(<e a c>) | % 23b
  <d g b>1 | <d fis a> | <d g b> | \vo <fis a>2.(<gis b>4) | \ov <e a c>1 | <e gis b> |
  <g c e>1 | <g b d>2(<e a c>) | <d g b>2(<d fis a>) | <b g'>1 | <d d'>~ | \vo q | % 24a
  <g d'>1~ | <a d> | <e e'>1~ | q | <a e'>~ | <b e> |
  <g g'>1~ | q | <g c>~ | g | \ov <d a' c> | \vo <d' c'> \ov |
  <d, fis c'>1^( | \vo <d' c'>) | <a c d>( | <c d'>) | <fis, d'>( | d'') | % 25a
  \ov <e,, g c>1 | s | \vt <d a'>( | \ov <d g b>) | <e g c> | <d g b>2 2 | <d fis a>1 |
  <b g'>2 <g b d> | <g c e>1 | <g b d>2 2 | <g c e>1 | <g b d>2 <b d> | <c d fis> \vo <b d g>~ | g' fis | <b, d g>1\fermata |
}

pianoRHtwoCredo = \relative {
  \globalCredo \vt
  s1 | d' | s1*7 | d1 | s1*6 | e4(fis g a) | s1*3 | g1~^( |
  <g cis>2 <fis c'>) | b2^(bes | g fis) | a1~ | <a dis>2 <gis d'> | cis^(c |  a gis) % 17a
  c1~^( | c2 <b f'>) | e^(ees | <b d> <bes cis>) | s1 | a'2^(g) | s1 |
  fis2(g) | a,1~ | 2(g) | <fis c'>1~ | 2(<g b>) | s1 | \vo <d g b>2 2~ |
  g2(fis) | s1*2 | <d g b>2 2~ | g(fis) | s1*16 | % 18
  s1 | \vt <ais ais'>4(<b b'> <cis cis'> <d d'>) | s <fis, fis'>~ fis2 | g2. fis4 | s1*17 |
  s1*18 | % 20
  a8 a' gis, gis' a, a' b, b' | a, a' g, g' fis, fis' e, e' | s1*13 |
  s1*16 | % 22
  s1*5 | d,1 | s1*7 | d1 | s1*2 |
  s1*4 | g1~ | <g cis>2 <fis c'> | % 24a
  b2(bes | g) fis | a1~ | <a dis>2 <gis d'> | cis2(c | a) gis |
  c1~ | <c fis>2 <b f'> | e(ees | <b d> <bes cis>) | s1 | a'2(g) |
  s1 | fis2(g) | s1 | a2(g) | c,1~ | <c fis>2 (<b g'>) | % 25a
  s1 | \vo <d, g b>2 2~ | g(fis) | s1*4 |
  s1*6 | <a, d>1 | s1 |
}

dynamicsPianoCredo = {
  \override DynamicTextSpanner.style = #'none
  s1\pp | s1*14 | s1\fz\> | s\> | s\! | s1*2 | s1\> |
  s1\! | s1*2 | s1\> | s4 s2.\! | s1*2 | s1\> | s4 s2.\! | s1\> | s\! | s\> | s\! | s\> | s\! | s\> | s\! | s1*2 | s1\> | s\! | % 17
  s1*2 | s1\> | s\! | s1*2 | s1\p | s1*14 |
  s1*6 | s1\cresc | s1*2 | s1\f | s1*11 | % 19
  s1\p | s1*3 | s1\omit\f-\markup{\dynamic f \italic legato} | s1*7 | s1\ff | s1*5 |
  s1*10 | s1\fz | s | s\fz | s | s\fz | % 21
  s1*3 | s1\fz | s | s\fz | s | s\ff\> | s\! | s2\fz s\fz | s\fz s\fz | s1\fz | s1*4 |
  s1*4 | s1\pp | s1*11 | % 23
  s1*4 | s1\> | s\! | s1*2 | s1\> | s4 s2.\! | s1*2 | s1\> | s4 s2.\! | s1\> | s\! | s\> | s\! |
  s1\> | s\! | s\> | s\! | s1*2 | s1\> | s\! | s1*2 | s1\> | s\! | s1*9 | % 25
}

pianoLHoneCredo = \relative {
  \globalCredo \ov
  g,4-. a-. b-. c-. | d e d b | a b c d | e f e d | c d e fis | g b, c a | d b g b |
  d4 c b a | g a b c | d e d b | a b c d | e f e d | c d e fis | g b, c a |
  d4 cis d d, | g a b g | \vt c d e fis | g b, c a | \ov d cis d d, | g a b c | b d g d |
  bes4 d a d | g, a g bes | d e fis d | c e a e | c e b e | a, b a c | e f e d | % 17a
  e4 g c g | ees g d g | c, d c ees | g d e g | fis a c a | fis c' g c | a gis a c |
  a4 c g c | fis, a c a | fis c' g c | a gis a c | a d, g g, | c d e fis | g fis g b, |
  d4 e d c | b a g g' | c, d e fis | g fis g b, | d c d d, | g g b d | <g d>1 | % 18a
  <fis a>2 2 | <a c>1 | <e c'>2. <c e>4 | \vo d1~ | 1 \ov | <d d'>2 d'~ | d~ \vo d |
  \ov <g, d'>1 | <fis d'>2 2 | <a c>1 | <e c'>2 2 | <e b'>1 | <d b'>2 2 | <ais fis' ais>1 |
  <b fis' b>2 <b b'> | <cis cis'>1 | <d d'>2 2 | \vo e'2. s4 | % 19a
  \ov <fis, d'>2 <fis ais> | <b, b'>4(<cis cis'> <d d'> <cis cis'> |
  <b b'> <a a'> <g g'> <fis fis'>) |
  <a a'>4(<g g'> <fis fis'> <e e'> | <fis fis'> <e e'> <d d'> <cis cis'>) | % 19b
  <b b'>4-. <cis cis'>-. <d d'>-. <cis cis'>-. |
  <b b'>4-. <cis cis'>-. <d d'>-. <cis cis'>-. |
  <b b'>4 <d d'> <fis fis'> <e e'> |
  <d d'>4 <cis cis'> <b b'> <a a'> |
  <g g'>4 <a a'> <b b'> <a a'> |
  <g g'>4 <a a'> <b b'> <a a'> | % 19c
  <fis fis'> <b' b'> <d d'> <cis cis'> |
  <b b'>4 <a a'> <g g'> <fis fis'> |
  <eis eis'>4 <fis fis'> <g g'> <e e'> |
  <fis fis'>4 <g g'> <fis fis'> <b b'> |
  <gis gis'>4 <b b'> <ais ais'> <gis gis'> |
  <ais ais'>4 <cis cis'> <fis, fis'> <a a'> |
  <b b'>4 <d d'> <b b'> <a a'> | % 20a
  <g g'>4 <b b'> <g g'> <fis fis'> |
  <e e'>4 <d d'> <c c'> <e e'> |
  <fis fis'>4 <e e'> <fis fis'> q |
  <b b'>4(<cis cis'> <d d'> <cis cis'>) |
  <b b'>4(<a a'> <g g'> <fis fis'>) |
  <e e'>4(<g g'> <fis fis'> <e e'>) |
  <fis fis'>4(<e e'> <d d'> <cis cis'>) | % 20b
  <b b'>4(<d d'> <cis cis'> <b b'>) |
  <cis cis'>(<e e'> <fis fis'> <g g'>) |
  <fis fis'>4(<d' d'> <b b'> <gis gis'>) |
  <a a'>4(<g g'> <fis fis'> <e e'>) |
  <d d'>1 |
  <a' a'>2 q | <e e'>1 | <b' b'>2 2 | <g g'>1 | <d d'>2 <g g'> | % 20c
  <a a'>1 | <a, a'> | <d d'> | <g g'>2 2 | <e e'>1 | % 21a
  <a a'>1 | <fis fis'>1 | <b b'>2 2 | <e, e'> <fis fis'> | <b, b'>2 r |
  e8 e' e,e' e, e' e, e' | % 21c
  <fis, fis'>2 2 |
  e8 e' e, e' e, e' e, e' |
  <fis, fis'>2 2 |
  b,8 b' b, b' b, b' b, b' |
  <cis, cis'>2 2 | b8 b' b, b' b, b' b, b' | q2 q | c,8 c' c, c' c, c' c, c' | <b, b'>2 2 | % 22a
  c8 c' c, c' c, c' c, c' | q2 q | <b b'>8 4 4 4 8~ | 8 <b, b'>4 4 4 8~ | 4 r q r | q r q r |
  \ottava #-1 \repeat unfold 8 {c,8 c'} | \ottava #0 \repeat unfold 8 {c' c'} | <b, b'>4 s2. |
  s1*3 | <b, b'>4 r <b' b'> r\fermata | % 23a
  g4-. a-. b-. c-. | d e d b | a b c d | e f e d | c d e fis | g b, c a |
  d4 b g b | d c b a | g a b c | d e d b | a b c d | e f e d |
  c4 d e fis | g b, c a | d cis d d, | g g' d c | b d g d | bes d a d | % 24a
  g,4 a g bes | d e fis d | c e a e | c e b e | a, b a c | e f e d |
  e4 g c g | ees g d g | c, d c ees | g d e g | fis a c a | fis c' g c |
  a4 gis a c | a c g c | fis, a c a | fis c' g c | a gis a c | a d, g g, | % 25a
  c4 d e fis | g fis g b, | d e d c | b a g g' | c, d e fis | g fis g b, | d c d d, |
  g4 a b g | c g e c | g' a b g | c g e c | g' a b g | a d g, b | d c d d, | g1\fermata |
}

pianoLHtwoCredo = \relative {
  \globalCredo \vo
  s1_\markup "coll' 8va ad lib." | s_\markup\italic "sempre staccato" | s1*14 | c'1 | b2 r | s1*3 |
  s1*21 | % 17
  s1*10 | \vt c,2(b | a g) | s1 | s2 b'4(a) | s1*7 |
  s1*21 | % 19
  s1*18 |
  s1*15 | % 21
  s1*16 |
  s1*4 | s1_\markup "coll' 8va ad lib." | s_\markup\italic "sempre staccato" | s1*10 | % 23
  s1*18 |
  s1*21 | % 25
}
