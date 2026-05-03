\version "2.27.0"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I am Australian"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Bruce Woodley & Dobe Newton"
  arranger    = "Arr. Steven Hodgson, David Howell & Alex Garsden"
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
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=72
  s1*9 | s2 | s1*10 | s2 | s1*9 | s2 | s1 | s2 | s1*10 |
  \set Score.tempoHideNote = ##t
  s2 \tempo "rall." 4=64 s | s1*2 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*4
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*2 \time 2/4 s2
  \textMark \markup { \box "3a" } \time 4/4 s1
  \mark \markup\bold\circle A     s1*3
  \textMark \markup { \box "3b" } s1*2
  \textMark \markup { \box "4a" } s1*2
  \textMark \markup { \box "4b" } s1*2 \time 2/4 s2
  \textMark \markup { \box "5a" } \time 4/4 s1*2
  \mark \markup\bold\circle B     s1*2
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "6a" } s1 \time 2/4 s2 \time 4/4 s1 \time 2/4 s2
  \mark \markup\bold\circle C     \time 4/4 s1
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" } s1*5
}

ChordTrack = \chordmode {
  s1*2 c1 f2 c |
  s1 f4 g c2 s1 | f4 g a2:m f4 c/e d2:m7 f4 g | % 2
  c1 s1*2 c1 | f2 c a1:m |
  f4 g c2 s1 | f4 g a2:m f4 c/e d2:m7 f4 g |
  c1 s c f4 c2. | a2:m g c1 s f4 c2. | % 5
  s2 a4..:m f16 s4 g c1 s2 c1 | f4 c2. a2:m g c1 |
  s1 f4 c2. s2 a4.:m f8 s4 g c2 | s1*5 |
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1 | s2.. s8\mp | s1*2 |
  s1*5 s2 | % 2
  s1 | s\p | s2.. s8\mf | s1*3 |
  s1*3 | s2\mp s\< | s\f |
  s1*8 | % 5
  s2..\mp s8\f | s2 | s1 | s4 s\ff | s1 || s1*3 |
  s1*4 | s1\mf | s2.. s8\p | s1*3 |
}

soprano = \relative {
  \global \numericTimeSignature
  R1 | r2 r4 r8 e'16 g | 8 4 8 8 e r e16 g | a8 8~8. g16 4 r8 c,16 d |
  e8 8 8. 16 f8 e r c16 c | 8 16 d~d f8 e16~4 r8 e16 g | 8 8 16 f8 e16~4 g8 8 | % 2a
  a16 8. b8. 16 c4 r8 a16 a | g8. 16 8. 16 8 f~8. c16 | c8 e d8. c16 |
  c2. r4 | e1( | c2.) r8 e16 g | 8 8 8. 16 16 e8. r8 e16 g | % 3a
  a8 8 8 g16 g~4 r8 c,16 d | e8. 16 8. g16 f e8. r8 e16 d |
  c8 8 d16 f8 e16~4 r8. g16 | 8 16 16~8 r16 g16 8 f16 e~8 r16 g | % 4a
  a16 8. b16 8. c4 r8. a16 | g16 8. 8. 16 8 f~8. c16 | 8 e d8. c16 |
  c1 | r2 r4 e8 d | c2 r8 c e16 g8. | a8.(g16) 4 r e8 d | % 5a
  c4. e16 d~8 16 16~8 f | e2 r8 8 8 d16 c~ | 2 r8 c' c b | a8.(g16) 4~8 r r4 |
  a8. g16 r4 e8. d16 r8 c16 c~ | 8 e d8. c16 | 1 | r4 e8 d | c2 r8 8 e16 g8. | % 6a
  a8.(g16) 4 r e8 d | c4. e16 d~8 16 16~8 f | e2 r8 e e d16 c~ |
  c2 r8 c' c b | a8.(g16) 4~8 r r4 | a8. g16 r4 e8. d16 r8 c16 c~ | 8 e d8. c16 2 | % 7a
  a'8. g16 r4 e8. d16~4~ | 2 r4 r8 c16 c~ | 4 e d4. c8 | 1~ | 2. r4 |
  \bar "|."
}

wordsSop = \lyricmode {
  I’m a tel -- ler of sto -- ries,
  I’m a sing -- er of songs
  I am Al -- bert Na -- mat -- ji -- ra,
  and I paint the ghost -- ly gums,
  I am Clan -- cy on his horse,
  I’m Ned Kel -- ly on the run,
  I’m the one who waltzed Ma -- til -- da,
  I am Aus -- tra -- li -- an.
  Mmm
  I’m the hot wind from the de -- sert,
  I’m the black soil of the plains,
  I’m the moun -- tains and the val -- leys,
  I’m the drought and flood -- ing rains,
  I am the rock,
  I am the sky,
  the ri -- vers when they run,
  The spi -- rit of this great land,
  I am Aus -- tra -- li -- an.

  We are one but we are ma -- ny,
  and from all the lands on earth we come
  we share a dream and sing with one voice
  I am, you are we are Aus -- tra -- li -- an.
  We are one but we are ma -- ny,
  and from all the lands on earth we come
  we share a dream and sing with one voice
  I am, you are we are Aus -- tra -- li -- an.
  I am, you are we are Aus -- tra -- li -- an.
}

wordsSopMidi = \lyricmode {
  "I’m " "a " tel "ler " "of " sto "ries, "
  "\nI’m " "a " sing "er " "of " "songs "
  "\nI " "am " Al "bert " Na mat ji "ra, "
  "\nand " "I " "paint " "the " ghost "ly " "gums, "
  "\nI " "am " Clan "cy " "on " "his " "horse, "
  "\nI’m " "Ned " Kel "ly " "on " "the " "run, "
  "\nI’m " "the " "one " "who " "waltzed " Ma til "da, "
  "\nI " "am " Aus tra li "an. "
  "\nMmm "
  "\nI’m " "the " "hot " "wind " "from " "the " de "sert, "
  "\nI’m " "the " "black " "soil " "of " "the " "plains, "
  "\nI’m " "the " moun "tains " "and " "the " val "leys, "
  "\nI’m " "the " "drought " "and " flood "ing " "rains, "
  "\nI " "am " "the " "rock, "
  "\nI " "am " "the " "sky, "
  "\nthe " ri "vers " "when " "they " "run, "
  "\nThe " spi "rit " "of " "this " "great " "land, "
  "\nI " "am " Aus tra li "an. "

  "\nWe " "are " "one " "but " "we " "are " ma "ny, "
  "\nand " "from " "all " "the " "lands " "on " "earth " "we " "come "
  "\nwe " "share " "a " "dream " "and " "sing " "with " "one " "voice "
  "\nI " "am, " "you " "are " "we " "are " Aus tra li "an. "
  "\nWe " "are " "one " "but " "we " "are " ma "ny, "
  "\nand " "from " "all " "the " "lands " "on " "earth " "we " "come "
  "\nwe " "share " "a " "dream " "and " "sing " "with " "one " "voice "
  "\nI " "am, " "you " "are " "we " "are " Aus tra li "an. "
  "\nI " "am, " "you " "are " "we " "are " Aus tra li "an. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s1\mp | s |
  s1*5 | s2 | % 2
  s1 | s\p | s2.. s8\mf | s1*3 |
  s1*3 | s2\mp s\< | s\f |
  s1*8 | % 5
  s2..\mp s8\f | s2 | s1 | s4 s\ff | s1 || s1*3 |
  s1*4 | s1\mf | s2.. s8\p | s1*3 |
}

alto = \relative {
  \global
  R1*2 | e'1 | c2(e) |
  c1 | a4(b c2) | e1 | % 2a
  f4(d e) r8 c16 c | 8. 16 8. 16 8 8~8. a16 | 8 c bes8. c16 |
  <g c>2. r4 | c1~ | 2. r8 e16 e | 8 8 8. 16 c16 8. r8 c16 c | % 3a
  f8 8 8 e16 e~4 r8 c16 d | e8. 16 8. g16 f e8. r8 e16 d |
  a8 8 b16 8 c16~4 r8. e16 | 8 16 16~8 r16 c e8 d16 c~8 r16 e | % 4a
  f16 8. d16 g8. e4 r8. c16 | 16 8. 8. 16 8 8~8. a16 | 8 c b8. c16 |
  c1 r2 r4 e8 d c2 r8 8 16 e8. | f8.(e16) 4 r2 | % 5a
  a,2(b) | c r8 c c <g d'>16 <g c>~ | 2 r8 e' e g | f8.(e16) 4~8 r r4 |
  f8. d16 r4 c8. d16 r8 a16 a~ | 8 8 b8. 16 | c1 | r4 c8 b | c2 r8 8 16 e8. | % 6a
  f8.(e16) 4 r c8 d | a4. c16 b~8 16 16~8 d | c2 r8 c c <g d'>16 <g c>~ |
  q2 r8 e' e g | f8.(e16) 4~8 r r4 | f8. d16 r4 c8. d16 r8 a16 a~ | 8 8 b8. 16 c2 | % 7a
  f8. d16 r4 e8. d16~4~ | 2 r4 r8 a16 a~ | 4 4 b4. 8 | c1~ | 2. r4 |
}

words = \lyricmode {
  \*6 Ah
  I’m the one who waltzed Ma -- til -- da,
  I am Aus -- tra -- li -- an.
  Mmm
  I’m the hot wind from the de -- sert,
  I’m the black soil of the plains,
  I’m the moun -- tains and the val -- leys,
  I’m the drought and flood -- ing rains,
  I am the rock,
  I am the sky,
  the ri -- vers when they run,
  The spi -- rit of this great land,
  I am Aus -- tra -- li -- an.

  We are one but we are ma -- ny,
  Ah Ah
  we share a dream and sing with one voice
  I am, you are we are Aus -- tra -- li -- an.
  We are one but we are ma -- ny,
  and from all the lands on earth we come
  we share a dream and sing with one voice
  I am, you are we are Aus -- tra -- li -- an.
  I am, you are we are Aus -- tra -- li -- an.
}

wordsMidi = \lyricmode {
  \*6 "Ah "
  "\nI’m " "the " "one " "who " "waltzed " Ma til "da, "
  "\nI " "am " Aus tra li "an. "
  "\nMmm "
  "\nI’m " "the " "hot " "wind " "from " "the " de "sert, "
  "\nI’m " "the " "black " "soil " "of " "the " "plains, "
  "\nI’m " "the " moun "tains " "and " "the " val "leys, "
  "\nI’m " "the " "drought " "and " flood "ing " "rains, "
  "\nI " "am " "the " "rock, "
  "\nI " "am " "the " "sky, "
  "\nthe " ri "vers " "when " "they " "run, "
  "\nThe " spi "rit " "of " "this " "great " "land, "
  "\nI " "am " Aus tra li "an. "

  "\nWe " "are " "one " "but " "we " "are " ma "ny, "
  "\nAh " "Ah "
  "\nwe " "share " "a " "dream " "and " "sing " "with " "one " "voice "
  "\nI " "am, " "you " "are " "we " "are " Aus tra li "an. "
  "\nWe " "are " "one " "but " "we " "are " ma "ny, "
  "\nand " "from " "all " "the " "lands " "on " "earth " "we " "come "
  "\nwe " "share " "a " "dream " "and " "sing " "with " "one " "voice "
  "\nI " "am, " "you " "are " "we " "are " Aus tra li "an. "
  "\nI " "am, " "you " "are " "we " "are " Aus tra li "an. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s1\mp | s |
  s1*5 | s2 | % 2
  s1 | s\p | s2.. s8\mf | s1*3 |
  s1*3 | s2\mp s\< | s\f |
  s1*8 | % 5
  s2..\mp s8\f | s2 | s1 | s4 s\ff | s1 || s1*3 |
  s1*4 | s1\mf | s2.. s8\p | s1*3 |
}

tenor = \relative {
  \global
  R1*2 | g1 | a2(g) |
  a1 | f4(g4 2) | 1 | % 2a
  a4(g c) r8 a16 a | 8. 16 g8. 16 f8 a~8. f16 | a8 8 g8. 16 |
  <e g>2. r4 | g1~ | 2. r8 16 16 | c8 8 8. g16 e g8. r8 16 16 | % 3a
  c8 8 8 16 16~4 r8 g16 g | a8. 16 8. 16 16 8. r8 e16 e |
  f8 8 d16 8 g16~4 r8. g16 | c8 g16 g~8 r16 g16 8 16 16~8 r16 e | % 4a
  a16 8. g16 c8. 4 r8. a16 | 16 8. g8. 16 f8 a~8. f16 | a8 8 g8. 16 |
  <e g>1 | r2 r4 e'8 d | c2 r8 8 g16 8. | c4 c r2 | % 5a
  e,2(g) | g r8 g g f16 e~ | 2 r8 g g g | c4 4~8 r r4 |
  c8. b16 r4 g8. 16 r8 f16 f~ | 8 c f8. 16 | e1 | r4 g8 g | c2 r8 c g16 8. | % 6a
  c4 c r g8 g | e4. g16 g~8 16 16~8 8 | 2 r8 8 8 f16 e~ |
  e2 r8 g g g | c4 4~8 r r4 | 8.  b16 r4 g8. 16 r8 f16 f~ | 8 c f8. 16 e2 | % 7a
  c'8. b16 r4 g8. 16~4~ | 2 r4 r8 f16 f~ | 4 c f4. 8 | e1~ | 2. r4 |
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s1\mp | s |
  s1*5 | s2 | % 2
  s1 | s\p | s2.. s8\mf | s1*3 |
  s1*3 | s2\mp s\< | s\f |
  s1*8 | % 5
  s2..\mp s8\f | s2 | s1 | s4 s\ff | s1 || s1*3 |
  s1*4 | s1\mf | s2.. s8\p | s1*3 |
}

bass = \relative {
  \global
  R1*2 | c1 | f2(c4 b) |
  a1 | <f f'>4(<g g'> c2) | 1 | % 2a
  f4(g a) r8 f16 f | 8. 16 e8. 16 d8 8~8. 16 | <f, f'>8 8 <g g'>8. 16 |
  c2. r4 | 1~ | 2. r8 16 16 | 8 8 e8. c16 e c8. r8 16 e | % 3a
  f8 8 8 c16 c~4 r8 16 b | a8. 16 c8. a16 16 8. r8 16 16 |
  f8 a g16 8 c16~4 r8. e16 | c8 16 16~8 r16 e c8 16 16~8 r16 c | % 4a
  f16 8. g16 8. a4 r8. f16 | 16 8. e8. 16 d8 8~8. 16 | <f, f'>8 8 <g g'>8. 16 |
  c1 | r2 r4 e8 d | c2 r8 8 16 8. | f4 c r2 | % 5a
  a2(g) | c r8 8 8 16 16~ | 2 r8 c e c | f4 c~8 r r4 |
  <f, f'>8. <g g'>16 r4 a8. b16 r8 <f f'>16 q~ | 8 <f c'> g8. c16 | 1 | r4 8 g' | c2 r8 c g16 c,8. | % 6a
  f4 c r c8 b | a4. g16 16~8 16 16~8 8 | c2 r8 8 8 16 16~ |
  c2 r8 c e c | f4 c~8 r r4 | <f, f'>8. <g g'>16 r4 a8. b16 r8 <f f'>16 q~ | 8 <f c'> g8. c16 2 | % 7a
  <f, f'>8. <g g'>16 r4 a8. b16~4~ | 2 r4 r8 <f f'>16 q~ | 4 <f c'> g4. c8 | 1~ | 2. r4 |
}

pianoRHone = \relative {
  \global
  R1 | r2 r4 r8 e'16(\(g) |
  <e g>8 4 8 8(<c e>) r e16(g) \vo a8 8~8 g8 4\) \ov r8 c,16^(\(d) |
  \vo e8 8 8. 16 f8 e r c | <a c> <f c'> d'8. e16 4\) \ov r8 e16^(\(g) | % 2a
  <e g>8 8 16 <d f>8 <c e>16~4 <e g>8 8 |
  \vo a8. 16 b8 8 c4\) \ov r8 a^\( | g8. 16 8. 16 8 f8 8. c16 | % 2b
  \vo c8 e d8. c16 |
  <e, g c>1\) | \ottava #1 \*3{g'''8(e g e g e g e)} |
  a8(f a f g e g e) | e(c e c e c e c) |
  f8(c g' d g e g e) | g(e g e g e g e) | % 4a
  a8(f b g c g e g) | 4 4 8 f8 8. c16 | \vo c8 e d8. c16 \ov |
  <e, g c>1 \ottava #0 | r2 r4 <c, e>8\(<g d'> | <e c'>2 r8 c' e16 g8. | % 5a
  \vo a8. g16 g2\) \ov e8\(d |
  <e, a c>4. \vo e'16d~8. 16 8 f \ov | % 5b
  <g, c e>2\) r8 <c e> \( q <g d'>16 <e c'>~ | 2 r8 <e' c'> q <g b> |
  \vo a8. g16 4~8 \) \ov r8 r4 |
  <c, f a>8. <b d g>16 r4 <g c e>8. <g d'>16 r8 c16 c~ | % 6a
  \vo c8 e d8. c16 | \ov <e, g c>1 | r4 <c'' e>8( <g d'> |
  <e c'>2 r8 c' e16 g8. |
  \vo a8. g16 4) \ov r8 d16 e b8 c~ | % 6b
  <e, a c>4. \vo e'16 d~8. 16 8 f \ov |
  <g, c e>8 c16(d g4~8) <c, e>8 8 <g d'>16 <e c'>~ |
  q2 r8 <e' c'>8 8 <g b> | % 7a
  \vo a8. g16 4~8 r r4 \ov |
  <c, f a>8. <b d g>16 r4 <g c e>8. <g d'>16 r8 c16 c~ |
  \vo c8 e d8. c16 \ov <e, g c>2 |
  <c f a>8. <b d g>16 r4 <g c e>8. <g d'>16~4~ | % 7b
  q2 r4 r8 c16 c~ | \vo c4 e d4. c8 |
  \ov <e, g c>1~ | 2. r4 |
}  

pianoRHtwo = \relative {
  \global \vt
  s1*3 | <c' f>2 <c e>4 s |
  <a c>2. s4 | s2 <g c>4 s | s1 | % 2a
  f'4 d <e a> s | s1 | a,4 <g b> |
  s1*6 | % 3
  s1*4 | a''4 <g b> |
  s1*3 | <c,, f>4 <c e>2 s4 | s2 <g b> | s1*2 | <c f>4 <c e>~8 s4. |
  s1 | a4 <g b> | s1 | s2 | s1 | <c' f>4 <c e> s2 | s <g b> | s1 | % 6
  s1 | <c f>4 <c e>4~8 s4. | s1 | a4 <g b> s2 | s1*2 | a,2 <g b> | s1*2 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1 | s2.. s8\mp | s1*2 |
  s1*5 | s2 | % 2
  s1 s\p | s1*4 |
  s1*3 | s2\mp s\< | s\f |
  s1*8 | % 5
  s2..\mp s8\f | s2 | s1 | s4 s\ff | s1*4 |
  s1*4 | s1\mf | s2.. s8\p | s1*3 |
}

pianoLH = \relative {
  \global
  R1*2 | c1 | f,2 c'4 b |
  a1 | f8 a g4 c2 | c c, | % 2a
  f4 g a2 | <f' a c>4 <e g c> <d f a c>4. r8 | f,4 g |
  c1 \clef treble \ottava #1 | \*3{c'''8(g c g c g c g) |} % 3a
  c8(a c a c g c g) | a(e a e a e a e) |
  a8(f b g c g c g) | c(g c g c g c g) | % 4a
  c8(a d g e c g c) | <f, a c>4 <e g c> <d f a c>4. r8 | f4 g |
  c1 \ottava #0 | R1 \clef bass | c,,,,8(g' c d e2) | f4 c2 r4 | % 5a
  a2 g | c r | c,8(g' c d e2) | f4 c~8 r r4 |
  f,8. g16 r4 a8. b16 r4 | f4 g | c1 | R2 | c8(g' c d e2) | % 6a
  d4 c2 r4 | a2 g | c4. 16 d g,2 |
  c,8(g' c d e2) | d4 c~8 d16 e b8 c | f,8. g16 r4 a8. b16 r4 | f g c2 | % 7a
  f,,8. g16 r4 a8. b16~4~ | 2 r | f g | c1~ | 2. r4 |
}

#(set-global-staff-size 20)

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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7 
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7 
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7 
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7 
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7 
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7 
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
    output-suffix = midi
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
