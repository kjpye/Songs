\version "2.25.13"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

caesura = {
  \once
  \override BreathingSign.text = \markup {\musicglyph #"scripts.caesura.curved"}
  \breathe
}

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Some Folks"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Stephen Foster"
  arranger    = "Arr. Maurice Gardner"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 2/2
}

TempoTrack = {
  \tempo 2=120
  \set Score.tempoHideNote = ##t
  s1*5
  \tempo 2=110 s1*3 \tempo 2=120
  s1*40
  \tempo 2=110 % 6b+
  s1*12 s2 \tempo 2=100 s2
  s1*3 \tempo 2=120
  s1*48
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \textMark \markup { \circle "1a" } s1*3
  \textMark \markup { \circle "1b" } s1*5
  \textMark \markup { \circle "2a" } 
  \mark \markup { \box    "A"  } s1*4
  \textMark \markup { \circle "2b" } s1*4
  \textMark \markup { \circle "3a" }
  \mark \markup { \box    "B"  } s1*4
  \textMark \markup { \circle "3b" } s1*4
  \textMark \markup { \circle "4a" }
  \mark \markup { \box    "C"  } s1*4
  \textMark \markup { \circle "4b" } s1*4
  \mark \markup { \box    "D"  } s1
  \textMark \markup { \circle "5a" } s1*5
  \textMark \markup { \circle "5b" } s1*2
  \mark \markup { \box    "E"  } s1*2
  \textMark \markup { \circle "6a" } s1*5
  \textMark \markup { \circle "6b" } s1
  \mark \markup { \box    "F"  } s1*5
  \textMark \markup { \circle "7a" } s1*3
  \mark \markup { \box    "G"  } s1*3
  \textMark \markup { \circle "7b" } s1*5
  \textMark \markup { \circle "8a" }
  \mark \markup { \box    "H"  } s1*4
  \textMark \markup { \circle "8b" } s1*4
  \mark \markup { \box    "I"  } s1
  \textMark \markup { \circle "9a" } s1*5
  \textMark \markup { \circle "9b" } s1*2
  \mark \markup { \box    "J"  } s1*3
  \textMark \markup { \circle "10a" } s1*5
  \textMark \markup { \circle "10b" }
  \mark \markup { \box    "K"   } s1*4
  \textMark \markup { \circle "11a" } s1*5
  \textMark \markup { \circle "11b" } s1*5
  \textMark \markup { \circle "12a" } s1*2
  \mark \markup { \box    "L"   } s1*3
  \textMark \markup { \circle "12b" } s1*5
}

soprano = \relative {
  \global
  R1*3
  f'4^\mf^\< f f f % 1b
  <f a>4\!^\markup div. q q q
  <g c>2^\markup\bold "poco rit." q
  <a d>2 <a dis>
  <bes e>1\fermata\caesura \bar "||"
  R1^\markup\bold Brightly % 2a
  R1*7
  a4^\mp a a a % 3a
  c2. r4
  bes4^\< bes g2\!
  a4^\< a f2\!
  a4 a a a % 3b
  c2. bes4
  a4 c4 bes g
  f2. r4 \bar "||"
  d'2^\f c4. a8 % 4a
  bes8 a g f e4 c
  f4 f g g
  a2. a8 bes
  c2^\< f % 4b
  c2\! r4 bes
  a8 a a4 bes g
  f2. r4 \bar "||"
  a4^\p^\< a a a
  c2.^>^\f^\> r4 % 5a
  bes4^\p bes g r
  a4 a f a
  a4^\< a a a
  c2.^>^\f bes4
  a4^\> c bes g % 5b
  f2.^\p r4 \bar "||"
  d'2^\f c4. a8
  bes8 a g f e4 c
  f4 f g g % 6a
  a2. a8 bes
  c2^\< f
  c2\! r4 bes
  a8 a a4 bes g
  f2. r4 \bar "||" \key des \major % 6b
  f2^\p^\markup\bold "Freely (slower)" f
  f2 f
  aes1^\<~
  aes1\!
  ges2^\mf ges
  ees1 \breathe % 7a
  f2^\pp f
  des2 \breathe f2^\p
  f2^\< des
  f2 f\!
  aes1^\mf~
  aes2 \breathe ges % 7b
  f2 aes
  ges2 ees
  des1^\>~
  des1\!\omit\p\fermata \bar "||" \key e \major
  cis'2^-^\mf^\markup\bold "a tempo"  b4.^- gis8 % 8a
  a8 gis fis e dis4 b
  e4^. e^. fis^. fis^.
  gis2.^- gis8^\< a
  b2 e\! % 8b
  b2.^\f a4^\>
  gis8 8 4\! a^. fis^.
  e2.^-^\mf r4 \bar "||"
  gis^\p 4 4 4
  b1 % 9a
  a4^\< \( gis fis2^\mf^\> \)
  gis4^\p^\< \( fis e2^\mf^\> \) \breathe
  gis4^\p^\< 4 4 4\!
  b2. a4
  gis4 b a fis % 9b
  e2. r4 \bar "||"
  cis'2^-^\p b4.^- gis8
  a8 gis fis e dis4 b
  e4^. e^. fis^. fis^.
  gis2.^- gis8^\< a % 10a
  b2 e\!
  b2.^\mf a4
  gis8 8 4 a fis
  e2. r4 \bar "||" \key g \major
  <g e'>1^\f % 10b
  <g d'>2. <d b'>4
  <e c'>4^> r8 <e b'> <e a>4 <e g>
  <d fis>2 d
  g2^\< g % 11a
  <d a'>2 q\!
  <d b'>1~
  q4 r q <fis c'>
  <g d'>1
  <g g'>1 % 11b
  <g d'>1~
  q4 r <g c>2^\ff
  <g b>2 q
  q1
  <g c>1 % 12a
  <fis a>1 \caesura \bar "||"
  R1
  R1
  c4^\mp^\< c e e
  g4 g <g b> q\! % 12b
  <a d>2^> q^>
  <c e>2^> <d fis>^>
  <d g>1^>^\fermata ~
  q4 r r2
  \bar "|."
}

wordsSop = \lyricmode {
  Some folks like to,
  Some folks like to,
  Some folks like to cry!

  Some folks fear to smile,
  Some folks do, some folks do;
  Oth -- ers laugh thro’ guile,
  But that’s not me nor you.

  Long live the mer -- ry, mer -- ry heart
  That laughs by night and day,
  Like the Queen of Mirth,
  No mat -- ter what some folks say.

  Some folks fret and scold,
  Some folks do, some folks do;
  They’ll soon be dead and cold,
  But that’s not me nor you.

  Long live the mer -- ry, mer -- ry heart
  That laughs by night and day,
  Like the Queen of Mirth,
  No mat -- ter what some folks say.

  Some folks toil and save, __
  Some folks do, some folks do;
  To buy them -- selves a grave, __
  But that’s not me nor you. __

  La, la, la, la la la la la la la la la la, la,
  La, la, la, la, la, la, la la la la la la,

  Some folks get grey hairs,
  Some folks do, some folks do;
  Brood -- ing o’er their cares,
  But that’s not me nor you.

  La, la, la, la la la la la la la la la la la,
  La la la la, la, la, la la la la la la.

  Long live the mer -- ry, mer -- ry heart
  that laughs by night and day,
  Like the Queen of Mirth, __
  No mat -- ter what some folks

  Some folks like to sigh and cry,
  But that’s not me nor you! __
}

wordsSopMidi = \lyricmode {
  "Some " "folks " "like " "to, "
  "\nSome " "folks " "like " "to, "
  "\nSome " "folks " "like " "to " "cry! "

  "\nSome " "folks " "fear " "to " "smile, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nOth" "ers " "laugh " "thro’ " "guile, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nThat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, "
  "\nNo " mat "ter " "what " "some " "folks " "say. "

  "\nSome " "folks " "fret " "and " "scold, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nThey’ll " "soon " "be " "dead " "and " "cold, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nThat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, "
  "\nNo " mat "ter " "what " "some " "folks " "say. "

  "\nSome " "folks " "toil " "and " "save, " 
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nTo " "buy " them "selves " "a " "grave, " 
  "\nBut " "that’s " "not " "me " "nor " "you. " 

  "\nLa, " "la, " "la, " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, " "la, "
  "\nLa, " "la, " "la, " "la, " "la, " "la, " "la " "la " "la " "la " "la " "la, "

  "\nSome " "folks " "get " "grey " "hairs, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nBrood" "ing " "o’er " "their " "cares, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLa, " "la, " "la, " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
  "\nLa " "la " "la " "la, " "la, " "la, " "la " "la " "la " "la " "la " "la. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nthat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, " 
  "\nNo " mat "ter " "what " "some " "folks "

  "\nSome " "folks " "like " "to " "sigh " "and " "cry, "
  "\nBut " "that’s " "not " "me " "nor " "you! " 
}

alto = \relative {
  \global
  R1*2
  d'4^\mf d d d
  d4^\<^\mf d d d % 1b
  d4\! d d d
  e2 e
  f2 fis
  g1\fermata \caesura
  R1*8
  f4^\mp f f f % 3a
  a2. r4
  d,4^\< d e2\!
  c4^\< c d2\!
  f4 f f f % 3b
  a2. g4
  f4 c d e
  f2. r4
  f2^\f 4. 8
  f8 f c c c4 c
  c4 c e e
  f2. 8 8
  f2^\< f % 4b
  f2\! r4 f
  f8 8 4 4 e
  f2. r4 \bar "||"
  f4^\p^\< f f f
  f2.^\>^\f^\> r4 % 5a
  f4^\p f e r
  ees4 ees d f
  f4^\< f f f
  f2._>^\f f4
  f4^\> f f e % 5b
  c2.^\p r4 \bar "||"
  f2^\f 4. 8
  f8 f c c c4 c
  c4 c e e % 6a
  f2. 8 8
  f2^\< f
  f2\! r4 f
  f8 8 4 4 e
  f2. r4 \bar "||" \key des \major des2^\p ees % 6b
  des2 c
  ces2^\<( c
  des2\! d)
  ees2^\mf ees
  c1 \breathe % 7a
  c2^\pp c
  bes2 \breathe des^\p des2^\< des
  ees2 ees\!
  d1^\mf ~
  d2 \breathe des % 7b
  des2 des
  des2 c
  bes1^\> (
  des1\omit\p\fermata) \! \bar "||" \key e \major
  cis'2^\mf^- b4.^- gis8 % 8a
  a8 gis fis e dis4 b
  e4^. e^. fis^. fis^.
  g2.^- e8^\< e
  e2 e\! % 8b
  e2.^\f fis4^\>
  e8 e e4\! e^. dis^.
  b2.^\mf^- r4 \bar "||"
  e4^\p e e e
  gis1 % 9a
  fis4^\< \( e dis2^\mf^\> \)
  e4^\p^\< \( d cis2^\mf^\> \) \breathe
  e4^\p^\< e fis fis\!
  eis2. e4
  e4 e cis dis % 9b
  e2. r4 \bar "||"
  cis'2^\p^- b4.^- gis8
  a8 gis fis e dis4 b
  e4^. e^. fis^. fis^.
  gis2.^- e8^\< e % 10a
  e2 e\!
  e2.^\mf fis4
  e8 8 4 4 dis
  b2. r4 \bar "||" \key g \major
  e1^\f % 10b
  d2. b4
  c4^> r8 b a4 bes
  a2 a
  d2^\< d % 11a
  c2 c\!
  b1~
  b4 r b c
  d1
  e1 % 11b
  d1~
  d4 r e2^\ff
  d2 d
  d1
  e1 % 12a
  d1 \caesura \bar "||"
  R1
  R1
  c4^\mp^\< c c c
  <c e>4 q q q\!
  <d fis>2^> q^>
  <e g>2^> <fis a>^>
  <g b>1^>^\fermata ~
  q4 r r2
  
%  \bar "|."
}

wordsAlto = \lyricmode {
  Some folks like to,
  Some folks like to,
  Some folks like to,
  Some folks like to cry!

  Some folks fear to smile,
  Some folks do, some folks do;
  Oth -- ers laugh thro’ guile,
  But that’s not me nor you.

  Long live the mer -- ry, mer -- ry heart
  That laughs by night and day,
  Like the Queen of Mirth,
  No mat -- ter what some folks say.

  Some folks fret and scold,
  Some folks do, some folks do;
  They’ll soon be dead and cold,
  But that’s not me nor you.

  Long live the mer -- ry, mer -- ry heart
  That laughs by night and day,
  Like the Queen of Mirth,
  No mat -- ter what some folks say.

  Some folks toil and save, __
  Some folks do, some folks do;
  To buy them -- selves a grave, __
  But that’s not me nor you. __

  La, la, la, la la la la la la la la la la, la,
  La, la, la, la, la, la, la la la la la la,

  Some folks get grey hairs,
  Some folks do, some folks do;
  Brood -- ing o’er their cares,
  But that’s not me nor you.

  La, la, la, la la la la la la la la la la la,
  La la la la, la, la, la la la la la la.

  Long live the mer -- ry, mer -- ry heart
  that laughs by night and day,
  Like the Queen of Mirth, __
  No mat -- ter what some folks

  Some folks like to sigh and cry,
  But that’s not me nor you! __
}

wordsAltoMidi = \lyricmode {
  "Some " "folks " "like " "to, "
  "\nSome " "folks " "like " "to, "
  "\nSome " "folks " "like " "to, "
  "\nSome " "folks " "like " "to " "cry! "

  "\nSome " "folks " "fear " "to " "smile, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nOth" "ers " "laugh " "thro’ " "guile, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nThat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, "
  "\nNo " mat "ter " "what " "some " "folks " "say. "

  "\nSome " "folks " "fret " "and " "scold, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nThey’ll " "soon " "be " "dead " "and " "cold, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nThat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, "
  "\nNo " mat "ter " "what " "some " "folks " "say. "

  "\nSome " "folks " "toil " "and " "save, " 
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nTo " "buy " them "selves " "a " "grave, " 
  "\nBut " "that’s " "not " "me " "nor " "you. " 

  "\nLa, " "la, " "la, " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, " "la, "
  "\nLa, " "la, " "la, " "la, " "la, " "la, " "la " "la " "la " "la " "la " "la, "

  "\nSome " "folks " "get " "grey " "hairs, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nBrood" "ing " "o’er " "their " "cares, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLa, " "la, " "la, " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
  "\nLa " "la " "la " "la, " "la, " "la, " "la " "la " "la " "la " "la " "la. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nthat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, " 
  "\nNo " mat "ter " "what " "some " "folks "

  "\nSome " "folks " "like " "to " "sigh " "and " "cry, "
  "\nBut " "that’s " "not " "me " "nor " "you! " 
}

tenor = \relative {
  \global
  R1
  g4^\mp g g g
  bes1
  bes4^\< bes bes bes % 1b
  bes4\! bes bes bes
  bes2 bes
  a2 c
  c1\fermata \caesura
  g4 g g g % 2a
  c2. r4
  bes4 bes g2
  a4 a f2
  a4^\< a a a % 2b
  c2.\! \breathe bes4
  a4 c bes^\> g
  f2.\! r4
  R1*8 % 3
  d'2^\f c4. 8 % 4a
  c8 c g g g4 bes
  a4 a c c
  c2. 8 8
  c2^\< d % 4b
  c2\! r4 d
  c8 8 4 d bes
  a2. r4 \bar "||"
  c4^\p^\< c cis cis
  d2.^>^\f^\> r4 % 5a
  d4^\p d des r
  c4 c bes c
  c4^\< c cis cis
  d2.^>^\f des4
  c4^\> a d bes % 5b
  a2.^\p r4 \bar "||"
  d2^\f c4. 8
  c8 c g g g4 bes
  a4 a c c % 6a
  c2. 8 8
  c2^\< d
  c2\! r4 d
  c8 8 4 d bes
  a2. r4 \bar "||" \key des \major % 6b
  aes2^\p c
  bes2 a
  aes2^\<( a
  bes\! ces)
  bes2^\mf bes
  a1 \breathe % 7a
  a2^\pp a
  aes2 \breathe aes^\p
  aes2^\< aes
  aes2 aes\!
  f2^\mf(e
  f2) \breathe ges % 7b
  aes2 f
  bes2 ges
  ges1(^\>
  f1)\omit\p^\fermata \breathe \bar "||" \key e \major
  a2^-^\mf gis4.^- e8 % 8a
  fis8 gis a ais b4 a
  gis4^. gis^. fis^. fis^.
  e2.^- b'8^\< b
  b2 cis\! % 8b
  b2.^\f cis4^\>
  b8 8 4\! cis4^. a^.
  gis2.^\mf r4 \bar "||"
  R1
  gis4^\p gis gis gis % 9a
  a4^\< \( b c2^\mf^\> \)
  gis4^\p^\< \( a b2^\mf^\> \)
  b4^\p^\< b b b\!
  gis2. a4
  b4 gis fis a % 9b
  gis2. r4 \bar "||"
  a2_-^\p gis4._- e8
  fis8 gis a ais b4 a
  gis4^. gis^. fis^. fis^.
  e2.^- b'8^\< b % 10a
  b2 cis\!
  b2.^\mf cis4
  b8 8 4 cis a
  gis2. r4 \bar "||" \key g \major
  g1^\f % 10b
  g2. 4
  g4^> r8 g g4 g
  f2 f
  g2^\< g % 11a
  f2 f\!
  g1 ~
  g4 r <g b> <fis c'>
  <g d'>1
  <g e'>1 % 11b
  <g d'>1~
  q4 r <g c>2^\ff
  <g b>2 q
  q1
  <a c>1 % 12a
  q1 \caesura \bar "||"
  R1
  a4^\p a a a
  a4^\mp^\< a a a
  a4 a a a\! % 12b
  c2^> c^>
  c2^> <c d>^>
  <b d>1^>^\fermata~
  q4 r r2
                                %  \bar "|."
}

wordsTenor = \lyricmode {
  Some folks like to scold,
  Some folks like to,
  Some folks like to,
  Some folks like to cry!
  Some folks long to sigh,
  Some folks do, some folks do;
  Some folks long to die,
  But that’s not me nor you.

  Long live the mer -- ry, mer -- ry heart
  That laughs by night and day,
  Like the Queen of Mirth,
  No mat -- ter what some folks say.

  Some folks fret and scold,
  Some folks do, some folks do;
  They’ll soon be dead and cold,
  But that’s not me nor you.

  Long live the mer -- ry, mer -- ry heart
  That laughs by night and day,
  Like the Queen of Mirth,
  No mat -- ter what some folks say.

  Some folks toil and save, __
  Some folks do, some folks do;
  To buy them -- selves a grave, __
  But that’s not me nor you. __

  La, la, la, la la la la la la la la la la, la,
  La, la, la, la, la, la, la la la la la la,

  Some folks get grey,
  Some folks do, some folks do;
  Brood -- ing o’er their cares,
  But that’s not me nor you.

  La, la, la, la la la la la la la la la la la,
  La la la la, la, la, la la la la la la.

  Long live the mer -- ry, mer -- ry heart
  that laughs by night and day,
  Like the Queen of Mirth, __
  No mat -- ter what some folks

  Some folks like to,
  Some folks like to sigh and cry,
  But that’s not me nor you! __
}

wordsTenorMidi = \lyricmode {
  "Some " "folks " "like " "to " "scold, "
  "\nSome " "folks " "like " "to, "
  "\nSome " "folks " "like " "to, "
  "\nSome " "folks " "like " "to " "cry! "
  "\nSome " "folks " "long " "to " "sigh, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nSome " "folks " "long " "to " "die, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nThat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, "
  "\nNo " mat "ter " "what " "some " "folks " "say. "

  "\nSome " "folks " "fret " "and " "scold, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nThey’ll " "soon " "be " "dead " "and " "cold, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nThat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, "
  "\nNo " mat "ter " "what " "some " "folks " "say. "

  "\nSome " "folks " "toil " "and " "save, " 
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nTo " "buy " them "selves " "a " "grave, " 
  "\nBut " "that’s " "not " "me " "nor " "you. " 

  "\nLa, " "la, " "la, " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, " "la, "
  "\nLa, " "la, " "la, " "la, " "la, " "la, " "la " "la " "la " "la " "la " "la, "

  "\nSome " "folks " "get " "grey, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nBrood" "ing " "o’er " "their " "cares, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLa, " "la, " "la, " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
  "\nLa " "la " "la " "la, " "la, " "la, " "la " "la " "la " "la " "la " "la. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nthat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, " 
  "\nNo " mat "ter " "what " "some " "folks "

  "\nSome " "folks " "like " "to, "
  "\nSome " "folks " "like " "to " "sigh " "and " "cry, "
  "\nBut " "that’s " "not " "me " "nor " "you! " 
}

bass = \relative {
  \global
  c4^\mp c c c
  c1~^\mp
  c1
  c4^\< c c c % 1b
  c4\! c c c
  c2 c
  c2 c
  c1\fermata \caesura
  f4 f f f % 2a
  a2. r4
  g4 g c,2
  f4 f a,2
  f'4^\< f f f % 2b
  a2.\! \breathe g4
  f4 c d^\> e
  f2.\! r4
  R1*8 \bar "||" % 3
  bes2^\f a4. f8 % 4a
  g8 f e d c4 e
  f4 f c c
  f2. f8 g
  a2^\< bes % 4b
  a2\! r4 g
  c,8 8 4 4 4
  f2. r4 \bar "||"
  f4^\p^\< f f f
  f2.^>^\f^\> r4 % 5a
  f^\p f f r
  f4 f f f
  f4^\< f f f
  f2.^>^\f f4
  f4^\> f f f % 5b
  f2.^\p r4 \bar "||"
  bes2^\f a4. f8
  g8 f e d c4 e
  f4 f c c % 6a
  f2. f8 g
  a2^\< bes
  a2\! r4 g
  c,8 8 4 4 4
  f2. r4 \bar "||" \key des \major
  des2^\p des
  des2 des
  des1^\<~
  des1\!
  des2^\mf des
  des1 \breathe % 7a
  des2^\pp des
  des2 \breathe des^\p
  des2^\< des
  c2 ces\!
  bes1^\mf ~
  bes2 \breathe a % 7b
  aes2 aes
  aes2 aes
  des1^\> ~
  des1\!\omit\p^\fermata \breathe \bar "||" \key e \major
  a'2^-^\mf gis4.^- e8 % 8a
  fis8 gis a ais b4 a
  gis4^. gis^. fis^. fis^.
  e2.^- e8^\< fis
  gis2 a\! % 8b
  gis2.^\f a4^\>
  b8 8 4\! b,^. b^.
  e2.^-^\mf r4 \bar "||"
  R1
  e4^\p e e e % 9a
  fis4^\< \( gis a2^\mf^\> \)
  e4^\p^\< \( fis gis2^\mf^\> \) \breathe
  e4^\p^\< e d d\!
  cis2. c4
  b4 b b b % 9b
  e2. r4 \bar "||"
  a2^-^\p gis4.^- e8
  fis8 gis a ais b4 a
  gis4^. gis^. fis^. fis^.
  e2.^- e8^\< fis % 10a
  gis2 a\!
  gis2.^\mf a4
  b8 8 4 b, b
  e2. r4 \bar "||" \key g \major
  c1^\f % 10b
  b2. gis4
  a4^> r8 b c4 cis
  d2 c
  b2^\< b % 11a
  a2 a\!
  g1 ~
  g4 r g a
  b1
  c1 % 11b
  b1~
  b4 r a2^\ff
  d2 d
  d1
  d1 % 12a
  d1 \caesura \bar "||"
  d4^\p d d d
  d1^\p
  d4^\mp^\< d d d
  d4 d d d\! % 12b
  d2^> d^>
  d2^> d^> <g, d'>1^> ^\fermata ~
  q4 r r2
%  \bar "|."
}

wordsBass = \lyricmode {
  Some folks like to sigh, __
  Some folks like to,
  Some folks like to,
  Some folks like to cry!
  Some folks long to sigh,
  Some folks do, some folks do;
  Some folks long to die,
  But that’s not me nor you.

  Long live the mer -- ry, mer -- ry heart
  That laughs by night and day,
  Like the Queen of Mirth,
  No mat -- ter what some folks say.

  Some folks fret and scold,
  Some folks do, some folks do;
  They’ll soon be dead and cold,
  But that’s not me nor you.

  Long live the mer -- ry, mer -- ry heart
  That laughs by night and day,
  Like the Queen of Mirth,
  No mat -- ter what some folks say.

  Some folks toil and save, __
  Some folks do, some folks do;
  To buy them -- selves a grave, __
  But that’s not me nor you. __

  La, la, la, la la la la la la la la la la, la,
  La, la, la, la, la, la, la la la la la la,

  Some folks get grey,
  Some folks do, some folks do;
  Brood -- ing o’er their cares,
  But that’s not me nor you.

  La, la, la, la la la la la la la la la la la,
  La la la la, la, la, la la la la la la.

  Long live the mer -- ry, mer -- ry heart
  that laughs by night and day,
  Like the Queen of Mirth, __
  No mat -- ter what some folks

  Some folks like to sigh,
  Some folks like to sigh and cry,
  But that’s not me nor you! __
}

wordsBassMidi = \lyricmode {
  "Some " "folks " "like " "to " "sigh, " 
  "\nSome " "folks " "like " "to, "
  "\nSome " "folks " "like " "to, "
  "\nSome " "folks " "like " "to " "cry! "
  "\nSome " "folks " "long " "to " "sigh, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nSome " "folks " "long " "to " "die, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nThat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, "
  "\nNo " mat "ter " "what " "some " "folks " "say. "

  "\nSome " "folks " "fret " "and " "scold, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nThey’ll " "soon " "be " "dead " "and " "cold, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nThat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, "
  "\nNo " mat "ter " "what " "some " "folks " "say. "

  "\nSome " "folks " "toil " "and " "save, " 
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nTo " "buy " them "selves " "a " "grave, " 
  "\nBut " "that’s " "not " "me " "nor " "you. " 

  "\nLa, " "la, " "la, " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, " "la, "
  "\nLa, " "la, " "la, " "la, " "la, " "la, " "la " "la " "la " "la " "la " "la, "

  "\nSome " "folks " "get " "grey, "
  "\nSome " "folks " "do, " "some " "folks " "do; "
  "\nBrood" "ing " "o’er " "their " "cares, "
  "\nBut " "that’s " "not " "me " "nor " "you. "

  "\nLa, " "la, " "la, " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
  "\nLa " "la " "la " "la, " "la, " "la, " "la " "la " "la " "la " "la " "la. "

  "\nLong " "live " "the " mer "ry, " mer "ry " "heart "
  "\nthat " "laughs " "by " "night " "and " "day, "
  "\nLike " "the " "Queen " "of " "Mirth, " 
  "\nNo " mat "ter " "what " "some " "folks "

  "\nSome " "folks " "like " "to " "sigh, "
  "\nSome " "folks " "like " "to " "sigh " "and " "cry, "
  "\nBut " "that’s " "not " "me " "nor " "you! " 
}

pianoRHone = \relative {
  \global
  R1
  R1
  d'1\omit\p~
  <d f>1~ % 1b
  <d f a>1
  <e g c>2^\omit\mf^\markup\bold "poco rit." q
  <f a d>2 <fis a dis>
  <g bes e>1\fermata \caesura \bar "||"
  r4\omit\p^\markup\bold Brightly <a, c f> r q % 2a
  r4 q r q
  r4 <bes c e> r q
  r4 <a c f> r q
  r4 q r q % 2b
  r4 q r <bes d f>
  r4 <a c f> r <bes c g'>
  r4 <a c f> q r
  r4\omit\mp <f' a c> r q % 3a
  r4 q r q
  r4 <g bes c> r q
  r4 <f a bes> r q
  r4 q r q % 3b
  r4 q r <f g bes>
  r4 <f a c> r <g bes c>
  r4 <a c g>^. q^. r
  r4\omit\mf <bes, d f> r <f c' f> % 4a
  r4 <bes d f> r <bes c g'>
  r4 <a c f> r <g bes c e>
  r4 <a c f> r q
  r4 <f c' f> r <f bes d f> % 4b
  r4 <f c' f> r <bes d f>
  r4 <a c f> r <g bes c e>
  <a c f>2. r4
  r4\omit\p <c f a> r <cis f a>
  r4 <d f c'> r q % 5a
  r4 <d f bes> r <des e g>
  r4 <c ees a> r <a c f>
  r4 <c f a> r <cis f a>
  r4 <d f c'> r <des f bes>
  r4 <c f a> r <bes e g> % 5b
  r4 <a c f> r2
  r4\omit\mf <bes d f> r <f c' f>
  r4 <bes d f> r <bes c g'>
  r4 <a c f> r <g bes c e> % 6a
  r4 <a c f> r q
  r4 <f c' f> r <f bes d f>
  r4 <f c' f> r <bes d f>
  r4 <a c f> r <g bes c e>
  r4 <a c f> r2 \key des \major % 6b
  \vo R1^\markup\bold "Freely (slower)"
  R1*15 \key e \major \ov
  r4\omit\mp^\markup\bold "a tempo" <cis e cis'> r <b e b'> % 8a
  r4 <cis e a> r <a b dis fis>
  r4 <gis b e> r <a b dis fis>
  r4 <gis b e gis> r2
  r4\omit\< <b e b'> r\! <cis e cis'> % 8b
  r4\omit\f <b e b'> r <cis fis a>\omit\>
  r4 <b e gis>\! r <a dis fis>
  r4 <gis b e> r2 \bar "||"
  <b e gis>1\omit\p
  <dis gis b>1 % 9a
  <cis fis a>4\omit\<( ^\( <b e gis> <a c d fis>2\!) \)
  <b e gis>4\omit\<( ^\( <a dis fis> <gis b cis e>2\!) \) <b e gis>2 <b fis' gis>
  <b eis gis>2. <a e' a>4
  <b e gis>2 <a dis fis> % 9b
  <gis b e>2. r4 \bar "||"
  r4\omit\p <cis e cis'> r <b e b'>
  r4 <cis e a> r <a b dis fis>
  r4 <gis b e> r <a b dis fis>
  r4 <gis b e gis> r2 % 10a
  r4 <b e b'> r <cis e cis'>
  r4 <b e b'> r <cis e a>
  r4 <b e gis> r <a dis fis>
  r4 <gis b e> r2 \bar "||" \key g \major
  r4\omit\mf <g c e g> r q % 10b
  r4 <g d' g> r q
  r4 <g c e g> r <bes e g>
  r4 <a d fis> r q
  r4 <g d' g> r q % 11a
  r4 <c d fis> r q
  r4 <g b d g> r q
  r4 q r <fis c' d fis>
  r4 <g d' g> r q
  r4 <g c e g> r q % 11b
  r4 <g d' g> r q
  r4 q r\omit\f <g c e g>
  r2 <d' g b>\arpeggio
  \vo <g b d>2\arpeggio <d' g b>\arpeggio
  <e, g c>2\arpeggio <e' g a c>\arpeggio % 12a
  <c, d fis a>2\arpeggio <d' f a d>\arpeggio \caesura \bar "||"
  R1
  R1
  s1
  \vo
  r2 b\omit\mf \ov % 12b
  <d, fis a d>2^>\omit\f q^>
  <e g c e>2^> <fis a d fis>^>
  <g b d g>1\fermata ~
  q4 r r2
%  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \vt
  s1*48 \key des \major
  \teeny
  <des' f>2\omit\mf <ees f> % 6b+
  <des f>2 <c f>
  << {a'1 | a} \new Voice {\vt \teeny ces,2(c | des d)} >>
  <ees ges>2 q
  <c ees>1 \breathe % 7a
  <c f>2 q
  <bes des>2 \breathe  <des f>
  q2 q
  <ees f>2 q
  <d aes'>1~
  q2 \breathe <des ges> % 7b
  <des f>2 <des aes'>
  <des ges>2 <c ees>
  <bes des>1~^(
  des1)\parenthesize^\fermata \breathe \bar "||" \key e \major
  s1*42
  \normalsize \ov
  r2 e\omit\mf~
  <e g>1
  s1*4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s1
  s1 % 1b
  s1
  s1\mf\<
  s1
  s1\!
  s1\p % 2a
  s1*7
  s1\mp % 3a
  s1*7
  s1\mf % 4a
  s1*7
  s1\p % 4b++++
  s1*7
  s1\mf % 5b++
  s1*23
  s1\mp % 8a
  s1*3
  s2\< s2\! % 8b
  s2.\f s4\>
  s2 s\!
  s1
  s1\p
  s1 % 9a
  s2\< s\!
  s2\< s\!
  s1*4
  s1\p % 9b++
  s1*7
  s1\mf % 10b
  s1*10
  s2 s\f % 11b++
  s1*4
  s1\p % 12a++
  s1\<
  s2 s\!
  s1 % 12b
  s1\f
  s1*3
}

pianoLHone = \relative {
  \global
  \vo
  c1\omit\p~
  <c g'>1~
  <c g' bes>1~
  q1~ % 1b
  q1
  <c bes'>2\omit\mf\omit\< q
  <c a'>2 <c c'>
  <c c'>1\fermata\! \caesura \bar "||"
  \repeat unfold 6 {c2\omit\p(d)} % 2a
  c2(d4 e)( % 2b++
  f2.) r4
  c'2\omit\mp(d) % 3a
  c2(d)
  d2(e)
  c2(d)
  c2(d) % 3b
  c2(d)
  c2(d4 e)
  f2. r4
  \ov bes,,4\omit\mf r a r % 4a
  g4 r c, e
  fis4 r c r
  fis4 r fis r
  a2 bes % 4b
  a2 4 g
  c4 r c r
  f4 c f, r \bar "||"
  f'4\omit\p r f r
  \repeat unfold 6 {f4 r f r} % 5a
  f4^. r f,_. r \bar "||" % 5b+
  bes4\omit\mf r a r
  g4 r c, e
  f4 r c r % 6a
  f4 r f r
  a2 bes
  a2 4 g
  c4 r c r
  fis4^. r f,_. r \bar "||" \key des \major % 6b
  \teeny
  <des' aes'>2 <des c'>
  <des bes'>2 <des a'>
  << {\vo aes'2( a | bes2 ces)} \new Voice {\teeny des,1 | des1 } >> \ov
  <des bes'>2 q
  <d a'>1 \breathe % 7a
  q2 q
  <des bes'>2 \breathe q
  q2 q
  <c a'>2 <ces a'>
  << {\vo f2(e | f2)} \new Voice {\vt \teeny bes,1~ | bes2} >>
     \breathe \ov <a ges'>
  <aes aes'>2 <aes f'> % 7b+
  <aes aes'>2 <aes g'>
  <des g>1~(
  <des f>1)\parenthesize^\fermata \breathe \bar "||" \key e \major
  \normalsize
  a4\omit\mp r gis r % 8a
  fis4 r b r
  e4 r b r
  e,4 r e r
  gis4\omit\< r a\! r % 8b
  gis4\omit\f r gis a\omit\>
  b4 r\! b r
  e4 r e, r \bar "||"
  r4\omit\p b' r b
  r4 b r b % 9a
  r4\omit\< b r\! b
  r4\omit\< b r\! b 
  r4 e r d
  r4 cis r c
  r4 b r b % 9b
  e4^. b_. e,_. r \bar "||"
  a4\omit\p r gis r
  fis4 r b r
  e4 r b r
  e,4 r e r % 10a
  gis4 r a r
  gis4 r gis a
  b4 r b r
  e4 r e, r \bar "||" \key g \major
  <c c'>4\omit\mf r q r % 10b
  <b b'>4 r q r
  <a a'>4 r8 <b b'> <c c'>4 <cis cis'>
  <d d'>4 r <c c'> r
  <b b'>4 r q r % 11a
  <a a'>4 r q r
  <gis gis'>4 r q r
  q4 r q <a a'>
  <b b'> r q_. r
  <c c'>4 r q r % 11b
  <b b'>4 r q r
  q4 r <a a'>\omit\f r
  r2 <d' g b>2\arpeggio
  \vt \rh <g b d>2\arpeggio <d' g b>\arpeggio
  \ov \lh <d, a' c>2\arpeggio \vt \ss \rh <e' g a c>\arpeggio \hs % 12a
  \lh <d, fis a>2\arpeggio \rh \ss <d' fis a c> \lh \hs \caesura
  d,1\omit\p~
  <d a'>1~ \omit\<
  <d a' c>1~
  q1\! % 12b
  <d a' c>2^>\omit\f q^>
  q2^> <d a' c d>^>
  <g, d' b'>1\fermata ~
  q4 r r2
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \vt
  s1*7
  f,1\omit\p % 2a
  \repeat unfold 6 {f1\omit\p}
  f1~
  f2. r4
  f'1\omit\mp % 3a
  f1
  f1
  f1
  f1 % 3b
  f1
  f1~
  f2. r4 \bar "||"
  s1*24
  R1*16 % 6b+
  s1*36
  <d, d'>1 % 11b+++
  s1*11
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh
          <<
            \pianoRHone
            \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh
          <<
            \pianoRHone
            \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
    paper-height = 2000\mm
    ragged-bottom = true
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          << 
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh
          <<
            \magnifyStaff #4/7
            \pianoRHone
            \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
    paper-height = 2000\mm
    ragged-bottom = true
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
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          << 
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh
          <<
            \magnifyStaff #4/7
            \pianoRHone
            \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
    paper-height = 2000\mm
    ragged-bottom = true
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
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          << 
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh
          <<
            \magnifyStaff #4/7
            \pianoRHone
            \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
    paper-height = 2000\mm
    ragged-bottom = true
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
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          << 
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh
          <<
            \magnifyStaff #4/7
            \pianoRHone
            \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
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
                                % Single soprano staff
          \new Staff = soprano \with {

            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano
          <<
            \pianoRHone
            \pianoRHtwo
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
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano
          <<
            \pianoRHone
            \pianoRHtwo
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
  \paper {
    output-suffix = midi-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano
          <<
            \pianoRHone
            \pianoRHtwo
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
  \paper {
    output-suffix = midi-bass
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = rh
          <<
            \pianoRHone
            \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
