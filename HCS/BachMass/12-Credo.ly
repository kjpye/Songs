\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№12. Credo (chorus)"
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
  \time 4/2
}

TempoTrack = {
  \tempo \markup {\with-color "red" { in 4 \rhythm { 2 } } } 2=90
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "78a" } s1*6
  \textMark \markup { \box "78b" } s1*8
  \textMark \markup { \box "78c" } s1*8
  \mark \markup\circle\bold A
  \textMark \markup { \box "79a" } s1*8
  \textMark \markup { \box "79b" } s1*8
  \mark \markup\circle\bold B
  \textMark \markup { \box "79c" } s1*8
  \textMark \markup { \box "80a" } s1*8
  \textMark \markup { \box "80b" } s1*2
  \mark \markup\circle\bold C      s1*6
  \textMark \markup { \box "80c" } s1*6
  \textMark \markup { \box "81a" } s1*2
  \mark \markup\circle\bold D      s1*4
  \textMark \markup { \box "81b" } s1*8
  \textMark \markup { \box "81c" } s1*8
}

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
}

sopranoI = \relative {
  \global
  R\breve*3 |
  R\breve*4 |
  R\breve | e'' | cis1 d | cis b |
  e1 fis2 fis,4(g) | a cis fis1 e2~ | 4 a, d2. cis8(b) cis2 | d2 1 b2 | % 79a
  a2 d, r a'4(gis) | a cis e1 e,2~ | 2 r4 e a(g) fis(g) | a(b cis a b1) |
  a2 r r a'~ | a a, r4 dis e fis | b,2 e r4 b e d | c2(a) b r |
  R\breve*2 | fis'\breve | d1 e | % 80a
  d1 cis | fis gis2 b,~ | b a4 gis fis cis' fis2~ | 4 eis cis2.(b4) cis fis |
  fis4 dis e1 d2~ | 4 4 e d cis(d e2) | a,1 r2 cis~ |
  cis2 a1 b2~ | b a1 g2~ | g cis1 d2~ | % 81a
  d2. a4 b2 cis4(dis) | e(fis g1) fis2 | r a1 g2~ | g b, e dis4(e) |
  fis2 e r d~ | 2. cis8(b a4) cis fis2~ | 4(b,) e2 a,(d~ | d cis4 b) cis1\fermata |
  \bar "|."
}

CiuDc = \lyricmode { Cre -- do in u -- num De -- um, }
ciuDc = \lyricmode { cre -- do in u -- num De -- um, }
ciuDp = \lyricmode { cre -- do in u -- num De -- um. }
c_iuDc = \lyricmode { cre -- do __ in u -- num De -- um, }
c_iuDp = \lyricmode { cre -- do __ in u -- num De -- um. }
ci_uDc = \lyricmode { cre -- do in __ u -- num De -- um, }
ci_u_Dc = \lyricmode { cre -- do in __ u -- num __ De -- um, }
c_i_u_Dc = \lyricmode { cre -- do __ in __ u -- num __ De -- um, }
c_iuc = \lyricmode { cre -- do __ in u -- num, }
iuDc  = \lyricmode { in u -- num De -- um, }
iuDp  = \lyricmode { in u -- num De -- um. }
i_uDc  = \lyricmode { in __ u -- num De -- um, }
iuc      = \lyricmode { in u -- num, }
cc    = \lyricmode { cre -- do, }

wordsSopI = \lyricmode {
  \CiuDc
  \iuDc __ \iuDc \cc \ci_uDc __ \iuDc \ciuDc \iuDc % 79
  \ciuDc \ciuDc \ciuDc __ \iuDc \ci_u_Dc __
  \iuDc \c_iuDc \c_iuDp
}

MCiuDc = \lyricmode { Cre "do " "in " u "num " De "um, " }
MciuDc = \lyricmode { cre "do " "in " u "num " De "um, " }
Mciuc = \lyricmode { cre "do " "in " u "num, " }
MciuDp = \lyricmode { cre "do " "in " u "num " De um. }
MiuDc  = \lyricmode { "in " u "num " De "um, " }
MiuDp  = \lyricmode { "in " u "num " De um. }
Miuc   = \lyricmode { "in " u "num, " }
Mcc    = \lyricmode { cre "do, " }

wordsSopIMidi = \lyricmode {
  \MCiuDc
  \MiuDc \MiuDc \Mcc \MciuDc \MiuDc \MciuDc \MiuDc % 79
  \MciuDc \MciuDc \MciuDc \MiuDc \MciuDc
  \MiuDc \MciuDc \MciuDp
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
}

sopranoII = \relative {
  \global
  R\breve*3 |
  R\breve*4 |
  R\breve*4 |
  a'\breve | fis1 g | fis e | a b2 d,4(e) | % 79a
  fis4 a d1 cis4 b | e4 e, a2.(gis8 fis gis2) | a e' fis b, | fis'1 b,2 r |
  r2 e a,2. b4 | cis2(fis) b, r | R\breve*2 |
  r1 e~ | e cis | d cis | b e | % 80a
  fis2 r4 d e g fis2 | b, r b~8(cis d4) | cis1~4 b a fis | cis'2.(gis4) a2 r4 cis |
  b2. e,4 a1 | b2 r4 gis a2. e4 | fis(d) a'2 e'1 |
  cis1 d | cis b | e fis~ | % 81a
  fis2 e2.(b4) g2 | r e' cis4 e a,2~ | a e b'4(c d2) | d r r a |
  fis2 g a1 | b2 r r a~( | a4 b) cis e, fis g a2~ | 1 a\fermata |
}

wordsSopII = \lyricmode {
  \CiuDc \i_uDc __ \iuDc \iuDc \iuDc % 79
  \ciuDc \iuDc \c_iuDc \iuDc \iuDc \ciuDc __
  \cc \ciuDc \iuDc \ciuDp
}

wordsSopIIMidi = \lyricmode {
  \MCiuDc \MiuDc \MiuDc \MiuDc \MiuDc % 79
  \MciuDc \MiuDc \MciuDc \MiuDc \MiuDc \MciuDc
  \Mcc \MciuDc \MiuDc \MciuDp
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R\breve*3 |
  R\breve*2 | a'\breve | fis1 g |
  fis e | a b~ | 4 a8(gis a b cis2) d8(cis b2~ | 4) e, a2. gis8(fis) gis2 |
  a2. g4 fis a d2~( | 4 cis) b a b2 e, | fis4(g a1) 2 | r r4 a, d1~ | % 79a
  d2 cis4(b) cis(d e2~ | 1~2 b') | cis r r fis,~ | 2 cis r g' |
  a1~4 g fis(d) | a2 r b'1~ | 1 g | a g |
  fis1 b | cis2 e, a4 b cis2 | fis, e4(d) e(d) cis2 | d4(e fis2) b,4 gis' a2~ | % 80a
  a2 g cis,4(e a2~ | 4 gis fis2.) e8(dis e4) fis | gis(cis2) b4 a(gis) fis2 | r1 r2 a~ |a2 gis2. cis4 fis,2~ | 4 b e,2 2 r | r1 g |
  e1 fis | e d | g a~ | % 81a
  a2 r r e'~( | 4 b) g2 r f4(g) | a2 cis, fis b, | r e4(fis) g2 c |
  b2.(c8 b a2.  g8 fis | g2) g, r4 a'2(g4) | fis d a'2. g4 fis2~ | 2(e4 d) e1\fermata |
}

wordsAlto = \lyricmode {
  \CiuDc __ \c_iuDc
  \iuDc \iuDc \iuDc \ciuDc \ciuDc % 79
  \iuDc \iuDc \iuDc __ \iuDc \ciuDc \ciuDc __
  \ci_uDc \i_uDc \ciuDp
}

wordsAltoMidi = \lyricmode {
  \MCiuDc \MciuDc
  \MiuDc \MiuDc \MiuDc \MciuDc \MciuDc % 79
  \MiuDc \MiuDc \MiuDc \MiuDc \MciuDc \MciuDc
  \MciuDc \MiuDc \MciuDp
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  e'\breve^\markup{\with-color "red" \bold "strong but not overblown forte"} | cis1 d | cis b |
  e1 fis2 fis,4(g) | a cis fis1 e2~ | 4 a, d2. cis8(b) cis2 | d4 a d2.(cis4) b2 |
  a\breve | 2 r4 a e'1~ | 2 2 fis1 | e2 r4 fis b, a b2 |
  a2 e'1 d2 | a b4 cis d2(e) | a, r r r4 e' | fis(g) a2 g1 | % 79a
  d2 r r1 | R\breve | r1 fis~ | 1 d |
  e1 d | cis fis | g2 b, e4 fis g2~ | g fis2. b,4 e2~ |
  e4 dis8(cis) d2 e4 b e2~( | 4 d) cis(d) e2(a,~ | a b) c fis~ | 2 b,1 a2 | % 80a
  d2. b4 e2.(fis8 g) | fis2 r4 a, gis(a) b(fis) | cis'1 2 2 | gis' eis cis(fis) |
  b,2 r r d~( | 4 b) gis2 r e' | d4 a fis'2 e1 |
  r2 a1 fis2 | r a, b8(cis d4) d(cis) | b2(e) cis fis~ | % 81a
  fis2 g4(a) g1 | e1. d2 | cis a d(g~ | 4 a) g fis e2 fis |
  b,1 cis2 d~ | d b fis'4(e) d2 | r a a a | a1 a\fermata |
}

wordsTenor = \lyricmode {
  \CiuDc \i_uDc __ \iuDc \iuDc \iuDc \iuDc
  \ciuDc \iuDc \ciuDc \iuDc \iuDc % 79
  \iuDc \ciuDc \iuDc \iuDc \ciuDc
  \ciuDc \cc \ciuDc \iuDc \cc \ciuDp
}

wordsTenorMidi = \lyricmode {
  \MCiuDc \MiuDc \MiuDc \MiuDc \MiuDc \MiuDc
  \MciuDc \MiuDc \MciuDc \MiuDc \MiuDc % 79
  \MiuDc \MciuDc \MiuDc \MiuDc \MciuDc
  \MciuDc \Mcc \MciuDc \MiuDc \Mcc \MciuDp
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  R\breve*3 |
  a\breve^\markup{\with-color "red" \bold "Roll R before beat"} | fis1 g | fis^\markup{\with-color "red" \bold less} e | a b2 d,4(e) |
  fis4 a d1 cis4 b | e e, a2.(gis8 fis gis2) | a r4 e a2 b | cis2.(b8 a e'1~ |
  e4 cis) a2 r1 | r2 d1^\markup "second beat" a2~ | 4 g fis d a'1~ | 4(g fis e) d2 r | % 79a
  r2 r4 b' e,2 a4(b) | cis2(b4 a e'1) | a,2 1 d,2 | r fis b4 a b2 |
  e,2 a1 d,2 | r fis1 b,2 | r e4(fis) g a b2 | a r r1 |
  r2 b1 a4 gis | e'2 a,4(b) cis(d e2) | a, r fis' fis,~ | 4 cis' d1 cis2~ | % 80a
  cis4 fis, b1 a8(b cis4) | fis,2(b) e,1 | r4 eis fis gis a(b cis2~ | 2 cis,) fis1 |
  R\breve | r1 a~ | \breve~ |
  a1 fis~ | 1 g~ | g fis~ | % 81a
  fis1 e~ | e a~ | a b~ | b~4 e, a2~ |
  a2 g2. cis,4 fis2~ | 2 e2. a,4 d2~ | d cis d1 | a\breve\fermata |
}

wordsBass = \lyricmode {
  \CiuDc \iuDc \iuDc \iuDc
  \c_iuDc \iuDc \ciuDc \cc \ci_uDc % 79
  \ciuDc \c_iuc __ \iuDc \iuDc \c_i_u_Dc __
  \iuc \iuc \iuDp
}

wordsBassMidi = \lyricmode {
  \MCiuDc \MiuDc \MiuDc \MiuDc
  \MciuDc \MiuDc \MciuDc \Mcc \MciuDc % 79
  \MciuDc \Mciuc \MiuDc \MiuDc \MciuDc
  \Miuc \Miuc \MiuDp
}

pianoRHone = \relative {
  \global \ov
  \clef bass r4 cis' b a gis fis e gis | \vo cis1 d | cis b |
  <<{\vo e1 fis2 fis,4 g} \new Voice {\vth a4 cis d e s1}>> \vo | % 78b
  a,4 cis fis1 s2 \clef treble | a\breve | fis1 g |
  fis1 e | <e e'>\breve s1 a2 b | b a a4 gis8 fis gis2 | % 78c
  <a e'>1 fis' | 2 1 e2 | a\breve | s1 g | % 79a
  fis1 e | a b~ | 4 a8 gis a b cis4~4 d8 cis b2~ | b a~a g~ |
  g4 b a g fis g a2 | 4 b a2~4 b8 c b4 a | g a b2 e,1 | 2 fis g2. fis8 g |
  c4 a fis2 e2. d4 | cis d e1 a4 g | fis2 d r fis | 2. g8 fis e1 | % 80a
  a,4 d2 g e4 cis2 | b'\breve | <cis, gis'>1 <a' cis> | <gis cis> <fis a> |
  b1 <a cis>2. b8 a | <gis d'>2 <gis cis> cis1 | d2. cis8 b a4 g8 fis e d cis b |
  a4 e' a2~<fis a>8 g fis e d4 r | cis2 fis~2 d | % 81a
  <<{\vo r e~ <e fis>~ fis~ | <d fis>2} \new Voice {\vth s1. d4 cis | s2}>>
  d2 b' <g b> | g1 a | g fis | b cis2. a4 |
  b2. e,4 a2. d,4 | g1 fis4 a8 g fis4 g | a g8 fis e2~4 fis8 e d4 a | fis a8 b cis d <e a> <f gis> \ov <cis e a>1\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s1*2 | a1~4 gis a b | e,2 a~a gis |
  a1~2 s | fis1 g2 e'( | 4) a, d2. cis8 b e2 | d4 a d2. cis4 b2 |
  a4 a d1 cis4 d | % 78c
  <<{\vt a'1~4 gis8 fis gis2} \new Voice {\vf s1 b}>> |
  <e, a cis>1 <fis d'> | <e cis'>1 <e b'> |
  e2. g4 <fis a>2 fis4 g | a cis fis,2 g1 | % 79a
  <<{\vf a1~1} \new Voice {\vt e'4 \vo a, d2~4 cis8 b cis2}>> \vt |
  <a d fis>1 <b d>2.~<b e>4 |
  a2 d~~d <a cis>4 <gis b> | % 79b
  <<{\vt a4 cis} \new Voice {\vf e2}>> \vt e2 1 | cis d | cis b |
  e1 fis | e2 a4 g fis1~ | 2 e4 dis e2. b4 | e2 d~4 dis e e | % 79c
  a4 a,2 b8 c b4 gis a b | e,2 a a e' | a, r r r4 fis | fis' e d cis b2 cis4 b | % 80a
  a2 g4 b cis g a2 | <b fis'>1~<b gis'>2 b | b a4 gis cis cis fis2 | 4 eis cis2~4 b cis2 |
  <b fis'>4 dis e2~2 d | d e4 d <cis a'> d <cis e>2 | fis4 a8 g a2 4 e a,2 |
  a8 gis a b cis d e cis a2 b | b a~a <g b> | q~<g cis> <a cis>~a~ | % 81a
  a2 g4 fis r b cis dis | e f e2 cis4 e <a, f'>2~ | % 81b
  q <a e'> <<{\vf e'2} \new Voice {\vt b4 c}>> \vt d2 |
  d2 g <e g> <dis a'>4 <e fis> |
  < fis a>4 dis e c8 b a4 g' fis a, | b cis d e a,2. e'4 | % 81c
  d4 b cis2 a~8 g fis e | d4 fis a b s1
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global \ov
  r4 <a, a'> <gis gis'> <fis fis'> <e e'> <d d'> <cis cis'> <b b'> |
  <a a'>4 <d d'> <a a'> <g g'> <fis fis'> <e e'> <fis fis'> <gis gis'> |
  <a a'>4 <b b'> <cis cis'> <d d'> <e e'> <fis fis'> <e e'> <d d'> |
  <cis cis'> <a a'> <b b'> <cis cis'> <d d'> <cis cis'> <d d'> <e e'> | % 78b
  <fis fis'>4 <e e'> <d d'> <cis cis'> <b b'> <a a'> <b b'> <cis cis'> |
  <d d'>4 <e e'> <fis fis'> <g g'> <a a'> <g g'> <fis fis'> <e e'> |
  <d d'>4 <e e'> <d d'> <cis cis'> <b b'> <a a'> <b b'> <cis cis'> |
  <d d'>4 <e e'> <fis fis'> <g g'> <a a'> <b b'> cis d | % 78c
  <cis cis'>4 <a a'> <gis gis'> <fis fis'> <e e'> <d d'> <cis cis'> <b b'> |
  <a a'>4 <b b'> <a a'> <gis gis'> <fis fis'> <e e'> <fis fis'> <gis gis'> |
  <a a'>4 <b b'> <cis cis'> <d d'> <e e'> <fis fis'> <e e'> <d d'> |
  <cis cis'>4 <a a'> <b b'> <cis cis'> <d d'> <cis cis'> <d d'> <e e'> | % 79a
  <fis fis'> <e e'> <d d'> <cis cis'> <b b'> <a a'> <b b'> <cis cis'> |
  <d d'>4 <e e'> <fis fis'> <g g'> <a a'> <g g'> <fis fis'> <e e'> |
  <d d'> <e e'> <d d'> <cis cis'> <b b'> <a a'> <b b'> <cis cis'> |
  <d d'>4 <e e'> <fis fis'> <gis gis'> <a a'> <b b'> <cis cis'> <d d'> | % 79b
  <cis cis'> <a a'> <gis gis'> <fis fis'> <e e'> <d d'> <cis cis'> <b b'> |
  <a a'> <b b'> <a a'> <g g'> <fis fis'> <e e'> <d d'> <e e'> |
  <fis fis'>4 <g g'> <a a'> <fis fis'> <g g'> <fis' fis'> <e e'> <d d'> |
  <cis cis'>4 <a a'> <b b'> <cis cis'> <d d'> <e e'> <fis fis'> <g g'> | % 79c
  <a a'>4 <g g'> <fis fis'> <e e'> <dis dis'> <b b'> <cis cis'> <dis dis'> |
  <e e'>4 <fis fis'> <g g'> <fis fis'> <e e'> <d d'> <c c'> <b b'> |
  <c c'>4 <a a'> <d d'> <c c'> <b b'> <g g'> <c c'> <b b'> |
  <a a'>4 <fis fis'> <b b'> <a a'> <gis gis'> <e e'> <fis fis'> <gis gis'> | % 80a
  <a a'>4 <b b'> <cis cis'> <b b'> <a a'> <g g'> <fis fis'> <e e'> |
  <d d'>4 <d' d'> <cis cis'> <b b'> <ais ais'> <fis fis'> <gis gis'> <ais ais'> |
  <b b'>4 <cis cis'> <b b'> <a a'> <gis gis'> <e e'> <a a'> <g g'> |
  <fis fis'>4 <d d'> <g g'> <fis fis'> <e e'> <cis cis'> <fis fis'> <e e'> | % 80b
  <dis dis'>4 <b' b'> <cis cis'> <dis dis'> <e e'> <fis fis'> <gis gis'> <fis fis'> |
  <eis eis'>4 <cis cis'> <dis dis'> <eis eis'> <fis fis'> <gis gis'> <a a'> <b b'> |
  <cis cis'>4 <cis, cis'> <dis dis'> <eis eis'> <fis fis'> <gis gis'> <fis fis'> <e e'> |
  <dis dis'>4 <b b'> <e e'> <d d'> <cis cis'> <a a'> <d d'> <cis cis'> | % 80c
  <b b'>4 <gis gis'> <cis cis'> <b b'> <a a'> <b b'> <a a'> <g g'> |
  <fis fis'>4 <fis' fis'> <e e'> <d d'> <cis cis'> <a a'> <cis cis'> <e e'> |
  <a a'>4 <g g'> <fis fis'> <e e'> <d d'> <cis cis'> <d d'> <e e'> | % 81a
  <fis fis'>4 <g g'> <a a'> <fis fis'> <b b'> b q <a a'> |
  <g g'>4 g fis e a g fis a |
  <d, d'>4 <c c'> <b b'> <d d'> g <g g'> <a a'> <b b'> | % 81b
  <c c'>4 <d d'> <c c'> <b b'> <a a'> <gis gis'> <a a'> <b b'> |
  <cis cis'>4 <a a'> <b b'> <cis cis'> <d d'> <c c'> <b b'> <a a'> |
  <g g'>4 <fis fis'> <e e'> <dis dis'> <e e'> <g g'> <fis fis'> <e e'> |
  <dis dis'>4 <b b'> <e e'> <d d'> <cis cis'> <a a'> <d d'> <cis cis'> | % 81c
  <b b'>4 <a a'> <b b'> <cis cis'> <d d'> <cis cis'> <d d'> <e e'> |
  <fis fis'>4 <g g'> <a a'> <g g'> <fis fis'> <e e'> <fis fis'> <d d'> |
  <a' a'>1 <a, a'>\fermata |
}

pianoLHtwo = \relative {
  \global
  s1*6 |
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
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
    output-suffix = "single-sop1"
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
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
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
%            \addlyrics \wordsSopIIMidi
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
%            \addlyrics \wordsSopIMidi
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
%            \addlyrics \wordsSopIMidi
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
%            \addlyrics \wordsSopIIMidi
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
%            \addlyrics \wordsSopIMidi
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
%            \addlyrics \wordsSopIIMidi
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
%            \addlyrics \wordsSopIMidi
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
%            \addlyrics \wordsSopIIMidi
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
