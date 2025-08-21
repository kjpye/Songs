\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 3. Kyrie Eleison 2 (chorus)"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. S. Bach"
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
  \key fis \minor
  \time 4/2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup {"Alla Breve." \with-color "red" {in 2 \rhythm { 1 }}} 2=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "21a" } s\breve*4
  \textMark \markup { \box "21b" } s\breve*4
  \textMark \markup { \box "21c" } s\breve*4
  \textMark \markup { \box "22a" } s\breve
  \mark \markup\circle\bold A      s\breve*3
  \textMark \markup { \box "22b" } s\breve*4
  \textMark \markup { \box "22c" } s\breve*4
  \mark \markup\circle\bold B
  \textMark \markup { \box "23a" } s\breve*4
  \textMark \markup { \box "23b" } s\breve*3
  \mark \markup\circle\bold C      s\breve
  \textMark \markup { \box "23c" } s\breve*4
  \textMark \markup { \box "24a" } s\breve*4
  \textMark \markup { \box "24b" } s\breve*2
  \mark \markup\circle\bold D      s\breve*2
  \textMark \markup { \box "24c" } s\breve*4
  \textMark \markup { \box "25a" } s\breve*2
  \mark \markup\circle\bold E      s\breve*2
  \textMark \markup { \box "25b" } s\breve*3
  \textMark \markup { \box "25c" } s\breve*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s\breve*10 | s1 s\f | s\breve*47 |
}

soprano = \relative {
  \global
  R\breve*10 | r1 cis''2 d | bis2. cis4 dis(cis dis e |
  fis2) e4 dis e2 dis | cis e1(d4 cis) | b2 ais b fis'~ | 2(e4 dis) cis2 bis | % 22a
  cis 2 2~4 b a gis | a2 gis4 a b1~ | 4(cis d1) cis2~ | 2 fis4 e d2 cis4(b) |
  a4 b cis fis, dis'2 e4 fis | g2 fis e d~ | 4 cis2 b4 a b cis(d) | e1~4(d4) 2 |
  cis2 b4(a) dis2.(e4 | fis e dis cis bis2) cis4 dis | gis,(cis2) bis4 cis(b) a(gis) | fis gis a2 gis4 a b2~ | % 23a
  b4(a b cis d1~ | 4 cis) b(a) b(a) gis(fis) | eis2(fis1)
  eis2 | fis r r1 |
  r4 e'2 d4 cis(a) b(c) | d(cis) b(ais) b(e) d(cis) | d2 cis b r | R\breve |
  R\breve*3 | r1 b2 c | % 24a
  ais2. b4 cis b(cis d | e2)d4 cis d2 cis | b4 r r2 r4 fis'2 e4 | dis(b) cis(d) e(d cis b |
  cis1~4 fis, b2~ | 4 d) cis(b) a cis fis2~ | 4(dis e cis~4 ais) bis2 | cis e1(d4 cis) |
  b2 ais b d~ | d(cis4 b) a2 gis | a4 a'2 gis4 fisis(dis) eis(fisis) | | gis(fis) eis(dis) cis1~ | % 25a
  cis4 fis2 e4 dis2 d | cis2 2 fis, r | cis' d bis2. cis4 |
  dis4(cis dis eis fis2) e4 dis | e2 d cis2 2~ | 4 fis, gis a b(d cis b | a2) gis fis1\fermata |
  \bar "|."
}

Ky  = \lyricmode { Ky -- ri -- e }
el  = \lyricmode { e -- le -- i -- son, }
eli = \lyricmode { e -- lei -- son, }

MKy  = \lyricmode { Ky ri "e " }
Mel  = \lyricmode { e le i "son, " }
Meli = \lyricmode { e lei "son, " }

wordsSop = \lyricmode {
  \Ky \eli \el \el \el
  \Ky \eli \eli __ \Ky __ \eli \eli \Ky __ \el % 22b
  \eli \el \el \el  \Ky _ \el \el \Ky __ \el \el % 23
  \Ky \el \el \Ky \el \el \el % 24
  \el \Ky __ \el __ \Ky \el \Ky \eli \el \Ky e -- le -- i -- son.
}

wordsSopMidi = \lyricmode {
  \MKy \Meli \Mel \Mel \Mel
  \MKy \Meli \Meli __ \MKy __ \Meli \Meli \MKy __ \Mel % 22b
  \Meli \Mel \Mel \Mel  \MKy _ \Mel \Mel \MKy __ \Mel \Mel % 23
  \MKy \Mel \Mel \MKy \Mel \Mel \Mel % 24
  \Mel \MKy __ \Mel __ \MKy \Mel \MKy \Meli \Mel \MKy e le i son.
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s\breve*8 | s\breve\f | s\breve*49 |
}

alto = \relative {
  \global
  R\breve*8 |
  fis'2 gis eis2. fis4 | gis(fis gis a b2) a4 gis | a2 gis fis e~ | 4(dis e cis) bis2. cis4 |
  cis2 cis'1 bis2 | cis2. gis4 cis(ais b cis | d2 cis) b fis | gis1. 2~ | % 22a
  gis4 fis2 e4 dis eis fis2~ | 2 eis fis g | eis2. fis4 gis(fis gis a | b2) a4 gis a2 gis |
  fis2 a1(g4 fis) | e2 dis e b'~ | b(a4 gis) fis2 eis | fis2 cis'2~4 b a gis |
  a2 gis4 fis gis1~ | \breve~ | 2(fis1) eis2 | fis2. 4 e(fis gis2~ | % 23a
  gis4 fis gis ais b1~ | 4 a) gis(fis) eis2 4 fis | gis2 fis4(d) cis2 2 | 2 r r4 b'2 a4 |
  gis4(e) fis(gis) a(g fis e | d1~4 e) fis(g) fis2 r fis g | eis2. fis4 gis(fis gis a |
  b2) a4 gis a2 gis | fis cis'~4 fis, gis a | b1~4(e, fis g a1~4 d,) g2 | % 24a
  fis2 r gis a | b fis2 1 | 4 cis'2 b4 ais(fis) gis(ais) | b(a gis fis e1~ |
  e1 d) | cis4 eis(fis) gis a(fis) bis(cis) | dis2(gis,1) 2 | 2 cis fis,(gis4 ais |
  b2) cis fis,2. b,4 | b'(gis a b cis2) b | a r r4 dis2 cis4 | bis(gis) ais(bis) cis(b) ais(gis) | % 25a
  fis1. eis4 fis | gis2 fis b2. a4 | gis2 4 a dis,2 gis |
  fis4(gis a b fis2) b4 4 | cis(fis,2) eis4 fis2 2~ | 4 4 dis fis gis(b a gis | fis2) eis cis1\fermata |
}

wordsAlto = \lyricmode {
  \Ky \eli \el \el
  \Ky \eli \eli __ \Ky \eli \Ky \eli \el \el \el \Ky \eli % 22
  \el \el \Ky \el \Ky __ \el \Ky \eli
  \el \Ky \el \Ky \eli \Ky __ \eli \Ky __ \el \el % 24
  \el \Ky __ \el \Ky \el \Ky \eli \el \Ky e -- le -- i -- son.
}

wordsAltoMidi = \lyricmode {
  \MKy \Meli \Mel \Mel
  \MKy \Meli \Meli __ \MKy \Meli \MKy \Meli \Mel \Mel \Mel \MKy \Meli % 22
  \Mel \Mel \MKy \Mel \MKy __ \Mel \MKy \Meli
  \Mel \MKy \Mel \MKy \Meli \MKy __ \Meli \MKy __ \Mel \Mel % 24
  \Mel \MKy \Mel \MKy \Mel \MKy \Meli \Mel \MKy e le i son.
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s\breve*2 | s1 s\f | s\breve*55 |
}

tenor = \relative {
  \global
  R\breve*2 | r1 cis'2 d | bis2. cis4 dis(cis dis e |
  fis2) e4 dis e2 dis | cis e1(d4 cis) | b2 ais b d~ | d(cis4 b) a2 gis |
  ais2 b~4(gis a fis) | eis2. fis4 2 fis'~ | 2 eis fis a, | gis(gis'4 e fis2) dis |
  cis2 a' gis2.(fis4 | e dis cis b ais) cis fis,2 | fis'2. e4 d(e) d(cis) | bis(gis cis dis e2) dis | % 22a
  cis2 e4 ais, b2 bis | cis2 4 4 e1~ | 4(cis) b(a) gis(a) gis(fis) | eis2(fis1) eis2 |
  fis1. g4(a) | b2 a gis4 gis'2 fis4 | eis(cis) fis(gis) a2 gis | fis ais, b fis' |
  eis2 fis~4(e) dis(cis) | bis(cis) bis(cis) dis2 cis4 bis | cis2 dis gis, cis~ | 2 b~4(cis) d2 | % 23a
  cis2 r fis, g | e2. fis4 gis(fis gis a | b2) a4 gis a2 gis | fis4 fis'2 e4 dis(b) cis(dis) |
  e4(d) cis(b) a2 2~ | 2 g4(fis) b2 2 | 2 ais d r | cis d bis2. cis4 |
  dis4(cis dis eis fis2) e4 d | e2 d4(cis) d2 2~ | 4 gis, a b cis1~ | 4(fis, g a b2 e~ | % 24a
  e2) d cis1 | b4(a) b(cis) fis,(gis) a(fis) | dis2 eis fis r | r1 r4 e'2 d4 |
  cis4(a) b(cis) d(cis b a | gis b) a(gis) fis2 a | gis cis4 e dis(e) fis2 | e gis4 gis, cis(ais) b(cis) |
  d2 cis b fis'4 d | e2 4(d) cis(d) e2 | 2 r r1 | r4 gis2 fis4 eis(cis) dis(eis) | % 25a
  fis4(ais, b cis~4) fis, b2~ | b a4 a d2. cis8(b) | cis2 b4 fis'4 2 e |
  dis4(e) fis(gis) cis,(d e2) | ais,2 b~4 a b cis | d(cis b a gis2) a4 d | cis2 4(b) ais1\fermata |
}

wordsTenor = \lyricmode {
  \MKy \Meli \Mel \Mel \Mel \Mel \MKy \Mel
  \Mel \MKy __ \Mel \MKy \Meli \Mel \Mel \Mel \MKy __ \Mel \Mel % 22
  \MKy __ \Meli \Mel \Mel \MKy __ \Meli \Mel \MKy __ \Mel \MKy \Mel \MKy \Meli
  \Mel \MKy \Mel \MKy __ \Mel \MKy __ \Mel \Meli \Mel \MKy __ \Mel % 24
  \MKy \Mel \MKy __ \Mel __ \MKy \Meli \Mel \Meli \MKy \Meli e le i son.
}

wordsTenorMidi = \lyricmode {
  \MKy \Meli \Mel \Mel \Mel \Mel \MKy \Mel
  \Mel \MKy __ \Mel \MKy \Meli \Mel \Mel \Mel \MKy __ \Mel \Mel % 22
  \MKy __ \Meli \Mel \Mel \MKy __ \Meli \Mel \MKy __ \Mel \MKy \Mel \MKy \Meli
  \Mel \MKy \Mel \MKy __ \Mel \MKy __ \Mel \Meli \Mel \MKy __ \Mel % 24
  \MKy \Mel \MKy __ \Mel __ \MKy \Meli \Mel \Meli \MKy \Meli e le i son.
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s\breve\f | s\p\cresc | s\dim | s\omit\p | s\breve*3 |
  s\breve\dim | s\omit\p | s\breve*16 |
  s\breve\< | s\> | s\! | s s | s1 s4 s2.\f | s\breve*3 |
  s1.\dim s2\p | s\breve*5 | s\breve\p\cresc | s | s\f |
  s\breve*14 | s1...\breve\dim s8\omit\p |
}

bass = \relative {
  \global
  fis2 g eis2. fis4 | gis(fis gis a b2) a4 gis | a2 gis fis fis~ | 4(dis e cis) bis2. cis4 |
  cis2 cis'1 bis2 | cis2. gis4 cis(ais b cis | d2) cis b2. fis4 | b(gis a b cis2) b |
  cis2 d gis, fis | cis' cis, d cis4(b) | cis cis'2 b4 a(gis) fis2 | gis1.(fis4 gis |
  a2) gis4 fis gis2 gis, | cis2 r r1 | R\breve*2 | % 22a
  R\breve*4 |
  R\breve*4 |
  cis2 d bis2. cis4 | dis(cis dis e fis2) e4 d | e2 dis c c | d(dis e eis | % 23a
  fis2.) e4 d(cis) b2 | cis1.(d2~ | 4 cis) d(b) cis cis'2 b4 | ais(fis) gis(ais) b(a gis fis |
  e2) e a,4 a'2 g4 | fis(d) e(fis) g2 fis4 e | fis2 fis, b r | R\breve |
  R\breve*4 | % 24a
  fis'2 g eis2. fis4 | gis fis(gis aes b2) a4 gis | a2 gis fis r | r4 b2 a4 gis(e) fis(gis) |
  a4(fis gis ais b a gis fis | eis cis dis eis fis e dis cis | bis2) cis4 4 gis'2 gis, | cis2\breathe 4(b) ais2 fis |
  fis'2. e4 d(cis) b(a) | gis(b cis d e2. d4 | cis) e a,2 r1 | r1 r4 cis'2 b4 | % 25a
  ais4(fis) gis(ais) b(a gis fis) | eis(cis) fis1 g2 | eis2. fis4 gis(fis gis a |
  b2) a4 gis a2 gis | fis1~4 4(gis) ais | b(a) gis(fis) eis2 fis4 b, | cis2 2 fis,1\fermata |
}

wordsBass = \lyricmode {
  \Ky \eli \el \el \Ky \el \el \el \el \Ky __ \eli
  \el % 22
  \Ky \eli \el \el \el \Ky __ \el \Ky __ \eli \el
  \Ky \el \el \Ky __ \eli \el \eli | % 24
  \Ky __ \el \Ky __ \eli \Ky \eli \el __ \Ky __ \eli e -- le -- i -- son.
}

wordsBassMidi = \lyricmode {
  \Ky \eli \el \el \Ky \el \el \el \el \Ky __ \eli
  \el % 22
  \Ky \eli \el \el \el \Ky __ \el \Ky __ \eli \el
  \Ky \el \el \Ky __ \eli \el \eli | % 24
  \Ky __ \el \Ky __ \eli \Ky \eli \el __ \Ky __ \eli e -- le -- i -- son.
}

pianoRHone = \relative {
  \global \vo
  \clef bass fis2 g eis2. fis4 | gis fis gis a b2 a4 gis |
  s1 cis2 d | bis2. cis4 dis cis dis e |
  fis2 e4 dis e2 dis | s2 e1 d4 cis | d2 cis b d~ | d cis4 b cis2 b \clef treble | % 21b
  \ov <ais cis fis>2 <b d gis> \vo eis2. fis4 | % 21c
  <eis gis>4 fis gis \ov <cis, fis a> <b fis' b>2 <cis fis a>4 <d fis g> |
  \vo <fis a>2 <eis gis> cis' d |
  bis2. cis4 dis cis dis e |
  \ov <fis, cis' fis>2 <gis cis e>4 <a cis dis> \vo <cis e>2 <bis dis> | % 22a
  cis2 e1 d4 cis | d2 cis b fis'~ | 2 e4 dis cis2 <gis bis> |
  cis2 2~4 b a gis | a2 gis4 a b1~ | 4 cis d1 cis2~ | 2 fis4 e d2 cis4 b | % 22b
  a4 b cis fis, dis'2 e4 fis | g2 fis e << { \vo <b d>~ | d4 cis2} \new Voice {\vth \once\hideNotes b2_~ | 2 a4}>> \vo b4 a(b) cis(d) | e1~4 d4 2 |
  cis2 b4 a <gis dis'>2. e'4 | fis e dis cis bis2 cis4 f | % 23a
  gis,4 cis2 bis4 cis(b) a(gis) | fis gis a2 gis4 a <gis b>2~ |
  q4 <fis a> <gis b> <ais cis> <b d>1~ | 4 <a cis>(<gis b> a) b(a) gis(fis) | % 23b
  eis2 fis~2 eis | <fis, cis' fis>4 r r2 r4 b'2 a4 |
  gis4 e'2 d4 cis a b(cis) | d(cis) <g b>(<fis ais>) b(e) <<{d(cis)} \new Voice {\vth b2}>> \vo <b d>2 <ais cis> <<{b2} \new Voice {\vth fis}>> \vo g | eis2. fis4 gis fis gis a |
  b2 a4 gis a2 gis | fis cis'~4 fis, gis a | b1~4 e, fis g | a1 b2 c | % 24a
  ais2. b4 cis b cis d | e2 d4 cis d2 cis | <fis, b>4 cis'2 b4 ais fis'2 e4 | dis(b) cis(dis) e(d) cis(b) |
  cis1~4 fis, b2~ | 4 d cis(b) a cis <<{fis2~ | <dis fis>4} \new Voice {\vth b4(cis) | s4}>> \vo dis4 e cis~4 ais \ov <fis gis bis>2 | <e gis cis> \vo e'1 d4 cis |
  b2 ais b d~ | d cis4 b a2 gis | a4 a'2 gis4 fisis(d) eis(fisis) | gis(fis) eis(dis) cis1~ | % 25a
  cis4 fis2 e4 dis2 <b d> | cis~2 b2. a4 | cis2 d bis2. cis4 |
  \ov <dis, fis dis'>4 <e gis cis> <fis a d> <gis b eis> \vo fis'2 e4 dis | % 25a
  e2 d cis2 2~ |
  \ov <d, fis cis'>4 <cis fis> <eis gis> <fis a> <gis b> <b d> <a cis> \vo <gis b> |
  <fis a>2 <eis gis> \ov <ais, cis fis>1\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  fis2 d cis1 | d2*1/2 \once\hideNotes fis4~4 eis fis eis fis2 |
  a2 gis fis fis~ | 4 dis e2 gis1 |
  fis2 cis'~2 bis | cis2. fis4 cis ais b ais | % 21b
  b2 ais b2. fis4 | b4 gis a gis a2 gis \clef treble |
  s2 \once\hideNotes b2~4 gis a fis | % 21c
  cis'2. s4 s1 | cis4 s2. fis2 <fis a>~ | fis4 dis e2 fis bis |
  s1 gis2. fis4 | e2. gis4 cis ais b cis | b2 ais b d4 cis | bis gis2.~2 dis | % 22a
  <cis gis'>4 fis2 e4 dis eis fis2~ | 2 eis fis g | eis2. fis4 gis fis gis a | b2 a4 gis a2 gis |
  fis2 a a g4 a | <b e>2 <a dis> gis2. fis4 | dis cis fis gis fis2 <eis gis> | fis cis'~4 b <<{\vf a gis} \new Voice {\vt fis2}>> \vt |
  <eis a>2 gis4 fis~4 e dis gis | 1 1 | 2 fis~2 eis | fis2. 4 e fis d2 | % 23a
  cis4 s2. fis2 g | eis2. fis4 eis2. a,4 | b2 a4 <gis d'> <a cis>2 <gis cis> | s4 fis'2 e4 dis(b) cis(dis) |
  e4 e fis(gis) a g fis e | d1~4 e fis g | fis2 e d r | cis d bis2. cis4 |
  dis4 cis dis eis fis2 e4 dis | e2 d4 cis d2 2~ | 4 s2. cis1~ | <<{\vt cis4 s1} \new Voice {\vf \once\hideNotes a'1~4}>> \vt d, <e g>2~ | % 24a
  e2 d gis a | b fis2 2. 4 | dis2 eis dis4 4 gis(ais) | b a gis fis e4 2 d4 |
  cis4 a' b cis, d cis b' a | gis eis fis gis a fis a2 | gis2. e4 dis e s2 | s <gis cis> fis gis4 ais |
  d,2 cis fis2 4 b~ | <e, b'> gis a d, cis d e2 | 4 r e'2 dis4 4~4 cis | bis r ais bis cis b ais gis | % 25a
  fis4 ais b cis fis,2 eis4 fis | <gis b>2 <fis a> <d fis> g | <eis gis> <gis b>4 a <dis, fis>2 <e gis> |
  s1 <<{\vt fis2} \new Voice {\vf cis'4 d}>> \vt b4 b | % 25c
  <ais cis>4 <<{\vt s4 b2~4 ais b cis, | s4} \new Voice {\vf fis2 eis4 fis2 2~ | \once\hideNotes fis4}>> s2. s2. d4 | cis2 4(b) s1 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s\breve\f s\breve*57 |
}

pianoLHone = \relative {
  \global \ov
  fis,2 <b, b'>1 <a a'>2 |
  <b b'>2. <cis cis'>4 <d d'> <cis cis'> <d d'> <b b'> |
  \vo cis'2 b a8 s8 s2. | s2. cis4 bis2. cis4 |
  \ov <a cis>2 <fis fis'> <gis gis'>2. <fis fis'>4 | % 21b
  <e e'>4 <dis dis'> <cis cis'> <b b'> <ais ais'> <cis cis'> <fis, fis'>2 |
  <fis' fis'>2. <e e'>4 <d d'> <cis cis'> <b b'> <a a'> |
  <gis gis'>4 <b b'> <e, e'>2 <e' e'>1~ |
  q4 <d d'> <cis cis'> <b b'> <cis cis'>1~ | % 21c
  q2 <b b'>4 <a a'> <d d'>2 <b b'> |
  <cis cis'>4 <cis' cis'>2 <b b'>4 <a a'> <gis gis'> <fis fis'>2 |
  <gis gis'>1. <fis fis'>4 <gis gis'> |
  <a a'>2 <gis gis'>4 <fis fis'> <gis gis'>2 <gis, gis'> | % 22a
  <cis cis'>2 <cis, cis'> r4 fis'' gis ais |
  b4 d, e fis b, cis b a |
  gis4 gis' <ais cis> <bis dis> \vo e2 \ov s |
  a,2 ais b bis | cis cis,4 cis' d1~ | 4 cis b a gis a gis fis | eis2 fis1 eis2 | % 22b
  fis1 \ov  b,~ | 2 bis cis b4 a | gis2 a4 b cis cis'2 b4~ | b ais b cis d2 b |
  <cis,, cis'>2 <d d'> <bis bis'>2. <cis cis'>4 | % 23a
  <dis dis'>4 <cis cis'> <dis dis'> <e e'> <fis fis'>2 <e e'>4 <dis dis'> |
  <e e'>2 <dis dis'> <cis cis'>2 2 |
  <d d'>2 <dis dis'> <e e'> <eis eis'> |
  <fis fis'>2. <e e'>4 <d d'> <cis cis'> <b b'>2 | % 23b
  <cis cis'>1. <d d'>2~ | 4 <cis cis'> <d d'> <b b'> <cis cis'> cis'2 b4 |
  ais4 <fis fis'> <gis gis'> <ais ais'> <b b'> <a a'> <gis gis'> <fis fis'> |
  <e e'>2 <e, e'> <a a'>4 <a' a'>2 <g g'>4 | % 23c
  <fis fis'>4 <d d'> <e e'> <fis fis'> <g g'>2 <fis fis'>4 <e e'> |
  <fis fis'>2 <fis, fis'> <b b'> b''2~ | 4 a gis fis~4 dis e cis |
  gis'2 cis~4 cis, cis' b | ais fis gis ais b b, b' a | % 24a
  gis4 \vo gis a b \ov a a, a' g | \vo fis4 4 g a \ov g2 fis4 e |
  \vo fis2 g eis2. fis4 | % 24b
  <gis, gis'>4 <fis fis'> <gis gis'> <ais ais'> <b b'>2 <a a'>4 <gis gis'> |
  <a a'>2 <gis gis'> <fis fis'> r |
  r4 <b b'>2 <a a'>4 <gis gis'> <e e'> <fis fis'> <gis gis'> |
  <a a'>4 <fis fis'> <gis gis'> <ais ais'> <b b'> <a a'> <gis gis'> <fis fis'> | % 24c
  <eis eis'>4 <cis cis'> <dis dis'> <eis eis'> <fis fis'> <e e'> <dis dis'> <cis cis'> |
  <bis bis'>2 <cis cis'> <gis' gis'> <gis, gis'> |
  <cis cis'>4 <d d'> <cis cis'> <b b'> <ais ais'> <cis cis'> <fis, fis'>2 |
  <fis' fis'>2. <e e'>4 <d d'> <cis cis'> <b b'> <a a'> | % 25a
  <gis gis'>4 <b b'> <e, e'>2 <e' e'>2. <d d'>4 |
  <cis cis'>2 cis''~4 bis cis dis |
  \vo r4 gis2 fis4 eis \ov <cis, cis'>2 <b b'>4 |
  <ais ais'>4 <fis fis'> <gis gis'> <ais ais'> <b b'> <a a'> <gis gis'> <fis fis'> | % 25b
  <eis eis'>4 <cis cis'> <fis fis'> <e e'> <d d'> <cis cis'> <b b'>2~ |
  q4 <a a'> <gis gis'> <fis fis'> <gis gis'> <fis fis'> <gis gis'> <a a'> |
  <b b'>2 <a a'>4 <gis gis'> <a a'>2 <gis gis'> | % 25c
  <fis fis'>1~4 <fis' fis'> <gis gis'> <ais ais'> |
  <b b'>4 <a a'> <gis gis'> <fis fis'> <eis eis'>2 <fis fis'>4 <b, b'> |
  <cis cis'>2 <cis, cis'> <fis fis'>1\fermata |
}

pianoLHtwo = \relative {
  \global \vt
  s\breve*2 | cis,4 fis2 eis4 fis8 gis a2 gis8 fis | gis1~2 fis4 e |
  s\breve*16 |
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
%   \unfoldRepeats
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
          \new Staff = pianorh \with {
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
          \new Staff = pianorh \with {
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
          \new Staff = pianorh \with {
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
          \new Staff = pianorh \with {
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
