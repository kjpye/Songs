\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Riversong"
  subtitle    = "A Celtic Celebration"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Roger Emerson"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Roger Emerson"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
  s4
}

RehearsalTrack = {
  \set Score.currentBarNumber = #25
  s4
  \mark \markup { \circle "3c" } s1*5
  \mark \markup { \circle "3d" } s1*3
  \mark \markup { \circle "4a" } s1*3
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \circle "4c" } s1*2
  \repeat volta 2 {
    \set Score.currentBarNumber = #41
    s1*2
    \mark \markup { \circle "5a" } s1*5
    \mark \markup { \circle "5b" } s1*5
  }
  \alternative {
    {
      \mark \markup { \circle "5c" } s1*4
    }
    {
      \set Score.currentBarNumber = #57
      \mark \markup { \circle "6a" } s1
    }
  }
  s1*3
  \mark \markup { \circle "6b" } s1*4
  \mark \markup { \circle "6c" } s1*3
  \mark \markup { \circle "7a" } s1*4
  \mark \markup { \circle "7b" } s1*4
  \mark \markup { \circle "7c" } s1*6
  \mark \markup { \circle "8a" } s1*5
  \mark \markup { \circle "8b" } s1*3
  \mark \markup { \circle "8c" } s1*3
  \mark \markup { \circle "9a" } s1*4
  \mark \markup { \circle "9b" } s1*3
  \mark \markup { \circle "9c" } s1*4
  \mark \markup { \circle "10a" } s1*4
  \mark \markup { \circle "10b" } s1*3
  \mark \markup { \circle "10c" } s1*4
  \mark \markup { \circle "11a" } s1*3 \time 3/4
  \mark \markup { \circle "11b" } s2.*4
  \mark \markup { \circle "11c" } s2.*3
}

ChordTrack = \chordmode {
  s4
  s1*16
  \repeat volta 2 {
    g1 % 4c++
    g:6.9
    e1:m11 % 5a
    s1
    f1
    f:6.9
    d:m11
    s1 % 5b
    g2 g:6.9/b
    e2:m7 d
    g2:9 d/fis
    c2:9/e b:m11
  }
  \alternative {
    {
      c1:9 % 5c
      s1
      s1
      s1
    }
    {
      c1:9 % 6a
    }
  }
  s1
  s1
  s1
  c2 d % 6b
  g2 g/b
  c2 d
  e1:m
  s1 % 6c
  a2:m7 g/c
  d2 g
  s1 % 7a
  c2 d
  g2 g/b
  c2 d
  e1:m % 7b
  s1
  a2:m7 g/c
  d2 g
  s1 % 7c
  r1
  s1
  c1:9/e
  d1
  g1:9/b
  g1:maj9/b % 8a
  c1:9/e
  s1
  s1
  s1
  g1:5 % 8b
  s1
  s1
  s1 % 8c
  s1
  s1
  f1:5 % 9a
  s1
  g1:5
  s1
  s1 % 9b
  s1
  c2:9/e d:9/fis
  g4 g/b c2 % 9c
  s1
  s1
  s1
  g1 % 10a
  c2 d
  g2 g/b
  c2 d
  e1:m % 10b
  s1
  a2:m7 g/c
  d2 g % 10c
  s1
  c2 d
  g2 g/b
  c2 d % 11a
  e1:m
  s1
  a2:m7 g4/c % 11b
  d2 g4/b
  a2:m7 g4/c
  d2 e4:m
  a4.:m7 g/b % 11c
  c4. d
  g2.
}

partI = \relative {
  \global
  r4
  R1*5
  r2 r4 d'8^\mf e % 3c
  f4 a g e
  f8 e d c d4 d8 e
  f4 a g c % 4a
  b2 4 d,8 e
  f4 a g e
  f8 e d c d4 d8 e % 4b
  f4 e8 d c4 e
  a2 a~
  a1 % 4c
  R1 \key g \major \break
  \repeat volta 2 {
    b1
    d1
    b1 % 5a
    d1
    a1
    c1
    a1
    c1 % 5b
    b2 d
    g2 fis
    b,2 d
    g,2 fis \break
  }
  \alternative {
    {
      e1~ % 5c
      e1~
      e1~
      e1 \break
    }
    {
      e2^\cresc(fis % 6a
    }
  }
  <e g>2^\markup div. <fis a>
  << { b2 c } \new Voice g1 >>
  <a d>2 <c e>) \break
  e2^\f d % 6b
  b2 r4 a8 g
  e'4 8 8 d4 8 8
  b8 a g4 2~
  g2 r4 g8 g % 6c
  c4 8 8 b4 8 8
  a8 g fis4 g2~
  g2 b4 d % 7a
  e2 d
  b2 r4 a8 g
  e'4 8 8 d4 d
  b4 a8 g g2~ % 7b
  g2 r4 g8 g
  c4 8 8 b4 4
  a8 g fis4 g2~
  g1 % 7c
  R1*10
  b4.^\mp c8~4 d % 8b
  d4. c8~4 b
  a4. c8~4 b~
  b1 % 8c
  b4. c8~4 d
  d4. c8~4 b
  a1 ~ % 9a
  a1
  b4. c8~4 d
  d4. c8~4 b
  a4. c8~4 b~ % 9b
  b2 r4 g8^\cresc fis
  g4 a8 b a2
  b4 d e2(~ % 9c
  <e g>4^\markup div. <d fis>2 <c e>4~
  q4 <g d'>2 <c e>4)
  g4 a8 b a4 g8 fis
  g2 b4 d % 10a
  e2^\f d
  b2 r4 a8 g
  e'4 8 8 d4 8 8
  b8 a g4 2~ % 10b
  g2 r4 8 8
  c4 8 8 b4 8 8
  a8 g fis4 g2~ % 10c
  g2 b4 d
  e2 d
  b2 r4 a8 g
  e'4 8 8 d4 d % 11a
  b4 a8 g g2~
  g2 r \time 3/4
  c4 8 8 b4 % 11b
  a4 8 8 g4
  c4 8 8 b4
  a4 8 8 <g b>4^\markup div.
  <g c>4._>^\cresc <g d'>8^>~q4 % 11c
  <c e>4.^> <d fis>8^>~q4
  <d g>4^> g,^^ \omit\ff r
  \bar "|."
}

dynamicsI = {
  \override DynamicTextSpanner.style = #'none
}

verseOne = \lyricmode {
  Shule a -- roon a -- way to wa -- ters by the sea;
  It's a churn -- ing, yearn -- ing riv -- er!
  You can cast your bur -- dens there up -- on the glass;
  Just a skip of a pol -- ished peb -- ble. __

  Dream -- ers, lov -- ers, lis -- ten, sweet -- ly:
  Let the wa -- ters wash a -- way your tears.
  _

  Sing and dance!
  Do a reel to the tune of a bab -- bl -- ing tale. __
  Do you heal to the tune of a bab -- bl -- ing tale? __
  Let your heart be glad.
  Let the song of the riv -- er take you a -- way! __
  Let the song of the riv -- er take you a -- way! __

  Don't let __ the sun set __ on hearts of __ stone. __
  Turn to __ the riv -- er __ of life. __
  Wis -- dom __ of na -- ture __ is true to God. __
  Be it riv -- er or tree __ sets you free! __
  Go with a heart full of grace.
  Come now, sing and dance!
  
  Do a reel to the tune of a bab -- bl -- ing tale. __
  Do you heal to the tune of a bab -- bl -- ing tale? __
  Let your heart be glad.
  Let the song of the riv -- er take you a -- way! __

  Dance to the tune; sing to the moon;
  aye, shule a -- roon; oh, shule a -- roon.
  Let the __ riv -- er __ take you!
}

verseTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  Po -- ets, seek -- ers, lis -- ten, keen -- ly:
  Won -- der not, your course is set by _ God! __
}

wordsSingle = \lyricmode {
  Shule a -- roon a -- way to wa -- ters by the sea;
  It's a churn -- ing, yearn -- ing riv -- er!
  You can cast your bur -- dens there up -- on the glass;
  Just a skip of a pol -- ished peb -- ble. __

  Dream -- ers, lov -- ers, lis -- ten, sweet -- ly:
  Let the wa -- ters wash a -- way your tears.

  Po -- ets, seek -- ers, lis -- ten, keen -- ly:
  Won -- der not, your course is set by God! __

  Sing and dance!
  Do a reel to the tune of a bab -- bl -- ing tale. __
  Do you heal to the tune of a bab -- bl -- ing tale? __
  Let your heart be glad.
  Let the song of the riv -- er take you a -- way! __
  Let the song of the riv -- er take you a -- way! __

  Don't let __ the sun set __ on hearts of __ stone. __
  Turn to __ the riv -- er __ of life. __
  Wis -- dom __ of na -- ture __ is true to God. __
  Be it riv -- er or tree __ sets you free! __
  Go with a heart full of grace.
  Come now, sing and dance!
  
  Do a reel to the tune of a bab -- bl -- ing tale. __
  Do you heal to the tune of a bab -- bl -- ing tale? __
  Let your heart be glad.
  Let the song of the riv -- er take you a -- way! __

  Dance to the tune; sing to the moon;
  aye, shule a -- roon; oh, shule a -- roon.
  Let the __ riv -- er __ take you!
}

wordsMidi = \lyricmode {
  "Shule " a "roon " a "way " "to " wa "ters " "by " "the " "sea; "
  "\nIt's " "a " churn "ing, " yearn "ing " riv "er! "
  "\nYou " "can " "cast " "your " bur "dens " "there " up "on " "the " "glass; "
  "\nJust " "a " "skip " "of " "a " pol "ished " peb "ble. " 

  "\nDream" "ers, " lov "ers, " lis "ten, " sweet "ly: "
  "\nLet " "the " wa "ters " "wash " a "way " "your " "tears. "

  "\nPo" "ets, " seek "ers, " lis "ten, " keen "ly: "
  "\nWon" "der " "not, " "your " "course " "is " "set " "by " "God! " 

  "\nSing " "and " "dance! "
  "\nDo " "a " "reel " "to " "the " "tune " "of " "a " bab bl "ing " "tale. " 
  "\nDo " "you " "heal " "to " "the " "tune " "of " "a " bab bl "ing " "tale? " 
  "\nLet " "your " "heart " "be " "glad. "
  "\nLet " "the " "song " "of " "the " riv "er " "take " "you " a "way! " 
  "\nLet " "the " "song " "of " "the " riv "er " "take " "you " a "way! " 

  "\nDon't " "let "  "the " "sun " "set "  "on " "hearts " "of "  "stone. " 
  "\nTurn " "to "  "the " riv "er "  "of " "life. " 
  "\nWis" "dom "  "of " na "ture "  "is " "true " "to " "God. " 
  "\nBe " "it " riv "er " "or " "tree "  "sets " "you " "free! " 
  "\nGo " "with " "a " "heart " "full " "of " "grace. "
  "\nCome " "now, " "sing " "and " "dance! "
  
  "\nDo " "a " "reel " "to " "the " "tune " "of " "a " bab bl "ing " "tale. " 
  "\nDo " "you " "heal " "to " "the " "tune " "of " "a " bab bl "ing " "tale? " 
  "\nLet " "your " "heart " "be " "glad. "
  "\nLet " "the " "song " "of " "the " riv "er " "take " "you " a "way! " 

  "\nDance " "to " "the " "tune; " "sing " "to " "the " "moon; "
  "\naye, " "shule " a "roon; " "oh, " "shule " a "roon. "
  "\nLet " "the "  riv "er "  "take " "you! "
}

partII = \relative {
  \global
  r4
  R1*5
  r2 r4 d'8^\mf e % 3c
  f4 a g e
  f8 e d c d4 d8 e
  f4 a g c % 4a
  g2 4 d8 e
  f4 a g e
  f8 e d c d4 8 e % 4b
  f4 e8 d c4 e
  d2 d~
  d1 % 4c
  R1 \key g \major
  \repeat volta 2 {
    g1
    a1
    g1 % 5a
    a1
    f1
    g1
    f1
    g1 % 5b
    g2 a
    b2 a
    g2 a
    d,2 d
  }
  \alternative {
    {
      d1( % 5c
      c1
      d1
      c1)
    }
    {
      d1~(^\cresc % 6a
    }
  }
  d1~
  d2 e fis2 g)
  g2^\f fis % 6b
  g2 r4 a8 g
  g4 8 8 fis4 8 8
  g8 fis e4 2~
  e2 r4 e8 8 % 6c
  e4 8 8 d4 8 8
  d8 e d4 b2~
  b2 d4 g % 7a
  g2 fis
  g2 r4 a8 g
  g4 8 8 fis4 4
  g4 fis8 e e2~ % 7b
  e2 r4 e8 8
  e4 8 8 d4 4
  d8 e d4 b2~
  b1 % 7c
  R1*10
  \partCombine
  \relative {
    g'4.^\mp 8~4 4 % 8b
    g4. 8~4 4
    fis4. g8~4 4~
    g1 % 8c
    g4. 8~4 4
    g4. 8~4 4
    g1( % 9a
    g1)
    g4. 8~4 4
    g4. 8~4 4
    fis4. g8~4 4~ % 9b
    g2
  }
  \relative {
    \tweak #'font-size #-2    d'4.^\mp
    \tweak #'font-size #-2    e8~
    \tweak #'font-size #-2    4
    \tweak #'font-size #-2    fis
    \tweak #'font-size #-2    fis4.
    \tweak #'font-size #-2    e8~
    \tweak #'font-size #-2    4
    \tweak #'font-size #-2    d
    \tweak #'font-size #-2    d4.
    \tweak #'font-size #-2    e8~
    \tweak #'font-size #-2    4
    \tweak #'font-size #-2    d~
    \tweak #'font-size #-2    d1 % 8c
    \tweak #'font-size #-2    d4.
    \tweak #'font-size #-2    e8~
    \tweak #'font-size #-2    4
    \tweak #'font-size #-2    fis
    \tweak #'font-size #-2    fis4.
    \tweak #'font-size #-2    e8~
    \tweak #'font-size #-2    4
    \tweak #'font-size #-2    d
    \tweak #'font-size #-2    c1~ % 9a
    \tweak #'font-size #-2    c1
    \tweak #'font-size #-2    d4.
    \tweak #'font-size #-2    e8~
    \tweak #'font-size #-2    4
    \tweak #'font-size #-2    fis
    \tweak #'font-size #-2    fis4.
    \tweak #'font-size #-2    e8~
    \tweak #'font-size #-2    4
    \tweak #'font-size #-2    d
    \tweak #'font-size #-2    d4. % 9b
    \tweak #'font-size #-2    e8~
    \tweak #'font-size #-2    4
    \tweak #'font-size #-2    d~
    \tweak #'font-size #-2    d2
  }
  r4 g'8^\cresc fis 
  d4 c8 c e4(d) % 9b++
  g4 g g2~ % 9c
  g1
  g1
  c,4 8 8 d4 8 8
  b2 d4 g % 10a
  g2^\f fis
  g2 r4 a8 g
  g4 8 8 fis4 8 8
  g8 fis e4 2~ % 10b
  e2 r4 e8 e
  e4 8 8 d4 8 8
  d8 e d4 b2~ % 10c
  b2 d4 g
  g2 fis
  g2 r4 a8 g
  g4 8 8 fis4 fis % 11a
  g4 fis8 e e2~
  e2 r \time 3/4
  e4 8 8 d4 % 11b
  fis4 8 8 d4
  e4 8 8 d4
  fis4 8 8 e4
  e4._>^\cresc d8_>~4 % 11c
  g4._> a8_>~4
  b4 g^^\omit\ff r
  \bar "|."
}

dynamicsII = {
  \override DynamicTextSpanner.style = #'none
}

pianoRHone = \relative {
  \global
  \voiceOne
  d''8\omit\mf e
  f4 a g e % 3c
  f8 e d c d4 d8 e
  f4 e8 d c4 e
  <a, d>2 q
  q1~
  q2. d8 e % 3d
  f4 a g e
  f8 e d c d4 8 e
  f4 a g c % 4a
  <g b>2 q4 d8 e
  f4 a g e
  f8 e d c d4 d8 e % 4b
  f4 e8 d c4 e
  <a, d>2 q~
  q1 % 4c
  c8 b a g fis e d a' \key g \major
  \repeat volta 2 {
    <d, g a b>1
    <e a b d>1
    <d g a b>1 % 5a
    <e a b d>1
    <c f g a>1
    <d g a b>1
    <c f g a>1
    <d g a c>1 % 5b
    <d g b>2 <e a d>
    <g d' g>2 <a d e>
    <a b>2 <a d>
    <c, d g>2 <g d' fis>
  }
  \alternative {
    {
      g'4 fis g d'\omit\cresc % 5c
      g,4 fis g e'
      g,4 fis g fis'
      g,4 fis g g'\omit\f
    }
    {
      e,4 d8 e fis4 e8 fis\omit\cresc % 6a
    }
  }
  g4 fis8 g a4 g8 a
  b4 a8 b c4 b8 c
  d4 c8 d <g, c e>2
  <g c e>2\omit\f <fis a d> % 6b
  <d g b>4 g8 d' a d g, fis
  <g c e>2 <fis a d>
  <e g b>4 fis8 g e g d g
  <e g b>4 e8 b' e b g b % 6c
  <e, g c>2 <d g b>
  <d fis a>2 <b d g>
  a'8 d g, fis g a b d % 7a
  <g, c e>2 <fis a d>
  <d g b>4 g8 d' a d g, fis
  <g c e>2 <fis a d>
  <e g b>4 fis8 g e g d g % 7b
  <e g b>4 e8 b' e b g b
  <e, g c>2 <d g b>
  <d fis a>2 <b d g>
  a'8 d g, fis g a b d % 7c
  <d g d'>1
  q1
  <e, g c d g>1\omit\decresc
  <d a' d fis>1
  <b g' a d>1
  <a d fis>1 % 8a
  g'4 fis g d'
  g,4 fis g e'
  g,4 fis g fis'
  g,4 fis g g'
  g8\omit\mp d g, d' g d g, d' % 8b
  g8 d g, d' g d g, d'
  g8 d g, d' g d g, d'
  g8 d g, d' g d g, d' % 8c
  g8 d g, d' g d g, d'
  g8 d g, d' g d g, d'
  f8 c f, c' f c f, c' % 9a
  f8 c f, c' f c f, c'
  g'8 d g, d' g d g, d'
  g8 d g, d' g d g, d'
  g8 d g, d' g d g, d' % 9b
  g8 d g, d' g d g,\omit\cresc d'
  <d, g>2 <e a>
  <g b>4 <g d'> <g e'>2 % 9c
  <e' g>4 <d fis> q <c e>
  q4 <g d'> q <c e>
  <d, g>2 <e a>
  <d g>2 <g b>4 <g d'> % 10a
  <g c e>2\omit\f <fis a d>
  <d g b>4 g8 d' a d g, fis
  <g c e>2 <fis a d>
  <e g b>4 fis8 g e g d g % 10b
  q4 e8 b' e b g b
  <e, g c>2 <d g b>
  <d fis a>2 <b d g> % 10c
  a'8 d g, fis g a b d
  <g, c e>2 <fis a d>
  <d g b>4 g8 d' a d g, fis
  <g c e>2 <fis a d> % 11a
  <e g b>4 fis8 g e g d g
  q4 e8 b' e b g b \time 3/4
  <e, g c>2 <d g b>4 % 11b
  <d fis a>2 <d g>4
  <e g c>2 <d g b>4
  <d fis a>2 <d g>4
  <e g c>4._>\omit\cresc <d g d'>8_>~4 % 11c
  <g c e>4.^> <a d fis>8^>~4
  <b d g>4^> r r\omit\ff
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s4
  s1*16 \key g \major
  \repeat volta 2 { s1*12 }
  \alternative {
    {
      <d' e>1~\omit\mf\omit\cresc % 5c
      q1~
      q1~
      q1\omit\f
    }
    {
      d2 d\omit\mf\omit\cresc % 6a
    }
  }
  <d e>2 <d fis>
  <d g>2 <e a>
  <fis a>2 s\omit\f
  s1*57 \time 3/4
  s2.*7
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*16
  \repeat volta 2 {
    s1*12
  }
  \alternative {
    {
      s1\cresc
      s1*3
    }
    {
      s1\cresc
    }
  }
  s1*3
  s1\f % 6b
  s1*17
  s1\decresc % 79
  s1*7
  s1\mp % 87
  s1*10
  s2. s4\cresc % 98
  s1*6
  s1\f % 105
  s1*12 \time 3/4
  s2.*4
  s2.\cresc % 11c
  s2.
  s2 s4\omit\ff
}

pianoLH = \relative {
  \global
  r4\omit\mf
  d,4. d8~4 4~ % 3c
  d4 4 2
  d4. 8~4 4~
  d4 4 2
  d4. 8~4 4~
  d4 4 2 % 3d
  d4. 8~4 4~
  d4 d d2
  d4. 8~4 4~ % 4a
  d4 4 2
  d4. 8~4 4~
  d4 4 2
  d4. 8~4 4~
  d4 4 2
  d4. 8~4 4~ % 4b
  d4 4 2 \key g \major
  \repeat volta 2 {
    g2. d4
    g1
    e2. b4 % 5a
    e1
    f2. a4
    f1
    d2. fis4
    d2 d % 5b
    g2 b
    e2 d
    g,2 fis
    e2 b'
  }
  \alternative {
    {
      <c g'>2. q4\omit\cresc % 5c
      q1
      q2. 4
      q1\omit\f
    }
    {
    q1~\omit\cresc % 6a
    }
  }
  q1
  q1~
  q1
  c2\omit\f d % 6b
  g,2 b
  c2 d
  e2 e,
  e'2 e, % 6c
  a2 c
  d2 g,
  g'2 g, % 7a
  c2 d
  g,2 b
  c2 d
  e2 e, % 7b
  e'2 e,
  a2 c
  d2 g,
  g'2 g,
  R1*5
  <b g'>1 % 8a
  <e g c d>1~
  q1
  q1~
  q1
  <g, d'>1\omit\mp % 8b
  q1
  q1
  q1 % 8c
  q1
  q1
  <<
    \partCombine \relative { \voiceOne r4 r8 s4.  a4~ | a8 b4. c4 d} % 9a
                 \relative {           r4 r8 c8~4~ 4~ | c1         }
    \new Voice             { \voiceTwo f1~            | f1         }
  >>
  <g d'>1
  q1
  q1 % 9b
  q1
  <e' c'>2\omit\cresc <fis d'>
  <g d'>4 <b, g'> <c g'>2 % 9c
  q1
  q1
  <e c'>2 <fis d'>
  <g b>2 <g, g'> % 10a
  c2\omit\f d
  g,2 b
  c2 d
  e2 e, % 10b
  e'2 e,
  a2 c
  d2 g, % 10c
  g'2 g,
  c2 d
  g,2 b
  c2 d % 11a
  e2 e,
  e'2 e, \time 3/4
  <a g'>2 <c g'>4 % 11b
  <d a'>2 <b g'>4
  <a g'>2 <c g'>4
  <d a'>2 <e b'>4
  <a, g'>4.^>\omit\cresc q8^>~4 % 11c
  <c g'>4.^> <d a'>8^>~4
  <g b>4^> <g,, g'>4^^ r\omit\ff
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Dynamics \dynamicsI
          \new Staff \with { instrumentName = #"Part I" shortInstrumentName = #"I" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "parti" \partI
            \new Lyrics \lyricsto "parti" \verseOne
            \new Lyrics \lyricsto "parti" \verseTwo
          >>
                                % Single part II staff
          \new Dynamics \dynamicsII
          \new Staff \with { instrumentName = #"Part II" shortInstrumentName = #"II" } <<
            \new Voice = "partii" \partII
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Dynamics \dynamicsI
          \new Staff \with { instrumentName = #"Part I" shortInstrumentName = #"I" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "parti" \partI
            \new Lyrics \lyricsto "parti" \wordsSingle
          >>
                                % Single part II staff
          \new Dynamics \dynamicsII
          \new Staff \with { instrumentName = #"Part II" shortInstrumentName = #"II" } <<
            \new Voice = "partii" \partII
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "single-page"
  \paper {
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Dynamics \dynamicsI
          \new Staff \with { instrumentName = #"Part I" shortInstrumentName = #"I" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "parti" \partI
            \new Lyrics \lyricsto "parti" \wordsSingle
          >>
                                % Single part II staff
          \new Dynamics \dynamicsII
          \new Staff \with { instrumentName = #"Part II" shortInstrumentName = #"II" } <<
            \new Voice = "partii" \partII
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Dynamics \dynamicsI
          \new Staff = "Part I" \with { instrumentName = #"Part I" shortInstrumentName = #"I" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "parti" \partI
            \new Lyrics \lyricsto "parti" \wordsMidi
          >>
                                % Single part II staff
          \new Dynamics \dynamicsII
          \new Staff = "Part II" \with { instrumentName = #"Part II" shortInstrumentName = #"II" } <<
            \new Voice = "partii" \partII
          >>
        >>
        <<
          \new ChordNames = "Guitar Chords" { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff = "Piano" \with { printPartCombineTexts = ##f }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
