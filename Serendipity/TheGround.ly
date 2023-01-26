\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Ground"
  subtitle    = \markup {"Based on chorale from" \italic "Sunrise Mass" "for Choir and String Orchestra"}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ola Gjeilo"
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
  \key g \major
  \time 3/4
}

TempoTrack = {
  \tempo 4=76
  s2.*28 |
  \set Score.tempoHideNote = ##t
  \tempo "poco rit."       4=72 s2. % 5b+3
  \tempo "a tempo"         4=76 s2.*19
  \tempo "rit."            4=70 s2.*2 % 7b+3
  \tempo "a tempo"         4=76 s2.*22 s2
  \tempo "poco meno mosso" 4=70 s4 s2.*2
  \tempo "a tempo"         4=76 s2.*7
  \tempo "rit."            4=70 s2.
  \tempo "a tempo"         4=76 s2. s4.
  \tempo "rit."            4=70 s4. s2.*4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "3a" } s2.*5
  \textMark \markup { \box \bold "3b" } s2.*5
  \textMark \markup { \box \bold "4a" } s2.*5
  \textMark \markup { \box \bold "4b" } s2.*5
  \textMark \markup { \box \bold "5a" } s2.*5
  \textMark \markup { \box \bold "5b" } s2.*5
  \textMark \markup { \box \bold "6a" } s2.*5
  \textMark \markup { \box \bold "6b" } s2.*5
  \textMark \markup { \box \bold "7a" } s2.*5
  \textMark \markup { \box \bold "7b" } s2.*5
  \textMark \markup { \box \bold "8a" } s2.*5
  \textMark \markup { \box \bold "8b" } s2.*5
  \textMark \markup { \box \bold "9a" } s2.*5
  \textMark \markup { \box \bold "9b" } s2.*5
  \textMark \markup { \box \bold "10a" } s2.*5
  \textMark \markup { \box \bold "10b" } s2.*5
  \textMark \markup { \box \bold "11a" } s2.*5
  \textMark \markup { \box \bold "11b" } s2.*4
}

dynamicsVoice= {
  s2.\p | s | s | s | s |
  s2. | s | s | s\p | s |
  s2. | s | s | s | s\< | % 4a
  s2. | s\mp | s | s | s |
  s2.*5 | % 5a
  s2. | s | s\< | s | s\mf |
  s2.*5 | % 6a
  s2.\< | s | s\f | s | s |
  s2.\mf | s | s\< | s | s | % 7a
  s2. | s | s | s | s |
  s2.\ff | s | s | s | s | % 8a
  s2.*5 |
  s2. | s | s\> | s | s | % 9a
  s2.\mf | s\> | s\p | s | s |
  s2. | s | s2 s4\mf | s2. | s\> | % 10a
  s2.\mp | s | s | s | s\> |
  s2. | s | s | s\pp | s | % 11a
  s2.*4 |
}

sopranoOne = \relative {
  \global \set Staff.printKeyCancellation = ##f
  s2.*59 \voiceOne f''4 g4. ees8 |
  aes4(g f) | s2. | s | s | s | % 9a
}

sopranoTwo = \relative {
  \global \set Staff.printKeyCancellation = ##f \oneVoice
  g'2.~( | g~ | g~ | g | d~
  d2. | e | d2~8) r \section | g2 d8 g | a4 b4. g8 |
  c4(b g) | e2. | 2(g4 | d2) 4 | e fis(g) | % 4a
  a2. | g2(d8 g) | a4 b4. g8 | c4(b a) | g2. |
  g2 4 | a(g fis | g2.) | g | g~ | % 5a
  g2.~ | g~ | g~ | g2~8 r \section \key b \major | b2 fis8(b) |
  cis4 dis4. gis8 | e4(dis b) | gis2. | 2(b4) | fis2 4 | % 6a
  gis4 ais b | cis2. | b2 fis8(b) | cis4 dis4. b8 | e4(dis cis) |
  b2 4 | b2.~ ( | 4 ais2) | gis2 4 | 4(ais) b | % 7a
  cis2.~ ( | 4 b2~ | 4 ais) gis | fis2. | f2 bes4( \section \key ees \major |
  ees2) bes8(ees) | f4 g4. ees8 | aes4(g ees)  c2 4 | 2(ees4 | % 8a
  bes2) g4 | aes(g aes) | bes2. | ees2 bes8(ees) | \voiceTwo 2~8 8 |
  ees2(f4) \oneVoice | ees2. | 4(d c) | bes2 aes4 | g4(f2) | % 9a
  ees2.~ | 2. | 2.~ | 2.~ | 2.~ |
  ees2.~ | 2.~ | 2 \breathe 8 f | g2.( | ees2) c4 \section | % 10a
  ees2.~ | 2. | 2.~ | 2. | g2.~ ( |
  g2 f4 | aes2. | ees) | 2.~ | 2.~ | % 11a
  ees2. | R | R | R |
  \bar "|."
}

wordsSopOne = \lyricmode {
  De -- i, _ _
  
}

wordsSopTwo = \lyricmode {
  Mmm __
  Ple -- ni sunt cae -- li et ter -- ra,
  glo -- ri -- a tu -- a.
  O -- san -- na,
  O -- san -- na in ex -- cel -- sis,

  Mmm __
  Be -- ne -- dic -- tus qui ve -- nit
  in __ no -- mi -- ne Do -- mi -- ni,
  Be -- ne -- dic -- tus qui ve -- nit.
  O -- san -- na,
  O -- san -- na in __ ex -- cel -- sis.
  Ag -- nus __ De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  Ag -- nus __ Dei __ qui tol -- lis pec -- ca -- ta mun -- di. __
  Mmm __
  Do -- na no -- bis pa -- cem, __ pa -- cem. __
}

wordsSopMidi = \lyricmode {
  "Mmm " 
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nglo" ri "a " tu "a. "
  "\nO" san "na, "
  "\nO" san "na " "in " ex cel "sis, "

  "\nMmm " 
  "\nBe" ne dic "tus " "qui " ve "nit "
  "\nin "  no mi "ne " Do mi "ni, "
  "\nBe" ne dic "tus " "qui " ve "nit. "
  "\nO" san "na, "
  "\nO" san "na " "in "  ex cel "sis. "
  "\nAg" "nus "  De "i, "
  "\nqui " tol "lis " pec ca "ta " mun "di, "
  "\nAg" "nus "  "Dei "  "qui " tol "lis " pec ca "ta " mun "di. " 
  "\nMmm " 
  "\nDo" "na " no "bis " pa "cem, "  pa "cem. " 
}

alto = \relative {
  \global \set Staff.printKeyCancellation = ##f \oneVoice
  b2.~ ( | b | c~ | c | b~ |
  b 2. | c~ | 2~8) r \section | d2 8 8 | e4 g4. 8 |
  g2(d4) | 4(c2) | 2 4 | b2. | c | % 4a
  d2(fis4) | d2. | e4 g2 | g(d4) | b2 fis'4 |
  e2 d4 | c2( d4~ | 4 c2) | d2. | 2.~ ( | % 5a
  <c d>2.~ | q~ | d2.~ | d2 8) r \section \key b \major | dis2 4 |
  <cis e>4 fis2 | gis4 fis2~ | 4 e2 | <<{\voiceOne e2.} \new Voice {\voiceTwo e2(b4)}>> \oneVoice  | dis2 4 | % 6a
  e4 4 4 | <<{\voiceOne fis2(e4)} \new Voice {\voiceTwo cis2.}>> \oneVoice | dis2 4 | e fis fis | gis(fis2) |
  dis2 4 | cis(dis e | dis cis2) | fis4(e2) | 2. | % 7a
  fis2.~ | 4 e(dis) | cis2 4 | b(cis dis) | c(d <ees f>) \section \key ees \major |
  <ees g>2 4 | <f aes> <g bes>2 | % 8a
  <<{\voiceOne c4(bes2) | bes4(aes2) | aes2.} \new Voice {\voiceTwo aes4(g ees) | 2. | f2(aes4)}>> \oneVoice |
  ees2 4 | 2. | <<{\voiceOne f2.} \new Voice {\voiceTwo ees4(c d)}>> \oneVoice <ees g>2 4 <f aes>4 <g bes>2 |
  <<{\voiceOne c4 bes2} \new Voice {\voiceTwo aes4 g(f)}>> \oneVoice | <ees g>2. | aes | ees4 2-> ~ | 4 4(d) | % 9a
  c2.~ | 2. | ees2.~ | ees~ | ees~ |
  ees2.~ | 2.~ | 2 \breathe 8 f | <ees g>2.( | <c ees>2) c4 \section | % 10a
  bes2.~ | bes | c2.( | bes2.) | ees2.~ ( |
  ees2.~ | ees | c) | bes2.~ | bes~ | % 11a
  bes2. | R2. | R | R |
  \bar "|."
}

words = \lyricmode {
  Mmm __
  Ple -- ni sunt cae -- li et ter -- ra,
  glo -- ri -- a tu -- a.
  O -- san -- na,
  O -- san -- na in ex -- cel -- sis,

  Mmm __
  Be -- ne -- dic -- tus qui ve -- nit
  in __ no -- mi -- ne Do -- mi -- ni,
  Be -- ne -- dic -- tus qui ve -- nit.
  O -- san -- na,
  O -- san -- na in __ ex -- cel -- sis.
  Ag -- nus __ De -- i,
  tol -- lis pec -- ca -- ta mun -- di,
  Ag -- nus __ De -- i __ qui tol -- lis pec -- ca -- ta mun -- di. __
  Mmm __
  Do -- na no -- bis pa -- cem, __ pa -- cem. __
}

wordsMidi = \lyricmode {
  "Mmm " 
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nglo" ri "a " tu "a. "
  "\nO" san "na, "
  "\nO" san "na " "in " ex cel "sis, "

  "\nMmm " 
  "\nBe" ne dic "tus " "qui " ve "nit "
  "\nin "  no mi "ne " Do mi "ni, "
  "\nBe" ne dic "tus " "qui " ve "nit. "
  "\nO" san "na, "
  "\nO" san "na " "in "  ex cel "sis. "
  "\nAg" "nus "  De "i, "
  "\ntol" "lis " pec ca "ta " mun "di, "
  "\nAg" "nus "  De "i "  "qui " tol "lis " pec ca "ta " mun "di. " 
  "\nMmm " 
  "\nDo" "na " no "bis " pa "cem, "  pa "cem. " 
}

tenor = \relative {
  \global \set Staff.printKeyCancellation = ##f
  d2.~ ( | d | e~ | e | g~ |
  g2. | g~ | 2~8) r | \section b2 8 8 | c4 d4. 8 |
  e4(d g,) | 2. | a2 <e g>4 | g2. | <e a> | % 4a
  <<{\voiceOne a2.} \new Voice {\voiceTwo fis2(a4)}>> \oneVoice | b2. | 4 d2 | e4(d a) | g2 4 |
  g2 4 <<{\voiceOne e4(g a | b a2)} \new Voice {\voiceTwo fis4(s s | e2.)}>> \oneVoice | <e b'>2. | q( | % 5a
  <e g>2.~ | q <g b>2.~ | 2~8) r \section \key b \major | fis2 4 |
  gis4 b b | 2. | 2. | cis2(gis4) | b2 4 | % 6a
  gis4 4 4 | ais2(gis4) | fis2 4 | gis b b | <<{\voiceOne b2(cis4)} \new Voice {\voiceTwo b4(fis2)}>> \oneVoice
  b2 4 | 2.~( | 4 ais2) | b2. | b | % 7a
  cis2.~ | 4 b2 | 2 4 | dis,4(e fis) | <<{\voiceOne ees(aes2)} \new Voice {\voiceTwo ees4(f bes)}>> \oneVoice \section \key ees \major |
  bes2 4 | c4 ees2 | 2(bes4) | c2. | <<\voiceOne c2. \new Voice \voiceTwo {aes2(c4)}>> \oneVoice % 8a
  bes2 c4 | aes2. | <f bes> | bes2 4 | <c ees>4 <bes es>2 |
  ees4 4(d) | c2. | <<{\voiceOne ees4(d c)} \new Voice {\voiceTwo c2(aes4)}>> \oneVoice <g bes>2 aes4 | bes4(aes2) | % 9a
  aes2.~ | aes | aes2.~ | 2.~ | 2.~ |
  aes2.~ | 2. ~ | 2 \breathe ees8 f | c'2.( | aes2) 4 \section | % 10a
  g2.~ | g | aes2.~ | aes | bes2.~( |
  bes2. | c | aes) | g2.~ | g~ | % 11a
  g2. | R | R | R |
  \bar "|."
}

bass = \relative {
  \global \set Staff.printKeyCancellation = ##f \oneVoice
  g,2.~ | g~ | g~ | g~ | g~ |
  g2.~ | g~ | g2~8 r | \section g'2 8 8 | 4 4. 8 |
  g2(b,4) | c2(b4) a2 c4 | <g d'>2. | a2. | % 4a
  d2. | g | g2 4 | 2(fis4) | e2 d4 |
  c2 b4 | <<{\voiceOne a(e' fis | d e2)} \new Voice {\voiceTwo a,4(c e | g,2.)}>> \oneVoice | <g d'>2.  q~( | % 5a
  g2.~ | g | <g d'>~ | 2~8) r \section \key b \major  b2 4 |
  b2 4 | 4 4(dis) | e2(dis4) | cis2(e4) | <b fis'>2 4 | % 6a
  cis4 4 4 | fis2. | b,2 4 | 2 4 | 2(ais4) |
  gis'2(fis4) | e2 cis4  fis2(dis4) | e2(dis4) | cis2(b4) | % 7a
  <ais fis'>2. | <gis e'> | <fis e'>2 4 | b2. | bes2. \section \key ees \major |
  <ees g>2 4 | <ees aes> <ees bes'>2 | <<{\voiceOne c'4(bes ees,) | 2.} \new Voice {\voiceTwo ees2(g,4) aes2(g4)}>> \oneVoice f'2(<aes, ees'>4)  % 8a
  <ees' g>2 <c g'>4 | <f, c'>2.  bes | <ees g>2 4 | ees4 4 4 |
  <<{\voiceOne c'4(bes2)} \new Voice {\voiceTwo ees,2(d4)}>> \oneVoice <c g'>2. | <aes ees'> | <g ees'>2 <c ees>4 <<{\voiceOne g'4(f2)} \new Voice {\voiceTwo bes,2.}>> \oneVoice | % 9a
  <aes ees'>2.~ | q | aes'2.~ | aes~ | aes~ |
  aes2.~ | aes~ | 2 \breathe ees8 f | <c g'>2.~ | 2 4 | % 10a
  ees2.~ | 2. | 2.~ | 2. | 2.~ |
  ees2.~ | 2.~ | 2. | <ees, ees'>2.~ | q~ | % 11a
  q2. | R | R | R |
  \bar "|."
}

bd = {<b g'>8 <d b'> <b g'>}
ce = \absolute {<c' g'>8 <e' c''> <c' g'>}
               
pianoRHone = \relative {
  \global \set Staff.printKeyCancellation = ##f
  \bd \bd |
  \bd \tuplet 4/3 {\once \override TupletNumber.text = #"2" <b d b'>4-> <a d g>->} |
  <a e c'>4-> <c g'>8 \ce | \ce \ce | \bd \bd |
  \bd \tuplet 4/3 {\once \override TupletNumber.text = #"2" <b d b'>4-> <a d g>->} | % 3b
  <c e c'>4-> <c g'>8 \ce | \ce \ce \section | <b g'>2. | <c' a'>8 <e c'> <d b'> <g d'> <d b'> <g d'> |
  <e c'>8 <g e'> <d b'> <g d'> <d b'> <g d'> | % 4a
  \repeat unfold 6 {<c, g'>8 <e c'>}
  \repeat unfold 3 {<b g'>8 <d b'>}
  \repeat unfold 6 {<a e'>8 <c a'>}
  \repeat unfold 3 {<b g'>8 <d b'>} | % 4b+
  \repeat unfold 3 {<a e'>8 <c a'>}
  <c g'> <e c'> <b g'> <d b'> <a fis'> <d a'> |
  <g, e'>8 <b g'> <g e'> <b g'> <fis d'> <b fis'> |
  <e, c'>8 <g e'> <e c'> <g e'> <d b'> <g d'> | % 5a
  <c, e a c>4 <b e g b> <a d fis a> |
  g'2. |
  <b, g'>8 <d b'> <b g'> q <d b'> <b g'> |
  \bd \tuplet 4/3 {\once \override TupletNumber.text = #"2" <g' b g'>4-> <fis a fis'>->} |
  <e g e'>4-> <c g'>8 \ce | % 5b
  \ce \tuplet 4/3 {\once \override TupletNumber.text = #"2" \acciaccatura d'8 <e, g e'>4->^\markup\tiny "(acciaccatura on the beat)" <d g d'>->} |
  <b d b'>4-> <b g'>8 \bd |
  \bd \bd | \section \key b \major
  b'2 <b, fis'>8 <dis b'> |
  <b' cis>4 <b dis>4. b8 | % 6a
  <e, e'>4 <dis dis'> <fis fis'>~ |
  q4 <e e'>2 |
  cis'8 gis cis dis e cis |
  dis8 cis b fis dis fis |
  cis8 dis e gis cis e | % 6b
  fis8 cis ais' b cis ais |
  b,8 fis' b fis b dis |
  e8 cis dis b \ottava #1 fis' b |
  cis8 b16 ais b8 fis cis fis | \ottava #0
  b,8^\markup\italic loco dis, gis b ais fis | % 7a
  cis8 b' dis, b' e, b' |
  <b, fis'> <dis b'> <ais fis'> <cis ais'> <ais fis'> <cis ais'> |
  <b, gis'>8 <e b'> q <gis e'> q <b gis'> |
  <b, gis'>8 <e b'> q <gis e'> q <b gis'> |
  fis'8 gis ais cis fis cis | % 7b
  e,8 fis gis b e dis |
  cis,8 fis gis ais b ais |
  <dis,, fis b>4 <cis e fis cis'> <dis fis b dis> |
  <c ees bes' c>4-> <d f bes d>-> <bes' ees f bes>-> \section \key ees \major |
  <ees g ees'>2-> <bes bes'>8 <ees ees'> | % 8a
  <f aes ees' f>4 <g bes ees g>4. <ees ees'>8 |
  <aes c ees aes>4 <g bes ees g> <ees g bes ees> |
  <c ees bes' c>2. |
  <c f aes c>2 <ees aes c ees>4 |
  <bes ees g bes>2 <g c ees g>4 | % 8b
  <aes c ees aes>4 <g c ees g> <aes c ees aes> |
  <bes ees f bes>2. |
  <ees g ees'>2 <bes bes'>8 <ees ees'> |
  <f aes ees' f>4 <g bes ees g>4. <ees ees'>8 |
  <c ees c'>4 <bes ees bes'>8 <ees ees'> \tuplet 3/2 {<f bes f'> <ees ees'> <d d'>} | % 9a
  <ees g c ees>2 <d d'>8 <bes bes'> |
  <c ees aes c>2 <c ees c'>8 <d d'> |
  <ees bes' ees>4 <bes ees bes'>8 <g g'> <ees aes ees'> <aes aes'> |
  <g bes ees g>4 bes2 |
  <ees,, c' ees>4 aes8 c ees aes | % 9b
  c ees aes <ees c'> q <aes ees'> |
  d8 bes ees,4 8 f |
  d4 ees8 aes c ees |
  d bes ees,4 g8 aes |
  g8 ees d aes' c ees | % 10a
  d8 bes ees,4 8 f |
  d2 \breathe <ees,, ees'>8^\markup\bold "poco meno mosso" <f f'> |
  <g c ees g>2. |
  <c ees>2 <aes c>4 \section |
  <g ees'>8 <bes g'> <g ees'> q <bes g'> <g ees'> | % 10b
  <g ees'>8 <bes g'> <g ees'> \tuplet 4/3 {\once \override TupletNumber.text = #"2" <g' bes g'>4-> <f bes f'>->} |
  <aes c aes>4-> <aes, ees>8 q <c aes'> <aes ees'> |
  <aes ees'>8 <c aes'> <aes ees'> \tuplet 4/3 {\once \override TupletNumber.text = #"2" <g' aes g'>4-> <f bes f'>->} |
  q4-> <g, es'>8 8 <bes g'> <g ees'> |
  <g ees'>8 <bes g'> <g ees'> \tuplet 4/3 {\once \override TupletNumber.text = #"2" <g bes g'>4-> <f bes f'>->} | % 11a
  <aes c aes'>4 <aes ees'>8 8 <c aes'> <aes ees'> |
  <aes ees'>8 <c aes'> <aes ees'> \tuplet 4/3 {\once \override TupletNumber.text = #"2" <aes c aes'>4-> <g bes g'>->} |
  q4 bes8 ees g bes |
  ees8 g bes <bes ees g> <bes ees a> <bes ees bes'>
  <bes ees g>2.\arpeggio ~ | q~ | q~ | 4 r r | % 11b
  \bar "|."
}

pianoRHtwo = \relative {
  \global \set Staff.printKeyCancellation = ##f
  s2.*22 |
  <b d>4 <a c>2 | % 5a+
  s2.*6 |
  <b dis>4 b8 dis s4 | % 5b+4
  cis8 e dis fis dis \partCombineApart b' | % 6a
  b8 gis b fis fis b |
  gis8 b gis b gis b |
  s2.*20 |
  r4 <ees, c'>8 <aes ees'> <ees c'> <aes ees'> | % 8a+4
  s2.*3 |
  r4 <c, f bes c> <d f bes d> | % 9b++
  s2.*6 |
  s4 <aes ees' f> <aes d f> | % 9a+4
  s2. | s | f''4 c c~ | c ees ees8 aes | f4 c d~ | % 9b
  d4 c ees8 aes | f4 c c~ | 2 s4 | s2. | ees,,4. 8~4 | % 10a
  s2.*5 | % 10b
  s2.*5 | % 11a
  s2.*4 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mp | s | s | s | s |
  s2. | s | s4 s2\> | s2.\p | s\p |
  s2.\< | s\mp\> | s\p\< | s\mp\> | s\p\< | % 4a
  s2.\mp\> | s\p\< | s\mp\> | s\p\< | s\mp\> |
  s\p\< | s\mp | s\> | s\mp | s | % 5a
  s2. | s | s\< | s | s\mf |
  s2. | s | s | s | s | % 6a
  s2.\< | s | s\f | s | s |
  s2.\> | s\mf | s\< | s | s | % 7a
  s2. | s | s | s\omit\cresc-\markup\italic "molto cresc." | s |
  s2.\ff | s | s | s | s | % 8a
  s2.*5 |
  s2. | s | s | s4 s2\> | s2. | % 9a
  s2.\mf\> | s | s\p | s | s |
  s2. | s | s2 s4\mf | s2. | s2\> s4\! | % 10a
  s2.\mp | s | s | s | s\> |
  s2. | s | s | s\p | s4 s2\pp | % 11a
  s2.*4 |
}

pianoLHone = \relative {
  \global \set Staff.printKeyCancellation = ##f
  <g, d'>8_\markup\italic "Apply sustain pedal liberally" g' q q g q |
  q8 g q q g q | <g, e'> g' q q g q | q g q q g q | <g, d'> g' q q g q |
  <g, d'>8 g' q q g q | <g, e'> g' q q g q | q g q q g q \section | <g, d'>2. | <c' g'>8 <e a> <b g'> <d b'> <b g'> <d b'> | % 3b
  \repeat unfold 3 {<c g'>8 <e c'>} | % 4a
  \repeat unfold 3 {<g, e'>8 <c g'>} |
  <a e'>8 <c a'> <a e'> <c a'> <g e'> <c g'> |
  \repeat unfold 3 {<g d'>8 <b g'>} |
  \repeat unfold 3 {<e, c'>8 <a e'>} |
  \repeat unfold 3 {<fis d'>8 <a fis'>} | % 4b
  \repeat unfold 3 {<g d'>8 <b g'>} |
  <g e'> <c g'> <g e'> <b g'> <g d'> <b g'> |
  <g e'>8 <c g'> <g d'> <b g'> <fis d'> <a fis'> |
  <e b'>8 <g e'> <e b'> <g e'> <d b'> <g d'> |
  <c, g'>8 <e c'> <c g'> <e c'> <b g'> b' | % 5a
  <a, e'>8 <c a'> <c e> g' <d fis>4 |
  g2. | g,4 <g d'>8 8 g' q | q8 g q q g q |
  <g, e'>8 g' q q g q | q g q q g q | q g q q g q | q g q q g q |
  \section \key b \major b,,8 fis' dis' fis r4 |
  gis8 b fis b fis b | gis b fis b b, fis' | e, b' e fis gis b | cis gis cis dis e cis | dis cis b fis dis fis | % 6a
  cis8 dis e gis cis e | fis cis \ottava #1 ais' b cis a \ottava #0 | b,, fis' b fis b dis | cis ais dis b \ottava #1 fis' b | cis b16 ais b8 fis cis fis \ottava #0 |
  b,8 dis, gis b ais fis | cis b' dis, b' e, b' | <fis dis'> <b fis'> <fis cis'> <ais fis'> <dis, b'> fis' | e, gis gis b b e | cis, gis' gis b b e | % 7a
  fis,8 gis ais cis fis cis | e, fis gis b e dis | cis, fis gis ais b ais | <fis b> b, q b q b | <bes, bes'> bes' <f' bes> bes, q bes \section \key ees \major |
  <ees,, ees'>8-> <ees' ees'> <ees' bes'> <g ees'> <ees bes'> <g ees'> | % 8a
  <ees c'>8 <aes ees'> <ees bes'> <g ees'> <ees bes'> <g ees'> |
  <ees c'>8 <aes ees'> <ees bes'> <g ees'> <g,, g'>-> <ees'' bes'> |
  <aes,, aes'>8-> <ees'' c'> <c aes'> <ees c'> <g,, g'>4-> |
  <f f'>8-> <f'' c'> <aes f'> <f c'> <aes,, aes'>-> <ees'' c'> |
  <ees,, ees'>8-> <ees'' bes'> <g ees'> <ees bes'> <c,, c'>-> <ees'' c'> | % 8b
  <f,, f'>8-> <f'' c'> <aes ees'> <f c'> <aes ees'> <f c'> |
  <bes,, bes'>-> bes' <f' bes> bes, q bes |
  <ees,, ees'>4-> <ees'' bes'>8 <g ees'> <ees bes'> <g ees'> |
  <ees c'>8 <aes ees'> <ees bes'> <g ees'> <ees bes'> <g ees'> |
  <ees c'>8 <aes ees'> <ees bes'> <g ees'> <d bes'> <f d'> | % 9a
  <c,, c'>8-> <ees'' c'> <g ees'> <ees c'> d' bes |
  <aes,, aes'>8-> <ees'' c'> <aes ees'> <ees c'> <aes ees'> <ees c'> |
  <g,, g'>8-> <ees'' bes'> <g ees'> <ees bes'> <c, c'> <ees' aes ees'> |
  <bes, bes'> bes' f' bes, f' bes, |
  aes,8 ees' c' ees aes c \clef treble | % 9b
  ees8 aes c8 r r4 |
  \voiceOne \repeat unfold 5 {r8 aes bes aes bes aes |}
  r8 aes8 bes4 r \oneVoice \clef bass | % 10a++
  c,,,8 g' c ees g c |
  aes,,8 ees' aes r r4 \section |
  ees4 <ees bes'>8 8 ees' q | % 10b
  \repeat unfold 2 {q ees q} |
  \repeat unfold 4 {<ees, c'> ees' q} |
  \repeat unfold 4 {<ees, bes'>8 ees' q} |
  \repeat unfold 4 {<ees, c'>8 ees' q} |
  <ees,, ees'>8 bes'' ees g bes ees | \clef treble
  g8 bes ees g a bes |
  <bes, ees g>2.\arpeggio ~ | q~ | q~ | q4 r r |
}

pianoLHtwo = \relative {
  \global \voiceTwo \set Staff.printKeyCancellation = ##f
  s2.*23
  g,,2.-> ~ | 2. | % 5a++
  s2.*5
  b'4 2 | 2 dis,4 | s2. | s | s | % 6a
  s2.*32 |
  ees''2. | ees | ees | % 9b++
  ees2. | ees | ees | s | s | % 10a
  ees,,,2.~ | ees |
  s2.*12
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine #'(2 . 88) \sopranoOne \sopranoTwo
            \new NullVoice = "alignerS1" \sopranoOne
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto "alignerS1" \wordsSopOne
            \new NullVoice = "alignerS2" \sopranoTwo
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano \with {\consists Metronome_mark_engraver}<<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      #(layout-set-staff-size 16)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        \remove Metronome_mark_engraver
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
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
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine #'(2 . 88) \sopranoOne \sopranoTwo
            \new NullVoice = "alignerS1" \sopranoOne
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto "alignerS1" \wordsSopOne
            \new NullVoice = "alignerS2" \sopranoTwo
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano \with {\consists Metronome_mark_engraver}<<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        \remove Metronome_mark_engraver
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-bass"
  \paper {
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
            printPartCombineTexts = ##f
            \magnifyStaff #4/7
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine #'(2 . 88) \sopranoOne \sopranoTwo
            \new NullVoice = "alignerS1" \sopranoOne
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto "alignerS1" \wordsSopOne
            \new NullVoice = "alignerS2" \sopranoTwo
            \addlyrics {\tiny \wordsSopTwo}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \magnifyStaff #4/7
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \magnifyStaff #4/7
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano \with {\consists Metronome_mark_engraver}<<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \magnifyStaff #4/7
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \magnifyStaff #4/7
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        \remove Metronome_mark_engraver
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \partCombine #'(2 . 88) \sopranoOne \sopranoTwo
            \new NullVoice = "alignerS2" \sopranoTwo
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano \with {\consists Metronome_mark_engraver}<<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \partCombine #'(2 . 88) \sopranoOne \sopranoTwo
            \new NullVoice = "alignerS2" \sopranoTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics \wordsMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano \with {\consists Metronome_mark_engraver}<<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \partCombine #'(2 . 88) \sopranoOne \sopranoTwo
            \new NullVoice = "alignerS2" \sopranoTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \new Voice \tenor
            \addlyrics \wordsMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano \with {\consists Metronome_mark_engraver}<<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \partCombine #'(2 . 88) \sopranoOne \sopranoTwo
            \new NullVoice = "alignerS2" \sopranoTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \bass
            \addlyrics \wordsMidi
          >>
        >>
        \new PianoStaff = piano \with {\consists Metronome_mark_engraver}<<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
