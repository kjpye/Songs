\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Doris Day Medley"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
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

globalA = {
  \key g \major
  \time 4/4
}

globalB = {
  \key f \major
  \time 4/4
}

globalC = {
  \key f \major
  \time 4/4
}

TempoTrackA = {
}

TempoTrackB = {
  \tempo 4=108
}

TempoTrackC = {
  \tempo "Moderate jump tempo" 4=120
  s1*38
%  \set Score.tempoHideNote = ##t
}

RehearsalTrackA = {
  \set Score.currentBarNumber = #1
  \mark \markup { \box "1a" }  s1*3
  \mark \markup { \box "1b" }  s1*3
  \mark \markup { \box "1c" }  s1*3
  \mark \markup { \box "1d" }  s1*3
  \mark \markup { \box "2a" }  s1*3
  \mark \markup { \box "2b" }  s1*3
  \mark \markup { \box "2c" }  s1*3
  \mark \markup { \box "2d" }  s1*4
  \mark \markup { \box "3a" }  s1*3
  \mark \markup { \box "3b" }  s1*3
  \mark \markup { \box "3c" }  s1*3
  \mark \markup { \box "3d" }  s1*2
}

RehearsalTrackB = {
  \set Score.currentBarNumber = #1
  \mark \markup { \box "1a" }  s1*5
  \mark \markup { \box "1b" }  s1*5
  \mark \markup { \box "1c" }  s1*5
  \mark \markup { \box "2a" }  s1*5
  \mark \markup { \box "2b" }  s1*5
  \mark \markup { \box "2c" }  s1*5
  \mark \markup { \box "3a" }  s1*5
  \mark \markup { \box "3b" }  s1
}

RehearsalTrackC = {
  \set Score.currentBarNumber = #19
  \mark \markup { \box "2c" }  s1*2
%  \repeat volta 2 {
    \set Score.currentBarNumber = #21
    s1
    \mark \markup { \box "2d" } s1*3
    \mark \markup { \box "3a" } s1*3
    \mark \markup { \box "3b" } s1*3
    \mark \markup { \box "3c" } s1*3
    \mark \markup { \box "3d" } s1*3
    \mark \markup { \box "4a" } s1*3
    \mark \markup { \box "4b" } s1*3
    \mark \markup { \box "4c" } s1*3
    \mark \markup { \box "4d" } s1*2
    \mark \markup { \box "5a" } s1*2
    \mark \markup { \box "5b" } s1*2
    \mark \markup { \box "5c" } s1*3
    \mark \markup { \box "5d" } s1
%    \alternative
%  {
%  s1
%  }
%  {
  s1
%  }
%  }
%}
}

ChordTrackA = \chordmode {
  g1
  ees2:7 d:7
  g2 b4/fis e:m
  a2:m d:7 % 1b
  g1
  ees2:7 d:7
  g1 % 1c
  e2:7 b4:m7.5- e:7
  a2:m a:m7
  a1:m7.5- % 1d
  g2 a:9
  d1:7
  g1 % 2a
  ees2:7 d:7
  g1
  e2:7 b:m7.5- % 2b
  a2:m a:m7
  a1:m7.5-
  g2 c4:m7 d:7 % 2c
  g4 c:6/g g bes:7/f
  ees2 ees:6
  bes1:7 % 2d
  ees2 ees:6
  bes4:7 bes:dim7 bes2:7
  ees2 ees:6
  bes1:7 % 3a
  ees1
  d4:7 e:m a:m7 d:7
  g1 % 3b
  ees2:7 d:7
  g1
  e2:7 b4:m7.5- e:7 % 3c
  a2:m a:m7
  a1:m7.5-
  g2 c4:m7 d:7 % 3d
  g1
}

ChordTrackB = \chordmode {
  s1*36
}

ChordTrackC = \chordmode {
  s1*2 % 2c
  c4.:7.5-/ges f8:6 ~ s2
  c4.:7.5-/ges f8:6 ~ s2 % 2d
  c4.:7.5-/ges f8:6 ~ s2
  s2 f4:maj7 f:7
  bes2:6.9 f/a % 3a
  g4.:m7 f8:6 s2
  bes2:maj9 f:9/a
  g4.:m7 f8:6 s2 % 3b
  c4.:7.5-/ges f8:6 s2
  c4.:7.5-/ges f8:6 s2
  c4.:7.5-/ges f8:6 s2 % 3c
  s2 f4:maj7 f:7
  bes2:6.9 f/a
  g4.:m7 f8:6 s2 % 3d
  bes2:maj9 f:9/a
  g4.:m7 f8:6 s2
  a1:13 % 4a
  s2.. d8:9sus
  s1
  s2 d:9 % 4b
  g1:13
  s2.. c8:9sus
  s1 % 4c
  s2 c:9
  c4.:7.5-/ges f8:6 s2
  c4.:7.5- f8:6 s2 % 4d
  c4.:7.5-/ges f8:6 s2
  s2 f4:maj7 f:7 % 5a
  bes2:6.9 f/a
  g4.:m7 f8:6 s2 % 5b
  bes2:maj9 f:9/a
  g4.:m7 f:6 f4:7 % 5c
  bes2:6.9 f/a
  aes2:dim7 g:m7
  s2 c4.:7.9- f8:6 % 5d
  s4 ges8:7.9+ f:6.9 s2
}

melodyA = \relative {
  R1*4
  \tripletFeel 8 {
    g'2 fis8 a fis e % 1b+
    g2 fis
    g2 fis8 g fis e % 1c
    \tuplet 3/2 {gis4 b gis} f e
    a2 g8 a g e
    \tuplet 3/2 {a4 g ees} g2 % 1d
    d8 e g a b4 e
    d1
    g,2 fis8 g fis e % 2a
    g2 fis
    g2 fis8 g fis e
    \tuplet 3/2 {gis4 b gis} f e % 2b
    a2 g8 a g e
    \tuplet 3/2 {a4 g ees} g2
    d8 e g a bes4 a % 2c
    g2. r4
    ees'2 \tuplet 3/2 {c4 ees c}
    \tuplet 3/2 {bes4 g bes} c, d % 2d
    ees'2 \tuplet 3/2 {c4 ees c}
    bes1
    ees2 \tuplet 3/2 {c4 ees c}
    \tuplet 3/2 {bes4 g bes} c, d % 3a
    ees'2 bes4 c
    d1
    g,2 fis8 g fis e % 3b
    g2 fis
    g2 fis8 g fis e
    \tuplet 3/2 {gis4 b gis} f e % 3c
    a2 g8 a g e
    \tuplet 3/2 {a4 g ees} g2
    d8 e g a bes4 a % 3d
    g2. r4
  }
}

melodyB = \relative {
  R1*36
}

melodyC = \relative {
  R1*2 % 2c
  c'4 e8 f~8 f4.
  c4 e8 f~2 % 2d
  c4 e8 f~8 4 e8
  g8 f4 a8~8 c c c
  c4 bes8 a bes a g f % 3a
  g4 d8 f~2~
  f1~
  f2 r % 3b
  c4 e8 f~8 4.
  c4 e8 f~2
  c4 e8 f~8 4 e8 % 3c
  g8 f4 a8~8 c c c
  c4 bes8 a bes a g f
  g4 d8 f~2~ % 3d
  f1~
  f2 r
  a4. 8~2~ % 4a
  a2 8 fis a b~
  b8 4 8~2~
  2. r4 % 4b
  g4. 8~2~
  g2 8 e g a~
  a8 4 8~2~ % 4c
  a2. r4
  c,4 e8 f~8 4.
  c4 e8 f~2 % 4d
  c4 e8 f~8 4 e8
  g8 f4 a8~8 c c c % 5a
  c4 bes8 a bes a g f
  g4 d8 f~2~ % 5b
  f1~
  f4 r r8 c'8 8 8 % 5c
  c4 bes8 a bes a g f
  g4 f8 e f e d4~
  d2 e4. f8~ % 5d
  f2. r4
}

wordsMelodyA = \lyricmode {
  Stars shin -- ing bright a -- bove you,
  night breez -- es seem to whis -- per, "\"I" love "you,\""
  birds sing -- ing in the syc -- a -- more tree,
  dream a lit -- tle dream of me.
  Say "\"night" -- ie -- "night\"" and kiss me.
  Just hold me tight and tell me you'll miss me.
  While I'm a -- lone and blue as can be,
  dream a lit -- tle dream of me.

  Stars fad -- ing, but I lin -- ger on, dear,
  still crav -- ing your kiss;
  I'm long -- ing to lin -- ger to dawn, dear,
  just say -- ing this:
  Sweet dreams till sun -- beams find you,
  sweet dreans that leave all wor -- ries be -- hind you,
  but in your dreams what -- ev -- er they be,
  dream a lit -- tle dream of me.
}

wordsMidiA = \lyricmode {
  "\nStars " shin "ing " "bright " a "bove " "you, "
  "\nnight " breez "es " "seem " "to " whis "per, " "\"I " "love " "you,\" "
  "\nbirds " sing "ing " "in " "the " syc a "more " "tree, "
  "\ndream " "a " lit "tle " "dream " "of " "me. "
  "\nSay " "\"night" ie- "night\" " "and " "kiss " "me. "
  "\nJust " "hold " "me " "tight " "and " "tell " "me " "you'll " "miss " "me. "
  "\nWhile " "I'm " a "lone " "and " "blue " "as " "can " "be, "
  "\ndream " "a " lit "tle " "dream " "of " "me. "

  "\nStars " fad "ing, " "but " "I " lin "ger " "on, " "dear, "
  "\nstill " crav "ing " "your " "kiss; "
  "\nI'm " long "ing " "to " lin "ger " "to " "dawn, " "dear, "
  "\njust " say "ing " "this: "
  "\nSweet " "dreams " "till " sun "beams " "find " "you, "
  "\nsweet " "dreans " "that " "leave " "all " wor "ries " be "hind " "you, "
  "\nbut " "in " "your " "dreams " what ev "er " "they " "be, "
  "\ndream " "a " lit "tle " "dream " "of " "me. "
}

wordsMelodyB = \lyricmode {
}

wordsMelodyC = \lyricmode {
  Got no dia -- mond, got no pearl, __
  still I think __ I'm a luck -- y girl. __
  I got the sun in the morn -- ing and the moon at night. __
  Got no man -- sion, got no yacht, __
  still I'm hap -- py with what I've got. __
  I got the sun in the morn -- ing and the moon at night. __

  Sun -- shine __ gives me a love -- ly day. __
  Moon -- light __ gives me the Milk -- y Way. __
  Got no check -- books, got no banks, __
  still I'd like __ to ex -- press my thanks. __
  I got the sun in the morn -- ing and the moon at night. __
  And with the sun in the morn -- ing and the moon in the eve -- ning,
  I'm __ all right. __
}

wordsMidiB = \lyricmode {
}

wordsMidiC = \lyricmode {
  "Got " "no " dia "mond, " "got " "no " "pearl, " 
  "\nstill " "I " "think "  "I'm " "a " luck "y " "girl. " 
  "\nI " "got " "the " "sun " "in " "the " morn "ing " "and " "the " "moon " "at " "night. " 
  "\nGot " "no " man "sion, " "got " "no " "yacht, " 
  "\nstill " "I'm " hap "py " "with " "what " "I've " "got. " 
  "\nI " "got " "the " "sun " "in " "the " morn "ing " "and " "the " "moon " "at " "night. " 

  "\nSun" "shine "  "gives " "me " "a " love "ly " "day. " 
  "\nMoon" "light "  "gives " "me " "the " Milk "y " "Way. " 
  "\nGot " "no " check "books, " "got " "no " "banks, " 
  "\nstill " "I'd " "like "  "to " ex "press " "my " "thanks. " 
  "\nI " "got " "the " "sun " "in " "the " morn "ing " "and " "the " "moon " "at " "night. " 
  "\nAnd " "with " "the " "sun " "in " "the " morn "ing " "and " "the " "moon " "in " "the " eve "ning, "
  "\nI'm "  "all " "right. " 
}

sopranoA = \relative {
}

sopranoB = \relative {
  R1*4 \bar "||"
  c'4 f f f8. g16
  a2 f4. g8 % 1b
  a4 4 bes4. a8
  a4 g2 e8. f16
  g4 8. f16 e4 8. d16
  c4 e g bes
  a4(c2.~ % 1c
  c2.) r4
  c,4 f f f8. g16
  a2 f4. g8
  a4 4 bes4. a8
  a4 g2 d8. e16 % 2a
  g4 8. f16 e4 8. d16
  c4 bes' d, e
  f1~
  f4 4 g a
  bes4. a8 bes4. a8 % 2b
  c4 bes f g
  a4. g8 a4. g8
  f2. r4
  g4 8. fis16 g4 8. fis16
  g4 a bes b % 2c
  d4 c fis, a
  g2. r4
  c,4 f f f8. g16
  a2 f4. g8
  a4 a bes4. a8 % 3a
  a4 g2 e8. f16
  g4 8. f16 e4 8. d16
  c4 bes' d, e
  f1~
  f4 r r2
}

sopranoC = \relative {
  s1*38
}

wordsA = \lyricmode {
}

wordsSopAboveA = \lyricmode {
}

wordsSopAboveB = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  Take me back to the Black Hills, The
}

wordsSopAboveC = \lyricmode {
}

wordsTenorAboveA = \lyricmode {
}

wordsTenorAboveB = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  Take me back to the Black Hills, The
}

wordsTenorAboveC = \lyricmode {
}

wordsBassBelowA = \lyricmode {
}

wordsBassBelowB = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  Take me back, The
}

wordsBassBelowC = \lyricmode {
}

wordsB = \lyricmode {
  Take me back to the Black Hills,
  The Black Hills of Da -- ko -- ta,
  To the beau -- ti -- ful In -- di -- an coun -- try that I love! __
  Lost my heart in the Black Hills,
  The Black Hills of Da -- ko -- ta
  Where the pines are so high that they kiss the sky a -- bove! __
  And when I get that lone -- some feel -- ing,
  And I'm miles a -- way from home,
  I hear the voice of the my -- stic moun -- tains call -- ing me back \set associatedVoice = alignerA home __
  Take me back, \set associatedVoice = alignerS
  The Black Hills of Da -- ko -- ta,
  to the beau -- ti -- ful In -- di -- an coun -- try that I love. __
}

wordsMidiHigh = \lyricmode {
  "\nTake " "me " "back " "to " "the " "Black " "Hills, "
  "\nThe " "Black " "Hills " "of " Da ko "ta, "
  "\nTo " "the " beau ti "ful " In di "an " coun "try " "that " "I " "love! " 
  "\nLost " "my " "heart " "in " "the " "Black " "Hills, "
  "\nThe " "Black " "Hills " "of " Da ko "ta "
  "\nWhere " "the " "pines " "are " "so " "high " "that " "they " "kiss " "the " "sky " a "bove! " 
  "\nAnd " "when " "I " "get " "that " lone "some " feel "ing, "
  "\nAnd " "I'm " "miles " a "way " "from " "home, "
  "\nI " "hear " "the " "voice " "of " "the " my "stic " moun "tains " call "ing " "me " "back " "home " 
  "\nTake " "me " "back " "to " "the " "Black " "Hills, "
  "\nThe " "Black " "Hills " "of " Da ko "ta, "
  "\nto " "the " beau ti "ful " In di "an " coun "try " "that " "I " "love. " 
}

wordsMidiLow = \lyricmode {
  "Take " "me " "back " "to " "the " "Black " "Hills, "
  "\nThe " "Black " "Hills " "of " Da ko "ta, "
  "\nTo " "the " beau ti "ful " In di "an " coun "try " "that " "I " "love! " 
  "\nLost " "my " "heart " "in " "the " "Black " "Hills, "
  "\nThe " "Black " "Hills " "of " Da ko "ta "
  "\nWhere " "the " "pines " "are " "so " "high " "that " "they " "kiss " "the " "sky " a "bove! " 
  "\nAnd " "when " "I " "get " "that " lone "some " feel "ing, "
  "\nAnd " "I'm " "miles " a "way " "from " "home, "
  "\nI " "hear " "the " "voice " "of " "the " my "stic " moun "tains " call "ing " "me " "back " "home " 
  "\nTake " "me " "back, "
  "\nThe " "Black " "Hills " "of " Da ko "ta, "
  "\nto " "the " beau ti "ful " In di "an " coun "try " "that " "I " "love. " 
}

wordsC = \lyricmode {
}

altoA = \relative {
}

altoB = \relative {
  R1*4 \bar "||"
  c'4 f f f8. g16
  a2 f4. g8 % 1b
  a4 4 bes4. a8
  a4 g2 e8. f16
  g4 8. f16 e4 8. d16
  c4 e g bes
  a4(c2.~ % 1c
  c2.) r4
  c,4 f f f8. g16
  a2 f4. g8
  a4 4 bes4. a8
  a4 g2 d8. e16 % 2a
  g4 8. f16 e4 8. d16
  c4 bes' d, e
  f1~
  f4 4 e ees
  d4. cis8 d4. cis8 % 2b
  d4 4 des des
  c4. 8 cis4. 8
  d2. r4
  f4 8. eis16 f4 8. eis16
  f4 4 e f % 2c
  e4 4 ees4 4
  d4(f e) r
  \once\partCombineApart R1
  c4 f  f4. e8
  f4 4 g4. f8 % 3a
  f4 e2 8. f16
  g4 8. f16 e4 8. d16
  c4 bes' d, e
  f1~
  f4 r r2 % 3b
}

altoC = \relative {
  s1*38
}

wordsAlto = \lyricmode {
}

tenorA = \relative {
}

tenorB = \relative {
  R1*4 \bar "||"
  c4 f f f8. g16
  a2 f4. g8 % 1b
  a4 4 bes4. a8
  a4 g2 e8. f16
  g4 8. f16 e4 8. d16
  c4 e g bes
  a4(c2.~ % 1c
  c2.) r4
  c,4 f f f8. g16
  a2 f4. g8
  a4 4 bes4. a8
  a4 g2 d8. e16 % 2a
  g4 8. f16 e4 8. d16
  c4 bes' d, e
  f1~
  f4 a bes c
  d4. cis8 d4. cis8 % 2b
  d4 4 des4 4
  c4. bes8 a4. 8
  a2. r4
  b4 8. ais16 b4 8. ais16
  b4 c cis d % 2c
  c4 d c c
  b2. r4
  c,4 f f f8. g16
  a2 f4. g8
  a4 4 bes4. a8 % 3a
  a4 g2 e8. f16
  g4 8. f16 e4 8. d16
  c4 bes' d, e
  f1~
  f4 r r2
}

tenorC = \relative {
  s1*38
}

wordsTenor = \lyricmode {
}

bassA = \relative {
}

bassB = \relative {
  R1*4 \bar "||"
  c4 f f f8. g16
  a2 f4. g8 % 1b
  a4 4 bes4. a8
  a4 g2 e8. f16
  g4 8. f16 e4 8. d16
  c4 e g bes
  a4(c2.~ % 1c
  c2.) r4
  c,4 f f f8. g16
  a2 f4. g8
  a4 4 bes4. a8
  a4 g2 d8. e16 % 2a
  g4 8. f16 e4 8. d16
  c4 bes' d, e
  f1~
  f4 4 g a
  bes4. a8 bes4. a8 % 2b
  c4 bes f f
  a4. g8 a4. g8
  f2. r4
  g4 8. fis16 g4 8. fis16
  g4 a g g % 2c
  g4 g a fis
  g2(c,4) r
  \once\partCombineApart R1
  c4 f f4. e8
  f4 f g4. f8 % 3a
  f4 e2 8. f16
  g4 8. f16 e4 8. d16
  c4 bes' d, e
  f1~
  f4 r r2
}

bassC = \relative {
  s1*38
}

wordsBass = \lyricmode {
}

pianoRHoneA = \relative {
  \tripletFeel 8 {
    g'2 fis8 g fis e
    <bes g'>2 <a c fis>
    b'2 a8 b a g
    <e e'>2\arpeggio <d fis d'> % 1b
    g2 fis8 g fis e
    <bes g'>2 <a c fis>
    g'2 fis8 g fis e % 1c
    \tuplet 3/2 {gis4 b gis} f e
    a2 g8 a g e
    \tuplet 3/2 {a4 g ees} g2 % 1d
    d8 e g a b4 e
    <fis, d'>1
    g2 fis8 g fis e % 2a
    <bes g'>2 fis'
    g2 fis8 g fis e
    \tuplet 3/2 {gis4 b gis} f e % 2b
    a2 g8 a g e
    \tuplet 3/2 {a4 g ees} g2
    d8 e g a bes4 a % 2c
    g2~4 r4
    <ees ees'>2 \tuplet 3/2 {c'4 ees c}
    \tuplet 3/2 {bes4 g bes} c, d % 2d
    <ees ees'>2 \tuplet 3/2 {c'4 ees c}
    bes1
    <ees, ees'>2 \tuplet 3/2 {c'4 ees c}
    \tuplet 3/2 {bes4 g bes} c, d % 3a
    ees'2 bes4 c
    d1
    g,2 fis8 g fis e % 3b
    <bes g'>2 fis'
    g2 fis8 g fis e
    \tuplet 3/2 {gis4 b gis} f e % 3c
    a2 g8 a g e
    \tuplet 3/2 {a4 g ees} g2
    d8 e g a bes4 a % 3d
    g2 <g b d g>4\arpeggio r
  }
}

pianoRHtwoA = \relative {
  \tripletFeel 8 {
    r4 <b d> q2
    d8 ees d4 s2
    r4 <b d> <b dis> <b e>
    r4 <g' c> b a % 1b
    r4 <b, d> q2
    d8 ees d4 <a c>2
    r4 <b d>4 2 % 1c
    d2 4 4
    r4 <c e> c2
    c2. <a c>4 % 1d
    b4 <b d> <cis g'> <g' b>
    b4 bes bes a
    r4 <b, d> q2 % 2a
    d8 ees d4 <a c>2
    r4 <b d> q2
    d2 4 4 % 2b
    r4 <c e> c2
    c2. <a c>4
    b4 <b d> <c ees> <c d> % 2c
    <b d>4 <a c> <b d> <bes d aes'>
    r4 <g' bes> <e g>2
    d2 aes % 2d
    r4 <g' bes> <ees g>2
    <d f>4 <cis e> d2
    r4 <g bes> <e g>2
    d2 aes % 3a
    r4 <ees' g> q2
    <d fis>4 <e g> <g b> <fis a>
    r4 <b, d> q2 % 3b
    d8 ees d4 <a c>2
    r4 <b d> q2
    d2 4 4 % 3c
    r4 <c e> c2
    c2. <a c>4
    b4 <b d> <c ees> <c d> % 3d
    <b d>2 s
  }
}

pianoRHoneB = \relative {
  f'1^\markup\bold "The Black Hills of Dakota" ~
  f2. r4
  <a, c>2(<bes d>
  <a c>2 <g bes>)
  <a c>2(<bes d>
  <a c>1) % 1b
  c2(d
  e1)
  c2(d
  c e)
  f2. d'8.(c16) % 1c
  bes8.(a16) g8.(f16) e8.(f16 e8. d16)
  r4 <a c f> r <bes d f>
  r4 <a c f> r q
  r4 q r <bes d f>
  r4 <bes c e> r q % 2a
  r4 q r q
  r4 q r q
  << {r4 <a c f> r <bes d f> | <a c f>4 r r2} \new Voice {\teeny \voiceThree r4 g''8.^\markup "muted Tpt." (c16) bes8.(a16 g8. f16) | a4 f(g a)} >>
  <f,, f'>1~ % 2b
  q2 des'(
  c2 cis
  d2) cis4-- c--
  r4 <f g> r q
  <b, f' g>4 <c f a> <cis e bes'> <d f b> % 2c
  <e g c>4 <d e bes'> <a c ees fis> <c ees fis a>
  g'2. r4
  <a, c>2( <bes d>
  <a c>1)
  <a c>2( <bes d> % 3a
  <a f'>4 <bes e>2.
  c2(d
  c2 d4 e)
  <a, f'>4(<f' a>8. <a c>16 <bes d>4 <g bes>
  <c, f a>8) r <a c e>4(<a c g'> <a c f>
}

pianoRHtwoB = \relative {
  <a c>2(<bes d>
  <a c>2 <g bes>)
  s1*4
  a2(bes % 1b+
  c2 bes)
  bes1~
  bes1
  a2(c4) <f a> % 1c
  <d f>4 <bes d> bes2
  c2(d
  c1)
  c2(d
  c1~) % 2a
  c1~
  c1
  <a c>2(<bes d>
  <a c>4) r r2
  r4 <bes d> r q % 2b
  r q r <f bes>
  r4 <f a> r q
  r4 <f a> r q
  b1
  s1 % 2c
  s1
  \once\partCombineApart r4 <bes d f> r <bes c e>
  s1
  s1
  s1 % 3a
  s1
  bes1~
  bes1
  s4 c c2
  s1
}

pianoRHoneC = \relative {
  <e bes' c>1^\markup\bold "I Got the Sun in the Morning" % 2c
  q
  c'4 e8 f~8 4.
  c4 e8 f~2 % 2d
  c4 e8 f~8 4 e8
  <e g>8 <d f>4 a'8~8 c c c
  c4 bes8 a bes a g f % 3a
  g4 d8 f~f \appoggiatura b'8 c8 8 8
  c4 bes8 a bes a g f
  g4 d8 f~2 % 3b
  c,4 e8 f~8 4.
  c4 e8 f~2
  c4 e8 f~8 4 e8 % 3c
  <e g>8 <d f>4 a'8~8 c c c
  c4 bes8 a bes a g f
  g4 d8 f~f \appoggiatura b'8 c c c % 3d
  c4 bes8 a bes a g f
  g4 d8 f~2
  a,4. 8~2~ % 4a
  a2 8 fis a b~
  b8 4 8~2
  r8 <d, d'>4. bes'4 a % 4b
  g4. 8~2~
  g2 8 e g a~
  a8 4 8~2 % 4c
  r8 <c, c'>4. a'4 g
  c,4 e8 f~8 4.
  c4 e8 f~2 % 4d
  c4 e8 f~8 4 e8
  g8 f4 a8~8 c c c % 5a
  c4 bes8 a bes a g f
  g4 d8 f~8 \appoggiatura b'8 c c c % 5b
  c4 bes8 a bes a g f
  g4 d8 f~8 c c c % 5c
  c4 bes8 a bes a g f
  g4 f8 e f e d4~
  d2 e4. f8~ % 5d
  f4 a8 c~4 r
}

pianoRHtwoC = \relative {
  s1*2
  <e bes'>4. <a c d>8~8 4.
  <e bes'>4. <a c d>8~2 % 2d
  <e bes'>4. <a c d>8~8 4. 
  a4. <c e>8~4 <ees a>
  <d g>2 c % 3a
  bes4. <a d>8~8 s4.
  s1
  s1 % 3b
  <e bes'>4. <a c d>8~8 4.
  <e bes'>4. <a c d>8~2
  <e bes'>4. <a c d>8~8 4 s8 % 3c
  a4. <c e>8~4 <ees a>
  <d g>2 c
  bes4. <a d>8~8 s4. % 3d
  s1
  s1
  <cis fis>4. 8~2~ % 4a
  q2 cis4. <c e>8~
  q8 4 8~2
  s2 <c e> % 4b
  <b e>4. 8~2~
  q2 b4. <bes d>8~
  q8 4 8~2 % 4c
  s2 <bes d>
  <e, bes'>4. <a c d>8~8 4.
  <e bes'>4. <a c d>8~2 % 4d
  <e bes'>4. <a c d>8 8 4 s8
  a4. <c e>8~4 <ees a> % 5a
  <d g>2 c
  bes4. <a d>8~8 s4. % 5b
  s1
  s1 % 5c
  <d g>2 c
  b2 bes~
  bes2 <bes des>4. <a d>8~ % 5d
  q4 <bes e>8 <d g>~4 r4
}

dynamicsPianoA = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1*35
}

dynamicsPianoB = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s2\> s\!
  s1\mp
  s1
  s1\mp
  s1*5
  s2 s\< % 1c
  s2\> s\!
  s1\mp
  s1*7
  s1\mp % 2b
  s1*5
  s2\< s\! % 2c+
  s2\> s\!
  s1\mp
  s1*6
  s4 s2\> s4\!
}

dynamicsPianoC = {
  \override DynamicTextSpanner.style = #'none
  s1-\markup\italic "poco accel." % 2c
  s1*37
}

pianoLHoneA = \relative {
  \tripletFeel 8 {
    d1
    <ees, ees'>2 d'8 e d4
    \appoggiatura g,8 g'2 fis4 e
    <a, e' c'>2\arpeggio <d c'> % 1b
    d1
    <ees, ees'>2 d'8 e d4
    d1 % 1c
    <e, b' gis'>2\arpeggio <b' a'>4 <e g>
    <a, a'>4 r <a e'>2
    <a ees'>2. <ees ees'>4 % 1d
    <g d'>4 r <e e'> <a e' cis'>\arpeggio
    d'2 des4 c
    d,1 % 2a
    <ees, ees'>2 d'8 e d4
    d1
    <e, b' gis'>2 <b' a'>4 <e g> % 2b
    <a, a'>4 r <a e'>2
    <e ees'>2. <ees ees'>4
    <g d'>4 r <c g'> <d fis> % 2c
    r4 e <g, d'> <f f'>
    bes2 c
    <bes aes'>2 <bes f'> % 2d
    bes2 c
    aes'4 g aes2
    bes,2 c
    <bes aes'>2 <bes f'> % 3a
    <ees, bes' g'>2\arpeggio <ees' bes'>2
    a4 b c2
    d,1 % 3b
    <ees, ees'>2 d'8 e d4
    d1
    <e, b' gis'>2\arpeggio <b' a'>4 <e g> % 3c
    <a, a'>4 r <a e'>2
    <a ees'>2. <ees ees'>4
    <g d'>4 r <c g'> <d fis> % 3d
    d8 e d4 <g, d' b'>4\arpeggio r
  }
}

pianoLHtwoA = \relative {
  \tripletFeel 8 {
    g,2 d
    s2 d4 r
    s1
    s1 % 1b
    g2 d
    s2 d4 r
    g2 d % 1c
    s1*4
    d'1 % 1d++
    g,2 d % 2a
    s2 d4 r
    g2 d
    s1*4
    g2 s % 2c+
    ees1
    s1 % 2d
    ees1
    bes'2. 4
    ees,1
    s1 % 3a
    s1
    d'1
    g,2 d % 3b
    s2 d4 r
    g2 d
    s1*4
    g2 s4 r
  }
}

pianoLHoneB = \relative {
  \repeat unfold 38 {r8. c16(d8. c16)}
  f,4 r r2
  <bes, bes'>4 r f' r % 2b
  q4 r g r
  <c, c'>4 r a' r
  <d, d'>4 r q r
  g4 r d r
  d'2 e4 f % 2c
  c1(
  d2 e)
  \repeat unfold 14 {r8. c16(d8. c16)}
  f,8 r e'4(g f)
}

pianoLHtwoB = \relative {
  \repeat unfold 19 {f,4 r c r}
  s1*6
  \partCombineApart g'4 r g r % 2c
  c,4 r c r
  g'4 r c, r
  f4 r bes, r
  f'4 r c r
  f4 r f r % 3a
  c4 r c r
  c4 r c r
  c4 r c r
  f4 r bes, r
  s1
}

pianoLHoneC = \relative {
  r8 d c r bes2 % 2c
  a4 c8 aes r g4.
  ges4. f8~4 r
  ges4. f8~8 c'4. % 2d
  ges4. f8~4 r
  c4 r f f'
  <bes, f>2 <a f'> % 3a
  <g f'>4. <f c'>8~2
  <bes' d a'>2 <a c g'>
  <g bes d f>4. <f a c d>8~2 % 3b
  ges,4. f8~4 r
  ges4. f8~8 c'4.
  ges4. f8~4 r % 3c
  a4 r f f'
  <bes, f'>2 <a f'>
  <g f'>4. <f c'>8~2 % 3d
  <bes' d a'>2 <a c g'>
  <g bes d f>4. <f a c d>8~2
  <a, g'>4. g'8~2~ % 4a
  g2 <a, g'>4. <d g>8~
  q8 4 8~2
  d,2 <d' fis> % 4b
  <g, f'>4. f'8~2~
  f2 <g, f'>4. <c f>8~
  q8 4 8~2 % 4c
  c,2 <c' e>
  ges4. f8~4 r
  ges4. f8~8 c'4. % 4d
  ges4. f8~4 r
  c4 r f f' % 5a
  <bes, f'>2 <a f'>
  <g f'>4. <f c'>8~2 % 5b
  <bes' d a'>2 <a c g'>
  <g bes d f>4. d'8~4 ees % 5c
  <bes, f'>2 <a f'>
  <aes f>2 <g f'>2~
  q4 d c4. <f c>8~ % 5d
  q4 <ges des'>8 <f c' a'>~4 r
}

pianoLHtwoC = \relative {
  s1*18
  s4. a,8~8 des e g,~ % 4a
  a2 s
  s1
  s1 % 4b
  s4. g8~8 cis d g,~
  g2 s
  s1*9
  s4. <f' a c>8~2
  s1*4
}

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrackC \ChordTrackB \ChordTrackA }
%        \new FretBoards { \ChordTrackC \ChordTrackB \ChordTrackA }
      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            instrumentName = #"All"
            shortInstrumentName = #"All"
          }
          <<
            \new Voice {\TempoTrackC \TempoTrackB \TempoTrackA}
            \new Voice {\RehearsalTrackC \RehearsalTrackB \RehearsalTrackA}
            \new Voice {\globalC \melodyC \melodyB \globalA \melodyA}
            \addlyrics {\wordsMelodyC \wordsMelodyB \wordsMelodyA}
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine {\sopranoC \break \globalB \sopranoB \break \sopranoA}
                                    {\altoC    \altoB    \altoA}
            \new NullVoice = alignerA {\altoC \altoB \altoA}
            \new NullVoice = alignerS {\sopranoC \sopranoB \sopranoA}
            \addlyrics {\wordsC \wordsB \wordsA}
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAboveB
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\tenorC \tenorB \tenorA} {\bassC \bassB \bassA}
            \new NullVoice = alignerT {\tenorC \tenorB \tenorA}
            \new NullVoice = alignerB {\bassC  \bassB  \bassA }
            \addlyrics \wordsBassBelowB
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenorAboveB
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine {\globalC \pianoRHoneC \globalB \pianoRHoneB \globalA \pianoRHoneA} {\globalC \pianoRHtwoC \pianoRHtwoB \pianoRHtwoA}
          >>
          \new Dynamics {\dynamicsPianoC \dynamicsPianoB \dynamicsPianoA}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\globalC \pianoLHoneC \globalB \pianoLHoneB \globalA \pianoLHoneA} {\pianoLHtwoC \pianoLHtwoB \pianoLHtwoA}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
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
   \unfoldRepeats
    <<
      <<
        \new ChordNames { \ChordTrackC \ChordTrackB \ChordTrackA }
%        \new FretBoards { \ChordTrackC \ChordTrackB \ChordTrackA }
      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            instrumentName = #"All"
            shortInstrumentName = #"All"
          }
          <<
            \new Voice {\TempoTrackC \TempoTrackB \TempoTrackA}
            \new Voice {\RehearsalTrackC \RehearsalTrackB \RehearsalTrackA}
            \new Voice {\globalC \melodyC \melodyB \globalA \melodyA}
            \addlyrics {\wordsMelodyC \wordsMelodyB \wordsMelodyA}
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine {\sopranoC \break \globalB \sopranoB \break \sopranoA}
                                    {\altoC    \altoB    \altoA}
            \new NullVoice = alignerA {\altoC \altoB \altoA}
            \new NullVoice = alignerS {\sopranoC \sopranoB \sopranoA}
            \addlyrics {\wordsC \wordsB \wordsA}
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAboveB
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\tenorC \tenorB \tenorA} {\bassC \bassB \bassA}
            \new NullVoice = alignerT {\tenorC \tenorB \tenorA}
            \new NullVoice = alignerB {\bassC  \bassB  \bassA }
            \addlyrics \wordsBassBelowB
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenorAboveB
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine {\globalC \pianoRHoneC \globalB \pianoRHoneB \globalA \pianoRHoneA} {\globalC \pianoRHtwoC \pianoRHtwoB \pianoRHtwoA}
          >>
          \new Dynamics {\dynamicsPianoC \dynamicsPianoB \dynamicsPianoA}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\globalC \pianoLHoneC \globalB \pianoLHoneB \globalA \pianoLHoneA} {\pianoLHtwoC \pianoLHtwoB \pianoLHtwoA}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-high"
  \score {
    \unfoldRepeats
                                %   \articulate
    <<
      <<
        \new ChordNames { \ChordTrackC \ChordTrackB \ChordTrackA }
                                %        \new FretBoards { \ChordTrackC \ChordTrackB \ChordTrackA }
      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            instrumentName = #"All"
            shortInstrumentName = #"All"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\TempoTrackC \TempoTrackB \TempoTrackA}
            \new Voice {\RehearsalTrackC \RehearsalTrackB \RehearsalTrackA}
            \new Voice {\globalC \melodyC \melodyB \globalA \melodyA}
            \addlyrics {\wordsMidiC \wordsMidiB \wordsMidiA}
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\globalC \sopranoC \globalB \sopranoB \globalA \sopranoA}
            \addlyrics \wordsMidiHigh
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\altoC \altoB \altoA}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice {\tenorC \tenorB \tenorA}
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice {\bassC \bassB \bassA}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine {\globalC \pianoRHoneC \globalB \pianoRHoneB \globalA \pianoRHoneA} {\globalC \pianoRHtwoC \pianoRHtwoB \pianoRHtwoA}
          >>
          \new Dynamics {\dynamicsPianoC \dynamicsPianoB \dynamicsPianoA}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\globalC \pianoLHoneC \globalB \pianoLHoneB \globalA \pianoLHoneA} {\pianoLHtwoC \pianoLHtwoB \pianoLHtwoA}
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-low"
  \score {
    \unfoldRepeats
                                %   \articulate
    <<
      <<
        \new ChordNames { \ChordTrackC \ChordTrackB \ChordTrackA }
                                %        \new FretBoards { \ChordTrackC \ChordTrackB \ChordTrackA }
      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            instrumentName = #"All"
            shortInstrumentName = #"All"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\TempoTrackC \TempoTrackB \TempoTrackA}
            \new Voice {\RehearsalTrackC \RehearsalTrackB \RehearsalTrackA}
            \new Voice {\globalC \melodyC \melodyB \globalA \melodyA}
            \addlyrics {\wordsMidiC \wordsMidiB \wordsMidiA}
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\globalC \sopranoC \globalB \sopranoB \globalA \sopranoA}
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\altoC \altoB \altoA}
            \addlyrics \wordsMidiLow
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice {\tenorC \tenorB \tenorA}
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice {\bassC \bassB \bassA}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine {\globalC \pianoRHoneC \globalB \pianoRHoneB \globalA \pianoRHoneA} {\globalC \pianoRHtwoC \pianoRHtwoB \pianoRHtwoA}
          >>
          \new Dynamics {\dynamicsPianoC \dynamicsPianoB \dynamicsPianoA}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\globalC \pianoLHoneC \globalB \pianoLHoneB \globalA \pianoLHoneA} {\pianoLHtwoC \pianoLHtwoB \pianoLHtwoA}
          >>
        >>
      >>
    >>
    \midi {}
  }
}
