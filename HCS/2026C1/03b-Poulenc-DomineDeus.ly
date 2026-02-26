\version "2.25.33"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gloria"
  subtitle    = "III. Domine Deus"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Poulenc"
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
  \numericTimeSignature
  \key d \major
  \time 3/4
}

TempoTrack = {
  \tempo "Trés lent et calme" 4=60
%  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
                                %  \mark \markup { \box "1a" } s2.*4
  \mark \markup\bold\circle "27"
  \textMark \markup { \box "21a" } s2.*5
  \textMark \markup { \box "21b" } s2.*2
  \mark \markup\bold\circle "28"   s2.*4 \break
  \textMark \markup { \box "22a" } s2. \time 2/4 s2 \time 3/4 s2. \time 2/4 s2 \time 5/4 s4*5
  \textMark \markup { \box "22b" } \time 4/4 s1
  \mark \markup\bold\circle "29"   s1*2 \time 3/4 s2.
  \textMark \markup { \box "23a" } s2.*3
  \mark \markup\bold\circle "30"   \time 4/4 s1*2
  \textMark \markup { \box "23b" } s1*4
  \mark \markup\bold\circle "31"
  \textMark \markup { \box "24a" } \time 3/4 s2.*4 \time 4/4 s1
  \textMark \markup { \box "24b" } s1*3
  \mark \markup\bold\circle "32"   s1
  \textMark \markup { \box "25a" } s1*3
  \mark \markup\bold\circle "33"   s1
  \textMark \markup { \box "25b" } s1*2
  \mark \markup\bold\circle "34"   \time 3/4 s2.*3
  \textMark \markup { \box "26a" } s2. \time 4/4 s1*2
  \mark \markup\bold\circle "35"   s1
  \textMark \markup { \box "26b" } \time 5/4 s4*5 \time 4/4 s1*4
}

dynamicsSolo = {
  \override DynamicTextSpanner.style = #'none
  s2.*7 | s2.\pp s2.*3
  s2. s2 s2.\mf s2 s4*5 s1 s\p s s2.\mf | % 22
  s2. s\mf s s1\f s | s1*4 |
  s2.\f s2.*3 s1\omit\pp-\markup\halign #RIGHT {\italic subito \dynamic pp} | s1*3 s1\omit\pp-\markup{\halign #RIGHT \italic subito \dynamic pp} |
  s1*3 s1\mf | s1*2 s2.\pp s2.*2 | % 25
  s2. s1*2 s1\mf | s4*5 s1\p s1*3 |
}

solo = \relative {
  \global
  R2.*7 | fis''2\(b,4 | d8.\) r16 fis,4\(e8\) r | fis'2\(b,4 | d8.\) r16 fis,4\(e8\) r |
  R2. | R2 | g2\(b4 | d e8\) r | R4*5 | % 22a
  R1 | b4.\((d8) cis b fis' d | b4\)~8 r r2 | fis'2\(b,4 |
  d8.\) r16 fis,4\(e8\) r | fis'2\(b,4 | d8.\) r16 fis,4\(eis8\) r | \key c \major fis4..\(16 d'4 cis8\) r | g4..\(16 ees'4 d8\) r | % 23a
  R1*2 | g,4.\((bes8) a g d' bes | f4\)~16 r8. r2 |
  f'2\(e4 | f8\) r f,4\(e8\) r | R2.*2 | c'4.\(f8 ces4 aes8\) r | % 24a
  c4.\(f8 ces4 aes8\) r | R1*2 | dis4.\(gis8 d4 b8\) r |
  dis4.\(gis8 d4 b8\) r | R1*2 | fis4.\((a8) gis f cis' a | % 25a
  e4\)~16 r8. r2 | R1 | \key d \major fis'2\(b,4 | d8\) r fis,4\(e8\) r | fis'2\( b,4 |
  d8.\) r16 fis,4\(e8\) r | R1*2 | fis'2\(e4 d | % 26a
  c8.\) r16 d4\(cis\) b\(g8\) r | b4.\((d8) cis b fis' d | b4\) r r2 | R1*2 |
  \bar "|."
}

DD = \lyricmode { Do -- mi -- ne De -- us }
Do = \lyricmode { Do -- mi -- ne }
DP = \lyricmode { De -- us Pa -- ter }
Gl = \lyricmode { Glo -- ri -- a }
Glp= \lyricmode { Glo -- ri -- a. }
Om = \lyricmode { O -- mni -- po -- tens }
Po = \lyricmode { Pa -- ter om -- ni -- po -- tens }
Pop= \lyricmode { Pa -- ter om -- ni -- po -- tens. }
Rc = \lyricmode {Rex cœ -- les -- tis }

wordsSolo = \lyricmode {
  \DD \DD
  \Rc \Po __ \DD % 22
  \DD \Rc \Rc \Po __
  \DD \Rc \Rc \Rc
  \Rc \Po __ \DD \DD % 25
  \DP \DP \Pop
}

MDD = \lyricmode { Do mi "ne " De "us " }
MDo = \lyricmode { Do mi "ne " }
MDP = \lyricmode { De "us " Pa "ter " }
MGl = \lyricmode { Glo ri "a " }
MGlp= \lyricmode { Glo ri "a. " }
MOm = \lyricmode { O mni po "tens " }
MPo = \lyricmode { Pa "ter " om ni po "tens " }
MPop= \lyricmode { Pa "ter " om ni po "tens. " }
MRc = \lyricmode { "Rex " cœ les "tis " }

wordsSoloMidi = \lyricmode {
  \MDD \MDD
  \MRc \MPo __ \MDD % 22
  \MDD \MRc \MRc \MPo __
  \MDD \MRc \MRc \MRc
  \MRc \MPo __ \MDD \MDD % 25
  \MDP \MDP \MPop
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.*11 |
  s2.\p | s2 s2. s2 s4*5\mf | s1*3 s2. | % 22
  s4 s2\f | s2.*2 s1*2 | s1\p | s1*2 s1\mf |
  s2.*2 s2.\omit\ff^\markup{\halign #RIGHT Tous \dynamic ff} s2. s1 | s s\mf s s\omit\ppp^\markup{\halign #RIGHT Moitié \dynamic ppp} |
  s1 s\omit\mf^\markup{\halign #RIGHT Tous \dynamic mf} s1*2 | s1*2 s2.*3 | % 25
  s2. s1\omit\pp^\markup{\halign #RIGHT Moitié \dynamic pp} s s\omit\ppp^\markup{\halign #RIGHT Tous \dynamic ppp} | s4*5 s1\omit\pp^\markup{\halign #RIGHT Moitié \dynamic pp} s1*3 |
}

soprano = \relative {
  \global
  R2.*11 |
  fis'2 g4 | b4 cis8 r | R2. | R2 | fis2 e8. r16 b4\(cis8\) r | % 22a
  d4 cis8. r16 b4 ais8 r | R1*2 | R2. |
  r4^\markup Moitié fis4\(e8\) r | R2. | r4 fis\(e8\) r \key c \major | R1*2 | % 23a
  ees'4 d c\(bes8\) r | a4 bes c\(fis,8\) r | R1 | f4.(aes8) g f c' aes |
  f8 r r2 | R2. | ees'2 d4 | ees8 r ees,4\(d8\) r | R1 | % 24a
  R1 | des'4\(ges8\) r ees4\(f8\) r | des4\(ees8\) r a,4\(c8\) r\breathe | dis2 4~8 r |
  dis2 d4~8 r | cis4\(e8.\) r16 d4\(c8\) r | cis4\(b8.\) r16 a4\(g8\) r | R1 | % 25a
  R1*2 \key d \major | s2.*3 |
  R2. | b4. dis8 f,4 g8 r | b4. dis8 f,4 g8 r | <d b'>1( | % 26a
  <g d'>2.) <b fis'>4 <e g>8 r | fis,4(g b) ais | b8 r r4 r2 | R1*2 |
}

wordsSop = \lyricmode {
  \Rc \DP \DP % 22
  De -- us De -- us \DP \DP \Po
  \DD \DP \DP De -- us __
  De -- us __ \DP \DP % 25
  \Rc \Rc \Gl \Glp
}

wordsSopMidi = \lyricmode {
  \MRc \MDP \MDP % 22
  De "us " De "us " \MDP \MDP \MPo
  \MDD \MDP \MDP De "us "
  De "us " \MDP \MDP % 25
  \MRc \MRc \MGl \MGlp
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.*11 |
  s2.\p | s2 s2.\omit\pp^\markup{\halign #RIGHT Moitié \dynamic pp} s2 s4*5\omit\mf^\markup{\halign #RIGHT Tous \dynamic mf} | s1*3 s2. | % 22
  s4 s2\f s2.*2 s1 s1\omit\mf^\markup{\halign #RIGHT Tous \dynamic mf} | s1\p s1*2 s1\omit\mf^\markup{\halign #RIGHT Moitié \dynamic mf} |
  s2.*2 s2.\omit\ff^\markup{\halign #RIGHT Tous \dynamic ff} s s1 | s s\mf s s\omit\ppp^\markup {\halign #RIGHT Moitié \dynamic ppp}
  s1 s\omit\mf^\markup{\halign #RIGHT Tous \dynamic mf} s s\omit\p^\markup{\halign #RIGHT Moitié \dynamic p} | s1*2 s2.*3 | % 25
  s2. s1\omit\pp^\markup{\halign #RIGHT Moitié \dynamic pp} s s\omit\ppp^\markup{\halign #RIGHT Tous \dynamic ppp} | s4*5 s1\omit\pp^\markup{\halign #RIGHT Moitié \dynamic pp} s1*3 |
}

alto = \relative {
  \global
  R2.*11 |
  d'2 4 | e4 g8 r | d2 4 | g cis8 r | a2 g8. r16 fis4\(e8\) r | % 22a
  fis4 g8. r16 e4 fis8 r | R1*2 | R2. |
  r4 d\(cis8\) r | R2. | r4 d\(cis8\) r \key c \major | R1 | d4 c aes' g8 r | % 23a
  ees4 g d\(g8\) r | ees4 d ees\(d8\) r | R1 | c4(des) bes e |
  f8 r r2 | R2. | ges2 ces4 | 8 r bes,4\(aes8\) r | R1 | % 24a
  R1 | ges'4\(ces8\) r a4\(c8\) r | ges4 8 r ees4\(ges8\) r\breathe | <dis fis>2 <d g>4~8 r | <dis fis>2 <d g>4~8 r | fis4\(g8.\) r16 f4\(gis8\) r | fis4 8. r16 4.\(eis8\) | cis4(d b eis) | % 25a
  b8 r r4 r2 | R1 | \key d \major R2.*3 |
  R2. | dis2(b4) f'8 r | dis2(b4) f'8 r | <b, g'>1( | % 26a
  <d b'>2.) <fis d'>4 <g b>8 r | b,4(d e) e | d8 r r4 r2 | R1*2 |
}

wordsAlto = \lyricmode {
  \Rc \Rc \DP \DP % 22
  De -- us De -- us \Rc \DP \DP \Om
  \DD \DP \DP De -- us __
  De -- us __ \DP \DP Pa -- ter % 25
  De -- us De -- us \Gl \Glp
}

wordsAltoMidi = \lyricmode {
  \MRc \MRc \MDP \MDP % 22
  De "us " De "us " \MRc \MDP \MDP \MOm
  \MDD \MDP \MDP De "us "
  De "us " \MDP \MDP Pa "ter " % 25
  De "us " De "us " \MGl \MGlp
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.*11 |
  s2.\p s2 s2.\omit\pp^\markup{\halign #RIGHT Moitié \dynamic pp} s2 s4*5\omit\mf^\markup{\halign #RIGHT Tous \dynamic mf} | s1*3 s2. | % 22
  s2.*3 s1\omit\p^\markup{\halign #RIGHT Moitié \dynamic p} s1\omit\mf^\markup{\halign #RIGHT Tous \dynamic mf} | s1\p | s1*3 |
  s2.\omit\f^\markup{\halign #RIGHT Moitié \dynamic f} s s\omit\ff^\markup{\halign #RIGHT Tous \dynamic ff} s s1\omit\ppp^\markup{\halign #RIGHT Moitié \dynamic ppp} | s s\omit\mf^\markup{\halign #RIGHT Tous \dynamic mf} s s\omit\ppp^\markup{\halign #RIGHT Moitié \dynamic ppp} |
  s1 s\omit\mf-\markup{\halign #RIGHT Tous \dynamic mf} s1*2 | s1*2 s2.*2 s2.\omit\pp-\markup{\halign #RIGHT Moitié \dynamic pp} | % 25
  s2. s1\omit\pp-\markup{\halign #RIGHT Moitié \dynamic pp} s s\omit\pp^\markup{\halign #RIGHT Moitié \dynamic ppp} | s4*5 s1\omit\pp-\markup{\halign #RIGHT Moitié \dynamic pp} s1*3 |
}

tenor = \relative {
  \global
  R2.*11 |
  b2 4 | cis e8 r | cis2 g4 | b ais8 r | dis2 b8(cis) c4\(b8\) r | % 22a
  b8(cis) d8. r16 b4 cis8 r | R1*2 | R2. |
  R2.*3 \key c \major | a4 gis c4 8 r | g4 g ees' d8 r | % 23a
  g,4 bes g8\((a) b\) r | d4 g,8(a) bes4\(a8\) r | R1*2 |
  f'2 e4 | e8 r f,4\(e8\) r | bes'2 f'4 | ges8 r ees4\(ces8\) r | aes2 c4~8 r | % 24a
  aes2 d4(c8) r | ces4\(d8\) r a4\(d8\) r | bes4\(a8\) r c4\(ees8\) r\breathe | <gis, b>2 <g b>4~8 r |
  <gis b>2 <g b>4~8 r | cis4\(ais8.\) r16 d8\((e) eis\) r | a,8\((b) cis8.\) r16 d4 e8 r | R1 | % 25a
  R1*2 \key d \major R2.*2 b2.( |
  a4) b\(g8\) r | a2(f'4) b,8 r | a2(f'4) b,8 r | e,1( | % 26a
  e'2.) e,4 8 r | d4(e g) fis | 8 r r4 r2 | R1*2 |
}

wordsTenor = \lyricmode {
  \Rc \Rc \DP \DP % 22
  \Rc \Rc \DP \DP
  \DD \DD De -- us __ De -- us __ \DP \DP De -- us __
  De -- us __ \DP \DP \DD % 25
  De -- us \Gl \Glp
}

wordsTenorMidi = \lyricmode {
  \MRc \MRc \MDP \MDP % 22
  \MRc \MRc \MDP \MDP
  \MDD \MDD De "us " De "us " \MDP \MDP De "us "
  De "us " \MDP \MDP \MDD % 25
  De "us " \MGl \MGlp
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.*11 |
  s2.\p s2 s2. s2 s4*5\mf | s1*3 s2.\omit\ppp^\markup{\halign #RIGHT Moitié \dynamic ppp} % 22
  s2. s\mf s s1\f s | s\p s1*2 s1\mf |
  s2.*2 s2.\omit\ff^\markup{\halign #RIGHT Tous \dynamic ff} s s1\omit\ppp^\markup{\halign #RIGHT Moitié \dynamic ppp} | s s\omit\mf^\markup{\halign #RIGHT Tous \dynamic mf} s s\omit\ppp^\markup{\halign #RIGHT Moitié \dynamic ppp}
  s1 s\omit\mf^\markup{\halign #RIGHT Tous \dynamic mf} s s\omit\p-\markup{\halign #RIGHT Moitié \dynamic p} | s1*2 s2.\pp s2.*2 | % 25
  s2. s1\omit\pp^\markup{\halign #RIGHT Moitié \dynamic pp} s1^\markup Tous | s\omit\ppp^\markup{\halign #RIGHT Moitié \dynamic ppp}
  s4*5 s1*4 |
}

bass = \relative {
  \global
  R2.*11 |
  g2 4 | g ais8 r | R2. | R2 | b4(b,) e8. r16 fis4\(g8\) r | % 22a
  g4 e8. r16 g4 fis8 r | R1*2 | b,2.~ |
  b4 b\(g8\) r | b2.~ | 4 4\(gis8\) r \key c \major | R1 | bes4 a bes bes'8 r | % 23a
  c,4 d ees\(d8\) r | c4 ees c\(d8\) r | R1 | aes4(bes) des c |
  aes'8 r r2 | R2. | ees2 ges4 | ees'8 r ges,4\(f8\) r | bes,2 fes'4~8 r | % 24a
  bes,2 fes'4~8 r | bes4\(bes,8\) r ges'4\(bes8\) r | ges4\(bes,8\) r ges'4\(a8\) r\breathe | fis4(cis) fis~8 r |
  fis4(cis) f~8 r | a4\(cis,8.\) r16 b'4 8 r | d,4 8. r16 cis4\(b8\) r | a4(b d cis) | % 25a
  g'8 r r4 r2 | R1 \key d \major R2.*3 |
  R2. | b4\(fis8\) r g4\(d8\) r | b4\( fis'8\) r d4\( g,8\) r | b4(cis d e | % 26a
  e4 g b) d e8 r | R1*4 |
}

wordsBass = \lyricmode {
  \Rc \DP \DP \Do % 22
  \Do \Rc \DP \DP \Om
  \DD De -- us __ De -- us __ \DP \DP De -- us __
  De -- us __ \DP \DP Pa -- ter % 25
  \DP \DP \Gl
}

wordsBassMidi = \lyricmode {
  \MRc \MDP \MDP \MDo % 22
  \MDo \MRc \MDP \MDP \MOm
  \MDD De "us " De "us " \MDP \MDP De "us "
  De "us " \MDP \MDP Pa "ter " % 25
  \MDP \MDP \MGl
}

pianoRHone = \relative {
  \global \vo
  d'''2(cis4 | b a g | \appoggiatura {fis16 f} fis4 e b' | fis2) e4( | d cis b |
  \appoggiatura {ais16 b} a4 b cis | fis,2.) | <fis b fis'>2.~ | % 21b
  8 r <d fis>4(<b cis e>) | <fis' b fis'>2.~ | 8 r <d fis>4(<b cis e>) |
  fis'2(g4) | b(c) | g2(b4) | d(e) | fis2 e4 b(cis) | % 22a
  d4(cis b ais8) r | b4.(d8 cis b fis' d | <<{b4) s2.} \new Voice {\vth fis4(g, b ais)}>> | <fis' b fis'>2.~ |
  q8 r \repeat tremolo 4 {fis32-> g} e8 r | <fis b fis'>2.~ | % 23a
  q8 r \repeat tremolo 4 {fis32-> g} e8 r \key c \major |
  fis2-- d'4(cis8) r | g2-- ees'4(d8) r |
  ees4(d) c(bes) | a(bes) c(fis,8) r | g4.(bes8 a g d' bes) | % 23b
  f4.(aes8 g f c' aes) |
  <f aes c f>2-- \ov <e g des' e>4-- | % 24a
  <f aes c f>8-- r <f, c' f>4(<g bes e>8) r |
  \vo <ees'' ges bes ees>2. | \ov q8 r <bes, ees>4(<f aes d>8) r |
  <c' ees aes c>4-- <aes c ees aes>-- <fes' aes ces fes>-- <aes c d aes'>-- |
  <c, ees aes c>4-- <aes c ees aes>-- <fes' aes ces fes>-- <aes c d aes'>-- | % 24b
  <des, ges bes des>4-- <ges bes des ges>-- <ees a c ees>-- <f bes d f>8 r |
  <des ges bes des>4-- <ees g a ees'>-- <a, ees' g a>-- <c g c>8 r\breathe |
  <dis fis b dis>4-- <b dis fis b>-- <g' b d g>-- <b d f b>-- |
  <dis, fis b dis>4-- <b dis fis b>-- <g' b d g>-- <b d g b>-- | % 25a
  \vo cis-- e-- d-- cis-- | cis-- b-- a-- gis-- | fis4.(a8 gis fis cis' a) |
  e4.(g8 fis e b' g | e4 d4. cis8)~8 r | \key d \major % 25b
  <fis b fis'>2.~ | 8 r <d fis>4(<b cis e>8) r | <fis' b fis'>2.~ |
  q8 r <d f>4(<b c e>8) r | b'2-- f4(g) | b2-- f4(g) | % 26a
  \appoggiatura <b, d g b>8 q1 |
  \ov <d g b d>2. <fis b d fis>4(<g b e g>8) r | % 26b
  \vo b4.(d8 cis b fis' d) | <b, d b'>2 g' |
  <dis fis b dis>1\laissezVibrer | r2 r4 s8 r |
}

pianoRHtwo = \relative {
  \global \vt
  r4 fis'' ais | d, fis b, | d b cis | d2 b4 | b g fis |
  e4 fis g | e(fis,2) | r4 <b d fis> <cis e b'> | <d fis d'>8 r s2 | % 21b
  r4 <b d fis> <c e b'> | <d fis d'>8 r s2 |
  d4 <g, d'> <b d> | <c e> <e g> | d <g, d> <d' g> | <e g> <g cis> | a2 g4 fis e | % 22a
  fis4 g e fis8 r | <b, fis'>4 <d g> <e b'> <e ais> | b4. d8 cis b fis' d | r4 <d fis> <cis e b'> |
  <d fis d'>8 r d4 cis8 r | r4 <d fis> <c e b'> | <d f d'>8 r d4 cis8 r | % 23a
  <fis, cis'>4 <fis bis> <d' g> <cis fis>8 r |
  <g d'>4 <g cis> <ees' aes> <d g>8 r |
  ees4 g d g | ees d ees(d8) r | <g, d'>4 <bes ees> <c g'> <c fis> | % 23b
  <f, c'> <aes des> <bes f'> <bes e> |
  r4 <f aes c f>4 s | s2. | r4 <ges bes ees ges> <d' f ces' d> | s2. | s1 | % 24a
  s1*4 |
  s1 | fis4 g fis gis | fis4 4 4. eis8 | <fis, cis'>4 <a d> <b fis'> <b e> | % 25a
  <e, b'>4 <g c> <a e'> <a dis> | <e ais> <fis b>~<g b> ais8 r \key d \major | % 25b
  r4 <b d fis> <cis e b'> | <d fis d'>8 r s2 | r4 <b d fis> <cis e b'> |
  <d fis d'>8 r s4. r8 | <a dis>4 4 <f b> <g b e> | % 26a
  <a dis>4 4 <fis b> <g b fis'> | s1 |
  s4*5 | <b fis'>4 <d g> <e b> <e ais> | s2 <b e>4 <ais cis> | % 26b
  r4 \vo <b d>2.*2/3\laissezVibrer <a a'>4--\laissezVibrer | r2 r4 <a a'>8\repeatTie r8 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s2.*6 | s2.\pp | s2.*3 |
  s2.\mf s2 s2.\p s2 s4*5\mf | s1 s\p s s2.\mf | % 22
  s2.*2 s2.\mf s1\f s | s\p s s\mf s |
  s2.\f s s\ff s s1\omit\pp-\markup{\dynamic pp \italic subito} | s s\mf s s\omit\pp-\markup{\halign #RIGHT \italic subito \dynamic pp} |
  s1 s\mf s s\mf | s\p s s2.\pp s2.*2 | % 25
  s2. s1\pp s s\pp | s4*5 s1\p s s\pp s1*2 |
}

pianoLHone = \relative {
  \global
  r4 b'4(fis | g d e | b' g e | b' a) g | \appoggiatura {fis16 g} fis4(e d |
  cis4 d b) | \appoggiatura {b16 cis} b2(ais4) \clef bass | % 21b
  \vo <fis b d>2.~ | 8 r s2 | q2.~ | 8 r s2 |
  <fis g b>4 s2 | s4 ais | <fis g b>4 s2 | s4 ais | dis2 b8(cis) d4(b) | % 22a
  b8(cis d4) b cis8 r | \ov <d,, d'>4 <e e'> <g g'> <fis fis'> | % 22b
  <g g'> <e e'> <fis fis'> <fis, fis'> | \vo <fis'' b d>2.~ |
  q8 r <b,, b'>4(<g' g'>8) r | <fis' b d>2. | % 23a
  \ov <b,, b'>8 r <b' b'>4(<gis gis'>8) r \key c \major |
  <a, a'>4 <gis gis'> <a a'>(<a' a'>8) r |
  <bes bes'>4 <a, a'> <bes bes'>(<bes' bes'>8) r |
  \vo g'4 bes g8(a bes4) | d g,8(a) bes4(a8) r | \ov % 23b
  <bes,, bes'>4 <c c'> <ees ees'> <d d'> |
  <aes aes'> <bes bes'> <des des'> <c c'> |
  \vo <f' aes c>2 s4 \ov | <f, f'>8 r <aes aes'>4(<des des'>8) r | % 24a
  <bes ges' bes>4 <ees,, ees'> <ges ges'> |
  <ees' ees'>8 r <ges ges'>4(<ces ces'>8) r |
  <f aes bes>4_\markup\italic "beaucoup de pédale" <bes,, bes'>\laissezVibrer <fes'' aes ces> <aes ces d fes> |
  <f aes bes>4 <bes,, bes'> <fes'' aes ces> <aes ces d fes> | % 24b
  <bes des>4 <bes, bes'> <ges' a c> <f bes d>8 r |
  <ges bes>4 <bes, a'> <ges' c> <a ees'>8 r |
  \vo <fis gis b>4 s <f g b d> <b d f g> |
  <fis gis b>4 s <f gis b d> <b d f g> | % 25a
  cis4 ais d8(e eis4) | a,8(b cis4) d2 \ov | <a,, a'>4 <b b'> <d d'> <cis cis'> |
  <g g'>4 <a a'> <c c'> <b b'> | <fis fis'> <g g'> <e e'> <fis fis'>8 r | % 25b
  \key d \major \vo <fis'' b d>2.\laissezVibrer \ov |
  <b,, b'>8 r <b' b'>4(<g g'>8) r | \vo <fis' b d>2.\laissezVibrer |
  <b,, b'>8 r <b' b'>4(<g g'>8) r | <b b'>4(<fis fis'>) <g g'>(<d d'>) | % 26a
  <b b'>(<fis' fis'>) <d d'>(<g, g'>) |
  <<{\appoggiatura <e'' g>8 <e g>1 | s4*5 } \new Voice {\vth \appoggiatura b8 4(cis d e | fis g b d e8) r}>> |
  \ov <d,, d'>4 <e e'> <g g'> <fis fis'> | % 26b+
  \vo b4(cis8 d e fis g4) |
  s4 \crossStaff d2.\laissezVibrer | r2 r4 s8 r |
}

pianoLHtwo = \relative {
  \global \vt
  s2.*5 |
  s2.*2 | r4 <b,, b'>4 <g g'> | <b b'>8 r <b' b'>4(<g g'>) | % 21b
  r4 <b, b'>4 <g g'> | <b b'>8 r <b' b'>4(<g g'>) |
  r4 <b, b'> <g g'> | <b b'>~b' | r4 q <g, g'> | <b b'>~b' | b'(b,) e fis g | % 22a
  g4 e g fis8 r | s1*2 | r4 <b, b'> <g g'> |
  <b b'>8 r s2 | r4 q4 <g g'> | s2. | s1*2 | % 23a
  c4 d ees d | c ees c(d8) r | s1*2 |
  r4 <f,, f'> <aes aes'> | s2.*3 | s1 | % 24a
  s1*3 | r4 <cis cis'>2. |
  s4 <cis cis'>2. | a''4 cis, b' b | d,2 cis4 b | s1 | % 25a
  s1*2 | r4 <b, b'> <g g'> | s2. | r4 <b b'> <g g'> |
  s2. | s1*2 | <e e'>1~ | % 26a
  q1~8 r |
  s1 | g'4 fis e2 | % 26b
  <<{\vf <dis' fis b>1\laissezVibrer} \new Voice {\vt r4 <b,, b'>2.\laissezVibrer}>> | s2 r4 q8\repeatTie r |
}

#(set-global-staff-size 20)

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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \clef "bass"
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
        \new ChoirStaff <<
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
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
        \new ChoirStaff <<
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
%            \addlyrics \wordsSoloMidi
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
%            \addlyrics \wordsSoloMidi
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \addlyrics \wordsSoloMidi
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
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
%            \addlyrics \wordsSoloMidi
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
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
