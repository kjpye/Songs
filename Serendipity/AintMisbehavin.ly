\version "2.25.18"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ain’t Misbehavin’"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Thomas Waller & Harry Brooks"
  arranger    = "Arr. Kirby Shaw"
%  opus        = "opus"

  poet        = "Andy Razaf"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo \markup{"Easy Swing(" \rhythm {8[8]} = \rhythm {\tuplet 3/2 {4 8}} ")"} 4=116
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*2
  \mark \markup \circle "A" s1
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "2d" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*2
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "3d" } s1
  \mark \markup\circle "B" s1*2 |
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "4d" } s1*2
  \textMark \markup { \box "5a" } s1*2
  \textMark \markup { \box "5b" } s1*3
  \mark \markup\circle "C"
  \textMark \markup { \box "5c" } s1*2
  \textMark \markup { \box "5d" } s1*2
  \textMark \markup { \box "6a" } s1*2
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "6d" } s1*3
  \textMark \markup { \box "7a" } s1
  \mark \markup\circle "D" s1*2
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "7c" } s1*3
  \textMark \markup { \box "7d" } s1*2
  \textMark \markup { \box "8a" } s1*2
  \textMark \markup { \box "8b" } s1*2
  \textMark \markup { \box "8c" } s1*3
  \textMark \markup { \box "8d" } s1*2
  \textMark \markup { \box "8e" } s1*3
}

solo = \relative {
  \override DynamicTextSpanner.style = #'none
  R1*39 |
  r8^\markup\tiny {"Solo scat (Megaphone style), trumpet imitation or tap solo to" \circle "D"} g' a g a g4 8_\markup\italic sim. | a g a \appoggiatura {g16 a} g8~2 | % 5c
  r8 g a g a g4 e8 | d c d \appoggiatura {c16 d} c8~2 |
  r8 g' a g a g4 8 | a g e \appoggiatura {g16 a} g8~2 | % 6a
  r4 c-. a8 g e c | a4-. c-. e8 g~4 | r8 g a g a g4 8 |
  a8 g e \appoggiatura {g16 a} g8~2 | r8 g a g a g4 e8 | d des c \appoggiatura {c'16 d} c8~2 |
  r8 g a c a e~4 | e8 ees d \appoggiatura {g16 a} g8~2 | r4 c4-. a8 e c a |
  e'8 e-. r c-.^\markup\italic "End solo" r2 | % 7a
  R1*21 |  
}

wordsSolo = \lyricmode {
  Vo do vee o dee, vo do vee o do, __
  vo do vee o dee, vo do vee o do, __
  vo do vee o dee, vo do vee o do, __
  Zot zo vee o vee oat doat la do __
  vo do vee o dee, vo do vee o do, __
  vo do vee o dee, vo do vee o do, __
  vo do vee o dee, vo do vee o do, __
  zot zo vee o vee o doat doat!
}

soprano = \relative {
  \global \dynamicUp
  \override DynamicTextSpanner.style = #'none
  R1 | r8 c''4.->\mf a8 c r a~ | 4 e8 \appoggiatura {g16 a} g8~2 |
  R1 | R | r8 c, d c g' g~4 |
  r8 d e d a'2 | r8 g a g c8 4 b8 | d c a e~e ees d4 |
  r8 c d c g' g~4 | r8 d e d a'8 4 g8 | e1 |
  R1 | r8 c d c g' g~4 | r8 d e d a'2 | % 3a
  r8 g a g c8 4 b8 | d c a e~e ees d4 |
  r8 c d c g' g~4 | r8 d e d a'8 4 g8 | c1~ |
  c2. r4 | e,2. 4-. | f2. 4-. |
  fis2. 4-. | g2. 4-. | d2 g | % 4a
  g2 fis | f f | e ees |
  r8 c d c g' g~4 | d8 e d a'~2 | r8 g a g c8 4 b8 |
  d8 c a e~e ees d4 | r8 c d c g' g~4 |
  r8 a a g a g4 a8 | c c->~4 a8 c-. r a~ | % 5a
  a4 e8 \appoggiatura {g16 a} g8~2 | R1 | R |
  e4-.\mp e-. g-. r | f^\markup\italic sim. f a r |
  g4 g g r | a a aes r |
  g4 e e r | c c c8 d~4 | % 6a
  e4-. r r2 | R1 | e4-. e-. g-. r |
  f4^\markup\italic sim. f a r | g g g r | a a aes r |
  g4 e e r | c c c8 d-> ~4 | c4 r r2 |
  R1 | r4 c'8 a c a~4 | r4 c8 a c a~4 | % 7a
  r4 c8 a c a~4 | cis8 e cis a~2 | r4 d d d |
  d4 c b8 a4 g8~ | 2 a | e4. 8~2\cresc |
  r8 g a g a g4 8 | a g a \appoggiatura {g16 a} g8~2 |
  r8 g a g a g4 e8 | \tuplet 3/2 {d4-> c-> d->} \tuplet 3/2 {ees8 d c~} 4 | % 8a
  r8 c e g b a~4 | c8 a f g e4 d8 g~ |
  g2 bes4. a8~ | 1 | r8 c\f c a c a~4 |
  g8 a c d \tuplet 3/2 {ees8(d4)} \tuplet 3/2 {c8(a) c~} | 1~ |
  c2. r8 g\mp | c a g a e4 g,8 c |
  <<{\override NoteHead.style = #'cross r4 r8^\markup Gently b'~4\glissando \hideNotes d,4 |}
    \new Voice { \ov s2. r4}>>
  \bar "|."
}

wordsSop = \lyricmode {
  Da da dot da __ da da, __
  No one to talk with, __ all by my -- self,
  no one to walk with, but I’m hap -- py on __ the shelf.
  Ain’t mis -- be -- hav -- in’, __
  I’m sav -- in’ my love for you.
  I know for cer -- t’n __ the one I love,
  I’m thru with flirt -- ’n’,
  it’s just you Im think -- in’ of,
  Ain’t mis -- be -- hav -- in’, __
  I’m sav -- in’ my love for you. __
  Du doot du doot du doot du doot
  du du du du du du du du
  I don’t stay out late, __ don’t care to go, __
  I’m home a -- bout eight,
  just me and my ra -- di -- o,
  Ain’t mis -- be -- hav -- in’, __
  I’m sav -- in’ my love for you.
  Da __ da dot da __ da da, __
  Dot dot dot dot dot dot
  dot dot dot dot dot dot
  dot dot dot dot dot da da __ dot
  dot dot dot dot dot dot
  dot dot dot dot dot dot
  dot dot dot dot dot da da __ dot.
  Like Jack Hor -- ner __ in the cor -- ner, __
  don’t go no -- where, what do I care, __
  your kiss -- es are worth wait -- ing for, __
  be -- lieve me. __
  I don’t stay out late,
  I don’t care to go, __
  I’m home a -- bout eight,
  just me and my ra -- di -- o, __
  Ain’t mis -- be -- hav -- in’, __
  sav -- in’ all my love for you, __
  just you. __
  Ain’t mis -- be -- hav -- in’, __
  sav -- in’ all my love __ for you, __
  I’m sav -- in’ all my love __ for you!
  Yeah!
}

wordsSopMidi = \lyricmode {
  "Da " "da " "dot " "da "  "da " "da, " 
  "\nNo " "one " "to " "talk " "with, "  "all " "by " my "self, "
  "\nno " "one " "to " "walk " "with, " "but " "I’m " hap "py " "on "  "the " "shelf. "
  "\nAin’t " mis be hav "in’, " 
  "\nI’m " sav "in’ " "my " "love " "for " "you. "
  "\nI " "know " "for " cer "t’n "  "the " "one " "I " "love, "
  "\nI’m " "thru " "with " flirt "’n’, "
  "\nit’s " "just " "you " "Im " think "in’ " "of, "
  "\nAin’t " mis be hav "in’, " 
  "\nI’m " sav "in’ " "my " "love " "for " "you. " 
  "\nDu " "doot " "du " "doot " "du " "doot " "du " "doot "
  "\ndu " "du " "du " "du " "du " "du " "du " "du "
  "\nI " "don’t " "stay " "out " "late, "  "don’t " "care " "to " "go, " 
  "\nI’m " "home " a "bout " "eight, "
  "\njust " "me " "and " "my " ra di "o, "
  "\nAin’t " mis be hav "in’, " 
  "\nI’m " sav "in’ " "my " "love " "for " "you. "
  "\nDa "  "da " "dot " "da "  "da " "da, " 
  "\nDot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "da " "da "  "dot "
  "\ndot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "da " "da "  "dot. "
  "\nLike " "Jack " Hor "ner "  "in " "the " cor "ner, " 
  "\ndon’t " "go " no "where, " "what " "do " "I " "care, " 
  "\nyour " kiss "es " "are " "worth " wait "ing " "for, " 
  "\nbe" "lieve " "me. " 
  "\nI " "don’t " "stay " "out " "late, "
  "\nI " "don’t " "care " "to " "go, " 
  "\nI’m " "home " a "bout " "eight, "
  "\njust " "me " "and " "my " ra di "o, " 
  "\nAin’t " mis be hav "in’, " 
  "\nsav" "in’ " "all " "my " "love " "for " "you, " 
  "\njust " "you. " 
  "\nAin’t " mis be hav "in’, " 
  "\nsav" "in’ " "all " "my " "love "  "for " "you, " 
  "\nI’m " sav "in’ " "all " "my " "love "  "for " "you! "
  "\nYeah! "
}

alto = \relative {
  \global \dynamicUp
  \override DynamicTextSpanner.style = #'none
  R1 | r8 e'4.->\mf cis8 8-. r8 c~ | 4 8 b8~2 |
  R1 | R | e4--^\markup\italic "slightly accented" e-- e-- e-- |
  f4^\markup\italic sim. f f f | e^\markup\italic "stagger breathing" e e g | a a aes c, |
  e4 e d cis | c c c b | R1 |
  R1 | e4 e e e | f f fis fis | % 3a
  g4 g f g | a a aes c, |
  e4 e d cis | c c c b | e e f f |
  fis4 fis g8 e-> ~4 | c2. 4-. | 2. 4-. |
  c2. 4-. | cis2. 4-. | b2 2 | % 4a
  c2 2 | 2 2 | b b |
  e4 e e e | f f fis fis | g g f g |
  a4 a aes c, | e e d cis |
  c4 c c b | e8 e-> ~4 cis8 8-. r c~ | % 5a
  c4 8 b~2 | R1 | R |
  e4-.\mp e-. e-. r | c4^\markup\italic sim. c f r |
  e4 e d r | f f d r |
  e4 c cis r | a a a8 b-> ~4 | % 6a
  e4-. r r2 | R1 | e4-. e-. e-. r |
  c4^\markup\italic sim. c f r | e e d r | f f d r |
  e4 c cis r | a a a8 b-> ~4 | g4-. r r2 |
  r2 r4 b4-.\mf | c2. 4-. | 2. 4-. | % 7a
  c2. 4-. | cis2. 4-. | b2 b |
  c2 c | c c | \after 2 \cresc b1 |
  r8 e e e e e4 8 | f f f f~2 |
  r8 f f f d d4 8 | \tuplet 3/2 {c4-> c-> c->} \tuplet 3/2 {c8 8 8~} 4 | % 8a
  r8 c c e e e~4 | f8 f f f e4 d8 8~ |
  d2 4. 8~( | 4. c8~2) | r8 fis8\f 8 8 8 8~4 |
  g8 a c, d \tuplet 3/2 {ees8(d4)} \tuplet 3/2 {c8(a) c} | r e4-> 8 g4 g |
  a4 8 aes~4 r8 g\mp | c a g a e4 g,8 c |
  <<{\override NoteHead.style = #'cross r4 r8 b'~4\glissando \hideNotes d,4 |}
    \new Voice { \ov s2. r4}>>
  \bar "|."
}

wordsAlto = \lyricmode {
  Da da dot da __ da da, __
  Du du du du du du du du du du du du du du du du du du du du du du du du
  Du du du du du du du du du du du du du du du du
  du du du du du du du du du du du du du du du du, __
  Du doot du doot du doot du doot du du du du du du du du
  DU du du du du du du du du du du du
  du du du du du du du du
  du du du du du da __ da dot da __ % 5a
  da da, __
  Dot dot dot dot dot dot
  dot dot dot dot dot dot
  dot dot dot dot dot da da __ % 6a
  dot dot dot dot
  dot dot dot dot dot dot dot dot dot
  dot dot dot dot dot da da __ dot.
  Dot du doot du doot % 7a
  du doot du doot du du
  du du du du du
  
  I don’t stay out late, I don’t care to go, __
  I’m home a -- bout eight, % 8a
  just me and my ra -- di -- o, __
  Ain’t mis -- be -- hav -- in’, __
  sav -- in’ all my love for you, __
  just you. __
  Ain’t mis -- be -- hav -- in’, __
  sav -- in’ all my love __ for you, __
  sav -- in’ all my love for you, __
  I’m sav -- in’ all my love for you!
  Yeah!
}

wordsAltoMidi = \lyricmode {
  "Da " "da " "dot " "da "  "da " "da, " 
  "\nDu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du "
  "\nDu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du, " 
  "\nDu " "doot " "du " "doot " "du " "doot " "du " "doot " "du " "du " "du " "du " "du " "du " "du " "du "
  "\nDU " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "da "  "da " "dot " "da "  % 5a
  "\nda " "da, " 
  "\nDot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "da " "da "  % 6a
  "\ndot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "da " "da "  "dot. "
  "\nDot " "du " "doot " "du " "doot " % 7a
  "\ndu " "doot " "du " "doot " "du " "du "
  "\ndu " "du " "du " "du " "du "
  
  "\nI " "don’t " "stay " "out " "late, " "I " "don’t " "care " "to " "go, " 
  "\nI’m " "home " a "bout " "eight, " % 8a
  "\njust " "me " "and " "my " ra di "o, " 
  "\nAin’t " mis be hav "in’, " 
  "\nsav" "in’ " "all " "my " "love " "for " "you, " 
  "\njust " "you. " 
  "\nAin’t " mis be hav "in’, " 
  "\nsav" "in’ " "all " "my " "love "  "for " "you, " 
  "\nsav" "in’ " "all " "my " "love " "for " "you, " 
  "\nI’m " sav "in’ " "all " "my " "love " "for " "you! "
  "\nYeah! "
}

tenor = \relative {
  \global \dynamicUp \vo \apart
  \override DynamicTextSpanner.style = #'none
  R1 | r8 g4.->\mf 8 8-. r f~ | 4 8 8~2 |
  r8^\markup\italic "(echo)" c'4.-> a8 c-. r a~ | 4 bes8 b~2 | \auto g4--^\markup\italic "slightly accented" g-- bes-- bes-- |
  a4^\markup\italic sim. a b b | b^\markup\italic "stagger breathing" b bes bes | c c c aes |
  g4 g g g | fis fis \apart f f | r8 c'4.-> a8 c-. r a~ |
  a4 bes8 b~4 r | \auto g b bes a | a d c b | % 3a
  b4 d bes bes | c c c aes |
  g4 g g g | fis fis f f | g g c c |
  c4 c d8 c-> ~4 | \apart r4^\markup\italic "Opt. solo" c8 a c a~4 | r4 c8 a c a~4 |
  r4 c8 a c a~4 | cis8 a c a~2 | r4 d d d | % 4a
  d4 c b8 a4 g8~ | 2 a | e4. g8~2^\markup\italic "end opt. solo"
  \auto g4 b bes a | a d c b | b d bes bes |
  c4 c c aes | g g g g |
  fis4 4 f f | \apart g8 8-> ~4 8 8-. r f~ | % 5a
  f4 8 8~2 | r8^\markup\italic "(echo)" c'4.-> a8 c-. r a~ | 4 bes8 b~2 |
  \auto g4-.\mp g-. bes-. r | a^\markup\italic sim. a b r |
  b4 b bes r | c c c r |
  g4 g g r | fis fis \apart f8 f-> ~4 | % 6a
  \auto g4-. r r2 | \apart R1 | \auto g4-. g-. bes-. r |
  a4 a b r | b b bes r | c c c r |
  g4 g g r | fis fis \apart f8 f-> ~4 | \auto e4-. r r2 |
  r2 r4 gis4-.\mf | e2. 4-. | f2. 4-. | % 7a
  fis2. 4-. | g2. 4-. | d2 g |
  g2 fis | f f | \after 2 \cresc f1 |
  \apart r8 \auto g g g bes8 4 8 | c8 c c b~2 |
  \apart r8 bes8 8 8 \auto bes8 4 8 | \tuplet 3/2 {a4-> a-> a->} \tuplet 3/2 {a8 a a~} a4 | % 8a
  \apart r8 g g c \auto cis8 8~4 | c8 c c c b4 8 bes~ |
  bes2 g4. 8~ | 1 | \apart r8 a\f a c \auto e c~4 |
  g8 a c d \tuplet 3/2 {e8(d4)} \tuplet 3/2 {c8(a) c} | r8 c4-> 8 e4 4 |
  f4 8 8~4 r8 g,\mp | c a g a e4 g8 c |
  <<{\override NoteHead.style = #'cross r4 r8 a~4\glissando \hideNotes b,4 |}
    \new Voice { \ov s2. r4}>>
  \bar "|."
}

wordsTenorAbove = \lyricmode {
  _ _ _ _ _ _
  Du du doot du __ du du, __ "" _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ du du doot du
  du du, __ "" _ _ _ _ _ _ _ % 3a
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ Like Jack Hor -- ner __ in the cor -- ner, __
  don’t go no -- where, what do I care, __ your kis -- es, % 4a
  are worth wait -- ing for, __ be lieve me. __
  "" _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ % 5a
  _ _ Du du doot du __ du du, __
  "" _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ % 6a
  _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ % 7a
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ % 8a
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  
}

wordsTenorSep = \lyricmode {
  Da da dot da __ da da, __
  Du du doot du __ du du, __ Du du du du
  du du du du du du du du du du du du
  du du du du du du du du du du doot du
  du du, __ Du du du du du du du du % 3a
  du du du du du du du du
  du du du du du du du du du du du du
  du du du du, __ Like Jack Hor -- ner __ in the cor -- ner, __
  don’t go no -- where, what do I care, __ your kis -- es, % 4a
  are worth wait -- ing for, __ be lieve me. __
  Du du du du du du du du du du du du
  du du du du du du du du
  du du du du du da __ da dot da __ % 5a
  da da, __  Du du doot du __ du du, __
  Dot dot dot dot dot dot
  dot dot dot dot dot dot
  dot dot dot dot dot da da __ % 6a
  dot dot dot dot
  dot dot dot dot dot dot dot dot dot
  dot dot dot dot dot da da __ dot.
  Dot du doot du doot % 7a
  du doot du doot du du
  du du du du du
  I don’t stay out late, I don’t care to go, __
  I’m home a -- bout eight, % 8a
  just me and my ra -- di -- o, __
  Ain’t mis -- be -- hav -- in’, __
  sav -- in’ all my love for you, __
  just you. __
  Ain’t mis -- be -- hav -- in’, __
  sav -- in’ all my love __ for you, __
  sav -- in’ all my love for you, __
  I’m sav -- in’ all my love for you!
  Yeah!
}

wordsTenorMidi = \lyricmode {
  "Da " "da " "dot " "da "  "da " "da, " 
  "\nDu " "du " "doot " "du "  "du " "du, "  "Du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "doot " "du "
  "\ndu " "du, "  "Du " "du " "du " "du " "du " "du " "du " "du " % 3a
  "\ndu " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du, "  "Like " "Jack " Hor "ner "  "in " "the " cor "ner, " 
  "\ndon’t " "go " no "where, " "what " "do " "I " "care, "  "your " kis "es, " % 4a
  "\nare " "worth " wait "ing " "for, "  "be " "lieve " "me. " 
  "\nDu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "da "  "da " "dot " "da "  % 5a
  "\nda " "da, "   "Du " "du " "doot " "du "  "du " "du, " 
  "\nDot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "da " "da "  % 6a
  "\ndot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "da " "da "  "dot. "
  "\nDot " "du " "doot " "du " "doot " % 7a
  "\ndu " "doot " "du " "doot " "du " "du "
  "\ndu " "du " "du " "du " "du "
  "\nI " "don’t " "stay " "out " "late, " "I " "don’t " "care " "to " "go, " 
  "\nI’m " "home " a "bout " "eight, " % 8a
  "\njust " "me " "and " "my " ra di "o, " 
  "\nAin’t " mis be hav "in’, " 
  "\nsav" "in’ " "all " "my " "love " "for " "you, " 
  "\njust " "you. " 
  "\nAin’t " mis be hav "in’, " 
  "\nsav" "in’ " "all " "my " "love "  "for " "you, " 
  "\nsav" "in’ " "all " "my " "love " "for " "you, " 
  "\nI’m " sav "in’ " "all " "my " "love " "for " "you! "
  "\nYeah! "
}

bass = \relative {
  \global \dynamicDown \vt
  \override DynamicTextSpanner.style = #'none
  r2 r8 g,\mf a b |c2 a | d4. g,8-. r g a b |
  c2 a | d4. g,8 r g a b | c4 c cis cis |
  d4 d g, g | c c c e | f f f f |
  c4 c a a | d d g,8 g a b | c2 a |
  d4. g,8-. r g a b | c4 c cis cis | d d dis dis | % 3a
  e4 e c e | f f f f |
  c4 c a a | d d g, g | c c d d |
  dis4 dis e8 gis8-> ~4 | a2. 4 | 2. 4 |
  a2. 4-. | 2. 4-. | g2 e | % 4a
  a,2 d | d d | g,2 r8 g a b |
  c4 c cis cis | d d dis dis | e e c e |
  f4 f f f | c c a a |
  d4 d g,8 8 a b | c2 a | % 5a
  d4. g,8 r g a b | c2 a | d4. g,8 r g a b |
  c4\mp 4 cis r | d d g, r |
  c c e r | f f f r |
  c4 c a r | d d g,8 g a b | % 6a
  c4 r r2 | r2 r8 g a b | c4-. c-. cis-. r |
  d4 d g, r | c c e r | f f f r |
  c4 c a r | d d g,8 g-> a b | c4-. r r2 |
  r2 r4 e\mf | a,2. 4-. | 2. 4-. | % 7a
  a2. 4-. | 2. 4-. | g2 e' |
  a,2 d | d d | g, r8\cresc g a b |
  c8 c c c cis8 4 8 | d8 8 8 g,~8 g a b |
  c4 8 8 e8 4 g8 | \tuplet 3/2 {f4-> f-> f->} \tuplet 3/2 {fis8 8 8~} 8 8 | % 8a
  g4 8 8 8 8~4 | d8 8 8 8 g4 f8 e~ |
  e2 4. a,8~ | 2 r8 a\f b cis | d4 8 8 8 8~4 |
  g8 a c d \tuplet 3/2 {ees8(d4)} \tuplet 3/2 {c8(a) c} | r g4-> 8 bes4 4 |
  c4 8 d~4 r8 g,8\mp | c a g a e4 g8 c |
  <<{\override NoteHead.style = #'cross r4 r8 a~4\glissando \hideNotes b,4 |}
    \new Voice { \ov s2. r4}>>
  \bar "|."
}

wordsBass = \lyricmode {
  Da da da da da da dot, Du du du
  du du du doot, Du du du _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ du du du du du
  du doot, Du du du _ _ _ _ _ _ _ _ % 3a
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ Du doot du doot
  Du doot du doot du du % 4a
  du du du du du, Du du du
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ Du du du da da % 5a
  da dot, Du du du du du du doot. Du du du
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ da da da % 6a
  _ Du du du _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ da da da _
  _ _ _ _ _ % 7a
  _ _ _ _ _ _
  _ _ _ _ _ Du du du
  du, _ _ _ _ _ _ _ _ _ _ you know I’m
  home, _ _ _ _ _ _ _ _ _ _ _ I % 8a
  Ain’t _ _ _ _ _ _ _ _ _ _ _
  _ _ You know I Ain’t _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
}

wordsBassSep = \lyricmode {
  Da da da da da da dot, Du du du
  du du du doot, Du du du du du du du
  du du du du du du du du du du du du
  du du du du du du du du du du du du
  du doot, Du du du du du du du du du du du % 3a
  du du du du du du du du
  du du du du du du du du du du du du
  du du du du, __ Du doot du doot
  Du doot du doot du du % 4a
  du du du du du, Du du du
  du du du du du du du du du du du du
  du du du du du du du du
  du du du Du du du da da % 5a
  da dot, Du du du du du du doot. Du du du
  dot dot dot dot dot dot
  dot dot dot dot dot dot
  dot dot dot dot dot da da da da % 6a
  dot Du du du dot dot dot
  dot dot dot dot dot dot dot dot dot
  dot dot dot dot dot da da da da dot.
  Dot du doot du doot % 7a
  du doot du doot du du
  du du du du du Du du du
  du, I don’t stay out late, I don’t care to go, __ you know I’m
  home, home a -- bout eight, Just me and my ra -- di -- o. __ I % 8a
  Ain’t mis -- be -- hav -- in’, __ sav -- in’ a;; my love for you, __
  just you. __ You know I Ain’t mis -- be -- hav -- in, __
  sav -- in’ all my love __ for you, __ sav -- in’ all my
  love for you, __ I’m sav -- in’ all my love for you! Yeah! __
}

wordsBassMidi = \lyricmode {
  "Da " "da " "da " "da " "da " "da " "dot, " "Du " "du " "du "
  "\ndu " "du " "du " "doot, " "Du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "doot, " "Du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " % 3a
  "\ndu " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du, "  "Du " "doot " "du " "doot "
  "\nDu " "doot " "du " "doot " "du " "du " % 4a
  "\ndu " "du " "du " "du " "du, " "Du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "du " "du " "du " "du " "du "
  "\ndu " "du " "du " "Du " "du " "du " "da " "da " % 5a
  "\nda " "dot, " "Du " "du " "du " "du " "du " "du " "doot. " "Du " "du " "du "
  "\ndot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "da " "da " "da " "da " % 6a
  "\ndot " "Du " "du " "du " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "dot " "dot " "dot " "dot "
  "\ndot " "dot " "dot " "dot " "dot " "da " "da " "da " "da " "dot. "
  "\nDot " "du " "doot " "du " "doot " % 7a
  "\ndu " "doot " "du " "doot " "du " "du "
  "\ndu " "du " "du " "du " "du " "Du " "du " "du "
  "\ndu, " "I " "don’t " "stay " "out " "late, " "I " "don’t " "care " "to " "go, "  "you " "know " "I’m "
  "\nhome, " "home " a "bout " "eight, " "Just " "me " "and " "my " ra di "o. "  "I " % 8a
  "\nAin’t " mis be hav "in’, "  sav "in’ " "a;; " "my " "love " "for " "you, " 
  "\njust " "you. "  "You " "know " "I " "Ain’t " mis be hav "in, " 
  "\nsav" "in’ " "all " "my " "love "  "for " "you, "  sav "in’ " "all " "my "
  "\nlove " "for " "you, "  "I’m " sav "in’ " "all " "my " "love " "for " "you! " "Yeah! " 
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \with {alignAboveContext = men} \wordsTenorAbove
            \new NullVoice \bass
            \addlyrics \wordsBass
          >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \with {alignAboveContext = men} \wordsTenorAbove
            \new NullVoice \bass
            \addlyrics \wordsBass
          >>
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
    output-suffix = singlepage-sep
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
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
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
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
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
    output-suffix = singlepage-tenor
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
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
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
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
%            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
           >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
           >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
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
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
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
    output-suffix = midi-tenor
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
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
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
    output-suffix = midi-bass
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
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
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
