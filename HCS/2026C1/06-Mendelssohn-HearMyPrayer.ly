\version "2.25.34"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hear My Prayer"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Mendelssohn"
  arranger    = "Ed. Myles B. Foster"
%  opus        = "opus"

  poet        = "W. Bartholomew"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Andante 4=108
  s1*35
  \tempo "Allegro moderato." 8=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*4
  \textMark \markup { \box "1b" } s1*4
  \textMark \markup { \box "1c" } s1*4
  \textMark \markup { \box "2a" } s1*4
  \textMark \markup { \box "2b" } s1*4
  \textMark \markup { \box "2c" } s1*4
  \textMark \markup { \box "2d" } s1*5
  \textMark \markup { \box "2e" } s1*4 \break
  \textMark \markup { \box "3a" } s1*2 \time 3/8 s4.*6
  \textMark \markup { \box "3b" } s4.*11
  \textMark \markup { \box "3c" } s4.*11
  \textMark \markup { \box "4a" } s4.*11
  \textMark \markup { \box "4b" } s4.*11
  \textMark \markup { \box "4c" } s4.*10
  \textMark \markup { \box "5a" } s4.*10
  \textMark \markup { \box "5b" } s4.*12
  \textMark \markup { \box "5c" } s4.*13 \time 4/4
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*4
  \textMark \markup { \box "6c" } s1*7 \break
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" } s1*5
  \textMark \markup { \box "7c" } s1*4
  \textMark \markup { \box "7d" } s1*5
  \textMark \markup { \box "7e" } s1*4
  \textMark \markup { \box "8a" } s1*6
  \textMark \markup { \box "8b" } s1*5
  \textMark \markup { \box "8c" } s1*5
  \textMark \markup { \box "9a" } s1*5
  \textMark \markup { \box "9b" } s1*6
  \textMark \markup { \box "9c" } s1*5
  \textMark \markup { \box "10a" } s1*6
  \textMark \markup { \box "10b" } s1*5
  \textMark \markup { \box "10c" } s1*6
  \textMark \markup { \box "11a" } s1*7
  \textMark \markup { \box "11b" } s1*9
}

dynamicsSolo = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1 s8 s\cresc s2. s1\sf s | % 2a
  s1*3 s4. s8\pp s2 |
  s2 s4.\< s8\! s4.\> s8\! s2 s2.. s8\pp s1 |
  s4 s2\cresc s4-\markup\italic "poco rit." s2\sf s-\markup\italic "a tempo" s1*3 |
  s1*4 |
  s1*2 s4.*9 s8\> s4\! s4. s\sf s4.*14 s4.\sf s4 s8\f | % 3
  s4.\sf | s4.*10 | s4.\sf | s4.*20 |
  s4.*15 | s4.\sf | s4.*10 | s4\< s8\! | s4.\f | s\> | s\! | s4.*5 |
  s1*7 | s4 s2.\f-\markup Sostenuto. | s1 | s2 s\sf | s2. s4\sf | s1*4 | % 6
  s1-\markup{\smallCaps Solo. \italic "Con un poco più di moto."} | s1*3 | % 7a
  s1*2 | s2\< s\! | s1 | s\f |
  s2. s8*2/3 s4*2/3\cresc | s1 | s\sf | s |
  s2.\sf s8*2/3 s4*2/3\f | s1 | s4 s2.\dim | s1\p | s |
  s1\f | s4 s2.\dim | s1\p | s |
  s1*8 | s1\f | s1*6 | s4 s2.\cresc | % 8
  s1\f | s1*7 | s4 s2.\f | s1*4 | s2 s\cresc | s1*2 |
  s1*4 | s1\cresc | s\f || s | s\cresc | s | s\cresc | s || s\f | s\dim | s\p | s | s\f | s |
  s1*3 | s8 s2..\f | s1*6 | s1\< | s2\> s\! | s1\p | s1*3 | % 11
}

solowithsop = \relative {
  e'4 8 8 4 8 8 | a4 8 8 b4. 8 | cis4 8 8 2 | % 8ab
  b4 a fis a8 d, | 4 e8. fis16 2 | r2 r4 a8 8 | fis4 g8. a16 4. 8 | 4 cis8. d16 2 |
  d4 e fis2 | r4 d8 8 4 c8 b | 4 a8 gis8 2 | r4 e'8 8 4 d8 c | 4 b8 a8 2 | % 9a
  c2. 4 | 2 b4 a | g(a) b cis | d4 4 2~ | 4 8 8 4 8 8 4 d,4 2~ |
  d4 8 8 4 8 8 |
}

solo = \relative {
  \global
  R1*2 | r2 d''4 g, | a(d,8) d e fis g b |
  d4. 8 8 g, a c | 4 b4. e8(c) b | a4. r8 d4 g, | a(d,8) d e fis g b |
  d4 r8 b b b e d | 4 cis r8 c4 a8 | d4. 8 g b, c cis | d4 d r8 a(c) b |
  g4 r8 a bes8. d16 4 | r8 d g, a bes(g bes) d | % 2a
  g8. f16 ees4 r8 bes ees, f | g8(bes~8) ees d8. cis16 4 |
  r8 cis d e f(e d) e | d8. cis16 4 r8 d bes gis | a2 r8 f' d gis, | % 2b
  a4 r8 e f fis g a |
  bes2~8 8 a ees' | d2~8 cis c c | b4 bes a4. 8 | bes8 aes g f e bes' a g | % 2c
  fis8 r d'2 cis8 8 | g'4.(cis,8) d4 g, | a(d,8) d e fis g b | % 2d
  d4. 8 8 g, c c | 4 b a4. b16(c) |
  b4 r8 d g b, c cis | d4 d r8 a(c) b | % 2e
  g4. r8 c4 fis, | g(d8) d d'\fermata c a fis |
  g4 r r2 | r r4 r8 b \section | 8. c16 b8 | e e r | R4. | r8 r b | b a e' | dis4 r8 | % 3a
  R4. | r8 r b | e,8. g16 b8 | d c b | a g fis | dis'4 r8 | R4.*3 | r8 r fis, | b b b |
  cis8 b4 | R4. | r8 r b | ais b f | fis'4.~ | 4.~ | 4 e8 | d cis ais | b g fis | d' cis b | e(d) cis |
  fis4.~ | 8 e d | d r g, | e'4.~ | 8 d cis | 4 ais8 | b cis d | cis d e | dis e fis | e4.~ | e | % 4a
  eis4. | fis8(e) d | d cis ais | b4 8 | 8. c16 b8 | e e r | R4. | r8 r b | b c b | e4 r8 | R4. |
  r8 r b | g' fis e | e c a | g fis e | ais4 b8 | g'4.~ | 8 fis e | 4 e,8 | e'4.~ | 8 d c |
  c4.( | b8) r r | R4. | r8 r gis | a b c | dis e fis | g fis e | 4 b8 | b a fis | e4 8 | % 5a
  e'4.~ | e~ | e~ | e | 4 8 | a4.~ | 8 r c, | b4. | 4 8 | a4. | g | g |
  fis4 g8 | e4.~ | 8 r r | r r b' | 8. c16 b8 | g'4.~ | g~ | g~ | 4 r8 | R4.*4 | \section
  r8 e,^\markup\smallCaps Recit. gis b d8.-> 16 4~ | 8 8 e b d4(cis) | r8 e e g, bes8. 16 4~ | 8 8 8 a c4. r8 | % 6a
  f,4 8 g aes8. 16 g fis b c | 4 r8 c c g g a | bes4 g'2 e8. d16 | cis4 g'2 bes,8. a16 |
  a4 d c bes | a g ees'2~ | 2(d4) d~ | 2 c4 g | a2 r | R1 | R\fermata \section |
  b4~ \tuplet 3/2 {b8 a g} c4~\tuplet 3/2 {8 b a} | % 7a
  c4~\tuplet 3/2 {8 b a} d2 | g4 d b d8 g, | 4 fis8. g16 a2 |
  b4~\tuplet 3/2 {8 a g} c4~\tuplet 3/2 {8 b a} | % 7b
  d4~\tuplet 3/2 {8 b a} gis2 | a4 b c2 | 4 e d2 | g4 d b d8 g, |
  g4 \tuplet 3/2 {b8(a) g} 4 \tuplet 3/2 {r8 g a} | % 7c
  b4~\tuplet 3/2 {8 a g} b4~\tuplet 3/2 {8 a g} | c2~8 r c c |
  c4~\tuplet 3/2 {8 b a} c4~\tuplet 3/2 {8 b a} |
  d2~8 r b b | g'4 fis8 e8 4 dis | e d8 c8 4(b) | c b8(a) d4 c8 a | % 7d
  g4 a8. 16 b2 |
  g'4(fis8) e8 8. dis16 4 | e d8 c8 4(b) | c b8(a) d4 c8 a | % 7e
  g4 a8. g16 4 r |
  a4~(\tuplet 3/2 {8 b) c} a4~\tuplet 3/2 {8 b c} | % 8a
  d4~\tuplet 3/2 {8 c b} 2 |
  fis4~(\tuplet 3/2 {8 g) a} fis4~\tuplet 3/2 {8 g a} |
  b1~ | 2 a4. g8 | g2 r |
  R1*2
  \solowithsop
  d4 r r2 | b'4~\tuplet 3/2 {8 a g} c4~\tuplet 3/2 {8 c a} | % 9c+
  c4~\tuplet 3/2 {8 b a} d2 | g4 d b d8 g, |
  g4 fis8. g16 a2 | b4~\tuplet 3/2 {8 a g} c4~\tuplet 3/2 {8 b a} | % 10a
  d4~\tuplet 3/2 {8 b a} gis2 | a4 b c2 | 4 e d2 | g4 d b d8 g, |
  g4 \tuplet 3/2 {b8(a) g} 4 \tuplet 3/2 {r8 g a} | % 10b
  b4~\tuplet 3/2 {8 a g} b4~\tuplet 3/2 {8 a g} |
  c2~8 r c c | 4~\tuplet 3/2 {8 b a} c4~\tuplet 3/2 {8 b a} | dis2. b8 b |
  g'4 fis8 e8 4 dis | e d8 c8 4(b) | c b8(a) d4 c8 a | % 10c
  g4 a8. 16 b2 | g'4(fis8) e8 8. dis16 4 | e4 d8 c8 4(b) |
  a4~\tuplet 3/2 {8(b) c} a4~\tuplet 3/2 {8 b c} | % 11a
  d4~\tuplet 3/2 {8 c b} 2 |
  fis4~\tuplet 3/2 {8(g) a} fis4~\tuplet 3/2 {8 g a} |
  r4 g g'2(~ | 2 fis4 e | d2) a4. b8 | g2. r4 |
  a4~\tuplet 3/2 {8(b) c} a4~\tuplet 3/2 {8 b c} | % 11b
  d4~\tuplet 3/2 {8 c b} 2 |
  fis4~\tuplet 3/2 {8(g) a} fis4~\tuplet 3/2 {8 g a} |
  b1~ | 2 a4. g8 | g1~ | 1~ | 4 r r2 | R1\fermata |
  \bar "|."
}

Artarc   = \lyricmode { And re -- main there at rest, }
Artarp   = \lyricmode { And re -- main there at rest. }
Ar_tarp  = \lyricmode { And re -- main __ there at rest. }
Artc     = \lyricmode { And re -- main there, }
Artfec   = \lyricmode { And re -- main there for ev -- er, }
Artfearc = \lyricmode { And re -- main there for ev -- er at rest, }
Artfearp = \lyricmode { And re -- main there for ev -- er at rest. }
Artfears = \lyricmode { And re -- main there for ev -- er at rest; }
awIrc    = \lyricmode { a -- way would I rove, }
bmanc    = \lyricmode { build me a nest, }
Fac      = \lyricmode { Far a -- way, }
fac      = \lyricmode { far a -- way, }
fae      = \lyricmode { far a -- way! }
fawIrc   = \lyricmode { far a -- way would I rove, }
fawIre   = \lyricmode { far a -- way would I rove! }
Fa_wIrc  = \lyricmode { Far a -- way __ would I rove, }
fearc    = \lyricmode { for ev -- er at rest, }
fearp    = \lyricmode { for ev -- er at rest. }
fears    = \lyricmode { for ev -- er at rest; }
ftwc     = \lyricmode { for the wings, }
ftwoadc  = \lyricmode { for the wings of a dove, }
ftw_oadc = \lyricmode { for the wings __ of a dove, }
ftwoade  = \lyricmode { for the wings of a dove! }
Itwbmanc = \lyricmode { In the wil -- der -- ness build me a nest, }
Itwbmc   = \lyricmode { In the wil -- der -- ness build me, }
Hmpc    = \lyricmode { Hear my prayer, }
HmyOgc  = \lyricmode { Hear my prayer, O God, }
Ihumtce = \lyricmode { In -- i -- qui -- ty, ha -- tred, up -- on me they cast! }
iTee    = \lyricmode { in -- cline Thy ear! }
Lhmcc    = \lyricmode { Lord, hear me call, }
Lhmce    = \lyricmode { Lord, hear me call! }
Oftwc    = \lyricmode { O for the wings, }
O_ftwc   = \lyricmode { O __ for the wings, }
Oftwoade = \lyricmode { O for the wings of a dove! }
OGc      = \lyricmode { O God, }
OGhmcc  = \lyricmode { O God, hear my cry, }
OG_hmcc  = \lyricmode { O God, __ hear my cry, }
OGhmce  = \lyricmode { O God, hear my cry! }
O_Ghmce  = \lyricmode { O __ God, hear my cry! }
OG_hmce  = \lyricmode { O God, __ hear my cry! }
OGh_mce  = \lyricmode { O God, hear __ my cry! }
Pabc     = \lyricmode { Per -- plex’d and be -- wil -- der’d, }
rtfec    = \lyricmode { re -- main __ there for ev -- er, }
rtfearc  = \lyricmode { re -- main there for ev -- er at rest, }
r_tfearc = \lyricmode { re -- main __ there for ev -- er at rest, }
r_tfearp = \lyricmode { re -- main __ there for ev -- er at rest. }
Tesc    = \lyricmode { The e -- ne -- my shout -- eth, }
Tgcfc   = \lyricmode { The god -- less come fast, }
Tgcfe   = \lyricmode { The god -- less come fast! }
Tgcfs   = \lyricmode { The god -- less come fast; }
twoade   = \lyricmode { the wings of a dove! }
Twomc   = \lyricmode { The wick -- ed op -- press me, }
Whoc     = \lyricmode { With hor -- ror o -- ver -- whelm’d, }

wordsSolo = \lyricmode {
  \Hmpc O God, in -- cline Thine ear!
  Thy -- self from my pe -- ti -- tion do not hide;
  \Hmpc O God, in -- cline Thine ear!
  Thy -- self from my pe -- ti -- tion do not hide,
  Thy -- self from my pe -- ti -- tion do not hide!
  Take heed to me! % 2a
  Hear how in prayer I mourn to Thee,
  Hear how in prayer __ I mourn to Thee,
  Hear how in prayer __ I mourn to Thee!
  Take heed to me, Take heed to me!
  With -- out Thee all is dark, __
  I have no guide, __
  I have no guide, no guide;
  With -- out Thee all is dark,
  I have no guide, I have no guide; __
  Hear my prayer, O God, in -- cline Thine ear!
  Thy -- self from my pe -- ti -- tion do not hide,
  Thy -- self from my pe -- ti -- tion do not hide!
  Hear my prayer, O God, in cline Thine ear!
  The e -- ne -- my shout -- eth, % 3a
  The god -- less come fast!
  In -- i -- qui -- ty, hat -- red, up -- on me they cast!
  The wick -- ed op -- press me,
  Ah, where shall I fly? __
  \Pabc \OGhmcc
  \OG_hmce \OG_hmce \Pabc \OGhmcc __ \OGc \OGhmce \Tesc \Tgcfc \Pabc \OGhmce \OG_hmce \OG_hmce __ % 4
  \Pabc \OGhmce \OGhmce \OG_hmce __ \OGhmce \OGhmce __ \OGhmce __
  My heart is sore -- ly pain’d with -- in my breast,
  My soul with death -- ly ter -- ror is op -- press’d,
  Trem -- bling and fear -- ful -- ness up -- on me fall,
  \Whoc \Lhmcc \Lhmcc \Whoc __ \Lhmce
  O __ for the wings, __ for the wings __ of a dove! % 7a
  Far a -- way, far a -- way would I rove!
  O __ for the wings, __ for the wings __ of a dove!
  Far a -- way, far a -- way, far a -- way,
  far a -- way would I rove!
  In the wil -- der -- ness build __ me a nest, __
  And re -- main __ there for ev -- er at rest,
  In the wil -- der -- ness build me, build me a nest, __
  And re -- main there for ev -- er at rest;
  In __ the wil -- der -- ness build me a nest, __
  And re -- main there for ev -- er ar rest,
  And __ re__ main there for ev -- er at rest, % 8a
  And __ re -- main there for ev -- er at rest.
  \Oftwc \ftwoadc \twoade \Fac \fawIrc \fawIrc \awIrc
  \fae \Itwbmanc \Artfearc \Artfearc \r_tfearc \r_tfearp \O_ftwc \ftwoade \Fac \fawIrc % 9
  \O_ftwc \ftwoadc \Fac \fac \fac \fawIre \Itwbmanc __ \Artfearc \Itwbmc \bmanc __ \Artfears \Itwbmanc __
  \Artfearc \fearc \fears \Artfearc \Artfearp __
}

MArtarc   = \lyricmode { "And " re "main " "there " "at " "rest, " }
MArtarp   = \lyricmode { "\nAnd " re "main " "there " "at " "rest. " }
MAr_tarp  = \lyricmode { "\nAnd " re "main "  "there " "at " "rest. " }
MArtc     = \lyricmode { "\nAnd " re "main " "there, " }
MArtfec   = \lyricmode { "\nAnd " re "main " "there " "for " ev "er, " }
MArtfearc = \lyricmode { "\nAnd " re "main " "there " "for " ev "er " "at " "rest, " }
MArtfearp = \lyricmode { "\nAnd " re "main " "there " "for " ev "er " "at " "rest. " }
MArtfears = \lyricmode { "\nAnd " re "main " "there " "for " ev "er " "at " "rest; " }
MawIrc    = \lyricmode { "\na" "way " "would " "I " "rove, " }
Mbmanc    = \lyricmode { "\nbuild " "me " "a " "nest, " }
MFac      = \lyricmode { "\nFar  " "a " "way,  " }
Mfac      = \lyricmode { "far  " "a " "way,  " }
Mfae      = \lyricmode { "far  " "a " "way!  " }
MfawIrc   = \lyricmode {  "far " a "way " "would " "I " "rove, " }
MfawIre   = \lyricmode { "\nfar " a "way " "would " "I " "rove! " }
MFa_wIrc  = \lyricmode { "\nFar " a "way "  "would " "I " "rove, " }
Mfearc    = \lyricmode { "\nfor " ev "er " "at " "rest, " }
Mfearp    = \lyricmode { "\nfor " ev "er " "at " "rest. " }
Mfears    = \lyricmode { "\nfor " ev "er " "at " "rest; " }
Mftwc     = \lyricmode { "\nfor " "the " "wings, " }
Mftwoadc  = \lyricmode { "\nfor " "the " "wings " "of " "a " "dove, " }
Mftw_oadc = \lyricmode { "\nfor " "the " "wings "  "of " "a " "dove, " }
Mftwoade  = \lyricmode { "\nfor " "the " "wings " "of " "a " "dove! " }
MItwbmanc = \lyricmode { "\nIn " "the " wil der "ness " "build " "me " "a " "nest, " }
MItwbmc   = \lyricmode { "\nIn " "the " wil der "ness " "build " "me, " }
MHmpc    = \lyricmode { "\nHear " "my " "prayer, " }
MHmyOgc  = \lyricmode { "\nHear " "my " "prayer, " "O " "God, " }
MIhumtce = \lyricmode { "\nIn" i qui "ty, " ha "tred, " up "on " "me " "they " "cast! " }
MiTee    = \lyricmode { "\nin" "cline " "Thy " "ear! " }
MLhmcc    = \lyricmode { "\nLord, " "hear " "me " "call, " }
MLhmce    = \lyricmode { "\nLord, " "hear " "me " "call! " }
MOftwc    = \lyricmode { "\nO " "for " "the " "wings, " }
MO_ftwc   = \lyricmode { "\nO "  "for " "the " "wings, " }
MOftwoade = \lyricmode { "\nO " "for " "the " "wings " "of " "a " "dove! " }
MOGc      = \lyricmode { "O " "God, " }
MOGhmcc  = \lyricmode { "\nO " "God, " "hear " "my " "cry, " }
MOG_hmcc  = \lyricmode { "\nO " "God, "  "hear " "my " "cry, " }
MOGhmce  = \lyricmode { "\nO " "God, " "hear " "my " "cry! " }
MO_Ghmce  = \lyricmode { "\nO "  "God, " "hear " "my " "cry! " }
MOG_hmce  = \lyricmode { "\nO " "God, "  "hear " "my " "cry! " }
MOGh_mce  = \lyricmode { "\nO " "God, " "hear "  "my " "cry! " }
MPabc     = \lyricmode { "\nPer" "plex’d " "and " be wil "der’d, " }
Mrtfec    = \lyricmode { "\nre" "main "  "there " "for " ev "er, " }
Mrtfearc  = \lyricmode { "\nre" "main " "there " "for " ev "er " "at " "rest, " }
Mr_tfearc = \lyricmode { "\nre" "main "  "there " "for " ev "er " "at " "rest, " }
Mr_tfearp = \lyricmode { "\nre" "main "  "there " "for " ev "er " "at " "rest. " }
MTesc    = \lyricmode { "\nThe " e ne "my " shout "eth, " }
MTgcfc   = \lyricmode { "\nThe " god "less " "come " "fast, " }
MTgcfe   = \lyricmode { "\nThe " god "less " "come " "fast! " }
MTgcfs   = \lyricmode { "\nThe " god "less " "come " "fast; " }
Mtwoade   = \lyricmode { "\nthe " "wings " "of " "a " "dove! " }
MTwomc   = \lyricmode { "\nThe " wick "ed " op "press " "me, " }
MWhoc     = \lyricmode { "\nWith " hor "ror " o ver "whelm’d, " }

wordsSoloMidi = \lyricmode {
  \MHmpc "O " "God, " in "cline " "Thine " "ear! "
  "\nThy" "self " "from " "my " pe ti "tion " "do " "not " "hide; "
  \MHmpc "O " "God, " in "cline " "Thine " "ear! "
  "\nThy" "self " "from " "my " pe ti "tion " "do " "not " "hide, "
  "\nThy" "self " "from " "my " pe ti "tion " "do " "not " "hide! "
  "\nTake " "heed " "to " "me! " % 2a
  "\nHear " "how " "in " "prayer " "I " "mourn " "to " "Thee, "
  "\nHear " "how " "in " "prayer "  "I " "mourn " "to " "Thee, "
  "\nHear " "how " "in " "prayer "  "I " "mourn " "to " "Thee! "
  "\nTake " "heed " "to " "me, " "Take " "heed " "to " "me! "
  "\nWith" "out " "Thee " "all " "is " "dark, " 
  "\nI " "have " "no " "guide, " 
  "\nI " "have " "no " "guide, " "no " "guide; "
  "\nWith" "out " "Thee " "all " "is " "dark, "
  "\nI " "have " "no " "guide, " "I " "have " "no " "guide; " 
  "\nHear " "my " "prayer, " "O " "God, " in "cline " "Thine " "ear! "
  "\nThy" "self " "from " "my " pe ti "tion " "do " "not " "hide, "
  "\nThy" "self " "from " "my " pe ti "tion " "do " "not " "hide! "
  "\nHear " "my " "prayer, " "O " "God, " "in " "cline " "Thine " "ear! "
  "\nThe " e ne "my " shout "eth, " % 3a
  "\nThe " god "less " "come " "fast! "
  "\nIn" i qui "ty, " hat "red, " up "on " "me " "they " "cast! "
  "\nThe " wick "ed " op "press " "me, "
  "\nAh, " "where " "shall " "I " "fly? " 
  \MPabc \MOGhmcc
  \MOG_hmce \MOG_hmce \MPabc \MOGhmcc __ \MOGc \MOGhmce \MTesc \MTgcfc \MPabc \MOGhmce \MOG_hmce \MOG_hmce __ % 4
  \MPabc \MOGhmce \MOGhmce \MOG_hmce __ \MOGhmce \MOGhmce __ \MOGhmce __
  "\nMy " "heart " "is " sore "ly " "pain’d " with "in " "my " "breast, "
  "\nMy " "soul " "with " death "ly " ter "ror " "is " op "press’d, "
  "\nTrem" "bling " "and " fear ful "ness " up "on " "me " "fall, "
  \MWhoc \MLhmcc \MLhmcc \MWhoc __ \MLhmce
  "\nO "  "for " "the " "wings, "  "for " "the " "wings "  "of " "a " "dove! " % 7a
  "\nFar " a "way, " "far " a "way " "would " "I " "rove! "
  "\nO "  "for " "the " "wings, "  "for " "the " "wings "  "of " "a " "dove! "
  "\nFar " a "way, " "far " a "way, " "far " a "way, "
  "\nfar " a "way " "would " "I " "rove! "
  "\nIn " "the " wil der "ness " "build "  "me " "a " "nest, " 
  "\nAnd " re "main "  "there " "for " ev "er " "at " "rest, "
  "\nIn " "the " wil der "ness " "build " "me, " "build " "me " "a " "nest, " 
  "\nAnd " re "main " "there " "for " ev "er " "at " "rest; "
  "\nIn "  "the " wil der "ness " "build " "me " "a " "nest, " 
  "\nAnd " re "main " "there " "for " ev "er " "ar " "rest, "
  "\nAnd "  "re__ " "main " "there " "for " ev "er " "at " "rest, " % 8a
  "\nAnd "  re "main " "there " "for " ev "er " "at " "rest. "
  \MOftwc \Mftwoadc \Mtwoade \MFac \MfawIrc \MfawIrc \MawIrc
  \Mfae \MItwbmanc \MArtfearc \MArtfearc \Mr_tfearc \Mr_tfearp \MO_ftwc \Mftwoade \MFac \MfawIrc % 9
  \MO_ftwc \Mftwoadc \MFac \Mfac \Mfac \MfawIre \MItwbmanc __ \MArtfearc \MItwbmc \Mbmanc __ \MArtfears \MItwbmanc __
  \MArtfearc \Mfearc \Mfears \MArtfearc \MArtfearp __
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*21 |
  s1\f | s | s4. | s4 s8\f | s4.*3 | s4 s8\f | | s4.*5 | s4 s8\f | s4.*3 | s4.\sf | s4. | | s4 s8\f | s4.*9 | s4 s8\f | % 3
  s4.\sf | s4.*10 || s4.\sf | s4.*4 | s4 s8\f | s4.*3 | s4 s8\f | s4. || s4.*4 | s4 s8\f | s4.*5 |
  s4.*15 | s4.\sf | s4.*14 | s4.\p | s4.*2 | s4.\pp | s |
  s1*7 | s4 s2.\f | s1 | s2 s\sf | s1*2 | s4 s2.\pp | s1*2 | % 6
  s1*22 |
  s1*8 | s1\f | s1*6 | s4 s2.\cresc |
  s1\f | s1*7 | s4 s2.\f | s1*3 s4. s8\p s2 | s1\pp | s1*2 | % 9
  s1\pp | s1*3 | s1\cresc | s || s\p | s1*7 | s2 s\p | s1*2 |
  s1 | s\cresc | s2.. s8\f | s2 s\dim | s1 | s\pp | s1*3 | s1\pp | s\< | s2\> s\! | s1\p | s1*3 |
}

soprano = \relative {
  \global
  R1*12 |
  R1*21 |
  d''4 g, a(d,8) d | e fis g b d2 \section | R4. r8 r b | 8. c16 b8 | e e r | R4. | r8 r b | % 3a
  b8 a e' | dis4 r8 | R4.*3 | r8 r b | e,8. g16 b8 | d c b | a g fis | dis'4 r8 | R4. |
  r8 r fis, | b b b | cis b r | R4.*7 | r8 r fis |
  fis'4.~ | 8 e d | d r g, | e'4.~ | 8 d cis | 4 ais8 | b cis d | cis d e | dis e fis | e4.~ | e | % 4a
  eis4. | fis8(e) d | d cis ais | b4 r8 | R4. | r8 r a | 8. b16 a8 | dis8 8 r | R4. | r8 r a | a b a |
  dis4 r8 | R4.*3 | r8 r b | g'4.~ | 8 fis e | 4 e,8 | e'4.~ | 8 d c |
  c4.( | b8) r r | R4. | r8 r gis | a b c | dis e fis | g fis e | 4 b8 | b a fis | e4 8 | % 5a
  e'4.~ | e~ | e~ | e | 4 8 | a4.~ | 8 r c, | b4. | 4 8 | a4. | g | g |
  fis4 g8 | e4.~ | 8 r r | R4.*5 | g4. | g | f4 8 | 4.( |  e) \section |
  R1*7 | r4 g'2 bes,8. a16 | % 6ab
  a4 d c bes | a g ees'2~ | 2(d4) r | R1 | r4 d,4 4. 8 | d1~ | 4 r r2\fermata \section |
  R1*22 | % 7
  R1*8
  \solowithsop
  d4. 8 4 8 8 | d1~ | d~ | d | % 9c+
  e2 fis | g2.(fis4 | f2.) e4 | R1 | c'4 e d2 | s1 | % 10a
  g,4 fis g2 | R1*2 | r2 fis4 8 8 | 4 8 8 b2~ |
  b2 r | R1*2 | r2 b4. 8 | 4(a8) 8 2 | g2 f4 f |
  e4(fis) g g | 2 d4. g8 | 4 a8. 16 b4. 8 | 2 e4 d | c(b) a2 | 2 d,4. 8 | 2. r4 | % 11a
  R1*2 | d2 d | d(g) | g fis | g1~ | 1~ | 4 r r2 | R1\fermata |
}

wordsSop = \lyricmode {
  \HmyOgc \iTee \Tesc \Tgcfe \Ihumtce \Twomc \OG_hmce % 3
  \OG_hmcc \Pabc \OGhmcc __ \OGc \OGhmce \Tesc \Tgcfs \OG_hmce \OG_hmce __
  \Pabc \OGhmce \OGhmce \OG_hmce __ \OGhmce \OGhmce __ \OGhmce __
  \Lhmcc \Whoc __ \Lhmce __
  \Oftwc \ftwoadc \twoade \Fac \fawIrc \fawIrc \awIrc % 8
  \fae \Itwbmanc \Artfearc \Artfearc \r_tfearc \r_tfearc \fearp __
  \Artc \fawIre \Oftwoade __ \Itwbmanc
  \Artfearc \fearc \fears \Artarp __ % 11
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*21 |
  s1\f | s | s4. s4 s8\f s4.*3 s4 s8\f | | s4.*5 | s4 s8 s4.*3 s4.\f s || s4 s8\f | s4.*9 d4 s8\f |
  s4.\sf | s4.*10 || s4.\sf | s4.*4 | s4 s8\f | s4.*3 | s4 s8\f | s4. || s4.*4 | s4 s8\f | s4.*5 |
  s4.*15 | s4.\sf | s4.*14 | s4.\p | s4.*2 | s4.\pp | s |
  s1*7 | s4 s2.\f | s1*2 | s2. s4\dim | s1 | s4 s2.\pp | s1*2 | % 6
  s1*22 |
  s1*7 | s1\f | s1*7 | s4\cresc s2. |
  s1\f | s1*7 | s4 s2.\f | s1*3 | s4 s2.\p | s1\pp | s1*2 | % 9
  s1\pp | s1*3 | s1\cresc | s || s\p | s1*2 | s1\cresc | s1*4 | s2 s\p | s1*2 |
  s1 | s\cresc | s2.. s8\f | s2 s\dim | s1 | s\pp | s1*3 | s1\pp | s\< | s2\> s\! | s1\p | s1*3 |
}

alto = \relative {
  \global
  R1*12 |
  R1*21 |
  d''4 g, a(d,8) d | e fis g b d2 \section | R4. | r8 r b | 8. c16 b8 | e e r | R4. | r8 r b | % 3a
  b8 a e' dis4 r8 | R4.*3 | r8 r b e,8. g16 b8 | d c b | a g fis | dis'4 r8 | R4. |
  r8 r fis, | b b b | cis b r | R4.*7 | r8 r fis |
  d'4.~ | 8 cis b | b(ais) b | g4 8 | 4.~ | 8 fis e | d r fis | e d cis | fis e dis | g4.~ | g | % 4a
  gis4. | fis4 8(~ | fis g) fis | 4 r8 | R4. | r8 r a | 8. b16 a8 | dis8 8 r | R4. | r8 r a | a b a |
  dis4 r8 | R4.*3 | r8 r b, | b'4.~ | 8 a g | g(gis a | b c b | a4.~ |
  a8) r dis, | e fis g | fis gis a | gis a b | a4.~ | a | gis | b4 g8 | g fis dis | e4 r8 | % 5a
  r8 r e | d'4.( | c) | b | a | c~ | 8 r fis, | g4. | f4 8 | e4. | e | e |
  e4 dis8 | e4.~ | 8 r r | R4.*5 | c4. | c | 4 8 | b4.~ | b \section |
  R1*7 | r4 bes'2 g8. fis16 | % 6ab
  fis2 r | r4 d ees g | ges(f2) 4 | ees2 r | r4 d4 4. 8 | 1~ | 4 r r2\fermata \section |
  R1*22 | % 7
  R1*7 | d4 8 8 4 8 8 | 4(c8 b c4) e8 e | 4(a2 g4)~ | g e fis2 | % 8ab
  fis4 e d2 | d4 cis d2 | d'4 a fis a8 d, | 4 e8. fis16 4. 8 | 4 g8. a16 2 |
  a4 g fis d'8 8 | 4 c8 b8 4 a8 gis | 4 r r e8 e | 4 d8 c8 4 b8 a | 2 r4 e' | % 9a
  e2 dis4 e | fis(a) g fis | e(fis) g g | d d'4 2~ | 4 8 8 4 8 8 | 4 d,4 2~ |
  d4 8 8 4 8 8 | 4. 8 4 8 8 | 1~ | 1~ | 1 |
  cis2 c | b(a) | d1 | R | a'4 4 2 | R1 | % 10a
  d,4 4 2 | R1*2 | e4 8 8 4 8 8 | a2 4. 8 |
  g2 r | R1*2 | r2 g4. 8 | c,4. 8 fis2 | e2 d4 4 |
  e4(d) d e | d2  b4. d8 | 4 c8. 16 b4. g'8 | 1~ | 1~ | 2 fis4. 8 | g2. r4 | % 11a
  R1*2 | c,2 2 | b(c4 cis) | d2 d | 1~ | 1~ | 4 r r2 | R1\fermata |
}

wordsAlto = \lyricmode {
  \HmyOgc \iTee \Tesc \Tgcfe \Ihumtce \Twomc \OG_hmcc
  my cry! \OG_hmcc \Pabc \OGc __ \OGh_mce \Tesc \Tgcfs \OG_hmce __ % 4
  \Pabc \OGhmce \OGc \OGhmce \OG_hmce __ \OGhmce \OGhmce __ \OGhmce __
  \Lhmcc \Whoc \Lhmce __
  \Oftwc \ftw_oadc __ a dove! \Fac \fac \fac \fawIrc \awIrc % 8
  \fae \Itwbmanc \Artfearc \rtfec \fearc \rtfearc \r_tfearc \fearp __
  \Artc \fawIre \Oftwc \ftwoade \Itwbmanc
  \Artfearc \fears \Artarp __ % 11
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*21 |
  s1\f | s | s4. s4 s8\f s4.*3 s4 s8\f | | s4.*5 | s4 s8 s4.*3 s4.\f s || s4 s8\f | s4.*10 | % 3
  s4.\sf | s4.*10 || s4.\sf | s4.*4 | s4 s8\f | s4.*3 | s4 s8\f | s4. || s4.*5 | s4 s8\f | s4.*4 |
  s4.*15 | s4.\sf | s4.*14 | s4.\p | s4.*2 | s4.\pp | s |
  s1*7 | s4 s2.\f | s1*2 | s2. s4\dim | s1 | s4 s2.\pp | s1*2 | % 6
  s1*22 |
  s1*6 | s1\f | s1*8 | s4 s2.\cresc |
  s1\f | s1*7 | s4 s2.\f | s1*3 | s4 s2.\p | s1\pp | s1*2 | % 9
  s1\pp | s1*3 | s1\cresc | s || s\p | s1 | s1\cresc | s1*5 | s2 s\p | s1*2 |
  s1 | s\cresc | s2.. s8\f | s2 s\dim | s1 | s\pp | s1*2 | s1\pp | s | s\< | s2\> s\! | s1\p | s1*3 |
}

tenor = \relative {
  \global
  R1*12 |
  R1*21 |
  d'4 g, a(d,8) d | e fis g b d2 \section | R4. | r8 r b | 8. c16 b8 | e e r | R4. | r8 r b | % 3a
  b8 a e' dis4 r8 | R4.*3 | r8 r b e,8. g16 b8 | d c b | a g fis | dis'4 r8 | R4. |
  r8 r fis, | b b b | cis b r | R4.*8 |
  r8 r fis | fis'4.~ | 8 e d | d(cis) b | g' fis e | 4 r8 | R4. | r8 r ais, | b cis dis | e4.~ e | % 4a
  d4 8 | cis4 8~( | 8 e) e | dis4 r8 | R4. | r8 r a | 8. b16 a8 | dis8 8 r | R4. | r8 r a | a b a |
  dis4 r8 | R4.*4 | r8 r b | e4.~ | 8 d c | d(e) d | c4.~ |
  c8 b a | b r g | a b c | d e f | e4.~ | e~ | e4(fis8) | g4 e8 | b c a | g4 r8 | % 5a
  R4. | r8 r e | e'4.~ | e | 4 8 | dis4.~ | 8 r dis | e4. | d4 8 | cis4. | c | b |
  a4 8 | g4.~ | 8 r r | R4.*5 | e4. | e | f4 8 | d'4.~ | d \section |
  R1*7 | r4 e2 8. a,16 | % 6ab
  a2 r4 d | c bes a bes | c c(bes) aes | g2 r | r4 b4 4. 8 | 1~ | 4 r r2\fermata \section |
  R1*22 |
  R1*6 | % 8a
  a4 8 8 4 8 8 | 4(c2) b8 a | g2 c4. 8 | 2 b4 8 8 | 4 8 8 4(ais) |
  R1 | d4 a fis a8 d, | 4 r d'4. 8 | 4 r a4. 8 | 4 8. 16 2 |
  a4 cis d2~ | 4 r r d8 8 | 4 c8 b8 4 a8 gis | 2 r4 e'8 8 | 4 d8 c8 4 b8 c | % 9a
  c2 a4 4 | 4 8 8 b4 c8 8 | b4(a) g a | a d4 2~ | 4 8 8 4 8 8 | 4 d,4 2~ |
  d4 8 8 4 8 8 | 4. 8 4 8 8 | 1~ | 1~ | 1 |
  d2 2 | d(c') | b1 | R | e4 c a2 | R1 | % 10a
  b4 c b2 | R1 | c4 8 8 4 8 8 | 2. e8 e | dis2. r4 |
  R1*3 | r2 b4. 8 | c4. 8 b2 | e g,4 g |
  g4(a) b g | b(c) d4. b8 | 4 a8. 16 g4. d'8 | 2 c4 b | e(d) cis2 | d c4. 8 | b2. r4 | % 11a
  R1 | d,2 d | 1~ | 2(e) | d c' | b1~ | 1~ | 4 r r2 | R1\fermata |
}

wordsTenor = \lyricmode {
  \HmyOgc \iTee \Tesc \Tgcfe \Ihumtce \Twomc % 3
  \OG_hmce \OGhmcc \Pabc \OGhmce \Tesc \Tgcfs \OG_hmce \OG_hmce
  \Pabc O God, __ hear, \OGhmce \OG_hmce __ \OGhmce \OGhmce __ \O_Ghmce __
  \Lhmce \Whoc o -- ver whelm‘d, \Lhmce __
  \Oftwc \ftwoade \ftwc \Oftwoade \Fac \fawIrc \fawIrc % 8
  \fac __ \Itwbmanc \Artfearc \Artfec \fearc \r_tfearc \r_tfearc \fearp __
  \Artc \fawIrc \Oftwc \ftwoade \Itwbmanc
  \Artfearc \fearc \fears \Ar_tarp __ % 11
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*21 |
  s1\f | s | s4. s4 s8\f s4.*3 s4 s8\f | | s4.*5 | s4 s8 s4.*3 s4.\f s || s4 s8\f | s4.*10 | % 3
  s4.\sf | s4.*10 || s4.\sf | s4.*4 | s4 s8\f | s4.*3 | s4 s8\f | s4. || s4.*5 | s4 s8\f | s4.*4 |
  s4.*15 | s4.\sf | s4.*14 | s4.\p | s4.*2 | s4.\pp | s | % 5
  s1*7 | s4 s2.\f | s1*3 | s1\dim | s4 s2.\pp | s1*2 |
  s1*22 |
  s1*5 | s1\f | s1*9 | s4 s2.\cresc | % 8
  s1\f | s1*7 | s4 s2.\f | s1*3 | s4 s2.\p | s1\pp | s1*2 | % 9
  s1\pp | s1*3 | s1\cresc | s || s\p | s1\cresc | s1*6 | s2 s\p | s1*2 |
  s1 | s\cresc | s2.. s8\f | s2 s\dim | s1 | s\pp | s1*2 | s1\pp | s | s\< | s2\> s\! | s1\p | s1*3 |
}

bass = \relative {
  \global
  R1*12 |
  R1*21 |
  d'4 g, a(d,8) d | e fis g b d2 \section | R4. | r8 r b | 8. c16 b8 | e e r | R4. | r8 r b | % 3a
  b8 a e' dis4 r8 | R4.*3 | r8 r b e,8. g16 b8 | d c b | a g fis | dis'4 r8 | R4. |
  r8 r fis, | b b b | cis b r | R4.*8 |
  r8 r fis | d'4.~ | 8 cis b | b(ais) b | ais4.~ | 8 cis fis, | b4 r8 | R4. | r8 r b | e, fis g | ais b cis | % 4a
  d8 cis b | ais4 b8 | fis8 8 8 | b,4 r8 | R4. | r8 r a' | 8. b16 a8 | dis8 8 r | R4. | r8 r a | a b a |
  dis4 r8 | R4.*4 | r8 r g, | c4.~ | 8 b a | gis(fis) gis | a4.~ |
  a8 g fis | g4 r8 | r r a | b(c) d | c4.~ | c~ | c | b4 b,8 | b b b | e4.~ | % 5a
  e4.~ | 4 r8 | r r e | d'4. | c4 a8 | g4.~ | 8 r a, | g4. | gis 4 8 | a4. | ais | b |
  c4 b8 | e4.~ | 8 r r | R4.*5 | c4(b8) | a4. | 4 8 | 4.( | gis) \section |
  R1*7 | r4 cis'2 cis,8. d16 | % 6ab
  d1~ | 4 4 c bes | a2 b | ees r | r4 d4 4. 8 | 1~ | 4 r r2\fermata \section |
  R1*22 |
  R1*5 | g4 8 8 4 8 8 | % 8a
  g2. f8 e | f1 | e2 a4. 8 | 2 e4. 8 | 4(g) fis4. 8 |
  b,4(cis) d fis | 4(e) d4. 8 | 4 r r2 | d'4 a fis a8 d, | 4 e8. fis16 2 |
  fis4 e d2~ | 4 r d4. 8 | e1~ | 4 r r2 | r r4 a8 a | % 9a
  a4 g8 fis8 4 e8 dis | 2 4 4 | e2 4 4 | fis d'4 2~ | 4 8 8 4 8 8 | 4 d,4 2~ |
  d4 8 8 4 8 8 | 4. 8 4 8 8 | 1~ | 1~ | 1 |
  d2 d | g,(a | b) e | R1 | a4 g fis2 | R1 | % 10a
  d4 d g2 | b4 8 8 4 8 8 | 2(a4) 8 8 | 2 4. 8 | b2. r4 |
  R1*3 | r2 g,4. 8 | a4. 8 b2 | c2 g4 g |
  a2 g4 a | b2 4. 8 | 2.. 8 | 1~ | 1~ | 2 4. 8 | e,2. r4 | % 11a
  R1 | e2 e | 1~ | 2(c') b b | e,1~ | 1~ | 4 r r2 | R1\fermata |
}

wordsBass = \lyricmode {
  \HmyOgc \iTee \Tesc \Tgcfe \Ihumtce \Twomc
  \OG_hmce \OG_hmcc \Pabc \OGhmcc \OGhmce \Tesc \Tgcfs \OG_hmce \OG_hmce % 4
  \OGc O God, __ hear, \OGhmce __ \OGhmce __ \OGhmce \OGhmce __ \O_Ghmce __
  \Lhmcc __ \Whoc \Lhmce __
  \Oftwc \ftwoadc \Oftwoade \Fa_wIrc \fac \fac \fawIrc % 8
  \fac __ \fae __ \Itwbmanc \Artarc \r_tfearc \r_tfearc \fearp __
  \Artc \fawIre \Oftwc \ftwc __ \ftwoade \Itwbmanc
  \Artarc \fears \Ar_tarp __ % 11
}

pianoRHone = \relative {
  \global
  \lh r8 d e fis g b \rh d fis | \vo g b d f s4 \vt <c, e>4~ |
  8(8 <b d> <a c>) s2 | \vo <e' a>4 c8 d e(fis g b)~ |
  <b d>4(<c, fis>) g'(<g a>8)(c | % 1b
  <fis, a c>4)(b4)~<g b>8 <c e>(<a c> <g b>) | a2 \ov <b, g'> |
  <c e a>4( \vo d8) d e(fis g b)~ |
  <g b d>8 <a c> b4~8 8(e d)~ | 4(cis) <g c>(<fis a>) | % 1c
  d'8 d,(g <fis c'>) <g b>4 r8 <g a>~ | <a d> fis(g gis) <e a>4 <c d fis> |
  \vt <b d g>8 \lh d,(e fis g bes \rh d fis | % 2a
  \vo g bes d fis \ov <bes, d g>2) |
  \lh r8 <bes,, ees>(<ees g> <f aes> <g bes>) g(<g bes> <a d> \rh |
  \vo ees'8) g(bes ees) d4(cis)~ |
  <g bes cis>8 <e a cis>(~<a d> <g cis e>) <d' f>(e d e) | % 2b
  d4(cis) r8 d(bes gis) | <e a> g(<cis, f> e d2) | cis4 r r2 |
  g'8(f ees d cis) g'(fis c') | bes(a g f e)(bes' a fis | % 2c
  d8) aes'( g e c) ges'(f ees | d2) e( |
  fis8) c'(bes a) g(bes a g) | cis(bes a g) fis4 g | % 2d
  <<{\vo <c, a'>(<c d>8) q e8(fis g b)(} \new Voice {\vo \once\hideNotes c,4_(s8 \once\hideNotes \vt c8)~4 g'}>> |
  <<{\vo d'4.)~8~4 c~ | 4(b) a4.(b16 c)} \new Voice {\vt s1 | c,4(d) s2} >> |
  \vt s8 g4*1/2 b4*1/2 s8 s r r <g a>( | % 2e
  \vo d') fis,(g gis) <e a>4 <c d fis>~ |
  <b d g>8 <d f>(<c e> <b d>~ <a c d>2)~ |
  <b d>8 8(<a c> <g b>) <c d>4. r8\fermata |
  g'2. <d fis>8(<c d>) | e(fis) g(b) \ov <d, g b d>2 \section | % 3a
  \vo r8 e(dis) | <e g>(e dis) | <e g>(e dis) | <e g>(e dis) |
  g8(a <fis c'>) | <dis fis b>(<b d fis>) <d fis b> |
  b'8(a <a e'>) | <fis a dis>4~<dis fis b>8 | e8(g b) | d(c b) | % 3b
  <e, a'>(<d g> <c fis>) | <fis a dis>4 <dis fis b>8 | e(g b) |
  d(c <gis b>) | a(g fis) | \ov <b, dis fis b>4 r8 | \vo b'4. |
  <ais cis>8->(b4) | 4. | <ais cis>8(b4) | \ov <e, g ais>8(<fis b> <d fis>) | % 3c
  <cis fis>8 <e cis'>^(<d b'> | \vo ais'8) e'(<b d>) | \ov
  <ais cis>(<gis d' fis> <ais cis e>) |
  <b d>8(<e, g cis> <cis e ais>) | <d fis b>(<b d g> <ais cis fis>) |
  <b d eis>4. | <cis e fis>4 fis8 |
  \vo <d' fis>4.~ | 8(<cis e> <b d>) | d4 s8 | e4.~ | e8(d cis) | % 4a
  4 ais8 | b8(cis d) | cis(d e) | dis(e fis) \ov | <g, e'>4.~ | q |
  <gis eis'>4. | fis'8(<cis e> <b d>) | 8(<g cis> <fis ais>) | \ov % 4b
  <dis fis b>8 <b dis fis> <dis fis b> | <dis fis a> <e g> <d fis b> |
  \vo b'8 a g | fis4.*2/3 a8~ | \ov <a,c fis a>(<b g'>) <a dis fis> |
  \vo <g b e>8(g' b~ | b a) g | fis4.*2/3(a8)~ |
  <a, c fis a>8(<b g'>) <dis fis> | \ov <e g b>4.~ | <e fis c'>~ | % 4c
  <e g b>4.~ | <e g ais>4 <fis a b>4*1/2 | <g b e g>4.~ | 8(<a fis'> <g e'>) |
  \vo e'4 e,8 | e'4.^\sf~ | e8(d <e, c'>) |
  c'4. | <e, b'>8(f g) | fis(gis a) | <d, f gis>(<c e a> <b f' gis b>) | % 5a
  a'8(b c) | dis(e fis) | g^\sf(fis e) \ov | <g, b e>4 <e g b>8 |
  q8-. <c fis a>-. <a dis fis>-. | <b e>(fis' <e g>)~ |
  \vt e4. | \vo gis8(a b) | a(b c) | <gis b>(<a c> <b d>) | % 5b
  <a c>8(<b d> <c e>) | dis fis a | <a, c dis fis> <fis a c dis> <dis a' c> |
  <e g b>4. | <d f b> | <cis e a> | <c e g> | <b e g> |
  <a e' fis>4 <dis g>8 | e4.~ | 8( 8 dis) | <e g>(e dis) | <e g>(e dis) | % 5c
  g8(e f) | <c e>(c b) | <c e>(c b) | <c e>(c <c e g>) |
  q4.~ | <c f>~ | <b d f>~ | <b d e>~ \section |
  q1~ | 2 <bes e>->~ | <bes c e>2~ <c e bes> | bes'4.(a8)~ <f a>2~ | % 6a
  \ov <c e f a>2 <b f' aes> | <g c g'>1 | <cis g' bes>2 r | % 6b
  r4 <g' bes e g>2^\markup\italic Sostenuto.  <e g b>8. <fis a>16 |
  <fis a>4 d'(c <d, bes'>) | <c a'> <bes d g> \vo ees'2~ | 2 d | % 6c
  d c4 g | a d, <d a'> g | fis2 r4 s | s1 \section |
  \vo r4 g2(fis4) | r4 a2(g4) \ov | <b, d g>4(<c fis a> <d g b>) r | % 7a
  <g, cis g'>2 <d' fis> |
  \vo r4 g2(fis4) | \ov r4 <d f>2(<b d e>4) | % 7b
  <c e a>(<e gis b> <e a c> <c e a>) | <e a c>(<a c e>~<a c d> <d, a'>) |
  <d g>4 <fis a> <g b> <d g> |
  \vo <b g'>4 <c fis> <b g'> <b d g> | b'2 b | % 7c
  b2(a) | c c |
  c2(b) | b1 | r4 <e, g> <d f>2 | e4(<d fis>) g2~ | % 7d
  <b, g'>4(<c fis> <b g'>8) g' b d |
  c2 <c e>4(<b dis>) | <g e'> <b d>8(c8 4)(b) | c fis, g2 | % 7e
  g4(fis <b, d g>)~ <b d g b> |
  \ov <c g' a>2 q | <c d fis a> <b d g> | \vo <a c fis> q | % 8a
  <g' b>1~ | <d g b>2(<d fis>) |
  <<{<b g'>1~ | g'2. f8(e)} \new Voice {\vth s1 | a1}>> | % 8b-
  d,1( | e) | a2~<<{a4 g~ | \vt g e~2 |} \new Voice {\vth b'2 | cis2 2 |}>>
  \ov <d, b' d>4 <e a> <d fis> a'8 d, | d4 <cis e> <d fis>2 | % 8c
  <fis d'>4 <e a> <d fis> \vo a'8 d, | <d fis>4 <e g>8.(<fis a>16) 2 |
  \ov <a, d fis a>4 <e' g cis>8.(<fis a d>16) 2 |
  <fis a d>4 <g a cis e> \vo <d' fis> d8 d | % 9a
  d4(c8 b) <b d>4(<a c>8 <gis b>) |
  \ov <d f gis b>4(<c e a>8 <b d g>) 4(<a c e>8 <gis b e>) |
  q4 <e' e'>8 8 4(<d d'>8 <c c'>) |
  \vo <e c'>4 <d gis b>8 <c a'> <e a>2 |
  <a c>1~ | 4 \ov 4(<g b> <fis a>) | <e g>(<fis a>) \vo b <a cis> | % 9b
  \ov <d, a' d>2 r4 <d a' c>~ |
  <<{\vo a' g8 fis} \new Voice {\vth bes2}>> <g bes>2 |
  \ov <a, d a'>2 r4 <c d a'>~ |
  a'4 g8 fis <d g>4 \ov <b d> | d2(c) | \vo s4 <b d g>(~g' fis) | % 9c
  r4 <d a'>2~(<d g>4) | s1 |
  \ov <cis e g>2 \vo <d fis> | r4 g2(fis4) | \ov % 10a
  r4 <d f>2(<b d e>4) |
  <c e a>4(<d e gis b> <c e a c> <c e a>) |
  <e a c>4(<a c e>~<a c d> <c, d a'>) |
  <b d g>4(<c fis a>) \vo b'4(d8 g,) |
  <b, g'>4(<c fis>) <b d g>(<d g b>) | <g b>4 r8 q8 4 r8 q | % 10b
  q4 r8 q <fis a>4 r8 q | q4 r8 q8 4 r8 q | <dis fis a>4 r8 q <a b dis fis>2 |
  r4 <g' b>(<fis a>2) | r4 <e g>(<d f>2) | <c e>4 <d fis> g2 | % 10c
  g4(fis <b, g'>8)(g' b d) | g4(fis8 e) <c e>4(<b dis>) |
  <e, g e'>4(<f b d>8 <e c'>) c'4(b) |
  c4 b8 a <d, g d'>4(~<e g c>8 <c e a>) | % 11a
  \ov <b d g>4(<c g' a> <b d g b> <b d g>) |
  <d g b>4(<d a' c>) <d b' d>(<d g b>)( | <d g b d>) r r2 |
  R1 | r2 <c d fis>2 | \vo g'4 <b d> <a c> <g b> |
  \ov <c, e g a>2 q | <c d fis a> <b d g b> | <a c fis> q | % 11b
  <b d g>2 r | R1 | <d g b>4. <g b d>8 4. 8 |
  q4. <g b d g>8 4. 8 | q1~ | q\fermata |
}

pianoRHtwo = \relative {
  \global
  s1 | \vt g'2( \vo <g c e>8)(<e g c> a fis) | g2~ <b, d g> | \vt c4~4 4 s |
  <g' b>4(c,) d(e) | s4 g8(fis) e2*3/4 \once\hideNotes g8~ | % 1b
  g <<{f(d c)} \new Voice {\once\hideNotes \vt f8^~ \vo 4}>> s4 d |
  \once\hideNotes c4~2 s4 |
  s4 b'8 a <e gis>2~ | % 1c
  <<{\vf e2 d} \new Voice {\vt g8 b a g~ \once\hideNotes g4 s}>> \vt |
  r8 d 4 8 4 r8 s | fis d4 f8 s2 | % 1c
  s1 | g8 bes4 <a c>8 s2 | s1 | s4 ees r8 <g bes>(<e g> <f a> | % 2a
  s2 <f a>4.) g8~ | g bes a g f2*1/2 d4 | % 2b
  cis8 bes( \lh a g) f2 | r8 a(b \rh c) d(c bes d) |
  s1*4 | % 2c
  s1 | s2 fis8 c b d | c8 \lh g fis4 g8(a b) \rh d | % 2d
  <g b>8 <a c> <g b> <d a'> <e g>2 | \vth fis8 [ e ] d g_~ <e g>4_(<d fis>)~ |
  <d g b>8( \set tieWaitForNote = ##t g~ b~ d~ <g, b d g>) r8 r s | % 2e
  \unset tieWaitForNote
  \vt <fis a>8 d s f s2 | s1*2 |
  \vf d4 \vt e2 s4 | c4 s2. | s4.*4 | e4. | s | % 3a
  e4 fis8 | s4. | e4 fis8 | g4 fis8 | s4.*2 | s4 fis8 | g4 f8 | \vth e4. \vt | s4. e4(d8) |
  g8 fis4 | e4(d8) | g8 fis4 | s4.*2 | fis4. | s4.*5 |
  fis4.~ | fis~ | <fis b>8 <e ais> d | g4. | \vo g | 8 fis4~ | 4.~ | 4. | % 4a
  b4. | s4.*2 |
  \vt b8 cis d | fis,4.~ | 8 e4 | s4.*2 | <c e>4.*2/3 8~ | 8 <b d> <a c>~ | % 4b
  \once\hideNotes q8 s4 | s8 e'4~ | <c e>4.~ | 8 <d fis> <a c>~ |
  \once\hideNotes q8 s4 | s4.*6 | g'8(gis a) | b(c b) | a4. | % 4c
  <e a>4(dis8) | s4 <b e>8 | \vth e4. \vt | s4. | <e a>4.~ | q | % 5a
  <e ais>4~ <fis ais>8 | s4.*3 |
  \vo fis8(g a) \vt | e4.~ | e~ | e | e | <a c> | s4.*6 | % 5b
  s4.*13 |
  s1 | s2 d,4 cis | s1 | <c ees>2 q~ | % 6a
  \once\hideNotes q1 | s1*3 |
  s1 | s2 ees4 g | ges(f4 2) | g1 | fis4 d(c) <bes d> | d d(c \lh <g bes d>) | <fis a d>1\fermata \section |
  \rh r4 <g b d> <a c>2 | r4 <c fis> <b d>2 | s1*2 | % 7a
  r4 <b d> <a c>2 | s1*4 |
  d2. s4 | r <b dis g>~q q | r <c e g>~<c e fis> q | r q~<c e fis a> q |
  r4 <dis fis a>2 4 | r g(<fis a>2) | g,1~ | 4 r d'(g,8 c) | s2. b'4~ |
  <b g'>4(<a fis'>8 <g e'>) <fis a>2 | e4 f8 e <d f g>2 | % 7e
  <e g>4 d~d g,8 <c e> | <<{\vf d2} \new Voice {\vt b4 c}>> s2 | \vt
  s1*2 | r4 d2 4 | s b c cis | d2 c | d e | % 8a
  cis2 d | 4 c2 b4 | % 8b
  d c8 b <<{\vt c2~ | 2 <b e> |} \new Voice {\vf s2 | e4 <dis fis> s2 |}>>
  \vt b'2~4 ais |
  s1*2 | s2. a,4~ | 2 d | s1 |
  s2 <fis a> | <f a>~<d f> | s1*2 | e2 c4 b8 c | % 9a
  e2 dis4 e | fis s2. | s2 g | s1 | d1 | s |
  <bes d>2~ 4 s | s1 | s2 <a c> | r4 c b2~ | \vo <b d g>4~ <c d fis a> <b d g b>2 |
  \vt s2 a4 c | r4 <b d> <a c>2 | s1*3 | s2 <d g>2 | % 10a
  d2 s | d4 dis e b | <c e>2 2 | q q | s1 |
  s1 | g1~ | 4 \once\hideNotes d'4~4 g,8 c | b4 c s b'~ | % 10b
  <<{b4(a8 g)} \new Voice {\vth c2}>> \vt <fis, a>2 | s2 <d f g>2~ |
  <e g>4 <d fis>~ \once\hideNotes d2 | s1*4 | s2 \once\hideNotes d2~ | % 11a
  <b d>4 s2. |
  s1*2 | r4 d2 4 | s1*6 | % 11b
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p s4\< s2\!  s4\> s2\! s\pp | s1*3 | s2 s\p s1*3 | s8 s4\< s8\! s4 s\p | s1 |
  s1\p | s4. s8\cresc s2 | s8 s\p s2. | s1 | % 2a
  s4. s4\< s4.\! | s4\> s\! s8 s4.\dim | s1 | s\pp |
  s4. s8\cresc s s4.\< | s1\dim | s2 s8 s4.\pp | s1 |
  s2 s-\markup\italic "colla voce." | s2 s-\markup\italic "a tempo" | s1 | s8\< s\! s\> s\! s2\p | s1 |
  s8 s4.\< s\! s8\p | s1*2 | s1\pp |
  s1\f | s | s4.\p | s s\f | s4\> s8\! | s4.\p | s | % 3a
  s4.\f | s8 s4\p | s4.*3 | s4\< s8\f | s4.*4 | s4.\p |
  s4. | s\f | s | s\p | s4.*5 | s4.\cresc | s4 s8\f |
  s4.\sf | s4.*10 | % 4a
  s4.\sf | s4 s8\f | s4. | s4 s8\p | s4. | s4\< s8\f | s4. | s4 s8\p | s4.*2 |  s4.\f |
  s4 s8\p | s4.*3 | s4 s8\f | s4.*5 |
  s4. | s\cresc | s4.*4 | s4 s8\< | s4.\! | s | s\omit\f-\markup{\halign #RIGHT \italic sempre \dynamic f} | % 5a
  s4.*5 | s4.\ff | s4.*6 |
  s4.*2 | s4.\dim | s4.*3 | s4.\p | s4.*3 | s4.\dim | s s\pp |
  s1\pp | s1*2 | s2\dim s\pp | % 6a
  s1*2 | s1\cresc | s4 s2.\ff |
  s1*2 | s2 s\> | s1\p | s2. s4\pp | s2 s\pp | s1 |
  s1\pp | s1*3 | % 7a
  s1*3 | s1\cresc | s\p |
  s2. s4\pp | s1\pp | s1*2 |
  s1*3 | s1\p | s |
  s1\cresc | s4 s2.\dim | s1 | s\p |
  s1\pp | s1*4 | s1\f | % 8a
  s1*3 | s4 s2.\cresc | s1 |
  s1\f | s1*2 | s1\omit\f-\markup{\italic più \dynamic f} | s1 |
  s1 | s\f | s1*6 | s2. s4\f | s1 | s2. s4\dim | s2. s4\dim | s1 | s\pp | s | s2 s\omit\pp-\markup{\halign #RIGHT \italic sempre \dynamic pp} |
  s1*4 | s1\cresc | s\p | % 10a
  s1 | s\pp | s | s\cresc | s |
  s1\p | s4 s2.\dim | s1\pp | s2 s\omit\cresc-\markup\italic "poco cresc." | s1*2 |
  s1\p | s4 s2.\cresc | s1*3 | s2 s\p | s1 | % 11a
  s1\pp | s1*4 | s1\pp | s\< | s\> | s\! |
}

pianoLHone = \relative {
  \global \vo
  s1*2 | s2 g~ | 4 fis g8_(a \rh b d) \lh |
  s1*2 | s2. g,4~ | g fis g8 a \rh b d \lh |
  s1*4 |
  s1*3 | \crossStaff \vo <g, bes>4 s2. | % 2a
  s1*3 | \crossStaff e4 s2. |
  s1*4 | % 2c
  s1*5 |s1*3 | s2 \crossStaff <fis a>4. s8 |
  \rh <g b>2(a4) c8(\lh fis,) | g8(a) b( \rh d) \lh s2 | % 3a
  r8 \crossStaff {b8 a | b <g b> <fis a> | b b a | b <g b> <fis a> | }
  b8 s4 | s4. |
  s4.*8 | \rh e8 \lh a, ais | s4.*2 | % 3b
  s4.*11 |
  s4.*2 | \rh \vth s4 b'8~ | b ais b | \vt g8 fis e~ | 4. | d8 cis \lh b | % 4a
  \rh e8 d \lh cis | \rh a'4*1/2 g8 fis | s4.*2 |
  s4.*11 |
  s4.*10 |
  s4.*2 | \rh c8 b \lh a | s4. | c~ | c~ | c s4.*2 | g8(a b) | % 5a
  a8(b c) | <b d>(<a c> <gis b>) | c(b a) | <b d>(<a c> <gis b>) | c8(b a) | s4.*7 |
  \rh a4 s8 | \lh g(<e g> <fis a>) | % 5c
  \crossStaff { <g b>8 q <fis a> | b <g b> <fis a> | b <g b> <fis a> | }
  <g b>4. | \crossStaff {g8 <e g> <d f> | g <e g> <d f> | g <e g> } s | s4.*4 |
  s1*4 | % 6a
  s1*4 |
  s1 | s2 a4 bes | c2 bes4(aes) | s1*2 | a2 s | s1 \section |
  s1*3 | s2 a4 c | % 7a
  s1*3 | s2 d4(c) | b(c d) s |
  s1*4 | s1*5 | s1 | g,2(g | 4) r s2 s1 | % 7cde
  r4 g2 4 | r g2 4 | d1~ | 4 s s2 | s1 | g | % 8a
  a1~ | 2 g~ | 2 a | s1*2 |
  s2 a~ | a <fis a>~ | a s | s1*2 |
  s1*3 | s4 d8 c8 4 b8 a | s1 | % 9a
  s1 | s4 a(b c) | b(a) g2 | s1*3 |
  s1 | <<{\vo a2 s} \new Voice {\vf g4 fis \vo <e g> <fis a>}>> | \vo <g b>4 s2. | s1*2 |
  s1*17 | % 10
  s1*3 | d4 s2. | s1*2 | g4 <g b> <a c> <b d> | % 11a
  r4 g2 4 | r g2 4 | s1*3 | <g b>2 <g b d> | 2 2~ | 4 r q r | q1\fermata |
}

pianoLHtwo = \relative {
  \global \vt
  g,1~ | g~ | g~ | g~ |
  g4(a) b(c) | d e8(d) c2 | d4 r r g,~ | 1~ |
  \ov g8 fis'(g f) e2 | a, d4.(c8) | b4.(a8) g4 r | r b_\p(c d) |
  g,1~ | 2. f4 | ees1\fp ~ | ees4 g g'2~ | % 2a
  g8 g(f e) d(c bes4) | a2~4 r | r a8 r d r f r | <a, a'> r r4 r2 | 
  R1*2 | r2 r4 f8 r | bes r b r c r cis r |
  d8 r r4 ees2~ | 2 d~ \vt | d g,~ | 8 fis'(g fis) e2 | a,4(b) c(d) |
  \vo g,2~8 r r4 | r b(c d) | g,1~ | 2~4. \ov r8\fermata |
  g4(e) c(d) | g1 \section | r8 g'(fis) | e4 s8 | r g(fis) | e4.~ | % 3a
  \vt 8 c(a) | \ov b4(a8) |
  g8(fis c') | b(b') a | g4(fis8) | e4(d8) | c(b a) | b(b') a | g4(fis8) | % 3b
  e4(d8) | \vt c4. \vo | b8 b'(a) | g4(fis8) |
  e8->(d4) | g4(fis8) | e->(d4) | cis8(d b) | ais4(b8 | cis4 b8) | % 3c
  fis4.~ | 4.~ | 4. | gis | ais |
  \ov b8(cis d) | g,4.~ | 4 g'8 | g(e g) | ais,4.~ | ais8 fis' fis, | % 4a
  gis8(ais b) | ais(b cis) | b(cis dis) | <e, e'>8-. <fis fis'>-. <g g'>-. |
  <ais ais'>8-. <b b'>-. <cis cis'>-. |
  <d d'>8(<cis cis'> <b b'>) | <ais ais'>4 <b b'>8 | <fis fis'>4 fis8 | % 4b
  \repeat unfold 8 {b4 r8 |}
  r8 b a | g4. | a | b | cis4 dis8 | e(fis g) | c,4. | % 4c
  <c' e>8(<b d> <a c>) | <gis d'>(<fis e'> <g d'>) | <a c>4.~ |
  q8(<g b> <fis a>) | <g b> r  g, | \vt a(b c) | b(c d) | % 5a
  c4.~ | c~ | c | b4 r8 | 4. | e,4 r8 |
  e'4 r8 | e,4 r8 | e'4 r8 | e,4 r8 | e'4 r8 | <fis a c dis>4.~ | % 5b
  q8 r fis, | g4. | gis | a | ais | b |
  c4 b8 | s4 r8 | e,4 r8 | <e e'>4 r8 | q4 r8 | e4(d8) | c4 r8 | c4 r8 | % 5c
  c'4(b8) | a4.~ | a~ | a( | gis)~ | \section
  gis1~ | 2 g->~ | 1 | ges2 f~ | % 6a
  f2 d | ees1 | e2 r | r4 <cis cis'>2 8. <d d'>16 |
  <d d'>1~ | 4 d'(c bes) | a2 bes | \ov <ees g>1 | <d a'>2 r4 g, | \vt d'2 r4 g, | d1\fermata |
  \ov g2 g | g g | g g | e' \vt d | % 7a
  \ov g,2 a | b e~ | 4 e(a2) | 4(g) \vt fis2 | g2. \ov b,4 |
  d2 g, | g g | a a | a a |
  b2 b | e b | c g | c b4(e) | d2 g, |
  a2 b | \vt c1 | 2 \ov b4(c) | d2 g, |
  \vt g1 | g | g | g2 e' | d1 | g,2 e | % 8a
  a2 d~ | <<{d g,} \new Voice {\vf f'1}>> | c2 a | \ov a'4. a,8 e'4. e,8 | e'4. g8 fis4. 8 |
  b,4 cis d <<{fis~ | \vth 4 g} \new Voice {\vf s4 | a,4. 8}>> \vt d4. 8 | % 8c
  d4 cis g fis | \vo fis' e d4. d,8 | d'4. d,8 d'4. d,8 |
  \repeat unfold 4 {d'4. d,8} | e'4.(e,8 e'4. e,8 | \vt e'4.) 8 gis4. e8 | % 9a
  \ov a4. a,8 a'4 8 8 |
  a4(g8) fis8 4(e8) dis | \vt 4. 8 4. 8 | e4. 8 4. 8 | \ov fis2 r4 4 | % 9b
  g4. g,8 g'4. g,8 | fis'2 r4 4 |
  g4. g,8 g'4. g,8 | \vt d2 d' | <d, d'>1~ | 1 | d~ | % 9c
  \ov d1 | g2(a) | b e | 4 4(a2) | 4(g fis2) | g2. b,4 | % 10a
  d2 g, | 4 r8 8 4 r8 8 | a4 r8 8 4 r8 8 | 4 r8 8 4 r8 8 | b4 r8 8 4 r8 8 |
  e2 b | c g | c b4 e | d2 g, | a b | c g |
  c2 b4(c) | d4. 8 4. 8 | 4. 8 4. 8 | \vt 4 \ov r r2 | R1 | r2 <d, d'> | \vt g1~ | % 11a
  g2 g | g g | g g | \ov g' r | R1 | \vt g,1 | g | 4 r g r | g1 |
}

#(set-global-staff-size 16)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-solo
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-solo
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-solo
  }
  \score {
%   \articulate
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
