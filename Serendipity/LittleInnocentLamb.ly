\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title       = "Little Innocent Lamb"
  composer    = "Negro Spiritual"
  arranger    = "Coll. & Arr. Marchall Bartholomew"

  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 2/2
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "138a" } s4 s1*2
  \textMark \markup { \box \bold "138b" } s1*3
  \textMark \markup { \box \bold "138c" } s1*3
  \textMark \markup { \box \bold "138d" } s1*3
  \textMark \markup { \box \bold "139a" } s1*3
  \textMark \markup { \box \bold "139b" } s1*3
  \textMark \markup { \box \bold "139c" } s1*3
  \textMark \markup { \box \bold "139d" } s1*3
  \textMark \markup { \box \bold "140a" } s1*3
  \textMark \markup { \box \bold "140b" } s1*3
  \textMark \markup { \box \bold "140c" } s1*3
  \textMark \markup { \box \bold "140d" } s1*3
  \textMark \markup { \box \bold "140e" } s1*3
  \textMark \markup { \box \bold "141a" } s1*2
  \textMark \markup { \box \bold "141b" } s1*2
  \textMark \markup { \box \bold "141c" } s1*4 s2.
  \textMark \markup { \box \bold "141d" } s4 s1*3
  \textMark \markup { \box \bold "141e" } s1*3
  \textMark \markup { \box \bold "142a" } s1*2
  \textMark \markup { \box \bold "142b" } s1*3
  \textMark \markup { \box \bold "142c" } s1*2
  \textMark \markup { \box \bold "142d" } s1*2
  \textMark \markup { \box \bold "142e" } s1*2
  \textMark \markup { \box \bold "143a" } s1*2
  \textMark \markup { \box \bold "143b" } s1*3
  \textMark \markup { \box \bold "143c" } s1*2
  \textMark \markup { \box \bold "143d" } s1*2
  \textMark \markup { \box \bold "143e" } s1*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro Moderato" 2=72
}

nl = { \bar "||" \break }

apart = \partCombineApart
auto  = \partCombineAutomatic
chord = \partCombineChords

soprano = \relative {
  \autoBeamOff \dynamicUp
  r4 | R1 | R1 |
  gis'8\p 8 b b b4 4 | cis8 e4 b8~4 r | R1 |
  R1 | gis8\p 8 b b b4 a | cis8 dis4 e8~4. r8 \section \sectionLabel \markup\bold "Verse 1"|
  \apart e8\mf 8 8 r r2 | R1 | \auto gis,8\p 8 b b b4 b |
  cis8 e4 b8~8 r \apart b4\mf | e8 8 8 8~4 r | \auto R1 | % 139a
  gis,8\p 8 b b b4 a | cis8 dis4 e8~4 \section \sectionLabel \markup\bold Refrain r | R1 |
  R1 | gis,8\p 8 b b b4 4 | cis8 e4 b8~4 r |
  R1 | R | gis8\p 8 b b b4 a |
  cis8 dis4 e8~4. r8 \section \sectionLabel \markup\bold "Verse 2" | \apart e8 8 4~8 b4 8 | cis8 8 8 gis~4 r | % 140a
  \auto gis8\p 8 b b b4 b | cis8 dis4 b8~8 r \apart r4 | R1 |
  R1 | \auto gis8\p 8 b b b4 a | cis8 dis4 e8~8 r e,\pp fis |
  gis8 b4 cis8~8 b gis\pp fis | gis8(e4.) r2 | cis'8 e4 8~8 cis e4 |
  \apart cis8(b4.~)b r8 | \auto a8\omit\p-\markup{\halign#RIGHT {\italic sempre \dynamic p}} dis4 8~8 cisis dis4 | dis2.~8 r |
  b8 e4 8~8 cis e(cis) | \apart e2 r4 e,8\cresc fis | % 141a
  gis8 b4 cis8~8 b gis fis\omit\mf | gis(e4.) r2 |
  \auto cis'8\mf e4 8~8 cis e4 | cis8(b4) r8 e4\f fis | g2.-- r4 | fis2.-- r4 | e2.-- \section \sectionLabel \markup\bold "Verse 3"
  \apart b4\mf | e4 e b b | cis8 4 gis8~4 r | \auto gis8\p 8 b b b4 b |
  cis8 e4 b8~8 r8 r4 | \apart R1 | R |
  \auto gis8\p 8 b b b4 a | cis8 dis4 e8~4 \section \sectionLabel \markup\bold Refrain r4 | % 142a
  R1 | R | gis,8\p 8 b b b4 b |
  cis8 e4 b8~4 r | R1 |
  R1 | gis8\p 8 b b b4 a |
  cis8 dis4 e8~8 r e,\pp fis | gis b4 cis8~8 b gis fis |
  gis8(e4.) r2 | cis'8 e4 8~8 cis e4 | % 143a
  cis8(b4.~)b4. r8 | a8-\omit\pp-\markup{\halign #RIGHT {\italic sempre \dynamic pp}} dis4 8~8 cisis dis4 | 2.~8 r |
  b8 e4 8~8 cis e(cis) | \apart e2 r4 e,8\cresc fis |
  gis8 b4-- c8--~8 b gis\omit\mf fis | gis(e4.) r2 |
  \auto cis'8 e4 8~8 cis e4 | cis8(b4) r8 e4\omit\f-\markup{\dynamic f \italic allarg.} fis | gis2.-- r4 | fis2.-- r4 e2.--
}

alto = \relative {
  \autoBeamOff \dynamicDown
  r4 | R1 | R |
  gis'8\omit\p 8 8 8 fis4 gis | a8 4 b8~4 r | R1 |
  R1 | gis8\omit\p 8 dis dis gis4 fis | b8 a4 gis8~4. r8 \section |
  R1 | cis8\mf 8 8 8 gis4 r | gis8\omit\p 8 8 8 fis4 gis |
  a8 4 gis8~8 r8 r4 | R1 | R | % 139a
  gis8\omit\p 8 b b gis4 fis | b8 a4 gis8~4 \section r4 | R1 |
  R1 | gis8\omit\p 8 8 8 fis4 gis | a8 4 gis8~4 r |
  R1 | R | gis8\omit\p 8 b b gis4 fis |
  b8 a4 gis8~4. r8 \section R1 | R | % 140a
  gis8\omit\p 8 8 8 fis4 gis | a8 4 gis8~8 r b4\mf | e8 8 8 8~8 b b b |
  cis8 b gis e~8 r r4 | gis8\omit\p 8 b b gis4 fis | b8 a4 gis8~8 r e\omit\pp fis |
  gis8 b4 cis8~8 b gis\omit\pp fis | gis(e4.) r2 | a8 4 8~8 8 4 |
  gis8 b4 e8~8 cis b4 | a8\omit\p 4 8~8 8 4 | 2.~8 r |
  b8 a4 b8~8 a b(a) | gis\cresc b4 cis8~8 b gis fis | % 141a
  e8 r e'2\omit\mf-\markup{\dynamic mf \italic "con spirito"} 4 | 8 8 8 8~2 |
  a,8 4 8~8 8 4 | 8(gis4) r8 e'4\omit\f 4 | 2. r4 | cis2(dis4) r | b2. \section
  r4 | R1 | R | gis8\omit\p 8 8 8 fis4 gis |
  a8 4 gis8~8 r r4 | e'8\omit\f^\markup{\halign #RIGHT {\dynamic f \italic "con brio"}} 4 8~4 b8 8 | cis b gis e~2 |
  gis8\omit\p 8 b b gis4 fis | b8 a4 gis8~4 \section r4 | % 142a
  R1 | R | gis8\omit\p 8 8 8 fis4 gis |
  a8 4 gis8~4 r | R1 |
  R1 | gis8\omit\p 8 b b gis4 fis |
  b8 a4 gis8~8 r e\omit\pp e | gis b4 cis8~8 b gis fis |
  gis8(e4.) r2 | a8 4 8~8 8 4 | % 143a
  gis8 b4 e8~8 cis b4 | a8\omit\pp 4 8~8 8 4 | 2.~8 r |
  b8 a4 b8~8 a b(a) | gis\cresc b4 cis8~8 b gis fis |
  e8 r e'2\omit\mf-\markup{\dynamic mf \italic "con spirito"} 4 | 8~8 8 8~2 |
  a,8 4 8~8 8 4 | 8(gis4) r8 e'4\omit\f 4 | 2.-- r4 | cis2--(dis4) r | b2.--
}

altoSep = \relative {
  \autoBeamOff \dynamicUp
  r4 | R1 | R |
  gis'8\p 8 8 8 fis4 gis | a8 4 b8~4 r | R1 |
  R1 | gis8\p 8 dis dis gis4 fis | b8 a4 gis8~4. r8 \section |
  R1 | cis8\mf 8 8 8 gis4 r | gis8\p 8 8 8 fis4 gis |
  a8 4 gis8~8 r8 r4 | R1 | R | % 139a
  gis8\p 8 b b gis4 fis | b8 a4 gis8~4 \section r4 | R1 |
  R1 | gis8\p 8 8 8 fis4 gis | a8 4 gis8~4 r |
  R1 | R | gis8\p 8 b b gis4 fis |
  b8 a4 gis8~4. r8 \section R1 | R | % 140a
  gis8\p 8 8 8 fis4 gis | a8 4 gis8~8 r b4\mf | e8 8 8 8~8 b b b |
  cis8 b gis e~8 r r4 | gis8\p 8 b b gis4 fis | b8 a4 gis8~8 r e\pp fis |
  gis8 b4 cis8~8 b gis\pp fis | gis(e4.) r2 | a8 4 8~8 8 4 |
  gis8 b4 e8~8 cis b4 | a8\p 4 8~8 8 4 | 2.~8 r |
  b8 a4 b8~8 a b(a) | gis\cresc b4 cis8~8 b gis fis | % 141a
  e8 r e'2\mf-\markup{\dynamic mf \italic "con spirito"} 4 | 8 8 8 8~2 |
  a,8 4 8~8 8 4 | 8(gis4) r8 e'4\omit\f 4 | 2. r4 | cis2(dis4) r | b2. \section
  r4 | R1 | R | gis8\p 8 8 8 fis4 gis |
  a8 4 gis8~8 r r4 | e'8\f^\markup{\halign #RIGHT {\dynamic f \italic "con brio"}} 4 8~4 b8 8 | cis b gis e~2 |
  gis8\p 8 b b gis4 fis | b8 a4 gis8~4 \section r4 | % 142a
  R1 | R | gis8\p 8 8 8 fis4 gis |
  a8 4 gis8~4 r | R1 |
  R1 | gis8\p 8 b b gis4 fis |
  b8 a4 gis8~8 r e\pp e | gis b4 cis8~8 b gis fis |
  gis8(e4.) r2 | a8 4 8~8 8 4 | % 143a
  gis8 b4 e8~8 cis b4 | a8\pp 4 8~8 8 4 | 2.~8 r |
  b8 a4 b8~8 a b(a) | gis\cresc b4 cis8~8 b gis fis |
  e8 r e'2\mf-\markup{\dynamic mf \italic "con spirito"} 4 | 8~8 8 8~2 |
  a,8 4 8~8 8 4 | 8(gis4) r8 e'4\f 4 | 2.-- r4 | cis2--(dis4) r | b2.--
}

tenor = \relative {
  \autoBeamOff \dynamicUp
  \apart e8\mp fis | gis4 b8 8 4 8 8 | cis8 b gis e~4. r8 |
  \auto e8\p 8 8 8 4 4 | 8 a4 gis8~4 \apart e8\mp fis | gis4 b8 8 4 8 8 |
  cis8 b gis e~4. r8 | \auto e8^\p 8 8 8 dis4 e | gis8 fis4 e8~4. r8 \section |
  \apart r2 b'8\mf 8 8 r | \auto R1 | e,8\p 8 8 8 4 4 |
  e8 a4 gis8~8 r r4 | \apart r2 r4 b8\mf 8 | cis b gis e~4 r | % 139a
  \auto e8\p 8 8 8 dis4 e | gis8 fis4 e8~4 \section \apart 8\mp fis | gis4 b8 8 4 8 8 |
  cis8 b gis e~4. r8 \auto | e8\p 8 8 8 4 4 | 8 a4 gis8~4 \apart e8\mp fis |
  gis4 b8 8 4 8 8 | cis8 b gis e~4. r8 | \auto e8^\p 8 8 8 dis4 e |
  gis8 fis4 e8~4. r8 \section | R1 | R | % 140a
  e8\p 8 8 8 4 4 | 8 a4 gis8~8 r r4 | R1 |
  \apart R1 | \auto e8^\p 8 8 8 dis4 e4 | gis8 fis4 e8~8 r r4 |
  r2 r4 e8\pp fis | gis b4 cis8~8 b gis e | e a4 8~8 8 cis,(e) |
  fis8(gis4.)~ 4. r8 | eis8\omit\p^\markup{\halign #RIGHT {\italic sempre \dynamic p}} fis4 8~8 eis fis4 | \apart b8 fis4 8~8 eis fis4 |
  \auto gis8 fis4 gis8~8 fis gis(fis) | gis2 \apart r4 e8 fis | % 141a
  gis8 4 a8~8 gis \auto e\mf fis | gis b4 d8~8 b gis(e) |
  e8 a4 8~8 e a4 | fis8(gis4) r8 cis4\f c | b2.-- r4 | a2--(b4) r | gis2.-- \section \break
  r4 | R1 | R1 | e8\p 8 8 8 4 4 |
  e8 a4 gis8~8 r r4 | R1 | \apart R1 |
  \auto e8^\p 8 8 8 dis4 e | gis8 fis4 e8~8 r \section \apart e\p fis | % 142a
  gis4 b8 8 4 8 8 | cis b gis e~4. r8 | \auto e8\p 8 8 8 4 4 |
  e8 a4 gis8~8 r \apart e\mp fis | gis4 b8 8 4 8 8 |
  cis8 b gis e~4. r8 | \auto e8^\p 8 8 8 dis4 e |
  gis8 fis4 e8~4 r | r2 r4 e8\pp fis |
  gis8 b4 cis8~8 b gis e | e cis4 8~8 e cis(e) | % 143a
  fis8(gis4.)~4. r8 | eis8\omit\pp^\markup{\halign #RIGHT {\italic sempre \dynamic pp}}fis4 8~8 e fis4 | \apart b8 fis4 8~8 eis fis4 |
  \auto gis8 fis4 gis8~8 fis gis(fis) | \apart gis2 r4 e8 fis |
  gis8 4 a8~8 gis \auto e\mf fis | gis b4 d8~8 b gis(e) |
  e8 a4 8~8 e a4 | fis8(gis4) r8 cis4\f c | b2.-- r4 | a2--(b4) r | gis2.--
  \bar "|."
}

bass = \relative {
  \autoBeamOff \dynamicDown
  r4 | R1 | R1 |
  e8\omit\p 8 dis8 8 cis4 b | a8 cis4 e8~4 r | R1 |
  r2 cis8\p b gis a  b cis gis a b4 cis | fis,8 b4 e8~4. r8 \section |
  R1 | R | e8\omit\p 8 dis dis cis4 b |
  a8 cis4 e8~8 r r4 | R1 | r2 cis8\mf\> b gis a | % 139a
  b8\omit\p cis gis a b4 cis | fis,8 b4 e8~4 \section r4 | R1 |
  R1 | e8\omit\p 8 dis dis cis4 b | a8 cis4 e8~4 r |
  R1 | r2 cis8\p b gis a | b cis gis a b4 cis |
  fis,8 b4 e8~4. r8 \section | R1 | R | % 140a
  e8\omit\p 8 dis dis cis4 b | a8 cis4 e8~8 r r4 | R1 |
  r2 cis8^\mf^\> b gis a | b\omit\p cis gis a b4 cis | fis,8 b4 e8~8 r r4 |
  r2 r4 e8\omit\pp fis | gis b4 cis8~8 b gis e | a, cis4 8~8 a cis(e) |
  e2~4. r8 | b8\omit\p 4 8~8 8 4 | 2.~8 r |
  e8 4 8~8 8 4 | 2 r | % 141a
  r2 r4 e8\omit\mf fis | gis b4 d8~8 b gis(e) |
  a,8 cis4 8~8 a cis4 | e4. r8 cis'4\omit\f c | b2.-- r4 | b,2.-- r4 | e2.-- \section
  r4 | R1 | R | e8 8 dis dis c4 b | a8 cis4 e8~8 r r4 | R1 | r2 cis8^\mf^\> b gis a |
  b8\omit\p 8 gis a b4 cis | fis,8 b4 e8~8 r \section r4 | % 142a
  R1 | R | e8\omit\p 8 dis dis cis4 b |
  a8 cis4 e8~4 r | R1 |
  r2 cis8\omit\mp b gis a | b8\omit\p cis gis a b4 cis |
  fis,8 b4 e8~4 r | r2 r4 e8\omit\pp fis |
  gis8 b4 cis8~8 b gis e | a, cis4 8~8 a c(e) | % 143a
  e2~4. r8 | b8\omit\pp 4 8~8 8 4 | 2.~8 r |
  e8 4 8~8 8 4 | 2 r |
  r2 r4 e8 \omit\mf fis | gis b4 d8~8 b gis(e) |
  a,8 cis4 8~8 a cis4 | e4. r8 cis'4\omit\f c | b2.-- r4 b,2.-- r4 | e2.--
}

bassSep = \relative {
  \autoBeamOff \dynamicDown
  r4 | R1 | R1 |
  e8\p 8 dis8 8 cis4 b | a8 cis4 e8~4 r | R1 |
  r2 cis8\p b gis a  b cis gis a b4 cis | fis,8 b4 e8~4. r8 \section |
  R1 | R | e8\p 8 dis dis cis4 b |
  a8 cis4 e8~8 r r4 | R1 | r2 cis8\mf\> b gis a | % 139a
  b8\p cis gis a b4 cis | fis,8 b4 e8~4 \section r4 | R1 |
  R1 | e8\p 8 dis dis cis4 b | a8 cis4 e8~4 r |
  R1 | r2 cis8\p b gis a | b cis gis a b4 cis |
  fis,8 b4 e8~4. r8 \section | R1 | R | % 140a
  e8\p 8 dis dis cis4 b | a8 cis4 e8~8 r r4 | R1 |
  r2 cis8^\mf^\> b gis a | b\p cis gis a b4 cis | fis,8 b4 e8~8 r r4 |
  r2 r4 e8\pp fis | gis b4 cis8~8 b gis e | a, cis4 8~8 a cis(e) |
  e2~4. r8 | b8\p 4 8~8 8 4 | 2.~8 r |
  e8 4 8~8 8 4 | 2 r | % 141a
  r2 r4 e8\mf fis | gis b4 d8~8 b gis(e) |
  a,8 cis4 8~8 a cis4 | e4. r8 cis'4\f c | b2.-- r4 | b,2.-- r4 | e2.-- \section
  r4 | R1 | R | e8 8 dis dis c4 b | a8 cis4 e8~8 r r4 | R1 | r2 cis8^\mf^\> b gis a |
  b8\p 8 gis a b4 cis | fis,8 b4 e8~8 r \section r4 | % 142a
  R1 | R | e8\p 8 dis dis cis4 b |
  a8 cis4 e8~4 r | R1 |
  r2 cis8\mp b gis a | b8\p cis gis a b4 cis |
  fis,8 b4 e8~4 r | r2 r4 e8\pp fis |
  gis8 b4 cis8~8 b gis e | a, cis4 8~8 a c(e) | % 143a
  e2~4. r8 | b8\pp 4 8~8 8 4 | 2.~8 r |
  e8 4 8~8 8 4 | 2 r |
  r2 r4 e8 \mf fis | gis b4 d8~8 b gis(e) |
  a,8 cis4 8~8 a cis4 | e4. r8 cis'4\f c | b2.-- r4 b,2.-- r4 | e2.--
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

words = \lyricmode { % start on tenor line
  Lit -- tle Lamb, lit -- tle Lamb, lit -- tle in -- no -- cent Lamb,
  I'm a gon -- na serve God till I die, __
  Lit -- tle Lamb, lit -- tle Lamb, lit -- tle in -- no -- cent Lamb,
  I'm a gon -- na serve God till I die, __
  Hyp -- o -- \set associatedVoice = alignerA crite,
  Tell you what He do, \set associatedVoice = alignerT
  I'm a gon -- na serve God till I die, __
  And he'll talk a -- bout you,
  I'm a -- gon -- na serve God till I die. __
  Lit -- tle Lamb, lit -- tle lamb, lit -- tle in -- no -- cent Lamb,
  I'm a -- gon -- na serve God till I die, __
  Lit -- tle Lamb, lit -- tle lamb, lit -- tle in -- no -- cent Lamb,
  I'm a -- gon -- na serve God till I die, __

  I'm a -- gon -- na serve God till I \set associatedVoice = alignerA die, __
  Now if you don't mind, he gon -- na slip it on you,
  I'm a -- gon -- na serve God till I die, __
  'Cause dere ain' no dy -- in' o -- ber dere,
  in dat heb -- ben -- ly lan',
  dat heb -- ben -- ly lan',
  dat heb -- ben -- ly lan', __
  in dat heb -- ben -- ly __ lan',
  no dy -- in' o -- ber dere,
  in dat heb -- ben -- ly lan', __
  in dat heb -- ben -- ly lan',
  Dere'll be joy! joy! __\set associatedVoice = alignerS joy!

  \set stanza = "3."
  Jes' take one brick from Sa -- tan's wall,
  I'm a -- gon -- na serve God till I \set associatedVoice = alignerA die,
  Sa -- tan's wall gon -- na tum -- ble and fall, __
  I'm a -- gon -- na serve God till I \set associatedVoice = alignerT die. __
  Lit -- tle Lamb, lit -- tle Lamb, lit -- tle in -- no -- cent Lamb,
  I'm a -- gon -- na serve God till I die, __
  Lit -- tle Lamb, lit -- tle Lamb, lit -- tle in -- no -- cent Lamb,
  I'm a -- gon -- na serve God till I \set associatedVoice = alignerS die, __
  'Cause dere ain' no dy -- in' o -- ber dere, __ \set associatedVoice = alignerA
  in dat heb -- ben -- ly lan',
  dat heb -- ben -- ly lan',
  dat heb -- ben -- ly lan', __
  dat heb -- ben -- ly __ lan', \set associatedVoice = alignerA
  No dy -- in' o -- ber dere, in dat heb -- ben -- ly lan', __
  In dat heb -- ben -- ly lan',
  Dere'll be joy! joy! __ joy!
}

wordsSopAbove = \lyricmode {
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  \set stanza = "1."
  Hyp -- o -- crite,
  _ _ _ _ _ _ _ _ _
  He'll talk a -- bout me, __
  "" _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _

  \set stanza =  "2."
  Deb -- bil, he's got a slip -- per -- y shoe,
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ lan', __
  In dat _ _ _ _
  _ _ _ _ _ ;an', __
  'Cause dere ain' no dy -- in' o -- ber dere, __
  "" _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ lan', __
  In dat _ _ _ _
  _ _ _ _ _ lan',
  'Cause dere ain' no dy -- in' o -- ber dere, __
  "" _ _ _ _ _
  _ _ _ _ _
}
  
wordsTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  In dat heb -- ben -- ly,
  in dat heb -- ben -- ly lan',
  _ _ _ _ _
  'Cause dere ain' no dy -- in' o -- ber _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ lan', __
  In dat heb -- ben -- ly,
  in dat heb -- ben -- ly lan,
  _ _ _ _ _
  'Cause dere ain' no dy -- in' o -- ber _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _
}

wordsBass = \lyricmode {
  _ _ _ _ _ _ _ _ _
  in -- no -- cent Lamb,
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  talk a -- bout you,
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  in -- no -- cent Lamb,
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  slip it on you,
  _ _ _ _ _ _ _ _ _
  'Cause dere ain' no dy -- in' o -- ber
  _ _ _ _ _ lan', __
  In dat heb -- ben -- ly lan', __
  in dat _ _ _ _
  o -- ber in dat heb -- ben -- ly, __
  "" _ _ _ _ _ _ _ _
  _ _
  _ _ _ _ _ _ _ _ _
  tum -- ble an' fall,
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  in -- no -- cent Lamb,
  _ _ _ _ _ _ _ _ _
  'Cause dere ain' no dy -- in' o -- ber
  _ _ _ _ _ lan', __
  In dat heb -- ben -- ly lan', __
  in dat _ _ _ _
  o -- ber in dat heb -- ben -- ly,
  _ _ _ _ _ _ _ _ _ _ _
}

wordsSepSop = \lyricmode {
  I'm a gon -- na serve God till I die, __
  I'm a gon -- na serve God till I die, __
  Hyp -- o -- crite,
  I'm a gon -- na serve God till I die, __
  He'll talk a -- bout me,
  I'm a -- gon -- na serve God till I die. __
  I'm a -- gon -- na serve God till I die, __
  I'm a -- gon -- na serve God till I die, __

  \set stanza = "2."
  Deb -- bil, he's __ got a slip -- per -- y shoe,
  I'm a -- gon -- na serve God till I die, __
  I'm a -- gon -- na serve God till I die, __
  'Cause dere ain' no dy -- in' o -- ber dere,
  in dat heb -- ben -- ly lan',
  In dat heb -- ben -- ly lan', __
  in dat heb -- ben -- ly __ lan',
  'Cause dere ain' no dy -- in' o -- ber dere, __
  In dat heb -- ben -- ly lan',
  Dere'll be joy! joy! joy!

  \set stanza = "3."
  Jes' take one brick from Sa -- tan's wall,
  I'm a -- gon -- na serve God till I die,
  I'm a -- gon -- na serve God till I die. __
  I'm a -- gon -- na serve God till I die, __
  I'm a -- gon -- na serve God till I die, __
  'Cause dere ain' no dy -- in' o -- ber dere, __
  In dat heb -- ben -- ly lan', __
  in dat heb -- ben -- ly __ lan', __
  in dat heb -- ben -- ly __ lan', __
  'Cause dere ain' no dy -- in' o -- ber dere, __
  In dat heb -- ben -- ly lan',
  Dere'll be joy! joy! __ joy!
}

wordsSepAlto = \lyricmode {
  I'm a gon -- na serve God till I die, __
  I'm a gon -- na serve God till I die, __
  Tell you what He do,
  I'm a gon -- na serve God till I die, __
  I'm a -- gon -- na serve God till I die. __
  I'm a -- gon -- na serve God till I die, __
  I'm a -- gon -- na serve God till I die, __

  I'm a -- gon -- na serve God till I die, __
  Now if you don't mind, he gon -- na slip it on you,
  I'm a -- gon -- na serve God till I die, __
  'Cause dere ain' no dy -- in' o -- ber dere,
  in dat heb -- ben -- ly lan',
  dat heb -- ben -- ly lan',
  dat heb -- ben -- ly lan', __
  in dat heb -- ben -- ly __ lan',
  no dy -- in' o -- ber dere,
  in dat heb -- ben -- ly lan', __
  in dat heb -- ben -- ly lan',
  Dere'll be joy! joy! __ joy!

  I'm a -- gon -- na serve God till I die,
  Sa -- tan's wall gon -- na tum -- ble and fall, __
  I'm a -- gon -- na serve God till I die. __
  I'm a -- gon -- na serve God till I die, __
  I'm a -- gon -- na serve God till I die, __
  'Cause dere ain' no dy -- in' o -- ber dere, __
  in dat heb -- ben -- ly lan',
  dat heb -- ben -- ly lan',
  dat heb -- ben -- ly lan', __
  dat heb -- ben -- ly __ lan',
  No dy -- in' o -- ber dere, in dat heb -- ben -- ly lan', __
  In dat heb -- ben -- ly lan',
  Dere'll be joy! joy! __ joy!
}

wordsSepTenor = \lyricmode {
  Lit -- tle Lamb, lit -- tle Lamb, lit -- tle in -- no -- cent Lamb,
  I'm a gon -- na serve God till I die, __
  Lit -- tle Lamb, lit -- tle Lamb, lit -- tle in -- no -- cent Lamb,
  I'm a gon -- na serve God till I die, __
  Hyp -- o -- crite,
  I'm a gon -- na serve God till I die, __
  And he'll talk a -- bout you,
  I'm a -- gon -- na serve God till I die. __
  Lit -- tle Lamb, lit -- tle lamb, lit -- tle in -- no -- cent Lamb,
  I'm a -- gon -- na serve God till I die, __
  Lit -- tle Lamb, lit -- tle lamb, lit -- tle in -- no -- cent Lamb,
% verse 2
  I'm a -- gon -- na serve God till I die, __
  I'm a -- gon -- na serve God till I die, __
  I'm a -- gon -- na serve God till I die, __
  'Cause dere ain' no dy -- in' o -- ber
  in dat heb -- ben -- ly lan', __
  In dat heb -- ben -- ly,
  in dat heb -- ben -- ly __ lan',
  dat heb -- ben -- ly lan',
  'Cause there ain' no dy -- in' o -- ber in dat heb -- ben -- ly, __
  in dat heb -- ben -- ly lan',
  Dere'll be joy! joy! __ joy!
% verse 3
  I'm a -- gon -- na serve God till I die,
  I'm a -- gon -- na serve God till I die. __
  Lit -- tle Lamb, lit -- tle Lamb, lit -- tle in -- no -- cent Lamb,
  I'm a -- gon -- na serve God till I die, __
  Lit -- tle Lamb, lit -- tle Lamb, lit -- tle in -- no -- cent Lamb,
  I'm a -- gon -- na serve God till I die, __
  'Cause dere ain' no dy -- in' o -- ber 
  in dat heb -- ben -- ly lan',
  In  dat heb -- ben -- ly,
  in dat heb -- ben -- ly lan', __
  dat heb -- ben -- ly __ lan',
  'Cause dere ain' o dy -- in' o -- ber in dat heb -- ben -- ly,
  In dat heb -- ben -- ly lan',
  Dere'll be joy! joy! __ joy!
}

wordsSepBass = \lyricmode {
  I'm a gon -- na serve God till I die, __
  in -- no -- cent Lamb,
  I'm a gon -- na serve God till I die, __
  I'm a gon -- na serve God till I die, __
  talk a -- bout you,
  I'm a -- gon -- na serve God till I die. __
  I'm a -- gon -- na serve God till I die, __
  in -- no -- cent Lamb,
  I'm a -- gon -- na serve God till I die, __
  I'm a -- gon -- na serve God till I die, __
  slip it on you,
  I'm a -- gon -- na serve God till I die, __
  'Cause dere ain' no dy -- in' o -- ber
  in dat heb -- ben -- ly lan',
  In dat heb -- ben -- ly lan',
  in dat heb -- ben -- ly __ lan',
  o -- ber in dat heb -- ben -- ly,
  in dat heb -- ben -- ly lan',
  Dere'll be joy! joy! __ joy!

% verse 3
  I'm a -- gon -- na serve God till I die,
  tum -- ble and fall,
  I'm a -- gon -- na serve God till I die. __
  I'm a -- gon -- na serve God till I die, __
  in -- no -- cent Lamb,
  I'm a -- gon -- na serve God till I die, __
  'Cause dere ain' no dy -- in' o -- ber 
  in dat heb -- ben -- ly lan',
  in dat heb -- ben -- ly lan',
  In dat heb -- ben -- ly lan', __
  o -- ber in dat heb -- ben -- ly,
  In dat heb -- ben -- ly lan',
  Dere'll be joy! joy! __ joy!
}

wordsSopMidi = \lyricmode {
  "I'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nHyp" o "crite, "
  "\nI'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nHe'll " "talk " a "bout " "me, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die. " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 

  \set stanza = "2."
  "\nDeb" "bil, " "he's "  "got " "a " slip per "y " "shoe, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\n'Cause " "dere " "ain' " "no " dy "in' " o "ber " "dere, "
  "\nin " "dat " heb ben "ly " "lan', "
  "\nIn " "dat " heb ben "ly " "lan', " 
  "\nin " "dat " heb ben "ly "  "lan', "
  "\n'Cause " "dere " "ain' " "no " dy "in' " o "ber " "dere, " 
  "\nIn " "dat " heb ben "ly " "lan', "
  "\nDere'll " "be " "joy! " "joy! " "joy! "

  \set stanza = "3."
  "\nJes' " "take " "one " "brick " "from " Sa "tan's " "wall, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die. " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\n'Cause " "dere " "ain' " "no " dy "in' " o "ber " "dere, " 
  "\nIn " "dat " heb ben "ly " "lan', " 
  "\nin " "dat " heb ben "ly "  "lan', " 
  "\nin " "dat " heb ben "ly "  "lan', " 
  "\n'Cause " "dere " "ain' " "no " dy "in' " o "ber " "dere, " 
  "\nIn " "dat " heb ben "ly " "lan', "
  "\nDere'll " "be " "joy! " "joy! "  "joy! "
}

wordsAltoMidi = \lyricmode {
  "I'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nTell " "you " "what " "He " "do, "
  "\nI'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die. " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 

  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nNow " "if " "you " "don't " "mind, " "he " gon "na " "slip " "it " "on " "you, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\n'Cause " "dere " "ain' " "no " dy "in' " o "ber " "dere, "
  "\nin " "dat " heb ben "ly " "lan', "
  "\ndat " heb ben "ly " "lan', "
  "\ndat " heb ben "ly " "lan', " 
  "\nin " "dat " heb ben "ly "  "lan', "
  "\nno " dy "in' " o "ber " "dere, "
  "\nin " "dat " heb ben "ly " "lan', " 
  "\nin " "dat " heb ben "ly " "lan', "
  "\nDere'll " "be " "joy! " "joy! "  "joy! "

  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, "
  "\nSa" "tan's " "wall " gon "na " tum "ble " "and " "fall, " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die. " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\n'Cause " "dere " "ain' " "no " dy "in' " o "ber " "dere, " 
  "\nin " "dat " heb ben "ly " "lan', "
  "\ndat " heb ben "ly " "lan', "
  "\ndat " heb ben "ly " "lan', " 
  "\ndat " heb ben "ly "  "lan', "
  "\nNo " dy "in' " o "ber " "dere, " "in " "dat " heb ben "ly " "lan', " 
  "\nIn " "dat " heb ben "ly " "lan', "
  "\nDere'll " "be " "joy! " "joy! "  "joy! "
}

wordsTenorMidi = \lyricmode {
  "Lit" "tle " "Lamb, " lit "tle " "Lamb, " lit "tle " in no "cent " "Lamb, "
  "\nI'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nLit" "tle " "Lamb, " lit "tle " "Lamb, " lit "tle " in no "cent " "Lamb, "
  "\nI'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nHyp" o "crite, "
  "\nI'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nAnd " "he'll " "talk " a "bout " "you, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die. " 
  "\nLit" "tle " "Lamb, " lit "tle " "lamb, " lit "tle " in no "cent " "Lamb, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nLit" "tle " "Lamb, " lit "tle " "lamb, " lit "tle " in no "cent " "Lamb, "
% verse 2
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\n'Cause " "dere " "ain' " "no " dy "in' " o "ber "
  "\nin " "dat " heb ben "ly " "lan', " 
  "\nIn " "dat " heb ben "ly, "
  "\nin " "dat " heb ben "ly "  "lan', "
  "\ndat " heb ben "ly " "lan', "
  "\n'Cause " "there " "ain' " "no " dy "in' " o "ber " "in " "dat " heb ben "ly, " 
  "\nin " "dat " heb ben "ly " "lan', "
  "\nDere'll " "be " "joy! " "joy! "  "joy! "
% verse 3
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die. " 
  "\nLit" "tle " "Lamb, " lit "tle " "Lamb, " lit "tle " in no "cent " "Lamb, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nLit" "tle " "Lamb, " lit "tle " "Lamb, " lit "tle " in no "cent " "Lamb, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\n'Cause " "dere " "ain' " "no " dy "in' " o "ber " 
  "\nin " "dat " heb ben "ly " "lan', "
  "\nIn "  "dat " heb ben "ly, "
  "\nin " "dat " heb ben "ly " "lan', " 
  "\ndat " heb ben "ly "  "lan', "
  "\n'Cause " "dere " "ain' " "o " dy "in' " o "ber " "in " "dat " heb ben "ly, "
  "\nIn " "dat " heb ben "ly " "lan', "
  "\nDere'll " "be " "joy! " "joy! "  "joy! "
}

wordsBassMidi = \lyricmode {
  "I'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nin" no "cent " "Lamb, "
  "\nI'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " "a " gon "na " "serve " "God " "till " "I " "die, " 
  "\ntalk " a "bout " "you, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die. " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nin" no "cent " "Lamb, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nslip " "it " "on " "you, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\n'Cause " "dere " "ain' " "no " dy "in' " o "ber "
  "\nin " "dat " heb ben "ly " "lan', "
  "\nIn " "dat " heb ben "ly " "lan', "
  "\nin " "dat " heb ben "ly "  "lan', "
  "\no" "ber " "in " "dat " heb ben "ly, "
  "\nin " "dat " heb ben "ly " "lan', "
  "\nDere'll " "be " "joy! " "joy! "  "joy! "

% verse 3
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, "
  "\ntum" "ble " "and " "fall, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die. " 
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\nin" no "cent " "Lamb, "
  "\nI'm " a gon "na " "serve " "God " "till " "I " "die, " 
  "\n'Cause " "dere " "ain' " "no " dy "in' " o "ber " 
  "\nin " "dat " heb ben "ly " "lan', "
  "\nin " "dat " heb ben "ly " "lan', "
  "\nIn " "dat " heb ben "ly " "lan', " 
  "\no" "ber " "in " "dat " heb ben "ly, "
  "\nIn " "dat " heb ben "ly " "lan', "
  "\nDere'll " "be " "joy! " "joy! "  "joy! "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \RehearsalTrack }
            \new Voice { \TempoTrack     }
            \new Voice { \global \soprano \bar "|." }
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass }
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \RehearsalTrack }
            \new Voice { \TempoTrack     }
            \new Voice { \global \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \bar "|." }
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass }
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
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \RehearsalTrack }
            \new Voice { \TempoTrack     }
            \new Voice { \global \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor }
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass }
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
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \RehearsalTrack }
            \new Voice { \TempoTrack     }
            \new Voice { \global \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass }
            \addlyrics \wordsBassMidi
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \RehearsalTrack }
            \new Voice { \TempoTrack }
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." }
                                    { \global \alto \bar "|." }
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" \wordsSopAbove
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor }
                                    { \global \bass }
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \words }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
            \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \wordsBass
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
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
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single-sep"
  \score {
    \new ChoirStaff <<
                                % Soprano staff
      \new Staff = soprano <<
        \new Voice { \RehearsalTrack }
        \new Voice { \TempoTrack }
        \new Voice { \global \soprano \bar "|." }
        \addlyrics \wordsSepSop
      >>
                                % Alto staff
      \new Staff = alto <<
        \new Voice { \global \altoSep \bar "|." }
        \addlyrics \wordsSepAlto
      >>
      
                                % Tenor staff
      \new Staff = tenor <<
        \clef "treble_8"
        \new Voice { \global \tenor }
        \addlyrics \wordsSepTenor
      >>
      
                                % Bass staff
      \new Staff = bass <<
        \clef "bass"
        \new Voice { \global \bassSep }
        \addlyrics \wordsSepBass
      >>
    >>
    \layout {
      #(layout-set-staff-size 19)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-sep"
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
    \new ChoirStaff <<
                                % Soprano staff
      \new Staff = soprano <<
        \new Voice { \RehearsalTrack }
        \new Voice { \TempoTrack }
        \new Voice { \global \soprano \bar "|." }
        \addlyrics \wordsSepSop
      >>
                                % Alto staff
      \new Staff = alto <<
        \new Voice { \global \altoSep \bar "|." }
        \addlyrics \wordsSepAlto
      >>
      
                                % Tenor staff
      \new Staff = tenor <<
        \clef "treble_8"
        \new Voice { \global \tenor }
        \addlyrics \wordsSepTenor
      >>
      
                                % Bass staff
      \new Staff = bass <<
        \clef "bass"
        \new Voice { \global \bassSep }
        \addlyrics \wordsSepBass
      >>
    >>
    \layout {
      #(layout-set-staff-size 19)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}


\book {
  \bookOutputSuffix "singlepage-sep-bass"
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
    \new ChoirStaff <<
                                % Soprano staff
      \new Staff = soprano <<
        \magnifyStaff #4/7
        \new Voice { \RehearsalTrack }
        \new Voice { \TempoTrack }
        \new Voice { \global \soprano \bar "|." }
        \addlyrics {\tiny \wordsSepSop}
      >>
                                % Alto staff
      \new Staff = alto <<
        \magnifyStaff #4/7
        \new Voice { \global \altoSep \bar "|." }
        \addlyrics {\tiny \wordsSepAlto}
      >>
      
                                % Tenor staff
      \new Staff = tenor <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice { \global \tenor }
        \addlyrics {\tiny \wordsSepTenor}
      >>
      
                                % Bass staff
      \new Staff = bass <<
        \clef "bass"
        \new Voice { \global \bassSep }
        \addlyrics \wordsSepBass
      >>
    >>
    \layout {
      #(layout-set-staff-size 19)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

