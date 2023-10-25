\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sing a Song of Sixpence"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. Michael Diack"
  arranger    = \markup\italic "with apologies to Handel"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}
#(set-global-staff-size 19)

global = {
  \key d \major
  \time 4/4
}

TempoTrack = {
  \tempo "Maestoso grandioso" 4=88
  s1*8
  \once\set Score.tempoHideNote = ##t \tempo 4=80 s1*2
  \tempo Allegro 4=112
  s1*34
  \set Score.tempoHideNote = ##t
  \tempo 4=104 s1*2 \tempo 4=112 % 6b+
  s1*11
  s2 \tempo 4=104 s % 8b
  s1*4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s1*4
  \mark \markup { \box "2b" } s1*3
  \mark \markup { \box "2c" } s1*3
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "3c" } s1*3
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*4
  \mark \markup { \box "4c" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "5c" } s1*4
  \mark \markup { \box "6a" } s1*4
  \mark \markup { \box "6b" } s1*4
  \mark \markup { \box "6c" } s1*2
  \mark \markup { \box "7a" } s1*2
  \mark \markup { \box "7b" } s1*2
  \mark \markup { \box "7c" } s1*2
  \mark \markup { \box "8a" } s1*2
  \mark \markup { \box "8b" } s1*2
  \mark \markup { \box "8c" } s1*3
}

descant = \relative {
  s1*34
  \tiny f''8 8 8 8 4 s
  s1*27
}

descantwords = \lyricmode {
  hang -- ing out the clothes
}

soprano = \relative {
  \global
  R1*4
  d''2.^\f r4 % 2b
  d2. r4
  d4(a8) cis d4. r8
  d4. e8 fis4 r8 e % 2c
  fis4^\markup\italic rall. (e d4.) 8
  cis8 r a r r2 \bar "||"
  R1 % 3a
  a8^\mf 8 8 8 fis d4 8
  e8 8 a a fis2
  r2 cis'8 8 8 8 % 3b
  a8 fis4. gis8 cis4 gis8
  a2 r
  e'8 8 8 8 cis a4 8 % 3c
  b8 8 e e e8.(fis16 e fis e fis
  e8.^\< fis16 e fis e fis e8 a,\! cis e
  g2) d8 cis d a % 4a
  b8 fis g d e b cis a
  d2 r
  R1*6
  fis8 8 8 8 d b r b' % 4c++
  b8 8 gis e c'4 a % 5a
  b8 8 e b c a r4
  R1
  R1 % 5b
  r2 d8^\< 8 8 8
  d2.\! r4
  r4 f f e8 d % 5c
  cis4 a r fis'
  e4-. r d-. r
  d4-. cis-. r2
  R1 % 6a
  r2 r4 bes-.
  bes4-. r4 4-. 4-.
  a4-. r bes-.-> r
  a4-. r bes4-.-> r % 6b
  a2^\markup\italic rall. (cis
  e1)
  a,8^\markup\italic "a tempo"  8 4 8 8 4
  a8 cis e cis d a r fis % 6c
  g8 a cis e d4 r
  cis8 8 a fis eis gis r4 % 7a
  fis8(a) cis fis eis4 r
  cis8 8 a fis e a r a % 7b
  gis8 b b e e2~(
  e2~8.^\< fis16 e fis e fis % 7c
  e8. fis16 e fis e fis e8 a, cis e
  g2) d8^\f cis d a % 8a
  b8 fis g r e' d e b
  cis8 gis a r fis'^\markup\italic rall. e fis e % 8b
  d8 cis b a b4 d
  e2~4. d8 % 8c
  d1~
  d4 r r2
  \bar "|."
}

wordsSop = \lyricmode {
  Sing! sing!
  Sing __ a song,
  sing a song, a song __ of six -- pence.

  Sing a song of six -- pence,
  a pock -- et full of rye;
  Four and twen -- ty black -- birds baked in a pie;
  When the pie was o -- pened the birds be -- gan to sing. __
  Was -- n't that a dain -- ty dish to set be -- fore a king?

%  The king was in his count -- ing house,
  count -- ing out his mon -- ey;
  The queen was in the par -- lour
  eat -- ing bread and hon -- ey;
                                % The maid was in the gar -- den
  hang -- ing out the clothes.
  When bye came a black -- bird,
  a black, black, black -- bird,
  and pecked off her nose,
  pecked off her nose. __
  
  Sing a song, sing a song,
  sing a song of six -- pence,
  a pock -- et full of rye;
  Four and twen -- ty black -- birds baked in a pie;
  When the pie was o -- pened the birds be -- gan to sing. __
  Was -- n't that a dain -- ty dish,
  was -- n't that a dain -- ty dish,
  was -- n't that a dain -- ty dish,
  to set be -- fore a king? __
}

wordsSopMidi = \lyricmode {
  "Sing! " "sing! "
  "\nSing "  "a " "song, "
  "\nsing " "a " "song, " "a " "song "  "of " six "pence. "

  "\nSing " "a " "song " "of " six "pence, "
  "\na " pock "et " "full " "of " "rye; "
  "\nFour " "and " twen "ty " black "birds " "baked " "in " "a " "pie; "
  "\nWhen " "the " "pie " "was " o "pened " "the " "birds " be "gan " "to " "sing. " 
  "\nWas" "n't " "that " "a " dain "ty " "dish " "to " "set " be "fore " "a " "king? "

  "\ncount" "ing " "out " "his " mon "ey; "
  "\nThe " "queen " "was " "in " "the " par "lour "
  "\neat" "ing " "bread " "and " hon "ey; "

  "\nhang" "ing " "out " "the " "clothes. "
  "\nWhen " "bye " "came " "a " black "bird, "
  "\na " "black, " "black, " black "bird, "
  "\nand " "pecked " "off " "her " "nose, "
  "\npecked " "off " "her " "nose. " 
  
  "\nSing " "a " "song, " "sing " "a " "song, "
  "\nsing " "a " "song " "of " six "pence, "
  "\na " pock "et " "full " "of " "rye; "
  "\nFour " "and " twen "ty " black "birds " "baked " "in " "a " "pie; "
  "\nWhen " "the " "pie " "was " o "pened " "the " "birds " be "gan " "to " "sing. " 
  "\nWas" "n't " "that " "a " dain "ty " "dish, "
  "\nwas" "n't " "that " "a " dain "ty " "dish, "
  "\nwas" "n't " "that " "a " dain "ty " "dish, "
  "\nto " "set " be "fore " "a " "king? " 
}

alto = \relative {
  \global
  R1*4
  fis'2.^\f r4 % 2b
  fis2. r4
  d4(fis8) a d4. r8
  fis,4(a8) cis d4 r8 a % 2c
  d4^\markup\italic rall. (a2) gis4
  a8 r a r r2
  R1 % 3a
  a8 8 8 8 fis d4 8
  e8 8 a, cis d2
  r2 cis'8 8 8 8 % 3b
  a8 fis4. gis8 cis,4 eis8
  fis2 r
  e8 8 8 8 cis' a4 8 % 3c
  b8 8 e, gis a4(e8 a
  b4^\< e,8 b' cis2\!~
  cis8) a b(cis) d cis d a % 4a
  b8 fis g d e b cis a
  d2 r
  R1*3
  r2 r4 r8 fis^\mf % 4b+++
  b8 8 fis fis d d b4 % 4c
  cis8 8 fis fis d b r4
  R1
  R1 % 5a
  R1
  e8 8 8 8 c a r a'
  d8 8 a a f4 d % 5b
  b'8^\< 8 8 8\! 2~
  b2. a4^\f
  gis2 4 4 % 5c
  a4 4 gis2
  a4-. r f-. r
  f4-. e-. r2
  R1 % 6a
  r2 r4 d-.
  d4-. r d-. d-.
  cis4-. r d-.-> r
  cis4-. r d-.-> r % 6b
  cis2^\markup\italic rall. (e
  g1)
  R1^\markup\italic "a tempo"
  a8^\f 8 8 8 fis d4 8 % 6c
  e8 8 a, cis d2
  r2 cis'8 8 8 8 % 7a
  a8 fis4. gis8 cis,4 eis8
  fis2 r % 7b
  e8 8 8 8 cis' a4 8
  b8 8 e, gis8 a4(e8 a % 7c
  b4 e,8 b' cis2)~
  cis8 a b(cis) d^\f cis d a % 8a
  b8 fis g r e' d e b
  cis8 gis a r d^\markup\italic rall.  cis d cis % 8b
  b8 a g fis g4 fis
  e2(a4.) d8 % 8c
  d1~
  d4 r r2
  \bar "|."
}

wordsAlto = \lyricmode {
  Sing! sing!
  Sing __ a song,
  sing a song, a song __ of six -- pence.

  Sing a song of six -- pence,
  a pock -- et full of rye;
  Four and twen -- ty black -- birds baked in a pie;
  When the pie was o -- pened the birds be -- gan to sing. __
  to sing,
  Was -- n't that a dain -- ty dish to set be -- fore a king?

  The king was in his count -- ing house,
  count -- ing out his mon -- ey;
%  The queen was in the par -- lour
  eat -- ing bread and hon -- ey;
  The maid was in the gar -- den
  hang -- ing out the clothes.
  When bye came a black -- bird,
  a black, black, black -- bird,
  and pecked off her nose,
  pecked off her nose. __
  
  sing a song of six -- pence,
  a pock -- et full of rye;
  Four and twen -- ty black -- birds baked in a pie;
  When the pie was o -- pened the birds be -- gan to sing. __
  to sing. __
  Was -- n't that a dain -- ty dish,
  was -- n't that a dain -- ty dish,
  was -- n't that a dain -- ty dish,
  to set be -- fore a king? __
}

wordsAltoMidi = \lyricmode {
  "Sing! " "sing! "
  "\nSing "  "a " "song, "
  "\nsing " "a " "song, " "a " "song "  "of " six "pence. "

  "\nSing " "a " "song " "of " six "pence, "
  "\na " pock "et " "full " "of " "rye; "
  "\nFour " "and " twen "ty " black "birds " "baked " "in " "a " "pie; "
  "\nWhen " "the " "pie " "was " o "pened " "the " "birds " be "gan " "to " "sing. " 
  "\nto " "sing, "
  "\nWas" "n't " "that " "a " dain "ty " "dish " "to " "set " be "fore " "a " "king? "

  "\nThe " "king " "was " "in " "his " count "ing " "house, "
  "\ncount" "ing " "out " "his " mon "ey; "
%  The queen was in the par -- lour
  "\neat" "ing " "bread " "and " hon "ey; "
  "\nThe " "maid " "was " "in " "the " gar "den "
  "\nhang" "ing " "out " "the " "clothes. "
  "\nWhen " "bye " "came " "a " black "bird, "
  "\na " "black, " "black, " black "bird, "
  "\nand " "pecked " "off " "her " "nose, "
  "\npecked " "off " "her " "nose. " 
  
  "\nsing " "a " "song " "of " six "pence, "
  "\na " pock "et " "full " "of " "rye; "
  "\nFour " "and " twen "ty " black "birds " "baked " "in " "a " "pie; "
  "\nWhen " "the " "pie " "was " o "pened " "the " "birds " be "gan " "to " "sing. " 
  "\nto " "sing. " 
  "\nWas" "n't " "that " "a " dain "ty " "dish, "
  "\nwas" "n't " "that " "a " dain "ty " "dish, "
  "\nwas" "n't " "that " "a " dain "ty " "dish, "
  "\nto " "set " be "fore " "a " "king? " 
}

pianoRHone = \relative {
  \global
  r8 <a d> <d fis> <fis a> <d fis> d16(e <d fis> <e g> <fis a> <e g>
  <d fis>8) <a' d> <d fis> <fis a> <d fis> d16( e <d fis> <e g> <fis a> <e g>
  <d fis>8) <fis a> q <e a> g g fis fis
  e8 e d d cis d d e
  <fis, a d>8 <a, d> <d fis> <fis a> <d fis> d16(e <d fis> <e g> <fis a> <e g> % 2b
  <d fis>8) <a' d> <d fis> <fis a> <d fis> d16(e <d fis> <e g> <fis a> <e g>
  <d fis>4) r8 <cis e> <d fis> q16( <e g> <fis a> <g b> <fis a> <e g>)
  <d fis>4 r8 <cis e> <d fis> q16( <e g> <fis a> <g b> <fis a> <e g>) % 2c
  <d fis>8 8 <e a> q <d a'> q <d gis> q
  <cis a'>4 r r2
  <d, fis a>8 8 8 8 8 8 8 8 % 3a
  <cis e a>8 8 8 8 <d fis a>8 8 8 8
  <e g a>8 8 8 8 <d fis a>8 8 8 8
  <fis a cis>8 8 8 8 <eis gis cis>8 8 8 8 % 3b
  <fis a cis>8 8 8 8 <gis b cis>8 8 8 8
  <fis a cis>8 8 8 8 <a cis e>8 8 8 8
  <gis b e>8 8 8 8 <a cis e>8 8 8 8 % 3c
  <b d e>8 8 8 8 e8 16(fis e fis e fis
  e8) 16( fis e fis e fis <cis e>8) a cis e
  <a, cis e g>8 <a cis>(<b d> <cis  e> <a d fis>) cis d a % 4a
  b8 fis g d e b cis a
  <d fis a d>8 <d fis a> q q q q q q
  <cis e a>8 8 8 8 <d fis a> q d'16(e fis g % 4b
  <e a>8) q q q g g fis fis
  e8 e d d cis d d cis
  <fis, a d>4 r <e fis ais> r
  <d fis b>8 8 8 8 8 8 8 8 % 4c
  <e fis gis>8 8 8 8 <d fis b>4 b'16(cis d e
  fis8) fis fis fis d b r4
  <e, gis b>8 8 8 8 <e a c>8 8 8 8 % 5a
  <e b' d>8 8 8 8 <e a c>4 a16(b cis d
  e8) 8 8 8 c a r4
  <f a d>8 8 8 8 8 8 8 8 % 5b
  <f bes d>8 8 8 8 8 8 8 8
  <f bes d f>8 8 8 8 4 r
  r4 <f d' f>4 4 <f b e>8 <f b d> % 5c
  <e a cis>4 <cis e a> r <f d' f>
  <e a cis e>4-. r <f a d> r
  q4-. <e a cis>-> r bes''16(a g f
  e8) r bes16(a g f e8) r e16_\markup\italic L.H. (f g a % 6a
  e'16 f g a bes8) r8 r4 <bes,, d bes'>
  q4 r q q
  <a cis a'>4 r <bes d bes'>-> r
  <a cis a'>4 r <bes d bes'>-> r % 6b
  <a cis a'>1~
  q1
  <d fis a>8 8 8 8 8 8 8 8
  <cis e a>8 8 8 8 <d fis a>8 8 8 8 % 6c
  <e g a>8 8 8 8 <d fis a>8 8 8 8
  <fis a cis>8 8 8 8 <eis gis cis>8 8 8 8 % 7a
  <fis a cis>8 8 8 8 <gis b cis>8 8 8 8
  <fis a cis>8 8 8 8 <a cis e>8 8 8 8 % 7b
  <gis b e>8 8 8 8 <a cis e>8 8 8 8
  <b d e>8 8 8 8 e8 16(fis e fis e fis % 7c
  e8) 16(fis e fis e fis <cis e>8) a cis e
  <a, cis e g>8 <a cis>(<b d> <cis e> <a d fis>) cis d a % 8a
  b8 fis g b e d e b
  cis8 gis a cis <a d fis> <a e'> <a fis'> <a e'> % 8b
  <fis d'> <a cis> <g b> <d a'> <d g b>4 <d a' d>
  <e a d>2 <e g a cis>4. r8 % 8c
  <fis a d>8 <a d>8-> <d fis>-> <fis a>-> <d fis>-> d16 e <d fis> <e g> <fis a> <e g>
  <d fis>4-> r4 r2
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s1
  s1
  s2 d''16 e d e cis8 8
  b16 cis b cis a8 8 g fis <e a> q
  s1*13
  s2 cis'8 8 8 8 % 3c+
  d8 8 8 8 s2
  s1*4
  s2 d16 e d e cis8 8 % 4b+
  b16 cis b cis a8 a s2
  s1*15
  bes8 s2.. % 6a+
  s1*12
  s2 cis8 8 8 8 % 7c
  d8 8 8 8 s2
  s1*5
  s8 fis, a d a <d, fis a> q q % 8c
  q4 r4 r2
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f
  s1*7
  s1-\markup\italic rall.
  s1
  s1\mf % 3a
  s1*7
  s2 s\<
  s4. s8\! s2
  s4 s2.-\markup\italic "no rall." % 4a+
  s1\mp
  s1*5
  s2. s4\mf % 4c+
  s1
  s1\mp % 5a
  s2. s4\mf
  s1*9
  s2. s4-\markup\italic slacc. % 6a+
  s1
  s1
  s1 % 6b
  s1-\markup\italic rall.
  s1\>
  s1\omit\mf-\markup{\dynamic mf \italic "a tempo"}
  s1*8
  s8 s4.\< s2\! % 8a
  s1\cresc
  s2 s\omit\ff-\markup{\dynamic ff \italic rall.} % 8b
  s2\< s8 s4.\!
  s1 % 8c
  s2\f\< s2\!
  s1
}

pianoLH = \relative {
  \global
  <d, d'>8 fis' a d a4 r8 <a, a'>
  <d a'>8 \clef treble fis' a d a4 r8 <a, a'>
  <d a'>4. cis8 b b' a a, \clef bass
  g8 g' fis fis, <e e'> <d d'> <a a'> q
  <d, d'>8 fis' a d a4 r8 <a, a'> % 2b
  <d a'>8 \clef treble fis' a d a4 r8 <a, a'>
  <d a>4 r8 <a a'> <d fis a>4 r8 <a a'>
  <d a'>4 r8 <a a'> <d fis a>4 r8 <a a'> % 2c
  <d a'>8 8 <cis a'>8 8 <b e>8 8 8 8
  <a e'>4 r r2 \clef bass
  r2 r4 d,16(e fis a % 3a
  a8) 8 8 8 fis d4 8
  e8 8 a, cis d2
  r4 fis16( gis a b cis8) 8 8 8 % 3b
  a8 fis4. gis8 cis,4 eis8
  fis2 r4 a16(b cis d
  e8) 8 8 8 cis a4 8 % 3c
  b8 8 e, gis a4(e8 a
  b4 e,8 b') <a cis>2~
  q8 q( <b d> <cis e> <d fis>) cis d a % 4a
  b8 fis g d e b cis a
  d2 r4 d16(e fis g
  a8) 8 8 8 fis d <d fis a>8 8 % 4b
  <cis e a>8 8 8 8 <b d g> q <a cis fis> q
  <g b e>8 q <fis a d> q <e e'> <d d'> a' <a, a'>
  <d d'>4 r <fis' cis'> r8 fis
  b8 r fis r d r b r % 4c
  cis8 r fis, r b <b d fis>8 8 8
  <ais cis fis>8 8 8 8 <b d fis>8 8 8 8
  e4 4 2 % 5a
  <e gis>4 4 a8 8 <a c e> q
  <gis d' e>8 8 8 8 <a c e>8 8 8 8
  d8 r a r f r d r % 5b
  <bes bes'>4 q q2~
  q2. <a a'>4
  <gis gis'>2 4 4 % 5c
  <a a'>4 4 <gis gis'>2
  <a a'>4 r q r
  q4-. q-. r2
  r2 <bes' c des>8 r s4 % 6a
  s8 r8 r4 r <a, f'>
  q4 r q q
  <a e'>4 r <a f'> r
  <a e'>4 r <a f'> r % 6b
  <a e'>1~
  q1
  r2 r4 d16(e fis g
  a8) 8 8 8 fis d4 8 % 6c
  e8 8 a, cis d2
  r4 fis16(gis a b cis8) 8 8 8 % 7a
  a8 fis4. gis8 cis,4 eis8
  fis2 r4 a16(b cis d % 7b
  e8) 8 8 8 cis a4 8
  b8 8 e, gis a4 e8 a % 7c
  b4 e,8 b' <a cis>2~
  q8 q(<b d> <cis e> <d fis>) cis d b % 8a
  b8 fis g b e d e b
  cis8 gis a cis <d fis> <cis e> <d fis> <a cis> % 8b
  <b d>8 <fis d'> <g d> <fis, fis'> <g g'>4 <fis fis'>8 <g gis'>
  <a a'>2 <a, a'>4. r8 % 8c
  <d a' d>1~
  q4-> r4 r2
  \bar "|."
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = descant {\voiceThree \descant}
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
          \new Lyrics \with{alignAboveContext = soprano} \lyricsto descant \descantwords
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = descant {\voiceThree \descant}
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
          \new Lyrics \with{alignAboveContext = soprano} \lyricsto descant \descantwords
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = descant {\voiceThree \descant}
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
          \new Lyrics \with{alignAboveContext = soprano} \lyricsto descant \descantwords
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-alto"
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
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = descant {\voiceThree \descant}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
          \new Lyrics \with{alignAboveContext = soprano} \lyricsto descant {\tiny \descantwords}
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice = descant {\voiceThree \descant}
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice = descant {\voiceThree \descant}
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
