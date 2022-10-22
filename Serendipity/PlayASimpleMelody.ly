\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Play a Simple Melody"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Irving Berlin"
  arranger    = "Arr. Donald Moore"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key d \major
  \time 4/4
}

TempoTrack = {
  \tempo \markup {"Light ragtime" ( \rhythm {8[8]} = \rhythm {\tuplet 3/2 {4 8}} ) } 4=135
  s1
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s1*3
  \mark \markup { \box "1b" } s1*4
  \mark \markup { \box "2a" } s1*4
  \mark \markup { \box "2b" } s1*4
  \mark \markup { \box "2c" } s1*4
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

soprano = \relative {
  \global
  \grace s8 R1*11
  R1 | d'2.^\mf e4 | fis a cis b | a2. g4 | % 2b
  cis,1 | a'2. ais4 | cis b g cis, | d1 |
  R1*6
  R1 | R1 | r4 a'4 b cis | % 3c
  d8 cis d a~a a b cis | d cis d a~a a b bis | cis bis cis g~2 | % 4a
  r4 a b bis | cis8 bis cis g~2 | r8 bis cis bis cis b a4 |
  d4 r r2 | R1 \bar "||" \key ees \major | r8 fis, g fis g2 |
  r8 fis g fis g8 4 f8 | g4 fis d bes8 ees~ | 2 r | % 5a
  r8 b'\omit\cresc^\markup\italic "poco cresc." c b c2 | r8 b c b c8 4 b8 | c4 aes ees aes8 c~ |
  c2 r8 g aes a | r bes4 g8 bes4 g | f8 ees4. g4\cresc f |
  ees2 ees'^\< | c8^\f ees4. r2 | r8 a, bes a bes2 | % 6a
  r8 a bes a bes c4 bes8 | c4 bes g f8 ees~ | 4 r4 r2 |
  R1 \bar "||" \key c \major | c'8 b c g~g g a b | c b c g~g g a ais |
  b8 ais b f~2 | r4 g a ais | b8 ais b f~2 | % 7a
  r4 g a b | a8 g e g~2 | r4 g a b |
  c8 b c g~g g a b | c b c g~g g a ais | b ais b f~2 |
  r4 g a ais | b8 ais b f~2 | r8 ais b ais b ais g4 | % 8a
  c4 e,8^\markup\italic unis. ees e g a g | bes-> a g a-> ~a^\cresc fis g gis | a2~8 gis a ais |
  b2 e^\< | c1^\ff ~ | c2. r4
  \bar "|."
}

wordsSopMidi = \lyricmode {
  "One " "with " "good " old- fash "ioned " har mon "y, "
  "\nplay " "a " sim "ple " mel o "dy? "

  "\nif " "you " "will " "play " "from " "a " cop "y " "of " "a " "tune " "that " "is " chop "py, "
  "\nyou'll " "get " "all " "my " ap "plause "
  "\nand " "that " "is " sim "ply " be "cause " 
  "\nI " "want " "to " lis "ten " "to " "rag. "

  "\nCome " "on " "and " "hear, "
  "\nCome " "on " "and " "hear, "
  "\nAl" ex an "der's " Rag "time " "Band, "
  "\ncome " "on " "and " "hear, "
  "\ncome " "on " "and " "hear, "
  "\nit's " "the " "best " "band " "in " "the " "land. " 
  "\nAnd " "if " "you " "care " "to " "hear " "that " Swan "ee " Riv "er " "played " "in " rag "time, "
  "\ncome " "on " "and " "hear, "
  "\ncome " "on " "and " "hear " Al ex an "der's " Rag "time " "Band. "

  "\nMu" si "cal " de "mon, "
  "\nset " "your " hon "ey " a dream "in', "
  "\nwon't " "you " "play " "me " "a " "rag? " 
  "\nJust " "change " "that " clas si "cal " "nag " 
  "\nto " "some " "sweet " beau ti "ful " "drag " 
  "\nif " "you " "will " "play " "from " "a " co "py " "of " "a " "tune " "that " "is " chop "py, "
  "\nyou'll " "get " "all " "my " ap "plause, "
  "\nand " "that " "is " sim "ply " be "cause "
  "\nI " "want " "to " lis "ten " "to " "rag. "
  "\nPlay " "a " "tune " "with " "all " "that " razz a ma "tazz, "
  "\nI " "want " "to " "hear "  "a " sim "ple " mel o "dy. "
}

alto = \relative {
  \global
  \grace s8 R1*11
  R1 | d'2.^\omit\mf e4 | fis a cis b | a2. g4 | % 2b
  cis,1 | a'2. ais4 | cis b g cis, | d1 |
  R1*6
  R1 | R1 | r4 a'4 gis g | % 3c
  fis8 8 8 8~8 8 8 8 | a a a a~a a aes aes | g fis g g~2 | % 4a
  r4 a a aes | g8 fis g g~2 | r8 fis g fis g g g4 |
  fis4 r r2 | R1 \bar "||" \key ees \major | r8 fis g fis g2 |
  r8 fis g fis g8 4 f8 | g4 fis d bes8 ees~ | 2 r | % 5a
  r8 b'\omit\cresc c b c2 | r8 b c b c8 4 b8 | c4 aes ees aes8 c~ |
  c2 r8 g aes a | r g4 e8 g4 g | f8 ees4. g4\omit\cresc f |
  ees2 f^\omit\< | fis8^\omit\f 4. r2 | r8 a bes a bes2 | % 6a
  r8 a bes a bes c4 bes8 | c4 bes g f8 ees~ | 4 r4 r2 |
  R1 \bar "||" \key c \major | e8 8 8 8~8 8 8 8 | g g g g~g g ges ges |
  f8 e f f~2 | r4 g g ges | f8 e f f~2 | % 7a
  r4 g a b | a8 g e g~2 | r4 g fis f |
  e8 8 8 8~8 8 8 8 | g8 8 8 8~8 8 ges ges | f e f f~2 |
  r4 g g ges | f8 e f f~2 | r8 e f e f e d4 | % 8a
  e4 e8 ees e g a g | bes-> a g a-> ~a^\omit\cresc fis g gis | a2~8 gis a aes |
  g2 f^\omit\< | e4^\omit\ff g8 fis g e4. | g4 f8 e~4 r |
  \bar "|."
}

wordsAlto = \lyricmode {
  One with good old -- fash -- ioned har -- mon -- y,
  play a sim -- ple mel -- o -- dy?

  if you will play from a cop -- y of a tune that is chop -- py,
  you'll get all my ap -- plause
  and that is sim -- ply be -- cause __
  I want to lis -- ten to rag.

  Come on and hear,
  Come on and hear,
  Al -- ex -- an -- der's Rag -- time Band,
  come on and hear,
  come on and hear,
  it's the best band in the land. __
  And if you care to hear that Swan -- ee Riv -- er played in rag -- time,
  come on and hear,
  come on and hear Al -- ex -- an -- der's Rag -- time Band.

  Mu -- si -- cal de -- mon,
  set your hon -- ey a  -- dream -- in',
  won't you play me a rag? __
  Just change that clas -- si -- cal nag __
  to some sweet beau -- ti -- ful drag __
  if you will play from a co -- py of a tune that is chop -- py,
  you'll get all my ap -- plause,
  and that is sim -- ply be -- cause
  I want to lis -- ten to rag.
  Play a tune with all that razz -- a -- ma -- tazz,
  I want to hear __ a sim -- ple mel -- o -- dy.
  Al -- ex -- an -- der's Rag -- time Band.
}

wordsAltoMidi = \lyricmode {
  "One " "with " "good " old- fash "ioned " har mon "y, "
  "\nplay " "a " sim "ple " mel o "dy? "

  "\nif " "you " "will " "play " "from " "a " cop "y " "of " "a " "tune " "that " "is " chop "py, "
  "\nyou'll " "get " "all " "my " ap "plause "
  "\nand " "that " "is " sim "ply " be "cause " 
  "\nI " "want " "to " lis "ten " "to " "rag. "

  "\nCome " "on " "and " "hear, "
  "\nCome " "on " "and " "hear, "
  "\nAl" ex an "der's " Rag "time " "Band, "
  "\ncome " "on " "and " "hear, "
  "\ncome " "on " "and " "hear, "
  "\nit's " "the " "best " "band " "in " "the " "land. " 
  "\nAnd " "if " "you " "care " "to " "hear " "that " Swan "ee " Riv "er " "played " "in " rag "time, "
  "\ncome " "on " "and " "hear, "
  "\ncome " "on " "and " "hear " Al ex an "der's " Rag "time " "Band. "

  "\nMu" si "cal " de "mon, "
  "\nset " "your " hon "ey " a dream "in', "
  "\nwon't " "you " "play " "me " "a " "rag? " 
  "\nJust " "change " "that " clas si "cal " "nag " 
  "\nto " "some " "sweet " beau ti "ful " "drag " 
  "\nif " "you " "will " "play " "from " "a " co "py " "of " "a " "tune " "that " "is " chop "py, "
  "\nyou'll " "get " "all " "my " ap "plause, "
  "\nand " "that " "is " sim "ply " be "cause "
  "\nI " "want " "to " lis "ten " "to " "rag. "
  "\nPlay " "a " "tune " "with " "all " "that " razz a ma "tazz, "
  "\nI " "want " "to " "hear "  "a " sim "ple " mel o "dy. "
  "\nAl" ex an "der's " Rag "time " "Band. "
}

tenor = \relative {
  \clef bass
  \global
  \grace s8 R1*4
  d2.^\omit\mf e4 | fis a cis b | a2. g4 | % 1b
  cis,1 | a'2. ais4 | b a e eis | fis1 | % 2a
  R1 | d1( | fis2 f | e1~ |
  e4) fis g gis | a2. ais4 | cis b g cis, | d1 |
  R1 | d'8 cis d a~a a b cis | d cis d a~a a b bis | % 3a
  cis8 bis cis g~2 | r4 a b bis | cis8 bis cis g~2 |
  r4 a b cis | b8 a fis a~2 | R1 |
  d,1( | fis2. f4 | e1) | % 4a
  r4 a b bes | a8 gis a a~2 | r8 fis a fis a f e4 |
  d4 r r2 | r2 r8 fis g fis \key ees \major | g2 r8 fis g fis |
  g2 r8 bes4 a8 | bes4 aes f aes8 g~ | 2 r8 b\omit\cresc c bes | % 5a
  c2 r8 b c b | c2 r8 ees4 d8 | ees4 c aes c8 ees~ |
  ees2 r8 g, aes a | r8 ees'4 8 4 d | des8 4. 4 4 |
  c2 ees\omit\< | c8\omit\f ees4. r8 a, bes a | bes2 r8 a bes a | % 6a
  bes2 r8 c4 bes8 | c4 bes g f8 ees~ | 4 r r2 |
  R1 \key c \major | r4 c'8 b c4 r | r c8 b c4 r |
  r4 b8 ais b4. ais8 | b4 ais8 b~4 r | r b8 ais b g r4 | % 7a
  r4 b8 ais b g r4 | a b8 a~2 | R1 |
  r4 c8 b c4 r | r c8 b c4 r | r b8 ais b4. ais8 |
  b4 ais8 b~4 r | r b8 ais b g r4 | r8 cis d cis d c b4 | % 8a
  c4 e,8 ees e g a g | bes-> c bes a-> ~2 | r8 gis\omit\cresc a gis a gis a aes |
  g2 b^\omit\< | c4^\omit\ff e8 dis e c4. | e4 d8 c~4 r |
  \bar "|."
}

wordsTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Won't you play, Won't you play,
  Won't you play a mel -- o -- dy? __
  Like my moth -- er
  like my moth -- er sang for me. __

  Play a tune, play a tune,
  play a tune with har -- mo -- ny.
  Play it sim -- ple,
  I want to lis -- ten to rag.
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ __ _ _
  _ _ _ _ _ _ _
}

wordsTenorMidi = \lyricmode {
  "Won't " "you " "play " "a " sim "ple " mel o "dy "
  "\nlike " "my " moth "er " "sang " "to " "me? "
  "\nOo, "  "O " "won't " "you " "play " "a " sim "ple " mel o "dy? "
  "\nMu" si "cal " de "mon, "
  "\nset " "your " hon "ey " "a " dream "in', "
  "\nwon't " "you " "play " "me " "a " "rag? " 
  "\nJust " "change " "that " clas si "cal " "nag " 
  "\nto " "some " "sweet " beau ti "ful " "drag. " 
  "\nOo, "  "and " "that " "is " sim "ply " be "cause " 
  "\nI " "want " "to " lis "ten " "to " "rag. "
  "\nCome " "on " "and " "hear, "
  "\nsome " "on " "and " "hear, "
  "\nAl" ex an "der's " Rag "time " "Band, "
  "\ncome " "on " "and " "hear, " "come " "on " "and " "hear, "
  "\nit's " "the " "best " "nand " "in " "the " "land. " 
  "\nAnd " "if " "you " "care " "to " "hear " "that " Swan "ee " Riv "er "
  "\nplayed " "in " rag "time, "
  "\ncome " "on " "and " "hear, " "come " "on " "and " "hear, "
  "\nAl" ex an "der's " Rag "time " "Band. "
  "\nWon't " "you " "play, " "Won't " "you " "play, "
  "\nWon't " "you " "play " "a " mel o "dy? " 
  "\nLike " "my " moth "er "
  "\nlike " "my " moth "er " "sang " "for " "me. " 
  "\nPlay " "a " "tune, " "play " "a " "tune, "
  "\nplay " "a " "tune " "with " har mo "ny. "
  "\nPlay " "it " sim "ple, "
  "\nI " "want " "to " lis "ten " "to " "rag. "
  "\nPlay " "a " "tune " "with " "all " "that " razz a ma "tazz. "
  "\nI " "want " "to " "hear " "a " sim "ple " mel o "dy. "
  "\nAl" ex and "er's " Rag "time " "Band. "
}

bass = \relative {
  \global
  \grace s8 R1*4
  d2.^\mf e4 | fis a cis b | a2. g4 |
  cis,1 | a'2. ais4 | b a e eis | fis1 | % 2a
  R1 | d1( | fis2 f | e1~ |
  e4) fis g gis | a2. ais4 | cis b g cis, | d1 |
  R1 | d'8 cis d a~a a b cis | d cis d a~a a b bis | % 3a
  cis8 bis cis g~2 | r4 a b bis | cis8 bis cis g~2 |
  r4 a b cis | b8 a fis a~2 | R1 |
  d,1( | fis2. f4 | e1) | % 4a
  r4 a b bes | a8 gis a a~2 | r8 fis a fis a f e4 |
  d4 r r2 | r2 r8 fis g fis \key ees \major | g2 r8 fis g fis |
  g2 r8 bes4 a8 | bes4 aes f aes8 g~ | 2 r8 b\omit\cresc^\markup\italic "poco cresc." c bes | % 5a
  c2 r8 b c b | c2 r8 ees4 d8 | ees4 c aes c8 ees~ |
  ees2 r8 g, aes a | r8 ees4 8 4 4 | 8 4. f4 g |
  aes2 c\< | a8\f c4. r8 a bes a | bes2 r8 a bes a | % 6a
  bes2 r8 c4 bes8 | c4 bes g f8 ees~ | 4 r r2 |
  R1 \key c \major | c2. d4 | e g b a |
  g2. f4 | b,1 | g'2. gis4 | % 7a
  a4 g d dis | e1 | R1 |
  c2. d4 | e g b a | g2. f4 |
  b,1 | g'2. gis4 | b a f b, | % 8a
  c4 e8 ees e g a g | bes-> c bes a-> ~2 | r8 gis\cresc a gis a gis a aes |
  g2 b^\< | c,1^\ff ~ | 2. r4 |
%  \bar "|."
}

wordsBass = \lyricmode {
  Won't you play a sim -- ple mel -- o -- dy
  like my moth -- er sang to me?
  Oo, __ O won't you _ _ _ _ _ _ _
  Mu -- si -- cal de -- mon,
  set your hon -- ey a dream -- in',
  won't you play me a rag? __
  Just change that clas -- si -- cal nag __
  to some sweet beau -- ti -- ful drag. __
  Oo, __ "" _ _ _ _ _ _
  _ _ _ _ _ _ _
  Come on and hear,
  some on and hear,
  Al -- ex -- an -- der's Rag -- time Band,
  come on and hear, come on and hear,
  it's the best nand in the land. __
  "" _ _ _ _ _ _ _ _ _ _ _ _ _ _
  come on and hear, come on and hear,
  Al -- ex -- an -- der's Rag -- time Band.

  Won't you play a sim -- ple mel -- o -- dy,
  Like my moth -- er sang to me.
  One with good old- fas -- ioned har -- mo -- ny.
  Play a sim -- ple mel -- o -- dy.
  Play a tune with all that razz -- a -- ma -- tazz.
  I want to hear a sim -- ple mel -- o -- dy. __
}

wordsBassMidi = \lyricmode {
  "Won't " "you " "play " "a " sim "ple " mel o "dy "
  "\nlike " "my " moth "er " "sang " "to " "me? "
  "\nOo, "  "O " "won't " "you " "play " "a " sim "ple " mel o "dy? "
  "\nMu" si "cal " de "mon, "
  "\nset " "your " hon "ey " "a " dream "in', "
  "\nwon't " "you " "play " "me " "a " "rag? " 
  "\nJust " "change " "that " clas si "cal " "nag " 
  "\nto " "some " "sweet " beau ti "ful " "drag. " 
  "\nOo, "  "and " "that " "is " sim "ply " be "cause " 
  "\nI " "want " "to " lis "ten " "to " "rag. "

  "\nCome " "on " "and " "hear, "
  "\nsome " "on " "and " "hear, "
  "\nAl" ex an "der's " Rag "time " "Band, "
  "\ncome " "on " "and " "hear, " "come " "on " "and " "hear, "
  "\nit's " "the " "best " "nand " "in " "the " "land. " 
  "\nAnd " "if " "you " "want " "to " "hear " "that " Swan "ee " Riv "er "
  "\nplayed " "in " rag "time, "
  "\ncome " "on " "and " "hear, " "come " "on " "and " "hear, "
  "\nAl" ex an "der's " Rag "time " "Band. "

  "\nWon't " "you " "play " "a " sim "ple " mel o "dy, "
  "\nLike " "my " moth "er " "sang " "to " "me. "
  "\nOne " "with " "good " old fas "ioned " har mo "ny. "
  "\nPlay " "a " sim "ple " mel o "dy. "
  "\nPlay " "a " "tune " "with " "all " "that " razz a ma "tazz. "
  "\nI " "want " "to " "hear " "a " sim "ple " mel o "dy. " 
}

pianoRHone = \relative {
  \global
  \grace s8 <des'' ges>8-> f ges <bes, des> ~8 des, ees f |
  <d fis>8-> e fis <a, d>~8 a'' b bis |
  <g cis>4-. <g b>-. <c, g'>-. <g cis>-. |
  d'1 | % 1b
  <fis,, a d>2. <g b>4 |
  <fis a>2 <aes cis>4 b |
  <g a>2. \showStaffSwitch g4 \change Staff = pianolh | 
  cis,2 \change Staff = pianorh <b' d>4 <g bis dis> | % 2a
  <g cis e>2. <ais e'>4 |
  e'2 a, | <fis a>2. fis4 |
  g8 fis g a~a a <g b> cis | % 2b
  <fis, a d>2. <g b e>4 |
  <a d fis>2 cis'4 b |
  <d, g a>2. g4 |
  cis,1 | % 2c
  <g cis e>2. <ais ais'>4 |
  <cis a' cis>4 <g' b> <b, g'> <g cis> |
  d'1~ |
  d8 r a'4 <gis b> <g cis> | % 3a
  <fis a d>2. <e fis b>4 |
  <d fis a>2. <gis, b>8 bis |
  <g cis>2 <a'' cis>8 <gis bis> <a cis> <e g>~ | % 3b
  q4 a,, b <gis bis> |
  <g cis>2 <a' cis>8 <gis bis> <a cis> <e g>~ |
  q4 a, <g b> cis | % 3c
  <fis, a d>2 <fis c'>8 a b <g a>~ |
  q8 r a'4 <gis b> <g cis> |
  <fis a d>2. <e fis b>4 | % 4a
  <d fis a>2. <gis b>8 bis |
  <g cis>2 <g' b>8 d bes' <cis, a'>~ |
  q4 a b <aes bis> | % 4b
  <g cis>2 <g, e'>8 ees' d <g, cis>8~ |
  q8 bis' <g cis> bis q b a4 |
  <d, fis a d>4 cis' c b8 <d, f aes bes>~ | % 4c
  q4 f' <bes, bes'> r \key ees \major |
  r8 <a, fis'> <bes g'> <a fis'> <bes g'>2 |
  r8 <a fis'> <bes g'> <a fis'> <bes g'> q4 fis'8 | % 5a
  <bes, d g>4 <aes c f> <f aes d> <aes bes>8 <g ees'>~ |
  q4 <aes ees'> <a ees'> <bes ees> |
  r8 <d b'> <ees c'> <d b'> <ees c'>2 | % 5b
  r8 <d b'> <ees c'> <d b'> <ees c>8 4 <d b'>8 |
  <ees c'>4 <c aes'> <aes ees'> <c aes'>8 <ees aes c>~ |
  q2 r8 <c ees aes>4. | % 5c
  r8 <ees g>4 g,8 <ees' g> g, <d' g>4 |
  <g, des' f>8 ees'4. <g, des' g>4 <des' f> |
  <f, aes c ees>2 <f' aes c ees> | % 6a
  \voiceOne <dis' fis c'>8-> a' <dis, fis c'> <fis ees'>-> ~4 r \oneVoice |
  r8 <fis, aes> <g bes> <fis aes> <g bes>2 |
  r8 <fis' a> <g bes> <fis a> <g bes> <g, c>4 bes8 | % 6b
  <ees, aes c>4 bes' <bes, d g> <aes c f>8 <g bes ees>~ |
  q4 <g bis e>-. <a c f>-. fis'8 <b, d fis g>~ |
  q8 cis' d4-. <g, b d g>8-> g' a b \key c \major | % 6c
  <e, c'>8 b' q <c, g'>~8 g a b |
  <e, c'>8 b' q <c, g'>~8 g' a ais |
  b8 ais b f~2~ | % 7a
  <f, b f'>4 <g' g'> <a a'> <ais ais'> |
  <b f' b>8 ais' b <b, d f>~8 b, <d fis g>4 |
  <d f a>2~8 b <dis b'>4 | % 7b
  <c e a>8 g' e <e g>~2 |
  <a, f' g>4 g''-. <fis a>-. <f b>-. |
  <e c'>8 b' q <a, g'>~8 g a b | % 7c
  <e, c'>8 b' q <c, g'>~8 g' a ais |
  b8 ais b f~2~ |
  <f, b f'>8 r <g' g'>4 <a a'> <ais ais'> | % 8a
  <b f' b>8 ais' b <b, d f>~8 b, <f' gis>4 |
  <d f a>2 <d f b> |
  <c e c'>4 e8 dis e g a g | % 8b
  <d g bes>4.-> <cis g' a>8-> ~8 fis g gis |
  <c, fis a>2~8 gis' a ais |
  <d, g b>2-> <f b e>-> | % 8c
  <e g a c>4-.-> <c' g' c>8(fis q <c e c'>4.-.) |
  <c g' c>4-> <d f c'>8 <c e g c>->~4 r |
%  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  \grace s8 s1*9
  b4 a e eis | % 2a++
  s1*3 |
  s2 aes' | % 2b++
  s1 |
  r4 fis, g gis | s1*2 | % 2c
  <f a>2 <g b>8 e q <fis a>~ |
  q8 s2.. | % 3a
  s1*35
  s2 f'8 f, <a c>4 | % 7a
  s1*7 |
  s2 f'8 f, <a c>4 | % 7c++
  s1*9
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1*38
  s2 s\omit\cresc-\markup\italic "poco cresc." % 5a++
  s1*5
  s2 s2\cresc % 5c++
  s2 s\< | s1\! | s1 | % 6a
  s1*18
  s1 | s2 s\cresc | s1 | % 8b
  s2 s\< | s1\ff | s1 |
}

pianoLH = \relative {
  \global
  \appoggiatura {aes'16 a} bes8-> a bes ges~2 \clef bass |
  \appoggiatura {g,16 gis} a8-> gis a fis~2 |
  \appoggiatura {g16 gis} a4-. b-. c-. cis-.
  r8 a,8-. g4-. fis-. e-. | % 1b
  b4 d'4-. a d | d,4 d'-. f, f' | e, e'-. b e |
  \voiceTwo a,4 \oneVoice e'-. e, e' | a, e'-. e, e' | a, e'-. e,2 | d4 d'-. dis, dis' | % 2a
  e,4 e'-. a, a, | d d'-. a d | d, d'-. f, f' | e, e'-. b e |
  a,4 e'-. e, e' | a, e'-. e, e' | a, e'-. e, e' | d, d'-. a d |
  d,8 e r4 r2 | d'4 a'-. a, a' | d, a'-. fis, f | % 3a
  e4 e'-. b e | a, e'-. e, e' | a, e'-. e, e' |
  a, e'-. e, e' | d, d'-. dis, dis' | <e, e'>8 r r4 r2 |
  d'4 a'-. a, a' | d, a'-. fis, f | e e'-. b e | % 4a
  a,4 e'-. e, e' | a, e'-. e, e' | a, e'-. e, e' |
  \appoggiatura {cis16 c} d4 cis c b8 bes~ | 4 \appoggiatura {fis f} f4 <bes, bes'> r \key ees \major | ees ees'-. bes ees-. |
  ees, ees'-. bes ees-. | bes r bes,2 | ees4 f fis g | % 5a
  aes4 aes'-. ees aes-. | aes, aes'-. ees aes-. | aes, aes'-. ees aes-. |
  <aes, aes'>4-. <g g'>-. <f f'>-. <fes fes'>-. | ees ees'-. bes ees | ees, ees'-. f, g |
\override Glissando.style = #'zigzag
  aes2\glissando c' \showStaffSwitch \change Staff = pianorh \voiceTwo a'8 fis a c~4 s \hideStaffSwitch \change Staff = pianolh \oneVoice
  ees,,4 <g bes>-. bes, q-. |
  es4 q-. bes q-. | f f'-. bes,2 | ees4 e-. f-. fis8-. g~ |
  g4 d,-. <g, g'>-> r \key c \major | c' <e g>-. g, q-. | c q-. g ees'-. |
  d4 f-. d, d'-. | g, g'-. d, d'-. | g, g'-. d, d'-. | % 7a
  g,4 g'-. d g-. | c, g'-. cis, g'-. | d r r2 |
  c4 <e g>-. g, q-. | c q-. g ees'-. | d-. f-. d, d'-. |
  g,4 g'-. d f-. | g, g'-. d g-. | g, g'-. d g-. | % 8a
  c,4 <e g>-. g, q-. | <bes aes'>4.-> <a g'>8-. ~2 | d4 a'-. a, a'-. |
  g,2-> g'-> | c,4-.-> e'8(dis e c4.-.) | \appoggiatura {d16 dis} e4-> g,,8 <c, c'>~4 r |
%  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new NullVoice \alto
            \addlyrics \wordsAlto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) \tenor \bass
            \new NullVoice = alignerT \tenor
            \new NullVoice \bass
            \addlyrics \wordsBass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoLH
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
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new NullVoice \alto
            \addlyrics \wordsAlto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) \tenor \bass
            \new NullVoice = alignerT \tenor
            \new NullVoice \bass
            \addlyrics \wordsBass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
%            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice {\tripletFeel 8 \soprano}
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\tripletFeel 8 \alto}
          >>
                                % Tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice {\tripletFeel 8 \tenor}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice {\tripletFeel 8 \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice {\tripletFeel 8 \pianoRHone}
            \new Voice {\tripletFeel 8 \pianoRHtwo}
            \new Dynamics \dynamicsPiano
            \new Voice {\tripletFeel 8 \pianoLH}
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice {\tripletFeel 8 \soprano}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\tripletFeel 8 \alto}
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice {\tripletFeel 8 \tenor}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice {\tripletFeel 8 \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice {\tripletFeel 8 \pianoRHone}
            \new Voice {\tripletFeel 8 \pianoRHtwo}
            \new Dynamics \dynamicsPiano
            \new Voice {\tripletFeel 8 \pianoLH}
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice {\tripletFeel 8 \soprano}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\tripletFeel 8 \alto}
          >>
                                % Tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice {\tripletFeel 8 \tenor}
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice {\tripletFeel 8 \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice {\tripletFeel 8 \pianoRHone}
            \new Voice {\tripletFeel 8 \pianoRHtwo}
            \new Dynamics \dynamicsPiano
            \new Voice {\tripletFeel 8 \pianoLH}
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice {\tripletFeel 8 \soprano}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\tripletFeel 8 \alto}
          >>
                                % Tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice {\tripletFeel 8 \tenor}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice {\tripletFeel 8 \bass}
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice {\tripletFeel 8 \pianoRHone}
            \new Voice {\tripletFeel 8 \pianoRHtwo}
            \new Dynamics \dynamicsPiano
            \new Voice {\tripletFeel 8 \pianoLH}
          >>
        >>
      >>
    >>
    \midi {}
  }
}
