\version "2.25.15"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Tie a Yellow Ribbon"
  subtitle    = "round the ole oak tree"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Irwin Levine and L. Russell Brown"
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
  \key f \major
  \time 2/2
}

TempoTrack = {
  \tempo "Moderately bright" 4=160
  s1
  \set Score.tempoHideNote = ##t
  s1*3 |
  \repeat volta 2 {
    s1*4 |
    s1*8 | % 3
    s1*8 |
    s1*10 | % 5
    s1*9 |
    s1 |
    \alternative {
      \volta 1 { s1*4 | }
      \volta 2 { s4
               \tempo 4=140 s2. | s1 | }
    }
  }
  \tempo Freely 4=120 s1*2 |
  s1*2 | \tempo "a tempo" 4=160 s1*2 | % 8a
  s1*2 | \tempo 4=150 s1*2 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup\box "2a" s1*4
  \repeat volta 2 {
    \textMark \markup\box "2b" s1*4
    \textMark \markup\box "3a" s1*4
    \textMark \markup\box "3b" s1*4
    \textMark \markup\box "4a" s1*4
    \textMark \markup\box "4b" s1*4
    \textMark \markup\box "5a" s1*5
    \textMark \markup\box "5b" s1*5
    \textMark \markup\box "6a" s1*4
    \textMark \markup\box "6b" s1*5
    \textMark \markup\box "7a" s1
    \alternative {
      \volta 1 { s1*4 }
      \volta 2 {
        \textMark \markup\box "7b" s1*2
      }
    }
  }
  s1*2
  \textMark \markup\box "8a" s1*4
  \textMark \markup\box "8b" s1*4
}

Rhythm = \chordmode {
  \set noChordSymbol = ""
  \improvisationOn \vo
  f4^\omit\pp 8 8 8 8 4 | 4 8 8 8 8 4 | c:7 q8 q q q q4 | 4 bes c:7 c:7 \section |
  \repeat volta 2 {
    f4 8 8 8 8 4 | 4 8 8 8 8 4 | a4:m q8 8 8 8 4 | 4 8 8 8 8 4 |
    c4:m q8 8 8 8 4 | d4:7 q8 8 8 8 4 | g4:m q8 8 8 8 4 | 4 8 8 8 8 4 | % 3a
    q4 8 8 8 8 4 | bes4:m q8 8 8 8 4 | f4 8 8 d:m q8 4 | 4 8 8 8 8 4 |
    g4:7 q8 8 8 8 4 | 4 8 8 8 8 4 | bes4:m6 q8 8 8 8 4 | c4:7 q8 8 8 8 4 | % 4a
    bes2.:m6 q4 | 2 2 | c4:7 r4 q4. 8 | 4 r r2 \section |
    f4 4 4 4 | 4 4 4 4 | a4:m q e:m7 q | a:m q q q | c4:m q g4:7 9 q | % 5a %%% fix final chord
    c4:m q q q | d:7 q q q | g:m q q q | q q q q | bes:m q q q |
    f4 q a:7 q | d:m q q q | f q q q | f:aug q q q | % 6a
    d4:m q q q | d4:7 q q q | g:m q q q | bes:m q q q | g:m9 q q q |
    c4:7 q q q | % 7a
    \alternative {
      \volta 1 { f4 q q q | d:m q q q | g:m q q q | c2:7 q | }
      \volta 2 { f4 q q q | 2. r4 | \section }
    }
  }
  g1:m | bes2.:m q4 |
  f1 | d2.:9\fermata r4 | g4:m q q q | bes:m q q q | % 8a
  g4:m9 q q q | c:13 q q q | f q q q | bes4.:m f8~2\fermata |
}

BassGuitar = \relative {
  \dynamicDown \global \key f \major % why does the key need to be specified???
  f2\mf c | f c | g' c, | g'4 c, d e \section |
  \repeat volta 2 {
    f2\mf c | f c' | a e | a e |
    c2 c' | d,2 e4 fis | g2 d | g d | % 3a
    g2 d' | bes bes, | f' d | d' a4 d, |
    g2 d | g d | bes' bes, | c g'4 c | % 4a
    \after 2 \! bes2.--\< 4-- | bes2-- 2--\> | c4\! r c,4.-> 8-> | c4-> c-> d-> e-> \section |
    f2\mf c | f c4 f | a2 e | a e4 a | c,2 g' | % 5a
    c2 g4 c, | d2 e4 fis | g2 d | a d | bes des |
    f2 cis | d a | c c | cis cis | % 6a
    d2 a' | d a4 d, | g2 d | bes bes' | g d |
    c2 c' | % 7a
    \alternative {
      \volta 1 { f,2 c | d a' | g d | c-> c-> | }
      \volta 2 { \after 8 -\markup\italic ritard. f2 c' | f,4 c' f, r \section | }
    }
  }
  g1 | bes2. des4-- |
  c2\< a4\! f | d\> a'8 d,~4\fermata\! r | g2 d | bes f'4 bes | % 8a
  g2_\markup\italic "poco a poco cresc." d | c g'4 c | f,2\omit\f_\markup{\dynamic f \italic rall.} c | bes4.-- f'8->~4\> f,4\fermata | <>\!
}

dynamicsVocal = {
  \override DynamicTextSpanner.style = #'none
  s1*4
  \repeat volta 2 {
    s4 s2.\mf | s1*3 |
    s1*8 | % 3
    s1*4 | s2\< s\! | s s\> | s1\! | s |
    s1\mf | s1*9 | % 5
    s1*9 |
    s1 | % 7a
    \alternative {
      \volta 1 { s1*4 | }
      \volta 2 { s8\> s2..\!^\markup\italic ritard. | s2. s8\< s\! | }
    }
  }
  s1*2 |
  s2\< s\! | s\> s\! | s1 | s | % 8a
  s1-\markup\italic "poco a poco cresc." | s1 | s\omit\f-\markup{\dynamic f \italic rall.} | s2 s\> | <>\!
}

sopranoIA = \relative {
  r4 f'4 8 a4
  \tag #'dash { << {\vo c8~ | 4 4} \new Voice {\vt c8~ | 2} >> }
  \tag #'v1   {         c8~ | 4 4                              }
  \tag #'v2   {                                    c8~ | 2     }
  \ov c4 f,8 e~ |
  2 r | r2 r8 a c4 |
  d4 c8 8~4 bes8 a~ | 4 4 bes8 c4 bes8~ | 2 r | r r8 c4. | % 3a
  c4 bes c bes | c8 bes4. f8 g4 a8~ | 4 4 d4 8 f~ |
  \tag #'dash { f2 << {\vt \tiny r4 r8 d} \new Voice {\normalsize \vo r2} >> } |
  \tag #'v1   { f2                                                    r2     } |
  \tag #'v2   { f2               r4 r8 d                                     } |
  \normalsize \vo f4 4 d d | % 4a
  \tag #'dash { << {\vo a4 8 d8~2} \new Voice {\vt \tiny a8 4. d8 4.} >> } |
  \tag #'v1   {         a4 8 d8~2                                        } |
  \tag #'v2   {                                          a8 4. d8 4.     } |
  \ov des4 4 ees des | c2
  \tag #'dash { << {\vt \tiny r4 c} \new Voice { \vo r2 } >> }
  \tag #'v1   {                                      r2      }
  \tag #'v2   {               r4 c                           }
  \normalsize des2. 4 | ees2 des | c4 r r2 | R1 \section | % 4b
  f4. c8 d a4. | c8 f,4. g4 f | e2 d'4. c8~ | 4 r d c | ees,2 d' | % 5a
  c2 d4 c | d,2 c'4. bes8~ | 2 r4 r8 d, | c' bes4. c4 bes | c8 bes4. f4 g |
  a2 a | g8(f4.) r2 | r2 r4 r8 f | a8 8 4 2 | % 6a
  a4. 8 c d4. | e2. d4 | c8 bes4. c4 bes | c8 bes4. f8 g4. | a2. 4 |
  a8(c4.) d2 | % 7a
}

sopranoI = \relative {
  \global
  R1*4 \section |
  \repeat volta 2 {
    \keepWithTag #'dash \sopranoIA
    \alternative {
      \volta 1 { g'8(f4.) r2 | R1 | R | R | }
      \volta 2 { g8(f4.) r2 | r2 r4 c'8 bes | \section }
    }
  }
  c4 bes c bes | c bes2 f8 g |
  a4. 8 c4 d | e2.\fermata d4 | c bes c8 bes4. | c8 bes4. f4 g | % 8a
  a1 | 2(c8 d4.) | f1~ | f\fermata |
  \bar "|."
}

sopranoISingle = \relative {
  \global
  R1*4 \section |
  \keepWithTag #'v1 \sopranoIA
  g'8(f4.) r2 | R1 | R | R |
  \keepWithTag #'v2 \sopranoIA
  g8(f4.) r2 | r2 r4 c'8 bes | \section
  c4 bes c bes | c bes2 f8 g |
  a4. 8 c4 d | e2.\fermata d4 | c bes c8 bes4. | c8 bes4. f4 g | % 8a
  a1 | 2(c8 d4.) | f1~ | f\fermata |
  \bar "|."
}

wordsSopIOne = \lyricmode {
  I'm com -- in’ home, __ I've done my time, __
  now I've got to know __ what is __ and is -- n’t mine. __
  If you re -- ceived my let -- ter tell -- in’ you __ I'd soon be free, __
  "" then you'll know just what to do __
  if you still want me.
  _ if you still want me.
}

wordsSopITwo = \lyricmode {
  Bus driv -- er, please __ _ look for me, __
  ’cause I could -- n’t bear __ to see __ what I might see. __
  I'm real -- ly still in pri -- son and my love __ she holds the key, __
  a sim -- ple yel -- low "rib - bon's" _ "what I" need to set me free,
  I wrote and told her please,
}

chorusSop = \lyricmode {
  Tie a yel -- low rib -- bon round the ole oak tree, __
  it's been three long years,
  do ya still want me? __
  If I don't see a rib -- bon round the ole oak tree, __
%  I'll stay on the bus,
  for -- get a -- bout us,
  put the blame on me,
  if I don't see a yel -- low rib -- bon round the ole __ oak tree. __

  tree. __
  Now the whole damn bus is cheer -- ing,
  and I can't be -- lieve I see
  a hun -- dred yel -- low rib -- bons round the ole oak __ tree. __
}

wordsSopISingle = \lyricmode {
  I'm com -- in’ home, __ I've done my time, __
  now I've got to know __ what is __ and is -- n’t mine. __
  If you re -- ceived my let -- ter tell -- in’ you __ I'd soon be free, __
  then you'll know just what to do __
  if you still want me.
  if you still want me.
  Tie a yel -- low rib -- bon round the ole oak tree, __
  it's been three long years,
  do ya still want me? __
  If I don't see a rib -- bon round the ole oak tree, __
%  I'll stay on the bus,
  for -- get a -- bout us,
  put the blame on me,
  if I don't see a yel -- low rib -- bon round the ole __ oak tree. __

  Bus driv -- er, please __ look for me, __
  ’cause I could -- n’t bear __ to see __ what I might see. __
  I'm real -- ly still in pri -- son and my love __ she holds the key, __
  a sim -- ple yel -- low rib -- bon’s what I need to set me free,
  I wrote and told her please,

  Tie a yel -- low rib -- bon round the ole oak tree, __
  it's been three long years,
  do ya still want me? __
  If I don't see a rib -- bon round the ole oak tree, __
%  I'll stay on the bus,
  for -- get a -- bout us,
  put the blame on me,
  if I don't see a yel -- low rib -- bon round the ole __ oak tree. __

  Now the whole damn bus is cheer -- ing,
  and I can't be -- lieve I see
  a hun -- dred yel -- low rib -- bons round the ole oak __ tree. __
}

wordsSopIMidi = \lyricmode {
  "I'm " com "in’ " "home, "  "I've " "done " "my " "time, " 
  "\nnow " "I've " "got " "to " "know "  "what " "is "  "and " is "n’t " "mine. " 
  "\nIf " "you " re "ceived " "my " let "ter " tell "in’ " "you "  "I'd " "soon " "be " "free, " 
  "\nthen " "you'll " "know " "just " "what " "to " "do " 
  "\nif " "you " "still " "want " "me. "
  "\nif " "you " "still " "want " "me. "
  "\nTie " "a " yel "low " rib "bon " "round " "the " "ole " "oak " "tree, " 
  "\nit's " "been " "three " "long " "years, "
  "\ndo " "ya " "still " "want " "me? " 
  "\nIf " "I " "don't " "see " "a " rib "bon " "round " "the " "ole " "oak " "tree, " 
%  I'll stay on the bus,
  "\nfor" "get " a "bout " "us, "
  "\nput " "the " "blame " "on " "me, "
  "\nif " "I " "don't " "see " "a " yel "low " rib "bon " "round " "the " "ole "  "oak " "tree. " 

  "\nBus " driv "er, " "please "  "look " "for " "me, " 
  "\n’cause " "I " could "n’t " "bear "  "to " "see "  "what " "I " "might " "see. " 
  "\nI'm " real "ly " "still " "in " pri "son " "and " "my " "love "  "she " "holds " "the " "key, " 
  "\na " sim "ple " yel "low " rib "bon’s " "what " "I " "need " "to " "set " "me " "free, "
  "\nI " "wrote " "and " "told " "her " "please, "

  "\nTie " "a " yel "low " rib "bon " "round " "the " "ole " "oak " "tree, " 
  "\nit's " "been " "three " "long " "years, "
  "\ndo " "ya " "still " "want " "me? " 
  "\nIf " "I " "don't " "see " "a " rib "bon " "round " "the " "ole " "oak " "tree, " 
%  I'll stay on the bus,
  "\nfor" "get " a "bout " "us, "
  "\nput " "the " "blame " "on " "me, "
  "\nif " "I " "don't " "see " "a " yel "low " rib "bon " "round " "the " "ole "  "oak " "tree. " 

  "\nNow " "the " "whole " "damn " "bus " "is " cheer "ing, "
  "\nand " "I " "can't " be "lieve " "I " "see "
  "\na " hun "dred " yel "low " rib "bons " "round " "the " "ole " "oak "  "tree. " 
}

sopranoIIA = \relative {
  r4 f'4 8 a4
  \tag #'dash { << {\vo a8~ | 4 4} \new Voice {\vt a8~ | 2}>> }
  \tag #'v1   {         a8~ | 4 4                             }
  \tag #'v2   {                                    a8~ | 2    }
  \ov a4 f8 e~ | 2 r | c'2(a8) e a4 |
  g4 8 8~4 8 fis~ | 4 4 8 4 g8~ | 2 r4 d4( | g2 bes8) g4. | % 3a
  g4 g g g | f8 4. des8 4 f8~ | 4 4 a4 8 8~ | 2
  \tag #'dash { << {\vt \tiny r4 r8 a} \new Voice {\vo r2} >> } |
  \tag #'v1   {                                        r2     } |
  \tag #'v2   {               r4 r8 a                         } |
  \normalsize b4 4 4 4 | % 4a
  \tag #'dash { << {\vo f4 8 b~2} \new Voice {\vt \tiny f8 4. b8 4.} >> } |
  \tag #'v1   {         f4 8 b~2                                        } |
  \tag #'v2   {                                         f8 4. b8 4.     } |
  bes4 4 4 4 | g2
  \tag #'dash { << {\vt \tiny r4 g} \new Voice {\vo r2} >> } |
  \tag #'v1   {                                     r2     } |
  \tag #'v2   {               r4 g                         } |
  \normalsize bes2. 4 | 2 2 | g4 r r2 | R1 \section |
  a4. 8 8 f4. | a8 4. 4 4 | 2 b4. a8~ | 4 r b a | g2 aes | % 5a
  g2 4 4 | fis2 a4. g8~ | 2 r4 r8 d | g8 4. 4 4 | f8 4. des4 4 |
  f2 e | 8(d4.) r2 | r2 r4 r8 f | a8 8 4 2 | % 6a
  f4. 8 a8 4. | c2. a4 | g8 4. 4 4 | f8 4. des8 4. | f2. 4 |
  e8(g4.) bes2 | % 7a
}

sopranoII = \relative {
  \global
  R1*4 \section |
  \repeat volta 2 {
    \keepWithTag #'dash \sopranoIIA
    \alternative {
      \volta 1 { a2 r | R1 | R | R | }
      \volta 2 { a2 r | r2 r4 c8 bes \section | }
    }
  }
  a'4 g a g | f g2 f8 8 |
  f4. 8 a4 4 | c2.\fermata a4 | g4 4 8 4. | f8 4. des4 4 | % 8a
  f1 | e2(a8 bes4.) | c1( | des4. c8~2\fermata) |
  \bar "|."
}

sopranoIISingle = \relative {
  \global
  R1*4 \section |
  \keepWithTag #'v1 \sopranoIIA
  a'2 r | R1 | R | R |
  \keepWithTag #'v2 \sopranoIIA
  a2 r | r2 r4 c8 bes \section |
  a4 g a g | f g2 f8 8 |
  f4. 8 a4 4 | c2.\fermata a4 | g4 4 8 4. | f8 4. des4 4 | % 8a
  f1 | e2(a8 bes4.) | c1( | des4. c8~2\fermata) |
  \bar "|."
}

wordsSopIIOne = \lyricmode {
  I'm com -- in’ home, __ I've done my time, __
  Oo, __ now I've got to know __ what is __ and is -- n’t mine. __
  Oo, __ If you re -- ceived my let -- ter tell -- in’ you __ I'd soon be free, __
  "" then you'll know just what to do __
  if you still want me.
  _ if you still want me.
  
}

wordsSopIITwo = \lyricmode {
  Bus driv -- er, please __ _ look for me, __
  Oo, __ ’cause I could -- n’t bear __ to see __ what I might see. __
  Oo, __ I'm real -- ly still in pri -- son and my love __ she holds the key, __
  a sim -- ple yel -- low "rib - bon's" _ "what I" need to set me free,
  I wrote and told her please,
}

wordsSopIISingle = \lyricmode {
  I'm com -- in’ home, __ I've done my time, __
  Oo, __ now I've got to know __ what is __ and is -- n’t mine. __
  Oo, __ If you re -- ceived my let -- ter tell -- in’ you __ I'd soon be free, __
  then you'll know just what to do __
  if you still want me.
  if you still want me.
  
  Tie a yel -- low rib -- bon round the ole oak tree, __
  it's been three long years,
  do ya still want me? __
  If I don't see a rib -- bon round the ole oak tree, __
%  I'll stay on the bus,
  for -- get a -- bout us,
  put the blame on me,
  if I don't see a yel -- low rib -- bon round the ole __ oak tree. __

  Bus driv -- er, please __ look for me, __
  Oo, __ ’cause I could -- n’t bear __ to see __ what I might see. __
  Oo, __ I'm real -- ly still in pri -- son and my love __ she holds the key, __
  a sim -- ple yel -- low rib -- bon's what I need to set me free,
  I wrote and told her please,
  Tie a yel -- low rib -- bon round the ole oak tree, __
  it's been three long years,
  do ya still want me? __
  If I don't see a rib -- bon round the ole oak tree, __
%  I'll stay on the bus,
  for -- get a -- bout us,
  put the blame on me,
  if I don't see a yel -- low rib -- bon round the ole __ oak tree. __

  Now the whole damn bus is cheer -- ing,
  and I can't be -- lieve I see
  a hun -- dred yel -- low rib -- bons round the ole oak __ tree. __
}

wordsSopIIMidi = \lyricmode {
  "I'm " com "in’ " "home, "  "I've " "done " "my " "time, " 
  "\nOo, "  "now " "I've " "got " "to " "know "  "what " "is "  "and " is "n’t " "mine. " 
  "\nOo, "  "If " "you " re "ceived " "my " let "ter " tell "in’ " "you "  "I'd " "soon " "be " "free, " 
  "\nthen " "you'll " "know " "just " "what " "to " "do " 
  "\nif " "you " "still " "want " "me. "
  "\nif " "you " "still " "want " "me. "
  
  "\nTie " "a " yel "low " rib "bon " "round " "the " "ole " "oak " "tree, " 
  "\nit's " "been " "three " "long " "years, "
  "\ndo " "ya " "still " "want " "me? " 
  "\nIf " "I " "don't " "see " "a " rib "bon " "round " "the " "ole " "oak " "tree, " 
%  I'll stay on the bus,
  "\nfor" "get " a "bout " "us, "
  "\nput " "the " "blame " "on " "me, "
  "\nif " "I " "don't " "see " "a " yel "low " rib "bon " "round " "the " "ole "  "oak " "tree. " 

  "\nBus " driv "er, " "please "  "look " "for " "me, " 
  "\nOo, "  "’cause " "I " could "n’t " "bear "  "to " "see "  "what " "I " "might " "see. " 
  "\nOo, "  "I'm " real "ly " "still " "in " pri "son " "and " "my " "love "  "she " "holds " "the " "key, " 
  "\na " sim "ple " yel "low " rib "bon's " "what " "I " "need " "to " "set " "me " "free, "
  "\nI " "wrote " "and " "told " "her " "please, "
  "\nTie " "a " yel "low " rib "bon " "round " "the " "ole " "oak " "tree, " 
  "\nit's " "been " "three " "long " "years, "
  "\ndo " "ya " "still " "want " "me? " 
  "\nIf " "I " "don't " "see " "a " rib "bon " "round " "the " "ole " "oak " "tree, " 
%  I'll stay on the bus,
  "\nfor" "get " a "bout " "us, "
  "\nput " "the " "blame " "on " "me, "
  "\nif " "I " "don't " "see " "a " yel "low " rib "bon " "round " "the " "ole "  "oak " "tree. " 

  "\nNow " "the " "whole " "damn " "bus " "is " cheer "ing, "
  "\nand " "I " "can't " be "lieve " "I " "see "
  "\na " hun "dred " yel "low " rib "bons " "round " "the " "ole " "oak "  "tree. " 
}

altoA = \relative {
  r4 f'4 8 4
  \tag #'dash { << {\vo f8~ | 4 4} \new Voice {\vt f8~ | 2} >> }
  \tag #'v1   {         f8~ | 4 4                              }
  \tag #'v2   {                                    f8~ | 2     }
  f4 a,8 c~ | 2 r | e(c8) c e4 |
  ees4 8 8~4 8 c~ | 4 4 8 4 d8~ | 2 r4 d( | bes2 d8) 4. | % 3a
  d4 4 4 4 | des8 4. bes8 4 c8~ | 4 4 f4 8 d~ | 2
  \tag #'dash { << {\vt \tiny r4 r8 f} \new Voice {\vo r2} >> } |
  \tag #'v1   {                                        r2     } |
  \tag #'v2   {               r4 r8 f                         } |
  \normalsize d4 4 f f | % 4a
  \tag #'dash { << {\vo d4 8 f~2} \new Voice {\vt \tiny d8 4. f8 4.} >> } |
  \tag #'v1   {         d4 8 f~2                                        } |
  \tag #'v2   {                                         d8 4. f8 4.     } |
  4 4 g f | e2
  \tag #'dash { << {\vt \tiny r4 e} \new Voice {\vo r2} >> } |
  \tag #'v1   {                                     r2     } |
  \tag #'v2   {               r4 e                         } |
  \normalsize f2. 4 | g2 f | e4 r r2 | R1 \section |
  f4. 8 8 c4. | f8 c4. 4 4 | 2 g'4. e8~ | 4 r e e | c2 f | % 5a
  ees2 f4 ees | d2 4. 8~ | 2 r4 r8 d | d8 4. 4 4 | des8 4. bes4 4 |
  c2 cis | a r4 g' | a8 4 8 4 r | R1 | % 6a
  d,4. 8 f8 4. | fis2. 4 | d8 4. 4 4 | des8 4. bes8 4. | d2. 4 |
  c8(e4.) 2 | % 7a
}

alto = \relative {
  \global
  R1*4 \section |
  \repeat volta 2 {
    \keepWithTag #'dash \altoA
    \alternative {
      \volta 1 { c'2 r | R1 | R | R | }
      \volta 2 { c2 r | r2 r4 c8 bes | \section }
    }
  }
  d4 4 4 4 | des4 2 8 8 |
  c4. 8 f4 4 | a2.\fermata fis4 | d4 4 8 4. | des8 4. bes4 4 | % 8a
  d1 | c2(e) | a1( | bes4. a8~2\fermata) |
  \bar "|."
}

altoSingle = \relative {
  \global
  R1*4 \section |
  \keepWithTag #'v1 \altoA
  c'2 r | R1 | R | R |
  \keepWithTag #'v2 \altoA
  c2 r | r2 r4 c8 bes | \section
  d4 4 4 4 | des4 2 8 8 |
  c4. 8 f4 4 | a2.\fermata fis4 | d4 4 8 4. | des8 4. bes4 4 | % 8a
  d1 | c2(e) | a1( | bes4. a8~2\fermata) |
  \bar "|."
}

wordsAltoOne = \lyricmode {
  I'm com -- in’ home, __ I've done my time, __
  Oo, __ now I've got to know __ what is __ and is -- n’t mine. __
  Oo, __ If you re -- ceived my let -- ter tell -- in’ you __ I'd soon be free, __
  "" then you'll know just what to do __
  if you still want me.
  _ if you still want me.
}

wordsAltoTwo = \lyricmode {
  Bus driv -- er, please __ _ look for me, __
  Oo, __ ’cause I could -- n’t bear __ to see __ what I might see. __
  Oo, __ I'm real -- ly still in pri -- son and my love __ she holds the key, __
  a sim -- ple yel -- low "rib - bon's" _ "what I" need to set me free,
  I wrote and told her please,
}

chorusAlto = \lyricmode {
  Tie a yel -- low rib -- bon round the ole oak tree, __
  it's been three long years,
  do ya still want me? __
  If I don't see a rib -- bon round the ole oak tree, __
  I'll stay on the bus,
%  for -- get a -- bout us,
  put the blame on me,
  if I don't see a yel -- low rib -- bon round the ole __ oak tree. __

  tree. __
  Now the whole damn bus is cheer -- ing,
  and I can't be -- lieve I see
  a hun -- dred yel -- low rib -- bons round the ole oak __ tree. __
}

wordsAltoSingle = \lyricmode {
  I'm com -- in’ home, __ I've done my time, __
  Oo, __ now I've got to know __ what is __ and is -- n’t mine. __
  Oo, __ If you re -- ceived my let -- ter tell -- in’ you __ I'd soon be free, __
  then you'll know just what to do __
  if you still want me.
  if you still want me.

  Tie a yel -- low rib -- bon round the ole oak tree, __
  it's been three long years,
  do ya still want me? __
  If I don't see a rib -- bon round the ole oak tree, __
  I'll stay on the bus,
%  for -- get a -- bout us,
  put the blame on me,
  if I don't see a yel -- low rib -- bon round the ole __ oak tree. __

  Bus driv -- er, please __ look for me, __
  Oo, __ ’cause I could -- n’t bear __ to see __ what I might see. __
  Oo, __ I'm real -- ly still in pri -- son and my love __ she holds the key, __
  a sim -- ple yel -- low rib -- bon's what I need to set me free,
  I wrote and told her please,

  Tie a yel -- low rib -- bon round the ole oak tree, __
  it's been three long years,
  do ya still want me? __
  If I don't see a rib -- bon round the ole oak tree, __
  I'll stay on the bus,
%  for -- get a -- bout us,
  put the blame on me,
  if I don't see a yel -- low rib -- bon round the ole __ oak tree. __

  Now the whole damn bus is cheer -- ing,
  and I can't be -- lieve I see
  a hun -- dred yel -- low rib -- bons round the ole oak __ tree. __
}

wordsAltoMidi = \lyricmode {
  "I'm " com "in’ " "home, "  "I've " "done " "my " "time, " 
  "\nOo, "  "now " "I've " "got " "to " "know "  "what " "is "  "and " is "n’t " "mine. " 
  "\nOo, "  "If " "you " re "ceived " "my " let "ter " tell "in’ " "you "  "I'd " "soon " "be " "free, " 
  "\nthen " "you'll " "know " "just " "what " "to " "do " 
  "\nif " "you " "still " "want " "me. "
  "\nif " "you " "still " "want " "me. "

  "\nTie " "a " yel "low " rib "bon " "round " "the " "ole " "oak " "tree, " 
  "\nit's " "been " "three " "long " "years, "
  "\ndo " "ya " "still " "want " "me? " 
  "\nIf " "I " "don't " "see " "a " rib "bon " "round " "the " "ole " "oak " "tree, " 
  "\nI'll " "stay " "on " "the " "bus, "
%  for -- get a -- bout us,
  "\nput " "the " "blame " "on " "me, "
  "\nif " "I " "don't " "see " "a " yel "low " rib "bon " "round " "the " "ole "  "oak " "tree. " 

  "\nBus " driv "er, " "please "  "look " "for " "me, " 
  "\nOo, "  "’cause " "I " could "n’t " "bear "  "to " "see "  "what " "I " "might " "see. " 
  "\nOo, "  "I'm " real "ly " "still " "in " pri "son " "and " "my " "love "  "she " "holds " "the " "key, " 
  "\na " sim "ple " yel "low " rib "bon's " "what " "I " "need " "to " "set " "me " "free, "
  "\nI " "wrote " "and " "told " "her " "please, "

  "\nTie " "a " yel "low " rib "bon " "round " "the " "ole " "oak " "tree, " 
  "\nit's " "been " "three " "long " "years, "
  "\ndo " "ya " "still " "want " "me? " 
  "\nIf " "I " "don't " "see " "a " rib "bon " "round " "the " "ole " "oak " "tree, " 
  "\nI'll " "stay " "on " "the " "bus, "
%  for -- get a -- bout us,
  "\nput " "the " "blame " "on " "me, "
  "\nif " "I " "don't " "see " "a " yel "low " rib "bon " "round " "the " "ole "  "oak " "tree. " 

  "\nNow " "the " "whole " "damn " "bus " "is " cheer "ing, "
  "\nand " "I " "can't " be "lieve " "I " "see "
  "\na " hun "dred " yel "low " rib "bons " "round " "the " "ole " "oak "  "tree. " 
}

pianoRH = \relative {
  \global \ov
  r4 f' <f a> <f a c> |
  <f a d>4 c'8 q8~q c <f, a>4 |
  r4 e8 8 <e g>4 <e bes'> |
  <e c'>8 8 <d bes'>4 <c a'> <bes g'> \section |
  \repeat volta 2 {
    r4 <a c f>8 8 r4 q | r4 q8 8 r4 q | r4 <a c e>8 8 r4 q | r4 q8 8 r4 q |
    r4 <c ees g>8 8 r4 q | r4 <c d fis>8 8 r4 <c d a'> | r4 <bes d g>8 8 r4 q | r4 q8 8 r4 <c d g> | % 3a
    r4 <bes d g>8 8 r4 q | r <bes des f>8 8 r4 q | r <a c f>8 8 r4 <a d f> | r4 q8 8 r4 q |
    r4 <b d f>8 8 r4 q | r q8 8 r4 q | r <des f g>8 8 r4 q | r <bes e g>8 8 r4 q | % 4a
    <des f bes>2.--  4-- | <ees f bes>2-- <des f bes>-- | <c e g>4 r <bes e g>4.-> 8-> | 4-> r r2 \section |
    r4 <a c f> r q | r4 q8 8 r4 q | r4 <a c e> r <b d e> | r4 <a c e>8 8 r4 q | r4 <g c ees> r <aes b f'> | % 5a
    r4 <g c ees>8 8 r4 q | r <fis c' d> r <a c d> | r <bes d g>8 8 r4 q | r q r q | r <bes des f>8 8 r4 q |
    r4 <a c f> r <a e' g> | r <a d f>8 8 r4 q | r <a c f> r q | r <a cis f> r q | % 6a
    r4 <a d f> r q | r <c fis a>8 8 r4 q | r <bes d g> r q | r <bes des f>8 8 r4 q | r <bes f' a> r q |
    r4 <bes e g> r q | % 7a
    \alternative {
      \volta 1 { r4 f' <f a> <f a c> | <f a d> c'8 q~q c <f, a>4 | r4 d8 d <bes d g>4 <d g bes> | <e bes' c>2-> q-> | }
      \volta 2 { r4 <a, c f> a8(c d c) | <a c f>2. r4 | }
    }
  }
  <c d a'>4--(<bes d g>-- <c d a'>-- <bes d g>-- | <des f a>-- <des f g>2--) <bes d f>4-- |
  <a c f>1 | <c e a>2.\arpeggio\fermata r4 | r <bes d g> r q | r <bes des f>8 8 r4 q | % 8a
  r4 <bes d f a>8 8~4 4 | r4 <bes d e a>8 8~4 4 | r4 <aes c f>4-- <c f a>-- <c f a c>-- | <des f bes des>4 <ees ees'>8 <f a c f>8-> ~ 2\fermata |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s1*3 |
  \repeat volta 2 {
    s1\mf | s1*3 |
    s1*8 | % 3
    s1*4 | s2\< s\!~ | s s\> | s1\! | s |
    s1\mf | s1*9 | % 5
    s1*9 |
    s1 | % 7a
    \alternative {
      \volta 1 { s1*4 | }
      \volta 2 { s4 s2.-\markup\italic ritard. | s1 | }
    }
  }
  s1*2 |
  s2\< s\! | s\> s\! | s1*2 | % 8a
  s1-\markup\italic "poco a poco cresc." | s1 | s1\omit\f-\markup{\dynamic f \italic rall.} | s2 s\> | <>\!
}

pianoLH = \relative {
  \global \ov
  f,2 c | f c | g' c, | g'4 c, d e \section |
  \repeat volta 2 {
    f2 c | f c' | a e | a e |
    c2 c' | d,2 e4 fis | g2 d | g d | % 3a
    g2 d' | bes bes, | f' d | d' a4 d, |
    g2 d | g d | bes' bes, | c g'4 c | % 4a
    <bes g'>2.-- 4-- | 2-- 2-- | <c bes'>4 r c,4.-> 8-> | c4-> c-> d-> e-> \section |
    f2 c | f c4 f | a2 e | a e4 a | c,2 g' | % 5a
    c2 g4 c, | d2 e4 fis | g2 d | a d | bes des |
    f2 cis | d a | c c | cis cis | % 6a
    d2 a' | d a4 d, | g2 d | bes bes' | g d |
    c2 c' | % 7a
    \alternative {
      \volta 1 { f,2 c | d a' | g d | c-> c-> | }
      \volta 2 { f2 c' | f,4 c' f, r \section | }
    }
  }
  g1 | bes2. des4-- |
  c2 a4 f | <<{\vo fis'2.\fermata r4} \\ {\vt d, a'8 d,~4\fermata r}>> \ov | g2 d | bes f'4 bes | % 8a
  g2 d | c g'4 c | f,2 c | bes4.-- f'8->~4 f,4\fermata |
  \bar "|."
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoI} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\wordsSopIOne \chorusSop}
            \addlyrics \wordsSopITwo
          >>
                                % Single soprano II staff
          \new Staff = sopranoII \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoII} \dynamicsVocal
            \new Voice \sopranoII
            \addlyrics {\wordsSopIIOne \chorusSop}
            \addlyrics \wordsSopIITwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics {\wordsAltoOne \chorusAlto}
            \addlyrics \wordsAltoTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new ChordNames { \set chordChanges = ##t \Rhythm }
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      <<
        \new ChordNames { \set chordChanges = ##t \Rhythm }
%        \new FretBoards { \set chordChanges = ##t \Rhythm }
        \new RhythmicStaff = RhythmGuitar \with {
          instrumentName = "Rhythm guitar"
        }
        <<
          \new Voice \reduceChords \Rhythm
        >>
      >>
      \new Staff = BassGuitar \with {
        instrumentName = Bass
        shortInstrumentName = ""
      }
      <<
        \clef bass
        \new Voice \BassGuitar
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoI} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoISingle
            \addlyrics \wordsSopISingle
          >>
                                % Single soprano II staff
          \new Staff = sopranoII \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoII} \dynamicsVocal
            \new Voice \sopranoIISingle
            \addlyrics \wordsSopIISingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
%          \new ChordNames { \set chordChanges = ##t \Rhythm }
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
%      <<
%        \new ChordNames { \set chordChanges = ##t \Rhythm }
%        \new FretBoards { \set chordChanges = ##t \Rhythm }
%        \new RhythmicStaff = RhythmGuitar \with {
%          instrumentName = "Rhythm guitar"
%        }
%        <<
%          \magnifyStaff #4/7
%          \new Voice \reduceChords \Rhythm
%        >>
%      >>
%      \new Staff = BassGuitar \with {
%        instrumentName = Bass
%        shortInstrumentName = ""
%      }
%      <<
%        \magnifyStaff #4/7
%        \clef bass
%        \new Voice \BassGuitar
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoI} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoISingle
            \addlyrics \wordsSopISingle
          >>
                                % Single soprano II staff
          \new Staff = sopranoII \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoII} \dynamicsVocal
            \new Voice \sopranoIISingle
            \addlyrics \wordsSopIISingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
%          \new ChordNames { \set chordChanges = ##t \Rhythm }
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
%      <<
%        \new ChordNames { \set chordChanges = ##t \Rhythm }
%%        \new FretBoards { \set chordChanges = ##t \Rhythm }
%        \new RhythmicStaff = RhythmGuitar \with {
%          instrumentName = "Rhythm guitar"
%        }
%        <<
%          \magnifyStaff #4/7
%          \new Voice \reduceChords \Rhythm
%        >>
%      >>
%      \new Staff = BassGuitar \with {
%        instrumentName = Bass
%        shortInstrumentName = ""
%      }
%      <<
%        \magnifyStaff #4/7
%        \clef bass
%        \new Voice \BassGuitar
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = "singlepage-sop1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoI} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoISingle
            \addlyrics \wordsSopISingle
          >>
                                % Single soprano II staff
          \new Staff = sopranoII \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranoII} {\teeny \dynamicsVocal}
            \new Voice \sopranoIISingle
            \addlyrics {\tiny \wordsSopIISingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsAltoSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
%          \new ChordNames { \set chordChanges = ##t \Rhythm }
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
%      <<
%        \new ChordNames { \set chordChanges = ##t \Rhythm }
%%        \new FretBoards { \set chordChanges = ##t \Rhythm }
%        \new RhythmicStaff = RhythmGuitar \with {
%          instrumentName = "Rhythm guitar"
%        }
%        <<
%          \magnifyStaff #4/7
%          \new Voice \reduceChords \Rhythm
%        >>
%      >>
%      \new Staff = BassGuitar \with {
%        instrumentName = Bass
%        shortInstrumentName = ""
%      }
%      <<
%        \magnifyStaff #4/7
%        \clef bass
%        \new Voice \BassGuitar
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = "singlepage-sop2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranoI} {\teeny \dynamicsVocal}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoISingle
            \addlyrics {\tiny \wordsSopISingle}
          >>
                                % Single soprano II staff
          \new Staff = sopranoII \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoII} \dynamicsVocal
            \new Voice \sopranoIISingle
            \addlyrics \wordsSopIISingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsAltoSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
%          \new ChordNames { \set chordChanges = ##t \Rhythm }
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
%      <<
%        \new ChordNames { \set chordChanges = ##t \Rhythm }
%%        \new FretBoards { \set chordChanges = ##t \Rhythm }
%        \new RhythmicStaff = RhythmGuitar \with {
%          instrumentName = "Rhythm guitar"
%        }
%        <<
%          \magnifyStaff #4/7
%          \new Voice \reduceChords \Rhythm
%        >>
%      >>
%      \new Staff = BassGuitar \with {
%        instrumentName = Bass
%        shortInstrumentName = ""
%      }
%      <<
%        \magnifyStaff #4/7
%        \clef bass
%        \new Voice \BassGuitar
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranoI} {\teeny \dynamicsVocal}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoISingle
            \addlyrics {\tiny \wordsSopISingle}
          >>
                                % Single soprano II staff
          \new Staff = sopranoII \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranoII} {\teeny \dynamicsVocal}
            \new Voice \sopranoIISingle
            \addlyrics {\tiny \wordsSopIISingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
%          \new ChordNames { \set chordChanges = ##t \Rhythm }
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
%      <<
%        \new ChordNames { \set chordChanges = ##t \Rhythm }
%%        \new FretBoards { \set chordChanges = ##t \Rhythm }
%        \new RhythmicStaff = RhythmGuitar \with {
%          instrumentName = "Rhythm guitar"
%        }
%        <<
%          \magnifyStaff #4/7
%          \new Voice \reduceChords \Rhythm
%        >>
%      >>
%      \new Staff = BassGuitar \with {
%        instrumentName = Bass
%        shortInstrumentName = ""
%      }
%      <<
%        \magnifyStaff #4/7
%        \clef bass
%        \new Voice \BassGuitar
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranoI} {\teeny \dynamicsVocal}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoISingle
            \addlyrics {\tiny \wordsSopISingle}
          >>
                                % Single soprano II staff
          \new Staff = sopranoII \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranoII} {\teeny \dynamicsVocal}
            \new Voice \sopranoIISingle
            \addlyrics {\tiny \wordsSopIISingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \transpose c c, \altoSingle
            \addlyrics \wordsAltoSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
%          \new ChordNames { \set chordChanges = ##t \Rhythm }
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
%      <<
%        \new ChordNames { \set chordChanges = ##t \Rhythm }
%%        \new FretBoards { \set chordChanges = ##t \Rhythm }
%        \new RhythmicStaff = RhythmGuitar \with {
%          instrumentName = "Rhythm guitar"
%        }
%        <<
%          \magnifyStaff #4/7
%          \new Voice \reduceChords \Rhythm
%        >>
%      >>
%      \new Staff = BassGuitar \with {
%        instrumentName = Bass
%        shortInstrumentName = ""
%      }
%      <<
%        \magnifyStaff #4/7
%        \clef bass
%        \new Voice \BassGuitar
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = "midi-sop1"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoI} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoISingle
            \addlyrics \wordsSopIMidi
          >>
                                % Single soprano II staff
          \new Staff = sopranoII \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoII} \dynamicsVocal
            \new Voice \sopranoIISingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \altoSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
      <<
        \new ChordNames { \set chordChanges = ##t \Rhythm }
%        \new FretBoards { \set chordChanges = ##t \Rhythm }
        \new RhythmicStaff = RhythmGuitar \with {
          instrumentName = "Rhythm guitar"
          midiInstrument = "acoustic guitar (nylon)"
        }
        <<
          \new Voice \reduceChords \Rhythm
        >>
      >>
      \new Staff = BassGuitar \with {
        instrumentName = Bass
        shortInstrumentName = ""
        midiInstrument = "acoustic bass"
      }
      <<
        \clef bass
        \new Voice \BassGuitar
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
    output-suffix = "midi-sop2"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoI} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoISingle
          >>
                                % Single soprano II staff
          \new Staff = sopranoII \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoII} \dynamicsVocal
            \new Voice \sopranoIISingle
            \addlyrics \wordsSopIIMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \altoSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
      <<
        \new ChordNames { \set chordChanges = ##t \Rhythm }
%        \new FretBoards { \set chordChanges = ##t \Rhythm }
        \new RhythmicStaff = RhythmGuitar \with {
          instrumentName = "Rhythm guitar"
          midiInstrument = "acoustic guitar (nylon)"
        }
        <<
          \new Voice \reduceChords \Rhythm
        >>
      >>
      \new Staff = BassGuitar \with {
        instrumentName = Bass
        shortInstrumentName = ""
        midiInstrument = "acoustic bass"
      }
      <<
        \clef bass
        \new Voice \BassGuitar
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
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoI} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoISingle
          >>
                                % Single soprano II staff
          \new Staff = sopranoII \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranoII} \dynamicsVocal
            \new Voice \sopranoIISingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \altoSingle
            \addlyrics \wordsAltoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
      <<
        \new ChordNames { \set chordChanges = ##t \Rhythm }
%        \new FretBoards { \set chordChanges = ##t \Rhythm }
        \new RhythmicStaff = RhythmGuitar \with {
          instrumentName = "Rhythm guitar"
          midiInstrument = "acoustic guitar (nylon)"
        }
        <<
          \new Voice \reduceChords \Rhythm
        >>
      >>
      \new Staff = BassGuitar \with {
        instrumentName = Bass
        shortInstrumentName = ""
        midiInstrument = "acoustic bass"
      }
      <<
        \clef bass
        \new Voice \BassGuitar
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
