\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When I'm Sixty-Four"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Lennon and Paul McCartney"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 2/2
}

TempoTrack = {
%  \tempo 2=70
  s1
  \set Score.tempoHideNote = ##t
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "2a" } s1*3
  \mark \markup { \circle "2a" } s1
  \repeat volta 2 {
    s1*2
  \mark \markup { \circle "3a" } s1*3
  \mark \markup { \circle "3b" } s1*3
  \mark \markup { \circle "4a" } s1*3
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \circle "5a" } s1*3
  \mark \markup { \circle "5b" } s1*3
  \mark \markup { \circle "6a" } s1*3
  \mark \markup { \circle "6b" } s1*3
  \mark \markup { \circle "7a" } s1*3
  \mark \markup { \circle "7b" } s1*2
  }
  \alternative {
    { s1 }
    {
      \mark \markup { \circle "8a" } s1
    }
  }
  s1*2
  \mark \markup { \circle "8b" } s1*3
  \mark \markup { \circle "9a" } s1*3
  \mark \markup { \circle "9b" } s1*3
  \mark \markup { \circle "10a" } s1*3
  \mark \markup { \circle "10b" } s1*3
  \mark \markup { \circle "11a" } s1*3
  \mark \markup { \circle "11b" } s1*3
}

ChordTrack = \chordmode {
  bes2 bes:7/d
  ees2 e:dim7
  b4/f g:m c:7 f:7
  bes4 b:dim7 f2:7 % 2b
  \repeat volta 2 {
    bes1
    s1
    s1 % 3a
    f1:7
    s1
    s2. g4:m % 3b
    f4:7 g:m gis:dim a:m5
    bes2. f4:7
    bes1 % 4a
    s1
    s1
    ees2 g:m/bes % 4b
    ees2 ges:7/e
    bes2 g:7
    c2:7 f:7 % 5a
    bes1
    g2:m f/g
    g2:m f4/g ees % 5b
    f1
    g1:m
    g1:m % 6a
    s1
    d4:7 g:m d:7 g:m
    d4:7 g:m d2:7 % 6b
    g2:m f4./g g8:m
    s2 d4:7 g:m
    c4:m c:m9 c2:m % 7a
    s2. f4
    fes4:maj7 ees:6 ees ees:maj7
    f2. f4:7/a % 7b
    ees2 g4:m bes4/f
  }
  \alternative {
    { c2:7 f:7 }
    { c2:7 f:7 } % 8a
  }
  bes2 g:7
  c1
  s1 % 8b
  s1
  g2:9 g:7
  s1 % 9a
  s1
  s4 f/a ais:dim7 g:7/b
  c2. g4:7 % 9b
  c1
  s1
  c1:7 % 10a
  f1
  s2 aes:7/fis
  c2/g a:7 % 10b
  d2:7 g:7
  g2:m7 a:7
  d1:7 % 11a
  g1:7
  c1
  f1:7 % 11b
  c1:7
  s1
}

soprano = \relative {
  \global
  R1*4
  \repeat volta 2 {
    R1*3
    r4 a'8.^\mf bes16 c8. bes16 a8. g16 % 3a+
    f2 g
    a2. bes4 % 3b
    c4-. r r2
    R1
    d,8. cis16 d8 f~4 d % 4a
    f8. g16 f8 bes~2
    d8 4. c4 g8 bes~
    bes2. r4 % 4b
    bes8. g16 bes8 des8~8 c4.
    bes8. g16 bes8 a8~8 g4.
    <bes d>8^\markup\italic div. q4. <a d>8 4 bes8^\markup\italic unis. ~ % 5a
    bes2. r4
    R1
    d2 c4 bes % 5b
    a4 f g a
    bes2. r4
    g2 a % 6a
    bes2 f'
    d1^\cresc (
    d1) % 6b
    <d g>2^\f(<c f>)
    r4 d c bes
    c2 4 g4~( % 7a
    g2. a4)
    bes2 g
    f4 r g r % 7b
    bes4 r r2
  }
  \alternative {
    {
      R1
    }
    {
      R1 % 8a
    }
  }
  R1 \bar "||" \key c \major
  e,8.^\mf dis16 e8 g~4 e
  g8. a16 g8 c~2 % 8b
  c8 e~4 c a8 d~
  d2. r4
  b8. c16 dis8. e16 b8. c16 cis8. d16 % 9a
  b8 bes4 a8~4 r
  b4^\< c cis d
  e8^\f ees d c~4 r % 9b
  r4 g2 c,4
  e4. g8~4 e
  g2. 4 % 10a
  f8 a4 c8~4 r
  c8. a16 c8 ees~8 d4.
  c8. a16 c8 b~8 a4. % 10b
  <c e>8^\markup\italic div. q4. <b e>8 <b d>4^\< <bes e>8~(
  q2~ <a e'>4)\! r
  e'2^\ff^\markup\italic unis. e % 11a
  e2 4. <e g>8^\markup\italic div. ~
  q1~(
  <ees g>1~ % 11b
  <e g>1~
  q2.) r4
  \bar "|."
}

nom  = { \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata }

wordsSopOne = \lyricmode {
  Doot doo doot doo doot doo doo doo doo doo doot
  If I'd been out __ till quar -- ter to three __
  would you lock the door __
  Will you still need me, will you still feed me,
  when I'm six -- ty four. __

  Da da da da da da da da.
  You'll be old -- er too. __
  Ah __
  And if you say the word __
  I could stay with you.

  Send me a post -- card drop me a line __
  stat -- ing __ point of view, __
  in -- di -- cate pre -- cise -- ly what you mean to say, __
  yours sin -- cere -- ly wast -- ing a -- way. __
  Da dat da da __ dat da.
  For -- ev -- er -- more. __
  Will you still need __ me,
  Will you still feed __ me
  when I'm six -- ty -- four, __
  When I'm six -- ty -- four. __
  
}

wordsSopTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  do -- ing the gar -- den dig -- ging the weeds __
  Who could ask for more __
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  We shall scrimp and save. __
  Ah __
  Grand -- chil -- dren on your knee __
  Ve -- ra, Chuck and Dave.
}

wordsSop = \lyricmode {
  Doot doo doot doo doot doo doo doo doo doo doot
  If I'd been out __ till quar -- ter to three __
  would you lock the door __
  Will you still need me, will you still feed me,
  when I'm six -- ty four. __

  Da da da da da da da da.
  You'll be old -- er too. __
  Ah __
  And if you say the word __
  I could stay with you.

  Doot doo doot doo doot doo doo doo doo doo doot
  do -- ing the gar -- den dig -- ging the weeds __
  Who could ask for more __
  Will you still need me, will you still feed me,
  when I'm six -- ty four. __

  Da da da da da da da da.
  We shall scrimp and save. __
  Ah __
  Grand -- chil -- dren on your knee __
  Ve -- ra, Chuck and Dave.

  Send me a post -- card drop me a line __
  stat -- ing __ point of view, __
  in -- di -- cate pre -- cise -- ly what you mean to say, __
  yours sin -- cere -- ly wast -- ing a -- way. __
  Da dat da da __ dat da.
  For -- ev -- er -- more. __
  Will you still need __ me,
  Will you still feed __ me
  when I'm six -- ty -- four, __
  When I'm six -- ty -- four. __
}

wordsSopMidi = \lyricmode {
  "Doot " "doo " "doot " "doo " "doot " "doo " "doo " "doo " "doo " "doo " "doot "
  "\nIf " "I'd " "been " "out "  "till " quar "ter " "to " "three " 
  "\nwould " "you " "lock " "the " "door " 
  "\nWill " "you " "still " "need " "me, " "will " "you " "still " "feed " "me, "
  "\nwhen " "I'm " six ty- "four. " 

  "\nDa " "da " "da " "da " "da " "da " "da " "da. "
  "\nYou'll " "be " old "er " "too. " 
  "\nAh " 
  "\nAnd " "if " "you " "say " "the " "word " 
  "\nI " "could " "stay " "with " "you. "

  "\nDoot " "doo " "doot " "doo " "doot " "doo " "doo " "doo " "doo " "doo " "doot "
  "\ndo" "ing " "the " gar "den " dig "ging " "the " "weeds " 
  "\nWho " "could " "ask " "for " "more " 
  "\nWill " "you " "still " "need " "me, " "will " "you " "still " "feed " "me, "
  "\nwhen " "I'm " six ty- "four. " 

  "\nDa " "da " "da " "da " "da " "da " "da " "da. "
  "\nWe " "shall " "scrimp " "and " "save. " 
  "\nAh " 
  "\nGrand" chil "dren " "on " "your " "knee " 
  "\nVe" "ra, " "Chuck " "and " "Dave. "

  "\nSend " "me " "a " post "card " "drop " "me " "a " "line " 
  "\nstat" "ing "  "point " "of " "view, " 
  "\nin" di "cate " pre cise "ly " "what " "you " "mean " "to " "say, " 
  "\nyours " sin cere "ly " wast "ing " a "way. " 
  "\nDa " "dat " "da " "da "  "dat " "da. "
  "\nFor" ev er "more. " 
  "\nWill " "you " "still " "need "  "me, "
  "\nWill " "you " "still " "feed "  "me "
  "\nwhen " "I'm " six ty- "four, " 
  "\nWhen " "I'm " six ty- "four. " 
}

alto = \relative {
  \global
  R1*4
  \repeat volta 2 {
    R1*3
    r4 f'8.^\mf g16 a8. g16 f8. ees16 % 3a+
    f2 ees
    c2. d4 % 3b
    ees4-. r r2
    R1
    d8. cis16 d8 f~4 d % 4a
    f8. g16 f8 bes~2
    aes8 4. 4 g8 8~
    g2. r4 % 4b
    g8. 16 8 ges~8 4.
    f8. 16 8 8~8 4.
    e8 4. ees8 4 d8~ % 5a
    d2. r4
    R1
    bes'2 a4 g % 5b
    f1
    g2. r4
    R1 % 6a
    \slurDashed g4 (a bes g^\cresc)
    \slurSolid a4(bes a bes
    a4 bes a c) % 6b
    bes2^\f (a)
    r4 g fis g
    g2 4 ees~( % 7a
    ees2. f4)
    g2 ees4(d)
    c4 r c r% 7b
    d4 r r2
  }
  \alternative {
    { R1 } % 8a
    { R1 }
  }
  R1 \bar "||" \key c \major
  e8.^\mf dis16 e8 g~4 e
  g8. a16 g8 c~2 % 8b
  c8 g~4 a a8 b~
  b2. r4
  g8. a16 ais8. b16 g8. a16 ais8. b16 % 9a
  g8 4 f8~4 r
  g4^\< a ais b
  g8^\f ges f e~4 r % 9b
  r4 g2 c,4
  e4. g8~4 e
  g2. 4 % 10a
  f8 a4 c8~4 r
  a8. 16 8 aes~8 4.
  g8. 16 8 8~8 4. % 10b
  fis8 4. f8 4^\< 8~(
  f2 g4)\! r
  r4 a8.^\ff b16 c8. b16 a8. aes16 % 11a
  g8. 16 8. a16 b8 4 c8~
  c1~
  c1~ % 11b
  c1~
  c2. r4
  \bar "|."
}

altoSingle = \relative {
  \global
  R1*4
  R1*3
  r4 f'8.^\mf g16 a8. g16 f8. ees16 % 3a+
  f2 ees
  c2. d4 % 3b
  ees4-. r r2
  R1
  d8. cis16 d8 f~4 d % 4a
  f8. g16 f8 bes~2
  aes8 4. 4 g8 8~
  g2. r4 % 4b
  g8. 16 8 ges~8 4.
  f8. 16 8 8~8 4.
  e8 4. ees8 4 d8~ % 5a
  d2. r4
  R1
  bes'2 a4 g % 5b
  f1
  g2. r4
  R1 % 6a
  g4 (a bes g^\cresc
  a4 bes a bes
  a4 bes a c) % 6b
  bes2^\f (a)
  r4 g fis g
  g2 4 ees~( % 7a
  ees2. f4)
  g2 ees4(d)
  c4 r c r% 7b
  d4 r r2
  R1
% second time
  R1*3
  r4 f8.^\mf g16 a8. g16 f8. ees16 % 3a+
  f2 ees
  c2. d4 % 3b
  ees4-. r r2
  R1
  d8. cis16 d8 f~4 d % 4a
  f8. g16 f8 bes~2
  aes8 4. 4 g8 8~
  g2. r4 % 4b
  g8. 16 8 ges~8 4.
  f8. 16 8 8~8 4.
  e8 4. ees8 4 d8~ % 5a
  d2. r4
  R1
  bes'2 a4 g % 5b
  f1
  g2. r4
  R1 % 6a
  g4 a bes g^\cresc
  a4(bes a bes
  a4 bes a c) % 6b
  bes2^\f (a)
  r4 g fis g
  g2 4 ees~( % 7a
  ees2. f4)
  g2 ees4(d)
  c4 r c r % 7b
  d4 r r2
  R1 % 8a
  R1 \bar "||" \key c \major
  e8.^\mf dis16 e8 g~4 e
  g8. a16 g8 c~2 % 8b
  c8 g~4 a a8 b~
  b2. r4
  g8. a16 ais8. b16 g8. a16 ais8. b16 % 9a
  g8 4 f8~4 r
  g4^\< a ais b
  g8^\f ges f e~4 r % 9b
  r4 g2 c,4
  e4. g8~4 e
  g2. 4 % 10a
  f8 a4 c8~4 r
  a8. 16 8 aes~8 4.
  g8. 16 8 8~8 4. % 10b
  fis8 4. f8 4^\< 8~(
  f2 g4)\! r
  r4 a8.^\ff b16 c8. b16 a8. aes16 % 11a
  g8. 16 8. a16 b8 4 c8~
  c1~
  c1~ % 11b
  c1~
  c2. r4
  \bar "|."
}

wordsAltoOne = \lyricmode {
  Doot doo doot doo doot doo doo doo doo doo doot
  If I'd been out __ till quar -- ter to three __
  would you lock the door __
  Will you still need me, will you still feed me,
  when I'm six -- ty four. __
  Da da da da da.
  Ah __ _
  Ah __
  And if you say the word __
  I could stay with you.

  Send me a post -- card drop me a line __
  stat -- ing __ point of view, __
  in -- di -- cate pre -- cise -- ly what you mean to say, __
  yours sin -- cere -- ly wast -- ing a -- way. __
  Da dat da da __ dat da.
  For -- ev -- er -- more. __
  Will you still need __ me,
  Will you still feed __ me
  when I'm six -- ty -- four, __
  Will you need me, will you feed me,
  when I'm six -- ty -- four. __
}

wordsAltoTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  do -- ing the gar -- den dig -- ging the weeds __
  Who could ask for more __
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  \nom We shall scrimp and \yesm save. __
  Ah __
  Grand -- chil -- dren on your knee __
  Ve -- ra, Chuck and Dave.
}

wordsAlto = \lyricmode {
  Doot doo doot doo doot doo doo doo doo doo doot
  If I'd been out __ till quar -- ter to three __
  would you lock the door __
  Will you still need me, will you still feed me,
  when I'm six -- ty four. __
  Da da da da da.
  Ah __
  Ah __
  And if you say the word __
  I could stay with you.

  Doot doo doot doo doot doo doo doo doo doo doot
  do -- ing the gar -- den dig -- ging the weeds __
  Who could ask for more __
  Will you still need me, will you still feed me,
  when I'm six -- ty four. __
  Da da da da da.
  We shall scrimp and save. __
  Ah __
  Grand -- chil -- dren on your knee __
  Ve -- ra, Chuck and Dave.

  Send me a post -- card drop me a line __
  stat -- ing __ point of view, __
  in -- di -- cate pre -- cise -- ly what you mean to say, __
  yours sin -- cere -- ly wast -- ing a -- way. __
  Da dat da da __ dat da.
  For -- ev -- er -- more. __
  Will you still need __ me,
  Will you still feed __ me
  when I'm six -- ty -- four, __
  Will you need me, will you feed me,
  when I'm six -- ty -- four. __
}

wordsAltoMidi = \lyricmode {
  "Doot " "doo " "doot " "doo " "doot " "doo " "doo " "doo " "doo " "doo " "doot "
  "\nIf " "I'd " "been " "out "  "till " quar "ter " "to " "three " 
  "\nwould " "you " "lock " "the " "door " 
  "\nWill " "you " "still " "need " "me, " "will " "you " "still " "feed " "me, "
  "\nwhen " "I'm " six ty- "four. " 
  "\nDa " "da " "da " "da " "da. "
  "\nAh " 
  "\nAh " 
  "\nAnd " "if " "you " "say " "the " "word " 
  "\nI " "could " "stay " "with " "you. "

  "\nDoot " "doo " "doot " "doo " "doot " "doo " "doo " "doo " "doo " "doo " "doot "
  "\ndo" "ing " "the " gar "den " dig "ging " "the " "weeds " 
  "\nWho " "could " "ask " "for " "more " 
  "\nWill " "you " "still " "need " "me, " "will " "you " "still " "feed " "me, "
  "\nwhen " "I'm " six ty- "four. " 
  "\nDa " "da " "da " "da " "da. "
  "\nWe " "shall " "scrimp " "and " "save. " 
  "\nAh " 
  "\nGrand" chil "dren " "on " "your " "knee " 
  "\nVe" "ra, " "Chuck " "and " "Dave. "

  "\nSend " "me " "a " post "card " "drop " "me " "a " "line " 
  "\nstat" "ing "  "point " "of " "view, " 
  "\nin" di "cate " pre cise "ly " "what " "you " "mean " "to " "say, " 
  "\nyours " sin cere "ly " wast "ing " a "way. " 
  "\nDa " "dat " "da " "da "  "dat " "da. "
  "\nFor" ev er "more. " 
  "\nWill " "you " "still " "need "  "me, "
  "\nWill " "you " "still " "feed "  "me "
  "\nwhen " "I'm " six ty- "four, " 
  "\nWill " "you " "need " "me, " "will " "you " "feed " "me, "
  "\nwhen " "I'm " six ty- "four. " 
}

tenor = \relative {
  \global
  R1*4
  \repeat volta 2 {
    d8.^\mf cis16 d8 f~4 d % 2b+
    f8. g16 f8 bes~2
    bes8 d~4 bes g8 c~ % 3a
    c2. r4
    a8. bes16 b8. c16 a8. bes16 b8. c16
    \slurDashed a8(aes4) \slurSolid g8~4 r % 3b
    a4 bes b c
    d8 des c bes~4 r
    bes1( % 4a
    d1
    f1)
    g8 f4 e d bes8~ ( % 4b
    bes1
    \override Glissando.style = #'zigzig d2\glissando b2)
    c8 4. 8 4 bes8~ % 5a
    bes2. r4
    bes8. g16 bes8. g16 bes8. g16 bes8. g16
    bes8. g16 bes8. g16 bes4 ees,8 f~ % 5b
    f4 8. 16 4 g8 d'~
    d2. r4
    g,2 a % 6a
    bes2 f'
    d1^\cresc ~ (
    d2 fis) % 6b
    g2^\f(f)
    r4 d4 4 4
    ees4(d) c c~( % 7a
    c2. 4)
    d4(c) bes2
    a4 r a r % 7b
    bes4 r r2
  }
  \alternative {
    { R1 }
    { R1 } % 8a
  }
  R1 \bar "||" \key c \major
  r4 g2^\mf a4
  c4. a8~4 g % 8b
  c,2 e
  g8 8 r a b8. a16 g4-.
  r4 g2 ges4 % 9a
  f2 g8. a16 b4-.
  d1^\<
  c4-.^\f r r2 % 9b
  e,8. dis16 e8 g~4 a
  \override Glissando.style = #'zigzag
  g8. a16 g8 c~2\glissando
  e8 4. d4 c8 c~ % 10a
  c2\glissando\omit ( a4) r
  c8. a16 c8 ees~8 d4.
  e8. 16 8 8~8 4. % 10b
  d8 4. 8^\< 4 8~(
  d2 cis4) r
  e2^\ff e % 11a
  e2 4. <e g>8^\markup\italic div. ~(
  q1~
  <ees g>1~ % 11b
  <e g>1~
  q2.) r4
  \bar "|."
}

tenorSingle = \relative {
  \global
  R1*4
  d8.^\mf cis16 d8 f~4 d % 2b+
  f8. g16 f8 bes~2
  bes8 d~4 bes g8 c~ % 3a
  c2. r4
  a8. bes16 b8. c16 a8. bes16 b8. c16
  a8 aes4 g8~4 r % 3b
  a4 bes b c
  d8 des c bes~4 r
  bes1( % 4a
  d1
  f1)
  g8 f4 e d bes8~ ( % 4b
  bes1
  \override Glissando.style = #'zigzig d2\glissando b2)
  c8 4. 8 4 bes8~ % 5a
  bes2. r4
  bes8. g16 bes8. g16 bes8. g16 bes8. g16
  bes8. g16 bes8. g16 bes4 ees,8 f~ % 5b
  f4 8. 16 4 g8 d'~
  d2. r4
  g,2 a % 6a
  bes2 f'
  d1^\cresc ~ (
  d2 fis) % 6b
  g2^\f(f)
  r4 d4 4 4
  ees4(d) c c~( % 7a
  c2. 4)
  d4(c) bes2
  a4 r a r % 7b
  bes4 r r2
  { R1 }
% second time
  d,8.^\mf cis16 d8 f~4 d % 2b+
  f8. g16 f8 bes~2
  bes8 d~4 bes g8 c~ % 3a
  c2. r4
  a8. bes16 b8. c16 a8. bes16 b8. c16
  a8(aes4) g8~4 r % 3b
  a4 bes b c
  d8 des c bes~4 r
  bes1( % 4a
  d1
  f1)
  g8 f4 e d bes8~ ( % 4b
  bes1
  \override Glissando.style = #'zigzig d2\glissando b2)
  c8 4. 8 4 bes8~ % 5a
  bes2. r4
  bes8. g16 bes8. g16 bes8. g16 bes8. g16
  bes8. g16 bes8. g16 bes4 ees,8 f~ % 5b
  f4 8. 16 4 g8 d'~
  d2. r4
  g,2 a % 6a
  bes2 f'
  d1^\cresc ~ (
  d2 fis) % 6b
  g2^\f(f)
  r4 d4 4 4
  ees4(d) c c~( % 7a
  c2. 4)
  d4(c) bes2
  a4 r a r % 7b
  bes4 r r2
  { R1 } % 8a
  R1 \bar "||" \key c \major
  r4 g2^\mf a4
  c4. a8~4 g % 8b
  c,2 e
  g8 8 r a b8. a16 g4-.
  r4 g2 ges4 % 9a
  f2 g8. a16 b4-.
  d1^\<
  c4-.^\f r r2 % 9b
  e,8. dis16 e8 g~4 a
  \override Glissando.style = #'zigzag
  g8. a16 g8 c~2\glissando
  e8 4. d4 c8 c~ % 10a
  c2\glissando\omit ( a4) r
  c8. a16 c8 ees~8 d4.
  e8. 16 8 8~8 4. % 10b
  d8 4. 8^\< 4 8~(
  d2 cis4) r
  e2^\ff e % 11a
  e2 4. <e g>8^\markup\italic div. ~(
  q1~
  <ees g>1~ % 11b
  <e g>1~
  q2.) r4
  \bar "|."
}

wordsTenorOne = \lyricmode {
  When I get old -- er los -- ing my hair __
  man -- y __ years from now __
  will you still be send -- ing me a \nom val -- en -- \yesm tine, __
  birth -- day greet -- ings, bot -- tle of wine. __
  Oo __
  Would you lock the door __
  when I'm six -- ty four. __

  Da da da da da da da da da da da da da da da __
  da da da da da. __
  You'll be old -- er too. __
  Ah __
  And if you say the word, __
  I could stay with you.

  Da da da da __ da da da
  da dat da da da dat.
  Da da da da da dat da dat

  Give me your an -- swer fill in  a form __
  Mine for ev -- er -- more __
  Will you still need __ me,
  Will you still feed __ me
  when I'm six -- ty -- four, __
  When I'm six -- ty -- four. __
}

wordsTenorTwo = \lyricmode {
  I could be hand -- y mend -- ing a fuse __
  when your lights have gone., __
  you can knit a sweat -- er by the fire -- side, __
  Sun -- day morn -- ings, go for a ride. __
  _
  Who could ask for more __
  _ _ _ _ _

  Ev -- 'ry sum -- mer we can rent a cot -- tage in the Isle of Wight __
  if it's not too dear. __
  \nom We shall scrimp and \yesm save. __
  Ah __
  Grand -- chil -- dren on your knee __
  Ve -- ra, Chuck and Dave.
}

wordsTenor = \lyricmode {
  When I get old -- er los -- ing my hair __
  man -- y __ years from now __
  will you still be send -- ing me a val -- en -- tine, __
  birth -- day greet -- ings, bot -- tle of wine. __
  Oo __
  Would you lock the door __
  when I'm six -- ty four. __

  Da da da da da da da da da da da da da da da __
  da da da da da. __
  You'll be old -- er too. __
  Ah __
  And if you say the word, __
  I could stay with you.

  I could be hand -- y mend -- ing a fuse __
  when your lights have gone., __
  you can knit a sweat -- er by the fire -- side, __
  Sun -- day morn -- ings, go for a ride. __
  Oo __
  Who could ask for more __
  When I'm six -- ty -- four. __

  Ev -- 'ry sum -- mer we can rent a cot -- tage in the Isle of Wight __
  if it's not too dear. __
  We shall scrimp and save. __
  Ah __
  Grand -- chil -- dren on your knee __
  Ve -- ra, Chuck and Dave.

  Da da da da __ da da da
  da dat da da da dat.
  Da da da da da dat da dat

  Give me your an -- swer fill in  a form __
  Mine for ev -- er -- more __
  Will you still need __ me,
  Will you still feed __ me
  when I'm six -- ty -- four, __
  When I'm six -- ty -- four. __
}

wordsTenorMidi = \lyricmode {
  "When " "I " "get " old "er " los "ing " "my " "hair " 
  "\nman" "y "  "years " "from " "now " 
  "\nwill " "you " "still " "be " send "ing " "me " "a " val en "tine, " 
  "\nbirth" "day " greet "ings, " bot "tle " "of " "wine. " 
  "\nOo " 
  "\nWould " "you " "lock " "the " "door " 
  "\nwhen " "I'm " six ty- "four. " 

  "\nDa " "da " "da " "da " "da " "da " "da " "da " "da " "da " "da " "da " "da " "da " "da " 
  "\nda " "da " "da " "da " "da. " 
  "\nYou'll " "be " old "er " "too. " 
  "\nAh " 
  "\nAnd " "if " "you " "say " "the " "word, " 
  "\nI " "could " "stay " "with " "you. "

  "\nI " "could " "be " hand "y " mend "ing " "a " "fuse " 
  "\nwhen " "your " "lights " "have " "gone., " 
  "\nyou " "can " "knit " "a " sweat "er " "by " "the " fire "side, " 
  "\nSun" "day " morn "ings, " "go " "for " "a " "ride. " 
  "\nOo " 
  "\nWho " "could " "ask " "for " "more " 
  "\nWhen " "I'm " six ty- "four. " 

  "\nEv" "'ry " sum "mer " "we " "can " "rent " "a " cot "tage " "in " "the " "Isle " "of " "Wight " 
  "\nif " "it's " "not " "too " "dear. " 
  "\nWe " "shall " "scrimp " "and " "save. " 
  "\nAh " 
  "\nGrand" chil "dren " "on " "your " "knee " 
  "\nVe" "ra, " "Chuck " "and " "Dave. "

  "\nDa " "da " "da " "da "  "da " "da " "da "
  "\nda " "dat " "da " "da " "da " "dat. "
  "\nDa " "da " "da " "da " "da " "dat " "da " "dat "

  "\nGive " "me " "your " an "swer " "fill " "in "  "a " "form " 
  "\nMine " "for " ev er "more " 
  "\nWill " "you " "still " "need "  "me, "
  "\nWill " "you " "still " "feed "  "me "
  "\nwhen " "I'm " six ty- "four, " 
  "\nWhen " "I'm " six ty- "four. " 
}

bass = \relative {
  \global
  R1*4
  \repeat volta 2 {
    d8.^\mf cis16 d8 f~4 d % 2b+
    f8. g16 f8 bes~2
    bes8 f~4 d g8 a~ % 3a
    a2. r4
    f8. g16 gis8. a16 f8. g16 gis8. a16
    \slurDashed f8(fes4) \slurSolid ees8~4 r % 3b
    f4 g gis a
    bes8 8 a bes~4 r
    bes1~ % 4a
    bes1~
    bes1
    bes8 aes4 g f g8~ ( % 4b
    g2 ges
    f1)
    g8 4. f8 4 8~ % 5a
    f2. r4
    bes8. g16 bes8. g16 bes8. g16 bes8. g16
    bes8. g16 bes8. g16 bes4 ees,8 f~ % 5b
    f4 8. 16 4 g8 d~
    d2. r4
    R1 % 6a
    \slurDashed g4 (a bes g^\cresc)
    fis4( g fis g
    fis4 g fis a) % 6b
    \slurSolid bes2^\f(c)
    r4 bes a g
    c,2 ees4 g~( % 7a
    g2. f4)
    e2 2
    f4 r f r % 7b
    bes,4 r r2
  }
  \alternative {
    { R1 }
    { R1 } % 8a
  }
  R1 \bar "||" \key c \major
  r4 g'2^\mf a4
  c4. a8~4 g % 8b
  c,2 e
  g8 8 r ges f2
  r4 g2 ges4 % 9a
  f2 g8. a16 b4-.
  g1^\<
  c,4-.^\f r r2 % 9b
  e8. dis16 e8 g~4 a4
  g8. a16 g8 c~2
  c8 4. bes4 8 a~ % 10a
  \override Glissando.style = #'zigzag
  a2\glissando\omit ( f4) r
  f8. a16 c8 8~8 4.
  c8. a16 c8 cis~8 4. % 10b
  d8 a4. g8 4^\< 8~(
  g2 a4\!) r
  r4 a8.^\ff b16 c8. b16 a8. aes16 % 11a
  g8. 16 8. a16 b8 g4 c8~
  c1~
  c1~ % 11b
  c1~
  c2. r4
  \bar "|."
}

bassSingle = \relative {
  \global
  R1*4
  d8.^\mf cis16 d8 f~4 d % 2b+
  f8. g16 f8 bes~2
  bes8 f~4 d g8 a~ % 3a
  a2. r4
  f8. g16 gis8. a16 f8. g16 gis8. a16
  f8 fes4 ees8~4 r % 3b
  f4 g gis a
  bes8 8 a bes~4 r
  bes1~ % 4a
  bes1~
  bes1
  bes8 aes4 g f g8~ ( % 4b
  g2 ges
  f1)
  g8 4. f8 4 8~ % 5a
  f2. r4
  bes8. g16 bes8. g16 bes8. g16 bes8. g16
  bes8. g16 bes8. g16 bes4 ees,8 f~ % 5b
  f4 8. 16 4 g8 d~
  d2. r4
  R1 % 6a
  g4 (a bes g^\cresc
  fis4 g fis g
  fis4 g fis a) % 6b
  bes2^\f(c)
  r4 bes a g
  c,2 ees4 g~( % 7a
  g2. f4)
  e2 2
  f4 r f r % 7b
  bes,4 r r2
  { R1 }
% second time
  d8.^\mf cis16 d8 f~4 d % 2b+
  f8. g16 f8 bes~2
  bes8 f~4 d g8 a~ % 3a
  a2. r4
  f8. g16 gis8. a16 f8. g16 gis8. a16
  f8(fes4) ees8~4 r % 3b
  f4 g gis a
  bes8 8 a bes~4 r
  bes1~ % 4a
  bes1~
  bes1
  bes8 aes4 g f g8~ ( % 4b
  g2 ges
  f1)
  g8 4. f8 4 8~ % 5a
  f2. r4
  bes8. g16 bes8. g16 bes8. g16 bes8. g16
  bes8. g16 bes8. g16 bes4 ees,8 f~ % 5b
  f4 8. 16 4 g8 d~
  d2. r4
  R1 % 6a
  g4 a bes g^\cresc
  fis4( g fis g
  fis4 g fis a) % 6b
  bes2^\f(c)
  r4 bes a g
  c,2 ees4 g~( % 7a
  g2. f4)
  e2 2
  f4 r f r % 7b
  bes,4 r r2
  { R1 } % 8a
  R1 \bar "||" \key c \major
  r4 g'2^\mf a4
  c4. a8~4 g % 8b
  c,2 e
  g8 8 r ges f2
  r4 g2 ges4 % 9a
  f2 g8. a16 b4-.
  g1^\<
  c,4-.^\f r r2 % 9b
  e8. dis16 e8 g~4 a4
  g8. a16 g8 c~2
  c8 4. bes4 8 a~ % 10a
  \override Glissando.style = #'zigzag
  a2\glissando\omit ( f4) r
  f8. a16 c8 8~8 4.
  c8. a16 c8 cis~8 4. % 10b
  d8 a4. g8 4^\< 8~(
  g2 a4\!) r
  r4 a8.^\ff b16 c8. b16 a8. aes16 % 11a
  g8. 16 8. a16 b8 g4 c8~
  c1~
  c1~ % 11b
  c1~
  c2. r4
  \bar "|."
}

wordsBassOne = \lyricmode {
  When I get old -- er los -- ing my hair __
  man -- y __ years from now __
  will you still be send -- ing me a \nom val -- en -- \yesm tine, __
  birth -- day greet -- ings, bot -- tle of wine. __
  Oo __
  Would you lock the door __
  when I'm six -- ty four. __

  Da da da da da da da da da da da da da da da __
  da da da da da. __

  Ah __ _ Ah __
  And if you say the word __
  I could stay with you.

  Da da da da __ da da da
  da dat da da.
  Da da da da da dat da dat

  Give me your an -- swer fill in  a form __
  Mine for ev -- er -- more __
  Will you still need __ me,
  Will you still feed __ me
  when I'm six -- ty -- four, __
  Will you need me, will you feed me,
  when I'm six -- ty -- four. __
}

wordsBassTwo = \lyricmode {
  I could be hand -- y mend -- ing a fuse __
  when your lights have gone., __
  you can knit a sweat -- er by the fire -- side, __
  Sun -- day morn -- ings, go for a ride. __
  _
  Who could ask for more __
  _ _ _ _ _

  Ev -- 'ry sum -- mer we can rent a cot -- tage in the Isle of Wight __
  if it's not too dear. __

  \nom We shall scrimp and \yesm save. __
  Ah __
  Grand -- chil -- dren on your knee __
  Ve -- ra, Chuck and Dave.
}

wordsBass = \lyricmode {
  When I get old -- er los -- ing my hair __
  man -- y __ years from now __
  will you still be send -- ing me a val -- en -- tine, __
  birth -- day greet -- ings, bot -- tle of wine. __
  Oo __
  Would you lock the door __
  when I'm six -- ty four. __

  Da da da da da da da da da da da da da da da __
  da da da da da. __

  Ah __ Ah __
  And if you say the word __
  I could stay with you.

  I could be hand -- y mend -- ing a fuse __
  when your lights have gone., __
  you can knit a sweat -- er by the fire -- side, __
  Sun -- day morn -- ings, go for a ride. __
  Oo
  Who could ask for more __
  When I'm six -- ty -- four. __

  Ev -- 'ry sum -- mer we can rent a cot -- tage in the Isle of Wight __
  if it's not too dear. __

  We shall scrimp and save. __
  Ah __
  Grand -- chil -- dren on your knee __
  Ve -- ra, Chuck and Dave.

  Da da da da __ da da da
  da dat da da.
  Da da da da da dat da dat

  Give me your an -- swer fill in  a form __
  Mine for ev -- er -- more __
  Will you still need __ me,
  Will you still feed __ me
  when I'm six -- ty -- four, __
  Will you need me, will you feed me,
  when I'm six -- ty -- four. __
}

wordsBassMidi = \lyricmode {
  "When " "I " "get " old "er " los "ing " "my " "hair " 
  "\nman" "y "  "years " "from " "now " 
  "\nwill " "you " "still " "be " send "ing " "me " "a " val en "tine, " 
  "\nbirth" "day " greet "ings, " bot "tle " "of " "wine. " 
  "\nOo " 
  "\nWould " "you " "lock " "the " "door " 
  "\nwhen " "I'm " six ty-y "four. " 

  "\nDa " "da " "da " "da " "da " "da " "da " "da " "da " "da " "da " "da " "da " "da " "da " 
  "\nda " "da " "da " "da " "da. " 

  "\nAh "  "Ah " 
  "\nAnd " "if " "you " "say " "the " "word " 
  "\nI " "could " "stay " "with " "you. "

  "\nI " "could " "be " hand "y " mend "ing " "a " "fuse " 
  "\nwhen " "your " "lights " "have " "gone., " 
  "\nyou " "can " "knit " "a " sweat "er " "by " "the " fire "side, " 
  "\nSun" "day " morn "ings, " "go " "for " "a " "ride. " 
  "\nOo "
  "\nWho " "could " "ask " "for " "more " 
  "\nWhen " "I'm " six ty- "four. " 

  "\nEv" "'ry " sum "mer " "we " "can " "rent " "a " cot "tage " "in " "the " "Isle " "of " "Wight " 
  "\nif " "it's " "not " "too " "dear. " 

  "\nWe " "shall " "scrimp " "and " "save. " 
  "\nAh " 
  "\nGrand" chil "dren " "on " "your " "knee " 
  "\nVe" "ra, " "Chuck " "and " "Dave. "

  "\nDa " "da " "da " "da "  "da " "da " "da "
  "\nda " "dat " "da " "da. "
  "\nDa " "da " "da " "da " "da " "dat " "da " "dat "

  "\nGive " "me " "your " an "swer " "fill " "in "  "a " "form " 
  "\nMine " "for " ev er "more " 
  "\nWill " "you " "still " "need "  "me, "
  "\nWill " "you " "still " "feed "  "me "
  "\nwhen " "I'm " six ty- "four, " 
  "\nWill " "you " "need " "me, " "will " "you " "feed " "me, "
  "\nwhen " "I'm " six ty- "four. " 
}

pianoRH = \relative {
  \global
%  \voiceOne
  \tempo "With verve and a sense of humour" 2=70
  << {\voiceOne <f bes d>8. cis'16 d8 f8~2} \new Voice {\voiceTwo s2 r4 <aes, bes>} >>
  << {\voiceOne <bes ees g>8. fis'16 g8 bes~2} \new Voice {\voiceTwo s2 r4 <des, g>} >> \oneVoice
  <d d'>8. c'16 bes8. g16 <e bes'>8 c'~<ees, a c>4
  <d bes'>8 aes' r <a, ees' f>8~2 % 2b
  \repeat volta 2 {
    r4 <bes d f> r8. <d bes'>16 g8. f16
    r4 <bes, d f> r8. <d bes'>16 g8. f16
    r4 <d f>8. bes16 q8. bes16 q4-. % 3a
    r4 <a ees' f> r q
    r8. q16 r8. q16 r8. q16 r8. q16
    r4 q r <bes d g> % 3b
    <c ees a>4 d8. bes'16 d,8. b'16 ees,8. c'16
    <f, bes d>4 r r2
    r4 <bes, d f> r8. <d bes'>16 g8. f16 % 4a
    r4 <bes, d f> r8. <d bes'>16 g8. f16
    r4 <d f>8. bes16 q8. bes16 q4--
    << {\voiceOne r4 <ees g> r <d g>} \new Voice {\voiceTwo bes1} >> \oneVoice % 4b
    r4 <bes ees g> r <bes fes' ges>
    r4 <bes d f> r <b f' g>
    r8. bes16 <e g>8. bes16 << {\voiceOne a'2} \new Voice {\voiceTwo r4 <c, ees>} >> \oneVoice  % 5a
    <d f bes>8 c' r <f, bes d>~8. f16 <d' f>8. f,16
    <g bes d>4-. q-. <f a c>-. q-.
    <g bes d>4-. q-. <f a c>-. <ees g bes>-. % 5b
    <f a c>4-. q-. <g a c>-. <f a c>-.
    <g bes d>8 c4 q8~8 f r4
    g,8 bes, d g a d, g a % 6a
    bes d, a' d, bes' d, g d
    <fis a> c <g' bes> d <f a> c bes' a
    <a c> fis <bes d> g <a c> fis <a c d> fis % 6b
    r4 <g bes d> <f a c f>8 q4 <g bes d g>8~
    q4 <bes d>8. d,16 <a' c>8. d,16 <g bes>8. d16
    \tuplet 3/2 {c'8 g ees} d4 <c ees g>2 % 7a
    \tuplet 3/2 {c'8 g f} ees4 << {\voiceOne <ees g> <f a>} \new Voice {\voiceTwo c2} >> \oneVoice
    <g' bes>8. d16 q4 q8. d16 q4
    <f a>4 \tuplet 3/2 {g8 c, g'} <a, f'>4 ees' % 7b
    <bes d>4 \tuplet 3/2 {<d f>8 g a} <d, bes'>4 \tuplet 3/2 {<bes' d>8 f q}
  }
  \alternative {
    { r8 <e bes' c> d' <ees, a c>~2 }
    { r8 <e bes' c> d' <ees, a c>~2 } % 8a
  }
  \oneVoice <f bes d>8 f' r <b, f' g>~2 \bar "||" \key c \major
  r4 <c, e g> r q
  r4 q r q % 8b
  r4 <g c e>2 <c e g>4
  << {\voiceOne b'1} \new Voice {\voiceTwo r4 <e, a> r <f g>} >> \oneVoice
  r4 <b, f' g>4 r q % 9a
  r4 <b d f> r <b f' g>8. a'16
  b8. <f g>16 c'8. <f, a>16 c'8. <g ais>16 d'8. <f, g>16
  c'4-. r r2 % 9b
  r4 <c, e g> r q
  r4 q r q
  r4 <e g>8. bes16 q8. bes16 q8. bes16 % 10a
  <f' a>8. c16 q8. c16 q8. c16 q4
  r8 <c f a>4. <c aes' c>4 q
  r8 <g' c e>4. <g cis e>4 q % 10b
  r4 <c, fis a> r <d f b>
  <bes' d>8. f16 q4 <g cis e> <cis, g' a>
  r8 <c fis a>4. <f a c>4 <f c' e> % 11a
  r8 <b, f' g>4. <f' g b>4 <f b e>
  r4 <g c e>8. d'16 q2
  r4 <c ees a>8. gis'16 <c, e a>4 <c f c'> % 11b
  r8. <e e'>16-> <d d'>4-> <c c'>8-> <a a'>4.->
  <g c e g>8-> <a a'>4-> <c e g c>8-> r2
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
%  s2 \once\partCombineApart r4 <aes bes> % breaks tie in other part
  s2 r4 <aes bes>
%  s2 \once\partCombineApart r4 <des g>   % "
  s2 r4 <des g>
  s1
  s1 % 2b
  \repeat volta 2 {
    s1*11
    bes1 % 4b
    R1
    R1
    s2 \once\partCombineApart r4 <c ees> % 5a
    s1*11
    s1 % 7a
    s2 c2
    s1*3
  }
  \alternative {{s1}{s1}}
  s1 \bar "||" \key c \major
  s1*3
  r4 <e a> r <f g> % 8b++
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f
  s1
  s1
  s2 s\> % 2b
  \repeat volta 2 {
    s1\mf
    s1
    s1*19
    s2. s8 s\cresc % 6a+
    s1
    s1 % 6b
    s1\f
    s1*6
  }
  \alternative {{s8 s\> s2.}{s1\!}}
  s2 s\> % 8a+
  s1\mf
  s1*13 % 8b
  s2 s\< % 10b+
  s1
  s1\ff % 11a
  s1*5
}

pianoLH = \relative {
  \global
  bes,,4 r d r
  ees4 r e r
  f4 g c f,
  bes4 b c8. f,16 g8. a16 % 2b
  \repeat volta 2 {
    bes4 r f r
    bes,4 r f' r
    bes4 r bes, r % 3a
    f'4 r c r
    f4 ees c ees
    f4 r c r % 3b
    f4 g gis a
    bes4 r r8. f16 ees8. c16
    bes4 r f' r % 4a
    bes,4 r f' r
    bes4 r bes, r
    ees4 r bes r % 4b
    ees4 r e4.. 16
    4 r g4.. d16
    c4 r f r % 5a
    bes4 a g f
    g4.. d'16 g,4.. d'16
    g,4.. d'16 g,8. f16 ees4 % 5b
    f4.. c'16 f,4.. 16
    g4 4 4 4
    g4 d'2 4 % 6a
    g,4 d'2 4
    d4 d,2 d'4
    d4 d, d d % 6b
    g4. 8 4 4
    g4 r d r
    c4 4 4 8. g'16 % 7a
    c,4 4 4 f
    ees4 8. bes'16 ees,4 8. bes'16
    f4 4 4 a % 7b
    bes4 a g f
  }
  \alternative {
    { g4 4 f8. g16 a4 }
    { g4 4 f8. g16 a4 } % 8a
  }
  bes4 aes g8. a16 b4 \bar "||" \key c \major
  c4 r g r
  c,4 r g' r % 8b
  c,4 r g' r
  g4 r d r
  g4 r d r % 9a
  g4 r d r
  g4 a ais b
  c4-. r r8. g16 f8. d16 % 9b
  c4 r g' r
  c,4 r g' r
  c,4 r c r % 10a
  f4 r c c
  f4 4 fis fis
  g4 g a a % 10b
  d,4 r g r
  g4 g a e8. ees16
  d4 4 4 4 % 11a
  g4 4 4 4
  c4 r bes8. a16 aes8. g16
  f4 e f8. g16 a4 % 11b
  <c, c'>4-> <d d'>-> <e e'>-> <f f'>->
  <g g'>4-> <e e'>-> <c c'>-> q-.-^
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
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
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      <<
        \new ChordNames = guitar \with {
          alignAboveContext = lh
        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
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
  \paper {
    output-suffix = single
  }
  \score {
   \unfoldRepeats
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
            \new Voice \altoSingle
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      <<
        \new ChordNames = guitar \with {
          alignAboveContext = lh
        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
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
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
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
            \new Voice \altoSingle
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
            \new Voice \tenorSingle
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
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
%      <<
%        \new ChordNames = guitar \with {
%          alignAboveContext = lh
%        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
%      >>
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
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
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
            \new Voice \altoSingle
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
            \new Voice \tenorSingle
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
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
%      <<
%        \new ChordNames = guitar \with {
%          alignAboveContext = lh
%        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
%      >>
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
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
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
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
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
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
%      <<
%        \new ChordNames = guitar \with {
%          alignAboveContext = lh
%        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
%      >>
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
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
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
            \new Voice \altoSingle
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
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
%      <<
%        \new ChordNames = guitar \with {
%          alignAboveContext = lh
%        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
%      >>
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
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
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
            \new Voice \altoSingle
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      <<
        \new ChordNames = guitar \with {
          alignAboveContext = lh
        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
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
  \paper {
    output-suffix = midi-sop
  }
  \score {
   \unfoldRepeats
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
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Staff = piano
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
%      <<
%        \new ChordNames = guitar \with {
%          alignAboveContext = lh
%        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
%      >>
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
   \unfoldRepeats
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Staff = piano
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
%      <<
%        \new ChordNames = guitar \with {
%          alignAboveContext = lh
%        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
%      >>
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
    output-suffix = midi-tenor
  }
  \score {
   \unfoldRepeats
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Staff = piano
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
%      <<
%        \new ChordNames = guitar \with {
%          alignAboveContext = lh
%        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
%      >>
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
    output-suffix = midi-bass
  }
  \score {
   \unfoldRepeats
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Staff = piano
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
%      <<
%        \new ChordNames = guitar \with {
%          alignAboveContext = lh
%        } \ChordTrack
%        \new FretBoards \with { alignAboveContext = lh } \ChordTrack
%      >>
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
