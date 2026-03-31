\version "2.25.80"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Elijah"
  subtitle    = "№5 Yet Doth the Lord"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Mendelssohn"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \once \set Score.tempoHideNote = ##f
  \tempo "Allegro vivace" 2=96 s1*66 \tempo 2=48 s2
  \once \set Score.tempoHideNote = ##f
  \tempo "Grave." 2=58 s2 s1*2
  \tempo 2=19 s2 \tempo 2=58 s s1*2 \tempo 2=19 s1 \tempo 2=58 s1*5
  \tempo 2=19 s1 \tempo 2=58 s1*58 \tempo 2=19 s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "23a" } s1*4
  \textMark \markup { \box "23b" } s1*6
  \textMark \markup { \box "23c" } s1*6
  \textMark \markup { \box "24a" } s1*6
  \textMark \markup { \box "24b" } s1*5
  \textMark \markup { \box "24c" } s1*4
  \textMark \markup { \box "25a" } s1*4
  \textMark \markup { \box "25b" } s1*4
  \textMark \markup { \box "25c" } s1*5
  \textMark \markup { \box "26a" } s1*4
  \textMark \markup { \box "26b" } s1*4
  \textMark \markup { \box "26c" } s1*4
  \textMark \markup { \box "27a" } s1*5
  \textMark \markup { \box "27b" } s1*5
  \textMark \markup { \box "27c" } s1*7
  \textMark \markup { \box "28a" } s1*8
  \textMark \markup { \box "28b" } s1*7
  \textMark \markup { \box "28c" } s1*5
  \textMark \markup { \box "29a" } s1*5
  \textMark \markup { \box "29b" } s1*5
  \textMark \markup { \box "29c" } s1*5
  \textMark \markup { \box "30a" } s1*5
  \textMark \markup { \box "30b" } s1*5
  \textMark \markup { \box "30c" } s1*4
  \textMark \markup { \box "31a" } s1*5
  \textMark \markup { \box "31b" } s1*5
  \textMark \markup { \box "31c" } s1*6
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s4 s2.\f | s1*5 | s4 s2.\f | s1*2 | s2. s4\f | s1*2 |
  s1*10 | s4 s2.\f | s1*4 | % 24
  s1*13 |
  s1*6 | s2. s4\f | s1*5 |
  s1*2 | s4 s2.\f | s1*7 | s2 s\f | s1*6 | % 27
  s1*3 | s1\cresc | s1*2 | s1\cresc | s1*2 | s1\sf | s1*2 | s1\dim | s1 | s2\< s\> | s1\! | s2 s\p | s s\cresc | s1 | s\f |
  s2 s\p | s s\cresc | s1 | s\f | s\p | s1*2 | s1\cresc | s | s\f | s1*4 | s4 s2.\f |
  s1*5 | s2 s\dim | s1*4 | s4 s2.\cresc | s1 | s\f | s | % 30
  s1 | s2 s\dim | s1*3 | s2 s\cresc | s1*6 | s2 s\dim | s1*2 | s1\p |
}

soprano = \relative {
  \global
  R1*4 |
  r4 ees''4 4 4 | 2 d | R1*2 | r2 f,4 8 g | aes2 c4. 8 |
  f4 c c c | 2 b | r4 ees4 4 4 | 2 d4 d | f2 b, | c4. 8 fis,4. 8 |
  g1 | g | R1*2 | r2 r4 d' | g2 cis, | % 24a
  d4. 8 4. 8 | 2 2 | R1*2 | r4 bes4 4 c8 d |
  ees4 c ees d8 c | bes2 g4 g | g'1~ | 4 b, c4 8 8 |
  d2 d | r4 c c d8 ees | f4 d f ees8 d | g2 c, | % 25a
  r4 c4 4 8 8 | 2 2 | r4 c f e8 f | g2(bes,~ |
  bes4 des) c2~ | 4 4 4 8 des | ees4 c ees des8 c | des2 bes | r4 c f ees8(d) |
  ees4 c8 c ees4 d8 c | ees4 c ees d8 c | b2 g4 r | R1 | % 26a
  r4 b b c8 d | ees4 c ees d8 c | f2 4 g, | f'2 b, |
  c4. 8 4. 8 | des2 g,4. 8 | aes2 d, | r4 f' f ees8 d |
  c4 ees c d8 ees | d1 | c4 c c d8 ees | f2 b, | r4 c c d8 ees | % 27a
  f2 b, | r4 c c d8(ees) | f2 b, | r4 b b b | 2 2 |
  r2\fermata c | c c | d ees | aes,\fermata 2 | g g | g fis | g1\fermata |
  ees2 g | bes1 | g2 g | g bes | d2. 4 | 1\fermata | 2 e | f c | % 28a
  c2 d | ees d4. c8 | d2 4. 8 | g,1 | f2 ees | des c | f1\key c \major |
  e2 r | r c' | 2 4 4 | d2 d | e1~ |
  e4 r e2 | g e4 4 | c2. 4 | d1 | g,2 2 | % 29a
  a1 | b2 b | c1 | d2~4. 8 | e2(g) |
  f2 e | d1 | d | R | r4 g, f'2~ |
  f4(e d c) | b c a'2~ | 4(g f) e | f(e d) c | c(b) c(a) | % 30a
  g2 g | 2. 4 | 2 r | R1*2 |
  r4 c f2~ | 4(e d c) | b c a'2~ | 4(g f) e |
  f4(e d) c | c(b) c a | g2. 4 | 2 r | R1 | % 31a
  r2 c | f2. 4 | e2 c | b a | g f |
  f'2. 4 | e1~ | 4 r g,2 | c g4 g | 2 2 | 1\fermata |
  \bar "|."
}

AHvatfs     = \lyricmode { And He vis -- it -- eth all the fath -- ers’ sins on the chil -- dren to the third and the fourth gen -- e -- ra -- tion of them that hate Him. }
fduuc       = \lyricmode { fall -- en down up -- on us, }
FHtLoGc     = \lyricmode { For He, the Lord our God, }
foattlH     = \lyricmode { fall on all them that love Him and keep His com -- mand -- ments. }
hfduusc     = \lyricmode { hath fall -- en down up -- on us; }
Hchfduu     = \lyricmode { His curse hath fall -- en down up -- on us }
Hchfduuc    = \lyricmode { His curse hath fall -- en down up -- on us, }
Hchfduusc   = \lyricmode { His curse hath fall -- en down up -- on us; }
Hchfdc      = \lyricmode { His curse hath fall -- en down, }
HiajGcc     = \lyricmode { He is a jea -- lous God: }
Hmauc       = \lyricmode { He mock -- eth at us, }
Hmausc      = \lyricmode { He mock -- eth at us; }
Hmotfc      = \lyricmode { His mer -- cies on thou -- sands fall, }
Hmotfp      = \lyricmode { His mer -- cies on thou -- sands fall. }
Hwwpuc      = \lyricmode { His wrath will pur -- sue us, }
HwwputHdu   = \lyricmode { His wrath will pur -- sue us till He de -- stroy us }
HwwputHduc  = \lyricmode { His wrath will pur -- sue us till He de -- stroy us, }
HwwputHdusc = \lyricmode { His wrath will pur -- sue us till He de -- stroy us; }
otfc        = \lyricmode { on thou -- sands fall, }
putHduc     = \lyricmode { pur -- sue us till He de -- stroy us; }
tHdu        = \lyricmode { till He de -- stroy us }
tHduc       = \lyricmode { till He de -- stroy us, }
tHdue       = \lyricmode { till He de -- stroy us! }
uuc         = \lyricmode { up -- on us, }
uusc        = \lyricmode { up -- on us; }
YdtLsinc    = \lyricmode { Yet doth the Lord see it not, }
YdtLsinsc   = \lyricmode { Yet doth the Lord see it not; }

wordsSop = \lyricmode {
  \Hmausc \YdtLsinc \Hmausc \Hmausc \Hchfduusc
  \Hchfduusc \HwwputHduc \putHduc % 24
  \HwwputHduc \Hwwpuc \Hwwpuc \HwwputHduc \tHduc
  \HwwputHduc \HwwputHduc \Hchfduu \uuc \HwwputHduc
  \Hwwpuc \HwwputHduc \tHdue \FHtLoGc \HiajGcc % 27
  \AHvatfs \Hmotfc
  \Hmotfc \foattlH \Hmotfc
  \otfc \otfc \Hmotfc % 30
  \Hmotfc \otfc \otfc \otfc \Hmotfp
}

MAHvatfs     = \lyricmode { "\nAnd " "He " vis it "eth " "all " "the " fath "ers’ " "sins " "on " "the " chil "dren " "to " "the " "third " "and " "the " "fourth " gen e ra "tion " "of " "them " "that " "hate " "Him. " }
Mfduuc       = \lyricmode { "\nfall" "en " "down " up "on " "us, " }
MFHtLoGc     = \lyricmode { "\nFor " "He, " "the " "Lord " "our " "God, " }
MfoattlH     = \lyricmode { "\nfall " "on " "all " "them " "that " "love " "Him " "and " "keep " "His " com mand "ments. " }
Mhfduusc     = \lyricmode { "\nhath " fall "en " "down " up "on " "us; " }
MHchfduu     = \lyricmode { "\nHis " "curse " "hath " fall "en " "down " up "on " "us " }
MHchfduuc    = \lyricmode { "\nHis " "curse " "hath " fall "en " "down " up "on " "us, " }
MHchfduusc   = \lyricmode { "\nHis " "curse " "hath " fall "en " "down " up "on " "us; " }
MHchfdc      = \lyricmode { "\nHis " "curse " "hath " fall "en " "down, " }
MHiajGcc     = \lyricmode { "\nHe " "is " "a " jea "lous " "God: " }
MHmauc       = \lyricmode { "\nHe " mock "eth " "at " "us, " }
MHmausc      = \lyricmode { "\nHe " mock "eth " "at " "us; " }
MHmotfc      = \lyricmode { "\nHis " mer "cies " "on " thou "sands " "fall, " }
MHmotfp      = \lyricmode { "\nHis " mer "cies " "on " thou "sands " "fall. " }
MHwwpuc      = \lyricmode { "\nHis " "wrath " "will " pur "sue " "us, " }
MHwwputHdu   = \lyricmode { "\nHis " "wrath " "will " pur "sue " "us " "till " "He " de "stroy " "us " }
MHwwputHduc  = \lyricmode { "\nHis " "wrath " "will " pur "sue " "us " "till " "He " de "stroy " "us, " }
MHwwputHdusc = \lyricmode { "\nHis " "wrath " "will " pur "sue " "us " "till " "He " de "stroy " "us; " }
Motfc        = \lyricmode { "\non " thou "sands " "fall, " }
MputHduc     = \lyricmode { "\npur" "sue " "us " "till " "He " de "stroy " "us; " }
MtHdu        = \lyricmode { "\ntill " "He " de "stroy " "us " }
MtHduc       = \lyricmode { "\ntill " "He " de "stroy " "us, " }
MtHdue       = \lyricmode { "\ntill " "He " de "stroy " "us! " }
Muuc         = \lyricmode { "\nup" "on " "us, " }
Muusc        = \lyricmode { "\nup" "on " "us; " }
MYdtLsinc    = \lyricmode { "\nYet " "doth " "the " "Lord " "see " "it " "not, " }
MYdtLsinsc   = \lyricmode { "\nYet " "doth " "the " "Lord " "see " "it " "not; " }

wordsSopMidi = \lyricmode {
  \MHmausc \MYdtLsinc \MHmausc \MHmausc \MHchfduusc
  \MHchfduusc \MHwwputHduc \MputHduc % 24
  \MHwwputHduc \MHwwpuc \MHwwpuc \MHwwputHduc \MtHduc
  \MHwwputHduc \MHwwputHduc \MHchfduu \Muuc \MHwwputHduc
  \MHwwpuc \MHwwputHduc \MtHdue \MFHtLoGc \MHiajGcc % 27
  \MAHvatfs \MHmotfc
  \MHmotfc \MfoattlH \MHmotfc
  \Motfc \Motfc \MHmotfc % 30
  \MHmotfc \Motfc \Motfc \Motfc \MHmotfp
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s4 s2.\f | s1 | s4 s2.\f | s1*5 | s4 s2.\f | s1*5 |
  s1*8 | s4 s2.\f | s1*6 | % 24
  s1*13 |
  s1*12 |
  s1*2 | s4 s2.\f | s1*7 | s2 s\f | s1*6 | % 27
  s1*3 | s1\cresc | s1*2 | s1\cresc | s1*2 | s1\sf | s1*2 | s1\dim | s1 | s2\< s\> | s1\! | s2 s\p | s s\cresc | s1 | s\f | 
  s2 s\p | s s\cresc | s1 | s\f | s\p | s1*2 | s1\cresc | s | s\f | s1*3 | s2. s4\f | s1 |
  s1*5 | s2 s\dim | s1*4 | s1\cresc | s | s\f | s | % 30
  s1 | s2 s\dim | s1 | s\p | s | s2 s\cresc | s1*6 | s2 s\dim | s1*2 | s1\p |
}

alto = \relative {
  \global
  R1*2 | r2 c'4 8 d | ees2 g4. 8 |
  c4 g g g | a2 b | R1*4 |
  r4 f f f | 2 2 | r4 aes4 4 4 | 2 2 | R1*2 |
  R1*2 | r2 r4 d, | bes'2 g | fis4. 8 c'4. 8 | bes1~ | % 24a
  bes2 a4 fis | 2 2 | r4 g g a8 bes | c4 a c bes8 a | d2 g, |
  r4 fis4 4 4 | g2 4 r | r g g g | g4 8 8 aes4 g8 f |
  aes4 f aes g8 f | ees2 c4 r | R1 | r4 ees4 4 f8 g | % 25a
  aes4 f aes g8 f | bes2 e, | r4 c'4 4 8 8 | bes4 g bes aes8 g |
  bes2 2~ | 4 4 4. 8 | 2 a | r4 bes des c8 bes | aes4 f aes g8 f |
  ees2 4 r | R1 | r4 g g a8 b | c4 a c b8 a | % 26a
  d4 g,8 8 4 a8 b | c4 a c b8 a | b4 d, d ees8 f | g2 g |
  r4 ees ges f8 ees | des2 2 | r4 f aes g8 f | d'4 aes4 4 g8 f |
  ees4 g ees f8 g | aes2(g) | 4 ees4 4 f8 g | aes2 f | r4 ees4 4 f8 g | % 27a
  aes2 f | r4 ees4 4 f8(g) | aes2 f | r4 f f f | 2 2 |
  r2\fermata g | g f | f ees | 2\fermata d | ees2 2 | d d | d1\fermata |
  c2 ees | f1 | ees2 2 | 2 g | g fis | g1\fermata | 2 2 | aes f | % 28a
  g2 aes | g f4. ees8 | aes2 d,4. 8 | ees2(des) | c c | des aes | c(b) \key c \major |
  c2 r | r g' | g a4 4 | 2 g | 1~ |
  g4 r g2 | 2 4 4 | 2 fis | b1 | d,2 c | % 29a
  a'1 | gis2 2 | a1 | bes2~4. 8 | 1 |
  a2 g | 1 | fis | r2 r4 g | b(c) b c |
  g2(f~ | 4 e d) c | b(c2) c4 | f(g) a g | f2 fis | % 30a
  g2 e | f2. 4 | e c bes'2~ | 4(a g f) | e f d'2~ |
  d4(c bes) a | g2 a4(g) | f(e) f(a) | c2. c,4 |
  f2 fis | g e | f2. 4 | e2 c' | b(a) | % 31a
  g2 f4(c') | b2. 4 | e1 | r2 c, | c2 4 4 |
  a'2. 4 | g1~ | 4 r e2 | e c4 c | 2 b | 1\fermata |
}

wordsAlto = \lyricmode {
  \YdtLsinc \Hmausc \Hmausc \Hmausc
  \Hchfduuc \uusc \HwwputHduc \tHduc \tHduc \HwwputHduc % 24
  \HwwputHduc \HwwputHduc \tHduc \HwwputHduc
  \HwwputHduc \HwwputHduc \tHdu \Hwwpuc \HwwputHdu
  \tHduc \Hwwpuc \HwwputHduc \tHdue \FHtLoGc \HiajGcc % 27
  \AHvatfs \Hmotfc
  \Hmotfc \foattlH \Hmotfc
  \Hmotfc \otfc \Hmotfc \otfc \otfc % 30
  \otfc \Hmotfc \Hmotfc \Hmotfp
}

wordsAltoMidi = \lyricmode {
  \MYdtLsinc \MHmausc \MHmausc \MHmausc
  \MHchfduuc \Muusc \MHwwputHduc \MtHduc \MtHduc \MHwwputHduc % 24
  \MHwwputHduc \MHwwputHduc \MtHduc \MHwwputHduc
  \MHwwputHduc \MHwwputHduc \MtHdu \MHwwpuc \MHwwputHdu
  \MtHduc \MHwwpuc \MHwwputHduc \MtHdue \MFHtLoGc \MHiajGcc % 27
  \MAHvatfs \MHmotfc
  \MHmotfc \MfoattlH \MHmotfc
  \MHmotfc \Motfc \MHmotfc \Motfc \Motfc % 30
  \Motfc \MHmotfc \MHmotfc \MHmotfp
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s4 s2.\f | s1 | s4 s2.\f | s1*3 | s4 s2.\f | s1*5 |
  s1*10 | s4 s2.\f | s1*4 | % 24
  s1*13 |
  s1*12 |
  s1*2 | s4 s2.\f | s1*7 | s2 s\f | s1*6 | % 27
  s1*3 | s1\cresc | s1*2 | s1\cresc | s1*2 | s1\sf | s1*2 | s1\dim | s1 | s2\< s\> | s1\! | s2 s\p | s s\cresc | s1 | s\f | 
  s2 s\p | s s\cresc | s1 | s\f | s\p | s1*2 | s1\cresc | s | s\f | s1*3 | s4 s2.\f | s1 |
  s1*5 | s2 s\dim | s1*4 | s1\cresc | s | s\f | s | % 30
  s1 | s2 s\dim | s1 | s\p | s | s2 s\cresc | s1*6 | s2 s\dim | s1*2 | s1\p |
}

tenor = \relative {
  \global
  R1*4 |
  r4 g' g g | fis2 g | r f,4 8 g | aes2 c4. 8 | f2 r | R1 |
  r4 c c c | d2 d | r4 f f f | 2 2 R1*2 |
  R1*3 | r2 r4 bes, | ees2 a, | bes4. d8 g2~ | % 24a
  g2(fis4) d | 4. 8 4. 8 | 2 4 r | R1 | r4 g, g a8 bes |
  c4 a c bes8 a | d2 bes4 c8(d) | ees4 c ees d8 ees | f2 2 |
  R1*2 | r4 b, b c8 d | ees2 c | % 25a
  R1 | r4 g g aes8 bes | c4 aes c bes8 aes | des2 2 |
  r4 bes e f | g2(ges)~ | 2 f | r4 bes,4 4 c8 des | c4 aes r2 |
  r4 c c d8(ees) | a,2 a | r4 b b c8 d | ees4 c ees d8 c | % 26a
  f4 d8 8 4 ees8 f | g4 ees g f8 ees | aes2 d, | r4 d f ees8 d |
  g2 c, | r4 bes des c8(bes) | aes2 f' | r4 d d ees8 f |
  g4 ees g f8 ees | d2(b) | c4 4 4 8 8 | 2 d | r4 c4 4 8 8 | % 27a
  c2 d | r4 c c c | 2 d | r4 d d d | 2 2 |
  r2\fermata ees | 2 c | bes2 2 | c\fermata bes | 2 a | a a | b1\fermata |
  g2 c | d1 | bes2 2 | c bes | a2. 4 | b1\fermata | 2 c | c c | % 28a
  ees2 c | b c4. 8 | 2 b4. 8 | c2(bes) | aes ges | f aes | 1 \key c \major |
  g2 r | r e' | e c4 c | 2 b | c1~ |
  c4 r e2 | d c4 c | e2 c | g1 | b2 c | % 29a
  c2(a) | e' e | e(c) | g'2~4. 8 | 2(e) |
  c2 c | 1 | 1 | r4 g f'2~ | 4(e d c) |
  b4 c a'2~ | 4(g f) e | f(e) f(c) | 2 f,4 g | a2. c8(d) | % 30a
  e2 d4(c) | 2 b | c r4 c | e(f) e f | c2 bes |
  bes4(a d) c | b(c) f e | d c4 2~ | 4 g c2~ |
  c2 4(d) | e2 c | c b | c1 | r2 c | % 31a
  b2(a) | d2. 4 | c1~ | 2 2 | b a |
  c2. 4 | 1~ | 4 r g2 | 2 e4 e | f2 f | e1\fermata |
}

wordsTenor = \lyricmode {
  \Hmausc \YdtLsinc \Hmausc \Hmausc
  \Hchfdc \hfduusc \HwwputHduc \putHduc % 24
  \Hwwpuc \HwwputHduc \tHduc \Hwwpuc
  \tHduc \HwwputHduc \HwwputHduc \HwwputHdusc \HwwputHduc
  \Hwwpuc \HwwputHduc \tHdue \FHtLoGc \HiajGcc % 27
  \AHvatfs \Hmotfc
  \Hmotfc \foattlH \Hmotfc
  \Hmotfc \otfc \Hmotfc \Hmotfc \otfc % 30
  \otfc \Hmotfc \otfc \Hmotfp
}

wordsTenorMidi = \lyricmode {
  \MHmausc \MYdtLsinc \MHmausc \MHmausc
  \MHchfdc \Mhfduusc \MHwwputHduc \MputHduc % 24
  \MHwwpuc \MHwwputHduc \MtHduc \MHwwpuc
  \MtHduc \MHwwputHduc \MHwwputHduc \MHwwputHdusc \MHwwputHduc
  \MHwwpuc \MHwwputHduc \MtHdue \MFHtLoGc \MHiajGcc % 27
  \MAHvatfs \MHmotfc
  \MHmotfc \MfoattlH \MHmotfc
  \MHmotfc \Motfc \MHmotfc \MHmotfc \Motfc % 30
  \Motfc \MHmotfc \Motfc \MHmotfp
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2 s\f | s1*3 | s4 s2.\f | s1*5 | s4 s2.\f | s1*5 |
  s1 | s2. s4\f | s1*10 | s4 s2.\f | s1*2 | % 24
  s1*10 | s2. s4\f | s1*2 |
  s1*7 | s2. s4\f | s1*4 |
  s1*2 | s4 s2.\f | s1*7 | s2 s\f | s1*6 | % 27
  s1*3 | s1\cresc | s1*2 | s1\cresc | s1*2 | s1\sf | s1*2 | s1\dim | s1 | s2\< s\> | s1\! | s2 s\p | s s\cresc | s1 | s\f | 
  s2 s\p | s s\cresc | s1 | s\f | s\p | s1*2 | s1\cresc | s | s\f | s1*2 | s2. s4\f | s1*2 |
  s1*5 | s2 s\dim | s1*4 | s1\cresc | s | s\f | s | % 30
  s1 | s2 s\dim | s1*3 | s2 s\cresc | s1*6 | s2 s\dim | s1*2 | s1\p |
}

bass = \relative {
  \global
  r2 c4 c8 d | ees2 g4. 8 | c2 r | R1 |
  r4 c c c | 2 g | R1*4 |
  r4 aes4 4 4 | g2 g | r4 c c c | 2 b | R1*2 |
  R1 | r2 r4 g | c2 fis, | g4. 8 4 4 | c2 fis, | g4. 8 4. 8 | % 24a
  g2 d4 <d d'> | <c c'>4. 8 4. 8 | <bes bes'>2 4 r | R1*2 |
  R1 | r4 g' g a8 bes | c4 a c bes8 a | d2(c |
  b1) | c4 r r2 | R1 | r4 c, c d8 ees | % 25a
  f4 d f ees8 d | g2 c, | r4 aes'4 4 g8 f | e2 e |
  R1*2 | r2 r4 f | bes2 c, | f4. 8 b,4. 8 |
  c2 fis,~ | 4 fis'4 4 8 8 | g2 2~ | 4 4 4 4 | % 26a
  g2 2~ | 4 4 4 4 | 2 2 | r r4 g |
  ees'2 a, | bes4. 8 e,4. 8 | f2 b,~ | 4 4 4 c8 d |
  ees4 c ees d8 c | f1 | ees4 c'4 4 8 8 | 2 2 | r4 4 4 8 8 | % 27a
  c2 c | r4 4 4 4 | 2 2 | r4 c, c c | 2 2 |
  r2\fermata c' | bes aes | 2 g | f\fermata bes, | ees c | d d | g,1\fermata |
  c2 c | bes1 | ees2 d | c d | d d | g1\fermata | 2 c, | f aes | % 28a
  g2 f | g aes4. 8 | f2 4. 8 | ees1 | aes,2 2 | des f | f,1 \key c \major
  c'2 r | r c' | c a4 4 | f2 g | c,1~ |
  c4 r c2 | b c4 c | a'2. 4 | g1 | 2 e | % 29a
  f1 | e2 e | a1 | g2~4. 8 | c,1 |
  f2 g | a1 | 2. d,4 | g2 2~ | 2 2 |
  g2. 4 | 1 | r4 c, a'2~ | 4(g) f e | d2 d | % 30a
  g2 g | g g, | c1~ | 4 4 bes'2~ | 4(a g) f |
  e4(f2) 4 | g1 | 4 c, f2~ | 4 e a2~ |
  a2 a | g2 4 4 | 2 g, | c1~ | 1~ | % 31a
  c2 2 | 2. 4 | 2 a' | g(f~ | 1) |
  f1 | c~ | 4 r c2 | 2 4 4 | 2 2 | 1\fermata |
}

wordsBass = \lyricmode {
  \YdtLsinsc \Hmausc \Hmauc \Hmausc
  \Hchfduuc \fduuc \hfduusc \HwwputHduc % 24
  \HwwputHduc \Hwwpuc \Hchfduuc
  \HwwputHduc \tHduc \Hchfduusc \HwwputHduc
  \Hwwpuc \HwwputHduc \tHdue \FHtLoGc \HiajGcc % 27
  \AHvatfs \Hmotfc
  \Hmotfc \foattlH \Hmotfc
  \Hmotfc \otfc \otfc \Hmotfc % 30
  \Hmotfc \otfc \otfc \Hmotfp
}

wordsBassMidi = \lyricmode {
  \MYdtLsinsc \MHmausc \MHmauc \MHmausc
  \MHchfduuc \Mfduuc \Mhfduusc \MHwwputHduc % 24
  \MHwwputHduc \MHwwpuc \MHchfduuc
  \MHwwputHduc \MtHduc \MHchfduusc \MHwwputHduc
  \MHwwpuc \MHwwputHduc \MtHdue \MFHtLoGc \MHiajGcc % 27
  \MAHvatfs \MHmotfc
  \MHmotfc \MfoattlH \MHmotfc
  \MHmotfc \Motfc \Motfc \MHmotfc % 30
  \MHmotfc \Motfc \Motfc \MHmotfp
}

pianoRHone = \relative {
  \global
  \* 3 \repeat tremolo 4 {<g c ees>16 g'} \repeat tremolo 4 {<b, d> g'} |
  \* 3 \repeat tremolo 4 {<g, c ees>16 g'} \repeat tremolo 4 {<g, b d> g'} |
  <c, ees>4 <ees g c ees> q q | <fis a c ees>2 <g b d> | % 23b
  \* 3 \repeat tremolo 4 {<a, c>16 f'} \repeat tremolo 4 {<bes, c> e} |
  \* 2 \repeat tremolo 4 {<a, c>16 f'} |
  \repeat tremolo 4 {<c e> aes'}  \repeat tremolo 4 {<c, e> g'} |
  f4 <c f c'> q q | <d f c'>2 <d f b> | % 23c
  r4 <f aes c ees> q q | 2 <f a b d>4 <d d'> |
  \repeat tremolo 4 {f16 f'} \repeat tremolo 4 {b,, b'} |
  \repeat tremolo 4 {c,16 c'} \repeat tremolo 4 {\lh fis,, \rh fis'} |
  \repeat tremolo 4 {g,16 g'} \* 2 \repeat tremolo 4 {\lh cis,, \rh cis'} % 24a
  s4 <bes e g> | \repeat tremolo 4 {ees16 fis} \vo \repeat tremolo 4 {a c} |
  \ov \repeat tremolo 4 {<d, g>16 bes'} \repeat tremolo 4 {<g bes e> g'} |
  \repeat tremolo 4 {<a, ees>16 fis'} d4 <a c d> | <bes d g>2 <g bes cis> |
  <g bes d>2 <fis a d> | %% 24b
  \repeat tremolo 4 {<d fis a>16 d'} \repeat tremolo 4 {q d} |
  d,4 <d g> q <c fis a>8 <d g bes> |
  <ees a c>4 <c ees a> <ees a c> <d g bes>8 <c fis a> |
  <d g d'>4 g <g bes> <g c>8 <g d'> |
  <fis ees'>4 <fis c'> <fis ees'> <fis d'>8 <fis c'> | % 24c
  <g bes>4 <g bes g'> q <g c g'>8 <g d' g> |
  \vo g'1 | b,4 b c c |
  d2 d | \ov <c, ees g>4 <ees g c> q <f b d>8 <g c ees> | % 25a
  <aes b f'>4 <f d'> <aes d f> <g c ees>8 <f b d> | \vo <ees' g>2 c~ |
  c4 4 4 8 8 | \ov <e, c'>4 <bes' e> q <aes f'>8 <g g'> | % 25b
  <aes aes'>4 c <c f> <c e>8 <c f> | \vo g'2 bes, |
  r4 des <bes c>2~ | 4 4 4 c8 des | ees4 c ees des8 c | % 25c
  \ov des4 bes <g bes d> \vo c8 bes |
  \ov <c, aes'>4 <f aes c> <aes d f> <g ees'>8 <f d'> |
  <ees g ees'>4 <ees c'> \vo ees' d8 c | ees4 c ees d8 c | % 26a
  \ov <d, g b>4 <b d g> q <c fis a>8 <d g b> |
  <ees fis c'>4 <c fis a> <ees fis c'> <d g b>8 <c a'> |
  <f b d>4 <d f g b> q <a' c>8 <b d> | % 26b
  <c ees>4 <a c> <c ees> <b d>8 <a c> | <b f'>4 d, d \vo g |
  <g f'>2^\sf <g b>^\sf |
  c2.^\sf <<{\vo c'4} \new Voice {\vth f,8 ees}>> | % 26c
  \vo des'2 <des, g>^\sf | aes'^\sf d,^\sf |
  \ov <f, d'>4 <aes d f> q <g ees'>8 <f d'> |
  <g c>4 <ees ees'> <g c> <f c' d>8 <ees c' ees> | % 27a
  <aes c d>2 <g b d> | <c, ees g c>4 <ees g c> q <f b d>8 <g c ees> |
  <aes b f'>4 <d, f b> <f aes b> <ees g b>8 <d f b> |
  <g c ees g>4 <ees g c> q <f b d>8 <g c ees> |
  <aes b f'>4 <d, f b> <f aes b> <ees g b>8 <d f b> | % 27b
  <g c ees g>4 <ees g c> q <f b d>8 <g c ees> |
  <aes b f'>4 <d, f b> <f aes b> <ees g b>8 <d f b> |
  <f aes b>4 <d f aes b> q q | 2 2 |
  r2\fermata <ees g c> | q <f c'> | <f bes d> <ees bes' ees> | % 27c
  <aes, c ees f aes>2\fermata <bes d aes'> | <bes ees g> <aes ees' g> |
  <a d g>2 <a d fis> | <b d g>1\fermata |
  <g c ees>2 <c ees g> | <d f bes>1 | <bes ees g>2 q | % 28a
  <c ees g>2 <bes d g bes> | \vo d'1 \ov <g, d'>\fermata |
  q2 <g e'> | <aes f'> <f c'> |
  <ees g c>2 <aes d> | <g ees'> <f d'>4.(<ees c'>8) | <aes c>2 <d, d'> | % 28b
  \vo g1 \ov | <aes c f>2 <ges c ees> | \vo des < aes c> | f'1 \key c \major |
  <g, c e>8 \lh c,(e g)~g <e g>(\rh \vo c' <c e>)~ | % 28c
  \ov q8 <g c>(<c e> <e g>)~q <g, c e>(<c e g> <e g c>)~ |
  q8 <g, c e> <c e g> <e g c>~ <e c'> <a, c e> <c e a> <e a c>~ |
  <a c>8 <d, a'> <a' c> <c d>~d g, <d g b> <g b d> |
  r8 <c, e g> <e g c> <g c e>~q <c, e g> <e g c> <g c e>~ |
  q8 <c, e g> <e g c> <g c e>~8 <c, e g> <e g c> <g c e> | % 29a
  r8 g <g d'> g'~8 <e, g> <g c> <c e>~ |
  q8 <c, e> <e g> <g c>~(<fis c'>) c(f c') |
  r8 <b, d g> <d g b> <g b d>~8 <b, d g> <d g b> <g b d>~ |
  \vo q8 b, d g~g c, e g~ | \ov
  g8 <a, c> <c f> <f a>~8 <a, c> <c f> <f a> | % 29b
  <gis b>8 <b, e> <e gis> <gis b>~8 <b, e> <e gis> <gis b> |
  <a c>8 <c, e> <e a> <a c>~8 <c, e> <e a> <a c> |
  r8 <d, g> <g bes> <bes d>~8 <d, g> <g bes> <bes d> |
  r8 <e, g> <g bes> <bes e>~8 <g bes> <bes e> <e g> |
  r8 <f, a> <a c> <c f>~<c e> <e, g> <g c> <c e> | % 29c
  r8 <c, g'> <g' c> <c d>~8 <c, g'> <g' c> <c d>~ |
  q8 <c, fis> <fis c'> <c' d>~8 <c, fis> <fis c'> <c' d>~ |
  <b d>8 b, <b d> <d g> \vo r b d g~ |
  g8 b c g f'2^\sf ~ |
  \ov <d f>8(g,4 e'8) \vo <f, d'> d(f c') | % 30a
  b8 b(c e) a2^\f ~ | \ov <d, a'>8 d(<c e> <g g'>) \vo f'(c4) e8 |
  f8(c4) e8 d a(g) c~ | <f, c'> d(f b) c4(a) |
  \ov <e g>8(<g, c> <c e> <e g>)~8(<g, c> <c e> <e g>)~ \vo | % 30b
  <f g>8(<g, d'> <d' f> <f g>)~8(<g, d'> <d' f> <f g>)~ |
  <e g>8(c e g) bes2^\sf ~ | 4(a g f) | e8(c f a) d2~ |
  d4(c) f2~ | \ov <d f>8(g,4) \vo s8 <f d'>8(a <e g> c') | % 30c
  \ov <d, b'>8 <f g> <e c'> <c' e>~<c a'>(<e, a c> <a c f> \vt <c f a>)^~ |
  \vo a'8(c,4) g'8 f(c4) e8 |
  f8(c4) e8 <c d> d,(fis) c'~ | 4(b c a) | % 31a
  <f g>8(<g, d'> <d' f> <f g>)~8(<g, d'> <d' f> <f g>)~ | \ov
  <e g>8^(c e c'~8 c, e c' | b c, e b') a(<a, c> f' <c a'>) |
  \vo g'8( c, e g) \ov c(f, a c) | % 31b
  <b f'>(<g b> <b d> f')~f(<g, b> <b d> f') |
  <c e>8(c q c')~(c c, q c') | b(c, q b') a(c, <c f> a') |
  <b, g'>8(b c g') <a, f'>(a c f)~ |
  f8(<c, f a> <f a c> <a c f>)~q(<c, f a> <f a c> <a c f>) | % 31c
  <g c e>8(<e g> <e g c> <g c e>)~q <e g> <e g c> <g c e>~ |
  q8 <e g> <e g c> <g c e>~q <c, e> <c e g> <e g c>~ |
  q2 <g, c e g> | <g c f g> q | <g c e g>1\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s1*16 |
  s1*2 | s2 ees'4 d | s1*3 | % 24a
  s1*5 |
  s1*2 | <g a ees'>4 <g a c> <g a ees'> <g a d>8 <g a ees'> | <f g>4 8 8 <f aes>4 g8 f |
  <f aes>4 <d f> <f aes> <ees g>8 <d f> | s1*2 | c'4 g <ees g> f8 q | % 25a
  <d aes'>4 f q <ees g>8 f | s1*2 | bes4 g bes aes8 g |
  bes2 e,4 f | g2 ges2*1/2 bes4 | <ges bes>2 <f a> | s2. c8 des | s1 |
  s2 <ees a>2~_\sf | 4 4 4 4 | s1*2 | % 26a
  s1*2 | s2. ees8 f | s4 d f ees8 d |
  g4 g ges c | des4 4 4 c8 bes | aes4 4 <f aes> <ees g>8 <d f> | s1 |
  s1*17 | % 27
  s1*4 | g2 fis | s1*3 | % 28a
  s1*3 | <c ees>2(<bes des>) | s1*2 | <aes c>2(b) |
  s1*5 |
  s1*4 | s2 g | % 29a
  s1*5 |
  s1*3 | s2 f'_\sf ~ | 4(e) g8 b c g |
  s2 a( | <f a>4) <e g> r8 b' c4 | s2 c8 c, e g | c c, e g a a, c e | s2 fis | % 30a
  s1 | c2 b | s \lh r8 e,(g \rh c) | e c4 f8 e c4 8 | s2 e8 g bes f |
  g4 a bes8(f a c) | \lh b,(g c) \rh <e c' e> s2 | s2.. \once\hideNotes <c' f>8~ | 8 f, g c~c f, a c~ |
  c8 f, a c~ \once\hideNotes c s4. | <e, g>8 c(e g) 4 s | c,2 b | s1*2 | % 31a
  b2 s | s1*4 |
  s1*6 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*3 | s1\f | s | s\sf | s1*3 | s1\f | s1*3 | s2\sf s\sf | s\sf s\sf |
  s2\sf s\sf | s1 | s2\sf s\sf | s\sf s\sf | s\sf s\sf | s1*2 | s1\sf | s\omit\f-\markup{\italic sempre \dynamic f} | s1*6 | % 24
  s1*10 | s2. s4\f | s1*2 |
  s1*7 | s2 s\ff | s1*3 | s4 s2.\ff |
  s1*2 | s4 s2.\ff | s1*7 | s2 s\f | s1*6 | % 27
  s1\p | s | s2 s\cresc | s1*3 | s1\cresc | s1*2 | s1\sf | s1*2 | s1\dim | s1*2 | s1\cresc | s1*3 | s1\f |
  s2 s\p | s s\cresc | s1 | s\f | s\p | s | s2 s\cresc | s1*2 | s1\f | s1*5 |
  s1*5 | s2 s\dim | s1*2 | s1\cresc | s1*3 | s4 s2.\f | s1 | % 30
  s1 | s\dim | s | s\p | s | s2 s\cresc | s1*5 | s1\ff | s | s\dim | s | s\p |
}

pianoLHone = \relative {
  \global
  r2 <c, c'>4 8-. <d d'>-. | <ees ees'>2 <g g'>4. 8 | c2 r | r g' |
  r4 <c,, c'> q q | 2 <g g'> | aes' r | r <g g'> | <f f'> r | r <bes, bes'> |
  <aes aes'>4 <aes' aes'> q q | <g g'>2 2 | r4 <g, g'> q q | 2 2 | R1 | \vt R1 \ov |
  r2 s | s \vo c'4 s | \ov <c c'>2 <fis, fis'> | <g g'> <cis, cis'> | % 24a
  <c c'> <fis, fis'> | \repeat tremolo 4 {g16 g'} g,4 <g g'> |
  \repeat tremolo 4 {g'16 g'} \repeat tremolo 4 {d, d'} | % 24b
  \* 2 \repeat tremolo 4 {c16 c'} | bes,4 <bes bes'> q <a a'>8 <g g'> |
  <fis fis'>2 4 <g g'>8 <a a'> | <bes bes'>4 \vo g' g a8 bes |
  c4 a c bes8 a | \ov d4 <g,,, g'> q <a a'>8 <bes bes'> | % 24c
  <c c'>4 <a a'> <c c'> <bes bes'>8 <a a'> | <d d'>2 <c c'> |
  <b b'>2 q | \* 2 {r4 <c c'> <c' c'>2 |} r4 <c, c'>4 4 <d d'>8 <ees ees'> | % 25a
  <f f'>4 <d d'> <f f'> <ees ees'>8 <d d'> | \vo g'4 g g aes8 bes | % 25b
  c4 aes c bes8 aes | des2 2 |
  \ov r4 bes s2 | s1 | s2. <f, f'>4 | <bes bes'>2\sf <e, e'>\sf | % 25c
  <f f'>\sf <b, b'>\sf |
  <c c'>2 <fis, fis'>~ | 4 4 4 4 | <g g'> q <g' g'>2 | r4 <g, g'> <g' g'>2 | % 26a
  r4 <g, g'> \vo <g' g'> <c' ees>8 <b d> | % 26b
  <a c>4 <c ees> <a c> <b d>8 <c ees> |
  <d f>4 \ov g,, g'2^\sf | r4 s2 <g, g'>4 |
  <ees' ees'>2_\sf <a, a'>_\sf | <bes bes'>_\sf <e, e'>_\sf | % 26c
  <f f'>2_\sf <b, b'>_\sf ~ | 4 4 4 <c c'>8 <d d'> |
  <ees ees'>4 <c c'> <ees ees'> <d d'>8 <c c'> | % 27a
  <f f'>2 2 | <ees ees'>4 <c' c'>4 4 8 8 |
  q4 <c, c'>4 4 8 8 | 4 <c' c'>4 4 8 8 |
  q4 <c, c'>4 4 8 8 | 4 <c' c'>4 4 8 8 | 4 <c, c'>4 4 8 8 | 4 4 4 4 | 2 2 | % 27b
  r2\fermata <c' ees g c> | <bes ees g bes> <aes c f aes> | % 27c
  <aes bes f' aes>2 <g bes ees g> | <f c' ees f>\fermata <bes, bes'> |
  <ees ees'>2 <c c'> | <d d'>2 2 | <g, g'>1\fermata |
  <c c'>2 2 | <bes bes'>1 | <ees ees'>2 <d d'> | <c c'> <d d'> | % 28a
  <d' a'>1 | <g b> | <g b>2 <c, c'> | <f c'> <aes c> |
  g2 <f c'> | <g b> <aes c> | <f c'> <f b> | <ees, ees'>1 | % 28b
  <aes, aes'>1 | \vt <des des'>2 <f f'> | <f, f'>1 \key c \major |
  c'2 <c c'> | \ov q <c e g c> | <c e g c> <a' c e a> | % 28c
  <f a d f>2 <g b d g> | \*2 \repeat tremolo 8 {c,32 c'} |
  c,2 <c c'> | <b b'> <c c'> | <a a'> q | % 29a
  \*2 \repeat tremolo 8 {g32 g'} | g,2 <e' e'> |
  <f f'>2 q | <e e'> q | <a a'> q | <g g'> q | <c, c'> q | % 29b
  <f f'>2 <g g'> | <a a'> q | q \vo a'4 d, | g g \ov g,2 | g \vo d''4(c) | % 29c
  b4(c) \ov <g, g'>2^\sf | q \vo <d'' f>4(c8) e | % 30a
  <b f'>4 \ov <c,, c'> <a' a'>2^\sf ~ | 4 <g g'> <f f'> <e e'> |
  <d d'>2 \vo r8 a'' c d | \ov
  g,,2 <g, g'> | q q | <c c'> \vt c' \ov | 4 4 \vo bes'2~ | % 30b
  4 a <<{\vo bes2~ | 8 8(a f)} \new Voice {\vth g4 f | e s}>> d'4(c) |
  \vt c,2 \ov c | 4 <c, c'> <f f'>2~ | 4 <e e'> <a a'>2~ | % 30c+
  q2 <a, a'> | <g g'> \vo r8 e'' g \rh <c e> \lh \ov | g,2 g | % 31a
  <c, c'>2 <c' a'> | <c g'> <c f> |
  <c g'>2 <c a'> | <c g' d'> q | <c g' c> <a, a'> | <g g'> <f f'> | q q | % 31b
  q2 q | <c' c'> q | q q | q <c g' c> | <c g' d'> q | <c g' c>1\fermata | % 31c
}

pianoLHtwo = \relative {
  \global \vt
  s1*16 |
  s2 <cis, g'>2~ | 4 4 4 <cis cis'> | s1*4 | % 24a
  s1*4 | s4 g' g'2 |
  r4 g, g'2 | s1*3 |
  s1*4 | % 25a
  s1 | g,2 c | r4 aes' aes g8 f | e2 e |
  s1*5 |
  s1*4 | % 26a
  s2 g^\sf | s4 g g2^\sf | r4 s2. | s1 |
  s1*4 |
  s1*17 | % 27
  s1*8 | % 28a
  s1*5 | \vo \crossStaff {g2 g} | s1 |
  s2. \crossStaff g8 s \vt | s1*4 |
  s1*12 | s2 a, | g s | s g' | % 29
  g2 s | s g | 4 s2. | s1 | s2 d | s1*3 | s2 c | c c | c c | c s | s1*2 | % 30
  s1 | s2 g | s1*14 | 
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
      \context { \Lyrics
        autoExtenders = ##t
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
      \context { \Lyrics
        autoExtenders = ##t
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \addlyrics \wordsAltoMidi
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \addlyrics \wordsTenorMidi
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \addlyrics \wordsBassMidi
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
