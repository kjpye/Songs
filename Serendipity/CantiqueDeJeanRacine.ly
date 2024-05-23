\version "2.25.16"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Cantique de Jean Racine"
  subtitle    = "(A Song of Praise)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Gabriel Fauré"
%  arranger    = "arranger"
  opus        = "Op. 11"

  poet        = "English Text adapted by Howard D. McKinney"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
}

TempoTrack = {
  \tempo Andante 4=180
  s1
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "2a" } s1*2
  \textMark \markup { \box "2b" } s1*2
  \textMark \markup { \box "2c" } s1*2
  \textMark \markup { \box "2d" } s1*2
  \textMark \markup { \box "2e" } s1*2
  \textMark \markup { \box "3a" } s1*2
  \textMark \markup { \box "3b" } s1*2
  \textMark \markup { \box "3c" } s1*2
  \textMark \markup { \box "4a" } s1*2
  \textMark \markup { \box "4b" } s1*2
  \textMark \markup { \box "5a" } s1*2
  \textMark \markup { \box "5b" } s1*2
  \textMark \markup { \box "6a" } s1*2
  \textMark \markup { \box "6b" } s1*2
  \textMark \markup { \box "7a" } s1*2
  \textMark \markup { \box "7b" } s1*2
  \textMark \markup { \box "8a" } s1*2
  \textMark \markup { \box "8b" } s1*2
  \textMark \markup { \box "8c" } s1*2
  \textMark \markup { \box "8d" } s1*2
  \textMark \markup { \box "9a" } s1*2
  \textMark \markup { \box "9b" } s1*2
  \textMark \markup { \box "10a" } s1*2
  \textMark \markup { \box "10b" } s1*2
  \textMark \markup { \box "11a" } s1*2
  \textMark \markup { \box "11b" } s1*2
  \textMark \markup { \box "12a" } s1*2
  \textMark \markup { \box "12b" } s1*2
  \textMark \markup { \box "13a" } s1*2
  \textMark \markup { \box "13b" } s1*2
  \textMark \markup { \box "14a" } s1*2
  \textMark \markup { \box "14b" } s1*2
  \textMark \markup { \box "15a" } s1*2
  \textMark \markup { \box "15b" } s1*2
  \textMark \markup { \box "16a" } s1*2
  \textMark \markup { \box "16b" } s1*2
  \textMark \markup { \box "17a" } s1*2
  \textMark \markup { \box "17b" } s1*2
  \textMark \markup { \box "18a" } s1*2
  \textMark \markup { \box "18b" } s1*2
  \textMark \markup { \box "19a" } s1*2
  \textMark \markup { \box "19b" } s1*2
  \textMark \markup { \box "20a" } s1*2
  \textMark \markup { \box "20b" } s1*3
}

soprano = \relative {
  \global
  R1*20
  r2 r4^\markup\smallCaps soprano a'4^\pp % 5a
  d4 cis b cis
  b2 a4 cis % 5b
  b2 d
  cis2.^\cresc 4 % 6a
  b4 4 d d
  cis2 4 a^\f % 6b
  fis'4(cis) d(fis)
  e4 d cis cis % 7a
  cis2^\p(b)
  a2 r % 7b
  R1
  R1*6 % 8a
  r2 r4 cis^\markup Quietly % 8d
  cis2 b
  gis4 eis fis gis8 8 % 9a
  a2 b4 cis
  cis2 d4 4 % 9b
  d2^\cresc cis
  ais4 4 b cis % 10a
  d4^\f d e fis
  fis4. g8 4 4\omit\p^\markup{\dynamic p \italic subito}
  fis4(cis) 2
  cis4 d8(e) d4 4 % 11a
  cis4 gis4 4 4
  gis4(ais8 b) ais4 r % 11b
  R1
  r4 b4^\mf fis' b, % 12a
  cis4 8 8 4 d8 e
  e4 d r2 % 12b
  R1
  r4 b^\f fis' d % 13a
  e4 8 8 4 d8 e
  fis2 r % 13b
  R1
  R1*6 % 14a
  r2 r4 a,^\p % 15b
  d4 cis b a
  a2 g4 b % 16a
  e4^\cresc d cis b
  b2 a4 4 % 16b
  fis'\omit\f^\markup{\dynamic f \italic sempre}(cis d) fis
  e4(d) cis cis % 17a
  cis2 b4. 8
  a2. 4\omit\pp^\markup{\dynamic pp \italic subito} % 17b
  b4(fis) g b
  a4^\< (e'\!) d^\> fis,\! % 18a
  fis2^\pp e4. d8
  d2. r4 % 18b
  R1
  r2 r4 fis^\pp % 19a
  e2 g
  fis2. r4 % 19b
  R1
  r2 fis^\ppp % 20a
  fis1^\markup\italic "poco rall."
  e1 % 20b
  d1~
  d1
  \bar "|."
}

wordsSop = \lyricmode {
  We come and kneel be -- fore Thee,
  O Sav -- iour, come and give us now Thy bless -- ing,
  O Sa -- viour __ come and give Thy bless -- ing!
  Send down to us the fire of Thy pow’r o -- ver whelm -- ing,
  Thy won -- drous might, Thy won -- drous might dis -- pels the foes of hell,
  O give __ our slee -- ping __ souls
  The ra -- diance of Thy spi -- rit,
  That they may wa -- ken and tell of Thy pow -- er,
  That they may wa -- ken and tell of Thy power!

  And hear the praise we give now,
  The praise to Thy great glo -- ry,
  Ac -- cept __ these gifts __ we re -- turn un -- to Thee,
  Ac -- cept __ these our gifts __ we re -- turn now to Thee.
  O migh -- ty One.
  E -- ter -- nal __ God. __
}

wordsSopMidi = \lyricmode {
  "We " "come " "and " "kneel " be "fore " "Thee, "
  "\nO " Sav "iour, " "come " "and " "give " "us " "now " "Thy " bless "ing, "
  "\nO " Sa "viour "  "come " "and " "give " "Thy " bless "ing! "
  "\nSend " "down " "to " "us " "the " "fire " "of " "Thy " "pow’r " o "ver " whelm "ing, "
  "\nThy " won "drous " "might, " "Thy " won "drous " "might " dis "pels " "the " "foes " "of " "hell, "
  "\nO " "give "  "our " slee "ping "  "souls "
  "\nThe " ra "diance " "of " "Thy " spi "rit, "
  "\nThat " "they " "may " wa "ken " "and " "tell " "of " "Thy " pow "er, "
  "\nThat " "they " "may " wa "ken " "and " "tell " "of " "Thy " "power! "

  "\nAnd " "hear " "the " "praise " "we " "give " "now, "
  "\nThe " "praise " "to " "Thy " "great " glo "ry, "
  "\nAc" "cept "  "these " "gifts "  "we " re "turn " un "to " "Thee, "
  "\nAc" "cept "  "these " "our " "gifts "  "we " re "turn " "now " "to " "Thee. "
  "\nO " migh "ty " "One. "
  "\nE" ter "nal "  "God. " 
}

alto = \relative {
  \global
  R1*18
  r2 r4^\markup\smallCaps alto fis'4^\pp % 4b
  a4 4 g g
  fis2. 4^\pp % 5a
  fis4 4 4 eis
  eis2 fis4 a % 5b
  a2 gis
  e4 eis fis g % 6a
  fis2 gis
  gis2 a4 g^\f % 6b
  fis2 4(c')
  b4^\> gis a fis % 7a
  e2^\p(d)
  cis2 r
  R1
  R1*6 % 8a
  r2 r4 e % 8d
  e2 d
  cis4 4 dis eis8 8 % 9a
  fis2 gis4 ais
  ais2 b4 4 % 9b
  b2^\cresc g
  fis4 4 4 4 % 10a
  fis4^\f b b a
  a4. g8 4 b\omit\p^\markup{\dynamic p \italic subito} % 10b
  ais4(e) e(b')
  ais4 4 b fis % 11a
  eis4 b b fis'
  eis2 fis4 r % 11b
  r2 r4 fis^\mf
  b2. 4 % 12a
  b4 8 8 ais4 8 8
  gis4 b r2 % 12b
  r2 r4 fis^\f
  b2. fis4 % 13a
  a4 8 8 b4 8 8
  ais2 r % 13b
  R1
  R1*4 % 14
  r2 r4 fis^\p % 15a
  a4 4 g g
  fis2 2 % 15b
  fis2. 4
  e2 4 r % 16a
  g2 4 4
  fis2 4 g % 16b
  fis2.^\f c'4
  b4(gis) a fis % 17a
  e2 4. 8
  e2 fis\omit\pp^\markup{\dynamic pp \italic subito} % 17b
  d4(dis) e f
  a4^\< (e'\!) d4^\> eis % 18a
  fis2^\pp fis,4. 8
  d2. r4 % 18b
  R1
  r2 r4 d^\pp % 19a
  d2 cis
  d2. r4 % 19b
  R1
  r2 cis^\ppp % 20a
  d1^\markup\italic "poco rall."
  cis2.(d4) % 20b
  d1~
  d1
  \bar "|."
}

wordsAlto = \lyricmode {
  O Lord of earth and sky
  We come and kneel be -- fore Thee,
  O Sav -- iour, come and give us now Thy bless -- ing,
  O Sa -- viour __ come and give Thy bless -- ing!
  Send down to us the fire of Thy pow’r o -- ver whelm -- ing,
  Thy won -- drous might, Thy won -- drous might dis -- pels the foes of hell,
  O give __ our slee -- ping __ souls
  The ra -- diance of Thy spi -- rit,
  That they may wa -- ken and tell of Thy pow -- er,
  That they may wa -- ken and tell of Thy power!

  And hear the praise, and hear now, praise we give now,
  praise to Thy glo -- ry,
  Ac -- cept __ these gifts __ we re -- turn un -- to Thee,
  Ac -- cept __ these our gifts __ we re -- turn now to Thee.
  O migh -- ty One.
  E -- ter -- nal __ God. __
}

wordsAltoMidi = \lyricmode {
  "O " "Lord " "of " "earth " "and " "sky "
  "\nWe " "come " "and " "kneel " be "fore " "Thee, "
  "\nO " Sav "iour, " "come " "and " "give " "us " "now " "Thy " bless "ing, "
  "\nO " Sa "viour "  "come " "and " "give " "Thy " bless "ing! "
  "\nSend " "down " "to " "us " "the " "fire " "of " "Thy " "pow’r " o "ver " whelm "ing, "
  "\nThy " won "drous " "might, " "Thy " won "drous " "might " dis "pels " "the " "foes " "of " "hell, "
  "\nO " "give "  "our " slee "ping "  "souls "
  "\nThe " ra "diance " "of " "Thy " spi "rit, "
  "\nThat " "they " "may " wa "ken " "and " "tell " "of " "Thy " pow "er, "
  "\nThat " "they " "may " wa "ken " "and " "tell " "of " "Thy " "power! "

  "\nAnd " "hear " "the " "praise, " "and " "hear " "now, " "praise " "we " "give " "now, "
  "\npraise " "to " "Thy " glo "ry, "
  "\nAc" "cept "  "these " "gifts "  "we " re "turn " un "to " "Thee, "
  "\nAc" "cept "  "these " "our " "gifts "  "we " re "turn " "now " "to " "Thee. "
  "\nO " migh "ty " "One. "
  "\nE" ter "nal "  "God. " 
}

tenor = \relative {
  \global
  R1*14
  r2 r4^\markup\smallCaps tenor a^\pp % 3c
  d4 cis b a
  cis2 d4 4 % 4a
  d2 cis
  d2 4 4 % 4b
  d2. cis4
  d2. a4 % 5a
  b4 cis d cis
  cis2 4 e % 5b
  fis2 b,
  a4 b a ais % 6a
  b2. 4
  b2 a4 cis^\f % 6b
  d4(ais) b(dis)
  e4^\> b a a\! % 7a
  gis1^\p
  a2 r % 7b
  R1
  R1*6 % 8a
  r2 r4 a % 8d
  a2 fis
  eis4 cis' cis b8 8 % 9a
  a4(fis') 4 4
  e2 d4 fis % 9b
  fis2^\cresc e
  cis4 fis fis fis % 10a
  d4^\f b cis dis
  dis4. e8 4 r % 10b
  r4 g^\p fis e
  e4 d8(cis) d4 r % 11a
  r4 d cis b
  b4(ais8 gis) ais4 r % 11b
  r4 b^\mf fis' fis
  fis4(e) d fis % 12a
  g2 fis8(e) d(cis)
  cis4 b r2 % 12b
  r4 b^\f fis' fis
  fis4(e) d d % 13a
  cis2 b4 4
  cis2 r % 13b
  R1
  r2 r4 a8^\p a % 14a
  d4(cis) b a
  cis2 d4 4 % 14b
  d2 cis
  d4. 8 4 4 % 15a
  d2 4 cis
  d1 % 15b
  r4 a4^\p d cis
  b1 % 16a
  r4 b4 e d
  cis2 4 4 % 16b
  d4^\f (ais b) dis
  e4(b) a a % 17a
  gis2 4. 8
  a2 c\omit\pp^\markup{\dynamic pp \italic subito} % 17b
  b4(a) g gis
  a4^\<(cis\!) d^\> b\! % 18a
  a2^\pp g4. a8
  fis2. r4 % 18b
  R1
  r2 r4 a^\pp % 19a
  g4(fis) e2
  fis2. r4 % 19b
  R1
  r2 aes^\ppp % 20a
  b1^\markup\italic "poco rall."
  g1 % 20b
  fis1~
  fis1
  \bar "|."
}

wordsTenor = \lyricmode {
  The hope of our sal -- va -- tion
  E -- ter -- nal God, Lord of earth __ and sky,
  We come and kneel be -- fore Thee,
  O Sav -- iour, come and give us now Thy bless -- ing,
  O Sa -- viour __ come and give Thy bless -- ing!
  Send down to us the fire of Thy pow’r o -- ver whelm -- ing,
  Thy won -- drous might, Thy won -- drous might dis -- pels the foes of hell,
  O give __ our slee -- ping __ souls
  Ra -- diance of spi -- rit,
  That they may wa -- ken and tell of Thy pow -- er,
  That they may wa -- ken and tell of Thy power!

  Come and bless, __ we im -- plore Thee,
  Thy peo -- ple, pen -- i -- tent be -- fore Thee, and hear
  And hear the praise to Thy great glo -- ry,
  Ac -- cept __ these gifts __ we re -- turn un -- to Thee,
  Ac -- cept __ these our gifts __ we re -- turn now to Thee.
  O migh -- ty One.
  E -- ter -- nal __ God. __
}

wordsTenorMidi = \lyricmode {
  "The " "hope " "of " "our " sal va "tion "
  "\nE" ter "nal " "God, " "Lord " "of " "earth "  "and " "sky, "
  "\nWe " "come " "and " "kneel " be "fore " "Thee, "
  "\nO " Sav "iour, " "come " "and " "give " "us " "now " "Thy " bless "ing, "
  "\nO " Sa "viour "  "come " "and " "give " "Thy " bless "ing! "
  "\nSend " "down " "to " "us " "the " "fire " "of " "Thy " "pow’r " o "ver " whelm "ing, "
  "\nThy " won "drous " "might, " "Thy " won "drous " "might " dis "pels " "the " "foes " "of " "hell, "
  "\nO " "give "  "our " slee "ping "  "souls "
  "\nRa" "diance " "of " spi "rit, "
  "\nThat " "they " "may " wa "ken " "and " "tell " "of " "Thy " pow "er, "
  "\nThat " "they " "may " wa "ken " "and " "tell " "of " "Thy " "power! "

  "\nCome " "and " "bless, "  "we " im "plore " "Thee, "
  "\nThy " peo "ple, " pen i "tent " be "fore " "Thee, " "and " "hear "
  "\nAnd " "hear " "the " "praise " "to " "Thy " "great " glo "ry, "
  "\nAc" "cept "  "these " "gifts "  "we " re "turn " un "to " "Thee, "
  "\nAc" "cept "  "these " "our " "gifts "  "we " re "turn " "now " "to " "Thee. "
  "\nO " migh "ty " "One. "
  "\nE" ter "nal "  "God. " 
}

bass = \relative {
  \global
  R1*12
  r2 r4^\markup\smallCaps bass fis8.^\pp 16 % 3b
  a2(g4.) 8
  fis2. 4 % 3c
  fis4 4 d a'
  a4(g) fis4 4 % 4a
  e2 g
  fis2 4 4 % 4b
  fis2(e4) 4
  d2 cis^\pp % 5a
  b4 a gis a
  fis2 fis'4 cis % 5b
  d2 e
  a4 gis fis e % 6a
  d2 fis
  eis2 fis4 a^\f % 6b
  d,4(fis) b(a)
  gis4^\> eis fis dis\! % 7a
  e1^p
  fis2 r % 7b
  R1
  R1*6 % 8a
  r2 r4 a, % 8d
  a2 b
  cis4 4 4 8 8 % 8a
  fis2 4 4
  b,2 4 b' % 9b
  b2^\cresc e,
  fis4 4 gis ais % 10a
  b4^\f 4 4 4
  e,4. 8 4 r % 10b
  r4 b'^\p ais g
  fis4 4 b, r % 11a
  r4 fis' eis d
  cis2 fis,4 fis'^\mf % 11b
  b2 a
  g2 fis4 d % 12a
  e2 fis4 4
  g2 r4 fis^\f % 12b
  b2 4(a)
  g2 fis4 b % 13a
  a2 g4 4
  fis2.^\> 4^\p % 13b
  a4 4 g g
  fis2 4 4 % 14a
  fis2 d4 a'
  a4(g) fis fis % 14b
  e2 g
  fis4. 8 4 4 % 15a
  fis2 e4 4
  d4 a^\p d cis % 15b
  b2 2
  e4 b e d % 16a
  cis2 4 4
  fis,4(cis') fis d % 16b
  d4^\f(fis b) a
  gis4(eis) fis dis % 17a
  e2 d4. 8
  cis2 d\omit\pp^\markup{\dynamic pp \italic subito} % 17b
  fis,4(b) e d
  cis^\<(g'\!) fis^\> gis\! % 18a
  a2^\pp a,4. 8
  d2. r4 % 18b
  R1
  r2 r4 a^\pp % 19a
  a2 2
  d2. r4 % 19b
  R1
  r2 fis,2^\ppp % 20a
  g1^\markup\italic "poco rall."
  a1 % 20b
  d1~
  d1
  \bar "|."
}

wordsBass = \lyricmode {
  O Thou migh -- ty One,
  The hope of our sal -- va -- tion,
  E -- ter -- nal God, Lord of earth __ and sky,
  We come and kneel be -- fore Thee,
  O Sav -- iour, come and give us now Thy bless -- ing,
  O Sa -- viour __ come and give Thy bless -- ing!
  Send down to us the fire of Thy pow’r o -- ver whelm -- ing,
  Thy won -- drous might, Thy won -- drous might dis -- pels the foes of hell,
  O give __ our slee -- ping __ souls
  Ra -- diance of spi -- rit,
  That they may wa -- ken and tell of Thy power,
  That they may wa -- ken and tell of Thy power!

  O Christ come now and bless us,
  and bless, __ we im -- plore Thee,
  Thy peo -- ple, pen -- i -- tent be -- fore Thee,
  and hear the praise we give now,
  Hear the praise we give to Thy glo -- ry,
  Ac -- cept __ these gifts __ we re -- turn un -- to Thee,
  Ac -- cept __ these our gifts __ we re -- turn now to Thee.
  O migh -- ty One.
  E -- ter -- nal __ God. __
}

wordsBassMidi = \lyricmode {
  "O " "Thou " migh "ty " "One, "
  "\nThe " "hope " "of " "our " sal va "tion, "
  "\nE" ter "nal " "God, " "Lord " "of " "earth "  "and " "sky, "
  "\nWe " "come " "and " "kneel " be "fore " "Thee, "
  "\nO " Sav "iour, " "come " "and " "give " "us " "now " "Thy " bless "ing, "
  "\nO " Sa "viour "  "come " "and " "give " "Thy " bless "ing! "
  "\nSend " "down " "to " "us " "the " "fire " "of " "Thy " "pow’r " o "ver " whelm "ing, "
  "\nThy " won "drous " "might, " "Thy " won "drous " "might " dis "pels " "the " "foes " "of " "hell, "
  "\nO " "give "  "our " slee "ping "  "souls "
  "\nRa" "diance " "of " spi "rit, "
  "\nThat " "they " "may " wa "ken " "and " "tell " "of " "Thy " "power, "
  "\nThat " "they " "may " wa "ken " "and " "tell " "of " "Thy " "power! "

  "\nO " "Christ " "come " "now " "and " "bless " "us, "
  "\nand " "bless, "  "we " im "plore " "Thee, "
  "\nThy " peo "ple, " pen i "tent " be "fore " "Thee, "
  "\nand " "hear " "the " "praise " "we " "give " "now, "
  "\nHear " "the " "praise " "we " "give " "to " "Thy " glo "ry, "
  "\nAc" "cept "  "these " "gifts "  "we " re "turn " un "to " "Thee, "
  "\nAc" "cept "  "these " "our " "gifts "  "we " re "turn " "now " "to " "Thee. "
  "\nO " migh "ty " "One. "
  "\nE" ter "nal "  "God. " 
}

pianoRHone = \relative {
  \global \vo
  r2 r4 fis'(
  a2 g
  fis2.) a4( % 2b
  d4 cis b a
  a4 g fis fis) % 2c
  e2(g)
  fis2. 4 % 2d
  e2(b')
  ais2. fis4( % 2e
  d'4 cis b a
  a4 g fis) a( % 3a
  fis2 e
  d2) ~8 r r4 % 3b
  s1*17 \vt
  r2 r4 cis_\markup\italic "il canto" % 7b
  e2(d)
  cis2. e4 % 8a
  a4( gis fis e
  e4 d cis) cis( % 8b
  b2 d)
  cis2(4) 4 % 8c
  b2(d)
  cis2~4 s % 8d
  \vo <a' cis>2( <fis b>
  <eis gis>4) eis(<dis fis> <eis gis> % 9a
  <fis a>4) a(<gis b> <ais cis>
  q2 <b d>4) s % 9b
  <b d>2(<g cis>
  <fis ais>2) <gis b>4 <a cis> % 10a
  <b d>2(<cis e>4 <dis g>)
  <dis fis>2(<e g>8) r s4 % 10b
  s4 g, fis b
  ais2(b8) s s4 % 11a
  s4 fis eis8 s s4
  s1 % 11b
  s4 fis(eis8) s s4
  s1*3 % 12a
  s4 b'~4 a % 12b+
  g2(fis4) s % 13a
  <a cis>2 <b cis>
  <ais cis>4 s2. % 13b
  s1*6
  <fis a>2 <e g> % 15a+
  <d fis>2 r
  \ov r4 \vo a'4(d cis)
  b2~4 r % 16a
  s4 b(e d
  cis2 4) a~ % 16b
  a4 ais b c
  b4 gis a <a cis> % 17a
  <gis cis>2(<gis b>)(
  a2)(c) % 17b
  b4(a g <gis b>)
  a4 cis d s % 18a
  s1
  s2. fis,4 % 18b
  a2 g
  fis2~4 r % 19a
  s1
  r2 r4 fis( % 19b
  d'4 cis b a)
  a4 g fis s % 10a
  s1*4
  \bar "|."
}

ld  = { \change Staff = down \vt }
lu  = { \change Staff = down \vo }
rd = { \change Staff = up   \vt }
ru = { \change Staff = up   \vo }
%lh = {}
%rh = {}

pianoRHtwo = \relative {
  \global \vt
  \tuplet 3/2 {r8_( cis' d} \tuplet 3/2 {fis cis d)} \tuplet 3/2 {\lu a_( \rd cis d} \tuplet 3/2 {fis cis d)}
  \tuplet 3/2 {\lu a8_( \rd cis d} \tuplet 3/2 {fis d \lu a) \rd} \tuplet 3/2 {r8_( c cis} \tuplet 3/2 {e cis \lu a)}
  \tuplet 3/2 {r8 a_(cis} \rd \tuplet 3/2 {d \lu a)fis} \tuplet 3/2 {a_(cis \rd d} \tuplet 3/2 {fis d \lu a) \rd} % 2b
  \tuplet 3/2 {r8 eis'_(fis)} \tuplet 3/2 {r8 fis_(cis)} \tuplet 3/2 {r8 cis_(d)} \tuplet 3/2 {r8 d^( \lu a) \rd}
  \tuplet 3/2 {\rd r8 c cis} \tuplet 3/2 {e cis \lu a} \tuplet 3/2 {r8 gis(a} \tuplet 3/2 {\rd d \lu a) f} % 2c
  \tuplet 3/2 {r8 ais b} \tuplet 3/2 {\rd d \lu b e,} \tuplet 3/2 {r c' cis} \tuplet 3/2 {\rd e \lu c a}
  \tuplet 3/2 {r8 gis(a} \tuplet 3/2 {\rd d \lu a) fis} \tuplet 3/2 {\rd r cis'(d} \tuplet 3/2 {fis d \lu a)} % 2d
  \tuplet 3/2 {r8 ais b} \tuplet 3/2 {\rd d \lu b e,} \tuplet 3/2 {\rd r c' cis} \tuplet 3/2 {e d cis}
  \tuplet 3/2 {r8 c( cis} \tuplet 3/2 {fis cis \lu ais)} \tuplet 3/2 {r a_( \rd e'} \tuplet 3/2 {fis e \lu a,)} % 2e
  \tuplet 3/2 {\rd r8 eis'(fis)} \tuplet 3/2 {r fis(cis)} \tuplet 3/2 {r cis(d)} \tuplet 3/2 {fis d \lu a}
  \tuplet 3/2 {\rd r8 c_(cis} \tuplet 3/2 {d cis \lu a)} \tuplet 3/2 {r gis(a} \tuplet 3/2 {\rd d \lu a) \rd d} % 3a
  \tuplet 3/2 {\lu r8 ais _(b} \tuplet 3/2 {\rd d \lu b g)} \tuplet 3/2 {r g^( a} \tuplet 3/2 {cis a g)}
  \tuplet 3/2 {r8 fis_( a} \tuplet 3/2 {\rd d \lu a fis)} \tuplet 3/2 {a( \rd cis d} \tuplet 3/2 {fis d \lu a)} \vo % 3b
  \tuplet 3/2 {\ru r8 cis_(d} \tuplet 3/2 {fis d \lu a)} \tuplet 3/2 {\ru r c_( cis} \tuplet 3/2 {d cis \lu a)}
  \tuplet 3/2 {r8 a(\ru cis} \tuplet 3/2 {d \lu a fis)\ru} \tuplet 3/2 {r8 cis'(d} \tuplet 3/2 {fis d \lu a)\ru} % 3c
  \tuplet 3/2 {r8 eis'(fis)} \tuplet 3/2 {r fis(cis)} \tuplet 3/2 {r cis(d)} \tuplet 3/2 {r d(\lu a)\rd}
  \tuplet 3/2 {r8 \lu a(\ru cis} \tuplet 3/2 {e cis \lu a) \ru} \tuplet 3/2 {r(\lu a \ru cis} \tuplet 3/2 {d \lu a fis) \ru} % 4a
  \tuplet 3/2 {r8 b(d} \tuplet 3/2 {e d b)} \tuplet 3/2 {r \lu g( \ru cis} \tuplet 3/2 {e cis \lu g) \ru}
  \tuplet 3/2 {r8 \lu fis(\ru b} \tuplet 3/2 {d b \lu fis)} \tuplet 3/2 {\ru b(cis d} \tuplet 3/2 {fis d b)} % 4b
  \tuplet 3/2 {r8 cis(d} \tuplet 3/2 {fis d \lu a) \ru} \tuplet 3/2 {r \lu g(\ru d'} \tuplet 3/2 {e cis \lu g) \ru}
  \tuplet 3/2 {r8 \lu fis(a} \tuplet 3/2 {\ru d \lu a fis)} \tuplet 3/2 {a(\ru cis d} \tuplet 3/2 {fis d \lu a) \ru} % 5a
  \tuplet 3/2 {r8 eis'(fis)} \tuplet 3/2 {r fis(cis)} \tuplet 3/2 {r b(fis')} \tuplet 3/2 {r eis(b)}
  \tuplet 3/2 {r8 \lu gis(\ru cis} \tuplet 3/2 {eis cis \lu gis)} \tuplet 3/2 {a(\ru cis fis} \tuplet 3/2 {a e cis)} % 5b
  \tuplet 3/2 {r8 b(fis'} \tuplet 3/2 {a fis b,)} \tuplet 3/2 {r b(d} \tuplet 3/2 {gis d b)}
  \tuplet 3/2 {r8 cis e} \tuplet 3/2 {r cis eis} \tuplet 3/2 {r <a, cis> fis'} \tuplet 3/2 {r <ais, cis> g'} % 6a
  \tuplet 3/2 {r8 b,(d} \tuplet 3/2 {fis d b)} \tuplet 3/2 {r b(d} \tuplet 3/2 {gis d b)}
  \tuplet 3/2 {r8 cis(gis'} \tuplet 3/2 {b gis cis,)} \tuplet 3/2 {r cis( a')} \tuplet 3/2 {g(cis, a)} % 6b
  \tuplet 3/2 {r8 fis'(d')} \tuplet 3/2 {<ais cis>(fis e)} \tuplet 3/2 {r d(b')} \tuplet 3/2 {c(fis, dis)}
  \tuplet 3/2 {r8 e(b')} \tuplet 3/2 {gis(d b)} \tuplet 3/2 {r c(a')} \tuplet 3/2 {fis(c a)} % 7a
  \tuplet 3/2 {r8 c(gis'} \tuplet 3/2 {e c gis)} \tuplet 3/2 {r d'(g} \tuplet 3/2 {e d gis,)}
  \tuplet 3/2 {r8 c(e} \tuplet 3/2 {a e c)} \tuplet 3/2 {e(g a} \tuplet 3/2 {cis^\markup\italic "il canto" gis a)} % 7b
  \tuplet 3/2 {e8(gis a} \tuplet 3/2 {cis g a} \tuplet 3/2 {d, fisis g} \tuplet 3/2 {b fisis g)}
  \tuplet 3/2 {cis,8(e gis} \tuplet 3/2 {a e cis} \tuplet 3/2 {e g a} \tuplet 3/2 {cis a e)} % 8a
  \tuplet 3/2 {a8 bis(cis)} \tuplet 3/2 {gis d'(cis)} \tuplet 3/2 {fis, gis(a)} \tuplet 3/2 {e b' a}
  \tuplet 3/2 {e8 fis(a)} \tuplet 3/2 {d, e(gis)} \tuplet 3/2 {cis, e(fis)} \tuplet 3/2 {cis' e, a} % 8b
  \tuplet 3/2 {b,8(fis' a} \tuplet 3/2 {b fis a)} \tuplet 3/2 {d,(e gis} \tuplet 3/2 {b e, gis)}
  \tuplet 3/2 {cis,8(gis' b} \tuplet 3/2 {cis gis cis)} \tuplet 3/2 {cis,(a' cis} \tuplet 3/2 {cis e, a)} % 8c
  \tuplet 3/2 {b,8(fis' a} \tuplet 3/2 {b fis a)} \tuplet 3/2 {d,(e gis} \tuplet 3/2 {b e, gis)}
  \tuplet 3/2 {cis,8(e gis} \tuplet 3/2 {a e cis} \tuplet 3/2 {e gis a} \tuplet 3/2 {cis a e)} % 8d
  \tuplet 3/2 {\rd r8 e e} \tuplet 3/2 {cis(e) e} \tuplet 3/2 {r d d} \tuplet 3/2 {b(d) d}
  \tuplet 3/2 {r8 cis cis} \tuplet 3/2 {\lu gis \rd cis cis} \tuplet 3/2 {r cis cis} \tuplet 3/2 {b(cis) cis} % 9a
  \tuplet 3/2 {r8 cis cis} \tuplet 3/2 {fis(cis) cis} \tuplet 3/2 {r fis fis} \tuplet 3/2 {e(fis) fis}
  \tuplet 3/2 {r8 fis fis} \tuplet 3/2 {e(fis) fis} \tuplet 3/2 {r fis fis} \tuplet 3/2 {b(fis) fis} % 9b
  \tuplet 3/2 {r8 fis fis} \tuplet 3/2 {e(fis) fis} \tuplet 3/2 {r e e} \tuplet 3/2 {cis(e) e}
  \tuplet 3/2 {r8 cis cis} \tuplet 3/2 {fis(cis) cis} \tuplet 3/2 {r fis fis} \tuplet 3/2 {e(fis) fis} % 10a
  \tuplet 3/2 {r8 fis fis} \tuplet 3/2 {b(fis) fis} \tuplet 3/2 {r b b} \tuplet 3/2 {a(b) b}
  \tuplet 3/2 {r8 b b} \tuplet 3/2 {a(b) b} \tuplet 3/2 {r b(g} \tuplet 3/2 {e b e)} % 10b
  \tuplet 3/2 {r8 ais,(fis')} \tuplet 3/2 {g(e b} \tuplet 3/2 {fis') cis( ais'} \tuplet 3/2 {b e, cis)}
  \tuplet 3/2 {r8 cis e} \tuplet 3/2 {fis cis e} \tuplet 3/2 {r \ru d(fis} \tuplet 3/2 {b fis d)} % 11a
  \tuplet 3/2 {r8 eis(gis} \tuplet 3/2 {fis g b} \tuplet 3/2 {eis, g b)} \tuplet 3/2 {r <d, fis>(g)}
  \tuplet 3/2 {r8 <cis, eis> gis'} \tuplet 3/2 {ais e b'} \tuplet 3/2 {r cis,(fis} \tuplet 3/2 {a fis cis)} % 11b
  \tuplet 3/2 {r8 fis(a} \tuplet 3/2 {b fis d)} \tuplet 3/2 {r cis(fis} \tuplet 3/2 {cis' fis, cis)}
  \tuplet 3/2 {r8 fis(b} \tuplet 3/2 {e, b e)} \tuplet 3/2 {r d(fis} \tuplet 3/2 {b fis b,)} % 12a
  \tuplet 3/2 {r8 cis(g'} \tuplet 3/2 {b g cis,)} \tuplet 3/2 {r cis( e} \tuplet 3/2 {ais e cis)}
  \tuplet 3/2 {r8 e(ais} \tuplet 3/2 {b g d)} \tuplet 3/2 {r d(fis} \tuplet 3/2 {ais fis cis)} % 12b
  \tuplet 3/2 {r8 b(fis'} \tuplet 3/2 {\rd b fis b,)} \tuplet 3/2 {r b(fis'} \tuplet 3/2 {b fis b,)}
  \tuplet 3/2 {r8 b(fis'} \tuplet 3/2 {b e, b)} \tuplet 3/2 {r d(fis} \tuplet 3/2 {b fis d)} % 13a
  \tuplet 3/2 {r cis(e)} \tuplet 3/2 {e(cis e)} \tuplet 3/2 {r cis(e)} \tuplet 3/2 {e(cis e)}
  \tuplet 3/2 {r8 cis(eis)} \tuplet 3/2 {fis cis \lu ais} \tuplet 3/2 {\ru cis(e fis} \tuplet 3/2 {a fis cis)} % 13b
  \tuplet 3/2 {r8 cis(d} \tuplet 3/2 {fis d \lu a) \ru} \tuplet 3/2 {r8 bis(cis} \tuplet 3/2 {e cis \lu a)}
  \tuplet 3/2 {r8 a(\ru cis} \tuplet 3/2 {d \lu a fis)} \tuplet 3/2 {a(\ru cis d} \tuplet 3/2 {fis d \lu a) \ru} % 14a
  \tuplet 3/2 {r8 eis'(fis)} \tuplet 3/2 {r fis(cis)} \tuplet 3/2 {r cis(d)} \tuplet 3/2 {r d(a)}
  \tuplet 3/2 {r8 \lu a( \ru cis} \tuplet 3/2 {e cis \lu a) \ru} \tuplet 3/2 {r a(cis} \tuplet 3/2 {d a fis)} % 14b
  \tuplet 3/2 {r8 b(d} \tuplet 3/2 {e d b)} \tuplet 3/2 {r \lu g(\ru cis} \tuplet 3/2 {e cis \lu g) \ru}
  \tuplet 3/2 {r8 \lu fis( \ru b} \tuplet 3/2 {d b \lu fis} \tuplet 3/2 {\ru b cis d} \tuplet 3/2 {fis d b)} % 15a
  \tuplet 3/2 {r8 \lu a(\rd cis} \tuplet 3/2 {d \lu a \rd d)} \tuplet 3/2 {r \lu a(\rd d} \tuplet 3/2 {cis \lu a \rd cis)}
  \tuplet 3/2 {r8 \lu fis,(a} \tuplet 3/2 {\rd d \lu a fis)} \tuplet 3/2 {a(\rd d fis} \tuplet 3/2 {a fis d)} % 15b
  \tuplet 3/2 {r8 \lu a(\rd d)} \tuplet 3/2 {fis d \lu a} \tuplet 3/2 {\rd fis'(d fis} \tuplet 3/2 {a fis d)}
  \tuplet 3/2 {a'8_( b, e} \tuplet 3/2 {a e b)} \tuplet 3/2 {g'(b, e} \tuplet 3/2 {g e b)} % 16a
  \tuplet 3/2 {r8 b(e} \tuplet 3/2 {g e b)} \tuplet 3/2 {g'(e g} \tuplet 3/2 {b g e)}
  \tuplet 3/2 {b'8 cis, fis} \tuplet 3/2 {b fis cis} \tuplet 3/2 {a' cis, fis} \tuplet 3/2 {g cis, a} % 16b
  \tuplet 3/2 {fis'8 d fis} \tuplet 3/2 {e cis e} \tuplet 3/2 {d fis d} \tuplet 3/2 {fis dis fis}
  \tuplet 3/2 {e8 b e} \tuplet 3/2 {d b d} \tuplet 3/2 {cis a cis} \tuplet 3/2 {fis cis fis} % 17a
  \tuplet 3/2 {e8 cis e} \tuplet 3/2 {e cis e} \tuplet 3/2 {r b e} \tuplet 3/2 {e b e}
  \tuplet 3/2 {r8 \lu a, \rd e'} \tuplet 3/2 {e \lu a, \rd e'} \tuplet 3/2 {fis d fis} \tuplet 3/2 {a fis d} % 17b
  \tuplet 3/2 {r8 d g} \tuplet 3/2 {fis dis fis} \tuplet 3/2 {r b, e} \tuplet 3/2 {fis b, fis'}
  \tuplet 3/2 {r8 \lu a, \rd e'} \tuplet 3/2 {ais e ais} \tuplet 3/2 {a d,(\lu a} \tuplet 3/2 {\rd b d b)} % 18a %%% FIX ottava in this voice
  \tuplet 3/2 {r8 \lu a(\rd cis} \tuplet 3/2 {fis cis \lu a) \rd} \tuplet 3/2 {r(\lu g \rd cis} \tuplet 3/2 {e cis \lu g)}
  \tuplet 3/2 {r8 fis(a} \tuplet 3/2 {\rd d \lu a fis)} \tuplet 3/2 {a(\rd cis d} \tuplet 3/2 {fis d \lu a)} % 18b
  \tuplet 3/2 {\rd r8 cis(d} \tuplet 3/2 {fis d \lu a)} \tuplet 3/2 {\rd r8 \lu ais(b} \tuplet 3/2 {\rd d \lu b g)}
  \tuplet 3/2 {r8 gis(a} \tuplet 3/2 {d a fis)} \tuplet 3/2 {a(\rd cis d} \tuplet 3/2 {fis d \lu a)} % 19a
  \tuplet 3/2 {\rd r8 \lu g(\rd d'} \tuplet 3/2 {e d \lu g,)} \tuplet 3/2 {\rd r \lu g(\ru cis} \tuplet 3/2 {e cis \lu g)}
  \tuplet 3/2 {\rd r8 \lu fis(a} \tuplet 3/2 {\rd d \lu a fis)} \tuplet 3/2 {a \ru cis d} \tuplet 3/2 {\rd fis \lu d a} % 19b
  \tuplet 3/2 {\rd e'8 fis e} \tuplet 3/2 {fis e fis} \tuplet 3/2 {d fis d} \tuplet 3/2 {fis cis fis}
  \tuplet 3/2 {cis8(fis cis} \tuplet 3/2 {e b e} \tuplet 3/2 {ais, cis fis)} \tuplet 3/2 {\ru d \lu a fis} % 20a
  \tuplet 3/2 {r8 fis(b} \tuplet 3/2 {\ru d \lu b fis} \tuplet 3/2 {b \ru d fis~} <fis b d>) r8
  \tuplet 3/2 {r8 \lu g,(a} \tuplet 3/2 {\ru cis e g!} <g a cis>) r r4 % 20b
  \tuplet 3/2 {r8 \lu a,(\ru cis} \tuplet 3/2 {d \lu a fis)} \tuplet 3/2 {a(\ru cis d} \tuplet 3/2 {fis~<d fis>~ <a d fis>~)}
  q1\fermata
  \bar "|."
}

pianoRHtwoSingle = \relative {
  \global \vt
  \tuplet 3/2 {r8_( cis' d} \tuplet 3/2 {fis cis d)} \tuplet 3/2 {a_(cis d} \tuplet 3/2 {fis cis d)}
  \tuplet 3/2 {a8_(cis d} \tuplet 3/2 {fis d a)} \tuplet 3/2 {r8_( c cis} \tuplet 3/2 {e cis a)}
  \tuplet 3/2 {r8 a_(cis} \tuplet 3/2 {d a)fis} \tuplet 3/2 {a_(cis d} \tuplet 3/2 {fis d a)} % 2b
  \tuplet 3/2 {r8 eis'_(fis)} \tuplet 3/2 {r8 fis_(cis)} \tuplet 3/2 {r8 cis_(d)} \tuplet 3/2 {r8 d^(a)}
  \tuplet 3/2 {r8 c cis} \tuplet 3/2 {e cis a} \tuplet 3/2 {r8 gis(a} \tuplet 3/2 {d a) f} % 2c
  \tuplet 3/2 {r8 ais b} \tuplet 3/2 {d b e,} \tuplet 3/2 {r c' cis} \tuplet 3/2 {e c a}
  \tuplet 3/2 {r8 gis(a} \tuplet 3/2 {d a) fis} \tuplet 3/2 {r cis'(d} \tuplet 3/2 {fis d a)} % 2d
  \tuplet 3/2 {r8 ais b} \tuplet 3/2 {d b e,} \tuplet 3/2 {r c' cis} \tuplet 3/2 {e d cis}
  \tuplet 3/2 {r8 c( cis} \tuplet 3/2 {fis cis ais)} \tuplet 3/2 {r a_( e'} \tuplet 3/2 {fis e a,)} % 2e
  \tuplet 3/2 {r8 eis'(fis)} \tuplet 3/2 {r fis(cis)} \tuplet 3/2 {r cis(d)} \tuplet 3/2 {fis d a}
  \tuplet 3/2 {r8 c_(cis} \tuplet 3/2 {d cis a)} \tuplet 3/2 {r gis(a} \tuplet 3/2 {d a) d} % 3a
  \tuplet 3/2 {r8 ais _(b} \tuplet 3/2 {d b g)} \tuplet 3/2 {r g^( a} \tuplet 3/2 {cis a g)}
  \tuplet 3/2 {r8 fis_( a} \tuplet 3/2 {d a fis)} \tuplet 3/2 {a(cis d} \tuplet 3/2 {fis d a)} \vo % 3b
  \tuplet 3/2 {r8 cis_(d} \tuplet 3/2 {fis d a)} \tuplet 3/2 {r c_( cis} \tuplet 3/2 {d cis a)}
  \tuplet 3/2 {r8 a(cis} \tuplet 3/2 {d a fis)} \tuplet 3/2 {r8 cis'(d} \tuplet 3/2 {fis d a)} % 3c
  \tuplet 3/2 {r8 eis'(fis)} \tuplet 3/2 {r fis(cis)} \tuplet 3/2 {r cis(d)} \tuplet 3/2 {r d(a)}
  \tuplet 3/2 {r8 a(cis} \tuplet 3/2 {e cis a)} \tuplet 3/2 {r(a cis} \tuplet 3/2 {d a fis)} % 4a
  \tuplet 3/2 {r8 b(d} \tuplet 3/2 {e d b)} \tuplet 3/2 {r g( cis} \tuplet 3/2 {e cis g)}
  \tuplet 3/2 {r8 fis(b} \tuplet 3/2 {d b fis)} \tuplet 3/2 {b(cis d} \tuplet 3/2 {fis d b)} % 4b
  \tuplet 3/2 {r8 cis(d} \tuplet 3/2 {fis d a)} \tuplet 3/2 {r g(d'} \tuplet 3/2 {e cis g)}
  \tuplet 3/2 {r8 fis(a} \tuplet 3/2 {d a fis)} \tuplet 3/2 {a(cis d} \tuplet 3/2 {fis d a)} % 5a
  \tuplet 3/2 {r8 eis'(fis)} \tuplet 3/2 {r fis(cis)} \tuplet 3/2 {r b(fis')} \tuplet 3/2 {r eis(b)}
  \tuplet 3/2 {r8 gis(cis} \tuplet 3/2 {eis cis gis)} \tuplet 3/2 {a(cis fis} \tuplet 3/2 {a e cis)} % 5b
  \tuplet 3/2 {r8 b(fis'} \tuplet 3/2 {a fis b,)} \tuplet 3/2 {r b(d} \tuplet 3/2 {gis d b)}
  \tuplet 3/2 {r8 cis e} \tuplet 3/2 {r cis eis} \tuplet 3/2 {r <a, cis> fis'} \tuplet 3/2 {r <ais, cis> g'} % 6a
  \tuplet 3/2 {r8 b,(d} \tuplet 3/2 {fis d b)} \tuplet 3/2 {r b(d} \tuplet 3/2 {gis d b)}
  \tuplet 3/2 {r8 cis(gis'} \tuplet 3/2 {b gis cis,)} \tuplet 3/2 {r cis( a')} \tuplet 3/2 {g(cis, a)} % 6b
  \tuplet 3/2 {r8 fis'(d')} \tuplet 3/2 {<ais cis>(fis e)} \tuplet 3/2 {r d(b')} \tuplet 3/2 {c(fis, dis)}
  \tuplet 3/2 {r8 e(b')} \tuplet 3/2 {gis(d b)} \tuplet 3/2 {r c(a')} \tuplet 3/2 {fis(c a)} % 7a
  \tuplet 3/2 {r8 c(gis'} \tuplet 3/2 {e c gis)} \tuplet 3/2 {r d'(g} \tuplet 3/2 {e d gis,)}
  \tuplet 3/2 {r8 c(e} \tuplet 3/2 {a e c)} \tuplet 3/2 {e(g a} \tuplet 3/2 {cis^\markup\italic "il canto" gis a)} % 7b
  \tuplet 3/2 {e8(gis a} \tuplet 3/2 {cis g a} \tuplet 3/2 {d, fisis g} \tuplet 3/2 {b fisis g)}
  \tuplet 3/2 {cis,8(e gis} \tuplet 3/2 {a e cis} \tuplet 3/2 {e g a} \tuplet 3/2 {cis a e)} % 8a
  \tuplet 3/2 {a8 bis(cis)} \tuplet 3/2 {gis d'(cis)} \tuplet 3/2 {fis, gis(a)} \tuplet 3/2 {e b' a}
  \tuplet 3/2 {e8 fis(a)} \tuplet 3/2 {d, e(gis)} \tuplet 3/2 {cis, e(fis)} \tuplet 3/2 {cis' e, a} % 8b
  \tuplet 3/2 {b,8(fis' a} \tuplet 3/2 {b fis a)} \tuplet 3/2 {d,(e gis} \tuplet 3/2 {b e, gis)}
  \tuplet 3/2 {cis,8(gis' b} \tuplet 3/2 {cis gis cis)} \tuplet 3/2 {cis,(a' cis} \tuplet 3/2 {cis e, a)} % 8c
  \tuplet 3/2 {b,8(fis' a} \tuplet 3/2 {b fis a)} \tuplet 3/2 {d,(e gis} \tuplet 3/2 {b e, gis)}
  \tuplet 3/2 {cis,8(e gis} \tuplet 3/2 {a e cis} \tuplet 3/2 {e gis a} \tuplet 3/2 {cis a e)} % 8d
  \tuplet 3/2 {r8 e e} \tuplet 3/2 {cis(e) e} \tuplet 3/2 {r d d} \tuplet 3/2 {b(d) d}
  \tuplet 3/2 {r8 cis cis} \tuplet 3/2 {gis cis cis} \tuplet 3/2 {r cis cis} \tuplet 3/2 {b(cis) cis} % 9a
  \tuplet 3/2 {r8 cis cis} \tuplet 3/2 {fis(cis) cis} \tuplet 3/2 {r fis fis} \tuplet 3/2 {e(fis) fis}
  \tuplet 3/2 {r8 fis fis} \tuplet 3/2 {e(fis) fis} \tuplet 3/2 {r fis fis} \tuplet 3/2 {b(fis) fis} % 9b
  \tuplet 3/2 {r8 fis fis} \tuplet 3/2 {e(fis) fis} \tuplet 3/2 {r e e} \tuplet 3/2 {cis)e) e}
  \tuplet 3/2 {r8 cis cis} \tuplet 3/2 {fis(cis) cis} \tuplet 3/2 {r fis fis} \tuplet 3/2 {e(fis) fis} % 10a
  \tuplet 3/2 {r8 fis fis} \tuplet 3/2 {b(fis) fis} \tuplet 3/2 {r b b} \tuplet 3/2 {a(b) b}
  \tuplet 3/2 {r8 b b} \tuplet 3/2 {a(b) b} \tuplet 3/2 {r b(g} \tuplet 3/2 {e b e)} % 10b
  \tuplet 3/2 {r8 ais,(fis')} \tuplet 3/2 {g(e b} \tuplet 3/2 {fis') cis( ais'} \tuplet 3/2 {b e, cis)}
  \tuplet 3/2 {r8 cis e} \tuplet 3/2 {fis cis e} \tuplet 3/2 {r d(fis} \tuplet 3/2 {b fis d)} % 11a
  \tuplet 3/2 {r8 eis(gis} \tuplet 3/2 {fis g b} \tuplet 3/2 {eis, g b)} \tuplet 3/2 {r <d, fis>(g)}
  \tuplet 3/2 {r8 <cis, eis> gis'} \tuplet 3/2 {ais e b'} \tuplet 3/2 {r cis,(fis} \tuplet 3/2 {a fis cis)} % 11b
  \tuplet 3/2 {r8 fis(a} \tuplet 3/2 {b fis d)} \tuplet 3/2 {r cis(fis} \tuplet 3/2 {cis' fis, cis)}
  \tuplet 3/2 {r8 fis(b} \tuplet 3/2 {e, b e)} \tuplet 3/2 {r d(fis} \tuplet 3/2 {b fis b,)} % 12a
  \tuplet 3/2 {r8 cis(g'} \tuplet 3/2 {b g cis,)} \tuplet 3/2 {r cis( e} \tuplet 3/2 {ais e cis)}
  \tuplet 3/2 {r8 e(ais} \tuplet 3/2 {b g d)} \tuplet 3/2 {r d(fis} \tuplet 3/2 {ais fis cis)} % 12b
  \tuplet 3/2 {r8 b(fis'} \tuplet 3/2 {b fis b,)} \tuplet 3/2 {r b(fis'} \tuplet 3/2 {b fis b,)}
  \tuplet 3/2 {r8 b(fis'} \tuplet 3/2 {b e, b)} \tuplet 3/2 {r d(fis} \tuplet 3/2 {b fis d)} % 13a
  \tuplet 3/2 {r cis(e)} \tuplet 3/2 {e(cis e)} \tuplet 3/2 {r cis(e)} \tuplet 3/2 {e(cis e)}
  \tuplet 3/2 {r8 cis(eis)} \tuplet 3/2 {fis cis ais} \tuplet 3/2 {cis(e fis} \tuplet 3/2 {a fis cis)} % 13b
  \tuplet 3/2 {r8 cis(d} \tuplet 3/2 {fis d a)} \tuplet 3/2 {r8 bis(cis} \tuplet 3/2 {e cis a)}
  \tuplet 3/2 {r8 a(cis} \tuplet 3/2 {d a fis)} \tuplet 3/2 {a(cis d} \tuplet 3/2 {fis d a)} % 14a
  \tuplet 3/2 {r8 eis'(fis)} \tuplet 3/2 {r fis(cis)} \tuplet 3/2 {r cis(d)} \tuplet 3/2 {r d(a)}
  \tuplet 3/2 {r8 a(cis} \tuplet 3/2 {e cis a)} \tuplet 3/2 {r a(cis} \tuplet 3/2 {d a fis)} % 14b
  \tuplet 3/2 {r8 b(d)} \tuplet 3/2 {e d b)} \tuplet 3/2 {r g(cis} \tuplet 3/2 {e cis g)}
  \tuplet 3/2 {r8 fis(b} \tuplet 3/2 {d b fis} \tuplet 3/2 {b cis d} \tuplet 3/2 {fis d b)} % 15a
  \tuplet 3/2 {r8 a(cis} \tuplet 3/2 {d a d)} \tuplet 3/2 {r a(d} \tuplet 3/2 {cis a cis)}
  \tuplet 3/2 {r8 fis,(a} \tuplet 3/2 {d a fis)} \tuplet 3/2 {a(d fis} \tuplet 3/2 {a fis d)} % 15b
  \tuplet 3/2 {r8 a(d)} \tuplet 3/2 {fis d a} \tuplet 3/2 {fis'(d fis} \tuplet 3/2 {a fis d)}
  \tuplet 3/2 {a'8_( b, e} \tuplet 3/2 {a e b)} \tuplet 3/2 {g'(b, e} \tuplet 3/2 {g e b)} % 16a
  \tuplet 3/2 {r8 b(e} \tuplet 3/2 {g e b)} \tuplet 3/2 {g'(e g} \tuplet 3/2 {b g e)}
  \tuplet 3/2 {b'8 cis, fis} \tuplet 3/2 {b fis cis} \tuplet 3/2 {a' cis, fis} \tuplet 3/2 {g cis, a} % 16b
  \tuplet 3/2 {fis'8 d fis} \tuplet 3/2 {e cis e} \tuplet 3/2 {d fis d} \tuplet 3/2 {fis dis fis}
  \tuplet 3/2 {e8 b e} \tuplet 3/2 {d b d} \tuplet 3/2 {cis a cis} \tuplet 3/2 {fis cis fis} % 17a
  \tuplet 3/2 {e8 cis e} \tuplet 3/2 {e cis e} \tuplet 3/2 {r b e} \tuplet 3/2 {e b e}
  \tuplet 3/2 {r8 a, e'} \tuplet 3/2 {e a, e'} \tuplet 3/2 {fis d fis} \tuplet 3/2 {a fis d} % 17b
  \tuplet 3/2 {r8 d g} \tuplet 3/2 {fis dis fis} \tuplet 3/2 {r b, e} \tuplet 3/2 {fis b, fis'}
  \tuplet 3/2 {r8 a, e'} \tuplet 3/2 {ais e ais} \tuplet 3/2 {a d,(a} \tuplet 3/2 {b d b)} % 18a
  \tuplet 3/2 {r8 a(cis} \tuplet 3/2 {fis cis a)} \tuplet 3/2 {r(g cis} \tuplet 3/2 {e cis g)}
  \tuplet 3/2 {r8 fis(a} \tuplet 3/2 {d a fis)} \tuplet 3/2 {a(cis d} \tuplet 3/2 {fis d a)} % 18b
  \tuplet 3/2 {r8 cis(d} \tuplet 3/2 {fis d a)} \tuplet 3/2 {r8 ais(b} \tuplet 3/2 {d b g)}
  \tuplet 3/2 {r8 gis(a} \tuplet 3/2 {d a fis)} \tuplet 3/2 {a(cis d} \tuplet 3/2 {fis d a)} % 19a
  \tuplet 3/2 {r8 g(d'} \tuplet 3/2 {e d g,)} \tuplet 3/2 {r g(cis} \tuplet 3/2 {e cis g)}
  \tuplet 3/2 {r8 fis(a} \tuplet 3/2 {d a fis)} \tuplet 3/2 {a cis d} \tuplet 3/2 {fis d a} % 19b
  \tuplet 3/2 {e'8 fis e} \tuplet 3/2 {fis e fis} \tuplet 3/2 {d fis d} \tuplet 3/2 {fis cis fis}
  \tuplet 3/2 {cis8(fis cis} \tuplet 3/2 {e b e} \tuplet 3/2 {ais, cis fis)} \tuplet 3/2 {d a fis} % 20a
  \tuplet 3/2 {r8 fis(b} \tuplet 3/2 {d b fis} \tuplet 3/2 {b d fis~} <fis b d>) r8
  \tuplet 3/2 {r8 g,(a} \tuplet 3/2 {cis e g!} <g a cis> r r4 % 20b
  \tuplet 3/2 {r8 a,(cis} \tuplet 3/2 {d a fis)} \tuplet 3/2 {a(cis d} \tuplet 3/2 {fis~<d fis>~ <a d fis>~)}
  q1\fermata
  \bar "|."
}

dynamicsPianoAbove = {
  \override DynamicTextSpanner.style = #'none
  s1
  s1
  s1\< % 2b
  s1\>
  s1\! % 2c
  s1*5
  s2.\> s4\! % 3a
  s1*27
  s2. s4-\markup\upright Quietly % 1b
  s1*37
  s4\< s\! s\> s\! % 18a
  s1*5
  s2 s-\markup\italic "sempre dolce" % 19b
  s1*6
}

dynamicsPianoCentre = {
  \override DynamicTextSpanner.style = #'none
  s1-\markup\italic cantabile
  s1*4
  s1\cresc % 2c+
  s1 % 2d
  s1\cresc
  s2. s4\f % 2e
  s1
  s1 % 3a
  s1\p
  s1\pp % 3b
  s1*11
  s1\omit\cresc-\markup\italic crescendo % 6a
  s1
  s1 % 6b
  s1\f
  s4 s2.\dim % 7a
  s1\p
  s1 % 7b
  s1-\markup\italic marcato
  s1\< % 8a
  s1\>
  s2\> s\! % 8b
  s2\< s\>
  s2\! s\pp % 8c
  s1*6
  s1\cresc % 9b+
  s1 % 10a
  s1\f
  s2 s\omit\p-\markup{\dynamic p \italic subito} % 10b
  s1
  s1*2 % 11a
  s2 s\mf % 11b
  s1
  s1*2 % 12a
  s2 \tuplet 3/2 {s4 s\f s} % 12b
  s1
  s1*2 % 13a
  s1\dim % 13b
  s1\p
  s1*9
  s1\cresc % 16a+
  s1 % 16b
  s1\f
  s1*2 % 17a
  s2 s\omit\pp-\markup{\dynamic pp \italic subito} % 17b
  s1*5
  s2. s4\pp % 19a
  s1*4
  s1\omit\ppp-\markup{\dynamic ppp \italic "poco rall."} % 20a+
  s1*3 % 20b
}

pianoLHone = \relative {
  \global \vt
  <d, d'>1
  <fis, fis'>2 <a a'>
  <d d'>2 <cis cis'> % 2b
  <b b'>4 <a a'> <g g'> <fis fis'>
  <a a'>2 <d d'>4 s % 2c
  <g, g'>2 <a a'>
  <d d'>4 <cis cis'> <b b'> <a a'> % 2d
  <g g'>2. <g' g'>4
  <fis fis'>4 <e e'> <d d'> <cis cis'> % 2e
  <b b'>4 <a a'> <g g'> <fis fis'>
  <g g'>2 d'4 <fis, fis'> % 3a
  <g g'>2 <a a'>
  <d d'>1 % 3b
  fis2 a
  d2 cis % 3c
  \vo b4 a g fis \vt
  a2 d,4 fis % 4a
  g2 a
  b1 % 4b
  a1
  <d, d'>2 <cis cis'> % 5a
  <b b'>4 <a a'> <gis gis'> <cis cis'>
  fis2. <cis cis'>4 % 5b
  <d d'>2 <e e'>
  <a a'>4 <gis gis'> <fis fis'> <e e'> % 6a
  <d d'>2 <e e'>
  <eis eis'>2 \vo <fis fis'>4 a % 6b
  <d, d'>4 <fis fis'> <b, b'> <a a'>
  <gis gis'>4 <eis' eis'> <fis fis'> <dis dis'> % 7a
  <e e'>2 e
  \vt <a, a'>2 r % 7b
  cis'2(e
  \ov a2 gis) % 8a
  fis4(e d cis
  b4 e a,) cis( % 8b
  d2 e
  eis2 fis4) <cis, cis'> % 8c
  <d d'>2 <e e'>
  <a, a'>1 % 8d
  <a a'>2 <b b'>
  <cis cis'>1 % 9a
  <fis fis'>1
  <b, b'>1 % 9b
  <b' b'>2 <e, e'>
  <fis fis'>1 % 10a
  <b b'>1
  <e, e'>1 % 10b
  \vo r2 r4 g'
  fis2~4  \ov r \vo % 11a
  r4 d' cis b~
  b4(ais8 gis ais) \ov r8 <fis, fis'>4 % 11b
  <b b'>2 <a a'>
  <g g'>2 <fis fis'>4 <d d'> % 12a
  <e e'>2 <fis fis'>
  <g g'>2 <fis fis'>4 <e e'> % 12b
  <d d'>2 <cis cis'>
  <b b'>2 <b' b'> % 13a
  <a a'>2 <g g'>
  \vt <fis fis'>1~ % 13b
  fis2 a
  d2 cis % 14a
  \ov b4 a g fis
  \vt a2 d,4 fis % 14b
  g2 a
  b1 % 15a
  a1
  d,4 <a a'> <d d'> <cis cis'> % 15b
  <b b'>1
  <e e'>4 <b b'> <e e'> <d d'> % 16a
  <cis cis'>1
  <g g'>4 <cis cis'> <fis fis'> <e e'> % 16b
  <d d'>4 <fis fis'> <b b'> <a a'>
  <gis gis'>4 <eis eis'> <fis fis'> <dis dis'> % 17a
  \vo <e e'>2 <d d'>
  \vt <cis cis'>2 <d d'> % 17b
  \vo <g, g'>4 <b b'> <e e'> <d d'>
  \ottava #-1 \vt <cis, cis'>4 <g' g'> <fis fis'> <gis gis'> \ottava #0 % 18a
  <a a'>1
  <d d'>2 r % 18b
  fis2 g
  a1 % 19a
  <a, a'>1
  <d d'>1 % 19b
  \vo <ais ais'>2 <b b'>4 <cis cis'>
  \vt <d d'>4 <e e'> <fis fis'> <fis, fis'> % 20a
  <g g'>1
  <a a'>1 % 20b
  <d d'>1~
  q1\fermata
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  s1*47
  fis,1~ % 10b+
  fis2(b4) s % 11a
  cis1~
  cis2 fis8 s s4 % 11b
  s1
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Dynamics \dynamicsPianoAbove
          \new Staff = "up" \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRHone
%            \new Voice {\autoChange \pianoRHtwo}
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPianoCentre
          \new Staff = "down" \with {
%            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Dynamics \dynamicsPianoAbove
          \new Staff = "up" \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRHone
%            \new Voice {\autoChange \pianoRHtwo}
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPianoCentre
          \new Staff = "down" \with {
%            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Dynamics {\teeny \dynamicsPianoAbove}
          \new Staff = "up" \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
%            \new Voice {\autoChange \pianoRHtwo}
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPianoCentre}
          \new Staff = "down" \with {
%            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Dynamics {\teeny \dynamicsPianoAbove}
          \new Staff = "up" \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
%            \new Voice {\autoChange \pianoRHtwo}
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPianoCentre}
          \new Staff = "down" \with {
%            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Dynamics {\teeny \dynamicsPianoAbove}
          \new Staff = "up" \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
%            \new Voice {\autoChange \pianoRHtwo}
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPianoCentre}
          \new Staff = "down" \with {
%            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Dynamics {\teeny \dynamicsPianoAbove}
          \new Staff = "up" \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
%            \new Voice {\autoChange \pianoRHtwo}
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPianoCentre}
          \new Staff = "down" \with {
%            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = "up" \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwoSingle
            \new Dynamics \dynamicsPianoAbove
            \new Dynamics \dynamicsPianoCentre
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    output-suffix = midi-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = "up" \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwoSingle
            \new Dynamics \dynamicsPianoAbove
            \new Dynamics \dynamicsPianoCentre
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    output-suffix = midi-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = "up" \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwoSingle
            \new Dynamics \dynamicsPianoAbove
            \new Dynamics \dynamicsPianoCentre
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    output-suffix = midi-bass
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto

          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = "up" \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwoSingle
            \new Dynamics \dynamicsPianoAbove
            \new Dynamics \dynamicsPianoCentre
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
