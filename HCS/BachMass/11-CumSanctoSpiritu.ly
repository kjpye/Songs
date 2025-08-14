\version "2.25.26"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 11. Cum Sancto Spiritu"
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
  \time 3/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Vivace 4=100
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "66a" } s2.*3
  \textMark \markup { \box "66b" } s2.*4
  \textMark \markup { \box "66c" } s2.*3
  \textMark \markup { \box "67a" } s2.*4
  \textMark \markup { \box "67b" } s2.*3
  \mark \markup\circle\bold A      s2.
  \textMark \markup { \box "67c" } s2.*4
  \textMark \markup { \box "68a" } s2.*4
  \textMark \markup { \box "68b" } s2.*4
  \mark \markup\circle\bold B
  \textMark \markup { \box "68c" } s2.*4
  \textMark \markup { \box "69a" } s2.*3
  \mark \markup\circle\bold C      s2.
  \textMark \markup { \box "69b" } s2.*5
  \textMark \markup { \box "69c" } s2.*4
  \textMark \markup { \box "70a" } s2.*2
  \mark \markup\circle\bold D      s2.*2
  \textMark \markup { \box "70b" } s2.*4
  \textMark \markup { \box "70c" } s2.*4
  \textMark \markup { \box "71a" } s2.*3
  \textMark \markup { \box "71b" } s2.*3
  \textMark \markup { \box "71c" } s2.*2
  \mark \markup\circle\bold E      s2.
  \textMark \markup { \box "72a" } s2.*3
  \textMark \markup { \box "72b" } s2.*3
  \textMark \markup { \box "72c" } s2.*3
  \textMark \markup { \box "73a" } s2.*3
  \mark \markup\circle\bold F
  \textMark \markup { \box "73b" } s2.*4
  \textMark \markup { \box "73c" } s2.*3
  \textMark \markup { \box "74a" } s2.*2
  \mark \markup\circle\bold G      s2.*2
  \textMark \markup { \box "74b" } s2.*3
  \textMark \markup { \box "74c" } s2.
  \mark \markup\circle\bold H      s2.*2
  \textMark \markup { \box "75a" } s2.*4
  \textMark \markup { \box "75b" } s2.*3
  \mark \markup\circle\bold I
  \textMark \markup { \box "75c" } s2.*3
  \textMark \markup { \box "76a" } s2.*4
  \textMark \markup { \box "76b" } s2.*4
  \textMark \markup { \box "76c" } s2.
  \mark \markup\circle\bold K      s2.*2
  \textMark \markup { \box "77a" } s2.*3
  \textMark \markup { \box "77b" } s2.*3
  \textMark \markup { \box "77c" } s2.*4
}

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
}

sopranoI = \relative {
  \global
  R2.*2 | r8 a' e' cis d(e16) fis |
  e8 a,8 8 16 16 e'8 fis16(g) | fis2.~ | fis~ | fis( |
  e2.) | 8 a, e' cis d(e16) fis | e8 cis8 8 16 d e8 8 |
  e8 b r4 r | r8 e8 8 16 16 8 8 | 2.(fis | % 67a
  e2.) | fis8 8 8 16 16 8 8 | e b r4 r | r8 b b16(cis d4) cis16 b |
  a8 cis16(b) a2~ | 2. | 8 8 fis16(gis a gis b a gis fis | gis fis e fis gis a b a cis b a gis |
  a16 gis fis gis a b cis b d cis b a | % 68a
  b16 a gis a b cis d cis e d cis b |
  cis2.~ | 4) 8 8 8 8 |
  c2.~ | c~ | 2~8(b) | 2 r8 gis | % 68b
  a16(e fis gis a b cis d e fis g e | % 68c
  fis16 e d cis b a gis a b cis d b |
  e16 d cis b a gis fis gis a b cis a |
  d8 fis16 e d8 16 cis b8 16 a |
  gis8) fis16 e e'4. gis,8 | a4. fis'16(e) d(cis b cis) | a4 r r | R2. | % 69a
  R2.*5 |
  R2.*4 |
  R2. | r4 r8 d a' d, | cis16(b cis d e8) cis e cis | a(cis16 b a8 cis d fis | % 70a
  b,8 d16 cis b8 d e g | cis,) e16 d cis8 e a, g'| % 70b
  fis8 e16(fis d8) r r16 g,(fis e | d cis d e fis e d e fis e d e |
  fis16 e d e fis g a g b a g fis | % 70c
  g16 fis e fis g a b a c b a g |
  a16 g fis g a b c b d c b a |
  g16 b cis d e4~16 d cis b |
  ais8) fis r fis'4(e16 d | e2.~ | 8 ais,16 b cis d e d fis e d cis | % 71a
  d16 cis d e fis8) b, ais4 | b r r | R2. |
  R2.*2 | d2 4 |
  r8 gis, b e d cis16(b) | cis4 r r | R2. | % 72a
  b2 4 | r8 cis eis gis16 16 8 cis, | cis a r cis fis4~ |
  fis4 8 8 8 8 | 2.~ | 2.~ |
  fis2~8(dis) | eis2 r4 | r r8 cis fis cis | % 73a
  a16(gis a b cis8) a cis a | fis(a16 gis fis8 a b d | % 73b
  gis,8 b16 a gis8 b cis e | ais,) cis16 b a8 cis fis, fis' |
  d8 cis16(d b8) r r16 e(d cis | b ais b cis d cis b cis d cis b cis | % 73c
  d16 cis b cis d e fis e g fis e d |
  e16 d cis d e4~16 g fis e | fis e dis e fis4~16 a gis fis | % 74a
  e4) e r | r8 b e b gis16(a) b8 |
  b4 r8 e, e'4~ | 8 a,16 16 d8 a gis fis | e4 e r | % 74b
  r8 e' a e cis16(d) e8 | 4 r8 e, a4~ | 16(g fis g a8) g16 a fis8 a |
  b16(a g a b cis a b g4~ | 16 fis e fis g fis e d e8 d'16 cis) | % 75a
  d8 a d a fis16(g a8~ | 16 g) fis(e) d8 a'8 4~ |
  a8 d16 cis d8 c b4~ | 8(e16 d e8) d c4~ | 16(b a b cis b a g fis4) | % 75b
  g8 d b'2~ | 8 16 a g8 b cis e | a,16(g) fis8 r a8 4~ |
  a8 16 g fis8 a b fis | g16(fis e fis g a b cis d cis b d | % 76a
  cis16 b a b cis d e fis g fis e g | fis e fis e) d8 r r4 |
  r8 a8 8 16 16 8 8 | f'2.~ | 2.~ | 2~8(e) | % 76b
  e2 r8 a, | 16(g fis f a b c b d c b a | b a g a b cis d cis e d cis b |
  cis16 b a b cis d e d fis e d cis | % 77a
  d16 cis b cis d e fis e g fis e d |
  e16 d cis d e fis g fis a g fis e |
  fis8) 16 e fis2~ | 8 e16(d) e2~ | 8 d16(cis) d2~ | % 77b
  d16(cis b cis d b cis d e fis g e | % 77c
  cis8) a r g' fis e16 fis | d16(e) fis(g) a8 d, d(cis) | d2.\fermata |
  \bar "|."
}

DPc      = \lyricmode { De -- i Pa -- tris, }
CssigDPc = \lyricmode { Cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i Pa -- tris, }
cssigDPc = \lyricmode { cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i Pa -- tris, }
IgDPc    = \lyricmode { In glo -- ri -- a De -- i Pa -- tris, }
igDPc    = \lyricmode { in glo -- ri -- a De -- i Pa -- tris, }
cssc     = \lyricmode { cum san -- cto spi -- ri -- tu, }
amc      = \lyricmode { A -- men, }
ame      = \lyricmode { A -- men! }
amp      = \lyricmode { A -- men. }

wordsSopI = \lyricmode {
  \CssigDPc \cssigDPc
  \igDPc \igDPc \igDPc \igDPc % 67
  \igDPc
  A -- men. % 69
  \CssigDPc \amc \amc
  \repeat unfold 3 { \amc } % 71
  \cssc \amc \igDPc \igDPc
  \cssigDPc \amc \amc % 73
  \cssigDPc \amc  \cssigDPc
  \cssigDPc \amc \igDPc \amc \igDPc % 75
  \amc \igDPc \igDPc
  \amc \igDPc \ame % 77
}

MDPc      = \lyricmode { De "i " Pa "tris, " }
MCssigDPc = \lyricmode { "Cum " san "cto " spi ri "tu " "in " glo ri "a " De "i " Pa "tris, " }
McssigDPc = \lyricmode { "cum " san "cto " spi ri "tu " "in " glo ri "a " De "i " Pa "tris, " }
MIgDPc    = \lyricmode { "In " glo ri "a " De "i " Pa "tris, " }
MigDPc    = \lyricmode { "in " glo ri "a " De "i " Pa "tris, " }
Mcssc     = \lyricmode { "cum " san "cto " spi ri "tu, " }
Mamc      = \lyricmode { A "men, " }
Mame      = \lyricmode { A "men! " }
Mamp      = \lyricmode { A "men. " }

wordsSopIMidi = \lyricmode {
  \MCssigDPc \McssigDPc
  \MigDPc \MigDPc \MigDPc \MigDPc % 67
  \MigDPc
  \Mamp % 69
  \MCssigDPc \Mamc \Mamc
  \repeat unfold 3 { \Mamc } % 71
  \Mcssc \Mamc \MigDPc \MigDPc
  \McssigDPc \Mamc \Mamc % 73
  \McssigDPc \Mamc  \McssigDPc
  \McssigDPc \Mamc \MigDPc \Mamc \MigDPc % 75
  \Mamc \MigDPc \MigDPc
  \Mamc \MigDPc \Mame % 77
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
}

sopranoII = \relative {
  \global
  r8 d' a' fis g(a16) b | a8 8 8 16 16 d8(e16) fis | e8 a, r4 r |
  r8 cis8 8 16 16 8 d16(e) | d2.~ | d~ | d~ |
  d2. | cis8 r r4 r | R2. |
  r8 e, b' gis a(b16) cis | b8 e, b'8 16 16 8 cis16(d) | cis2.~ | 2.~ | % 67a
  cis2.( | b) | 8 r r4 r | r8 gis8 16(a b4) a16 gis |
  fis8 a16(gis) fis4.( gis16 a | g2.) | % 67c
  fis8 a fis16(gis a gis b a gis fis |
  gis16 fis e fis gis a b a cis b a gis |
  a16 gis fis gis a b cis b d cis b a | % 68a
  b16 a gis a b cis d cis e d cis b |
  cis2.~ | 4) 8 8 8 8 |
  a2.~ | a~ | a2~8(fis) | gis2 r8 e | % 68b
  a8(cis16 b cis2~ | 8 b16 a b2~ | 8 a16 gis a2~ | 4 d2~ |
  d4.) e16 d cis8 b | a4. fis'16(e) d(cis b cis) | a4 r r | R2. | % 69a
  R2.*5 |
  R2.*4 |
  R2.*4 | % 70a
  R2.*2 | r8 a d a fis16(g a8~ | 16 g) fis(e) d8 a'8 4~ |
  a8 d16 cis d8 c b4~ | 8(e16 dis e8) d c4~ | % 70c
  c16(b a b cis b a g fis4) | g r16 b(cis d e4~ |
  e8 fis16 e d8) cis d4~ | 8(gis,16 a b cis d cis e d cis b | cis2.~ | % 71a
  cis8 b16 ais b8) e cis4 | b r r | R2. |
  R2.*2 | b2 4 |
  r8 b e b b a16(gis) a4 r r | R2. | % 72a
  a2 4 | r8 gis cis8 16 16 8 gis | a fis r a cis4~ |
  cis4 8 8 8 8 | bis2.( | cis |
  dis2.) | cis2 r8 eis | fis cis16 16 8 fis8 8(eis) | % 73a
  fis4 r r | R2.*3 |
  r8 fis, b fis d16(e) fis8 | 4 r r | r8 fis b4~16(d cis b |
  cis16 b ais b cis8) 16 16 8 fis, | b2. | 8 8 e b gis16(a) b8 | 4 r8 b e4~ | % 74a
  e16(d cis d e8) d16 e cis8 e | fis16(e d e fis g e fis d4~ | % 74b
  d16 cis b cis d cis b a b8) a16(gis) |
  a8 e r e' a e | cis16(b cis d e8) cis e cis | a(cis16 b a8 cis d fis | % 74c
  b,8 d16 cis b8 d e g | cis,) e16 d cis8 e a, a' | % 75a
  fis8 e16(fis d8) r r16 g,(fis e | d cis d e fis e d e fis e d e |
  fis16 e d e fis g a g b a g fis | % 75b
  g16 fis e fis g a b a c b a g |
  a16 g fis g a b c b d cis b a) |
  g8 d' g16(fis e d e d cis b | cis2.~ | 8 fis~16 e d cis d cis b a | % 75c
  b2.~8 e4) d16 e a,8 e | a16(b cis d e8) cis d e | d16(cis d8) a r r4 | % 76a
  r8 d8 8 16 16 8 8 | 2.~ | d~ | 2~8(b) |
  cis2 r8 cis | d a16 16 d2~ | 8 b e2~ |
  e8 cis fis2~8 d g2~ | 16(fis g8) a,4 r8 a | % 77a
  a8 d16 cis d2~ | 8(e) cis4 4~ | 8(d) b4 4~ |
  b16(a g a b g a b cis d) e8 | e cis r cis d cis16 16 | d8 8 8 g e4 | d2.\fermata |
}

wordsSopII = \lyricmode {
  \CssigDPc \igDPc
  \cssigDPc \igDPc \igDPc % 67
  \igDPc
  \amp % 69
  \CssigDPc \amc \amc
  \repeat unfold 3 { \amc } % 71
  \cssc \amc \igDPc \igDPc
  \igDPc \cssigDPc % 73
  \cssigDPc \amc \cssigDPc
  \amc \amc \igDPc % 75
  \amc \amc \igDPc \igDPc
  \amc \amc \igDPc \amc \amc \igDPc \ame % 77
}

wordsSopIIMidi = \lyricmode {
  \MCssigDPc \MigDPc
  \McssigDPc \MigDPc \MigDPc % 67
  \MigDPc
  \Mamp % 69
  \MCssigDPc \Mamc \Mamc
  \repeat unfold 3 { \Mamc } % 71
  \Mcssc \Mamc \MigDPc \MigDPc
  \MigDPc \McssigDPc % 73
  \McssigDPc \Mamc \McssigDPc
  \Mamc \Mamc \MigDPc % 75
  \Mamc \Mamc \MigDPc \MigDPc
  \Mamc \Mamc \MigDPc \Mamc \Mamc \MigDPc \Mame % 77
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R2.*2 | r8 cis' g' e fis(g16) a |
  g8 8 8 16 16 8 cis, | a'2.( | b | a) |
  b8 8 8 16 16 8 8 | a a r4 r | r8 e8 8 16 16 a8 b16(cis) |
  b8 e, r4 r | r8 b' gis8 16 16 8 a16(b) | a2.~ | a~ | % 67a
  a2.~ | a | gis8 r r4 r | R2. |
  r8 a,8 16(b cis4) b16 a | e'8 g16(fis) e2 | % 67c
  d8 fis d16(e fis8 e d~ | d b e16 fis g8 fis e~ |
  e8 cis fis16 gis a8 g fis~ | 8 e16 fis gis a b8 a e | 2.~ | 4) 8 8 8 8 | % 68a
  dis2.( | e | fis) | e2 r8 e |
  e8(c e a16 gis a8 cis, | d b d gis16 fis gis8 b, | % 68c
  cis8 a cis fis16 e fis8 a, | b fis'4) 16 16 8 8 |
  gis8 b, r gis'(a) b | fis4 e8 a4(e8) | 4 r r | R2. | % 69a
  R2.*3 | r4 r8 a d a | fis16(e fis g a8) fis a fis |
  d8(g16 fis e8 g a cis | fis, a16 g fis8 a b d | % 69c
  gis,8) b16 a g8 b e, d' | cis b16(cis a) a(b cis d cis b a |
  g4~16 e fis g a b a g | fis e d e fis8) a, r16 d(cis b | % 70a
  a16 gis a b cis b a b cis b a b | cis b a b cis d e d fis e d cis |
  d16 cis b cis d e fis e g fis e d | e d cis d e fis g fis a g fis e | % 70b
  d16 a' g a fis g e fis d8) cis | r a' d a fis16(g a8~ |
  a16 g) fis(g) a8 d,8 4~ | 8 b'16 a b8 e, a16(g) fis(e) | d2. | 4 r16 d(e fis g8) e | % 70c
  cis8(b) ais r r ais | b(e4) d16 e cis8 8 | fis2.~ | % 71a
  fis16(e d cis b8) g' fis4 | 4 r r | R2. |
  R2.*2 | fis2 4 |
  r8 e gis b g e | 4 r r | R2. | % 72a
  fis2 4 | r8 b8 8 16 16 8 8 | a cis, r fis a4~ |
  a4 8 8 8 8 | 2.~ | 2.~ |
  a2~8(gis) | 2 r8 8 | fis gis16 16 a8 8 gis4 | % 73a
  fis4 r r | R2.*3 |
  r4 r8 fis b fis | d16(cis d e fis8) d fis d | b(d16 cis b8 d e g |
  cis,8 e16 d cis8 e fis a | dis,8) fis16 e dis8 fis b, b' | % 74a
  gis8 fis16(gis e8) r r16 a(g fis | e d e fis gis fis e fis g fis e fis |
  gis16 fis e fis gis a b a cis b a gis | % 74b
  a16 gis fis gis a b cis b d cis b a |
  b16 a gis a b cis d cis e d cis b |
  a4) a r | r8 e a e cis16(d) e8 | 4 r8 a, a'4~ | % 74c
  a8 d,16 16 g8 d cis b | a4 a r | % 75a
  r16 a'(g a fis g e fis d8) c | r8 a' d a fis16(g a8~ |
  a16 g) fis(g) a8 fis d4~ | 8 b'16 a b8 e, a16(g) fis(e) | d2 4 | % 75b
  r16 fis(g a b a g a b a g fis | g fis e fis g8) 8 r4 | % 75c
  r16 g(a b a g fis g a g fis e |
  fis16 e dis e fis8) 8 r4 | r8 b16(a g fis) gis8 a b | % 76a
  e,16(d cis b a8) a' d, a' | a16(g a g) fis8 r r4 |
  r8 fis8 8 16 16 8 8 | gis2.( | a | b) | % 76b
  a2 r8 e | d16(cis d e a,8 a' g fis~ | 8 e g b a g~
  g8 fis a cis b a~ | a g b d cis b~ | b a cis e d a~ | % 77a
  a8) 16 g a8(d16 cis d8) fis, | g4.(cis16 b cis8) e, | fis4.(b16 a b8) d, |
  e8(b'16 a g8 16 fis e d cis d | e8) e r a8 8 16 16 | % 77c
  fis8 8 d b' a4 | a2.\fermata |
}

wordsAlto = \lyricmode {
  \CssigDPc \igDPc \igDPc
  \igDPc \igDPc \igDPc % 67
  \igDPc
  \DPc \amp \CssigDPc \amc \amc % 69
  \amc \cssigDPc \amc \amc
  \amc \igDPc \amc \amc % 71
  \cssc \amc \igDPc \igDPc
  \igDPc \cssigDPc % 73
  \amc \amc \cssigDPc
  \amc \amc \cssigDPc \amc \amc \amc % 75
  \repeat unfold 5 \amc \igDPc \igDPc
  \amc \amc \igDPc \ame % 77
}

wordsAltoMidi = \lyricmode {
  \MCssigDPc \MigDPc \MigDPc
  \MigDPc \MigDPc \MigDPc % 67
  \MigDPc
  \MDPc \Mamp \MCssigDPc \Mamc \Mamc % 69
  \Mamc \McssigDPc \Mamc \Mamc
  \Mamc \MigDPc \Mamc \Mamc % 71
  \Mcssc \Mamc \MigDPc \MigDPc
  \MigDPc \McssigDPc % 73
  \Mamc \Mamc \McssigDPc
  \Mamc \Mamc \McssigDPc \Mamc \Mamc \Mamc % 75
  \repeat unfold 5 \Mamc \MigDPc \MigDPc
  \Mamc \Mamc \MigDPc \Mame % 77
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  r8 a fis' d e(fis16) g | fis8 8 8 16 g a8 8 | a e r4 r |
  r8 e8 8 16 16 8 8 | fis2.~ | 2.~ | 2. |
  b,8 e gis e16 16 b8 e | e cis r4 r | R2. |
  r8 gis d' b cis(d16) e | d8 8 8 16 16 8 gis, | a2.( | cis~ | % 67a
  cis2.) | fis8 8 dis8 16 16 b8 8 | b e r4 r | R2. |
  r8 fis,8 16(gis a4) gis16 fis | cis'8 e16(d) cis2 | % 67c
  a8 8 8(d cis b~ | b gis b e d cis~ |
  cis8 a d fis e d~ | d b e gis cis, e | a,2.~ | 4) 8 8 8 8 | % 68a
  a2.~ | 2.~ | 2~8(b) | e,2 r8 b' |
  cis8(a cis e a,4~ | 8 gis b d gis,4~ | 8 fis a cis fis,4~ | 8 b4) 16 16 8 8 |
  b8 gis r b(cis) d | cis16(d cis b a8) cis8 b(d) | % 69a
  cis4 r8 e a e | cis16(b cis d e8) cis e cis | 
  a8(cis16 b a8 cis d fis | b, d16 cis b8 d e g | % 69b
  cis,8) e16 d cis8 e a, g' | fis e16(fis d8) r r16 g,(fis e |
  d16 cis d e fis e d e fis e d e |
  fis16 d e fis g a b a cis b a g | % 69c
  a16 g fis g a b cis b d cis b a |
  b16 a gis a b cis d cis e d cis b |
  a16 cis d e fis4~16 e d cis |
  b16 d cis b e4~16 d cis b | % 70a
  a16 cis b a d fis e d e8 gis,) |
  a8 e' a e cis16(d e8~ | 16 d) cis(d) e8 a, a4~ |
  a8(g16 a b cis a b g4~ | 16 fis) e fis g(fis) e(d) e8 cis' | % 70b
  d4.(cis16 b a8) a | a(d16 cis d4~16 b a g |
  f8 a d4~16 c b a | g4~16 fis g fis e8 a~ | % 70c
  a16 b c b a g fis g a8) a | d(fis,) b g'16(fis e8 g |
  fis4~16 g e fis d8 fis | e16 d cis4 b16 cis ais8) fis | % 71a
  r8 cis' cis ais16 16 fis8 e' |
  d8(g fis) e16(d) e8(cis) | d4 r r | R2. | % 71b
  R2.*2 | b2 4 |
  r8 b b b e e | cis4 r r | R2. | % 72a
  fis,2 4 | r8 cis' gis eis16 16 cis8 8 | fis a r4 r8 fis' |
  cis8 16 16 4. 8 | fis2.~ | 2.( |
  dis2.) gis,2 r8 cis | 8 16 16 fis8 cis d(cis) | % 73a
  cis4 r r | R2.*3 |
  R2. | r8 fis, b fis d16(e) fis8 | 4 r r |
  R2.*2 | r4 r8 b e b | gis16(fis gis a b8) g b g | % 74a
  e8(gis16 fis e8 g a cis | fis, a16 gis fis8 a b d | gis,) b16 a g8 b e, e' |
  cis8 b16(cis a8) r r16 d(cis b | a gis a b cis b a b cis b a b | cis b a b cis d e d fis e d cis |
  d16 cis b cis d e fis e g fis e d | % 75a
  e16 d cis d e fis g fis a g fis e |
  d4.) cis16(b a8) a~ | 8(d16 cis d4~16 b a g |
  fis8) a d4~16(c b a | g4~16 fis g fis e8 a~ | 16 b c b a g fis g a8) a | % 75b
  b16(a b c d8) b g'16(fis e d | e fis g8~16 fis e d cis b a g | % 75c
  a16
  b cis4) a8 fis'16(e d cis |
  d16 e fis8~16 e d cis b8) b | b16(a g a b8) b fis'(b, | % 76a
  cis8 e16 d cis b) a8 d(a~ | a d) fis r r4 |
  r8 d8 8 16 16 8 8 | 2.~ | 2.~ | 2~8(e) | % 76b
  a,2 r8 8 | a(d16 cis d8 fis e d~ | d g b, g' fis e~ |
  e8 a cis, a' g fis~ | 8 g d b cis d | cis8) 16 b cis8 8 d(a'16 g | % 77a
  fis8) d r a d4~ | 8(cis e) g cis,4~ | 8 b(d) fis b,4~ |
  b8 e8 8 8 a a | a e r e fis cis16 16 | b(cis) d(e) fis8 b, e4 | fis2.\fermata |
}

wordsTenor = \lyricmode {
  \CssigDPc \igDPc \igDPc
  \cssigDPc \igDPc \igDPc \igDPc % 67
  \igDPc
  \DPc \amp \CssigDPc \amc \amc % 69
  \cssigDPc \amc \amc \amc \amc
  \igDPc \amc \amc % 71
  \cssc \amc \igDPc \igDPc
  \igDPc \cssc % 73
  \cssigDPc \amc \amc
  \repeat unfold 5 \amc % 75
  \amc \amc \amc \igDPc \igDPc
  \igDPc \DPc \amc \igDPc \ame % 77
}

wordsTenorMidi = \lyricmode {
  \MCssigDPc \MigDPc \MigDPc
  \McssigDPc \MigDPc \MigDPc \MigDPc % 67
  \MigDPc
  \MDPc \Mamp \MCssigDPc \Mamc \Mamc % 69
  \McssigDPc \Mamc \Mamc \Mamc \Mamc
  \MigDPc \Mamc \Mamc % 71
  \Mcssc \Mamc \MigDPc \MigDPc
  \MigDPc \Mcssc % 73
  \McssigDPc \Mamc \Mamc
  \repeat unfold 5 \Mamc % 75
  \Mamc \Mamc \Mamc \MigDPc \MigDPc
  \MigDPc \MDPc \Mamc \MigDPc \Mame % 77
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  R2. | r8 d d' d,16 e fis8 a | cis a r4 r |
  r8 a, a' a,16 b cis8 a | d(d' a fis d fis | b, b' fis d b d | fis, fis' d a fis' d |
  gis2._\trill) | a8 e cis' a b(cis16) d | cis8 a a a,16 b cis8 e |
  gis8 e r4 r | r8 e e' e,16 fis gis8 e | a,(a' e cis a cis | fis, fis' cis a' fis a | % 67a
  cis,8 cis' a e cis e | dis dis' b fis d b) | e8 8 8 8 8 8 | eis4 r r |
  r8 fis8 8 8 8 8 | cis4 r r | r8 d d(b cis d e16 d e d e8 cis d e |
  fis16 e fis e dis8 d e fis | gis16 fis gis fis gis8 e fis gis | a2.~ | 4) g8 8 8 8 | % 68a
  fis2.( | e | dis) | d2 r8 d |
  cis8(a'16 b a8 g fis e | d16 fis g a g8 fis e d | % 68c
  cis16 e fis gis fis8 e d cis | b16 cis d cis b8 b'16 a g8 16 fis |
  e8) 16 fis gis8(e a) e | fis(e16 d cis8) d e4 | a, r r | R2. | % 69a
  R2.*5 |
  R2.*4 |
  R2.*4 | % 70a
  R2.*2 | r4 r8 a' d a | fis16(e fis g a8) fis a fis |
  d8(fis16 e d8 fis g b | e, g16 fis e8 g a c | % 70c
  fis,8) a16 g fis8 a d, d' | b a16(b g8) r r16 cis,(d e |
  fis16 e d e fis gis a gis b a gis fis | % 71a
  gis16 fis e fis gis ais b ais cis b ais gis |
  ais16 gis fis gis ais b cis b d cis b ais |
  b8 b,16 cis d8) e fis4 | b, r r | R2. | % 71b
  R2.*2 | b'2 b,4 |
  r8 e e e e e | a,4 r r | R2. | % 72a
  dis2 4 | r8 e8 8 16 16 8 8 | fis8 8 r4 r8 fis |
  e8 16 16 4. 8 | dis2.( | cis |
  bis2.) | b2 r8 b' | a e16 16 fis8 a, b(cis) | % 73a
  fis,4 r r | R2.*3 |
  r4 r r8 gis' | b8 fis d16(e) fis8 b, r | r4 r8 b b'4~ |
  b16(a g fis e8) 16 16 a8 8 | 16(gis fis gis a8) fis gis e | % 74a
  d'4 4 r8 b | e8 b gis16(a) b8 e,4 |
  R2.*3 |
  r4 r r8 gis | a e cis16(d) e8 a, r | R2. |
  R2.*2 | r4 r8 a' d a | fis16(e fis g a8) fis a fis | % 75a
  d8(fis16 e d8 fis g b | e, g16 fis e8 g a c | fis,) a16 g fis8 a d, d' |
  b8 16(a g8) b g b | e,16(d cis d e fis) g(fis) a(g) fis(e) | fis8 16 e fis8 a fis a |
  dis,16(cis b cis d e fis e g fis e d | % 76a
  e8) e r e(fis gis | a) a, r a'(b cis | d4) d,8 r r4 |
  r8 c c'8 16 16 8 8 | b2.( | a | g) | % 76b
  g2 r8 8 | fis16(g a g fis8 d e fis | g16 a b a g8 e fis g |
  a16 b cis b a8 fis g a | b16 cis d cis b8 g a b | cis16 d e d cis8 a b cis | % 77a
  d8) 16 e d8 cis b a | g16(b cis d cis8 b a g | fis16 a b cis b8 a g fis |
  e16 fis g fis e8 d cis b | a) a' r a d a16 16 | b8 a16(g) fis8 g a4 | d,2.\fermata |
}

wordsBass = \lyricmode {
  \IgDPc \igDPc \cssigDPc
  \igDPc \cssc \cssigDPc % 67
  \igDPc
  \amp % 69
  \CssigDPc \amc \amc
  \amc \amc % 71
  \cssc \amc \igDPc \igDPc
  \igDPc \cssigDPc % 73
  \DPc \cssc \cssc
  \cssigDPc \amc \cssigDPc % 75
  \amc \amc \amc \igDPc \igDPc
  \amc \igDPc \ame % 77
}

wordsBassMidi = \lyricmode {
  \MIgDPc \MigDPc \McssigDPc
  \MigDPc \Mcssc \McssigDPc % 67
  \MigDPc
  \Mamp % 69
  \MCssigDPc \Mamc \Mamc
  \Mamc \Mamc % 71
  \Mcssc \Mamc \MigDPc \MigDPc
  \MigDPc \McssigDPc % 73
  \MDPc \Mcssc \Mcssc
  \McssigDPc \Mamc \McssigDPc % 75
  \Mamc \Mamc \Mamc \MigDPc \MigDPc
  \Mamc \MigDPc \Mame % 77
}

pianoRHone = \relative {
  \global \ov
  <fis d'>8 d'16 e fis g a b cis e d cis |
  d8 <a d fis> <d fis a> <fis a d> \vo <d fis a> <e g>16 fis |
  \ov <a, e' g>16 fis' e d cis b a gis a b cis d |
  cis8 <a e' g> [ <e' g cis> <g cis e> ] <a, cis e g> <a d fis>16 <cis e> | % 66b
  <a d fis>8 [ 8 <d fis a> ] \vo d16 e fis g a fis |
  \ov <d fis d'>8 [ <fis, b d> <b d fis> ] \vo b16 cis d e fis d |
  \ov <a d a'>8 [ <d, fis a> <fis a d> ] \vo b16 cis d e fis d |
  \ov <b d e>8 [ <e, b'> <e b' d> ] \vo gis16 a b cis d b | % 66c
  \ov <e, a cis>16 gis a b cis d e fis gis b a gis |
  a8 <a, cis> [ <a cis e> <cis e a> ] <a cis e> <b d>16 <a cis> |
  <e b' d>8 e' [ e e e e ] | % 67a
  e8 <gis, b d> [ <b d gis> <d gis b> ] <gis, b d> <a cis>16 <gis b> |
  <a cis>8 <e a cis> <a cis e> \vo a16 b cis d e cis |
  \ov <a cis fis a>8 <cis, fis a> [ <fis a cis> ] \vo fis16 gis a b cis a |
  \ov <e a e'>8 [ <e a cis> <a cis e> ] fis16 gis \vo a b cis a | % 67b
  \ov <fis a b>8 <dis fis b> [ <b d fis> ] \vo d16 e fis gis a fis |
  \ov <b, e gis>8 <b' gis'>4(<a fis'>16 <gis e'>) <a fis'>8.(<b gis'>32 <cis a'>) |
  <b cis gis'>2. |
  r8 <fis a>16(<gis b>32 <a cis>) q8 <fis a>16(<gis b>32 <a cis>) q8 r | % 67c
  r8 \vo cis16(d32 e) 8 cis16(d32 e) \ov <g, e'>8 <fis d>16 <e cis'> |
  <fis d'>8 d16 e fis(gis a gis) b(a gis fis) |
  gis16(fis) e(fis) gis(a b a) cis(b a gis) |
  a16(gis) fis(gis) a(b cis b) d(cis b a) | % 68a
  b16(a) gis(a) b(cis d cis) e(d cis b) |
  <a cis>16(<gis b> <a cis> <b d>) <cis e>8 <a' cis>16 e <e a> cis <cis e> a |
  <a cis>16(<g b> <a cis> <b d>) <cis e>8 <cis' e>16 a <a cis> e <e a> cis |
  <dis fis>16(<cis e> <dis fis> <e gis>) <fis a>8 <a c>16 fis <fis a> dis <dis fis> a | % 68b
  <c a'>16(<b gis'> <c a'> <d b'>) <e c'>8 <a c>16 e <e a> cis <cis e> a |
  <a fis'>16(<gis e'> <a fis'> <b gis'>) <c a'>8 <a' c>16 fis <fis a> a, <a b> gis |
  <gis e'>16(<fis dis'> <gis e'> <a fis'>) <b gis'>8 <b' e>16 gis <gis b> e <e gis> b |
  a8 <e' a cis>16 <gis b> <e a cis>8 <a, cis e a>8 8 8 | % 68c
  <a cis fis a>8 <d b'>16 <cis a'> <d b'>8 <gis, b d> <gis b d e> <gis bis fis'> |
  <gis b e>8 <cis a'>16 <b gis'> <cis a>8 <fis, a> <fis a cis> <fis a e'> |
  <fis a d>8 <d' fis cis>16(cis'32 d) <d, fis d'>8 <d fis b>16(cis'32 d) <d, fis d'>8 <d fis b>16(cis'32 d) |
  <e, gis b d>16 e' d cis s8 \vo d8 cis b | % 69a
  \ov <cis, a'>16 <b gis'> <cis a'> <d b'> <e cis'>8 <a, cis fis a> <a b d e> <b d e gis> |
  <a cis e a>4 r8 \vo e4.~ | 8 r r a4.~ |
  \ov <cis, fis a>4 r8 \vo a'4. | b4 r8 g4.~ | % 69b
  4 r8 a4.~ | 4 r8 a d a | fis4 r8 a16 gis fis8 a |
  d,8 g r g4. | fis4 r8 a b d | gis,4 r8 b e, d' | cis4 r8 8 d4~ |
  d4 r8 b a4~ | 4 r8 d a' d, | cis4 r8 8 e cis | a4 r8 cis d fis | % 70a
  b,4 r8 d e g | cis,4 r8 e a, <e' g> | <d fis>4 \ov r <d, fis a> | <d a' d> r <fis a d> |
  <fis a d fis>4 r <d g b d> | <e g b d> r <e a c> | <d a' c> r \vo a'8 b16 c | b4 r8 e~16 d cis b |
  <cis, e ais>4 r8 \vo fis'4 e16 d | \ov <e, b' d e>4. \vo e'8 4 | <cis e>8 ais16 b cis d e d <ais fis'> e' d cis | % 71a
  d16 cis d e fis8 b, \ov <cis, e fis ais>4 | % 71b
  <b d fis b>8 <d' fis>4(<cis e>16 <b d>) <cis e>8.(<d fis>32 <e g>) |
  <d fis>8 <d b'>16 fis <b, fis'> d <fis, d'> b <d, fis b> <e ais cis> q <fis b d> |
  <e fis cis'>8 \vo cis'4(b16 ais) b8.(cis32 d) | % 71c
  \ov <fis, cis'>8 <e' cis'>16 [ ais ] <cis, ais'> e <ais, e'> cis <ais cis> <b d> q <cis e> |
  <b d>8 16(<cis e>32 <d fis>) q8 <b d>16(<cis e>32 <d fis>) q8 <cis e>16 <b d> |
  <b gis'>8 <e, gis d'>16 [ b' ] <d, e b'> gis <b, d gis> e <gis, b e>16 q q q | % 72a
  <a cis e>8 <e' a cis> [ <a cis e> ] \vo a16 b cis d e cis |
  \ov <a cis a'>8 <cis, fis a> [ <fis a cis> ] \vo fis16 gis a b cis a |
  <fis a fis'>8 <b, fis'> [ <dis fis a> ] \vo gis16 a b cis d b | % 72b
  gis4 16 fis eis dis gis a b gis |
  \ov <fis' a>16 <e gis> <fis a> <gis b> <a cis> fis <a, fis'> cis <fis, cis'> a a fis |
  <fis' a>16 <e gis> <fis a> <gis b> <a cis> fis <a, fis'> cis <fis, cis'> a a fis | % 72c
  <bis fis' a>16 <e gis> <fis a> <e gis> <fis a> fis <a, fis'> dis <fis, dis'> bis bis fis |
  <cis' fis a>16 <e gis> <fis a> <e gis> <fis a> fis <a, fis'> cis <fis, cis'> a a fis |
  <dis' fis a>16 <e gis> <fis a> <e gis> <fis a> fis <a, dis> fis <dis' fis> a <fis' gis> dis | % 73a
  <eis gis cis>16 <fis d'> <eis gis cis> <fis d'> <eis gis cis> gis <cis, gis'> eis <cis eis> gis' <cis, eis gis> a' |
  <fis a cis>16 <b d> <gis cis> d' <a cis> fis fis d' <fis, d'> gis <eis gis> cis' |
  <fis, a cis>16 <b d> <a cis> <gis b> <fis a>8 \vo a, [ cis a ] | % 73b
  fis8 a16 gis fis8 a b d | gis,8 b16 a gis8 b cis e |
  ais,8 cis16 b ais8 cis fis, fis' |
  d8\trill cis16 d \ov b8 fis <d b'> fis | % 73c
  \vo b16 ais b cis d cis b cis d cis b cis |
  d16 cis b cis d(e fis e) g(fis e d) |
  e16(d) cis(d) e(fis g fis) a(g fis e) | % 74a
  <dis fis>16(e) d(e) fis(gis a gis) b(a gis fis) |
  e8 b gis16 fis e fis gis fis fis a |
  b8 b e8 16 dis e4~ |
  e16 d cis d e e d e e4~ | <cis e>16 a d e fis g e fis d4~ | % 74b
  d8 e4 e8~8 a16 gis |
  a16 fis d e cis8 e a e | % 74c
  cis16 b cis d e8 cis e cis |
  a8 cis16 b a8 cis d fis |
  b,8 d16 cis b8 d e g | cis, e16 d cis8 e a, g' | % 75a
  fis8\trill e16 fis d8 a fis16 g a8 | a a d a fis16 g a8~ |
  a8 d16 cis d8 c b4~ | 8 e16 dis e8 d c4~ | % 75b
  \ov <a c>16 <g b> <fis a> <g b> \vo s8 d'4 8~ |
  d8 <d g>~g16 fis e d e d cis b | % 75c
  cis2 8 e | cis8 fis~16 e d cis d cis b a |
  b2 4 | 8 e4 d16 e d cis b d | % 76a
  cis16 b cis d e d e fis g fis e g |
  \ov <a, d fis>16(<cis e> <d fis> <e g>) <fis a>8 <d fis>16 [ a ] <a d> fis <fis a> d |
  <d' fis>16 <cis e> <d fis> <e g> <fis a>8 <d fis>16 a <a d> fis <fis a> d | % 76b
  <d' gis b>16(<fis a> <gis b> <a cis>) <b d>8 <d, f>16 b <b d> gis <gis b> d |
  <d' f>16(<cis e> <d f> <e g>) <f a>8 <d f>16 a <a d> f <f a> d |
  <b' d>16(<a cis> <b d> <cis e>) <d f>8 16 b <f b> d <d e> cis |
  <a' cis>16(<gis b> <a cis> <b d>) <cis e>8 <a e'>16 cis <e, cis'> a <cis, a'> e | % 76c
  \vo <d a' d>16 e fis g a(b c b) d(c b a) |
  b16 a g a b(cis d cis) e(d cis b) |
  cis16 b a b cis(d e d) fis(e d cis) | % 77a
  d16 cis b cis d(e fis e) g(fis e d) |
  e16 d cis d e(fis g fis) a(g fis e) |
  fis8 <fis a>16 <e g> fis e d e fis g a fis | % 77b
  b16 a <e g> <d fis> e fis e d e fis g e |
  a16 g <d fis> <cis e> d e d cis d e fis d |
  g8 b16 a g8 16 fis e8 16 d | % 77c
  \ov <cis e g>16 a' g fis \vo s8 a16 g \tuplet 3/2 8 {fis [ g fis ] e fis e} |
  d16 e fis g a g b a g fis e fis | \ov <fis, a d>2.\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s2. | s2 a'16 b cis d | s2. |
  s2. | s4. a8 d d | s4. fis,8 b b | s4. a8 a a |
  s4. e8 8 8 | s2.*2 |
  s2.*2 | s4. e8 a a | s4. cis,8 fis fis | % 67a
  s2 e8 e | s4. b8 8 8 | s2.*2 |
  s2. | s8 g' g g s4 | s2.*2 |
  s2.*12 | % 68
  s4 b'16 a gis fis e fis gis e | s2. | % 69a
  s4. <gis,, b>8 <a cis> <gis b> | <a cis> r r cis e cis~ |
  \once\hideNotes cis4 r8 <cis e> d~<d fis> | <d g>4 r8 d e b | % 69b
  cis4 r8 cis16 d e8~<cis e> | fis4 r8 a8~16 g fis e | d4 r8 d4. |
  d4 r8 d8 cis e | a,4 r8 s <d fis>4 | d4 r8 s e4~ | 4 r8 <fis a>4. | % 69c
  <e g>4 r8 e8~8~<cis e> | <d fis>4 r8 <fis a> <a e'> <gis b> | % 70a
  a4 r8 <e a>4.~ | e4 r8 a4.~ |
  a8 g r a g~ <g b>~ | g4 r8 g a4~ | 4 s2 | s2. | % 70b
  s2.*2 | s2 <d, fis>4 | <d g> r8 <g b>4. |
  s4. <<{\vf cis8 d ais} \new Voice {\vt fis4.}>> | % 71a
  s4. d'16(cis) e(d cis b) | fis2 4 |
  fis4. <d g>8 s4 | s2.*2 | % 71b
  s8 fis [ 8 8 8 8 ] | s2.*2 |
  s2. | s4. e8 e e | s4. cis8 8 8 | % 72a
  s4. fis8 8 8 | r8 cis8 8 8 8 8 | s2. |
  s2.*3 |
  s2.*3 | % 73a
  s4. <cis fis>4 8 | <a cis>4. fis'16 e fis8 d | % 73b
  <b d>4. gis'16 fis gis8 e | <cis e>4. r8 fis4 |
  fis4 s2 | d4 fis8 d fis4 | fis4 b4~16 d cis b | % 73c
  cis16 b ais b cis4 4 | b4. <b d>8 8 <b e> | % 74a
  <gis b>8 fis16 gis e8 b <d e>4 | q8 e~8 b' gis16 a b8~ |
                                % 74b
  b8 <e, gis>16 <fis a> <gis b>4
  <<{\vt cis16 b a gis | fis}
    \new Voice {\vf \once\hideNotes cis'4^~ | \once\hideNotes cis16}>>
  \vt a16 fis gis a b cis b d cis b a |
  gis16 cis b cis d cis b a b cis a b |
  cis8 b16 cis a8 [ 8 ] <<{\vf a b} \new Voice {\vt cis16 d s8}>> | % 74c
  a4. <e a>8 <a cis> <e a> | fis4. g16 [ a ] fis8 a~ |
  a8 d, g a g4~ | % 75a
  4. a8 8 <<{\vf a8} \new  Voice {\vt d16 cis}>> \vt |
  d8 [ a d ] <cis, e> d cis | d16 cis d e fis8 d d d |
  fis8 d16 e fis8 a b16 a g fis | g8 e16 fis g8 b c16 b a g | % 75b
  s4 <a cis>16 b a g fis a g fis |
  g8 16 a b4 8 g | <g b> b16 a g8 b <g a>4 | a16 g fis g a4. fis8 | % 75c
  <fis a>8 a16 g fis8 a b fis | g16 fis e fis g a b cis a8 e | % 76a
  <e a>8 a16 b cis8 cis d a | s2. |
  s2.*4 | % 76b
  s2. | s8 d, [ d fis g d ] | d e e g a e |
  e8 fis fis a b fis | fis g g b cis g | g a a cis d a | % 77a
  a8 a a fis a c | <b fis'> b b4 cis8 b | <a e'> a b4 8 a |
  <b d>8 8 8 b b b | s4 e16 d cis b a8 g | fis d' d d <a d> <g a cis> | s2. |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  d,4 d''8 8 8 8 | d d,16 [ d ] d,8 d' d, d' | <d, d'> a''8 [ 8 8 8 8 ] |
  a8 a,16 16 a,8 a' a, a' | <d, d'> d''16 [ a ] a fis fis d d fis fis d | % 66b
  <b fis' b>8 b'16 fis fis d d b b d d b |
  <fis d' fis>8 fis'16 d d a a fis fis a a fis |
  gis8 gis'16 e e b b gis gis b b gis | % 66c
  a4 a''8 8 8 8 | a <a,, a'> [ <a, a'> <a' a'> <a, a'> <a' a'> ] |
  <gis gis'>8 \clef treble b''16( [ a ] ) gis(fis) e(dis) e(fis) gis(a) | % 67a
  gis8 \clef bass <e,, e'>8 [ <e, e'> <e' e'> <e, e'> <e' e'> ] |
  <a, a'>8 a''16 [ e ] e cis cis a a cis cis a |
  <fis cis' fis>8 fis'16 cis cis a a fis fis a a fis |
  <cis a' cis>8 cis'16 a a e e cis cis e e cis | % 67b
  dis8 dis'16 b b fis fis d d fis fis d |
  e8 e'' [ e e e e ] |cis8 eis, [ eis, eis' eis, eis' ] |
  fis,8 cis'' [ 8 8 8 8 ] | a a [ <a cis> <a e'> <a cis> a ] | % 67c
  d,8 <d, d'>16 [ <cis cis'> ] <d d'>8 <b b'> <cis cis'> <d d'> |
  <e, e'>8 <e' e'>16 <d d'> <e e'>8 <cis cis'> <d d'> <e e'> |
  <fis, fis'>8 <fis' fis'>16 <e e'> <fis fis'>8 <d d'> <e e'> <fis fis'> | % 68a
  <gis, gis'>8 <gis' gis'>16 <fis fis'> <gis gis'>8 <e e'> <fis fis'> <gis gis'> |
  <a a'>8 <a, a'> q q q q | <g' g'> <g, g'> q q q q |
  <fis' fis'>8 <fis, fis'> q q q q | <e' e'> <e, e'> q q q q | % 68b
  <dis' dis'>8 <dis, dis'> q q q q | <d' d'> <d, d'> q q q q |
  <cis cis'>8 <a'' a'>16 [ <b b'> ] <a a'>8 <gis gis'> <fis fis'> <e e'> | % 68c
  <d d'>8 <gis gis'>16 <a a'> <gis gis'>8 <fis fis'> <e e'> <d d'> |
  <cis cis'>8 <fis fis'>16 <gis gis'> <fis fis'>8 <e e'> <d d'> <cis cis'> |
  <b b'>16 <cis cis'> <d d'> <cis cis'> <b b'>8 <a a'> <gis gis'> <fis fis'> |
  <e e'>8 <fis fis'> <gis gis'> <e e'> <a a'> <e' e'> | % 69a
  <fis fis'>8 <e e'>16 <d d'> <cis cis'>8 <d d'> <e e'> <e, e'> |
  <a' a'>16 e' fis gis a8 e cis e | a, a' r a16 b cis8 a |
  fis8 fis, r a'16 g fis8 d | g8 g, r b'16 a g8 e | a a, r a'16 b cis8 a | % 69b
  d8 a16 g fis g a g fis e d cis | d8 d, r fis'16 e d8 fis |
  b,8 e r e a a, | d4 r b | e r gis | a8 a, r fis' b, d | % 69c
  e8 e, r d' cis a | d d, r16 d' cis b cis8 e | % 70a
  a,8 a' r a, a' g | fis fis, r a d b |
  g8 g' r fis, e e' | a, a' r b, cis a | d8 d, r <a a'> <d d'> <a a'> | % 70b
  <fis fis'> <fis' fis'> r <fis, fis'> <a a'> <fis fis'> |
  <d d'>8 <d' d'> r <fis, fis'> <g g'> <b b'> | % 70c
  <e, e'>8 <e' e'> r <g, g'> <a a'> <c c'> |
  <fis, fis'>8 <fis' fis'> r <a, a'> <d, d'> <d' d'> |
  <b b'> <a a'>16 <b b'> <g g'>8 <g' g'> <cis, cis'> e |
  fis16 e d e fis(gis) a(gis) b(a gis fis) | % 71a
  gis16 fis e fis gis(ais) b(ais) cis(b ais gis) |
  ais16 gis fis gis ais(b) cis(b) d(cis b ais) |
  b8 <b, b'>16 <cis cis'> <d d'>8 <e e'> <fis fis'> <fis, fis'> | % 71b
  <b b'>8 b''-.( [ b-. b-. b-. b-. ] ) |
  b8 <b, d> <b fis'> <b b'> <<{\vo fis' e16 d} \new Voice {\vt b8 b}>> \ov |
  <ais e'>8 e''4(d16 cis) d8.(cis32 d) | % 71c
  cis8 fis, [ <fis ais> <fis e'> ] <<{\vo e'8 d16 cis} \new Voice {\vt fis,8 8}>> \ov |
  <b d>4 r r |
  r8 <e,, e'> <e, e'> <e' e'> <e, e'> <e' e'> | % 72a
  <a, a'>8 a''16 [ e ] e cis cis a a cis cis a |
  <fis cis' fis>8 fis'16 cis cis a a fis fis a a fis |
  <dis b' dis>8 dis'16 b b fis fis dis dis fis fis dis | % 72b
  <eis cis'>8 eis'16 cis cis gis gis eis eis gis gis eis |
  fis8 <fis fis'> q q q q |
  <e, e'>8 <e' e'> q q q q | % 72c
  <dis, dis'>8 <dis' dis'> q q q q |
  <cis, cis'>8 <cis' cis'> q q q q |
  <bis, bis'>8 <bis' bis'> q q q q | % 73a
  <b b'> <b' b'> q q q q |
  <a a'>8 <eis eis'> <fis fis'> <a, a'> <b b'> <cis cis'> |
  <fis, fis'>8 <fis' fis'> r fis'16 gis a8 fis | % 73b
  d8 d, r d'16 cis d8 b | e e, r e'16 d e8 cis |
  fis8 fis, r <fis' ais>16 <gis b> <ais cis>8 <fis ais> |
  b8 b, r <d d'>16 <cis cis'> <b b'>8 <ais ais'> | % 73c
  <b b'>8 <fis fis'> <d d'>16 <e e'> <fis fis'>8 b <d, d'>16 <fis fis'> |
  b8 <b, b'> r <b' b'> q q |
  q8 <b, b'> r <b' b'> <a a'> q | % 74a
  q8 <a, a'> r <fis' fis'> <gis gis'> <e e'> |
  d'16 d, d'8~16 e d cis b cis b a |
  gis16 gis, gis'8~16 a gis fis e fis gis e |
  cis'8 d cis b a a' | d, e d cis b b' | e, gis16 fis e8 d cis e | % 74b
  a,8 a' r <cis, cis'>16 <b b'> <a a'>8 <gis gis'> | % 74c
  <a a'>8 <e e'> <cis cis'>16 <d d'> <e e'>8 <a, a'> cis' |
  fis,8 g fis e d d' |
  g,8 a g fis e e' | a, cis16 b a8 g fis a | % 75a
  d8 d, fis <a a'> <d a'> <a a'> |
  <fis fis'>16 e' dis g a8 <fis, fis'> <a a'> <fis fis'> |
  <d d'>8 fis16 e d8 <fis fis'> <g g'> <b b'> | % 75b
  <e, e'>8 g16 fis e8 <g g'> <a a'> <c c'> |
  <fis, fis'>8 <a a'>16 <g g'> <fis fis'>8 <a a'> <b, b'> c' |
  b16 c b a g8 <g g'>16 <fis fis'> <g g'>8  <b b'> | % 75c
  <e, e'>16 d' cis d e(fis g fis) a(g fis e) |
  fis8 fis, r <fis fis'>16 <e e'> <fis fis'>8 <a a'> |
  <dis, dis'>16 cis' b cis d(e fis e) g(fis e d) | % 76a
  e8 e, r <e e'> <fis fis'> <gis gis'> |
  <a a'> <a, a'> r <a' a'> <b b'> <cis cis'> |
  <d d'> <d, d'> q q q q |
  <c' c'>8 <c, c'> q q q q | <b' b'> <b, b'> q q q q | % 76b
  <a' a'> <a, a'> q q q q | <gis' gis'> <gis, gis'> q q q q |
  <g' g'>8 <g, g'> q q q q | % 76c
  <fis fis'>8 <fis' fis'>16 <e e'> <fis fis'>8 <d d'> <e e'> <fis fis'> |
  <g, g'>8 <g' g'>16 <fis fis'> <g g'>8 <e e'> <fis fis'> <g g'> |
  <a, a'>8 <a' a'>16 <g g'> <a a'>8 <fis fis'> <g g'> <a a'> | % 77a
  <b, b'>8 <b' b'>16 <a a'> <b b'>8 <g g'> <a a'> <b b'> |
  <cis, cis'>8 <cis' cis'>16 <b b'> <cis cis'>8 <a a'> <b b'> <cis cis'> |
  <d, d'>8 <d' d'>16 <e e'> <d d'>8 <cis cis'> <b b'> <a a'> | % 77b
  <g g'>8 <cis cis'>16 <d d'> <cis cis'>8 <b b'> <a a'> <g g'> |
  <fis fis'>8 <b b'>16 <cis cis'> <b b'>8 <a a'> <g g'> <fis fis'> |
  <e e'>16 <fis fis'> <g g'> <fis fis'> <e e'>8 <d d'> <cis cis'> <b b'> | % 77c
  <a a'>8 <b b'> <cis cis'> <a a'> <d d'> <a a'> |
  <b b'>8 <a a'>16 <g g'> <fis fis'>8 <g g'> <a a'> q |
  \repeat tremolo 12 {d,32 d'} |
}

pianoLHtwo = \relative {
  \global
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
    output-suffix = "single-sop1"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
    output-suffix = "single-sop2"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
    output-suffix = "singlepage-sop1"
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
    output-suffix = "singlepage-sop2"
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
    output-suffix = "midi-sop1"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopIMidi
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
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
    output-suffix = "midi-sop2"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopIIMidi
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
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
