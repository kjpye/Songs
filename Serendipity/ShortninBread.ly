\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Short'nin' Bread"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jacques Wolfe"
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
  \key d \major
  \time 4/4
}

TempoTrack = {
  \tempo "Very rhythmic" 4=120
  \set Score.tempoHideNote = ##t
  s1*4 | \tempo Exuberantly 4=120 s1*39 |
  s2. \tempo Stealthily 4=120 s4 | s1*15 |
  s2. \tempo 4=20 s8 \tempo 4=120 s |
  \tempo Tearfully 4=100 s1*3 |
  s2. \tempo Mournfully 4=100 s4 | s1 | % 7b
  s2. \tempo Fast 4=120 s4 | s2. \tempo Jubilantly 4=120 s4 | s1 |
  \tempo "Not too fast" 4=110 s1*6 |
  \tempo \markup\italic "in time" 4=120 s2. \tempo 4=40 s4 \tempo 4=120 | s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*3
  \textMark \markup { \box "1b" } s1*3
  \textMark \markup { \box "1c" } s1*3
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "3c" } s1*4
  \textMark \markup { \box "3d" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "4d" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "5c" } s1*3
  \textMark \markup { \box "6a" } s1*2
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*2
  \textMark \markup { \box "7c" } s1*3
  \textMark \markup { \box "8a" } s1*2
  \textMark \markup { \box "8b" } s1*3
  \textMark \markup { \box "8c" } s1*3
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s1\f | s1*4 |
  s1*5 | s2. s4\sf | s2. s4\omit\sf-\markup{\dynamic sf \italic portamento} s1 | s | % 2
  s2. s4\sf | s1*12 | % 3
  s1*5 | s4\< s\> s2\! | s4\< s\> s2\! | s2. s4\sf | s1*4 | % 4
  s1*8 | s2\> s\! | % 5
  s1*7 | s2.. s8\pp | % 6
  s1*6 | s2. s4\ff | s1 | % 7
  s1\mf | s1 | s2. s4\sf | s1*3 | s1\f | s\p |
}

soprano = \relative {
  \override Glissando.style = #'zigzag
  \global
  \grace s8. R1*3 |
  R1 | d''8^> 4 b8 a^> a r4 | d8^> 4 b8 a4^> r |
  d8^> d b b a a b b | fis4^> e^> d^> r | d'8^> b4 a8^>(4) b |
  d4^> b8^> a^>(2) | d8^> d b b a a b b | fis4^> e^> d^> r | % 2a
  b'4..^>(bes16) a4 r | b4..^> bes16 a4^> r | b4..(bes16) a4 d^^ |
  b4 b d a^^\glissando( | b4.. bes16) a4 r | b4.. bes16 a4 r |
  d8^\markup SOLO 8 b b a a b4^^ | d cis d r | R1  % 3a
  R1*3 |
  d8^>^\markup SOLO 4 b8 a^> a r4 | d8^> 4 b8 a4^> r | d^> b a d^>~( | d cis d) r |
  d8^\markup SOLO 4 b8 a a r b | d4 b8 a~4 r | d b a8 a b4 |
  b4^> cis^> d^> \acciaccatura c,8 d4^>~ | 8 d b' b a a b4^> | d, b' a b | % 4a
  d,8^> d b' b a a b4^> | fis e d \acciaccatura c'8 d4~ | 2 4 r |
  \acciaccatura c8 d2 4 r | d8^\markup Melody d b b a a b4^^ | d4 cis d r |
  R1*3 |
  r2 r4 r8 a | d8^> 4 b8 a a r4 | d8^> 4 b8 a4 r | % 5a
  d8^> d b b a b r4 | fis8^> e r \caesura d~d r r4 | \acciaccatura c'8^\markup\italic port. d4 b8^> a a r r4 |
  \acciaccatura c8^\markup\italic port. d4 b8^> a r2 | \acciaccatura c8^\markup\italic port. d4. b8 a \caesura a b4^> | fis e d r |
  b'4..^>(bes16) a4 r | b4..^> bes16 a4 r | % 6a
  b4..^>(bes16) a4 d^> | b8^> cis^> r d^>~4 r | d,8^\markup SOLO d b' b a a b4^> |
  d,8^> b'^> r4 a8^> b^> a4\glissando( | d8^>) d b b a a b4^> | d8 cis r d^>~4 r8\fermata a^\markup Melody |
  d8 d b b a a r4 | d8 d b b a4 r | d8 d b b a4 \caesura b8 b | % 7a
  a4 g fis \caesura a8 a | d d b b a a r a |
  d8 d b b a4 \caesura r | r2 r4 d8^> d | a4 g fis r |
  d8^> d b' b a a b4^> | d,4 b' a b | % 8a
  d,8^> d b' b a a b4^> | fis e d r | d8^> d b' b a a b4 |
  d,4^> b'^> a^> b^> | d8^> d b b a a <\tweak font-size #-2 b fis'>4\fermata_\markup\tiny "(Opt. small notes)" | q4 <\tweak font-size #-2 cis e> d r |
  \bar "|."
}

wordsSop = \lyricmode {
  Put on de skil -- let, put on de lead,
  Mam -- my's goin' to bake a lit -- tle short -- 'nin' bread.
  Dat ain't all __ she's goin' to do,
  Mam -- my's goin' to make a lit -- tle cof -- fee too.
  Mam -- my's ba -- by loves,
  Ba -- by loves short -- 'nin' bread.
  Mam -- my's ba -- by loves,
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.

  Three lit -- tle chil -- dren ly -- in' in bed,
  Two wuz sick Mm __
  Sent fo' de doc -- tor, de doc -- tor said,
  'Feed dose chil -- lun on short -- 'nin' bread.'
  Mam -- my's lit -- tle ba -- by loves short -- 'nin', short -- 'nin',
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.
  Mam -- my's ba -- by
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.

  I slip to de kitch -- en slip up de lead,
  Slip ma pock -- ets full of short -- 'nin' bread.
  Stole de skil -- let, stole __ de lead,
  Stole de gal to make short -- 'nin' bread.
  Mam -- my's ba -- by loves,
  Ba -- by loves short -- 'nin' bread.
  Mam -- my's lit -- tle ba -- by loves short -- 'nin', short -- 'nin',
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.
  Dey caught me wid de skil -- let, caught me wid de lead,
  Caught me wid de gal, mak -- in' short -- 'nin' bread.
  Paid six dol -- lahs fo' de skil -- let,
  six dol -- lahs fo' de lead,
  eat -- in' short -- 'nin' bread.
  Mam -- my's lit -- tle ba -- by loves short -- 'nin', short -- 'nin',
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.
  Mam -- my's lit -- tle ba -- by loves short -- 'nin', short -- 'nin',
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.
}

wordsSopMidi = \lyricmode {
  "Put " "on " "de " skil "let, " "put " "on " "de " "lead, "
  "\nMam" "my's " "goin' " "to " "bake " "a " lit "tle " short "'nin' " "bread. "
  "\nDat " "ain't " "all "  "she's " "goin' " "to " "do, "
  "\nMam" "my's " "goin' " "to " "make " "a " lit "tle " cof "fee " "too. "
  "\nMam" "my's " ba "by " "loves, "
  "\nBa" "by " "loves " short "'nin' " "bread. "
  "\nMam" "my's " ba "by " "loves, "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "

  "\nThree " lit "tle " chil "dren " ly "in' " "in " "bed, "
  "\nTwo " "wuz " "sick " "Mm " 
  "\nSent " "fo' " "de " doc "tor, " "de " doc "tor " "said, "
  "\n'Feed " "dose " chil "lun " "on " short "'nin' " "bread.' "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin', " short "'nin', "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "
  "\nMam" "my's " ba "by "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "

  "\nI " "slip " "to " "de " kitch "en " "slip " "up " "de " "lead, "
  "\nSlip " "ma " pock "ets " "full " "of " short "'nin' " "bread. "
  "\nStole " "de " skil "let, " "stole "  "de " "lead, "
  "\nStole " "de " "gal " "to " "make " short "'nin' " "bread. "
  "\nMam" "my's " ba "by " "loves, "
  "\nBa" "by " "loves " short "'nin' " "bread. "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin', " short "'nin', "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "
  "\nDey " "caught " "me " "wid " "de " skil "let, " "caught " "me " "wid " "de " "lead, "
  "\nCaught " "me " "wid " "de " "gal, " mak "in' " short "'nin' " "bread. "
  "\nPaid " "six " dol "lahs " "fo' " "de " skil "let, "
  "\nsix " dol "lahs " "fo' " "de " "lead, "
  "\neat" "in' " short "'nin' " "bread. "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin', " short "'nin', "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin', " short "'nin', "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s1\f | s1*4 |
  s1*5 | s2. s4\sf | s1*3 | % 2
  s2. s4\sf | s1*12 | % 3
  s1*2 | s4\< s\> s2\! | s4\< s\> s2\! | s1*8 | % 4
  s2. s4\< | s\> s2\! s4\< | s4\> s2.\! | s1*5 | s2\> s\! | % 5
  s1*7 | s2.. s8\pp | % 6
  s1*5 | s2. s4\f | s2. s4\ff | s1 | % 7
  s1\mf | s1 | s2. s4\sf | s1*3 | s1\f | s\p |
}

alto = \relative {
  \override Glissando.style = #'zigzag
  \global
  \grace s8. R1*3 |
  R1 | fis'8^> 4 8 g^> g r4 | fis8^> 4 8 g4^> r |
  fis8^> 8 eis eis fis fis d d | d4^> cis^> d^> r | fis8^> 4 8^>~4 d |
  fis4^> 8^> 8^>~2 | fis8^> fis eis eis fis fis d d | d4^> cis^> d^> r | % 2a
  d8^>^\markup Melody d b' b a a b4^> | d, b' a b | d,8 d b' b a a b4^^ |
  fis4 e d r | d8 d b' b a a b4 | d,4 b' a b |
  r2 r4 fis^^ | fis^\markup Melody e d r | R1 | % 3a
  R1*3 |
  R1 | R | r2 r4 b'8^\markup Melody b | fis^> fis e4^> d^> r |
  R1*3 |
  fis4^>^\markup Melody e^> d^> r | \acciaccatura eis8 fis2 4 r | \acciaccatura eis8 fis2 4 r | % 4a
  \acciaccatura e8 fis2 4 4^> | d cis d r | d8^>^\markup Melody d b' b a a b4^> |
  d,4 b' a b  r2 r4 d, | fis^\markup Melody e d r |
  R1*3 |
  r2 r4 \acciaccatura c8 d4^>~ | 2. \acciaccatura b8 c4~ | 2. \acciaccatura ais8 b4~ | % 5a
  b4 r r2 | r2 r4 \acciaccatura c8 d4~ | 2. \acciaccatura b8 c4^> ~ |
  c2. \acciaccatura ais8 b4~ | b r r2 | d4 cis d r |
  d8^>^\markup "Melody—Archly" d b' b a a b4^> | d,8^> b'^> r4 a8^> b^> r4 | % 6a
  d,8^> d b' b a a b4^> | fis8^> e^> r d^>~4 r | R1 |
  d8^> fis^> r4 fis8^> fis^> r4 | r2 r4 d^> | fis8^\markup Melody e r fis^>~4 r8\fermata a |
  fis8 fis fis fis g g r4 | fis8 fis fis fis g4 r | fis8 fis eis eis fis4 \caesura gis8 8 | % 7a
  fis4^\markup Melody e d \caesura a'8 a | fis fis fis fis g g r a |
  fis8 fis fis fis g4 \caesura a^\markup SOLO | d4 b8 b a4 b8^> b | fis4 e d r |
  d8^> d d d d d d4^> | d d d d | % 8a
  d8^> d d d d d d4^> | d cis d r | d8^> d d d d d d4^> |
  d4^> d^> d^> d^> | fis8^> fis b b a a <dis, \tweak font-size #-2 fis>4\fermata_\markup\tiny "(Opt. small notes)" | <\tweak font-size #-2 fis gis> <\tweak font-size #-2 e g> fis r |
  \bar "|."
}

wordsAlto = \lyricmode {
  Put on de skil -- let, put on de lead,
  Mam -- my's goin' to bake a lit -- tle short -- 'nin' bread.
  Dat ain't all __ she's goin' to do,
  Mam -- my's goin' to make a lit -- tle cof -- fee too.
  Mam -- my's lit -- tle ba -- by loves short -- 'nin', short -- 'nin',
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.
  Mam -- my's lit -- tle ba -- by loves short -- 'nin', short -- 'nin',
  loves short -- 'nin' bread.

  an' de o -- ther mos' dead!
  short -- 'nin' bread.'
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.
  Mam -- my's lit -- tle ba -- by loves short -- 'nin', short -- 'nin',
  loves short -- 'nin' bread.

  Mm __ Mm __ Mm __ Mm __ Mm __ Mm __
  short -- 'nin' bread.
  Mam -- my's lit -- tle ba -- by loves short -- 'nin', short -- 'nin',
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.
  short -- 'nin', short -- 'nin, loves short -- 'nin' bread.
  Dey caught me wid de skil -- let, caught me wid de lead,
  Caught me wid de gal, mak -- in' short -- 'nin' bread.
  Paid six dol -- lahs fo' de skil -- let,
  six dol -- lahs fo' de lead,
  Spent six mont's in jail,
  eat -- in' short -- 'nin' bread.
  Mam -- my's lit -- tle ba -- by loves short -- 'nin', short -- 'nin',
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.
  Mam -- my's lit -- tle ba -- by loves short -- 'nin', short -- 'nin',
  Mam -- my's lit -- tle ba -- by loves short -- 'nin' bread.
}

wordsAltoMidi = \lyricmode {
  "Put " "on " "de " skil "let, " "put " "on " "de " "lead, "
  "\nMam" "my's " "goin' " "to " "bake " "a " lit "tle " short "'nin' " "bread. "
  "\nDat " "ain't " "all "  "she's " "goin' " "to " "do, "
  "\nMam" "my's " "goin' " "to " "make " "a " lit "tle " cof "fee " "too. "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin', " short "'nin', "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin', " short "'nin', "
  "\nloves " short "'nin' " "bread. "

  "\nan' " "de " o "ther " "mos' " "dead! "
  "\nshort" "'nin' " "bread.' "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin', " short "'nin', "
  "\nloves " short "'nin' " "bread. "

  "\nMm "  "Mm "  "Mm "  "Mm "  "Mm "  "Mm " 
  "\nshort" "'nin' " "bread. "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin', " short "'nin', "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "
  "\nshort" "'nin', " short "'nin, " "loves " short "'nin' " "bread. "
  "\nDey " "caught " "me " "wid " "de " skil "let, " "caught " "me " "wid " "de " "lead, "
  "\nCaught " "me " "wid " "de " "gal, " mak "in' " short "'nin' " "bread. "
  "\nPaid " "six " dol "lahs " "fo' " "de " skil "let, "
  "\nsix " dol "lahs " "fo' " "de " "lead, "
  "\nSpent " "six " "mont's " "in " "jail, "
  "\neat" "in' " short "'nin' " "bread. "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin', " short "'nin', "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin', " short "'nin', "
  "\nMam" "my's " lit "tle " ba "by " "loves " short "'nin' " "bread. "
}

pianoRHone = \relative {
  \set Staff.connectArpeggios = ##t
  \global
  \repeat unfold 3 { \grace s8. d''8-.-^ r <d fis b>-.-^\arpeggio r <d fis a>-.-^\arpeggio r <d fis b>-.-^\arpeggio r | }
  <gis, d' fis>8-.-^ r <g e'>-.-^ r <fis d'>-.-^ r r4 | % 1b
  r4 <d' fis a>8^.\arpeggio r r4 <e g a>8^.\arpeggio r |
  r4 <d fis a>8^.\arpeggio r r4 <e g a>8^.\arpeggio r |
  <fis, d'>8-. r <cis eis b'>4->(<d fis a>8) r <d fis b>4-- | % 1c
  <b d fis gis>8-.\arpeggio r <a cis e g>-.\arpeggio r <d fis>-.\arpeggio r16 a(b8. cis16 |
  <fis, d'>8) r <d'' fis b>8-.\arpeggio r r4 <d fis a>8-.\arpeggio r |
  r4 <d fis b>8-.\arpeggio r r4 <d fis a>8-.\arpeggio r | % 2a
  <fis, d'>8 r <cis eis b'>4->(<d fis a>8) r <d fis b>4 |
  <b d fis gis>8\arpeggio r <a cis e g>\arpeggio r <d fis>\arpeggio r r4 |
  \repeat unfold 3 {\voiceOne r4 <d fis>8-.\arpeggio r8 r4 q8-.\arpeggio r8 | } % 2b
  \oneVoice <d fis gis>8-.\arpeggio r <cis e g>-.\arpeggio r <d fis>-.\arpeggio r r4 |
  \repeat unfold 2 {\voiceOne r4 <d fis>8-.\arpeggio r8 r4 q8-.\arpeggio r8 | }
  r4 q8-.\arpeggio r8 \oneVoice r4 <d fis b> | % 3a
  <d fis gis>8-.\arpeggio r <cis e g>-.\arpeggio r <d fis>-.\arpeggio r r4 |
  d'8-.-^ r <d fis b>-.-^\arpeggio r <d fis a>-.-^\arpeggio r <d fis b>-.-^\arpeggio r |
  d8-.-^ r <d fis b>-.-^\arpeggio r <d fis a>-.-^\arpeggio r <d fis b>-.-^\arpeggio r | % 3b
  <fis a d>8-.-^\arpeggio r <d fis b>-.-^\arpeggio r <d fis a>-.-^\arpeggio r <d fis b>-.-^\arpeggio r |
  <gis, d' fis>8-.-^\arpeggio r <g e'>-.-^\arpeggio r <fis d'>-.-^ r r4 |
  r4 <d' fis a>8-.\arpeggio r r4 <e g a>8-.\arpeggio r | % 3c
  r4 <d fis a>8-.\arpeggio r r4 <e g a>8-.\arpeggio r |
  <fis, d'>8 r r <cis eis b'>->(<d fis a>) r <d fis b>4-- |
  <b d fis gis>8-.\arpeggio r <a cis e g>-.\arpeggio r <d fis>-.\arpeggio r16 a(b8. cis16 |
  <fis, d'>8) r <d'' fis b>-.\arpeggio r r4 <e g a>8-.\arpeggio r | % 3d
  r4 <d fis b>8-.\arpeggio r r4 <e g a>8-.\arpeggio r |
  <fis, d'>8-.\arpeggio r r4 r <d fis b>8-.\arpeggio r |
  r4 <cis e g>8-.\arpeggio r <d fis>-.\arpeggio r r4 \voiceOne | % 4a
  \repeat unfold 3 {r4 <d fis>8-.\arpeggio r r4 q8-.\arpeggio r | }
  \oneVoice <d fis gis>8-.\arpeggio r <cis e g>-.\arpeggio r <d fis>-.\arpeggio r r4 \voiceOne | % 4b+
  \repeat unfold 3 {r4 <d fis>8-.\arpeggio r r4 q8-.\arpeggio r | }
  \oneVoice <d fis gis>8-.\arpeggio r <cis e g>-.\arpeggio r <d fis>-.\arpeggio r r4 |
  \repeat unfold 3 {d'8-.-^ r <d fis b>-.-^\arpeggio r <d fis a>-> \ottava #1 <d' fis b>-> \ottava #0 r4 | } % 4d
  \ottava #1 <gis, d' fis>8-.-^ r <g e'>-.-^ r <fis a d>-.-^ \ottava #0 r8 <fis,, d'>4--~ | 1~ | 1~ | % 5a
  q8 r <fis c' d>-.\arpeggio r r4 <fis b d>8-.\arpeggio r | % 5b
  r4 r8 \caesura <a cis g'>->~(<a d fis>) r <fis d'>4--^\markup\italic ten. ~ |
  q1~ |
  q1~ | % 5c
  q8 r r4 <fis c' d>8-.\arpeggio r r4 |
  r4 r8 <a cis g'>(<a d fis>) r r4 |
  \voiceOne r4 <d fis>8-.\arpeggio r r4 q8-.\arpeggio r | % 6a
  \oneVoice <b d>-> <d fis b>-> r4 <d fis a>8-> <d fis b>-> r4 |
  \voiceOne r4 <d fis>8-.\arpeggio r r4 q8-.\arpeggio r | % 6b
  \oneVoice <d fis gis>8-> <cis e g>-> r4 <d fis>-> r |
  \voiceOne r4 <d fis>8-.\arpeggio r r4 q8-.\arpeggio r |
  \oneVoice <b d>8-> <d fis b>-> r4 <d fis a>8-> <d fis b>-> r4 | % 6c
  \voiceOne r4 <d fis>8-.\arpeggio r r4 q8-.\arpeggio r |
  \oneVoice <d fis gis>8-> <cis e g>-> r4 <d fis>-.-^ r4\fermata |
  r4 <d' fis a>8-.\arpeggio r r4 <e g a>8-.\arpeggio r | % 7a
  r4 <d fis a>8-.\arpeggio r r4 <e g a>8-.\arpeggio r |
  <fis, d'>8 r <cis eis b'>4->(<d fis a>8) r \caesura <d fis b>4-- |
  \voiceOne <fis a>8\arpeggio r <e g>\arpeggio r <d fis>\arpeggio \oneVoice r r4 | % 7b
  r4 <d' fis a>8-.\arpeggio r r4 <e g a>8-.\arpeggio r |
  r4 <d fis a>8-.\arpeggio r r4 \caesura <e g a>8-.\arpeggio r | % 7c
  <fis, d'>8 r r <cis eis b'>(<d fis a>) r <d fis b>4-- |
  \voiceOne <fis a>8\arpeggio r <e g>\arpeggio r <d fis> \oneVoice r r4 |
  \repeat unfold 3 {d'8-. r <d fis b>-.\arpeggio r <d fis a>-.\arpeggio r <d fis b>-.\arpeggio r | } % 8a
  <gis, d' fis>8-. r <g e'> r <fis d'> r r4 | % 8b+
  \repeat unfold 2 {d'8-. r <d fis b>-.\arpeggio r <d fis a>-.\arpeggio r <d fis b>-.\arpeggio r | }
  <fis a d>8-.\arpeggio r <d fis b>-.\arpeggio r <d fis a>-.\arpeggio r <dis fis b>-.\arpeggio\fermata r | % 8c+
  <gis, d' fis>4-.-^ <g d'>-.-^ <fis a d>-.-^ <fis, d'>8-.-^ r |
  \bar "|."
}

pianoRHtwo = \relative {
  \set Staff.connectArpeggios = ##t
  \global \voiceTwo
  \grace s8. s1*12 |
  b4.. bes16(a4..) ais16( | b4..) bes16(a4..) ais16( | b4..) bes16(a4) b8\arpeggio r | % 2b
  s1 | b4.. bes16(a4..) ais16( | b4..) bes16(a4..) ais16( |
  b4..) s16 s2 | s1*12 | % 3
  s1 | b4.. bes16(a4..) ais16( | b4..) bes16(a4..) ais16( |
  b4..) bes16(a4) b8 r | s1 | % 4b+
  b4.. bes16(a4..) ais16( | b4..) bes16(a4..) ais16( |
  b4..) bes16(a4) b8 r | s1*4 | % 4c
  s1 | \change Staff=pianolh \voiceOne r2 r4^\markup\italic "R.H." \appoggiatura {a16^\< ais\! b^\>} c4\!~ | % 5a
  2. \appoggiatura {gis16^\< a\! ais^\>} b4\! |
  b8 s2.. | s1 | r2 r4^\markup\italic "R.H." \appoggiatura {a16^\< ais\! b^\>} c4\! ~ | % 5b
  c2. \appoggiatura {gis16^\< a\! ais^\>} c4\!~ | 8 s2.. | s1 | \change Staff=pianorh \voiceTwo
  b4.. bes16(a4..) r16 | s1 | % 6a
  b4.. bes16(a4..) r16 | s1 | b4.. bes16(a4..) r16 |
  s1 | b4.. bes16(a4..) r16 | s1 |
  s1*3 | % 7a
  a2~8\arpeggio s4. | s1 |
  s1 | s | a2~8 s4. |
  s1*8 | % 8
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\ff | s | s |
  s1 | s4 s2.\p | s1 |
  s1*3 |
  s1 | s | s2. s4-\markup\italic "hold back" | % 2a
  s1-\markup\italic "in time" | s | s |
  s2. s4\sf | s1 | s |
  s2. s4\sf | s1 | s\ff | % 3a
  s1*10 |
  s2. s4-\markup\italic "hold back" | s1*8 | s1\ff | s | s | % 4
  s2. s4\mf | s1*8 | % 5
  s1*8 | % 6
  s1\pp | s1*4 | s2. s4\f | s1 | s | % 7
  s1-\markup\italic lightly | s1*5 | s1-\markup\italic "in time" | s2.\p s4\sf |
}

pianoLHone = \relative {
  \global
  \acciaccatura {gis'16 a ais} b4..-> bes16(a4..->) ais16( |
  b4..->) 16(a4..->) ais16( |
  b4..->) 16(a4->) b \clef bass |
  <e,, b'>8-.-^ r <a cis>-.-^ r <d, a' d>-.-^ r r4 | % 1b
  r4 <a' d fis>8-.\arpeggio r r4 <a cis g'>8-.\arpeggio r |
  r4 <a d fis>8-.\arpeggio r r4 <a cis g'>8-.\arpeggio r |
  <d, a'>8-. r <a g'>4-> ~8 r <e b' gis'>4--\arpeggio | % 1c
  r8 a4.->(d,8-.) r16 a'(b8. a16~ |
  <d, a'>8) r <b'' d fis>8-.\arpeggio r r4 <a d fis>8-.\arpeggio r |
  r4 <b d fis>8-.\arpeggio r r4 <a d fis>8-.\arpeggio r | % 2a
  <d, a'>8 r <a g'>4->~(<a fis'>8) r <e b' gis'>4\arpeggio |
  r8 a4.->(d,8) r a8(ais32 b bis cis |
  d8-.) r r4 a8-. r r4 | d8-. r r4 a8-. r r4 | d8-. r r4 a8-. r d-. r | % 2b
  e8-. r a,-. r d-. r \appoggiatura {d'16 cis bes} a8 r | % 2c
  d,8-. r r4 a8-.r r4 |
  d8-. r r4 a8-.r r4 |
  d8-. r r4 r2 | % 3a
  e8-. r a,-. r d r r4 \clef treble |
  \appoggiatura {gis''16 a ais} b4..-> bes16(a4..->) ais16( |
  b4..->) bes16(a4..->) ais16( % 3b
  b4..->) bes16(a4->) b \clef bass |
  <e,, b'>8-.-^ r <a cis>-.-^ r <d, b' d>-.-^ r r4 |
  r4 <a' d fis>8-.\arpeggio r r4 <a cis g'>8-.\arpeggio r | % 3c
  r4 <a d fis>8-.\arpeggio r r4 <a cis g'>8-.\arpeggio r |
  <d, a'>8 r r <a g'>~(<a fis'>) r <e b' gis'>4--\arpeggio |
  r8 a4.(d,8-.) r16 a'(b8. a16 |
  <d, a'>8) r <a'' d fis>8-.\arpeggio r r4 <a cis g'>8-.\arpeggio r | % 3d
  r4 <a d fis>8-.\arpeggio r r4 <a cis g'>8-.\arpeggio r |
  <d, a'>8-. r r4 r <e, b' gis'>8-.\arpeggio r |
  r4 a8-. r d,-. r a->(ais32 b bis cis | % 4a
  d8-.) r r4 a8-. r r4 |
  d8-. r r4 a4.->(ais32 b bis cis |
  d8-.) r r4 a8-. r d-. r | % 4b
  e8-. r a,-. r d-. r a8(ais32 b bis cis |
  d8-.) r r4 a8-. r r4 |
  d8-. r r4 a4. ais32(b bis cis | % 4c
  b8-.) r r4 a8-. r d-. r |
  e8-. r a,-. r d-. r r4 \clef treble |
  \appoggiatura {gis'' a ais} b4..-> bes16(a4..) ais16( | % 4d
  b4..) bes16(a4..) ais16( |
  b4..) bes16(a4..) ais16( |
  b8-.-^) r cis-.-^ r d-.-^ r \clef bass <d,,, a'>4--^\markup\italic ten. ~ | % 5a
  q1~ | q~ |
  q8 r8 q8-.\arpeggio r r4 q8-. r | % 5b
  r4 r8 \caesura a8->(d-.) r q4--^\markup\italic ten. ~ | q1~ |
  q1~ | q8 r r4 q8\arpeggio r r4 | r4 r8 a8->(d-.) r a8->(ais32 b bis cis | % 5c
  d8-.) r r4 a8-. r r4 | d8-. r r4 a4.(ais32 b bis cis | % 6a
  d8-.) r r4 a8-. r r4 | e'8-> a,-> r4 b a8->(ais32 b bis cis | d8-.) r r4 a8-.r r4 |
  d8-.r r4 a4.->(ais32 b bis cis | d8-.) r r4 a8-. r r4 | e'8-> a,-> r4 d4-.-^ r4\fermata |
  r4 <a'' d fis>8-.\arpeggio r r4 <a cis g'>8-.\arpeggio r | % 7a
  r4 <a d fis>8-.\arpeggio r r4 <a cis g'>8-.\arpeggio r |
  <d, d'>8 r <a g'>4->~(<a fis'>8) r \caesura <e b' gis'>4--\arpeggio |
  r8 a4.(d,8) r r4 | r <a'' d fis>8-.\arpeggio r r4 <a cis g'>8-.\arpeggio r | % 7b
  r4 <a d fis>8-.\arpeggio r r4 \caesura <a cis g'>8-.\arpeggio r | % 7c
  <d, a'>8 r r <a g'>8~(<a fis'>) r8 <e b' gis'>4--\arpeggio |
  r8 a4.(d,8-.) r r4 \clef treble |
  \appoggiatura {gis'' a ais} b4..-> bes16(a4..->) ais16( | % 8a
  b4..->) bes16(a4..->) ais16( |
  b4..->) bes16(a4->) b \clef bass | % 8b
  <e,, b'>8-. r <a cis>-. r <d, a' d>-. r r4 \clef treble |
  \appoggiatura {gis' a ais} b4..-> bes16(a4..->) ais16( |
  b4..->) bes16(a4..->) ais16( | % 8c
  b4..->) bes16(a4->) <b, dis fis a>\arpeggio\fermata \clef bass |
  <e, b'>4-.-^ <a cis>-.-^ <d, a' d>-.-^ <d, a'>8-.-^ r |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \grace s8. s1
%  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            shortInstrumentName = #"I"
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
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \consists "Span_arpeggio_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
        \Staff \RemoveAllEmptyStaves
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

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single-bass"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            shortInstrumentName = #"I"
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
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \clef bass
            \new Voice \transpose c c, \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \consists "Span_arpeggio_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
        \Staff \RemoveAllEmptyStaves
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
%            instrumentName = #"Soprano"
            shortInstrumentName = #"I"
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
%            instrumentName = #"Alto"
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \consists "Span_arpeggio_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
        \Staff \RemoveAllEmptyStaves
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
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
            shortInstrumentName = #"I"
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
%            instrumentName = #"Alto"
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \consists "Span_arpeggio_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Staff \RemoveAllEmptyStaves
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
            shortInstrumentName = #"I"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
%            instrumentName = #"Alto"
            shortInstrumentName = #"II"
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \transpose c c, \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \consists "Span_arpeggio_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Staff \RemoveAllEmptyStaves
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
%            instrumentName = #"Soprano"
            shortInstrumentName = #"I"
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
%            instrumentName = #"Alto"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \consists "Span_arpeggio_engraver"
            \accidentalStyle Score.modern
          }
          <<
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
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
            shortInstrumentName = #"I"
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
%            instrumentName = #"Alto"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \consists "Span_arpeggio_engraver"
            \accidentalStyle Score.modern
          }
          <<
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
