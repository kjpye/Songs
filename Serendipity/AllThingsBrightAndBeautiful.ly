\version "2.18.2"

\include "kjp.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

RehearsalTrack = {
  \textMark \markup \box "6a" s1*4
  \textMark \markup \box "6b" s1*4
  \textMark \markup \box "6c" s1*4
  \textMark \markup \box "6d" s1*4
  \textMark \markup \box "7a" s1*4
  \textMark \markup \box "7b" s1*4
  \textMark \markup \box "7c" s1*4
  \textMark \markup \box "8a" s1*4
  \textMark \markup \box "8b" s1*4
  \textMark \markup \box "8c" s1*4
  \textMark \markup \box "9a" s1*4
  \textMark \markup \box "9b" s1*4
  \textMark \markup \box "9c" s1*4
  \textMark \markup \box "10a" s1*4
  \textMark \markup \box "10b" s1*4
  \textMark \markup \box "10c" s1*4
  \textMark \markup \box "11a" s1*4
  \textMark \markup \box "11b" s1*4
  \textMark \markup \box "11c" s1*3
  \textMark \markup \box "11d" s1*3
}

wordsSopSep = \lyricmode {
  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.
  Each lit -- tle flow'r that o -- pens,
  Each lit -- tle bird that sings, __
  He made their glow -- ing col -- ours,
  He made their ti -- ny wings.

  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.

  The cold wind __ in the win -- ter, __
  The plea -- sant sum -- mer sun, __
  The ripe fruits in the gar -- den,
  He made them ev -- 'ry one: __

  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.

  He gave us eyes to see __ them,
  And lips that we might tell __
  How great is God Al -- might -- y, __
  Who has made all things well.
  
  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all. __
}

wordsSopMidi = \lyricmode {
  "All " "things " "bright " "and " beau ti "ful, "
  "\nAll " crea "tures " "great " "and "  "small, "
  "\nAll " "things " "wise " "and " won der "ful, "
  "\nThe " "Lord " "God " "made " "them " "all. "
  "\nEach " lit "tle " "flow'r " "that " o "pens, "
  "\nEach " lit "tle " "bird " "that " "sings, " 
  "\nHe " "made " "their " glow "ing " col "ours, "
  "\nHe " "made " "their " ti "ny " "wings. "

  "\nAll " "things " "bright " "and " beau ti "ful, "
  "\nAll " crea "tures " "great " "and "  "small, "
  "\nAll " "things " "wise " "and " won der "ful, "
  "\nThe " "Lord " "God " "made " "them " "all. "

  "\nThe " "cold " "wind "  "in " "the " win "ter, " 
  "\nThe " plea "sant " sum "mer " "sun, " 
  "\nThe " "ripe " "fruits " "in " "the " gar "den, "
  "\nHe " "made " "them " ev "'ry " "one: " 

  "\nAll " "things " "bright " "and " beau ti "ful, "
  "\nAll " crea "tures " "great " "and "  "small, "
  "\nAll " "things " "wise " "and " won der "ful, "
  "\nThe " "Lord " "God " "made " "them " "all. "

  "\nHe " "gave " "us " "eyes " "to " "see "  "them, "
  "\nAnd " "lips " "that " "we " "might " "tell " 
  "\nHow " "great " "is " "God " Al might "y, " 
  "\nWho " "has " "made " "all " "things " "well. "
  
  "\nAll " "things " "bright " "and " beau ti "ful, "
  "\nAll " crea "tures " "great " "and "  "small, "
  "\nAll " "things " "wise " "and " won der "ful, "
  "\nThe " "Lord " "God " "made " "them " "all. " 
}

wordsAltoSep = \lyricmode {
  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.

  Each lit -- tle flow'r that o -- pens,
  Each lit -- tle bird that sings, __
  He made their glow -- ing col -- ours,
  He made their ti -- ny wings.
  Ah. __
  Ah. __
  The Lord God made them all.

  The cold wind __ in the win -- ter, __
  The plea -- sant sum -- mer sun, __
  The ripe fruits in the gar -- den,
  He made them ev -- 'ry one: __

  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.

  He gave us eyes to see __ them,
  And lips that we might tell __
  How great is God Al -- might -- y, __
  Who has made all things well.
  
  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.
}

wordsAltoMidi = \lyricmode {
  "All " "things " "bright " "and " beau ti "ful, "
  "\nAll " crea "tures " "great " "and "  "small, "
  "\nAll " "things " "wise " "and " won der "ful, "
  "\nThe " "Lord " "God " "made " "them " "all. "

  "\nEach " lit "tle " "flow'r " "that " o "pens, "
  "\nEach " lit "tle " "bird " "that " "sings, " 
  "\nHe " "made " "their " glow "ing " col "ours, "
  "\nHe " "made " "their " ti "ny " "wings. "
  "\nAh. " 
  "\nAh. " 
  "\nThe " "Lord " "God " "made " "them " "all. "

  "\nThe " "cold " "wind "  "in " "the " win "ter, " 
  "\nThe " plea "sant " sum "mer " "sun, " 
  "\nThe " "ripe " "fruits " "in " "the " gar "den, "
  "\nHe " "made " "them " ev "'ry " "one: " 

  "\nAll " "things " "bright " "and " beau ti "ful, "
  "\nAll " crea "tures " "great " "and "  "small, "
  "\nAll " "things " "wise " "and " won der "ful, "
  "\nThe " "Lord " "God " "made " "them " "all. "

  "\nHe " "gave " "us " "eyes " "to " "see "  "them, "
  "\nAnd " "lips " "that " "we " "might " "tell " 
  "\nHow " "great " "is " "God " Al might "y, " 
  "\nWho " "has " "made " "all " "things " "well. "
  
  "\nAll " "things " "bright " "and " beau ti "ful, "
  "\nAll " crea "tures " "great " "and "  "small, "
  "\nAll " "things " "wise " "and " won der "ful, "
  "\nThe " "Lord " "God " "made " "them " "all. "
}

wordsMenSep = \lyricmode {
  Ah __ Ah __ Ah __

  The pur -- ple -- head -- ed moun -- tain,
  The riv -- er run -- ning by,
  The sun -- set and the morn -- ing,
  That bright -- ens up the sky;

  The ripe fruits in the gar -- den,
  He made them ev -- 'ry one: __

  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.

  He gave us eyes to see __ them,
  And lips that we might tell __
  How great is God Al -- might -- y, __
  Who has made all things well.
  
  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.
}

wordsMenMidi = \lyricmode {
  "Ah "  "Ah "  "Ah " 

  "\nThe " pur ple head "ed " moun "tain, "
  "\nThe " riv "er " run "ning " "by, "
  "\nThe " sun "set " "and " "the " morn "ing, "
  "\nThat " bright "ens " "up " "the " "sky; "

  "\nThe " "ripe " "fruits " "in " "the " gar "den, "
  "\nHe " "made " "them " ev "'ry " "one: " 

  "\nAll " "things " "bright " "and " beau ti "ful, "
  "\nAll " crea "tures " "great " "and "  "small, "
  "\nAll " "things " "wise " "and " won der "ful, "
  "\nThe " "Lord " "God " "made " "them " "all. "

  "\nHe " "gave " "us " "eyes " "to " "see "  "them, "
  "\nAnd " "lips " "that " "we " "might " "tell " 
  "\nHow " "great " "is " "God " Al might "y, " 
  "\nWho " "has " "made " "all " "things " "well. "
  
  "\nAll " "things " "bright " "and " beau ti "ful, "
  "\nAll " crea "tures " "great " "and "  "small, "
  "\nAll " "things " "wise " "and " won der "ful, "
  "\nThe " "Lord " "God " "made " "them " "all. "
}

UnisonLyrics = \lyricmode {
  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.
}

AltoLyrics = \lyricmode {
  Each lit -- tle flow'r that o -- pens,
  Each lit -- tle bird that sings, __
  He made their glow -- ing col -- ours,
  He made their ti -- ny wings.
  \set stanza = "A.T.B."
  Ah. __
  Ah. __
  \set stanza = "A."
  The Lord God made them all.

  \set stanza = "S.A."
  The cold wind __ in the win -- ter, __
  The plea -- sant sum -- mer sun, __
  The ripe fruits in the gar -- den,
  \set associatedVoice = alto He made them ev -- 'ry one: __

  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.

  He gave us eyes to see __ them,
  And lips that we might tell __
  How great is God Al -- might -- y, __
  Who has made all things well.
  
  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  \set associatedVoice = soprano
  The Lord God made them all. __
}

TenorLyrics = \lyricmode {
%  Ah __ Ah __ Ah __
  "" ""
  \set stanza = "T.B."
  Ah __
  The pur -- ple -- head -- ed moun -- tain,
  The riv -- er run -- ning by,
  The sun -- set and the morn -- ing,
  That bright -- ens up the sky;
}

BassLyrics = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _
  Ah.
}

SopranoLyrics = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  All things bright and beau -- ti -- ful,
  All crea -- tures great and __ small,
  All things wise and won -- der -- ful,
  The Lord God made them all.
}  

TempoTrack = {
  \key f \major
  \time 4/4
  \tempo Brightly 4=126
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1*6
  s4\mp s2.-\markup \italic {poco legato} | s1 | % 6b
  s1 | s1 | s1\< | s2\! s\> |
  s1\! | s1 | s1\mp\cresc | s1 |
  s1 | s2. s4\mf | s1*2 | % 7a
  s1*2 | s1\mf | s1 |
  s1*2 | s1\cresc | s2. s4\omit\f-\markup {\dynamic f \italic dolce} |
  s1*11 | s2. s4\mp | % 8
  s1*4 | % 9a
  s1\cresc | s2. s4\mf | s1 | s1-\markup \bold {poco rit.} |
  s1-\markup{( \dynamic mf )} | s1*3 |
  s1*4 | % 10a
  s1\cresc | s1*2 | s2. s4\f |
  s1*4 |
  s1\parenthesize\f | s1*3 | % 11a
  s1 | s2 s\> | s1\! | s2. s4\mp-\markup \bold rall. |
  s1 | s1\dim | s1\p-\markup \bold { a tempo} |
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s1*22
  s1\mp
  s1*3
  s1\cresc
  s1
  s1\mf
  s1
  s1
  s2. s4\mf
  s1*11
  s2. s4\mp
  s1\cresc
  s2. s4\mf
  s1*2
  s1-\markup{( \dynamic mf )}
  s1*7
  s1\cresc
  s1
  s1
  s2. s4\f
  s1*4
  s1-\markup{( \dynamic f )}
  s1*4
  s2 s\>
  s1\!
  s2. s4\mp
  s1
  s1\dim
  s1\p
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s1\omit\mp-\markup {\dynamic mp \italic delicato}
  s1
  s1
  s1
  s1-\markup \italic legato
  s1*9
  s1\cresc
  s1*3
  s1\mf
  s1*3
  s1-\markup{(\dynamic mf )}
  s1*3
  s1\cresc
  s1
  s4\f s2.-\markup \italic dolce
  s1
  s4 s2. \>
  s1\mf
  s1*7
  s2. \> s4\mp
  s1*4
  s1\cresc
  s1
  s1\mf
  s1
  s1-\markup{(\dynamic mf )}
  s1*7
  s1\cresc
  s1*2
  s2. s4\f
  s1*4
  s1-\markup{(\dynamic f )}
  s1*4
  s2 s \>
  s4\mf s2.\dim
  s2. s4\mp
  s1
  s1\dim
  s1\p
  s1
  s2 s\>
  s1\pp
}

dynamicsPedal = {
  s1\sustainOn
  s1\sustainOff\sustainOn
  s1\sustainOff-\markup \italic sim.
  s1
  s1\sustainOn
  s1
  s1\sustainOff
  s1*25
  s1\sustainOn
  s1\sustainOff\sustainOn
  s1\sustainOff\sustainOn
  s1\sustainOff
  s1*4
  s1\sustainOn
  s1\sustainOff\sustainOn
  s1\sustainOff-\markup \italic sim.
  s1
  s1\sustainOn
  s1\sustainOff\sustainOn
  s1\sustainOff
  s1*17
  s1\sustainOn
  s1\sustainOff-\markup \italic sim.
  s1*8
  s1\sustainOn
  s1\sustainOff\sustainOn
  s1\sustainOff\sustainOn
  s2 s\sustainOff
}

UnisonMusic = \relative c' {
  \key f \major
  \time 4/4
  s1
  s1
  s1
  s1
  s1 % 5
  s1
  c4 f g a
  a8 bes g2 d4
  a'4 g8 e~e d(e g)
  c,1 % 10
  c4 f g a
  b4 c8 g~g4. c,8
  bes'4 a f8(bes,) a' g~
  g2. r4
  c,8 f g a~a4 a % 15
  a8(bes) g2.
  c,8 g' a bes~bes a(g) a(~
  a8 c4. ~ c4) f,8(a)
  d4 c bes a
  c4(f,8) f~f4 f % 20
  bes4 a f8(bes,) a' g~
  g2. r4
}

NoMusic = {
  s1*22
}

SopranoMusic = \relative c' {
  c4 f g a
  a8 bes g2 d4
  a'4 g8 e~e d(e g) % 25
  c,1
  c4 f a c
  c4 d8 f,~f4 f4
  e'2 f % 30
  f,2 g
  f1 ~
  f2 r
  \key c \major
  r1
  r1 % 35
  r1
  r1
  r1
  r1
  r1 % 40
  r2 r4 c'4
  bes4 bes4~(bes8 a) bes c
  a4(d,8) d~d4 d
  a'4 a a b8 g~
  g2 r4 d8(e) % 45
  g4 fis e d
  a'4(b8) d,~d4 d
  cis'4 d d, e
  d1
  \key g \major
  d4 g a b % 50
  b8 c a2 e4
  b'4 a8 fis~fis e(fis a)
  d,1
  d4 g a b
  cis4 d8 a~a4. d,8 % 55
  c'4 b g8(c,) b' a~
  a2. r4
  d,8 g a b~ b4 b
  b8(c)
  a2 a4 % 60
  d,8 a'(b) c~c b(a) b~(
  b8 d4.~d4) g,8(b)
  e4 d c b
  d4(g,8) g~g4 g
  c4 b g8(c,) b' a~ % 65
  a2. r4
  \key bes \major
  f4 bes c d
  d8 ees c2 g4
  d'4 c8 a~a g(a c)
  f,1
  f4 bes d <c f>
  <d f>4 <ees g>8 bes~bes2 % 70
  r1
  r2 r4 bes4
  f'2 f
  bes,2 c
  c8(d bes2.)
  s1
  s1 % 80
  s1
  \bar "|."
}

AltoMusic = \relative c' {
  \key f \major
  \time 4/4
  c1(
  d1
  e1 % 25
  c1)
  c2(ees
  d2.) f4
  c'2 c
  f,2 d4(e) % 30
  f1 ~
  f2 r
  \key c \major
  r1
  r1
  r1 % 35
  r1
  r1
  r1
  r1
  r2 r4 c'4 % 40
  bes4 bes4~(bes8 a) bes c
  a4(d,8) d~d4 d
  a'4 a a b8 g~
  g2 r4 d4
  d4 d a d % 45
  d4. b8~b4 d
  d4 d d cis
  d2(c)
  \key g \major
  b4 d d d
  e8 e e2 e4 % 50
  fis4 fis8 fis~fis e(fis a)
  d,1
  d4 g a b
  a4 a8  a~a4. d,8
  g4 g g8(c,) b' a~ % 55
  a2. r4
  d,8 g a b~ b4 d,
  e4 e2 a4
  d,8 a'(b) c~c b(a) a~(
  a8 g4.~g4) g % 60
  fis4 fis f f
  e4. e8~e4 e
  e4 e e e
  ees2. r4
  \key bes \major
  f4 bes, c d
  d8 ees c2 g'4
  ees4 ees8 ees ~ ees4 ees
  d1
  f4 bes aes aes
  g4 g8 g~g2
  r1
  r2 r4 g4 % 75
  a2 bes
  g2 a
  f1
  s1
  s1 % 80
  s1
  \bar "|."
}

TenorMusic = \relative c' {
  \key f \major
  \time 4/4
  R1*22 |
  a1(
  bes1~
  bes1 % 25
  a1)
  a2(g4 a
  bes1)
  a1(bes1~
  bes1
  a2) r4 f4
  \key c \major
  e4 e e a
  e4 e2 b'4
  e,4 4 4 c' % 35
  b2. b8(c)
  d4 c b a
  c4(g8) g~g4 c,
  f4 g8 a~a c(b) c~
  c2 r % 40
  r1
  r1
  r1
  r2 r4 d,8(e)
  a4 a a a % 45
  b4. a8~a4 b
  a4 a b g
  a1
  \key g \major
  b4 b b b
  c8 c c2 c4 % 50
  c4 c8 c~c4 c
  b1
  b4 b d b
  a4 a8 d~d4. a8
  g4 g c c8 c~ % 55
  c2. r4
  b8 g a b~ b4 d
  c4 c2 c4
  c8 a(b) c~c b(a) d~
  d2. g,8(b) % 60
  e4 d c b
  d4(g,8) g~g4 g
  c4 c c c c2. r4
  \key bes \major
  f,4 bes c d
  d8 ees c2 ees4
  c4 c8 c~c4 c
  c2(bes)
  f4 bes c d
  bes4 bes8 ees8~ees2
  r1
  r2 r4 ees4
  d2 d
  ees2 ees
  d1
  s1
  s1
  s1
  \bar "|."
}

BassMusic = \relative c {
  \key f \major
  \time 4/4
  R1*22 |
  f1~
  f1~
  f1~ % 25
  f1
  f1~
  <f bes,>1
  c1~ (
  c1 % 30
  <f, d'>1~
  q2) r4 f'4
  \key c \major
  e4 e e a
  e4 e2 b'4
  e,4 4 4 c' % 35
  b2. b8(c)
  d4 c b a
  c4(g8) g~g4 c,
  f4 g8 a~a c(b) c~
  c2 r % 40
  r1
  r1
  r1
  r2 r4 d,4
  a4 d e fis % 45
  d4. d8~d4 g
  fis4 fis g e
  g2.(fis4)
  \key g \major
  g4 g d d
  <g, e'>8 q q2 g'4 % 50
  d4 d8 d~d4 d
  <g, d'>1
  g'4 g b g
  fis4 fis8 fis~fis4. fis8
  e4 e e g8 d~ % 55
  d2. r4
  d8 g a b~ b4 b
  b8(c) a2 a4
  d,8 a'(b)c~c b(a) b~
  b2. g4 % 60
  g4 g g g
  g4. g8~g4 g
  a4 a g g
  f2. r4
  \key bes \major
  f4 bes c d % 65
  d8 ees c2 bes4
  a4 a8 a~a bes(c a)
  f1
  f4 bes bes bes
  ees,4 g8 bes~bes2 % 70
  r1
  r2 r4 bes4
  f2 f
  f2 f <bes, f'>1
  s1 % 71
  s1
  s1
  \bar "|."
}

PianoRHhigh = \relative c''' {
  \voiceOne
  \key f \major
  c1
  s1
  c,1
  s1*13
  s1*12
  s1
  s1 % 30
  f,4.(<d bes'>8~q <c a'> <bes f'>4)
  c'1
  \bar "||" \key c \major
  r8 c, e4~e8 c a'4
  r8 d, e4~e8 d s4
  r8 b e4~e8 c s4 % 35
  r8 d e fis gis a b c
  d8 e, c' e, e'2
  <c e>8 e, g e~e d <e g> c
  f8 c f c~c f g c~
  c8 f, g e~e d e g % 40
  <g bes>4 <ees g bes>~q8 ees <g bes>4
  <fis a>8 d <a' d>4~q8 d, <a' d>4~
  q8 d, q4~q8 d <g d'>4~
  q8 d(g d'~d e d4~
  d) r <fis, a>2 % 45
  r2 <b d>
  a4 d,2 cis4
  r8 a d a'~a d, d'4
  \bar "||" \key g \major
  \oneVoice r8^\markup \bold {a tempo} \voiceOne d, g b d a b g
  r8 e a c e b c a % 50
  r8 fis a d fis c d a
  r8 a b d g b, d g,
  r8 b d g b d, e b
  r8 a d f a e fis d
  r8 g, c e g c, e f, % 55
  \oneVoice
  r8 a ( c <e g>~q a <a, d fis>4)
  r8 d, g <a b d>~q d, <g b d> d
  r8 c e <g a c>~q c, q c
  r8 d fis <a c>~q d, q d
  r8 d g <a d>~q b g d % 60
  r8 d fis b r d, f b
  r8 d, e g r d e g
  r8 c, e g r c, e g~
  \voiceOne
  g a( bes c~c d ees f~
  \bar "||" \key bes \major
  <d f>4) s4 s2 % 65
  s1
  s1
  s1
  s1
  s1 % 70
  bes''8 bes,ees g g, bes ees ees,
  g8 d' d, g bes^\markup \bold rall.  bes, f' bes,
  \oneVoice
  f'4 f, f' f,~
  f4 f <a f'> f~
  <d f>1^\markup \bold {a tempo} % 75
  ees8(f4 <g ees'>8~q <f d'> <ees bes'>4)
  f'1^\markup\bold rall.
  \vo
  <f f'>2~q8 r r4
}

PianoRHlow = \relative c''' {
  \voiceTwo
  \key f \major
  g8(a) f2.
  bes,8(c4 <d bes'>8~q <c a'> <bes f'>4)
  g8(a f2.)
  \oneVoice
  bes,8(c4 <d bes'>8  ~ q <c a'> <bes f'>4)
  r8 c f a c g a f % 5
  r8 c f a c g a f
  r8 c f a c g a f
  r8 d g bes d a bes g
  r8e g c e bes c g
  r8 g a c f a, c f, % 10
  r8 a c f a c, d a
  r8 g c e g d e c
  r8 f, bes d f bes, d f,
  r8 g bes f'~f g e4
  r8 f, a c~c g a c % 15
  r8 g bes d ~ d a bes d
  r8 g, bes e~e g, bes c~
  c8 a c f~f g, a c
  r8 a c e r g, c ees
  r8 f, bes d r f, bes d % 20
  r8 g, bes d r g, bes d
  r8 g,( g' f~f bes, <g e'>4)
  r8 c, f a c g a f
  r8 d g bes d a bes g
  r8 e g c e bes c g % 25
  r8 g a c f a, c f,
  r8 c f a c ees, g c,
  d8 f bes d~d2
  r8 c, f a c f, a c,
  r8 c f bes c d, e c % 30
  \voiceTwo
  bes8 c4 s8 s2
  g'8(a f2.)
  \bar "||" \key c \major
  s1
  s2. b4
  s2. c4 % 35
  s1
  s2 b8 e, a e
  s1
  s1
  s1 % 40
  ees8 d s4 s2
  s1
  s1
  s1
  s2 e4(d) % 45
  s2 a'4(g)
  s1
  s1
  s1
  s1 %50
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  r8 <c, g'>4 <ees g>8~q2
  s4 f'8(f' ees d c bes) % 65
  r8 g( c g' f ees d c)
  r8 ees,( a ees' d c a g
  f4) bes8( c~c d bes4~
  bes8) d, bes' f d' f, f' f,
  f' g, bes ees g bes, ees g % 70
  r4 r8 e,4. c4~
  c8 bes4. g4 ees
  s1
  s1
  s1
  s1
  c'8(d bes2.)
  \vf c'8 d~d4~d8 s8 s4
}

PianoLHhigh = \relative c {
  \ov
  \key f \major
  f4._(c'8 a'g a \rh c) \lh \ov
  <f,, d'>4.(f'8 bes2)
  \clef bass
  f,,4. c'8_(a' g a \rh c) \lh \ov
  <f,, d'>4.(f'8 bes2)
  <f,c'a'>2 ~ q4. c'8( % 5
  f1)
  f1
  f1
  f1
  f2~f4. c8( % 10
  f1)
  e1
  d1
  \voiceOne
  c2 c'
  f,2 c' % 15
  f,2 d'
  f,2 e'
  f,2 f'
  e2 ees
  d1 % 20
  d1
  d1
  f,,2 s
  f2 s
  f2 s % 25
  f2 s
  f'2 g4 a
  s1
  a1
  bes1 % 30
  <f, d'>2 s
  r4 r8 c'8 a' g a c
  \bar "||" \key c \major
  a,4. s8 s4. a8
  b4. s8 s4. b8
  c4. s8 s4. a8 % 35
  s1
  s1
  s2 <g e'>
  s1
  c2 s % 40
  c4. s8 s2
  c4. s8 s2
  b4. s8 s2
  bes4. d8 bes'4 e,
  s1 % 45
  s1
  fis2 g
  g2~g4 fis
  \bar "||" \key g \major
  g,4. g8~<g g'>2
  g4. g8~<g a'>2 % 50
  g4. g8~<g a'>2
  g4. g8~<g b'>2
  s2 g'4 e
  d2 a'
  c,2 g' % 55
  d2.~d8 d~
  d2 g
  e2 a
  fis2 a
  g2 b % 60
  <g, fis'>4. q8 <g f'>4. q8
  <c g'>4. q8 <b g'>4. q8
  <a g'>4. q8 <g g'>4. q8
  f'4. <ees g>8~q4~<ees a>
  \bar "||" \key bes \major
  s2 s4 s8 bes8 % 65
  s2 s4 s8 bes
  s1
  s1
  r4 bes' <f aes c>~<f aes d>
  <g bes>1 % 70
  q1~
  q1
  <bes d>1
  <f ees'>1
  bes,8( f' bes c d c d f) % 75
  <bes,, g'>4. bes'8 ees2
  \clef treble
  bes4. c8(d c d f
  <bes d>2~q8 r r4)
}

PianoLHlow  = \relative c {
  \voiceTwo
  \key f \major
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  c1
  f1
  f1 % 16
  f1
  f1
  f1
  bes2 a % 20
  g2 f
  ees2 c4. c8
  s2 f
  s2 f
  s2 f % 25
  s2 f
  f1
  <bes, bes'>2. g'4
  c,1
  c1 % 30
  s2 f4. f8
  f,1
  \bar "||" \key c \major
  s4. e'8 a4. s8
  s4. a8 gis4. s8
  s4. b8 a4. s8 % 35
  <b, a'>2 <e gis>
  <gis c>2 <fis c'>
  <g c>2 s
  d2 g,
  s2 c' % 40
  s4. g8 c2
  s4. fis,8 a2
  s4. d,8 b'2
  s2 b2
  a,8 d fis a <a, d fis a>2 % 45
  g8 d' b' d <g,, d' b'>2
  a1
  d1
  s1
  s1 % 50
  s1
  s1
  g,4. g8~g2
  fis4. fis8~fis2
  a4. e8~e2
  d1
  g1
  g1
  g1
  g1
  s1
  s1
  s1
  f1
  \bar "||" \key bes \major
  <bes f' bes>4. <f' bes d>8 q4. s8
  <bes, g' bes>4. <g' c ees>8 q4. s8
  <bes, f' a>4. <f' a ees>8 q2
  <f c' d>4. q8 <f bes d>4. f,8(
  bes1)
  ees2. d4
  <c ees>1~
  q1
  f1
  bes2 c
  s1
  s1
  \clef treble
  bes1
  s1
}

\header {
  title     = "All Things Bright and Beautiful"
  composer  = "John Rutter(1945—)"
  poet      = "C. F. Alexander (1823—1895)"
  tagline   = ##f
  copyright = today
}

#(set-global-staff-size 17)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = women <<
          \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = soprano { \voiceOne \UnisonMusic \SopranoMusic }
          \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \SopranoLyrics
          \new Voice = alto { \voiceTwo \UnisonMusic     \AltoMusic }
          \addlyrics { \UnisonLyrics \AltoLyrics }
        >>
        \new Staff = men <<
          \clef "bass"
          \new Dynamics \with {alignAboveContext = men} \dynamicsMen
          \new Voice = tenor { \voiceOne \TenorMusic }
          \new Voice = bass  { \voiceTwo \BassMusic }
          \addlyrics \BassLyrics
        >>
        \new Lyrics \with {alignAboveContext = men} \lyricsto tenor { \TenorLyrics }
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \new Voice { \PianoRHhigh }
          \new Voice { \PianoRHlow  }
        >>
        \new Dynamics \dynamics
        \new Staff = pianolh <<
          \new Voice { \PianoLHhigh }
          \new Voice { \PianoLHlow  }
        >>
        \new Dynamics \with {alignBelowContext = pianolh} \dynamicsPedal
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
      \new ChoirStaff <<
        \new Staff = women <<
          \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = soprano { \voiceOne \UnisonMusic \SopranoMusic }
          \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \SopranoLyrics
          \new Voice { \voiceTwo \UnisonMusic     \AltoMusic }
          \addlyrics { \UnisonLyrics \AltoLyrics }
        >>
        \new Staff = men <<
          \clef "bass"
          \new Dynamics \with {alignAboveContext = men} \dynamicsMen
          \new Voice = tenor { \voiceOne \TenorMusic }
          \new Voice = bass  { \voiceTwo \BassMusic }
          \addlyrics \BassLyrics
        >>
        \new Lyrics \with {alignAboveContext = men} \lyricsto tenor { \TenorLyrics }
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \new Voice { \PianoRHhigh }
          \new Voice { \PianoRHlow  }
        >>
        \new Dynamics \dynamics
        \new Staff = pianolh <<
          \new Voice { \PianoLHhigh }
          \new Voice { \PianoLHlow  }
        >>
        \new Dynamics \with {alignBelowContext = pianolh} \dynamicsPedal
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
      \new ChoirStaff <<
        \new Staff = soprano <<
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = soprano { \UnisonMusic \SopranoMusic }
          \addlyrics \wordsSopSep
        >>
        \new Staff = alto <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
          \new Voice { \UnisonMusic     \AltoMusic }
          \addlyrics { \tiny \wordsAltoSep }
        >>
        \new Staff = tenor <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
          \new Voice = tenor \TenorMusic
          \addlyrics {\tiny \wordsMenSep}
        >>
        \new Staff = bass <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
          \new Voice = bass  \BassMusic
          \addlyrics {\tiny \wordsMenSep}
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \magnifyStaff #4/7
          \new Voice { \PianoRHhigh }
          \new Voice { \PianoRHlow  }
        >>
        \new Dynamics {\teeny \dynamics}
        \new Staff = pianolh <<
          \magnifyStaff #4/7
          \new Voice { \PianoLHhigh }
          \new Voice { \PianoLHlow  }
        >>
        \new Dynamics \with {alignBelowContext = pianolh} {\teeny \dynamicsPedal}
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
      \new ChoirStaff <<
        \new Staff = soprano <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = soprano { \UnisonMusic \SopranoMusic }
          \addlyrics {\tiny \wordsSopSep}
        >>
        \new Staff = alto <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
          \new Voice { \UnisonMusic     \AltoMusic }
          \addlyrics \wordsAltoSep
        >>
        \new Staff = tenor <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
          \new Voice = tenor \TenorMusic
          \addlyrics {\tiny \wordsMenSep}
        >>
        \new Staff = bass <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
          \new Voice = bass  \BassMusic
          \addlyrics {\tiny \wordsMenSep}
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \magnifyStaff #4/7
          \new Voice { \PianoRHhigh }
          \new Voice { \PianoRHlow  }
        >>
        \new Dynamics {\teeny \dynamics}
        \new Staff = pianolh <<
          \magnifyStaff #4/7
          \new Voice { \PianoLHhigh }
          \new Voice { \PianoLHlow  }
        >>
        \new Dynamics \with {alignBelowContext = pianolh} {\teeny \dynamicsPedal}
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
  \bookOutputSuffix "singlepage-tenor"
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
      \new ChoirStaff <<
        \new Staff = soprano <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = soprano { \UnisonMusic \SopranoMusic }
          \addlyrics {\tiny \wordsSopSep}
        >>
        \new Staff = alto <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
          \new Voice { \UnisonMusic     \AltoMusic }
          \addlyrics { \tiny \wordsAltoSep }
        >>
        \new Staff = tenor <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
          \new Voice = tenor \TenorMusic
          \addlyrics \wordsMenSep
        >>
        \new Staff = bass <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
          \new Voice = bass  \BassMusic
          \addlyrics {\tiny \wordsMenSep}
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \magnifyStaff #4/7
          \new Voice { \PianoRHhigh }
          \new Voice { \PianoRHlow  }
        >>
        \new Dynamics {\teeny \dynamics}
        \new Staff = pianolh <<
          \magnifyStaff #4/7
          \new Voice { \PianoLHhigh }
          \new Voice { \PianoLHlow  }
        >>
        \new Dynamics \with {alignBelowContext = pianolh} {\teeny \dynamicsPedal}
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
      \new ChoirStaff <<
        \new Staff = soprano <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = soprano { \UnisonMusic \SopranoMusic }
          \addlyrics {\tiny \wordsSopSep}
        >>
        \new Staff = alto <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
          \new Voice { \UnisonMusic     \AltoMusic }
          \addlyrics { \tiny \wordsAltoSep }
        >>
        \new Staff = tenor <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
          \new Voice = tenor \TenorMusic
          \addlyrics {\tiny \wordsMenSep}
        >>
        \new Staff = bass <<
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
          \new Voice = bass  \BassMusic
          \addlyrics \wordsMenSep
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \magnifyStaff #4/7
          \new Voice { \PianoRHhigh }
          \new Voice { \PianoRHlow  }
        >>
        \new Dynamics {\teeny \dynamics}
        \new Staff = pianolh <<
          \magnifyStaff #4/7
          \new Voice { \PianoLHhigh }
          \new Voice { \PianoLHlow  }
        >>
        \new Dynamics \with {alignBelowContext = pianolh} {\teeny \dynamicsPedal}
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
  \bookOutputSuffix "midi-sop"
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano <<
          \new Dynamics \dynamicsWomen
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice { \voiceOne \UnisonMusic \SopranoMusic }
          \addlyrics \wordsSopMidi
        >>
        \new Staff = alto <<
          \new Dynamics \dynamicsWomen
          \new Voice { \UnisonMusic     \AltoMusic }
        >>
        \new Staff = tenor <<
          \clef "treble_8"
          \new Dynamics \dynamicsMen
          \new Voice = tenor { \voiceOne \TenorMusic }
        >>
        \new Staff = bass <<
          \clef "bass"
          \new Dynamics \dynamicsMen
          \new Voice = bass  { \voiceTwo \BassMusic }
        >>
      >>
      \new PianoStaff <<
        \new Staff = piano <<
          \new Voice { \PianoRHhigh }
          \new Voice { \PianoRHlow  }
          \new Dynamics \dynamics
          \new Voice { \PianoLHhigh }
          \new Voice { \PianoLHlow  }
        >>
        \new Dynamics \with {alignBelowContext = pianolh} \dynamicsPedal
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
    <<
      \new ChoirStaff <<
        \new Staff = soprano <<
          \new Dynamics \dynamicsWomen
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice { \voiceOne \UnisonMusic \SopranoMusic }
        >>
        \new Staff = alto <<
          \new Dynamics \dynamicsWomen
          \new Voice { \UnisonMusic     \AltoMusic }
          \addlyrics \wordsAltoMidi
        >>
        \new Staff = tenor <<
          \clef "treble_8"
          \new Dynamics \dynamicsMen
          \new Voice = tenor { \voiceOne \TenorMusic }
        >>
        \new Staff = bass <<
          \clef "bass"
          \new Dynamics \dynamicsMen
          \new Voice = bass  { \voiceTwo \BassMusic }
        >>
      >>
      \new PianoStaff <<
        \new Staff = piano <<
          \new Voice { \PianoRHhigh }
          \new Voice { \PianoRHlow  }
          \new Dynamics \dynamics
          \new Voice { \PianoLHhigh }
          \new Voice { \PianoLHlow  }
        >>
        \new Dynamics \with {alignBelowContext = pianolh} \dynamicsPedal
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
  \bookOutputSuffix "midi-men"
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano <<
          \new Dynamics \dynamicsWomen
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice { \voiceOne \UnisonMusic \SopranoMusic }
        >>
        \new Staff = alto <<
          \new Dynamics \dynamicsWomen
          \new Voice { \UnisonMusic     \AltoMusic }
        >>
        \new Staff = tenor <<
          \clef "treble_8"
          \new Dynamics \dynamicsMen
          \new Voice = tenor { \voiceOne \TenorMusic }
          \addlyrics \wordsMenMidi
        >>
        \new Staff = bass <<
          \clef "bass"
          \new Dynamics \dynamicsMen
          \new Voice = bass  { \voiceTwo \BassMusic }
        >>
      >>
      \new PianoStaff <<
        \new Staff = piano <<
          \new Voice { \PianoRHhigh }
          \new Voice { \PianoRHlow  }
          \new Dynamics \dynamics
          \new Voice { \PianoLHhigh }
          \new Voice { \PianoLHlow  }
        >>
        \new Dynamics \with {alignBelowContext = pianolh} \dynamicsPedal
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
