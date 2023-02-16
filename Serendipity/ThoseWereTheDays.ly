\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Those Were the Days"
  subtitle    = "(sung with Alto and Tenor lines swapped)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Gene Raskin"
  arranger    = "Arr. Norman Leyden"
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
  \key bes \major
  \time 2/4
  \partial 4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Freely 4=110
  s4. s2*4|
  \tempo Freely 4=110
  s2*6 |
  s2*6 | % 3a
  s2 | s | \tempo \markup\italic rall. 4=100 | s | s | s | s |
  \tempo "Steady, moderate tempo" 4=110 s2*5 |
  s2*16 | % 4
  s2 | s4 \tempo\markup\italic rall. 4=100 s | s2 | s | s | % 5a
  \tempo Freely 4=110 s2*5 |
  s2*5 |
  s2*6 | % 6a
  \tempo \markup\italic rall. 4=110 s2 | s | \tempo "Steady, moderate tempo" 4=120 s | s | s |
  s2*5 |
  s2*12 | % 7
  s2*15 | % 8
  s2*15 | % 9
  s2*4 | % 10a
  \tempo Slower 4=100 s2*4 |
  s2 | s | s4 \tempo\markup\italic rall. 4=95 s | s2 | s4 \tempo 4=47 s | s2 |
  \tempo "Steady tempo" 4=100 s2*15 | % 11
  s2*5 | % 12a
  s2 | s | \tempo 4=95 s | s4 \tempo 4=50 s | \tempo\markup\italic "a tempo (faster)" 4=110 s |
  s2*5 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "2a" } s4. s2*4
  \mark     \markup { \circle "A" }
  \textMark \markup { \box "2b" }     s2*6
  \textMark \markup { \box "3a" }     s2*6
  \textMark \markup { \box "3b" }     s2*6
  \mark     \markup { \circle "B" }
  \textMark \markup { \box "3c" }     s2*5
  \textMark \markup { \box "4a" }     s2*5
  \textMark \markup { \box "4b" }     s2*6
  \mark     \markup { \circle "C" }
  \textMark \markup { \box "4c" }     s2*5
  \textMark \markup { \box "5a" }     s2*5
  \mark     \markup { \circle "D" }
  \textMark \markup { \box "5b" }     s2*5
  \textMark \markup { \box "5c" }     s2*5
  \textMark \markup { \box "6a" }     s2*6
  \textMark \markup { \box "6b" }     s2*2
  \mark     \markup { \circle "E" }   s2*3
  \textMark \markup { \box "6c" }     s2*5
  \textMark \markup { \box "7a" }     s2*4
  \textMark \markup { \box "7b" }     s2*4
  \mark     \markup { \circle "F" }
  \textMark \markup { \box "7c" }     s2*4
  \textMark \markup { \box "8a" }     s2*4
  \textMark \markup { \box "8b" }     s2*6
  \mark     \markup { \circle "G" }
  \textMark \markup { \box "8c" }     s2*5
  \textMark \markup { \box "9a" }     s2*5
  \textMark \markup { \box "9b" }     s2*6
  \mark     \markup { \circle "H" }
  \textMark \markup { \box "9c" }     s2*4
  \textMark \markup { \box "10a" }    s2*4
  \textMark \markup { \box "10b" }    s2*4
  \textMark \markup { \box "10c" }    s2*6
  \mark     \markup { \circle "I" }
  \textMark \markup { \box "11a" }    s2*5
  \textMark \markup { \box "11b" }    s2*5
  \textMark \markup { \box "11c" }    s2*5
  \textMark \markup { \box "12a" }    s2*5
  \textMark \markup { \box "12b" }    s2*5
  \textMark \markup { \box "12c" }    s2*5
}

dynamicsSolo = {
  s4. s2*96
  s2\mf | s2*4
}

solo = \relative {
  s4. s2*96 |
  \break \key c \major e'8^\markup "(Solo or unis. - Boy or Girl)" 8 a b | c b a gis | b a4.~ | 2 | e8 8 f g | % 8c
  a8 e f e | d2~ | d | a'8 8 b c | d c b a | % 9a
  c8 a4.~ | 2 | b8 a gis a | b a gis a | b2~ | b \section |
  e,8^\markup\bold Altos 8 a b | c b a gis | b a4.~ | 4. 8 |
  e8 e f g | a e f e | d2~ | d \break | % 10a
}

wordsSolo = \lyricmode {
  Just to -- night I stood be -- fore the ta -- vern. __
  No -- thing seemed the way it used to be __
  In the glass I saw a strange re -- flec -- tion. __
  Was that lone -- ly per -- son real -- ly me? __

  Through the door there came fa -- mil -- iar laugh -- ter, __
  I saw your face and heard you call my name. __
}

wordsSoloMidi = \lyricmode {
  "Just " to "night " "I " "stood " be "fore " "the " ta "vern. " 
  "\nNo" "thing " "seemed " "the " "way " "it " "used " "to " "be " 
  "\nIn " "the " "glass " "I " "saw " "a " "strange " re flec "tion. " 
  "\nWas " "that " lone "ly " per "son " real "ly " "me? " 

  "\nThrough " "the " "door " "there " "came " fa mil "iar " laugh "ter, " 
  "\nI " "saw " "your " "face " "and " "heard " "you " "call " "my " "name. " 
}

dynamicsWomen = {
  \partial 4.
  s8\mf s4\< | s2\! | s | s4 s\> | s s\! |
  s2*6 |
  s2 | s4. s8\mf | s2 | s | s | s | % 3a
  s2 | s | s | s | s4 s\f | s2 |
  s2*5 |
  s2*5 | % 4a
  s2 | s | s | s | s | s8 s4.\f |
  s2*5 |
  s2*5 | % 5a
  s2\mf | s | s | s | s |
  s2*5 |
  s2*6 | % 6a
  s4 s\f | s2 | s | s | s |
  s2*5 |
  s2*4 | % 7a
  s2 | s | s | s8 s4.\f |
  s2*4 |
  s2*4 | % 8a
  s2*6 |
  s2\p | s | s | s | s |
  s2*15 | % 9
  s2*4 | % 10a
  s4\mf s-\markup\italic ten. | s2 | s | s |
  s2 | s | s | s | s4 s\f | s2 |
  s2*15 | % 11
  s8 s4.\f | s2 | s | s | s | % 12a
  s2*5 |
  s2*5 |
}

soprano = \relative {
  \global
  g'8 a bes | d4. c8 | bes8 aes^\markup\italic unis. g fis | g2~ | g \section |
  R2*6 |
  R2 | r4 r8 c,8^\markup\italic unis. | g'8 8 a bes | c bes a g | bes8(g4.)~  | 4. 8 | % 3a
  a8 g fis g | a g fis g | a2~ | a~ | 8 r bes4 | bes a \section
  a4 g8 8~ | 8 8 8 f | 4 ees8 8~ | 8 c d ees | f4. g8 |
  a8 g f ees | d2~ | 8 bes c d | f4 ees8 8~ | 8 8 f g | % 4a
  c4 bes8 8~ | 8 g a bes | d4 c8 bes~ | 8 a^\markup\italic unis. g fis | g2~ | 8 bes bes a \section |
  a4 g8 8~ | 8 8 8 f | 4 ees8 8~ | 8 c d ees | d4. fis8 |
  bes8 a g fis | g2~ | g~ | g~ | g \section | % 5a
  d8 8 g a | bes a g fis | a g4.~ | 4 r8 \partCombineApart r | R2 |
  R2 | R | R | \partCombineAutomatic R | R |
  R2*6 | % 6a
  r4 bes | bes a \section | 4 g8 8~ | 8 8 8 f | 4 ees8 8~ |
  ees8 c d ees | f4. g8 | a g f ees | d2~ | 8 bes c d |
  f4 ees8 8~ | 8 8 f g | c4 bes8 8~ | 8 g a bes | % 7a
  d4 c8 bes~ | 8 a g fis | g2~ | 8 bes bes a \section |
  a4 g8 8~ | 8 8 8 f | 4 ees8 8~ | 8 c d ees |
  d4. fis8 | bes a g fis | g2~ | g~ | % 8a
  g2~ | g \section \key c \major | R2*4 |
  e2( | f() | fis() | f) | e4( f8 g |
  a4. g8 | f2) ~ | f | f~ | f( | % 9a
  e2)~ | 4 \breathe 4( | dis2)( | fis | e)~ | e \section |
  e2( | f)( | fis)( | f) |
  e4(f8 g | a4. g8 | f2)~ | f | % 10a
  a8 8 b c | d c b a | c a4.~ | 4. 8 |
  b8 a gis a | b a gis a | b2~ | b | r4^\markup\italic unis. c4\fermata | c\fermata b\fermata |
  b4 a8 a~ | a a a g | g4 f8 8~ | 8 d e f | g4. a8 | % 11a
  b8 a g f | e2~ | 8 c d e | g4 f8 8~ | 8 8 g a |
  d4 c8 8~ | 8 a b c | e4 d8 c~ | c b^\markup\italic unis. a gis | a2~ |
  a8 c c b | b4 a8 8~ | 8 8 8 g | 4 e8 8~ | 8 d' e f | % 12a
  e2~ | e~ | 4 4 | 4 4\fermata | 2~ |
  e2~ | e~ | e~ | 8 r r4 | R2 |
  \bar "|."
}

wordsSopAbove = \lyricmode {
  \repeat unfold 257 \skip 1
  days __
}

words = \lyricmode {
  Those were the days
  Oh yes, those were the \set associatedVoice = alignerB days. __
  Once up -- on a time there was a tav -- ern __
  where we used to raise a glass or \set associatedVoice = alignerS two. __
  Re -- mem -- ber how we laughed a -- way the hours __
  and dreamed of all the great things we would do? __

  Those were the days, my friend __
  We thought they'd ne -- ver end, __
  We'd sing and dance for -- ev -- er and a day. __
  We'd live the life we choose, __
  We'd fight and ne -- ver lose, __
  For we were young and sure __ to have our way. __
  Lah dah dah dah dah dah,
  Lah dah dah dah dah dah, __
  Those were the days,
  Oh yes, those were the days. __

  Then the bu -- sy years went rush -- ing by \set associatedVoice = alignerA us. __
  We lost our star -- ry no -- tions on the \set associatedVoice = alignerB way. __
  If by chance I'd see you in the ta -- vern
  we'd smile at one an -- o -- ther and we'd \set associatedVoice = alignerS say, __
  Those were the days, my friend, __
  We thought they'd ne -- ver end; __
  We'd sing and dance for e -- ver and a day. __
  We'd live the life we choose, __
  We'd fight and ne -- ver lose, __
  For we were young and sure __ to have our way. __
  Lah dah dah dah dah dah, __
  Lah dah dah dah dah dah, __
  Those were the days,
  Oh yes, those were the days. __

  oo __ oo __ oo __ oo __ oo __ oo __

  Oh, my friends, we're old -- er but no wis -- er, __
  For in our hearts the dreams are still the same __
  Those were the days, my friend, __
  We thought they'd ne -- ver end; __
  We'd sing and dance for -- e -- ver and a day. __
  We'd live the life we choose, __
  We'd fight and ne -- ver lose, __
  For we were young and sure __ to have our way. __
  Lah dah dah dah dah dah, __
  Lah dah dah dah dah dah, __
  \set associatedVoice = alignerA
  Those were the days __
  Oh yes, those were the days! __
}

alto = \relative {
  \global
  g'8 a bes | fis4. g8 | g a g fis | g2~ | g |
  R2*6 |
  R2 | r4 r8 c,8^\markup\italic unis. | g'8 8 a bes | c bes a g | bes8(g4.)~  | 4. 8 | % 3a
  a8 g fis g | a g fis g | a2~ | a~ | 8 r bes4 | bes a \section
  a4 g8 8~ | 8 8 8 f | 4 ees8 8~ | 8 c d ees | f4. g8 |
  a8 g f ees | d2~ | 8 bes c d | f4 ees8 8~ | 8 8 f g | % 4a
  c4 bes8 8~ | 8 g a bes | fis4 g8 g~ | g a g fis | g2~ | 8 bes bes a \section |
  a4 g8 8~ | 8 8 8 f | 4 ees8 8~ | 8 c d ees | d4. fis8 |
  bes8 a g fis | g2~ | g~ | g~ | g \section | % 5a
  \partCombineApart R2 | R | R | r4 r8 g | d d ees f |
  g8 d ees d | c2~ | 2 | \partCombineAutomatic R | R |
  R2*6 | % 6a
  r4 bes' | bes a \section | 4 g8 8~ | 8 8 8 f | 4 ees8 8~ |
  ees8 c d ees | f4. g8 | a g f ees | d2~ | 8 bes c d |
  f4 ees8 8~ | 8 8 f g | c4 bes8 8~ | 8 g a bes | % 7a
  fis4 g8 g~ | 8 a g fis | g2~ | 8 bes bes a \section |
  a4 g8 8~ | 8 8 8 f | 4 ees8 8~ | 8 c d ees |
  d4. fis8 | bes a g fis | g2~ | g~ | % 8a
  g2~ | g \section \key c \major | R2*4 |
  c,2( | d() | c() | d) | cis2~ |
  cis2( | d2) ~ | 2 | 2~ | d( | % 9a
  c2)~ | 4 \breathe 4( | b2)( | dis | e)~ | e \section |
  c2( | d)( | c)( | d) |
  cis2~ | 2( | d2)~ | d | % 10a
  f8 8 8 8 | f e d f | e c4.~ | c e8 |
  dis8 8 8 8 | 8 8 8 8 | d2~ | 2 | r4 c'4\fermata | c\fermata b\fermata |
  b4 a8 a~ | a a a g | g4 f8 8~ | 8 d e f | g4. a8 | % 11a
  b8 a g f | e2~ | 8 c d e | g4 f8 8~ | 8 8 g a |
  f4 e8 8~ | 8 a b c gis4 a8 8~ | a b^\markup\italic unis. a gis | a2~ |
  a8 c c b | b4 a8 8~ | 8 8 8 g | 4 e8 8~ | 8 d e f | % 12a
  e2~ | e4 gis | c4 b4 | a4 gis4\fermata | <a cis>2~ |
  q2~ | q~ | q~ | 8 r r4 | R2 |
  \bar "|."
}

wordsSopMidi = \lyricmode {
  "Those " "were " "the " "days "
  "\nOh " "yes, " "those " "were " "the " "days. " 
  "\nRe" mem "ber " "how " "we " "laughed " a "way " "the " "hours " 
  "\nand " "dreamed " "of " "all " "the " "great " "things " "we " "would " "do? " 

  "\nThose " "were " "the " "days, " "my " "friend " 
  "\nWe " "thought " "they'd " ne "ver " "end, " 
  "\nWe'd " "sing " "and " "dance " for ev "er " "and " "a " "day. " 
  "\nWe'd " "live " "the " "life " "we " "choose, " 
  "\nWe'd " "fight " "and " ne "ver " "lose, " 
  "\nFor " "we " "were " "young " "and " "sure "  "to " "have " "our " "way. " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, "
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nThose " "were " "the " "days, "
  "\nOh " "yes, " "those " "were " "the " "days. " 

  "\nThen " "the " bu "sy " "years " "went " rush "ing " "by " "us. " 

  "\nThose " "were " "the " "days, " "my " "friend, " 
  "\nWe " "thought " "they'd " ne "ver " "end; " 
  "\nWe'd " "sing " "and " "dance " "for " e "ver " "and " "a " "day. " 
  "\nWe'd " "live " "the " "life " "we " "choose, " 
  "\nWe'd " "fight " "and " ne "ver " "lose, " 
  "\nFor " "we " "were " "young " "and " "sure "  "to " "have " "our " "way. " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nThose " "were " "the " "days, "
  "\nOh " "yes, " "those " "were " "the " "days. " 

  "\noo "  "oo "  "oo "  "oo "  "oo "  "oo " 

  "\nOh, " "my " "friends, " "we're " old "er " "but " "no " wis "er, " 
  "\nFor " "in " "our " "hearts " "the " "dreams " "are " "still " "the " "same " 
  "\nThose " "were " "the " "days, " "my " "friend, " 
  "\nWe " "thought " "they'd " ne "ver " "end; " 
  "\nWe'd " "sing " "and " "dance " for e "ver " "and " "a " "day. " 
  "\nWe'd " "live " "the " "life " "we " "choose, " 
  "\nWe'd " "fight " "and " ne "ver " "lose, " 
  "\nFor " "we " "were " "young " "and " "sure "  "to " "have " "our " "way. " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nThose " "were " "the " "days " 
  "\nthose " "were " "the " "days! " 
}

wordsAltoMidi = \lyricmode {
  "Those " "were " "the " "days "
  "\nOh " "yes, " "those " "were " "the " "days. " 
  "\nRe" mem "ber " "how " "we " "laughed " a "way " "the " "hours " 
  "\nand " "dreamed " "of " "all " "the " "great " "things " "we " "would " "do? " 

  "\nThose " "were " "the " "days, " "my " "friend " 
  "\nWe " "thought " "they'd " ne "ver " "end, " 
  "\nWe'd " "sing " "and " "dance " for ev "er " "and " "a " "day. " 
  "\nWe'd " "live " "the " "life " "we " "choose, " 
  "\nWe'd " "fight " "and " ne "ver " "lose, " 
  "\nFor " "we " "were " "young " "and " "sure "  "to " "have " "our " "way. " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, "
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nThose " "were " "the " "days, "
  "\nOh " "yes, " "those " "were " "the " "days. " 

%  Then the bu -- sy years went rush -- ing by us. __
  "\nWe " "lost " "our " star "ry " no "tions " "on " "the " "way. " 
  "\nThose " "were " "the " "days, " "my " "friend, " 
  "\nWe " "thought " "they'd " ne "ver " "end; " 
  "\nWe'd " "sing " "and " "dance " "for " e "ver " "and " "a " "day. " 
  "\nWe'd " "live " "the " "life " "we " "choose, " 
  "\nWe'd " "fight " "and " ne "ver " "lose, " 
  "\nFor " "we " "were " "young " "and " "sure "  "to " "have " "our " "way. " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nThose " "were " "the " "days, "
  "\nOh " "yes, " "those " "were " "the " "days. " 

  "\noo "  "oo "  "oo "  "oo "  "oo "  "oo " 

  "\nOh, " "my " "friends, " "we're " old "er " "but " "no " wis "er, " 
  "\nFor " "in " "our " "hearts " "the " "dreams " "are " "still " "the " "same " 
  "\nThose " "were " "the " "days, " "my " "friend, " 
  "\nWe " "thought " "they'd " ne "ver " "end; " 
  "\nWe'd " "sing " "and " "dance " for e "ver " "and " "a " "day. " 
  "\nWe'd " "live " "the " "life " "we " "choose, " 
  "\nWe'd " "fight " "and " ne "ver " "lose, " 
  "\nFor " "we " "were " "young " "and " "sure "  "to " "have " "our " "way. " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nThose " "were " "the " "days " 
  "\nOh " "yes, " "those " "were " "the " "days! " 
}

dynamicsMen = {
  \partial 4.
  s8\mf s4\< | s2\! | s | s4 s\> | s s\! |
  s2\mf | s | s | s | s | s |
  s2 | s | s | s | s | s | % 3a
  s2 | s | s | s | s4 s\f | s2 |
  s2*5 |
  s2*5 | % 4a
  s2 | s | s | s | s | s8 s4.\f |
  s2*5 |
  s2*5 | % 5a
  s2 | s | s | s | s |
  s2*5 |
  s2*6 | % 6a
  s4 s\f | s2 | s | s | s |
  s2*5 |
  s2*4 | % 7a
  s2 | s | s | s8 s4.\f |
  s2*4 |
  s2*4 | % 8a
  s2*6 |
  s2\p | s | s | s | s |
  s2*15 | % 9
  s2*4 | % 10a
  s4\mf s-\markup\italic ten. | s2 | s | s |
  s2 | s | s | s | s4 s\f | s2 |
  s2*15 | % 11
  s8 s4.\f | s2 | s | s | s | % 12a
  s2*5 |
  s2*5 |
}

tenor = \relative {
  \global
  bes8 a g | a4. c8 | d8 c bes a | bes2~ | bes \section |
  d,8 d g aes | bes a g fis | a g4.~ | g2 | d8 8 ees f | g d ees d |
  c2~ | 4 r | R2 | R | R | R | % 3a

  R2 | R | R | R | r4 bes' | bes a \section |
  a4 g8 8~ | 8 8 8 f | 4 ees8 8~ | 8 c d ees | f4. g8 |
  a8 bes a g | f2~ | 8 bes, c d | f4 ees8 8~ | 8 8 f g | % 4a
  c4 bes8 8~ | 8 8 a g | a4 c8 d~ | d c bes a | bes2~ | 8 d d c \section |
  c4 bes8 8~ | 8 8 b b | d4 c8 8~ | 8 8 d ees | d4. c8
  d8 c bes a | bes4 c | d c | bes2~ | 2 | % 5a
  R2*5 |
  R2 | R | R | g8^\markup\italic unis. 8 a bes | c bes a g |
  bes8 g4.~ | 4. 8 | bes g fis g | a g fis g | a2~ | a~ | % 6a
  a8 r bes4-- | 4 a \section | a g8 8~ | 8 8 8 f | 4 ees8 8~ |
  ees8 c d ees | f4. g8 | a bes a g | f2~ | 8 bes, c d |
  f4 ees8 8~ | 8 8 f g | c4 bes8 8~ | 8 8 a g | % 7a
  a4 c8 d~ | d c bes a | bes2~ | 8 d d c \section |
  c4 bes8 8~ | 8 8 b b | d4 c8 8~ | 8 8 d ees |
  d4. c8 | d c bes a | bes4 ees | d c | % 8a
  bes2~ | 2 \section \key c \major | R2 | R | R | R |
  e,2( | f)( | fis)( | f) | e4(f8 g |
  a2)~ | 2~ | 2 | 2~ | 2~ | % 9a
  a2~ | 4 g | fis2( | a | gis2)~ | 2 \section |
  e2( | f)( | fis)( | f) |
  e4(f8 g | a2)~ | a~ | a | % 10a
  a8 e' d c | b c d d | c a4.~ | 4. 8 |
  fis8 8 b a | gis fis b a | gis2~ | 2 r4 c4\fermata | c\fermata b\fermata \section |
  b4 a8 8~ | 8 8 8 g | 4 f8 8~ | f d e f | g4. a8 | % 11a
  b8 c b a | g2~ | 8 c, d e | g4 f8 8~ | 8 8 g a |
  d4 c8 8~ | 8 8 b a | b4 d8 e~ | 8 d c b | c2~ |
  c8 e e d | d4 c8 8~ | 8 8 cis cis | e4 d8 8~ | 8 f, e d | % 12a
  e2~ | 4 4 | e'4 d | c b\fermata | c2~ |
  c2~ | c~ | c~ | 8 r r4 | R2 |
  \bar "|."
}

wordsMenMidi = \lyricmode {
  "Those " "were " "the " "days "
  "\nOh " "yes, " "those " "were " "the " "days. " 
  "\nOnce " up "on " "a " "time " "there " "was " "a " tav "ern " 
  "\nwhere " "we " "used " "to " "raise " "a " "glass " "or " "two. " 

  "\nThose " "were " "the " "days, " "my " "friend " 
  "\nWe " "thought " "they'd " ne "ver " "end, " 
  "\nWe'd " "sing " "and " "dance " for ev "er " "and " "a " "day. " 
  "\nWe'd " "live " "the " "life " "we " "choose, " 
  "\nWe'd " "fight " "and " ne "ver " "lose, " 
  "\nFor " "we " "were " "young " "and " "sure "  "to " "have " "our " "way. " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, "
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nThose " "were " "the " "days, "
  "\nOh " "yes, " "those " "were " "the " "days. "
  "\nThose " "were " "the " "days. "

  "\nIf " "by " "chance " "I'd " "see " "you " "in " "the " ta "vern "
  "\nwe'd " "smile " "at " "one " an o "ther " "and " "we'd " "say, " 
  "\nThose " "were " "the " "days, " "my " "friend, " 
  "\nWe " "thought " "they'd " ne "ver " "end; " 
  "\nWe'd " "sing " "and " "dance " "for " e "ver " "and " "a " "day. " 
  "\nWe'd " "live " "the " "life " "we " "choose, " 
  "\nWe'd " "fight " "and " ne "ver " "lose, " 
  "\nFor " "we " "were " "young " "and " "sure "  "to " "have " "our " "way. " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nThose " "were " "the " "days, "
  "\nOh " "yes, " "those " "were " "the " "days, "
  "\nThose " "were " "the " "days. " 

  "\noo "  "oo "  "oo "  "oo "  "oo "  "oo "  "oo " 

  "\nOh, " "my " "friends, " "we're " old "er " "but " "no " wis "er, " 
  "\nFor " "in " "our " "hearts " "the " "dreams " "are " "still " "the " "same " 
  "\nThose " "were " "the " "days, " "my " "friend, " 
  "\nWe " "thought " "they'd " ne "ver " "end; " 
  "\nWe'd " "sing " "and " "dance " for e "ver " "and " "a " "day. " 
  "\nWe'd " "live " "the " "life " "we " "choose, " 
  "\nWe'd " "fight " "and " ne "ver " "lose, " 
  "\nFor " "we " "were " "young " "and " "sure "  "to " "have " "our " "way. " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nLah " "dah " "dah " "dah " "dah " "dah, " 
  "\nThose " "were " "the " "days " 
  "\nOh " "yes, " "those " "were " "the " "days! " 
}

bass = \relative {
  \global
  bes8 a g | d4. ees8 | d8 8 8 8 | g,2~ | g |
  d'8_\markup\italic unis. d g aes | bes a g fis | a g4.~ | g2 | d8 8 ees f | g d ees d |
  c2~ | 4 r | R2 | R | R | R | % 3a
  R2 | R | R | R | r4 bes' | bes a \section |
  a4 g8 8~ | 8 8 8 f | 4 ees8 8~ | 8 c d ees | f4. g8 |
  a8 bes a g | f2~ | 8 bes, c d | f4 ees8 8~ | 8 8 f g | % 4a
  c4 bes8 8~ | 8 8 a g | d4 ees8 d~ | d d d d | g2~ | 8 bes bes a \section |
  a4 g8 8~ | 8 8 8 f | 4 ees8 8~ | 8 c d ees | d4. 8 |
  d8 8 8 8 | g4 c | bes a | g2~ | g \section | % 5a
  R2*5 |
  R2 | R | R | g8 8 a bes | c bes a g |
  bes8 g4.~ | 4. 8 | bes g fis g | a g fis g | a2~ | a~ | % 6a
  a8 r bes4-- | 4 a \section | a g8 8~ | 8 8 8 f | 4 ees8 8~ |
  ees8 c d ees | f4. g8 | a bes a g | f2~ | 8 bes, c d |
  f4 ees8 8~ | 8 8 f g | c4 bes8 8~ | 8 8 a g | % 7a
  d4 ees8 d~ | d d d d | g2~ | 8 bes bes a \section |
  a4 g8 8~ | 8 8 8 f | 4 ees8 8~ | 8 c d ees |
  d4. 8 | 8 8 8 8 | g4 c | bes a | % 8a
  g2~ | 2 \section \key c \major | R2 | R | R | R |
  a,2~ | a~ | a~ | a | a~ |
  a2( | d2)~ | d | e2~ | 2( | % 9a
  a,4) e'( | a g | fis2() | b, | e2)~ | e \section |
  a,2~ | a~ | a~ | a |
  a2~ | a( | d)~ | d | % 10a
  d8 8 8 8 | d e f d | a8 4.~ | 4. c8 |
  b8 8 8 8 | 8 8 8 8 | e2~ | e | r4 c'4\fermata | c\fermata b\fermata \section |
  b4 a8 8~ | 8 8 8 g | 4 f8 8~ | f d e f | g4. a8 | % 11a
  b8 c b a | g2~ | 8 c, d e | g4 f8 8~ | 8 8 g a |
  f4 e8 8~ | 8 c' b a | e4 f8 e~ | e e e e | a2~ |
  a8 c c b | 4 a8 8~ | 8 8 8 g | 4 f8 8~ | 8 8 e d | % 12a
  e2~ | 4 4 | 4 4 | 4 4\fermata | a2~ |
  a2~ | a~ | a~ | 8 r r4 | R2 |
  \bar "|."
}

wordsBass = \lyricmode {
  \repeat unfold 95 \skip 1
  "(Those" were the "days.)"
  \repeat unfold 86 \skip 1
  "(Those" were the "days.)"
}

pianoRHone = \relative {
  \global
  r8 r4 | R2 | R | r4 <bes d>4--~ | 4 4-- ~ \section |
  q4 <d g bes d>\arpeggio | r4 <ees a c> | r bes'8 a( | c bes a g) | <d b' d g>2\arpeggio | <d f a b>\arpeggio |
  r4 <c ees g>\arpeggio | <ees g c>\arpeggio <g c ees>\arpeggio | r4 <g c ees g>\arpeggio | r <a c ees a>\arpeggio | r <bes d g bes> | r8 d,(c' bes) | % 3a
  <cis, g'>2\arpeggio | <g' c e a>\arpeggio | r4 \voiceOne <c ees fis ees'>\arpeggio | <d fis d'>\arpeggio <c f c'>\arpeggio | <d fis d'>2\arpeggio ~ | q2 \section \oneVoice |
  r8 \change Staff = pianorh <bes, d a'>-. r q-. | r q-. r <b d a> | r <g d' f > r <g c ees> | R2 | r8 <a ees' f> r <bes ees g> |
  r8 <bes ees g> <a d f> <g c ees> | <f bes d> <a c d>4-> <g bes d>8 | <f bes d>8 r r4 | r8 <g d' f> r <g c ees> r8 q r <c ees g> | % 4a
  r8 \change Staff = pianorh <c ees fis a> r <bes d g> | r8 g'-. a-. bes-. | <d, d'>4 <c c'>8 <d d'>~ | 2 | r8 <cis cis'>4-> <d d'>8-> | <g, g'>-> r r4 \section |
  <c ees fis a>4-> <bes d g>8-. q-> ~ | 8 8 <b d g>4-> | <b d f>-> <g c ees>8 q-> ~ | q c d ees | r <fis, c' d> r <a c fis> |
  <d bes'>8-. <c a>-. <b g'>-. <a fis'>-. | <g g'>2~ | 2 | r4 <bes d>~ | q q~ \section | % 5a
  q4 4 | r <bes des> | r <bes d> | r <a c> | <b f' g>2\arpeggio |
  <f' b d g>2\arpeggio | r4 <c ees g>\arpeggio | <ees g c>\arpeggio <g c ees>\arpeggio | r <g c ees g>\arpeggio | r <a c ees a>\arpeggio |
  r4 <bes d g bes>\arpeggio | r8 d,(c' bes) | <cis, g' a>2\arpeggio | <g' cis e a>\arpeggio | r4 <ees' fis ees'>\arpeggio | <d fis d'>\arpeggio <c g c'>\arpeggio | % 6a
  <c d fis d'>2\arpeggio ~ | q \section | r8 <d, bes' d>8 8. <a' cis>16( | <bes d>8) <d, bes' d>4-- q8 | r <ees c' ees>8 8. <b' d>16( |
  <c ees>8) <ees, c' ees>4-- q8 | r8 <a, ees' f>8 8.-- e'16( | f8-.) <bes, ees g>-. <a d f>-. <g c ees>-. | <f bes d>-. <a c d>4-> <g bes d>8-. | <f bes d>8-. r r4 |
  r8 <g d' f> r <g c ees> | r q r <c ees g> | r <c ees fis a> r <bes d g> | r g'-. a-. bes-. | % 7a
  <d, d'>4-- <c c'>8 <d d'>-- ~ | 2 | r8 <cis cis'>4-> <d d'>8-> | <g, g'>-> r r4 \section |
  <c ees fis a>4-> <bes d g>8 q-> ~ | 8 8-. <b d g>4-> | <b d f>-> <g c ees>8-. 8-> ~ | 8 c-. d-. ees-. |
  r8 <fis, c' d> r <d' fis> | <d bes'> <c a'> <bes g'> <a fis'> | <g g'>2-> ~ | 2 | % 8a
  <g' bes d g>2\arpeggio ~ | 2 \section \key c \major | r4 <a d f>( | <gis b e> <f a d>) | <e a c>2 <d gis b> |
  <a c e>2\arpeggio | <a d f>\arpeggio | <a c fis>4.\arpeggio c''8( | b a gis a) | <g, cis e>2 |
  <cis, g' a>2\arpeggio | r4 <a d f a>\arpeggio | <d f a d>\arpeggio <f a d f>\arpeggio | <a d f a>2\arpeggio ~ | 2 | % 9a
  <e a c>2\arpeggio ~ | 8 e(d' c | <dis, b'>2 | <dis fis>) | r4 b'8( f' | e2) \section |
  <a,, c e>2\arpeggio | <a d f>\arpeggio | <a c fis>4.\arpeggio c''8( | b a gis a) |
  <g, cis e>2\arpeggio | <cis, g' a>\arpeggio | r4 <a d f a>\arpeggio | <d f a d>\arpeggio <f a d f>\arpeggio | % 10a
  <a d f a>2\arpeggio ~ | 2 | <e a c>4.\arpeggio e'8( | c' a4.) |
  <dis,, b'>2~ | 2 | r4 <f' gis f'>\arpeggio | <e gis e'>\arpeggio <d g d'>\arpeggio | <e gis e'>2\arpeggio | 2\fermata \section |
  r8 <e, c' e> q8. <b' dis>16( | <c e>8-.) <e, c' e>4-- 8 | r <f d' f>-. 8.-. <cis' e>16( | <d f>8-.) <f, d' f>4-- q8 | r <b, f' g>-. q8.-. fis'16( | % 11a
  g8) <c, f a>-. <b e g>-. <a d f>-. | <g c e>-. <b d e>4-> <a c e>8-. | <g c e>-. r r4 | r8 <a e' g> r <a d f> | r q r q |
  r8 <gis b d f> r <a c e> | r a'-. b-. c-. | <e, e'>4-> <d d'>8 <e e'>-> ~ | 2 | r8 <dis dis'>4-> <e e'>8-> |
  <f, f'>8 r r4 | <f' c'>4-> 8 8->~ | 8 8-. <f e'>4-> | <b, b'>-> q8-. q->~ | 8 <d d'>-. <c c'>-. <b b'>-. | % 12a
  <e e'>2-> | <e' e'>->~ | 4 <b e> | <a e'> <gis e'>\fermata | r8 <c, e a> r q |
  r8 \ottava #1 <c' c'> <d d'> <dis dis'> | <e e'>8-> <f f'>4-> <fis fis'>8-> ~ | 8 <g g'>4-> <gis gis'>8-> | <a a'>-> r \override Glissando.style = #'zigzag a'4-> \glissando \change Staff = pianolh a,,,,8 s4. |
}

pianoRHtwo = \relative {
  \global
  s4. | s2 * 4 |
  s2 | s | s4 d'4( | c2) | s | s |
  s2 | s | s | s | s | s8 d~4 | % 3a
  s2*6 |
  s2*5 |
  s2*5 | % 4a
  s2*6 |
  s2*5 |
  s2*5 | % 5a
  s2*5 |
  s2*5 |
  s2 | s8 d~4 | s2 | s | s | s | % 6a
  s2*5 |
  s2*5 |
  s2*4 | % 7a
  s2*4 |
  s2*4 |
  s2*4 | % 8a
  s2*6 |
  s2*5 |
  s2*5 | % 9a
  s2 | s | s | s | s4 gis~ | <gis b>2 |
  s2*4 |
  s2*4 | % 10a
  s2*4 |
  s2*6 |
  s2*5 | % 11a
  s2*5 |
  s2*5 |
  s2*5 | % 12a
  s2*5 |
  s2*5 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4. | s2 | s | s4\mf s\> | s4. s8\! |
  s2\p | s | s | s | s | s |
  s2*6 | % 3a
  s2*6 |
  s2*5 |
  s2*5 | % 4a
  s2 | s8 s4.\< | s2\! | s | s | s |
  s2\f | s | s | s | s |
  s2 | s | s | s\p | s | % 5a
  s2\p | s | s | s | s |
  s2*5 |
  s2*6 | % 6a
  s2 | s | s\mf | s | s |
  s2*5 |
  s2*4 | % 7a
  s2*4 |
  s2\f | s | s | s |
  s2*4 | % 8a
  s4\p s\< | s2 | s\! | s | s\> | s |
  s\p | s | s | s | s |
  s2*15 | % 9
  s2*4 | % 10a
  s2\mf | s | s | s |
  s2*6 |
  s2*5 | % 11a
  s2*5 |
  s2 | s | s | s | s8 s4.\< |
  s2\! | s\f | s | s | s | % 12a
  s2 | s | s | s | s\f |
  s2*5 |
}

pianoLHone = \relative {
  \global
  r8 r4 | R2 | R | g,8(d'4.) | g,8(d'4.) \section |
  g,8(d'4.) | g,8(ees'4.) | g,8(e'4.)( | ees2) | <g, d' b'>2~ | 4 g( |
  c8 g'4) 8~ | 8 4. | c,8(g'4.) | c,8 g'4.) | g,8(d'4) 8( | g4 f) | % 3a
  e4 a,~ | 4 4 | \voiceOne r4 \voiceTwo \showStaffSwitch \change Staff = pianorh <ees'' fis c'>\arpeggio | <d fis a>\arpeggio <c fis a>\arpeggio | <d fis c'>2\arpeggio ~ | 2 \section \oneVoice \hideStaffSwitch \change Staff = pianolh |
  g,,8 r d-. r | g-. r g-. r | <c, c'> r g' r | <c, c'> <ees ees'>-. <d d'>-. <c c'>-. | f r <c c'> r |
  f8 r f r | <bes, bes'> r f' r | q r r4 | <c c'>8 r g' r | q r q r | % 4a
  g8 r <d d'> r | g bes-. a-. g-. | <d d'>4 <ees ees'>8 <d d'>~ | 4 4-> | <g g'>8 cis4-> d8-> | g,-> r r4 \section |
  <g d'>4-> 8-. 8->~ | 8 8-. <g f'>4-> | <c, c'>-> 8-. 8-> ~ | 8 8-. <d d'>-. <ees ees'>-. | <d d'> r <a a'> r |
  <d d'>4. 8 | <g, g'>2~ | 2 | g'8(d'4.) | g,8(d'4.) \section | % 5a
  g,8(d'4.) | g,8(ees'4.) | g,8(e'4.) | g,8 ees'4.) | <g, d'>2\arpeggio ~ |
  q4 g | c8(g'4) 8~ | 8 4. | c,8(g'4.) | c,8 g'4.) |
  g,8(d'4) d,8( | g4 f) | e a~ | a a | <d, d'>2~ | 2~ | % 6a
  q8 r r4 | R2 \section | g8 r <d d'> r | g r g r | <c, c'> r g' r |
  <c, c'>8 <ees ees'> <d d'> <c c'> | f r q r | f r f r | bes r f r | bes r r4 |
  <c, c'>8 r g' r | q r q r | g r <d d'> r | g bes-. a-. g-. | % 7a
  <d d'>4-- <ees ees'> 8 <d d'>-- ~ | 4 4-> | <g g'>8-> cis4-> d8-> | g,-> r r4 \section |
  <g d'>4-> 8-. 8->~ | 8 8-. <g f'>4-> | <c, c'>-> 8-. 8-> ~ | 8 8-. <d d'>-. <ees ees'>-. |
  <d d'>8 r a' r | q4. 8 | <g, g'>2-> ~ | 2~ | % 8a
  q4 < d' d'> | <g g'> <f f'> \section \key c \major | <e e'>2-- ~ | 2~ | 4 e'~ | e e,-- |
  <a e'>2\arpeggio | <a f'>\arpeggio | <a fis'>\arpeggio | <f' a d>2 | s |
  s2 | d,2~ | 2 | <d a' f'>2\arpeggio ~ | 2 | % 9a
  a'4(e' | a g) | fis2( | <b, a'>) | \voiceOne r4 d'~ | 2 \section |
  <a, e'>2\arpeggio | <a f'>\arpeggio | <a fis'>\arpeggio | <f' a d> |
  s4 a,~ | a a | d,2~ | d | % 10a
  <d a' f'>2\arpeggio ~ | 2 | \oneVoice a'8(e' c'4) | <a c e>2\arpeggio |
  <b, a'>2~ | q | \hide c'4 \showStaffSwitch \change Staff = pianorh \voiceTwo <f b d>\arpeggio | <e gis b>\arpeggio <d gis b>\arpeggio | <d gis d'>2\arpeggio | 2 \section \hideStaffSwitch \change Staff = pianolh | %%% FIX
  \oneVoice a,8 r <e e'> r | a r a r | <d, d'> r a' r | q-. <f f'>-. <e e'>-. <d d'>-. | <g g'> r <d d'> r | % 11a
  <g, g'>8 r q r | <c c'> r <g g'> r | <c c'> r r4 | <d d'>8 r <a a'> r | <d d'> r q r |
  <a a'>8 r e' r | a-. c-. b-. a-. | <e e'>4-> <f f'>8 <e e'>-> ~ | 4 4-> | <a a'>8-> <dis, dis'>4-> <e e'>8-> |
  <a, a'>8-> r r4 | <a' e>4-> 8 8-> ~ | 8 8-. <a g'>4-> | <d, d'>-> 8-. 8-> ~ | 8 <f f'>-> <e e'>-> <d d'>-> | % 12a
  <e e'>4-> 4~ | 2~ | 4 <e' d'> | <e c'> <e b' d>\fermata | <a, a'>8 r <g g'> r |
  <gis gis'>8 r <g g'> r | <e e'>-> r <d d'> r | <c c'>-> r <b b'> r | <a a'>-> r r4 | q8 r r4 |
}

pianoLHtwo = \relative {
  \global
  s4. s2*16 |
  s2 | s | <d, d'>2~ | \oneVoice 2~ | 8 r r4 | R2 \section | % 4b
  s2*70
  \key c \major
  s2*4 |
  s2 | s | s | \voiceTwo r4 a'( | \voiceOne a,) a'~ | % 8c
  a4 4 | s2*4 % 9a
  s2 | s | s | s | \voiceTwo e2~ | 4 4-- |
  s2 | s | s | r4 a4~ |
  a4 s | s2 | s | s | % 10a
  s2*4 |
  s2 | s | \voiceOne <c, c'>2 ~ | 2~ | 8 \oneVoice r r4\fermata | R2\fermata |
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine #'(2 . 88) \tenor \bass
            \new NullVoice = alignerB \bass
            \addlyrics \wordsBass
          >>
          \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS \words
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine #'(2 . 88) \tenor \bass
            \new NullVoice = alignerB \bass
            \addlyrics \wordsBass
          >>
          \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS \words
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            \accidentalStyle Score.modern-cautionary
            \magnifyStaff #4/7
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
            \magnifyStaff #4/7
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine #'(2 . 88) \tenor \bass
            \new NullVoice = alignerB \bass
            \addlyrics \wordsBass
          >>
          \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS \words
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
            \magnifyStaff #4/7
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
            \magnifyStaff #4/7
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-solo"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSoloMidi
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
  \bookOutputSuffix "midi-sop"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
  \bookOutputSuffix "midi-alto"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
  \bookOutputSuffix "midi-men"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsMenMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
