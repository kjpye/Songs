\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Anthem"
  subtitle    = "from Chess"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Benny Andersson, Time Rice and Bjorn Ulvaeus"
  arranger    = "Arr. John Purifoy"
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
  \time 4/4
  \tempo 4=96
}

TempoTrack = {
  \tempo 4 = 96
  s1*56
  \tempo 4=80 % 8a++
  s1*3 % 8b
  \tempo 4=96 % 8c
  s1
  \tempo 4=88
  s1
  s1
}

RehearsalTrack = {
  \mark \markup { \box "2a" } s1*3
  \mark \markup { \box "2b" } s1*3
  \mark \markup { \box "2c" } s1*3
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "3c" } s1*3
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "4c" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "5c" } s1*3
  \mark \markup { \box "6a" } s1*3
  \mark \markup { \box "6b" } s1*3
  \mark \markup { \box "6c" } s1*3
  \mark \markup { \box "7a" } s1*3
  \mark \markup { \box "7b" } s1*3
  \mark \markup { \box "7c" } s1*3
  \mark \markup { \box "8a" } s1*3
  \mark \markup { \box "8b" } s1*3
  \mark \markup { \box "8c" } s1*3
}

ChordTrack = \chordmode {
  d1
  a1/cis
  b2:m
  e/gis
  a1 % 2b
  a1/g
  g2 d/fis
  e1:m7 % 2c
  a2:sus a
  d2 a:7/e
  d2./fis d8 a/cis % 3a
  b2:m d/a
  gis2.:m7 e4/gis %%% FIX
  a2 b/a % 3b
  e4:m/g b/fis e:m b:m/d
  g2/a a:7
  d1 % 3c
  s2 a:7/e
  d2./fis
  d8 a/cis
  g2./b g4:m/bes % 4a
  d2./a d4
  b2:m e4 e/d
  a4/cis e/gis a d/fis % 4b
  e2:sus e
  a1
  b1:m fis1:m/a
  d1
  d1/fis % 5a
  g1
  d1/fis
  g2 e:m7 % 5b
  a2:sus a
  b1:m
  fis1:m/a % 5c
  g1:maj7
  d1
  g2 a4/g a8 a/g % 6a
  d4/fis a/cis d g
  a2:sus a4 a:7sus
  d1 % 6b
  g1
  d1/fis
  a2:7sus a:7 % 6c
  d1
  d2:6 a
  d2 g/b % 7a
  a2:sus a
  d1
  g1 % 7b
  d1/fis
  a2:7sus a:7
  fis2:7/cis fis:7/c % 7c %%% FIX
  g2 a4. a8/g
  d4/fis a/cis d g
  a2:sus a % 8a
  b1:m
  g2 a4. a8/g
  d4/fis a/cis d g % 8b
  a1:sus
  a2 a:7sus
  d2 g/d % 8c
  a2/d g/d
  d1
}

soprano = \relative c' {
  \global
  R1*8
  fis2 g8(a16 g fis8) g
  a4 d r fis,8 e % 3a
  d2 d8 cis d e
  fis2 r4 e8 d
  cis4 r dis cis8 dis % 3b
  e4 fis g r8 fis
  g2~g4. a8
  fis2 r % 3c
  fis2 g8(a16 g fis8) g
  a4 d r fis,8 e
  d2 d8 cis d e % 4a
  fis2 r4 d8 e
  fis2 gis4 fis8 gis
  a4 b cis d % 4b
  cis8(b4.~b) a8
  a2 r4 r8 a
  d2 cis8 b cis d % 4c
  cis4 fis, r r8 a
  b2 g8 d4 g8
  a2 r % 5a
  b2. a8 g
  a4 d,2 r4
  b'4 a2 g8(a) % 5b
  a2. r8 a
  d2 cis8 b~ \times 2/3 {b8 cis d}
  cis4 fis,2 r8 a % 5c
  b2 r
  r1
  b2 cis4 b8 cis % 6a
  d4 e fis <d g>
  << {\voiceOne fis8(e4.~4)} || \new Voice {\voiceTwo d2(cis4)} >> <a d>4
  <a d>2. r4 \voiceOne % 6b
  b2.(a8 g
  a4 d2.
  << { \voiceOne g2. fis8 e } || { \voiceTwo d2 cis } >> \voiceOne % 6c
  <d fis>1)
  b8(a g fis e fis g a
  a4 d2. % 7a
  << { \voiceOne e2. fis8 g } || { \voiceTwo d2 cis } >> \voiceOne
  <d fis>2.) r4
  b2. a8 g % 7b
  a4 <a d>2 r4
  <a g'>2. <cis fis>8 <cis e>
  <fis, fis'>2. r4 % 7c
  b2 cis4 b8 cis
  d4 e fis <d g>
  fis8(e4.~ e4.) d8 % 8a
  d2. r4
  b2 cis4 b8 cis
  d4 e fis <d g> % 8b
  fis8(e4.~ e2
  e2) r4 d4
  d1~ % 8c
  d1~
  d1
  \bar "|."
}

wordsSopAbove = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  And you won- der, __ will I leave her?
}

wordsAll = \lyricmode {
  No man, __ no mad- ness,
  though their sad pow- er may pre- vail,
  can pos- sess, con- quer my coun- try's heart;
  they rise __ to fail.
  She is __ e- ter- nal long be- fore
  na- tions' lines were drawn,
  when no flags __
  flew and no ar- mies stood,
  my land __ was born.
  And you ask me why I love her
  through wars, death and de- spair.
  She is the con- stant,
  we who don't __ care. __
  Oo __
  But how?
  I cross o- ver bor- ders
  but I'm still there now.
  Ah, __ ah. __
  How can I leave her?
  Where __ would I start? __
  Let man's pet- ty na- tions tear them- selves a- part.
  My land's on- ly bor- ders lie a- round __ my heart. __
}

wordsSopMidi = \lyricmode {
  "\nNo " "man, "  "no " mad "ness, "
  "\nthough " "their " "sad " pow "er " "may " pre "vail, "
  "\ncan " pos "sess, " con "quer " "my " coun "try's " "heart; "
  "\nthey " "rise "  "to " "fail. "
  "\nShe " "is "  e ter "nal " "long " be "fore "
  "\nna" "tions' " "lines " "were " "drawn, "
  "\nwhen " "no " "flags " 
  "\nflew " "and " "no " ar "mies " "stood, "
  "\nmy " "land "  "was " "born. "
  "\nAnd " "you " "ask " "me " "why " "I " "love " "her "
  "\nthrough " "wars, " "death " "and " de "spair. "
  "\nShe " "is " "the " con "stant, "
  "\nwe " "who " "don't "  "care. " 
  "\nAnd " "you " won "der, "  "will " "I " "leave " "her? "
  "\nBut " "how? "
  "\nI " "cross " o "ver " bor "ders "
  "\nbut " "I'm " "still " "there " "now. "
  "\nAh, "  "ah. " 
  "\nHow " "can " "I " "leave " "her? "
  "\nWhere "  "would " "I " "start? " 
  "\nLet " "man's " pet "ty " na "tions " "tear " them "selves " a "part. "
  "\nMy " "land's " on "ly " bor "ders " "lie " a "round "  "my " "heart. " 
}

wordsAllMidi = \lyricmode {
  "\nNo " "man, "  "no " mad "ness, "
  "\nthough " "their " "sad " pow "er " "may " pre "vail, "
  "\ncan " pos "sess, " con "quer " "my " coun "try's " "heart; "
  "\nthey " "rise "  "to " "fail. "
  "\nShe " "is "  e ter "nal " "long " be "fore "
  "\nna" "tions' " "lines " "were " "drawn, "
  "\nwhen " "no " "flags " 
  "\nflew " "and " "no " ar "mies " "stood, "
  "\nmy " "land "  "was " "born. "
  "\nAnd " "you " "ask " "me " "why " "I " "love " "her "
  "\nthrough " "wars, " "death " "and " de "spair. "
  "\nShe " "is " "the " con "stant, "
  "\nwe " "who " "don't "  "care. " 
  "\nOo " 
  "\nBut " "how? "
  "\nI " "cross " o "ver " bor "ders "
  "\nbut " "I'm " "still " "there " "now. "
  "\nAh, "  "ah. " 
  "\nHow " "can " "I " "leave " "her? "
  "\nWhere "  "would " "I " "start? " 
  "\nLet " "man's " pet "ty " na "tions " "tear " them "selves " a "part. "
  "\nMy " "land's " on "ly " bor "ders " "lie " a "round "  "my " "heart. " 
}

alto = \relative c' {
  \global
  R1*8
  fis2 g8(a16 g fis8) g
  a4 d r fis,8 e % 3a
  d2 d8 cis d e
  fis2 r4 e8 d
  cis4 r dis cis8 dis % 3b
  e4 fis g r8 fis
  g2~g4. a8
  fis2 r % 3c
  fis2 cis4. cis8
  d4 d r fis8 e
  d2 d8 cis d d % 4a
  d2 r4 d8 e
  d2 e4 e8 e
  e4 e e d % 4b
  e2~e4. a8
  a2 r4 r8 a
  fis2 8 8 8 8 % 4c
  fis4 cis r r8 fis
  d2 d8 b4 d8
  d2 r % 5a
  d2. d8 d
  d4 d2 r4
  d4 d2 d4 % 5b
  d2(cis4) r
  fis1~(
  fis2.) r8 fis8 % 5c
  d2 r
  r1
  d2 e4 8 8 % 6a
  d4 a' a g
  a2. d,4
  d2. r4 % 6b
  g2.(a8 g
  a1~
  a1 % 6c
  a1)
  g8(fis e d cis2
  d2 g % 7a
  a1~
  a2.) r4
  d,2. d8 d % 7b
  d4 d2 r4
  d'2(cis4) a8 a
  cis2(c4) r % 7c
  d,2 e4 e8 e
  d4 a' a g
  <a d>2~(<a cis>4.) <d, a'>8 % 8a
  <d b'>2. r4
  d2 4 8 8
  d4 a' a g % 8b
  <a d>1~(
  <a cis>2) r4 <g a>
  <fis a>2( <g b> % 8c
  <a cis>2 <g b>
  <fis a>1)
  \bar "|."
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1*8
  s1\mp % 2c++
  s1*9 % 3a
  s1 % 4a
  s1
  s1\cresc
  s1 % 4b
  s1\mf
  s2. s8 s\p
  s1*3 % 4c
  s1 % 5a
  s1\mp
  s1
  s1*6 % 5b
  s2.\mf s4\< % 6a
  s1
  s1\f
  s1*6 % 6b
  s1*9 % 7a
  s1 % 8a
  s1
  s2.-\markup \italic rall. s4\cresc
  s1 % 8b
  s1\ff
  s2. s4-\markup \italic ten.
  s1-\markup \italic {a tempo}
  s1-\markup \italic rit.
  s1
}

tenor = \relative c {
  \global
  R1*8
  fis2 g8(a16 g fis8) g
  a4 d r fis,8 e % 3a
  d2 d8 cis d e
  fis2 r4 e8 d
  cis4 r dis cis8 dis % 3b
  e4 fis g r8 fis
  g2~4. a8
  fis2 r % 3c
  a2 4. 8
  a4 a r a8 a
  g2 8 8 8 8 % 4a
  fis2 r4 fis8 fis
  fis4(b) b b8 b
  a4 e e a % 4b
  b2(gis4.) a8
  a2 r4 r8 a
  b2 cis8 d cis b % 4c
  a4 a r r8 cis
  b2 b8 g4 b8
  a2 r % 5a
  g2. a8 b
  a4 2 r4
  g4 g2 b4 % 5b
  a2. r4
  b1~
  b2. r8 cis % 5c
  b2 r
  r1
  b2 a4 8 8 % 6a
  a4 a a b
  a2. g4
  fis2. r4 % 6b
  d'1~(
  d1
  g,2 a~ % 6c
  a1)
  g4(d e2
  fis2 g % 7a
  a1~
  a2.) r4
  b2. 8 8 % 7b
  a4 2 r4
  g2. a8 a
  ais2. r4 % 7c
  b2 a4 8 8
  a4 a a b
  a2~4. 8 % 8a
  b2. r4
  b2 a4 8 8
  a4 a a b % 8b
  a1~
  a2 r4 a
  <a d>1~ % 8c
  q1~
  q1
  \bar "|."
}

bass= \relative c {
  \global
  R1*8
  fis2 g8(a16 g fis8) g
  a4 d r fis,8 e % 3a
  d2 d8 cis d e
  fis2 r4 e8 d
  cis4 r dis cis8 dis % 3b
  e4 fis g r8 fis
  g2~4. a8
  fis2 r % 3c
  d2 e4. 8
  fis4 fis r a8 a
  b,2 8 8 bes bes % 4a
  a2 r4 d8 d
  b2 e4 d8 d
  cis4 gis a fis' % 4b
  e2~4. a8
  a2 r4 r8 a
  b2 cis8 b cis b % 4c
  a4 a r r8 a
  g2 8 4 8
  fis2 r % 5a
  g2. 8 8
  fis4 2 r4
  g4 2 e4 % 5b
  a,2. r4
  b'1~
  b2. r8 a % 5c
  g2 r
  r1
  g2 4 a8 g % 6a
  fis4 cis d g,
  a2. 4
  d2. r4 % 6b
  g1(
  fis1
  a,1 % 6c
  d4 cis e d)
  g,2(a
  d2 b % 7a
  a1
  d2.) r4
  g2. 8 8 % 7b
  fis4 2 r4
  a,2. 8 8
  cis2(c4) r % 7c
  g'2 a4 8 g
  fis4 cis d g,
  a2~4. 8 % 8a
  b2. r4
  g'2 a4 8 g
  fis4 cis d g, % 8b
  a1~
  a2 r4 a
  d1~ % 8c
  d1~
  d1
  \bar "|."
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s1*8
  s1\mp % 2c++
  s1*9 % 3a
  s1 % 4a
  s1
  s1\cresc
  s1 % 4b
  s1\mf
  s2. s8 s\p
  s1*3 % 4c
  s1 % 5a
  s1\mp
  s1
  s1*6 % 5b
  s2.\mf s4\< % 6a
  s1
  s1\f
  s1*6 % 6b
  s1*9 % 7a`
  s1 % 8a
  s1
  s2.-\markup \italic rall. s4\cresc
  s1 % 8b
  s1\ff
  s2. s4-\markup \italic ten.
  s1-\markup \italic {a tempo}
  s1-\markup \italic rit.
  s1
}

pianoRH = \relative c'' {
  \global
  fis2 d4 fis
  a2 e4 b8 cis
  d4 cis8 d fis4 e
  cis2. a8 b % 2b
  cis4 b8 cis e4 d
  s2 <e, a>4 d8 a'
  s1 % 2c
  s1
  fis2 g8 a16 g fis8 g
  <d a'>2. fis8 e % 3a
  d2 d8 cis d e
  <d fis>2 b'4 e,8 d
  cis2 <b dis>4 cis8 dis % 3b
  <b e>4 <b dis fis> <b e g> <b d fis>
  s1
  <b d>1 % 3c
  <a' fis'>2 s
  <a d a'>2. s4
  <g d'>2 s % 4a
  <a d fis>2. d,8 e
  <d fis>2 s
  <a e' a>4 <b e b'> <cis e a cis> <d a' d> % 4b
  s4. <e a b>16 q <e gis b>2
  <cis a'>1
  s1 % 4c
  <fis cis' fis>1
  <d b'>1
  <d a'>1 % 5a
  s1
  q1
  s2 d % 5b
  s1
  s1
  <fis cis' fis>1 % 5c
  <fis b d fis>2 \times 2/3 {<fis fis'>4 <d d'> <fis fis'>}
  <a d fis a>1
  <b, d g b>2 <cis e a cis>4 <e a b>8 <e a cis> % 6a
  <d a' d>4 <e a e'> <fis a d fis> <g b d g>
  s4. <a d e>16 q <a cis e>4 <d, a' d>
  <d fis a d>4 d'8 e fis16 e d e fis g a8 % 6b
  <b, d g b>2. <a a'>8 <g g'>
  <a d a'>4 <d, d'>2.
  s2. <fis fis'>8 <e e'> % 6c
  <fis a d fis>1
  s1
  <a d fis a>4 <d d'> <g, d' g> d' % 7a
  s1
  <a d fis>4 d16 cis d e fis e d e fis g a8
  <b, d g b>2. <a a'>8 <g g'> % 7b
  <a d a'>4 <d, d'>2.
  s1
  s1 % 7c
  <b d g b>2 <cis e a cis>4 <e a b>8 <e a cis>
  <d a' d>4 <e a e'> <fis a d fis> <g b d g>
  s4. <a d e>16 q <a cis e>4. <d, d'>8 % 8a
  <d fis b d>1
  <b d g b>2 <cis e a cis>4 <e a b>8 <e a cis>
  <d a' d>4 <e a e'> <fis a d fis> <g b d g> % 8b
  s4. <a d e>16 q q4 q
  <a cis e>4. <e a cis>16 q <e a d>4 <g a d g>
  <fis a d fis>4. <fis fis'>16 q <g b d g>4. <g g'>8 % 8c
  <a cis e a>4. <a a'>16 q <g b d g>4 q
  <a d fis a>1
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  s1*5
  b8 cis b a s2 % 2b++
  g4 a16 g fis g b4 a % 2c
  a1
  s1
  s1*5 % 3a
  g1 % 3b++
  s1 % 3c
  s2 g'8 a16 g fis8 g
  s2. fis8 e
  s2 d8 cis d e % 4a
  s1
  s2 <e, gis>4 fis8 gis
  s1 % 4b
  <a cis>8 b4 s8 s2
  s1
  d2 cis8 b cis d % 4c
  s1
  s1
  s1 % 5a
  b2. a8 g
  s1
  b4 a s2 % 5b
  a1
  <fis fis'>1
  s1*3 % 5c
  s1 % 6a
  s1
  <d' fis>8 e4 s8 s2
  s1 % 6b
  s1
  s1
  <g, a g'>2. s4 % 6c
  s1
  e'2~e8 fis g a
  s1 % 7a
  <a, e'>2. fis'8 g
  s1
  s1 % 7b
  s1
  <g, a g'>2. <fis fis'>8 <e e'>
  <fis e' fis>1 % 7c
  s1
  s1
  <d' fis>8 e4 s8 s2 % 8a
  s1
  s1
  s1 % 8b
  <d fis>8 e4 s8 s2
  s1
  s1*3 % 8c
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s1*5
  d2 s % 2b++
  d1 % 2c
  d2 cis
  s1
  s1*5 % 3a
  <b d>2 <a cis> % 3b++
  s1 % 3c
  s2 a'
  s2. a4
  s2 <d, g> % 4a
  s1
  s2 b
  s1 % 4b
  e4. s8 s2
  s1
  fis1 % 4c
  s1
  s1
  s1 % 5a
  d1
  s1
  d2 s % 5b
  d2 cis
  <b' d>2 cis8 b~ \times 2/3 {b cis d}
  s1*3 % 5c
  s1 % 6a
  s1
  a4. s8 s2
  s1 % 6b
  s1
  s1
  d2 cis % 6c
  s1
  <g b d>2 <a cis>
  s1 % 7a
  d2 cis
  s1
  s1 % 7b
  s1
  d2 cis
  cis2 c4 s % 7c
  s1
  s1
  a4. s8 s2 % 8a
  s1
  s1
  s1 % 8b
  a4. s8 s2
  s1
  s1*3 % 8c
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1*8
  s1*9 % 3a
  s1 % 4a
  s1
  s1\cresc
  s1 % 4b
  s1\mf
  s1\>
  s1\p % 4c
  s1
  s1
  s1\< % 5a
  s1\mp
  s1
  s1*4 % 5b
  s2 s\< % 5c+
  s1\mf
  s2. s4\< % 6a
  s1
  s1\f
  s1*6 % 6b
  s1*9 % 7a
  s1 % 8a
  s1
  s2.-\markup \italic rall. s4\cresc
  s1 % 8b
  s1\ff
  s2. s4-\markup \italic ten.
  s1-\markup \italic {a tempo} % 8c
  s1-\markup \italic rit.
  s1
}

pianoLH = \relative c {
  \global
  \oneVoice
  d8_\markup \italic {with pedal} a' d e fis2
  cis,8 a' cis d e2
  b,8 d' b4 gis,8 e' b'4
  a,8 e' a b cis2 % 2b
  g,8 e' a2.
  g,8 d' g4 fis,8 d' fis4
  e,8 b' e g b2 % 2c
  <a, e'>1
  d8 a' d a <e cis'>2
  fis,8 d' fis a d4 d,8 cis % 3a
  b8 fis' b fis a,2
  gis8 d' fis a d4 gis,
  a,8 e' a e <a, fis'>2 % 3b
  <g e'>4 <fis dis'> <e e'> <d d'>
  a'8 e' g e a,2
  d,8 a' d e fis a, d e % 3c
  d8 a' d a <e cis'>2
  fis,8 d' fis a d4 d,8 cis
  b8 g' b fis b,4 bes % 4a
  a8 d fis a d4 d,
  b8 fis' b fis <e, e'>4 <d d'>
  <cis cis'>4 <gis gis'> <a a'> <fis' fis'> % 4b
  <e e'>2 q
  a,8 a' cis e a2
  <b d>1 % 4c
  <a cis>1
  g2 g8 d g, g'
  fis2 b8 fis d a % 5a
  g8 d' g a b2
  fis,8 d' e fis
  <g b>2 <e g> % 5b
  a,8 e' a e a,2
  b4 fis' b fis b,2
  a8 fis' a fis a,2 % 5c
  g8 d' g d g,2
  d8 a' d e fis4 d
  g,8 d' g d g,4 a'8 g % 6a
  fis4 <cis, cis'> <d d'> g
  <a a'>2 <a, a'>4 <a' a'>
  <d, d'>2 d'4 a % 6b
  g8 e' g a b4 d,
  fis,4. d'8 e fis a4
  s1 % 6c
  <d,, d'>4 <cis cis'> <e e'> <d d'>
  <g g'>4. q8<a a'>2
  <d, d'>4. q8 <b b'>2 % 7a
  <a a'>4. q8 q2
  d'4 d, fis a
  g8 d' g a b4 d, % 7b
  fis,4. d'8 e fis g4
  s1
  s1 % 7c
  g,8 d' g d <a a'>4 q8 <g g'>
  <fis fis'>4 <cis cis'> <d d'> g
  <a a'>2 <a, a'>4 <a' a'> % 8a
  b8 fis' b fis a, fis' a fis
  g,8 d' g d <a a'>4 q8 <g g'>
  <fis fis'>4 <cis cis'> <d d'> <g, g'> % 8b
  <a a'>2 q4 <a' a'>
  q2 <a, a'>4 <a' a'>
  <d, d'>2 q8 q q4 % 8c
  q2 q8 q q q
  \repeat tremolo 32 {q32}
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  s1*9
  s1*9 % 3a
  s1*9 % 4a
  s1*9 % 5a
  s1*6 % 6a
  a1 % 6c
  s1
  s1
  s1*9 % 7a
  s1*9 % 8a
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \voiceTwo
  s1*9
  s1*9 % 3a
  s1*9 % 4a
  s1*9 % 5a
  s1*6 % 6a
  a,4. a8 a2 % 6c
  s1
  s1
  s1*9 % 7a
  s1*9 % 8a
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    \context GrandStaff <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Voice \RehearsalTrack
          \new Dynamics \dynamicsWomen
          \new Lyrics = "sopabove"
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "alto" \wordsAll
          >>
          \context Lyrics = "sopabove" { \lyricsto "soprano" \wordsSopAbove }
                                % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
   <<
    \context GrandStaff <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Voice \TempoTrack
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "alto" \wordsAllMidi
          >>
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
 >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
   \unfoldRepeats
%   \articulate
   <<
    \context GrandStaff <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Voice \TempoTrack
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
 >>
    \midi {}
  }
}
