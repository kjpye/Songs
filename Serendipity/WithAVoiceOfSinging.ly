\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "With a voice of singing"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Martin Shaw"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Isaiah 48:20"
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
  \partial 2
}

TempoTrack = {
  \tempo "With spirit" 4=144
  s2
  \set Score.tempoHideNote = ##t
  s1*59 |
  s2 \tempo "poco rit." 4=130 s |
  \tempo "a tempo" 4=144 s1*17 |
  \tempo "poco rit." 4=130 s1*5 |
  \tempo allargando 4=120 s1 \tempo 4=115 s1 \tempo 4=110 s1 |
  \tempo "a tempo" 4=144 s1*4
  s2 \tempo 4=72 s |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2 s1*4
  \textMark \markup { \box "2a" }    s1*6
  \textMark \markup { \box "2b" }    s1*6
  \textMark \markup { \box "3a" }    s1*6
  \textMark \markup { \box "3b" }    s1*6
  \textMark \markup { \box "4a" }    s1*6
  \textMark \markup { \box "4b" }    s1*7
  \textMark \markup { \box "5a" }    s1*7
  \textMark \markup { \box "5b" }    s1*6
  \textMark \markup { \box "6a" }    s1*6
  \textMark \markup { \box "6b" }    s1*5
  \textMark \markup { \box "7a" }    s1*5
  \textMark \markup { \box "7b" }    s1*6
  \textMark \markup { \box "8a" }    s1*7
  \textMark \markup { \box "8b" }    s1*7
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2 | s1 | s | s4 s2.\f | s1 |
  s1*8 | s4 s2.\mf | s1*3 | % 2
  s1 | s | s\p | s | s4 s2.\< | s1 | s | s\ff | s1*4 |
  s1*13 | % 4
  s1 | s2 s\mf | s1*11 |
  s1*6 | s4 s2.\f | s1*4 | % 6
  s1*11 |
  s1 | s | s2 s\mp | s1 | s | s2. s4\cresc | s1 | s | s2 s\f\< | s1\ff | s1*4 | % 8
}

soprano = \relative {
  \global
  r2 | R1 | R | r4 c''8 b c4 g | a2 g |
  r4 c, d e | f4. e8 d e f4 | g1 | r4 a8(b c4) b | a1 | g4 r r2 | % 2a
  R1 | R | r4 g b c | d2. c4 | b c d2 | e b4 c |
  a1 | g2 r | e4. 8 2 | fis2. 4 | g2 4 4 | a(g fis g | % 3a
  a4 b) <a c> <b d> | <cis e>1~ | 4 r r e, | a2 4 b | cis4. b8 cis4 e | cis2 a |
  r4 a8(gis a4) e | cis'2 a~ | 1 | r2 r4 g | c2 4 d | e4. d8 e4 g | % 4a
  e2 c | r4 c8(b c4) g | e(d) c2 | r4 c'8(b c4) g | e'2 c~ | 1 | R \section \key e \major |
  R1 | r2 e,4 gis | b4 2 4 | 2 4 4 | cis1~ | 2 r | r e,4 gis | % 5a
  b4. 8 4 4 | 4 4 4 4 | <cis e>1-> | gis2 a | b1 | cis2 ais |
  b1~ | b | gis2 r | R1 | R | R \section \key c \major | % 6a
  r4 c8 b c4 g | a2 g | r4 c, d e | f4. e8 d e f4 | g1 |
  r4 a8(b c4) b | a1 | g4 r r2 | R1 | r4 g a b | % 7a
  c2. 4 | b c d2 | e1~ | 2 c4 d | b2 c~ | 4 r r2 |
  R1 | R | r2 e,4 f | g2 2 | r4 c, e g | a2. g4 | f g a2 | % 8a
  c1 | a2 c | <c e>1~ | q | q~ | q~ | q4 r r2\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  With a voice of sing -- ing de -- clare ye this,
  and let it be heard,
  Al -- le -- lu -- ia.
  De -- clare ye this, and let it be heard,
  Al -- le -- lu -- ia.
  Ut -- ter it e -- ven un -- to the ends __ of the earth. __
  The Lord hath de -- liv -- er -- ed his peo -- ple,
  Al -- le -- lu -- ia. __
  The Lord hath de -- liv -- er -- ed his peo -- ple,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia. __
  O be joy -- ful in God, all ye lands, __
  O sing prais -- es to the hon -- our of his name,
  make his praise to be glo -- rious.
  With a voice of sing -- ing de -- clare ye this,
  and let it be heard,
  Al -- le -- lu -- ia.
  De -- clare ye this, and let it be heard, __
  Al -- le -- lu -- ia. __
  Al -- le -- lu -- ia.
  De -- clare ye this, and let it be heard, __
  Al -- le -- lu -- ia. __
}

wordsSopMidi = \lyricmode {
  "With " "a " "voice " "of " sing "ing " de "clare " "ye " "this, "
  "\nand " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " "and " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nUt" "ter " "it " e "ven " un "to " "the " "ends "  "of " "the " "earth. " 
  "\nThe " "Lord " "hath " de liv er "ed " "his " peo "ple, "
  "\nAl" le lu "ia. " 
  "\nThe " "Lord " "hath " de liv er "ed " "his " peo "ple, "
  "\nAl" le lu "ia, " Al le lu "ia. " 
  "\nO " "be " joy "ful " "in " "God, " "all " "ye " "lands, " 
  "\nO " "sing " prais "es " "to " "the " hon "our " "of " "his " "name, "
  "\nmake " "his " "praise " "to " "be " glo "rious. "
  "\nWith " "a " "voice " "of " sing "ing " de "clare " "ye " "this, "
  "\nand " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " "and " "let " "it " "be " "heard, " 
  "\nAl" le lu "ia. " 
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " "and " "let " "it " "be " "heard, " 
  "\nAl" le lu "ia. " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2 | s1 | s | s4 s2.\f | s1 |
  s1*7 | s4 s2.\mf | s1*4 | % 2
  s1 | s | s\p | s | s4 s2.\< | s1 | s | s\ff | s1*4 |
  s1*13 | % 4
  s1 | s2 s\mf | s1*11 |
  s1*6 | s4 s2.\f | s1*4 | % 6
  s1*11 |
  s1 | s | s2 s\mp | s1 | s | s2. s4\cresc | s1 | s | s\f\< | s\ff | s1*4 | % 8
}

alto = \relative {
  \global
  r2 | R1 | R | r4 c''8 b c4 g | a2 g |
  r4 c, d e | f4. e8 d e f4 | g1 | r4 a8(b c4) b | a1 | g4 r r2 | % 2a
  R1 | r4 d e fis | g2. 4 | fis2. e4 | d e fis2 | g2 4 4 |
  g2(fis) | g r | e4. 8 2 | fis2. 4 | g2 e4 e | f(c a c | % 3a
  f4 g) a a | 1~ | 4 r r e | a2 a,4 b | cis4. e8 a4 gis | a2 e |
  r2 r4 a8(gis | a4) e cis'2 | a1 | r2 r4 g | c2 e,4 g | 4. 8 4 b | % 4a
  g2 2 | R1 | r4 c8(b c4) g | e(d) c2 | r4 c'8(b c4) g | e2 c | R1 \section \key e \major |
  R1 | r2 e4 gis | b4 2 4 | gis2 4 4 | a1~ | 2 r | r e4 gis | % 5a
  b4. 8 4 4 | 4 4 4 4 | gis1-> | 2 a | b1 | cis2 ais |
  b1~ | b | gis2 r | R1 | R | R \section \key c \major | % 6a
  r4 c8 b c4 g | a2 g | r4 c, d e f4. e8 d e f4 | g1 |
  r4 a8(b c4) b | a1 | g4 r4 r2 | r4 c, e f | g2. f4 | % 7a
  e2. c4 | g' a b2 | e,1~ | 2 4 f | d2 e~ | 4 r r2 |
  R1 | R | r2 e4 f | g2 g | r4 c, e g | a2. g4 | f g a2 | % 8a
  c1 | f,2 f | g1~ | g g~ | g~ | 4 r r2\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  With a voice of sing -- ing de -- clare ye this,
  and let it be heard,
  Al -- le -- lu -- ia.
  De -- clare ye this, de -- clare, and let it be heard,
  Al -- le -- lu -- ia.
  Ut -- ter it e -- ven un -- to the ends __ of the earth. __
  The Lord hath de -- liv -- er -- ed his peo -- ple,
  Al -- le -- lu -- ia. __
  The Lord hath de -- liv -- er -- ed his peo -- ple,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia. __
  O be joy -- ful in God, all ye lands, __
  O sing prais -- es to the hon -- our of his name,
  make his praise to be glo -- rious.
  With a voice of sing -- ing de -- clare ye this,
  and let it be heard,
  Al -- le -- lu -- ia.
  De -- clare ye this, de -- clare, and let it be heard, __
  Al -- le -- lu -- ia. __
  Al -- le -- lu -- ia.
  De -- clare ye this, and let it be heard, __
  Al -- le -- lu -- ia. __
}

wordsAltoMidi = \lyricmode {
  "With " "a " "voice " "of " sing "ing " de "clare " "ye " "this, "
  "\nand " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " de "clare, " "and " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nUt" "ter " "it " e "ven " un "to " "the " "ends "  "of " "the " "earth. " 
  "\nThe " "Lord " "hath " de liv er "ed " "his " peo "ple, "
  "\nAl" le lu "ia. " 
  "\nThe " "Lord " "hath " de liv er "ed " "his " peo "ple, "
  "\nAl" le lu "ia, " Al le lu "ia. " 
  "\nO " "be " joy "ful " "in " "God, " "all " "ye " "lands, " 
  "\nO " "sing " prais "es " "to " "the " hon "our " "of " "his " "name, "
  "\nmake " "his " "praise " "to " "be " glo "rious. "
  "\nWith " "a " "voice " "of " sing "ing " de "clare " "ye " "this, "
  "\nand " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " de "clare, " "and " "let " "it " "be " "heard, " 
  "\nAl" le lu "ia. " 
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " "and " "let " "it " "be " "heard, " 
  "\nAl" le lu "ia. " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2 | s1 | s | s4 s2.\f | s1 |
  s1*6 | s4 s2.\mf | s1*5 | % 2
  s1 | s | s\p | s | s4 s2.\< | s1 | s | s\ff | s1*4 |
  s1*13 | % 4
  s1 | s2 s\mf | s1*11 |
  s1*6 | s4 s2.\f | s1*4 | % 6
  s1*11 |
  s1 | s | s2 s\mp | s1 | s | s2. s4\cresc | s1 | s | s\f\< | s\ff | s1*4 | % 8
}

tenor = \relative {
  \global
  r2 | R1 | R | r4 c'8 b c4 g | a2 g |
  r4 c, d e | f4. e8 d e f4 | g1 | r4 a8(b c4) b | a1 | g4 r r2 | % 2a
  r4 g b c | d2. c4 | b d b g | d fis g a | b2 a4 a | b2 e4 e |
  a,4(b8 c d4 c) | b2 r | e,4. 8 2 | fis2. 4 | g2 c4 c | a(g f g | % 3a
  a4 b) c d | e1~ | 4 r r e, | a2 4 b | cis4. b8 cis4 e | e2 cis |
  R1 | r4 a8(gis a4) e | cis'2 a | r r4 g | c2 4 d | e4. d8 e4 d | % 4a
  e2 e | r r4 c8(b | c4) g e(d) | c2 r4 c'8(b | c4) g e'2 | c1 | R \section \key e \major |
  R1 | r2 e,4 gis | b4 2 4 | e2 4 4 | 1~ | 2 r | r e,4 gis | % 5a
  b4. 8 4 4 | 4 4 4 4 | e1-> | gis,2 a | b1 | cis2 ais |
  b1~ | b | gis2 r | R1 | R | R \section \key c \major | % 6a
  r4 c8 b c4 g | a2 g | r4 c, d e | f4. e8 d e f4 | g1 |
  r4 a8(b c4) b | a1 | g4 g a b | c2. 4 | b(f') e d | % 7a
  c2. a4 | d2. b4 | gis a b2 | c a4 a | g2 g~ | 4 r r2 |
  R1 | R | r2 e4 f | g2 g | r4 c, e g | a2. g4 | f g a2 | % 8a
  c1 | 2 2 | e1~ | e | e~ | e~ | 4 r r2\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  With a voice of sing -- ing de -- clare ye this,
  and let it be heard,
  Al -- le -- lu -- ia.
  De -- clare ye this, de -- clare,
  de -- clare ye this, de -- clare, and let it be heard,
  Al -- le -- lu -- ia.
  Ut -- ter it e -- ven un -- to the ends __ of the earth. __
  The Lord hath de -- liv -- er -- ed his peo -- ple,
  Al -- le -- lu -- ia. __
  The Lord hath de -- liv -- er -- ed his peo -- ple,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia. __
  O be joy -- ful in God, all ye lands, __
  O sing prais -- es to the hon -- our of his name,
  make his praise to be glo -- rious.
  With a voice of sing -- ing de -- clare ye this,
  and let it be heard,
  Al -- le -- lu -- ia.
  De -- clare ye this, and let it be heard, __
  de -- clare, and let it be heard,
  Al -- le -- lu -- ia. __
  Al -- le -- lu -- ia.
  De -- clare ye this, and let it be heard, __
  Al -- le -- lu -- ia. __
}

wordsTenorMidi = \lyricmode {
  "With " "a " "voice " "of " sing "ing " de "clare " "ye " "this, "
  "\nand " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " de "clare, "
  "\nde" "clare " "ye " "this, " de "clare, " "and " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nUt" "ter " "it " e "ven " un "to " "the " "ends "  "of " "the " "earth. " 
  "\nThe " "Lord " "hath " de liv er "ed " "his " peo "ple, "
  "\nAl" le lu "ia. " 
  "\nThe " "Lord " "hath " de liv er "ed " "his " peo "ple, "
  "\nAl" le lu "ia, " Al le lu "ia. " 
  "\nO " "be " joy "ful " "in " "God, " "all " "ye " "lands, " 
  "\nO " "sing " prais "es " "to " "the " hon "our " "of " "his " "name, "
  "\nmake " "his " "praise " "to " "be " glo "rious. "
  "\nWith " "a " "voice " "of " sing "ing " de "clare " "ye " "this, "
  "\nand " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " "and " "let " "it " "be " "heard, " 
  "\nde" "clare, " "and " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. " 
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " "and " "let " "it " "be " "heard, " 
  "\nAl" le lu "ia. " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2 | s1 | s | s4 s2.\f | s1 |
  s1*5 | s4 s2.\mf | s1*6 | % 2
  s1 | s | s\p | s | s4 s2.\< | s1 | s | s\ff | s1*4 |
  s1*13 | % 4
  s1 | s2 s\mf | s1*11 |
  s1*6 | s4 s2.\f | s1*4 | % 6
  s1*11 |
  s1 | s | s2 s\mp | s1 | s | s2. s4\cresc | s1 | s | s\f\< | s\ff | s1*4 | % 8
}

bass = \relative {
  \global
  r2 | R1 | R | r4 c'8 b c4 g | a2 g |
  r4 c, d e | f4. e8 d e f4 | g1 | r4 a8(b c4) b | a1 | g4 \breathe d e fis | % 2a
  g2. 4 | fis(c') b a | g b g e | a d, e fis | g2 fis4 4 | e2 4 c |
  d1 | g,2 r | e'4. 8 2 | fis2. 4 | g2 c,4 c | f(c a c | % 3a
  f4 g) a f | a1~ | 4 r r c | a2 4 b | cis4. b8 a4 e | a2 a, |
  R1 | r2 r4 a'8(gis | a4) e cis' a | r2 r4 g | c2 e,4 g | c4. d8 c4 g | % 4a
  c2 c | R1 | r2 r4 c8(b | c4) g e(d) | c2 r4 c'8(b | c4) g e' c | R1 \section \key e \major |
  R1 | r2 e,4 gis | b4 2 4 | e,2 4 4 | a1~ | 2 r | r e4 gis | % 5a
  b4. 8 4 4 | 4 4 4 4 | cis1-> | gis2 a | b1 | cis2 ais |
  b1~ | b | g2 r | R1 | R | R \section \key c \major | % 6a
  r4 c8 b c4 g | a2 g | r4 c, d e | f4. e8 d e f4 | g1 |
  r4 a8(b c4) b | a1 | g4 r r2 | R1 | R | % 7a
  r4 c, e f | g2. 4 | e4 fis gis2 | a2 4 d, | g2 c,~ | 4 r r2 |
  R1 | R | r2 e4 f | g2 g | r4 c, e g | a2. g4 | f g a2 | % 8a
  c1 | f,2 a | c1~ | c | <c, c'>~ | q~ | q4 r r2\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  With a voice of sing -- ing de -- clare ye this,
  and let it be heard,
  Al -- le -- lu -- ia.
  De -- clare ye this, and let it be heard,
  de -- clare ye this, de -- clare, and let it be heard,
  Al -- le -- lu -- ia.
  Ut -- ter it e -- ven un -- to the ends __ of the earth. __
  The Lord hath de -- liv -- er -- ed his peo -- ple,
  Al -- le -- lu -- ia. __
  The Lord hath de -- liv -- er -- ed his peo -- ple,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia. __
  O be joy -- ful in God, all ye lands, __
  O sing prais -- es to the hon -- our of his name,
  make his praise to be glo -- rious.
  With a voice of sing -- ing de -- clare ye this,
  and let it be heard,
  Al -- le -- lu -- ia.
  De -- clare ye this, and let it be heard,
  Al -- le -- lu -- ia. __
  Al -- le -- lu -- ia.
  De -- clare ye this, and let it be heard, __
  Al -- le -- lu -- ia. __
}

wordsBassMidi = \lyricmode {
  "With " "a " "voice " "of " sing "ing " de "clare " "ye " "this, "
  "\nand " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " "and " "let " "it " "be " "heard, "
  "\nde" "clare " "ye " "this, " de "clare, " "and " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nUt" "ter " "it " e "ven " un "to " "the " "ends "  "of " "the " "earth. " 
  "\nThe " "Lord " "hath " de liv er "ed " "his " peo "ple, "
  "\nAl" le lu "ia. " 
  "\nThe " "Lord " "hath " de liv er "ed " "his " peo "ple, "
  "\nAl" le lu "ia, " Al le lu "ia. " 
  "\nO " "be " joy "ful " "in " "God, " "all " "ye " "lands, " 
  "\nO " "sing " prais "es " "to " "the " hon "our " "of " "his " "name, "
  "\nmake " "his " "praise " "to " "be " glo "rious. "
  "\nWith " "a " "voice " "of " sing "ing " de "clare " "ye " "this, "
  "\nand " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " "and " "let " "it " "be " "heard, "
  "\nAl" le lu "ia. " 
  "\nAl" le lu "ia. "
  "\nDe" "clare " "ye " "this, " "and " "let " "it " "be " "heard, " 
  "\nAl" le lu "ia. " 
}

pianoRHone = \relative {
  \global \oneVoice
  <e' a c>4-> <g b d>-> |
  <g c e>1-> ~ |
  q1~ |
  q4 \voiceOne c8 b \oneVoice <g c>4 <e g> |
  <c a'> <f d'> \voiceOne b4 g |
  \voiceTwo r4 c, d e \voiceOne | % 2a
  f4. e8 d e f4 |
  g2. f'4 |
  e d c b |
  a b8 c d4 c |
  s1 |
  s4 \oneVoice r4 r2 | % 2b
  r2 e,4 fis |
  \voiceOne g2 b4 c \oneVoice |
  <fis, d'>2. <e c'>4 |
  <d b'>4 <e c'> <fis d'>2 |
  <g e'>2 <g b>4 <g c> |
  a1 | % 3a
  \voiceOne r4 g'8 fis g4 d | 
  <<{\voiceFour e1 | s | g2. e4 | s}
    \new Voice {\voiceOne e4 fis8 g a2 | r4 b8 a b4 fis | g a8 b c2~ | <f, c'>4} >> \oneVoice r4 r2 |
  R1 | <a, cis e>2. e4 | <a cis e>2. e4 | <d fis a>2. <d f gis b>4 | <e a cis>2. <e gis b e>4 | <e a cis e>2. e4 | % 3b
  <e a cis e>2. e4 | q2. e4 | q2. e4 | <a cis e>2. <g d' g>4 | <g c e g>2. <g d'>4 | <g c e g>2. <g d'>4 | % 4a
  <g c e g>2. <g d'>4 | % 4b
  <g c e g>2. <g d'>4 |
  \repeat unfold 4 {<c e>4 <g d'> <e c'> <g d'> |}
  <c e>4 <g d'> <c e> <c e fis> \section \key e \major |
  \voiceOne <b e gis>1~ | q4 \oneVoice r r2 | R1 | R | <e, a cis>1~ | q~ | <e gis b>2 r | % 5a
  R1 | R | <gis cis e>2-> r | R1 | <e gis b>1 | \voiceOne <ais cis>2 ais |
  b1~ | b \oneVoice <e, gis>2 e4-> gis-> | <e gis b>2-> gis4-> b-> <gis b e>2-> b4-> e-> | \voiceOne <b e gis>2-> e4-> <b f' g>-> \section \key c \major | % 6a
  <c e g c>2.-> <e, g>4 | <c a'> <f d'> b g | \voiceTwo r4 \voiceOne c, d e  f4. e8 d e f4 | g2. f'4 |
  e4 d c b | a b8 c d4 c | \oneVoice <d, g b> r r2 | r e4 f \voiceOne g2 a4 b | % 7a
  c1 \oneVoice | <g b>4 <a c> <b d>2 | <e, e'>1~ | 2 <e c'>4 <f d'> | <d b'>2 <e c'>2~ | 4 r d' e |
  <bes d f>4 e d c | <d, g b> a' <b, e g> f' | <a, c e> d e f \voiceOne | g1~ \oneVoice | <c, e g>4 r r2 \voiceOne a'2. g4 \oneVoice <d f> g a2 | % 8a
  c1 \oneVoice | <f, a>2-> <f c'>-> | <g c e>1-> ~ | q | <g c e g>2.-> g4-> | q2.-> g4-> | q1\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2 | s1 | s | s4 f' s2 | s d |
  <c c'>1~ | c | g'1~ | g~ | 2 <d fis>2~ | <d g b>1~ | % 2a
  q4 s2. | s1 | g | s | s | s |
  g2 fis | s1 | \voiceThree g2 a~ | a b~ | b c | s1 | % 3a
  \voiceTwo s1*6 |
  s1*13 | % 4
  <b, e gis>1~ | q4 s2. | s1*5 | % 5a
  s1*5 | fis'1 |
  fis4 e d e | fis d e fis | s1 | s | s | <b, e gis>2 e4 <d f g> | % 6a
  <c e g>2. s4 | s2 d | <c c'>1~ | c | g'~ |
  g1~ | 2 <d fis>2 | s1 | s | g2. f4 | % 7a
  e2. c4 | s1 | s | s | s | s |
  s1 | s | s | r2 <b d> | s1 | r2 <cis e> | s1 | % 8a
  r2 <e g> | s1*6 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\f | s1*4 |
  s1*5 | s1\> | s1*6\! | % 2
  s1 | s\> | s1*5\! | s1\ff | s1*4 |
  s1*13 | % 4
  s1*4 | s1\mf | s1*8 |
  s1*6 | s1\f | s1*4 | % 6
  s1*11 |
  s1 | s | s\> | s\! | s | s2. s4\cresc | s1 | s | s\f\< | s\ff | s1*4 | % 8
}

pianoLHone = \relative {
  \global \voiceOne
  <a c>4-> <g d'>-> | <c e>1-> ~ | q | c | a2 b |
  g4 c, d e | f g a f | <g b d>1~ | <g c>4 d' e2 | a,1 | g4 d^\mp e fis | % 2a
  <<{\voiceFour g1 | fis4(c') b a}  \new Voice {\voiceOne s2 b4 c | d2. c4}>> | % 2b
  \voiceOne <g b>4 <b d> <g b> <e g> |
  <<{\voiceFour d2} \new Voice {\voiceOne a'4 fis}>> \voiceOne <e g>4 <f a> |
  <g b>2 <fis a> |
  <e b'>2 e'4 <c e> |
  a4 b8 c d4 c \change Staff = pianorh \voiceTwo | <b d g>1_\markup "L.H." | <c e> | <d fis> <e g> | <f a c>4 \change Staff = pianolh \oneVoice r4 r2 | % 3a
  R1 | \voiceOne <a, cis>1 | q | <fis a>2. b4 | <a cis>2. <e b'>4 |
  \repeat unfold 4 { << <a cis>1 \new Voice { \voiceFour a4 gis fis e}>> |}
  <a cis e>2. <b d>4 | <c e>2. <g d'>4 | <a c>2. <g d'>4 | % 4a+++
  <c e>2. <g d>4 | <c e>2. <g d'>4 | <c e>4 <g d'> <e g c> <g d'> | % 4b
  \repeat unfold 3 {<c e> <g d'> <e c'> <g d'> |}
  <c e>4 <g d'> <c e> <c e fis> \section \key e \major |
  s1 | s4 \oneVoice r4 r2 | R1 | R1 | \voiceOne <a cis>~ | q | <gis b>2 r | % 5a
  \oneVoice R1 | R \voiceOne | <cis e>2 r2 | R1 | <e, gis b>1 | <fis ais cis> |
  <fis b>1~ | q | <gis b>2 e4-> gis-> | <e gis b>2-> gis4-> b-> | <e, b' e>2-> b'4-> e-> | \oneVoice e,2 4 d \section \key c \major | % 6a
  \voiceOne s2. c'4 | a2 b | g4 c, d e | f g a f | <g b d>1~ |
  <g c>4 d' e2 | a,1 | g4 g a b | c1 | b4 f' e d | % 7a
  c2. a4 | d2. b4 | gis a b2 | c a | g1~ | 4 r d' e |
  <bes d f>4 e d c | <g b> a <e g> f | <a, e'> d e f | g1~ | <c, g'>4 r r2 | <<{a'2 e} \new Voice a1>> | <f a>4 g a2 | % 8a
  c1 | <f, c'>2 q |
  <<{\voiceOne <a c>1~q q q} \new Voice {\voiceFour \repeat unfold 4 {c4 b a g}}>> |
  <g c e>1\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  r2 | c4_\markup Ped. b a g | c b a g | c d e c | f d g f |
  e4 c2 b4 | a g f a | g f' e d | c b a b8 c | d1 | g,4 r r2 | % 2a
  R1_\markup "sensa Ped." | R | R | r4_\markup Ped. d4 e fis | g2 fis | e e'4 c |
  d1 | g, | c2. a4 | d2. b4 | e2. c4 | f4 r r2 | % 3a
  s1 | a4 gis fis e | a gis fis e | d cis b e | a, b a e | a gis fis e |
  a4 gis fis e | a gis fis e | a gis fis e | a gis a b | c b a g | c b a g | % 4a
  c4 b a g | c b a g | c r r g | c r r g | c r r g | c r r g | c2. a4 \section \key e \major |
  e'1~ | 4 r r2 | R1 | R | a,4 e a b | cis b cis dis | e2 r | % 5a
  R1 | R | cis2 r | R1 | e4 dis cis b | ais gis fis e' |
  dis4 cis b cis | dis b cis dis | e2 r | e, r | e r | s1 \section \key c \major | % 6a
  c'2. 4 | f d g f | e c2 b4 | a g f a | g f' e d |
  c4 b a b8 c | d1 | g,4 r r2 | R1 | R | % 7a
  r4_\markup Ped. c e f | g1 | e4 fis gis2 | a a4 d, | g2 c,~ | 4 r r2 |
  R1 | R | R | r2 g | s4 r r2 | r2 a | d4 r r2 | % 8a
  r2 c | f, a | c4 b a g | c b a g | c b a g | c b a g | \arpeggioBracket <c, c'>1\arpeggio |
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single"
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
            \addlyrics \wordsAlto
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
            \addlyrics \wordsTenor
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
            \addlyrics \wordsBass
          >>
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
%   \unfoldRepeats
%   \articulate
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
            \addlyrics \wordsAlto
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
            \addlyrics \wordsTenor
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
            \addlyrics \wordsBass
          >>
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "singlepage-sop"
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
%   \unfoldRepeats
%   \articulate
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
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
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
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
  \bookOutputSuffix "singlepage-alto"
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
%   \unfoldRepeats
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} {\tiny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
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
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
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
  \bookOutputSuffix "singlepage-tenor"
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
%   \unfoldRepeats
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} {\tiny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
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
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
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
%   \unfoldRepeats
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} {\tiny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
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
  \bookOutputSuffix "midi-sop"
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "church organ"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
  \bookOutputSuffix "midi-alto"
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
            \addlyrics \wordsAltoMidi
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "church organ"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
  \bookOutputSuffix "midi-tenor"
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
            \addlyrics \wordsTenorMidi
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "church organ"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
  \bookOutputSuffix "midi-bass"
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
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "church organ"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
