\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Be Gracious, Ye Immortals."
  subtitle    = "St. Paul, Opus 36."
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Felix Mendelssohn"
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
  \key a \major
  \time 3/4
}

TempoTrack = {
  \tempo Andante 4=100
  \set Score.tempoHideNote = ##t
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "156a" } s2.*6
  \textMark \markup { \box "156b" } s2.*5
  \textMark \markup { \box "156c" } s2.*5
  \textMark \markup { \box "157a" } s2.*4
  \textMark \markup { \box "157b" } s2.*4
  \textMark \markup { \box "157c" } s2.*4
  \textMark \markup { \box "158a" } s2.*4
  \textMark \markup { \box "158b" } s2.*4
  \textMark \markup { \box "158c" } s2.*4
  \textMark \markup { \box "159a" } s2.*5
  \textMark \markup { \box "159b" } s2.*4
  \textMark \markup { \box "159c" } s2.*6
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.*15 | s2 s4\mf |
  s2.*12 | % 157
  s2.*12 | % 158
  s2.*6 | s2 s4\p | s2. | s | s\< | s\> | s\p | s | s | s |
}

soprano = \relative {
  \global
  R2.*15 | r4 r e'8 a |
  b4 cis e,8 a | b4 cis e,8 8 | a4 gis fis8 8 | gis4.(fis8 gis a | % 157a
  b2.) | b | r4 r b8 8 | e4. d8 cis b |
  b4 ais r | R2. | r4 r b8 8 | d4. cis8 b a |
  a4 gis r | R2. | r4 r a8 8 | b4 cis d8 cis | % 158a
  cis4 b r | R2. | r4 r e,8 a | b4 cis e,8 a |
  b4 cis b8(cis | d e fis4.) e8 | 4 d4 8 b | 2. |
  a4 r d8 b | 2. | a2 r4 | R2. | R | % 159a
  R2. | r4 r e'8 8 | d4 cis e,8 a | cis4 b a8. 16 |
  a2.~ | 2. | a~ | a~ | 4 r r | R2.\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  O be gra -- cious, ye im -- mor -- tals,
  O be gra -- cious, ye im -- mor -- tals!
  Heed our sa -- cri -- fice with fa -- vour,
  heed our sa -- cri -- fice with fa -- vour,
  heed our sa -- cri -- fice with fa -- vour!
  O be gra -- cious, ye im -- mor -- tals,
  O be gra -- cious, ye im -- mor -- tals!
  ye im -- mor -- tals!
  O be gra -- cious,
  Heed our sac -- ri -- fice with fa -- vour! __
}

wordsSopMidi = \lyricmode {
  "O " "be " gra "cious, " "ye " im mor "tals, "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nHeed " "our " sa cri "fice " "with " fa "vour, "
  "\nheed " "our " sa cri "fice " "with " fa "vour, "
  "\nheed " "our " sa cri "fice " "with " fa "vour! "
  "\nO " "be " gra "cious, " "ye " im mor "tals, "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nye " im mor "tals! "
  "\nO " "be " gra "cious, "
  "\nHeed " "our " sac ri "fice " "with " fa "vour! " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.*10 | s2 s4\p | s2.*5 |
  s2.*12 | % 157
  s2.*12 | % 158
  s2.*5 | s2 s4\p | s2. | s2 s4\f | s2 s8. s16\p | s2.\< | s\> | s\p | s | s | s |
}

alto = \relative {
  \global
  R2.*10 | r4 r e'8 a |
  b4 cis e,8 a | b4 cis e,8 8 | a4 gis fis8 8 | gis2. | 2 r4 |
  e2 4 | 2 4 | fis8(e dis4) cis | dis e2 | % 157a
  r4 a gis | fis2 e4 | r r gis8 8 | ais4. b8 g e |
  d4 cis r | R2. | r4 r fis8 8 | b4. a8 gis fis |
  fis4 eis r | R2. | r4 r a8 8 | 2.~ | % 158a
  a4 gis r | R2. | r4 r e8 8 | 2( a4~ |
  a4 g2 | fis8) g a4. g8 | g4 fis4 8 8 | e2. |
  ees4 r d8 fis | e2. | cis2 r4 | R2. | R | % 159a
  r4 r e8 a | b4 cis r | r r e,8 a | cis4 b a8. 16 |
  a2.~( | 2 fis4) | e2.~ | e~ | 4 r r | R2.\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  O be gra -- cious, ye im -- mor -- tals,
  O be gra -- cious, ye im -- mor -- tals,
  O be gra -- cious, ye im -- mor -- tals,
  ye im -- mor -- tals!
  Heed our sa -- cri -- fice with fa -- vour,
  heed our sa -- cri -- fice with fa -- vour!
  heed with fa -- vour!
  O be gra -- cious,
  O be gra -- cious, ye im -- mor -- tals!
  ye im -- mor -- tals!
  O be gra -- cious,
  Heed our sac -- ri -- fice with fa -- vour! __
}

wordsAltoMidi = \lyricmode {
  "O " "be " gra "cious, " "ye " im mor "tals, "
  "\nO " "be " gra "cious, " "ye " im mor "tals, "
  "\nO " "be " gra "cious, " "ye " im mor "tals, "
  "\nye " im mor "tals! "
  "\nHeed " "our " sa cri "fice " "with " fa "vour, "
  "\nheed " "our " sa cri "fice " "with " fa "vour! "
  "\nheed " "with " fa "vour! "
  "\nO " "be " gra "cious, "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nye " im mor "tals! "
  "\nO " "be " gra "cious, "
  "\nHeed " "our " sac ri "fice " "with " fa "vour! " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2 s4\p s2.*15 |
  s2.*8 | s2 s4\cresc | s2.*3 | % 157
  s2.*12 | % 158
  s2.*4 | s2 s4\p | s2. |s | s2 s4\f | s2 s8. s16\p | s2.\< | s\> | s\p | s | s | s |
}

tenor = \relative {
  \global
  r4 r e8 a | b4 cis e,8 a | b4 cis e,8 8 | a4 gis fis8 8 | gis2. | 2 r4 |
  r4 e'4 4 | 2 a,4 | R2. | r4 gis4 4 | 2 cis,4 |
  r4 r e'8 a, | a(gis) a4 r | R2. | r4 fis' e | dis2 cis4 |
  r4 e4. a,8 | a(gis) a4 r | cis(bis) cis | bis4 cis2 | % 157a
  r4 fis e | dis2 e4 | R2. | R |
  r4 r fis,8 b | cis4 d fis,8 b | cis4 d r | R2. |
  r4 r cis,8 fis | gis4 a cis,8 fis | gis4 a r | R2. | % 158a
  r4 r a8 a | b4 cis d8 cis | 4 b e8 a, | a(gis) a4 e'8 cis |
  b4 e, r | a(d) cis | cis d b8 a | 2(gis4) |
  a4 r b8 a | 2(gis4) | a2 r4 | R2. | r4 r e'8 8 | % 159a
  d4 cis r | R2. | r4 r e,8 a | cis4 b a8. 16 |
  a2.~( | 2 d4) | cis2.~ | 2.~ | 4 r r | R2.\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  O be gra -- cious, ye im -- mor -- tals,
  O be gra -- cious, ye im -- mor -- tals!
  O be gra -- cious, ye im -- mor -- tals,
  O be gra -- cious, O be gra -- cious,
  O be gra -- cious,
  O be gra -- cious, ye im -- mor -- tals!
  O be gra -- cious, O be gra -- cious,
  O be gra -- cious, ye im -- mor -- tals!
  Heed our sac -- ri -- fice with fa -- vour!
  O be gra -- cious, ye im -- mor -- tals!
  ye im -- mor -- tals, ye im -- mor -- tals,
  ye im -- mor -- tals!
  O be gra -- cious,
  Heed our sac -- ri -- fice with fa -- vour! __
}

wordsTenorMidi = \lyricmode {
  "O " "be " gra "cious, " "ye " im mor "tals, "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nO " "be " gra "cious, " "ye " im mor "tals, "
  "\nO " "be " gra "cious, " "O " "be " gra "cious, "
  "\nO " "be " gra "cious, "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nO " "be " gra "cious, " "O " "be " gra "cious, "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nHeed " "our " sac ri "fice " "with " fa "vour! "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nye " im mor "tals, " "ye " im mor "tals, "
  "\nye " im mor "tals! "
  "\nO " "be " gra "cious, "
  "\nHeed " "our " sac ri "fice " "with " fa "vour! " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.*5 | s2 s4\p | s2.*10 |
  s2.*8 | s2 s4\cresc | s2.*3 | % 157
  s2.*12 | % 158
  s2.*3 | s2 s4\p | s2. | s | s | s2 s4\f | s2 s8. s16\p | s2.\< | s\> | s\p | s | s | s |
}

bass = \relative {
  \global
  R2.*5 | r4 r e8 a |
  b4 cis e,8 a b4 cis e,8 8 | a4 gis fis8 8 | gis2. | 2 r4 |
  r4 e e | 2 4 | fis4(gis) a | gis2(cis4~ | 4 bis) cis |
  r4 r cis,8 a | e'4 a, cis8 8 | fis4(gis a | b) cis,2 | % 157a
  R2. | r4 a' gis | fis2 e4 | R2. |
  r4 r fis8 a | cis4 d fis,8 a | cis4 d r | R2. |
  r4 r cis,8 fis | gis4 a cis,8 fis | gis4 a r | R2. | % 158a
  r4 r a8 8 | 2.~ | 4 gis cis8 a | e4 a cis8 a |
  e2 a4 | d,2 a4 | a b4 8 d | e2. |
  cis4 r b8 d | e2. | a,2 r4 | r r e'8 a | b4 cis r | % 159a
  R2. | R | r4 r e,8 a | cis4 b a8. 16 |
  a2.~ | 2. | a,~ | a~ | 4 r r | R2.\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  O be gra -- cious, ye im -- mor -- tals,
  O be gra -- cious, ye im -- mor -- tals,
  O be gra -- cious, ye im -- mor -- tals!
  O be gra -- cious,
  O be gra -- cious, ye im -- mor -- tals!
  O be gra -- cious, O be gra -- cious,
  O be gra -- cious, ye im -- mor -- tals!
  Heed with fa -- vour!
  O be gra -- cious, ye im -- mor -- tals!
  ye im -- mor -- tals, ye im -- mor -- tals,
  ye im -- mor -- tals!
  O be gra -- cious,
  Heed our sac -- ri -- fice with fa -- vour! __
}

wordsBassMidi = \lyricmode {
  "O " "be " gra "cious, " "ye " im mor "tals, "
  "\nO " "be " gra "cious, " "ye " im mor "tals, "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nO " "be " gra "cious, "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nO " "be " gra "cious, " "O " "be " gra "cious, "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nHeed " "with " fa "vour! "
  "\nO " "be " gra "cious, " "ye " im mor "tals! "
  "\nye " im mor "tals, " "ye " im mor "tals, "
  "\nye " im mor "tals! "
  "\nO " "be " gra "cious, "
  "\nHeed " "our " sac ri "fice " "with " fa "vour! " 
}

pianoRHone = \relative {
  \global \clef bass
  e2 8(a \voiceOne |
  b4 <a cis>4) \oneVoice e8(a \voiceOne |
  b4 <a cis>4) \oneVoice e8 e |
  <fis a>4(<dis gis>) fis8 8 |
  \voiceOne gis2.~ |
  gis4 fis e8(a |
  b4 <a cis>4) \voiceOne e8( a | % 156b
  b4 <a cis>4) \oneVoice e8 8 |
  <fis a>4(<dis gis>) fis8 8 |
  \voiceOne gis2.~ |
  4 s \oneVoice <e gis e'>8[ \clef treble <a a'> ] |
  \voiceOne b'4(<a cis>4) \oneVoice <e, e'>8 <a a'> | % 156c
  \voiceOne b'4(<a cis>4) \oneVoice <cis, e>8 8 |
  <a c fis a>4(<bis dis gis> <cis fis>) |
  \voiceOne gis'2.~ |
  gis4 fis e'16 a cis e |
  d16(cis d e cis a e cis) e(a cis e | % 157a
  d16 cis d e cis a e cis) a(cis e a) \oneVoice |
  cis16( bis cis dis bis fis' e dis bis cis a fis) |
  dis16( fis gis fis e dis cis dis e gis cis e) |
  dis,16(fis) b-. b-. \afterGrace 15/16 b2\trill( {ais16[b]}) | % 157b
  dis,16(fis) b-. b-. \afterGrace 15/16 b2\trill( {ais16[b]}) |
  dis,16(fis) b-. b-. b(fis gis a gis e gis b) |
  e16(cis b ais) fis'(d cis b) g'(e d cis) |
  b16(d cis b) ais(cis) fis,-. fis-. \voiceOne b,(d) fis-. fis-. | % 157c
  e16(g fis e d cis b ais) b(d) fis-. fis-. |
  \oneVoice cis16(g' fis e d cis b ais b ais b cis) |
  d16(fis e d e d cis d) b(cis) d-. d-. |
  a16(cis b a gis b a gis) fis(a) cis-. cis-. | % 158a
  gis16(b) cis-. cis-. a(cis) fis-. fis-. a,(gis b a) |
  gis16(b) cis-. cis-. a(cis) fis-. fis-. cis(fis) a-. a-. |
  \afterGrace 31/32 a2.\trill {gis16[a]} |
  a16(cis) e-. e-. gis,(b) e-. e-. a,(cis) e-. e-. | % 158b
  \afterGrace 31/32 a,2.\trill {gis16[a]} |
  a16(cis) e-. e-. e(d b gis) e(a cis e) |
  d16(e d fis cis a e cis) e(a cis e) |
  d16(cis d e cis a e cis) e(g cis e) | % 158c
  fis,16(a) d-. d-. d,(fis) a-. a-. e(g) a-. a-. |
  e16(g) a-. a-. d,(fis b d) fis(d cis b) |
  \afterGrace 31/32 b2.\trill {ais16[b]} |
  e16(cis b a gis a cis a) e'(d) cis(b) | % 159a
  b2\trill( \grace {ais16[b]} e4) |
  e16(cis b a gis a cis a fis e a e |
  a16 e d cis e cis b a) e(a cis e) |
  d16(cis d e) cis8 r a16(cis e a) |
  \voiceOne a16(gis fis gis) \oneVoice <a, cis a'>8 r e'16(a cis e) | % 159b
  d16(cis d e cis8) r a16(cis e a) |
  gis16( e d b a cis e cis a e cis e) |
  a,4 r r |
  R2. | % 159c
  d,16(fis a d fis d a fis) a(d fis a) |
  a16(e cis a cis e a cis) cis(a e cis) |
  e16(a cis e) e(cis a e) a(cis e a) |
  a4 r s | <cis,, e a cis>4 r r\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2. | e2 s4 | 2 4 | s2. | gis4 fis e | dis2 e4~ |
  e2 s4 | 2 4 | s2. | gis4 fis e | dis4~<dis fis gis dis'> s |
  e'2 s4 | 2 s4 | s2. | bis4 <dis fis> <cis eis>~ | cis4 bis s |
  s2.*8 | s2 fis'8 b | cis4 s fis,8 b | s2.*2 | % 157
  s2.*12 | % 158
  s2.*5 | <b d>4 s2 | s2.*9 |
%  \bar "|."
}

pianoRHthree = \relative {
  \global \voiceThree
  s2. | a8 gis s2 | a8 gis s2 | s2. | s | s |
  a8 gis s2 | a8 gis s2 | s2. | s | s |
  s2. | s | s | s | dis'2 s4 |
  s2.*39 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\sf s4\p | s2. | s | s | s4\< s\> s\! | s2.
  s16\< s\> s8\! s2 | s16\< s\> s8\! s2 | s2. | s | s |
  s16\< s\> s8\! s2 | s16\< s\> s8\! s2 | s2. | s4 s2\cresc | s2. |
  s2.*4 | % 157a
  s2. | s | s2 s4\p | s2. |
  s2 s4\mf | s2.\cresc | s2 s4\p | s2. |
  s2 s4\mf | s16\< s\> s4.\! s4\sf | s16\< s\> s8\! s2 | s2 s16\< s\> s8\! | % 158a
  s2. | s2 s16\< s\> s8\! | s2 s4\omit\f-\markup{\italic più \dynamic f} | s2. |
  s2.*4 |
  s2. | s | s2 s8 s\dim | s2 s4\p | s2. | % 159a
  s2.*4 |
  s2. | s\p | s | s4 s2\dim | s2. | s4 s2\omit\ppp
}

pianoLHone = \relative {
  \global \oneVoice
  r4 r cis8(a |
  e4 a) cis8(a |
  e4 a) cis8(a) |
  <fis cis'>4(<gis bis> <a cis>) |
  <gis bis dis>2 <cis, cis'>4~ |
  \voiceOne cis' bis \oneVoice <a, a'>8(<fis fis'> |
  e'4 a) cis8(a | % 156b
  e4 a) cis8(a) |
  <fis cis'>4(<gis bis> <a cis>) |
  <gis bis dis>2 <cis, cis'>4 |
  <gis' bis>2 s4 |
  \voiceOne e'2 s4 | e2 s4 | \oneVoice fis,4(gis a) | <gis gis'>2 <cis gis'>4 | <gis gis'>2 \voiceOne e''4 | % 156c
  e2 e,4 | e2. | \oneVoice <fis a cis dis>4 <gis bis dis> <a cis fis> | <gis bis dis> <cis, e cis'>2 | % 157a
  \voiceOne <dis fis b>4 <fis a> gis | % 157b
  \oneVoice <b, dis fis b>2 <e gis b>4 |
  <b dis fis a b>2 <e gis b>4 |
  <cis e ais>4 <d fis b> <e g cis> |
  \voiceOne <b' d>4 <ais cis> s | % 157c
  b8(ais) b4 fis8(b) |
  b8(ais) s2 |
  <b d>4.(cis8) <gis b>8(<fis a>) |
  <fis a>4(<e gis>) cis8(fis) | % 158a
  gis8(eis) <fis a>4 cis8(fis) |
  gis8(fis) <fis a>4 a |
  <a b>4 <a cis> d8 cis |
  <a cis>4(<gis b>) a | % 158b
  b4 cis d8(cis) |
  <a cis>4(<gis b>) \oneVoice <e, e'>8 8 |
  q2 8 8 |
  q2 <a, a'>8 8 | <d d'>2 <a a'>4 | q <b b'>4 8 <d d'> | <e e'>2. | % 158c
  <cis cis'>4 r <b b'>8 <d d'> | % 159a
  <e e'>2. |
  <a, a'>2 r4 |
  r r e''8(a) \voiceOne |
  a8(gis) \oneVoice <a cis>4 cis,8(a) |
  e4(<a, a'>) cis''8(a) \voiceOne | % 159b
  a8(gis) \oneVoice <a cis>4 cis8(a) |
  <e gis b d e>4 <a cis e> r |
  R2. |
  R2. | <d,, fis a d>2. | <a a'>2.~ | q \clef treble | % 159c
  <a'' cis e>8-. <cis e a>-. <e a cis>-. <a cis e>-. \change Staff = pianorh <cis e a>-. <e a cis>-. |
  \change Staff = pianolh \clef bass <a,,, a'>4 r r\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s2.*5 | gis,2 s4 |
  s2.*4 | s2 cis8(a |
  e4 a) cis8(a | e4 a) cis8 a | s2. | s | s2 cis'8(a |
  a8 gis a4) cis,8(a | e4 a) cis8(a) | s2. | s | % 157a
  b2 e4 | s2.*3 |
  fis2 <d fis>8(<b b'>) | fis'2 d8 b | <fis' cis'>4 <b d>4 <d, fis>8(<b b'>) | gis'4 a b, |
  cis2 fis,4 | cis'2 fis4 | cis2 fis4 | d e <fis a> | % 158a
  e2 <cis e>4 | <d a'> <e a> <fis a> | e2 s4 | s2. |
  s2.*4 |
  s2.*4 | e2 s4 | % 159a
  s2. | e2 s4 | s2. | s |
  s2.*6 |
%  \bar "|."
}

pianoLHthree = \relative {
  \global \voiceFour
  s2.*16 |
  <e b'>4 s2 | s2.*11 | % 157
  s2. | \voiceThree a4 s2 | a4 s2 | s2.*9 | % 158
  s2.*4 | b4 s2 | s2. b4 s2 | s2.*8 | % 159
}

#(set-global-staff-size 17)

\book {
  \bookOutputSuffix "single"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
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
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-sop"
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
