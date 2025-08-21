\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 13. Credo (chorus)"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
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
  \key b \minor
  \time 2/2
}

TempoTrack = {
  \tempo \markup{\with-color "red" "in 2"}2=90
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "82a" } s1*5
  \textMark \markup { \box "82b" } s1*5
  \textMark \markup { \box "82c" } s1*5
  \mark \markup\circle\bold E      s1
  \textMark \markup { \box "83a" } s1*6
  \textMark \markup { \box "83b" } s1*3
  \mark \markup\circle\bold F      s1*3
  \textMark \markup { \box "83c" } s1*6
  \textMark \markup { \box "84a" } s1*5
  \mark \markup\circle\bold G      s1
  \textMark \markup { \box "84b" } s1*6
  \textMark \markup { \box "84c" } s1*4
  \mark \markup\circle\bold H      s1*2
  \textMark \markup { \box "85a" } s1*5
  \textMark \markup { \box "85b" } s1*5
  \textMark \markup { \box "85c" } s1*5
  \textMark \markup { \box "86a" } s1
  \mark \markup\circle\bold I      s1*4
  \textMark \markup { \box "86b" } s1*5
  \textMark \markup { \box "86c" } s1*7
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  e''2 e | r4 fis e a | fis d r2 | R1*2 |
  e2 cis | r4 fis e e | e a, r2 | R1 | e'2 d |
  r4 a e' e | fis d r2 | R1*4 |
  d2 4 4 | cis e fis2 | g,4 g' e b | cis(a) d g, | fis2(e) d r4 e | % 83a
  fis8(a b cis d2~ | 4) cis2 fis4 | e a, a(gis) | a a fis'2~ | 4(e8 d e fis e d | cis a) b(cis) d4(g~ |
  g4) fis e e~ | e d2 c8 d | e2. d8 e | a,4(d4. c8 b a | b cis dis e fis2~ | 4 e8 d c b a g |
  a8 b cis dis e4.) fis8 | dis4 b e2~ | 4 d8 cis d2~ | 8(cis d e d cis) b(a) | b4 e e e | cis e fis2 | % 84a
  g,4 g' e b | cis(a) d g, | fis2(e) | d r4 e | fis8(a b cis d2~ | 4) cis2 fis4 |
  e4 a, a(gis) | a2. d4 | b2.(cis8 d | e4) d8(e) fis(e fis g) | cis,4 d e2 | a,4 d2 g4 |
  e8(f) e d e(d c b | a g a fis g fis e g | fis g a b c b c a | b4 cis8 dis e2~ | 4) d8(cis) d4 g | % 85a
  c,4 8 8 4 4 | b d g2~ | 8(cis, d e fis2~ | 4) e8(d) e2~ | 8(g fis e) d(cis) b(a) |
  gis8(e fis gis a b) cis(a) | d2 4 4 | cis e fis2 | g,4 g' e b | cis(a) d g, |
  fis2(e) | d4 a'8 b c2~ | 4 b8 a b4 g | a r r a | d4 2 cis8(b) | % 86a
  cis4 d8(e) a,4 d | g4 2 fis8(e) | fis4 b e, d8 cis | d4 g cis, fis | b,4 8 a b4 cis |
  d4 8 8 4 8 8 | 1~ | 2~8(cis d e | fis2.) e4 | d8(e) fis g a4 d, | d(cis8 b) cis2 | d1\fermata
  ^\markup{\with-color "red" \large\bold SIT} |
  \bar "|."
}

CiuDc = \lyricmode { Cre -- do in u -- num De -- um, }
ciuDc = \lyricmode { cre -- do in u -- num De -- um, }
Poc   = \lyricmode { Pa -- trem o -- mni -- po -- ten -- tem, }
cPoc  = \lyricmode { cre -- do Pa -- trem o -- mni -- po -- ten -- tem, }
Pc    = \lyricmode { Pa -- trem, }
fcetc = \lyricmode { fa -- cto -- rem cœ -- li et ter -- rae, }
c_etc = \lyricmode { cœ -- li __ et ter -- rae, }
Pofcetc = \lyricmode { pa -- trem o -- mni -- po -- ten -- tem fa -- cto -- rem cœ -- li et ter -- rae, }
fc    = \lyricmode { fa -- cto -- rem, }
ettc  = \lyricmode { et ter -- rae, }
voc   = \lyricmode { vi -- si -- bi -- li -- um om -- ni -- um, }
veioc = \lyricmode { vi -- si -- bi -- li -- um et in -- vi -- si -- bi -- li -- um om -- ni -- um, }
voeic = \lyricmode { vi -- si -- bi -- li -- um o -- mni -- um et in -- vi -- si -- bi -- li -- um, }
c_etvoe_ic = \lyricmode { cœ -- li __ et ter -- ra vi -- si -- bi -- li -- um o -- mni -- um et __ in -- vi -- si -- bi -- li -- um, }
voeis = \lyricmode { vi -- si -- bi -- li -- um o -- mni -- um et in -- vi -- si -- bi -- li -- um; }
voe_is = \lyricmode { vi -- si -- bi -- li -- um o -- mni -- um et __ in -- vi -- si -- bi -- li -- um; }
voeip = \lyricmode { vi -- si -- bi -- li -- um o -- mni -- um et in -- vi -- si -- bi -- li -- um. }
oeip = \lyricmode { o -- mni -- um et in -- vi -- si -- bi -- li -- um. }
eioeip = \lyricmode { et in vi -- si -- bi -- li -- um o -- mni -- um et in -- vi -- si -- bi -- li -- um. }
eic   = \lyricmode { et in -- vi -- si -- bi -- li -- um, }
ic    = \lyricmode { in -- vi -- si -- bi -- li -- um, }
etis   = \lyricmode { et in -- vi -- si -- bi -- li -- um; }
vc    = \lyricmode { vi -- si -- bi -- li -- um, }
cc    = \lyricmode { cre -- do, }

wordsSop = \lyricmode {
  \CiuDc \ciuDc \ciuDc
  \Poc \fcetc \fcetc \fcetc \voeic % 83
  \Poc \fcetc \fcetc \fcetc \voeic
  \fcetc \Poc \fcetc % 85
  \voeic \eic \vc \eic \voeip
}

MCiuDc = \lyricmode { Cre "do " "in " u "num " De "um, " }
MciuDc = \lyricmode { cre "do " "in " u "num " De "um, " }
MPoc   = \lyricmode { Pa "trem " o mni po ten "tem, " }
McPoc  = \lyricmode { cre "do " Pa "trem " o mni po ten "tem, " }
MPc    = \lyricmode { Pa "trem, " }
Mfcetc = \lyricmode { fa cto "rem " cœ "li " "et " ter "rae, " }
Mcetc  = \lyricmode { cœ "li "  "et " ter "rae, " }
MPofcetc = \lyricmode { pa "trem " o mni po ten "tem " fa cto "rem " cœ "li " "et " ter "rae, " }
Mfc    = \lyricmode { fa cto "rem, " }
Mettc  = \lyricmode { "et " ter "rae, " }
Mvoc   = \lyricmode { vi si bi li "um " om ni "um, " }
Mveioc = \lyricmode { vi si bi li "um " "et " in vi si bi li "um " om ni "um, " }
Mvoeic = \lyricmode { vi si bi li "um " o mni "um " "et " in vi si bi li "um, " }
Mvoeis = \lyricmode { vi si bi li "um " o mni "um " "et " in vi si bi li "um; " }
Mvoeip = \lyricmode { vi si bi li "um " o mni "um " "et " in vi si bi li "um. " }
Moeip = \lyricmode { o mni "um " "et " in vi si bi li "um. " }
Meioeip = \lyricmode { "et " "in " vi si bi li "um " o mni "um " "et " in vi si bi li "um. " }
Mcetvoeic = \lyricmode { cœ "li "  "et " ter "ra " vi si bi li "um " o mni "um " "et "  in vi si bi li "um, " }
Meic   = \lyricmode { "et " in vi si bi li "um, " }
Mic    = \lyricmode { in vi si bi li "um, " }
Metis   = \lyricmode { "et " in vi si bi li "um; " }
Mvc    = \lyricmode { vi si bi li "umc " }
Mcc    = \lyricmode { cre "do, " }

wordsSopMidi = \lyricmode {
  \MCiuDc \MciuDc \MciuDc
  \MPoc \Mfcetc \Mfcetc \Mfcetc \Mvoeic % 83
  \MPoc \Mfcetc \Mfcetc \Mfcetc \Mvoeic
  \Mfcetc \MPoc \Mfcetc % 85
  \Mvoeic \Meic \Mvc \Meic \Mvoeip
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  a'2 a | r4 a a a | a fis r2 | R1*2 |
  a2 a | r4 a gis b | cis4 4 r2 | R1 | a2 d, |
  a'2 4 4 | fis a cis2 | d,4 d' b fis | gis(e) a d, | cis2(b) | a4 cis' a e |
  fis4(d) b gis' | a a, r a | b8(d e fis g2~ | 4) fis2 b4 | a d, d(cis) | d d a2~ | % 83a
  a8(cis d e fis4) 4 | e2.(d4) | e e fis(d) | e fis8 g a2~ | 4 g8 a b(a g fis | e4) fis8(g) a4 b |
  e,4 fis8 g a4 a | a fis g2~ | 8(e fis g a2~ | 4 b8 a g fis g a | d, g) fis(e) c'4(b~ | b) c8 b a4(dis,) |
  e4 2 c'4 | fis, g8 a b(a) b(c) | fis,2. 4 | e4 2 4 | 2. 4 | 4 r r2 | % 84a
  R1 | a2 a | r4 a a a | fis a cis2 | d,4 d' b fis | gis(e) a d, |
  cis2(b) | a r4 a | b8(d e fis g2~ | 4) fis2 b4 | a d, d(cis) | d2 r4 d'~ |
  d4 c8(b) c4 g | a fis d c8 b | a4(d e) a | dis, e8(fis e fis g e | a2. g8 fis | % 85a
  g4 fis8 e fis4) 4 | g2 r4 b8 b | cis4 a a d | g,4 2 fis8(e) | fis(e) d(e) fis4 g8(a |
  b8 gis a b e,4 a~ | a b8 a gis a) fis(g) | a4 cis d2 | b4 2 a8 b | e,4(fis) d d |
  d2(cis) | d r4 a'8 g | fis4 g8 fis g4 e | fis r r2 | r2 r4 d | % 86a
  a'4 2 g8(fis) | g4 a4 2~ | 4 e8 e a2~ | 4 g8 fis e(fis g a | d,4 e4~8 fis g e |
  a2~8 d, e fis | g fis g a fis g fis e | d e fis g a2~ | 8 fis g a b a b cis | d4) cis8(b) a4 g | fis e8 d e4. fis8 | fis1\fermata |
}

wordsAlto = \lyricmode {
  \CiuDc \ciuDc \cc \Poc \fcetc \fcetc
  \fcetc \fcetc \voeic \fcetc % 83
  \voeis \Pc \Poc \fcetc \fcetc \veioc
  \veioc \fcetc \ettc
  \voeic __ \vc \oeip
}

wordsAltoMidi = \lyricmode {
  \MCiuDc \MciuDc \Mcc \MPoc \Mfcetc \Mfcetc
  \Mfcetc \Mfcetc \Mvoeic \Mfcetc % 83
  \Mvoeis \MPc \MPoc \Mfcetc \Mfcetc \Mveioc
  \Mveioc \Mfcetc \Mettc
  \Mvoeic \Mvc \Moeip
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  cis'2 2 | r4 d cis e | d a r2 | R1*2 |
  cis2 e | d2 4 4 | cis e fis2 | g,4 g' e b | cis(a) d g, |
  fis2(e) | d r4 e | fis8(a b cis d2~ | 4) cis2 fis4 | e a, a(gis) a4 8 b cis2~ |
  cis4 b8 a gis4 e | a cis8 a d2~ | 4 cis8 d e2~ | 4 d8(cis) b4 8 cis | d4 fis,8(g) a4 a | a fis' e2~ | % 83a
  e4(fis8 e d cis b a | b4) a8(gis) a2~ | 8(b cis a d cis) b d | cis4 a r d8 d | 4 b b e~ | 8(cis) d(e) d(fis) e(d) |
  cis4 d8 d e4 e | fis d b g | r g c2~ | c4(d8 c b4) d | g(a8 g) fis(e) dis(cis) | b(g a b c4) b |
  e,4 g c4. 8 | b4 2 e,4 | b'2. 4~ | 4 gis a cis | b(a) b2 | a4 r r2 | % 84a
  R1 | e'2 a, | r4 fis' g e | fis4 4 r2 | R1*2 |
  r4 d d d | cis e fis2 | g,4 g' e b | cis(a) d g, | fis2(e) | d r4 g |
  g4(a4. b8 c4~ | 4) b2 e4 | d g, g(fis~ | 4) e b'8(a) b(g) | a g fis4 b8(c d b | % 85a
  e8 d c b a4) d | d b e2~ | 8(a, b cis d2~ | 4 cis8 b cis2~ | 4) fis, b2~ |
  b4(cis8 d e d e cis) | d4 fis e(d) | e2 r4 a, | d8(b cis d e2~ | 4) d r d |
  fis4 d a2 | a r | R1 | r4 a8 b c2~ | 4 b8 a b4 g | % 86a
  e4 a d8(cis) b a | g(fis) e(fis) d4 a' | d d~8(cis) d(e) | d4 b cis4 8 a | fis4(g8 a g b) e4 |
  a,8 fis(g a b a b cis | d cis d e fis2~ | 8 g fis e d2~ | 8 c b a g4) g' | fis a d,4 8 e | a,2 2 | 1\fermata |
}

wordsTenor = \lyricmode {
  \CiuDc \cPoc \fcetc \fcetc \voc
  \voeic \fcetc \voeic \fc \fcetc % 83
  \voe_is \ciuDc \Poc \fcetc \fcetc
  \voc \fcetc \fcetc % 85
  \voeic \eic \voeip
}

wordsTenorMidi = \lyricmode {
  \MCiuDc \McPoc \Mfcetc \Mfcetc \Mvoc
  \Mvoeic \Mfcetc \Mvoeic \Mfc \Mfcetc % 83
  \Mvoeis \MciuDc \MPoc \Mfcetc \Mfcetc
  \Mvoc \Mfcetc \Mfcetc % 85
  \Mvoeic \Meic \Mvoeip
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*13 | s1\dim | s1*2 | s1\p | s1*3 | s1\f | s1*3 | s1\dim | s\p |
  s1*40 | s1\dim | s1*3 | s1\cresc | s | s\f | s1*11 |
}

bass = \relative {
  \global
  a2^\markup{\with-color "red" \bold "Every crotchet light and short"} 4 4 | fis a cis2 | d,4 d' b fis | gis(e) a d, | cis2(b) |
  a4 cis' a e | fis(d) b gis' | a a, r a | b8(d e fis g2~ | 4) fis2 b4 |
  a4 d, d(cis) | d fis8 g a2~ | 4 gis8 a b2~ | 4 a8(gis) fis4 8 g | a4 fis d e | a,2 r |
  R1*4 | a'2 4 4 | fis a cis2 | % 83a
  d,4 d' b fis | gis(e) a d, | cis2(b) | a r4 a | b8(d e fis g2~ | 4) fis8(e fis4) b |
  a4 d, d(cis) | d2 r4 g, | c2~8(a b c | d4) b e8(d e fis | g4) c2 dis,4 | e a, a' b |
  c4 b a a~ | a g8(fis) g4 a | b4 8 a b4 b, | e4 2 4~ | 4 8 d e4 e | a, r r2 | % 84a
  R1 | a'2 2 | r4 a a a, | d d r2 | R1*2 |
  R1 | a'2 d, | r4 e g e | a a, r2 | r4 a' a a | fis a b2 |
  c,4 c' a e | fis(d) g c, | c(b) a a'~ | a g8(fis g4) e | fis b, b'2~ | % 85a
  b4 a8(g a4) d, | g g, g' fis8(g) | a2. g8 a | b2~8(a b cis | d4) d, d d'~ |
  d4 cis8(b) cis4 a | b2. 4 | a1~ | a~ | 4 fis b g |
  a2 a, | d1~ | d~ | d~ | 4 e8 fis g2~ | % 86a
  g4 fis8 e fis4 d | e4 r r2 | R1 | r4 e a2~ | 4 g8 fis g4 fis8 e |
  fis8(d e fis g fis g a | b a b cis d2~ | 4 d,8 e fis e fis g | a d, e fis g fis) g(a) | b4 a8 g fis4 g | a2 a, | d1\fermata |
}

wordsBass = \lyricmode {
  \Poc \fcetc \fcetc \fcetc \voeic
  \Poc \fcetc \fcetc \fcetc \voeic % 83
  \etis \ciuDc \ciuDc \Pofcetc
  \c_etc \c_etvoe_ic __ \ic __ % 85
  \voc \eioeip
}

wordsBassMidi = \lyricmode {
  \MPoc \Mfcetc \Mfcetc \Mfcetc \Mvoeic
  \MPoc \Mfcetc \Mfcetc \Mfcetc \Mvoeic % 83
  \Metis \MciuDc \MciuDc \MPofcetc
  \Mcetc \Mcetvoeic \Mic % 85
  \Mvoc \Meioeip
}

pianoRHone = \relative {
  \global \ov
  r4 <a' cis e> <e a cis> <cis e a> |
  r4 <a' d fis> <a cis e> <a cis e a> |
  <a d fis>4 <fis a d fis> <b d> <fis b d> |
  <e gis b> <gis b e> <a cis> <a d fis> |
  <a cis e>4 <a cis a'> <b fis' a> <b gis'> |
  <a e' a>4 <a cis e> <e a cis> <cis e a> | % 82b
  r4 <d fis a> <d gis> <e g b d e> |
  <e a cis>4 q <fis a d> <d' a' c> |
  <b d>4 <b g' b> <e g> <g, b e> |
  <e a cis>4 <a cis e a> <d fis> <d, g d'> |
  <d fis a>4 4 <a' d e a> <a cis e> | % 82c
  <fis a d fis>4 <a d fis> <a cis e> <e g cis> |
  <d fis>4 <fis b d> <d fis b> <fis b fis'> |
  <d gis>4 <e cis' e> <cis fis a> <a' d a'> |
  <a cis>4 <cis fis a> <b fis' a b> <b e gis> |
  <cis e a>4 4 <a cis e> <e a cis> |
  <fis cis' d>4 <fis b fis'> <gis b d e> <d' e gis b> | % 83a
  <a cis>4 <a cis e a> <a d fis> <a d fis a> |
  <g b>4 <e' g b> <b e g> <g b e> |
  <a g cis>4 <a d fis> <fis b d> <g b d> |
  <fis a d> \vo fis e \ov <cis e a> |
  d8 e fis d <e a>4 e |
  fis8 a b <e, cis'> \vo <fis d'>2~ | % 83b
  d'4 d r fis | e a,2 gis4 |
  \ov <cis, a'>8 cis' <fis, d'> <g e'> <a fis'>2~ |
  q4 <g e'>8 <a d> <b e> <a fis'> <g e'> <fis d'> |
  <e cis'>8 a <d, fis b> <e g cis> <d a' d>4 <d' g> |
  \vo a'2 4 4 | fis a b2 | e,8 d e d cis e a g | % 83c
  fis4 s g a8 b16 c | b2 a | g fis |
  e8 d e fis g fis g a | b2 b | b8 a b cis b as gis fis | % 84a
  gis4 e a2 | 4 gis8 fis g2\trill | a8 gis a b a d cis d |
  b8 a b c b a g fis | e a g a fis g e4~ | 8 a d,4~8 e d cis | % 84b
  d8 e fis g a b a g | fis g fis e fis a gis a | b cis a b cis b cis d |
  e4 a,,2 gis4 | a8 a g a~a d cis d | b2~8 b cis d | % 84c
  e8 cis d e fis e fis g | cis,4 d e2 | a,4 d2 g4~ |
  g8 f e d e d c b | a g a fis g fis e g | fis g a b c b c a | % 85a
  b4 cis8 dis e2~ | 4 d8 cis d4 g |
  c,2 c | <g b>8 <b d> <cis e> <d fis> <e g>2~ | % 85b
  q8 cis d e fis2~ | <d fis>4 <cis e>8 <b d> <cis e>2~ |
  8 <e g> <d fis> e \ov d cis <gis b> a |
  <gis b>8 <e gis> <fis a> <gis b> \vo a b cis a | % 85c
  d8 cis b cis d4 d | cis4 \ov <a' cis>8 <g b> <fis a> <g b> <e g> <fis a> |
  <g b>8 <a cis> <g b> <fis a> <e g> <fis a> <d fis> <e g> |
  <cis a'>8 b' <d, a'> <e g> <d fis> <e g> <fis a> <g b> |
  \vo <fis a>2 <cis e g> | % 86a
  \ov <a d fis>4 <d fis>8 <e g> <fis a>4 <a, d fis>8 <b e g> |
  <c fis a>4 <d, g b>8 <c fis a> <d g b>4 <d e g> |
  <d fis a>4 <d' fis>8 <e g> <fis a>4 <fis, d'>8 <g e'> |
  <a fis'>4 <b d g>8 <a c fis> <g b g'>4 r |
  \vo r2 r4 d' | g2. fis8 e | % 86b
  \ov <fis, fis'>8 <e' g> <fis a> <gis b> \vo e fis g a |
  d,8 cis d e cis d e fis | <fis, b>4 <g b>8 a b4 cis |
  d2. 4 | 2~8 cis d e | fis e fis g a2~ | % 86c
  a8 fis g a b a b cis | d4 <fis, cis'>8 <g b> a4 g |
  <d fis>2 <cis e>\trill | <fis, a d>1\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s1*16 |
  s1*4 | s4 d'2 s4 | s1 | % 83a
  s1 | e8 gis a b cis d cis b | a4 e fis d | s1*3 |
  <<{\vf a'2} \new Voice {\vt <e' g>4 <d fis>}>> \vt <a e'>4 4 | % 83c
  q4 <a d fis> d8 b c d | c4 8 b a2 | <a c>4 d8 c b4 d |
  8 cis dis e fis4~<b, fis'> | q4 <c e>8 <b d> <a c>4 <a b dis> |
  a8 b cis dis e dis e fis | dis b cis dis e2 | 4 d8 cis d2 | % 84a
  <b d> <a cis>4 <cis e> | <b e>2 2 | cis4 e fis2 |
  g4 g e2 | cis d4 g, | fis <fis a> <e g>2 | fis4 r cis'2 | d d~ | 4 cis2 fis4 | % 84b
  e4 <d, fis>2 e8 d | <cis e>2 <d fis>~ | d8 d e fis g2~ | 4 fis2 b4 | % 84c
  a8 g fis a g fis g e | fis4 d r d'~ |
  d4 c8 b c4 g | s2. e4 | d2 <e g>4 fis | dis e8 fis e fis g e | a2. <g d'>4 | % 85a
  <e g>4 fis8 e fis4~<d fis> | d4 r r b' | % 85b
  cis8 a b cis d4 <<{\vt d~ \once\hideNotes d4} \new Voice {\vt s4 | g,}>> \vt g2 fis8 e |
  fis8 s2.. |
  s2 e4 e | a e gis8 a fis gis | a4 s2. | s1*2 | % 85c
  d4 fis8 d a4 a | s1*4 | % 86a
  r4 a d d~ | d cis d8 b a g | s2 e'4 a,~ | a g~8 fis g a | d,4 e~8 fis g e |
  a8 fis g a b d, e fis | g fis g a fis2~ | 4 d'~8 cis d e | % 86c
  fis4 d2 g4 | fis d d <b d> | a4 2 g4 | s1 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  <a, a'>2 e8 a b cis | d e fis g a4 a, | <d, d'>2 r8 b' cis d |
  e8 cis d e fis e fis gis | a gis fis e d fis e d |
  cis4 a r8 a b cis | d b cis d e d cis b | a g fis e d e fis d | % 82b
  g2 r8 e fis g | a fis g a b a b cis |
  d8 e fis g a4 a, | d,8 e fis g a b cis a | <d, d'>2 r8 b' cis d | % 82c
  e8 cis d e fis e fis gis | a gis fis e d4 e | \vo r8 e a b cis4 r |
  \ov b,8 cis d b e d cis b | a g fis e d e fis d | g2 r8 e fis g | % 83a
  a8 fis gis a b a b cis | d e fis g a b a g | fis g a b cis a b cis |
  d8 e d cis b a gis fis | gis e fis gis a4 <d,, d'> | <cis cis'>2 <b b'> | % 83b
  <a a'>8 g' fis e d e fis d | g <d d'> <e e'> <fis fis'> <g g'>2~ |
  q4 <fis fis'>8 <e e'> <fis fis'>4 <b b'> |
  <a a'>4 <d, d'>2 <cis cis'>4 | <d d'>2 r8 g a b | <c, c'>2 r8 a' b c | % 83c
  <d, d'>4 b' <e, e'>8 d' e fis | <g, g'>4 <c c'>2 <dis, dis'>4 |
  <e e'>4 <a, a'>2 <b b'>4 |
  <c c'>4 <b b'> <a a'>2~ | 4 <g g'>8 <fis fis'> <g g'>4 <a a'> | % 84a
  <b b'>1 | <e, e'> | q | <a a'>4 cis' d b |
  e4 e, g e | <a, a'>2 r8 a b cis | d e fis g a4 <a, a'> | % 84b
  <d d'>2 r4 <a' a'> | <d d'>2 r4 <b b'> | <e e'>2 r4 <b b'> |
  <cis cis'>4 <fis, fis'> <b b'>8 <a a'> <b b'>4 | <a a'>2 r8 d, e fis | % 84c
  g8 a g fis e g fis e | a <a, a'> <b b'> <cis cis'> <d d'>4 g |
  a4 <a, a'> q q | fis'8 d e fis g a b g |
  c4 <c c'> <a a'> <e e'> | <fis fis'> <d d'> <g g'> <c, c'>~ | % 85a
  q4 <b b'> <a a'> <a' a'>~ | q <g g'>8 <fis fis'> <g g'>4 <e e'> |
  <fis fis'>4 <b, b'> <b' b'>2~ |
  q4 <a a'>8 <g g'> <a a'>4 <d, d'> | <g g'>2 r8 e' fis g | % 85b
  <a, a'>2 r8 fis' g a | <b, b'>2 r8 a b cis | d4 <d, d'> <d' d'>2~ |
  q4 <cis cis'>8 <b b'> <cis cis'>4 <a a'> | <b b'>1 | <a a'> | % 85c
  <a a'>1~ | 4 <fis a fis'> <b d b'> <g d' g> |
  <a a'>4 a8 8 \vo a a a a | d1~ | 4 8 8 8 8 8 8 \ov | % 86a
  <d, d'>1~ | 8 8 <e e'> <fis fis'> \vo <g g'>2~ |
  q4 \ov <fis fis'>8 <e e'> <fis fis'>4 <d d'> | <e e'> a d2~ | % 86b
  d4 cis8 b cis4 a | b <e, e'> <a a'>2~ | 4 <g g'>8 <fis fis'> <g g'>4 <e e'> |
  <fis fis'>8 d e fis g fis g a | b a b cis d a b cis | % 86c
  d8 cis d e fis e fis g | a d, e fis g fis g a |
  b4 <a, d a'>8 <g d' g> <fis d' fis>4 <g d' g> |
  \vo a'2 a,8 8 8 8 | \ov \repeat tremolo 16 {d,,32 d'} |
}

pianoLHtwo = \relative {
  \global \vt
  s1*15 | a,2 r8 a b cis |
  s1*18 | % 83
  s1*18 |
  s1*15 | % 85
  s2 a, | d1 | d | s1 | s2 \ov r8 \vo d' d d | \vt a,4 s2. | s1*9 | a'4 8 8 a,2 | s1 |
}

#(set-global-staff-size 18)

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
          \new Dynamics \teeny \dynamicsPiano
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
          \new Dynamics \teeny \dynamicsPiano
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
          \new Dynamics \teeny \dynamicsPiano
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
          \new Dynamics \teeny \dynamicsPiano
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
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
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
%   \articulate
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
          \new Dynamics \teeny \dynamicsPiano
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
%   \articulate
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
          \new Dynamics \teeny \dynamicsPiano
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
%   \articulate
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
          \new Dynamics \teeny \dynamicsPiano
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
%   \articulate
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
          \new Dynamics \teeny \dynamicsPiano
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
