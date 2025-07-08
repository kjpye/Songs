\version "2.25.26"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Non Nobis Domine"
  subtitle    = "from the motion picture “Henry V”"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Patrick Doyle"
  arranger    = "Arr. Graham Preskett"
%  opus        = "opus"

  poet        = "Psalm 115:1"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante (with great breath)" 4=120
  s1*60 \tempo "Rit." 4=100
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s1*2
  \mark \markup\circle\bold A     s1*2
  \textMark \markup { \box "2b" } s1*4
  \textMark \markup { \box "3a" } s1*2
  \mark \markup\circle\bold B     s1*2
  \textMark \markup { \box "3b" } s1*4
  \textMark \markup { \box "4a" } s1*2
  \mark \markup\circle\bold C     s1*2
  \textMark \markup { \box "4b" } s1*4
  \textMark \markup { \box "5a" } s1*2
  \mark \markup\circle\bold D     s1*2
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "6a" } s1*2
  \mark \markup\circle\bold E     s1
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "7a" } s1*4
  \mark \markup\circle\bold F
  \textMark \markup { \box "7b" } s1*4
  \textMark \markup { \box "8a" } s1*4
  \mark \markup\circle\bold G
  \textMark \markup { \box "8b" } s1*4
  \textMark \markup { \box "9a" } s1*4
  \textMark \markup { \box "9b" } s1*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*8 |
  s1 | s\p | s1*6 | % 3
  s1 | s2. s4\mp | s1*6 |
  s1 | s2. s4\mf | s1*6 |
  s1*6 | % 6
  s1*8 |
  s1*3 | s2. s4\f | s1*4 |
  s1*4 | s2 s\< | s s\! | s1\ff | s1 | % 9
}

soprano = \relative {
  \global
  R1*8 |
  R1 | f' | f~ | 2 g~( | % 3a
  g2. a4 | bes2) d(~ | 2. c4) | 2.(bes4) |
  bes2(g~ | 4-> f~8) r f(ees) | d4 bes'4 4 a8 g | d ees f2 ees8(d) | % 4a
  ees4 c' bes8(a) g(f) | ees4(d2) bes'8(a) | bes4 a8(bes) g4 bes | f ees8(f) d4 ees8(d) |
  ees4 ees' d8(c) bes(a) | bes2 r4 f8(ees) | d4 bes'4 4 a8 g | d ees f2 ees8(d) | % 5a
  ees4 c' bes8(a) g(f) | ees4(d2) bes'8(a) | bes4 a8(bes) g4 bes | f ees8(f) d4 ees8(d) |
  ees4 ees' d8(c) bes(a) | f'8->(ees d) c bes(a) g(f) \section \key c \major | % 6a
  e4 c' c b8 a |
  e8 f g2 f8(e) | f4 d' c8(b) a(g) | f4(e2) c'8(b) | % 6b
  c4 b8(c) a4 c | g f8(g) e4 f8(e) | f4 f' e8(d) c(b) | c2~8 r g4 | % 7a
  c2-> d4 e8(f) | g4. c,8 2 | g'4(f8 e) d4 e8(f) | g4. c,8 2 |
  e4 8 8 4 d8(c) | g'4. f8 e2 | f4 e8(d) f4 d8(f) | 4(e) r g,8(f) | % 8a
  e4 c' c b8 a | e f g2 f8(e) | f4 d' c8(b) a(g) | f4(e2) c'8(b) |
  c4 b8(c) a4 c | g' f8(g) e4 a,8(g) | f4 f' e8(d) c(b) | c2~8 r a(g) | % 9a
  f2 f' | e4(d) c(b^\markup divisi ) | <<{\vo c1~ | c} \new Voice {\vt a2(g4 f | g1) |}>>
  \bar "|."
}

Nndc   = \lyricmode { Non no -- bis do -- mi -- ne, }
N_ndc  = \lyricmode { Non __ no -- bis do -- mi -- ne, }
ndc    = \lyricmode { non do -- mi -- ne, }
nodc    = \lyricmode { no -- bis do -- mi -- ne, }
nndc   = \lyricmode { non no -- bis do -- mi -- ne, }
n_ndc  = \lyricmode { non __ no -- bis do -- mi -- ne, }
nn_dc  = \lyricmode { non no -- bis __ do -- mi -- ne, }
n_n_dc = \lyricmode { non __ no -- bis __ do -- mi -- ne, }
dc     = \lyricmode { do -- mi -- ne, }
nc     = \lyricmode { no -- mi -- ne, }
snc    = \lyricmode { sed no -- mi -- ne, }
s_nc   = \lyricmode { sed __ no -- mi -- ne, }
sntdgc = \lyricmode { sed no -- mi -- ne tu -- o da glo -- ri -- am, }
sntdgp = \lyricmode { sed no -- mi -- ne tu -- o da glo -- ri -- am. }
s_ntdgp  = \lyricmode { sed __ no -- mi -- ne tu -- o da glo -- ri -- am. }
sn_tdgp  = \lyricmode { sed no -- mi -- ne __ tu -- o da glo -- ri -- am. }
s_n_tdgp = \lyricmode { sed __ no -- mi -- ne __ tu -- o da glo -- ri -- am. }
sntd_gp = \lyricmode { sed no -- mi -- ne tu -- o da __ glo -- ri -- am. }
s_nt_dgp = \lyricmode { sed __ no -- mi -- ne tu -- o __ da __ glo -- ri -- am. }
sn_td_gp = \lyricmode { sed no -- mi -- ne __ tu -- o da __ glo -- ri -- am. }
sntdggc = \lyricmode { sed no -- mi -- ne tu -- o da glo -- ri, glo -- ri -- am }
s_nt_gp = \lyricmode { sed __ no -- mi -- ne tu -- o __ glo -- ri -- am }
tdgp    = \lyricmode { tu -- o da glo -- ri -- am. }

wordsSop = \lyricmode {
  Mm _ _ _ _ % 3
  _ \N_ndc \dc \nndc __ \s_nc \sntdgp
  \N_ndc \dc \n_ndc __ \s_nc \sntdggc __
  \N_ndc \dc \n_ndc __ \s_nc % 6
  \sntdgc __ Non, \nn_dc \n_n_dc
  \snc \s_nt_gp __ \N_ndc \dc \n_ndc __ \s_nc
  \sntdgc __ \tdgp __ % 9
}

MNndc    = \lyricmode { "Non " no "bis " do mi "ne, " }
Mndc     = \lyricmode { "non " do mi "ne, " }
Mnodc    = \lyricmode { no "bis " do mi "ne, " }
Mnndc    = \lyricmode { "non " no "bis " do mi "ne, " }
Mdc      = \lyricmode { do mi "ne, " }
Mnc      = \lyricmode { no mi "ne, " }
Msnc     = \lyricmode { "sed " no mi "ne, " }
Msntdgc  = \lyricmode { "sed " no mi "ne " tu "o " "da " glo ri "am, " }
Msntdgp  = \lyricmode { "sed " no mi "ne " tu "o " "da " glo ri "am. " }
Msntdggc = \lyricmode { "sed " no mi "ne " tu "o " "da " glo "ri, " glo ri "am " }
Msntgp   = \lyricmode { "sed " no mi "ne " tu "o " glo ri "am " }
Mtdgp    = \lyricmode { tu "o " "da " glo ri "am. " }

wordsSopMidi = \lyricmode {
  "Mm " _ _ _ _ % 3
  _ \MNndc \Mdc \Mnndc \Msnc \Msntdgp
  \MNndc \Mdc \Mnndc \Msnc \Msntdggc
  \MNndc \Mdc \Mnndc \Msnc % 6
  \Msntdgc "Non, " \Mnndc \Mnndc
  \Msnc \Msntgp \MNndc \Mdc \Mnndc \Msnc
  \Msntdgc \Mtdgp % 9
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*8 |
  s1 | s\p | s1*6 | % 3
  s1 | s2. s4\mp | s1*6 |
  s1 | s2. s4\mf | s1*6 |
  s1*6 | % 6
  s1*8 |
  s1*3 | s2. s4\f | s1*4 |
  s1*4 | s2 s\< | s s\! | s1\ff | s1 | % 9
}

alto = \relative {
  \global
  R1*8 |
  R1 | d'2.(<c ees>4) | d2(ees | d) f4(ees8 d | % 3a
  c4 ees2.) | ees4(d) f2( | g4 a8 bes g2) | f4(g8 a f2) |
  g2 ees(~ | 4-> d4~8) r d(c) | d4 d ees4 8 8 | d ees d2 b4 | % 4a
  c4 g' e c | c(d8 c d4) d | g f f8(ees) d(ees) | d4 c c8(bes) c(b) |
  c4 g' f8(ees) d(c) | ees4(d4~<d f>8) r f(ees) | d4 d ees f8 ees | d ees f2 ees8(d) % 5a
  c4 g'8(f) ees4 b8(c) | ees4(d2) bes8(c) | d4 d ees4 4 | d c c8(bes) aes4 |
  g4 f'8(g) bes(a) g(f) | <f bes>2~8 r d4 \section \key c \major | e4 4 f fis | % 6a
  g8 r g-> f e->(d) cis4 | d f d f | d(c8 d e4) gis |
  a4 g4 8(f) e(f) | e4 d4 8(c) d(cis) | d4 a' g8(f) e(d) | f4(e4~8) r g4 | % 7a
  g2 a4 a | c4. 8 a2 | c2 8(b) <a c>(<b d>) | d4(c2) 8(b) |
  c4 b8(c) a4 4 | b b c a8(g) | a4 a c8(b) a(g) | a4(g) r g8(f) | % 8a
  e4 f fis g8 f  | e d c2 bes4 | c8(d) e(g) fis4 f8(e) | d4(c d) e8(d) |
  e4 d8(e) 4 f | e' d8(e) c4 f,8(e) | d4 a' gis gis | a(d, cis) cis | % 9a
  d2 a' | g a4(g) | <g c>1~ | q |
}

wordsAlto = \lyricmode {
  Mm _ _ _ _ _ % 3
  _ _ \N_ndc \dc \nndc __ \snc __ \s_n_tdgp __
  \N_ndc \dc \n_ndc __ \s_nc \sntd_gp __
  \N_ndc \dc \n_n_dc __ \s_nc \sn_td_gp __ % 6
  Non, \nndc \ndc __ \s_nc
  \sntdgp __ \N_ndc \dc \nn_dc __ \s_nc
  \sntdgc __ \tdgp __
}

wordsAltoMidi = \lyricmode {
  "Mm " _ _ _ _ _ % 3
  _ _ \MNndc \Mdc \Mnndc \Msnc \Msntdgp
  \MNndc \Mdc \Mnndc \Msnc \Msntdgp
  \MNndc \Mdc \Mnndc \Msnc \Msntdgp % 6
  "Non, " \Mnndc \Mndc \Msnc
  \Msntdgp \MNndc \Mdc \Mnndc \Msnc
  \Msntdgc \Mtdgp
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1 | s2. s4\p | s1*6 |
  s1 | s2 s\mp | s1*6 |
  s1 | s2. s4\mp | s1*6 |
  s1 | s2. s4\mf | s1*6 |
  s1 | s2. s4\mf | s1*4 | % 6
  s1*8 |
  s1*3 | s2. s4\f | s1*4 |
  s1*4 | s2 s\< | s s\! | s1\ff | s1 | % 9
}

tenor = \relative {
  \global
  R1 | r2 r4 f8^\markup "Solo Tenor (or section)" (ees) |
  d4 bes' bes a8 g | d ees f2 ees8(d) |
  ees4 c' bes8(a) g(f) | ees4(d2) bes'8(a) | % 2b
  bes4 a8(bes) g4 bes | f ees8(f) d4 ees8(d) |
  ees4 ees' d8(c) bes(a) | bes2 r4 f8^\markup "(All)" (ees) | % 3a
  d4 bes' bes a8 g | d ees f2 ees8(d) |
  ees4 c' bes8(a) g(f) | ees4(d2) \breathe bes'8(a) | % 3b
  bes4 a8(bes) g4 bes | f ees8(f) d4 ees8(d) |
  ees4 ees' d8(c) bes(a) | bes2 r4 a | bes f g a8 a | c4 b8(a) aes4 g | % 4a
  g4 c c f, | f(bes8 a bes4) d | d d bes4 4 | a f c'8(bes) a(aes) |
  g4 ees' d8(c) bes(a) | <<{\vo bes2~8} \new Voice {\vt g4(f~8)}>> \ov r8 d'(c) | % 5a
  bes2^\markup "bring out counter-melody" c4 d8(ees) | f4. bes,8 2 |
  f'4(ees8 d) c4 d8(ees) | f4 bes,4 2 | d4 8 8 4 c8(bes) f'4. ees8 d2 | % 5b
  ees4 d8(c) ees4(c8) ees | 4(d~8 e) b4 \section \key c \major | c g c b8 a | % 6a
  c8 d e(d) e-> bes a(g) | f(g) a4 c8(b) a(g) | 4(c8 b c4) e |
  e4 d8(e) c4 a | b g d'8(c) b(bes) | a4 f' e8(d) c(b) | a4(g~8) r e'->(d) | % 7a
  e2 f4 f | g4. 8 4(f8 e) | a2 8(g) f(g) | 4. e8 2 |
  c4 b8(c) a4 f' | g f8(g) e4 f8(e) | f4 f e8(d) c(b) | c2 r4 g8(f) | % 8a
  g4 a a c8 8 | g a8 2 8(g) | <f a>(<g b>) <a c>(<b g>) a4 <g b> | <g b>4(<f a>2) <e c'>8(<gis b>) |
  <a c>4 <<{\vo b8(c)} \new Voice {\vt gis4}>> a4 <a c> | c4. 8 4 cis | d4 f e8(d) c(b) | c4(a g) a8(g) | % 9a
  <f a>2 <a f'>
  <<{\vo e'4(d) c(b) | f'2(e4 d | e1)}
    \new Voice {\vt a,2 f | c'1~ | c |}
  >>
}

wordsTenor = \lyricmode {
  \N_ndc \dc \n_ndc __ \s_nc \sntdgp
  \N_ndc \dc \n_ndc __ \s_nc \sntdgp % 3
  \Nndc \dc \nndc __ \snc \sn_tdgp __
  Non, __ \nn_dc \n_n_dc \snc \s_nt_gp __
  \Nndc \dc __ \dc __ \nodc __ \snc % 6
  \sn_tdgp __ Non, __ \nndc __ \nn_dc
  \nc \sntdgc \N_ndc \dc \n_n_dc __ \s_nc
  \sntdgc __ \tdgp __ % 9
}

wordsTenorMidi = \lyricmode {
  \MNndc \Mdc \Mnndc \Msnc \Msntdgp
  \MNndc \Mdc \Mnndc \Msnc \Msntdgp % 3
  \MNndc \Mdc \Mnndc \Msnc \Msntdgp
  "Non, " \Mnndc \Mnndc \Msnc \Msntgp
  \MNndc \Mdc \Mdc \Mnodc \Msnc % 6
  \Msntdgp "Non, " \Mnndc \Mnndc
  \Mnc \Msntdgc \MNndc \Mdc \Mnndc \Msnc
  \Msntdgc \Mtdgp % 9
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*8 |
  s1 | s1\p | s1*6 | % 3
  s1 | s2. s4\mp | s1*6 |
  s1 | s2. s4\mf | s1*6 |
  s1*6 | % 6
  s1*3 | s2. s4\f | s1*4 |
  s1*3 | s2. s4\f | s1*4 |
  s1*4 | s2 s\< | s s\! | s1\ff | s1 | % 9
}

bass = \relative {
  \global
  R1*8 |
  R1 | bes2(a) | <bes d>2.(<c ees>4) | c4 bes2.~ | % 3a
  bes2 4(c | bes2) \breathe bes(~ | 4 c8 d ees2) | a,4(bes8 c d2 |
  c2) f,4(g8 a | b2) r4 f | bes,4 4 c4 8 8 | d ees d4(~8 c) b4 | % 4a
  c8(d) ees4 f a, | bes2. bes'8(a) | f4 f8(f) ees4 d8(ees) | f4 a, bes c8(d) |
  e4 c f f | bes2(f8) r <f, f'>4 | <bes f'>4 4 <c g'> <c a'>8 8 | % 5a
  <d bes'>8 [ <c bes'> ] <<{\vo bes'(a g4) g |} \new Voice {\vt d4(ees) 8(d) |}>>
  \ov <c g'>4 <c c'> <<{\vo bes'8(a) g(a) | c4(b2)} \new Voice {\vt f4 f | bes,2.}>> \ov d4 | % 5b
  g4 f8(g) ees4 g | d c bes b |
  c4 d8(ees) f4 4 | bes2. g4 \section \key c \major | c,4 c d dis8 8 | % 6a
  e8 f e2 a,4 | d8(e) f4 g b, | c c->~8 d e4 |
  a4 g f e8(f) | g4 b, c d8(e) | f(e) d4 g g, | c2~8 r g'->(f) | % 7a
  e4 c' c b8 a | e f g2 f8(e) | f4 d' c8(b) a(g) f4(e2) c'8(b) |
  a4 g8(a) f4 a | e d c f8(e) | d4 a' g g, | c2 r4 g | % 8a
  c4 d dis e8 f | g f ees4(d) cis | d8(e) f(e) ees4 d | c2(b4) e, |
  a4 b c d | c4. 8 4 a | d c b e | f(bes, a) a | % 9a
  d2 <d, d'> | <f a'> <g f'> | <<{\vo c'2(b4 a | g1)} \new Voice {\vt c,1~ | c |}>>
}

wordsBass = \lyricmode {
  Mm _ _ _ _ _ _ % 3
  _ \Nndc \dc __ \nndc \s_nc \s_ntdgp __
  \Nndc \dc __ \n_ndc __ \snc \sntd_gp
  \Nndc \dc \nndc \dc % 6
  \nc \s_nt_dgp __ \N_ndc \dc \n_ndc __ \s_nc
  \sntdgp \Nndc \dc __ \nn_dc __ \snc
  \sntdgc __ \tdgp __ % 9
}

wordsBassMidi = \lyricmode {
  "Mm " _ _ _ _ _ _ % 3
  _ \MNndc \Mdc \Mnndc \Msnc \Msntdgp
  \MNndc \Mdc \Mnndc \Msnc \Msntdgp
  \MNndc \Mdc \Mnndc \Mdc % 6
  \Mnc \Msntdgp \MNndc \Mdc \Mnndc \Msnc
  \Msntdgp \MNndc \Mdc \Mnndc \Msnc
  \Msntdgc \Mtdgp % 9
}

pianoRHone = \relative {
  \global
  f'8 f'~ 2.~ | 1\laissezVibrer | R1*6 |
  R1 | f,4 f'2. | \vo f,1~ | 2 g~ | % 3a
  g2. a4 | bes2 \ov <f d'>~ | \vo d'2.(c4) | 2. bes4 |
  <g bes>2 <ees g> | 4(<d f>~8) r q(<c ees>) | % 4a
  d4 <d bes'> <ees bes'> \vo a8 g \ov | d8 ees <d f>2 \vo ees8 d |
  \ov <c ees>4 <g' c> <ees bes'>8 a <c, g'> f | <c ees>4 d8 c d4 bes'8 a | % 4b
  \vo bes4 a8 bes g4 bes | f ees8 f d4 \ov <c ees>8 <b d> |
  <c ees>4 <ees g ees'> <d f d'>8 <c ees c'> <bes d bes'> <a c a'> | % 5a
  \vo <bes bes'>2 \ov <a d f>4^-^. 8(<c ees>) |
  <bes d>4 <d bes'> <ees bes'> <f a>8 <ees g> | d8 ees f2 ees8 d |
  <c ees>4 \vo c' bes8 a g f | % 5b
  \ov <c ees>4(<bes d>8) <f' bes>8 4 <bes, bes'>8 <c a'> |
  <d bes'>4 <d a'>8 bes' \vo <ees, g>4 <ees bes'> |
  \ov <d f>4 <c ees>8 f \vo d4 ees8 d |
  \ov <g, ees'>4 \vo ees'' \ov <bes d>8 <a c> <g bes> <f a> | % 6a
  \vo f'8 ees d c bes a g f \section \key c \major |
  \ov <g, c e>4 <c e c'> <c f c'> <c fis b>8 a' |
  <c, e>8 [ <d f> ] \vo <e g> <d f> \ov <c e> <bes d> <a cis f> <g e'> | % 6b
  <a d f>4 <d a' d> <d a' c>8 <g b> <d f a> g |
  <g, d' f>4 <c e>8 <b d> <c e>4 <d gis c>8 b' |
  <e, a c>4 <d g b>8 <e c'> \vo <c a'>4 <c c'> | % 7a
  \ov <b e g>4 <g d' f>8 g' \vo <g, e'>4 \ov <b d f>8 <bes cis e> |
  <a' d f>4 <f a f'> <e g e'>8 <d f d'> <c e c'> <b d b'> |
  \vo <c c'>2~ <c e c'>8 \ov r <g g'>4 |
  <e' g c>2 \vo d'4 e8 f | \ov <g, c g'>4. c8 \vo <a c>2 | % 7b
  g'4 f8 e d4 \ov <a c e>8 <b d f> |
  \vo <g g'>4. s8 \ov <e c'>4 <e e'>8 <d d'> |
  <e c' e>4 <e b' e>8 c' q4 <f, a d>8 c' | % 8a
  \vo g'4. f8 \ov <e, c' e>4 <f a>8 <e g> |
  <f a f'>4 <f a e'>8 d' <e, c' f>8 b' <c, a' d> <g' f'> |
  \vo <a f'>4(<g e'>) \ov <g g'> <g, g'>8 <f f'> |
  <e e'>4 <c' f c'> <c fis c'> <c g' b>8 <c f a> | % 8b
  e8 <d f> <a c g'>2 \vo <bes f'>8 e |
  \ov <a, c f>8 <g b d> <a c e> <g b g'> <a c fis>4 \vo f'8 e |
  \ov <b d f>4^. \vo <a c e>^- \ov <d f a d> \vo c'8 b |
  \ov <c, e a c>4 <d gis b>8 <e c'> <c e a>4 <c f c'> | % 9a
  <g' e' g>4 <f d' f>8 <g e' g> <e c' e>4 <g, cis f>8 e' |
  <a, d f>4 <f' a f'> <e gis e'>8 d' <d, g c> b' |
  <c, a' c>4 <a d>4(<g cis>^-^.) <a a'>8 g' |
  <a, d f>2 <d f a f'> | <e g e'>4(<d f d'>) <c a' c>(<b g' b>) | % 9b
  \vo <c c'>1~ | <c e g c> |
}

pianoRHtwo = \relative {
  \global \vt
  s1*8 |
  s1*2 | d'2 ees | d f4 ees8 d | c4 ees2. | 4(d) s2 | f4 a8 bes g2 | f4 g8 a f2 | % 3
  s1*2 | s2. ees4 | s2. b4 | s1*2 | g'4 f4~8 ees d ees | d4 c~8 bes s4 |
  s1 | ees4(d) s2 | s1*2 | s4 <ees g>8 <d f> ees4 g,8 a | s1 | s2 d4 c8 bes | s2 c8 bes aes4 | % 5
  s4 f'8 g s2 | <f bes> <d f>8 c <b d>4 \section \key c \major | s1 | % 6a
  s4 c s2 | s1*2
  s2 g'8 f e f | s2 d8 c s4 | s1 | f4 e~\vo 8 \vt s4. | % 7a
  s2 <f a> | s2 g4 f8 e | <a c>2 8 <g b> s4 d'4( \vo c8) <e, c'> \vt s2 |
  s1 | <g b>4 <f b>8 f' s2 | s1 | c2 s | % 8a
  s1 | s2. a,8 g | s2. <g b>4 | s2. <d' e gis>4 |
  s1*4 | % 9a
  s1*2 | <f g a>2 <e g>4 <d f> | s1 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp | s1*7 |
  s1 | s\pp | s1*6 | % 3
  s1 | s2. s4\mp | s1*6 |
  s1 | s2. s4\mf | s1*6 |
  s1*6 | % 6
  s1*8 |
  s1*3 | s2. s4\f | s1*4 |
  s1*4 | s2. s4\< | s1 | s\ff | s | % 9
}

pianoLHone = \relative {
  \global
  R1*8 |
  R1 | r2 f | bes2.(c4) | 4(bes2.~ | 2) 4(c) | bes2 2~ | 4 c8 d ees2 | a,4 bes8 c d2 | % 3
  c2 f,4 g8 a | bes2~8 r <f a>4 | <bes, bes'> <bes f'> <c g'> <c a'> | <d c'> \vo bes'8 a aes4 g | % 4a

  g4 \ov <ees c'> <f c'> <a, f'> | \vo f' bes8 a bes4 d | % 4b
  \ov <g, d'>4 \vo d' \ov <ees, bes'> \vo bes' | \ov <f a> <a, f'> bes <c a'>8 <d aes'> |
  <ees g>4 c f f | \vo g(f) \ov f_-_. f, | <bes f'>4 4 <c g'> <c a'> | % 5a
  <d bes'>4 \vo bes'8 a g4 g |
  <c, ees>4 <c c'> \vo bes'8 a g a | \ov bes,4. bes'8 4 d, | % 5b
  g4 d8 g ees4 g | \vo a4. g8 f4 4 |
  c4 <d d'>8 <ees c'> <f ees'>4 \vo c'8 ees | % 6a
  ees4 d \ov bes8 a <g, g'>4 \section \key c \major |
  <c, c'>4 4 <d d'> <dis dis'> |
  <e e'>4 e'2 a,4 | d8 e f4 g b, | c <c, c'>4~8 <d d'> <e e'>4 | % 6b
  <a a'>4 <g g'> <d d'> <e e'>8 <f f'> | % 7a
  <g g'>4 b c d8 e | <f, f'> <e e'> <d d'>4 <g g'> g |
  <c, c'>2~8 r <g' g'>8 <f f'> |
  <e e'>4 <c' c'> q <b b'>8 <a a'> | <e e'> <f f'> <g g'>2 <f f'>8 <e e'> | % 7b
  <f f'>4 <d' d'> <c c'>8 <b b'> <a a'> <g g'> |
  <f f'>4 <e e'>2 <c' c'>8 <b b'> |
  <a a'>4 <g g'> <f f'> <a a'> | <e e'> <d d'> <c c'> <f f'>8 <e e'> | % 8a
  <d d'>4 <a' a'> <g g'>8 d'' q b | <c, c'>4 <e, e'>8 <f f'> <g g'>4 <g, g'> |
  <c c'>4 <d d'> <dis dis'> <e e'>8 <f f'> | % 8b
  < g g'>8 <f f'> <ees ees'>4(<d d'>) <cis cis'> |
  <d d'>8 <e e'> <f f'> <e e'> <ees ees'>4 <d d'> |
  s4\vo \crossStaff f'4 \ov b, e, |
  <a, a'>4 <b b'> <c c'> <d d'> | <c c'>2. <a a'>4 | % 9a
  <d d'>4 <c c'> <b b'> <e e'> | <f f'> <bes, bes'>(<a a'>-.) q-- |
  <d d'>4-. q2-> q4-> | <f a'>2 \vo g' | \ov <c,, c'>1 | q-> % 9b
}

pianoLHtwo = \relative {
  \global \vt
  s1*8 |
  s1*8 | % 3
  s1*3 | s4 d~8 c b4 | c8 d s2. | bes2. bes'8 a | s4 f8 g s4 d8 ees | s1 |
  s1 | bes2 s | s1 | s4 d ees4 8 d | s2 f4 f | s1*2 | d4 c bes b | % 5
  s2. f'4 | bes4. c8 s2 \section | s1*4 |
  s1*8 | % 7
  s1*7 | \vo <c,, c'>4. \vt f8 s2 |
  s1*5 | s2 <g f'> | s1*2 |
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

#(set-global-staff-size 18)

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
