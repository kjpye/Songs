\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Travellin' Home"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Dix Richard & Alex Masters"
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

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
  \tempo 4=125
}

TempoTrack = {
  \global
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "12a" }  s2.*4
  \mark \markup { \circle "12b" }  s2.*4
  \mark \markup { \circle "12c" }  s2.*4
  \mark \markup { \circle "13a" }  s2.*4
  \mark \markup { \circle "13b" }  s2.*4
  \mark \markup { \circle "13c" }  s2.*4
  \mark \markup { \circle "13d" }  s2.*4
  \mark \markup { \circle "14a" }  s2.*4
  \mark \markup { \circle "14b" }  s2.*4
  \mark \markup { \circle "14c" }  s2.*4
  \mark \markup { \circle "14d" }  s2.*4
  \mark \markup { \circle "15a" }  s2.*4
  \mark \markup { \circle "15b" }  s2.*4
  \mark \markup { \circle "15c" }  s2.*4
  \mark \markup { \circle "15d" }  s2.*4
  \mark \markup { \circle "16a" }  s2.*4
  \mark \markup { \circle "16b" }  s2.*4
  \mark \markup { \circle "16c" }  s2.*4
  \mark \markup { \circle "16d" }  s2.*4
  \mark \markup { \circle "17a" }  s2.*4
  \mark \markup { \circle "17b" }  s2.*4
  \mark \markup { \circle "17c" }  s2.*4
  \mark \markup { \circle "17d" }  s2.*4
  \mark \markup { \circle "18a" }  s2.*4
  \mark \markup { \circle "18b" }  s2.*4
  \mark \markup { \circle "18c" }  s2.*4
  \mark \markup { \circle "18d" }  s2.*4
  \mark \markup { \circle "19a" }  s2.*4
  \mark \markup { \circle "19b" }  s2.*4
  \mark \markup { \circle "19c" }  s2.*4
  \mark \markup { \circle "19d" }  s2.*5
  \mark \markup { \circle "19e" }  s2.*5
}

ChordTrack = \chordmode {
  d2.
  e2.:m7/d
  d
  e:m7/d
  d % 12b
  s2.*3
  g2 a4 % 12c
  b2.:m
  e2.:m
  a2.
  d2. % 13a
  s2.*3
  d2./a % 13b
  a2.
  d2 g4/d
  d2.
  d2. % 13c
  b2.:m
  e2.:m7
  a2.
  d2. % 13d
  b2.:m
  e2.:m7
  a2.
  d2. % 14a
  b2.:m
  e2.:m7
  a2.
  d2./a % 14b
  a2.
  d2 g4/d
  d2.
  d2. % 14c
  s2.*3
  g2 a4 % 14d
  b2.:m
  e2.:m
  a2.
  d2. % 15a
  s2.*3
  d2./a % 15b
  a2.
  d2.
  bes2.
  ees2. % 15c
  s2.*3
  aes2 bes4 % 15d
  c2.:m
  f2.:m
  bes2.
  ees2. % 16a
  s2.*3
  ees2./bes % 16b
  bes2.
  ees2 aes4/ees
  ees2.
  ees2. % 16c
  ces2.:m
  f2.:m7
  bes2.
  ees2. % 16d
  ces2.:m
  f2.:m7
  bes2.
  ees2. % 17a
  ces2.:m
  f2.:m7
  bes2.
  ees2./bes % 17b
  bes2.
  ees2 aes4/ees
  ees2.
  ees2. % 17c
  s2.*3
  aes2 bes4 % 17d
  c2.:m
  f2.:m
  bes2.
  ees2. % 18a
  s2.*3
  ees2./bes % 18b
  bes2.
  ees2 aes4/ees
  ees2.
  f2.:m % 18c
  bes2.
  ees2.
  s2.
  f2.:m % 18d
  aes2/bes bes4:7
  ees2.
  s2.
  f2.:m % 19a
  bes2.
  ees2.
  s2.
  f2.:m % 19b
  aes2/bes bes4:7
  ees2.
  aes2./ees
  ees2. % 19c
  aes2./ees
  ees2.
  aes2./ees
  ees2. % 19d
  s2.
  s2.
  aes2./ees
  ees2.
  aes2./ees % 19e
  ees2.
  aes2./ees
  ees2.
  s2.
}

melody = \relative {
  \global
  r2.*3
  r4 r a
  a4. b8 a4 % 12b
  a4(fis a)
  d4 d e
  fis8(d~d4) r
  g4 g e8 fis~ % 12c
  fis4 fis d8 b~
  b4 g' b,
  b8(a~a2)
  a4. b8 a4 % 13a
  a4(fis a)
  d4 d e
  fis2 r4
  a4 fis d % 13b
  e4 r fis
  d2.
  d2 r4 \bar "||"
  a'4 fis a % 13c
  fis4 d d
  b4 e d
  cis8(a~a2)
  a8 b~b4 cis8 d~ % 13d
  d4 e fis
  g8 fis8~4 e
  e2 r4
  a4 fis a8 fis~ % 14a
  fis4 d8 d4.
  b8 e~e4 d
  cis8(a~a4.) g'8
  fis4. e8~e d % 14b
  d4 cis4. e8
  d2.
  d2 r4
  a4. b8 a4 % 14c
  a4(fis a)
  d4 d e
  fis8(d~d4) r
  g4 g e8 fis~ % 14d
  fis4 d cis
  b8 g'~g4 b,
  b8(a~a2)
  a4. b8 a4 % 15a
  a4(fis a)
  d4 d e
  fis2 r4
  a4 fis d % 15b
  e4 r fis
  d2.
  d4 r bes \bar "||" \key ees \major
  bes4. c8 bes4 % 15c
  bes4(g bes)
  ees4 ees f
  g8(ees~ees4) r
  aes4 aes f8 g~ % 15d
  g4 g ees8 c~
  c4 aes' c,
  c8(bes~bes2)
  bes4. c8 bes4 % 16a
  bes4(g bes)
  ees4 ees f
  g2 r4
  bes4 g ees % 16b
  f4 r g
  ees2.
  ees2 r4
  bes'4 g bes % 16c
  g4 ees ees
  c4 f ees
  d8(bes~bes2)
  bes8 c~c4 d8 ees~ % 16d
  ees4 f g
  aes8 g~g4 f
  f2 r4
  bes4 g bes8 g~ % 17a
  g4 ees8 ees4.
  c8 f~f4 ees
  d8(bes~bes4.) aes'8
  g2 f8 ees % 17b
  ees4 d4. f8
  ees2.
  ees2 r4 \bar "||"
  bes4. c8 bes4 % 17c
  bes4(g bes)
  ees4 ees f
  g8(ees~ees4) r
  aes4 aes f8 g~ % 17d
  g4 ees d
  c8 aes'~aes4 c,
  c8(bes~bes2)
  bes4. c8 bes4 % 18a
  bes4(g bes)
  ees4 ees f
  g2 r4
  bes4 g ees % 18b
  f4 r g
  ees2.
  ees2 r4
  f2. % 18c
  g2.
  ees2 c8 bes~
  bes2 r4
  f'2 f4 % 18d
  ees2 d4
  ees2 bes4
  g'2 r4
  f2. % 19a
  g2.
  ees2 c8 bes~
  bes2 r4
  f'2~ f8 c % 19b
  ees2~ees8 d \bar "||"
  ees2.~
  ees2.~
  ees2.~ % 19c
  ees2.
  R2.*12
  \bar "|."
}

wordsOne = \lyricmode {
  I'm trav -- el -- lin' home, __
  trav -- el -- lin' home. __
  Far have I roamed, __ from the fa -- ces I love. __
  Winds that have blown __ me on my way,
  blow me right back to har -- bour.
  Dis -- tant ho -- ri -- zons
  so sweet from a -- far __
  beck -- ons __ to me __ like a shim -- mer -- ing star.
  When you're a -- way, __ oh how swift -- ly you find. __
  you long for __ the place far be -- hind you.
  Trav -- el -- lin' home, __
  trav -- el -- lin' home, __
  I'm like a stone __ that's been roll -- in' too long. __
  Winds that have blown, __ me on my way,
  blow me right back to har -- bour.
  I'm trav -- el -- lin' home, __
  trav -- el -- lin' home, __
  Far have I roamed, __ from the fa -- ces I love. __
  Winds that have blown __ me on my way,
  blow me right back to har -- bour.
  Dis -- tant ho -- ri -- zons
  so sweet from a -- far __
  beck -- ons __ to me __ like a shim -- mer -- ing star.
  When you're a -- way, __ oh how swift -- ly you find. __
  you long for __ the place far be -- hind you.
  Trav -- el -- lin' home, __
  trav -- el -- lin' home, __
  I'm like a stone __ that's been roll -- in' too long. __
  Winds that have blown, __ me on my way,
  blow me right back to har -- bour.
  Trav -- 'lin' home a -- gain, __
  Trav -- 'lin' home my love to you.
  Trav -- 'lin' home a -- gain, __
  home __ a -- gain __ to you. __
}

midiWords = \lyricmode {
  "\nI'm " trav el "lin' " "home, " 
  "\ntrav" el "lin' " "home. " 
  "\nFar " "have " "I " "roamed, "  "from " "the " fa "ces " "I " "love. " 
  "\nWinds " "that " "have " "blown "  "me " "on " "my " "way, "
  "\nblow " "me " "right " "back " "to " har "bour. "
  "\nDis" "tant " ho ri "zons "
  "\nso " "sweet " "from " a "far " 
  "\nbeck" "ons "  "to " "me "  "like " "a " shim mer "ing " "star. "
  "\nWhen " "you're " a "way, "  "oh " "how " swift "ly " "you " "find. " 
  "\nyou " "long " "for "  "the " "place " "far " be "hind " "you. "
  "\nTrav" el "lin' " "home, " 
  "\ntrav" el "lin' " "home, " 
  "\nI'm " "like " "a " "stone "  "that's " "been " roll "in' " "too " "long. " 
  "\nWinds " "that " "have " "blown, "  "me " "on " "my " "way, "
  "\nblow " "me " "right " "back " "to " har "bour. "
  "\nI'm " trav el "lin' " "home, " 
  "\ntrav" el "lin' " "home, " 
  "\nFar " "have " "I " "roamed, "  "from " "the " fa "ces " "I " "love. " 
  "\nWinds " "that " "have " "blown "  "me " "on " "my " "way, "
  "\nblow " "me " "right " "back " "to " har "bour. "
  "\nDis" "tant " ho ri "zons "
  "\nso " "sweet " "from " a "far " 
  "\nbeck" "ons "  "to " "me "  "like " "a " shim mer "ing " "star. "
  "\nWhen " "you're " a "way, "  "oh " "how " swift "ly " "you " "find. " 
  "\nyou " "long " "for "  "the " "place " "far " be "hind " "you. "
  "\nTrav" el "lin' " "home, " 
  "\ntrav" el "lin' " "home, " 
  "\nI'm " "like " "a " "stone "  "that's " "been " roll "in' " "too " "long. " 
  "\nWinds " "that " "have " "blown, "  "me " "on " "my " "way, "
  "\nblow " "me " "right " "back " "to " har "bour. "
  "\nTrav" "'lin' " "home " a "gain, " 
  "\nTrav" "'lin' " "home " "my " "love " "to " "you. "
  "\nTrav" "'lin' " "home " a "gain, " 
  "\nhome "  a "gain "  "to " "you. " 
}

pianoRH = \relative {
  \global
  fis'4. e8 fis4
  g8 e b'4 a
  a4. fis8 d4
  e8 fis g4 a
  a4. b8 a4 % 12b
  a4(fis a)
  d4 d e
  fis8(d~d4) r
  g4 g e8 fis~ % 12c
  fis4 fis d8 b~
  b4 g' b,
  b8(a~a2)
  a4. b8 a4 % 13a
  a4(fis a)
  d4 d e
  fis2 r4
  a4 fis d % 13b
  e4 r fis
  d2.
  d2 r4 \bar "||"
  a'4 fis a % 13c
  fis4 d d
  b4 e d
  cis8(a~a2)
  a8 b~b4 cis8 d~ % 13d
  d4 e fis
  g8 fis8~4 e
  e2 r4
  a4 fis a8 fis~ % 14a
  fis4 d8 d4.
  b8 e~e4 d
  cis8(a~a4.) g'8
  fis4. e8~e d % 14b
  d4 cis4. e8
  d2.
  d2 r4
  a4. b8 a4 % 14c
  a4(fis a)
  d4 d e
  fis8(d~d4) r
  g4 g e8 fis~ % 14d
  fis4 d cis
  b8 g'~g4 b,
  b8(a~a2)
  a4. b8 a4 % 15a
  a4(fis a)
  d4 d e
  fis2 r4
  a4 fis d % 15b
  e4 r fis
  d2.
  d4 r bes \bar "||" \key ees \major
  bes4. c8 bes4 % 15c
  bes4(g bes)
  ees4 ees f
  g8(ees~ees4) r
  aes4 aes f8 g~ % 15d
  g4 g ees8 c~
  c4 aes' c,
  c8(bes~bes2)
  bes4. c8 bes4 % 16a
  bes4(g bes)
  ees4 ees f
  g2 r4
  bes4 g ees % 16b
  f4 r g
  ees2.
  ees2 r4
  bes'4 g bes % 16c
  g4 ees ees
  c4 f ees
  d8(bes~bes2)
  bes8 c~c4 d8 ees~ % 16d
  ees4 f g
  aes8 g~g4 f
  f2 r4
  bes4 g bes8 g~ % 17a
  g4 ees8 ees4.
  c8 f~f4 ees
  d8(bes~bes4.) aes'8
  g2 f8 ees % 17b
  ees4 d4. f8
  ees2.
  ees2 r4 \bar "||"
  bes4. c8 bes4 % 17c
  bes4(g bes)
  ees4 ees f
  g8(ees~ees4) r
  aes4 aes f8 g~ % 17d
  g4 ees d
  c8 aes'~aes4 c,
  c8(bes~bes2)
  bes4. c8 bes4 % 18a
  bes4(g bes)
  ees4 ees f
  g2 r4
  bes4 g ees % 18b
  f4 r g
  ees2.
  ees2 r4
  f2. % 18c
  g2.
  ees2 c8 bes~
  bes2 r4
  f'2 f4 % 18d
  ees2 d4
  ees2 bes4
  g'2 r4
  f2. % 19a
  g2.
  ees2 c8 bes~
  bes2 r4
  f'2~ f8 c % 19b
  ees2~ees8 d \bar "||"
  ees4 g,8 bes g4
  aes8 f c'4 bes
  \grace {bes8 c} bes4. g8 ees4 % 19c
  f8 g aes2
  g4. bes8 g4
  aes8 f c'4 bes
  \grace {bes8 c} bes4. g8 ees4 % 19d
  ees2.
  g4. ees8 g4
  aes8 f c'4 bes
  \grace {bes8 c} bes4. g8 ees4
  f8 g aes2 % 19e
  g4. ees8 g4
  aes8 f c'4 bes
  \grace {bes8 c} bes4. g8 f4
  <g, bes ees>2.
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mp
  s2.*121
  s2.\dim
  s2.*7
}

pianoLH = \relative {
  \global
  \oneVoice
  d8 <fis a> q q q q
  d8 <g b> q q q q
  d8 <fis a> q q q q
  d8 <g b> q q r4
  d,8 <fis' a d> q q q q % 12b
  d,8 q q q q q
  d8 q q q q q
  d8 q q q q q
  g8 q q q a4 % 12c
  b8 <fis' b d> q q q q
  e8 <g b> q q q q
  a,8 <e' a cis> q q q q
  d,8 <fis' a d> q q q q % 13a
  d,8 q q q q q
  d8 q q q q q
  d8 q q q q q
  a'8 q q q q q % 13b
  a8 q q q q q
  d,8 <d' fis a> q q <d g a> q
  d,8 <d' fis a> q q q q
  d,8 <fis' a d> q q q q % 13c
  b,8 <fis' b d> q q q q
  d,8 <e' g b> q q q q
  a,8 <e' a cis> q q q q
  d,8 <fis' a d> q q q q % 13d
  b,8 <fis' b d> q q q q
  e,8 <e' g b> q q q q
  a,8 <e' a cis> q q q q
  d,8 <fis' a d> q q q q % 14a
  b,8 <fis' b d> q q q q
  e,8 <e' g b> q q q q
  a,8 <e' a cis> q q q q
  a,8 <fis' a d> q q q q % 14b
  a,8 <e' a cis> q q q q
  d,8 <d' fis a> q q <d g b> q
  d,8 <d' fis a> q q q q
  d,8 <fis' a d> q q q q % 14c
  d,8 <fis' a d> q q q q
  d,8 q q q q q
  d8 q q q q q
  g8 <g' b d> q q a,4 % 14d
  b8 <fis' b d> q q q q
  e8 <g b> q q q q
  a,8 <e' a cis> q q q q
  d,8 <fis' a d> q q q q % 15a
  d,8 q q q q q
  d8 q q q q q
  d8 q q q q q
  a8 q q q q q % 15b
  a8 q q q q q
  d8 <d' fis a> q q q q
  bes8 <f' aes bes d> q q q q \bar "||" \key ees \major
  ees,8 <g' bes ees> q q q q % 15c
  a,8 q q q q q
  bes'8 q q q q q
  ees,8 q q q q q
  aes,8 <aes' c ees> q q bes,4 % 15d
  c8 <g' c ees> q q q q
  f8 <aes c> q q q q
  bes,8 <f' bes d> q q q q
  ees,8 <g' bes ees> q q q q % 16a
  ees,8 <f' bes d> q q q q
  ees,8 <ees' g bes> q q <ees aes c> q
  ees,8 <ees' g bes> q q q q
  bes8 <g' bes ees> q q q q % 16b
  bes,8 <f' bes d> q q q q
  ees,8 <ees' g bes> q q <ees aes c> q
  ees,8 <ees' g bes> q q q q
  ees,8 <g' bes ees> q q q q % 16c
  c,8 <g' c ees> q q q q
  f,8 <f' aes c> q q q q
  bes,8 <f' bes d> q q q q
  ees,8 <g' bes ees> q q q q % 16d
  c,8 <g' c ees> q q q q
  f,8 <f' aes c> q q q q
  bes,8 <f' bes d> q q q q
  ees,8 <g' bes ees> q q q q % 17a
  c,8 <g' c ees> q q q q
  f,8 <f' aes c> q q q q
  bes,8 <f' bes d> q q q q
  bes,8 <g' bes ees> q q q q % 17b
  bes,8 <f' bes d> q q q q
  ees,8 <ees' g bes> q q <ees aes c> q
  ees,8 <ees' g bes> q q q q \bar "||"
  ees,8 <g' bes ees> q q q q % 17c
  ees,8 q q q q q
  ees8 q q q q q
  ees8 q q q q q
  aes8 <aes' c ees> q q bes,4 % 17d
  c8 <g' c ees> q q q q
  f8 <aes c> q q q q
  bes,8 <f' bes d> q q q q
  ees,8 <g' bes ees> q q q q % 18a
  ees,8 q q q q q
  ees8 q q q q q
  ees8 q q q q q
  bes'8 q q q q q % 18b
  bes8 <f' bes d> q q q q
  ees,8 <ees' g bes> q q <ees aes c> q
  ees,8 <ees' g bes> q q q q
  f,8 <f' aes c> q q q q % 18c
  bes,8 <f' bes d> q q q q
  ees,8 <g' bes> q q q q
  ees,8 q q q q q
  f8 <f' aes c> q q q q % 18d
  bes,8 <aes' c> q q <f aes bes> q
  ees,8 <g' bes> q q q q
  ees,8 q q q q q
  f8 <f' aes c> q q q q % 19a
  bes,8 <f' bes d> q q q q
  ees,8 <g' bes> q q q q
  ees,8 q q q q q
  f8 <f' aes c> q q q q % 19b
  bes,8 <aes' c> q q <f aes bes> q
  ees,8 <ees' g bes> q q q q
  ees,8 <ees' aes c> q q q q
  ees,8 <ees' g bes> q q q q % 19c
  ees,8 <ees' aes c> q q q q
  ees,8 <ees' g bes> q q q q
  ees,8 <ees' aes c> q q q q
  ees,8 <ees' g bes> q q q q % 19d
  ees,8 q q q q q
  ees8 q q q q q
  ees8 <ees' aes c> q q q q
  ees,8 <ees' g bes> q q q q
  ees,8 <ees' aes c> q q q q % 19e
  ees,8 <ees' g bes> q q q q
  ees,8 <ees' aes c> q q q q
  ees,8 <ees' g bes> q q q q
  ees2.
  \bar "|."
}

\book {
  #(define output-suffix "single")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \unfoldRepeats \ChordTrack }
        \new FretBoards { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \wordsOne }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \unfoldRepeats \ChordTrack }
        \new FretBoards { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
