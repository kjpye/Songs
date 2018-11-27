\version "2.19.80"

\header {
  title = "While Shepherds Watched Their Flocks by Night"
  composer = "Daniel Read"
  poet = "Nahum Tate"
  meter = "SHERBURNE"
}

global = {
  \key d \major
  \time 4/4
}

SopranoMusic = \relative c'' {
  \global
  a2 a4 fis
  g8(a) b(cis) d4 d
  d2. d4
  d4 a b a
  a2. r4 % 5
  r1
  r1
  r2. a4
  d4 d g d
  b4 b b a % 10
  b2. 4
  b4 b b a8(g)
  a2. 4
  fis4 fis fis2
  r2. fis4 % 15
  a4 a a a
  b4 b b d
  e2. cis4
  d4 d d2~
  \bar ":|." d2. r4
  \bar "|."
}

SopranoLyricsOne = \lyricmode {
  While shep- herds watched their flocks by night
  all seat- ed on the ground.
  The an- gel of the Lord came down and glo- ry shone a- round,
  And glor- y shone a- round.
  The an- gel of the Lord came down and glo- ry shone a- round.
}  

SopranoLyricsTwo = \lyricmode {
  All glo- ry be __ to __ God on high
  and to the earth be peace.
  Good will hence- forth from heav'n to men
  Be- gin and nev- er cease,
  Be- gin and nev- er cease.
  Good will hence- forth from heav'n to men
  Be- gin and nev- er cease.
}

AltoMusic = \relative c' {
  \global
  d2 d4 d
  d4 d d fis
  fis2. 4
  fis4 d cis d
  e2. r4
  r1
  r2. a,4
  d4 d fis d
  b4 b b a
  d2. fis4
  e4 e e e
  e1 ~
  e2. e4
  d4 d d2
  fis2 fis4 fis
  fis4 fis fis d
  e4 e e fis8(g)
  a2. g4
  fis1 ~
  fis2. r4
}

AltoLyricsOne = \lyricmode {
  While shep- herds watched their flocks by night
  all seat- ed on the ground.
  The an- gel of the Lord came down and glo- ry shone a- round,
  And glor- y shone a- round.
  The an- gel of the Lord came down and glo- ry shone a- round.
}

AltoLyricsTwo = \lyricmode {
  All glo- ry be __ to __ God on high
  and to the earth be peace.
  Good will hence- forth from heav'n to men
  Be- gin and nev- er cease,
  Be- gin and nev- er cease.
  Good will hence- forth from heav'n to men
  Be- gin and nev- er cease.
}

TenorMusic = \relative c' {
  \global
  a2 fis4 d
  b'4 b b a
  b2. d4
  a8.(g16) d4 g fis
  e2. r4 % 5
  r2. a4
  d4 d fis d
  b4 b b a
  d2. a4
  fis4 fis fis a % 10
  b2. g4
  e4 e e2
  r2. a4
  b4 b b d
  a4 a a d, % 15
  d2. d4
  g4 g g b
  e,2. d4
  a'4 a a2~
  a2. r4
}

TenorLyricsOne = \lyricmode {
  While shep- herds watched their flocks by night
  all seat- ed on the ground.
  The an- gel of the Lord came down and glo- ry shone a- round,
  And glor- y shone a- round.
  The an- gel of the Lord came down and glo- ry shone a- round
  and glor- y shone a- round.
}

TenorLyricsTwo = \lyricmode {
  All glo- ry be __ to __ God on high
  and to the earth be peace.
  Good will hence- forth from heav'n to men
  Be- gin and nev- er cease,
  Be- gin and nev- er cease.
  Good will hence- forth from heav'n to men
  Be- gin and nev- er cease.
}

BassMusic = \relative c {
  \global
  d2 d4 d
  g4 g g d
  b2. b4
  fis'4 fis e d
  a2. a4
  d4 d fis d
  b4 b b a
  d1~
  d2. fis4
  b,4 b b d
  e1~
  e2. e4
  a4 a a2
  r2. d,4
  d4 d d d
  a'4 fis d fis
  e2. d4
  a2. a4
  d1~
  d2. r4
}

BassLyricsOne = \lyricmode {
  While shep- herds watched their flocks by night
  all seat- ed on the ground.
  The an- gel of the Lord came down and glo- ry shone a- round,
  And glor- y shone a- round.
  The an- gel of the Lord came down and glo- ry shone a- round.
}

BassLyricsTwo = \lyricmode {
  All glo- ry be __ to __ God on high
  and to the earth be peace.
  Good will hence- forth from heav'n to men
  Be- gin and nev- er cease,
  Be- gin and nev- er cease.
  Good will hence- forth from heav'n to men
  Be- gin and nev- er cease.
}

\include "satb.ly"
