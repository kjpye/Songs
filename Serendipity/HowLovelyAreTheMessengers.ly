\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "How Lovely are the Messengers"
  subtitle    = "Rom. ix. 15, 18."
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

global = {
  \key g \major
  \time 6/8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante con moto." 8=132
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "124a" } s2.*4
  \textMark \markup { \box "124b" } s2.*5
  \textMark \markup { \box "124c" } s2.*5
  \textMark \markup { \box "125a" } s2.*4
  \textMark \markup { \box "125b" } s2.*4
  \textMark \markup { \box "125c" } s2.*4
  \textMark \markup { \box "126a" } s2.*4
  \textMark \markup { \box "126b" } s2.*4
  \textMark \markup { \box "126c" } s2.*4
  \textMark \markup { \box "127a" } s2.*5
  \textMark \markup { \box "127b" } s2.*5
  \textMark \markup { \box "127c" } s2.*4
  \textMark \markup { \box "128a" } s2.*4
  \textMark \markup { \box "128b" } s2.*5
  \textMark \markup { \box "128c" } s2.*4
  \textMark \markup { \box "129a" } s2.*4
  \textMark \markup { \box "129b" } s2.*4
  \textMark \markup { \box "129c" } s2.*5
}

dynamicsSop = {
  s2.*18 |
  s4. s4 s8\f | s2. | s | s | % 125b
  s2.*4 |
  s2.*4 | % 126a
  s2. | s4. s4 s8\f | s2. | s |
  s2. | s | s4 s2\dim | s4. s4 s8\p |
  s2.*5 | % 127a
  s2.*4 | s4. s4 s8\f |
  s2.*4 |
  s2. | s4. s4 s8\f | s2. | s  % 128a
  s2.*5 |
  s2.*4 |
  s4. s4 s8\p | s2.*3 | % 129a
  s2. | s\p | s | s |
  s2.*5 |
}

soprano = \relative {
  \global
  R2.*18 |
  r4 r8 r4 d'8 | d'4.~4 b8 4. a4 g8 | fis g a a b c | % 125b
  b4 r8 r4 b8 | e4.~4 g8 | 4. fis4 fis,8 | g a b cis d e |
  a,4.~4 8 | b cis d e fis g | 4.~4 r8 | R2.  % 126a
  R2. | r4 r8 r4 a,8 | d4 cis8 b4 a8 | g'4 fis8 e4 8 |
  fis8 e d e b cis | d4.(a4) r8 | a4.~4 g8 | fis4. 4 g8 |
  fis4. e4 d8 | 4. r4 a'8 | d4(c8 b4) a8 | gis4. 4 a8 | gis8 a b b c d | % 127a
  c4. r4 r8 | R2. | R | R | r4 r8 r4 g8 |
  g'4.~4 e8 | 4. d4 g,8 | e'8 e d c b a | fis'4. r4 d8 |
  g8 g fis e d c | a'4.~8 r d, | 4.~4 b8 | 4. a4 g8 | % 128a
  fis8 g a a b c | b4. r8 g g | e'4. d | c b4 a8 | a2. |
  g4. r4 r8 | R2. | R | R |
  r4 r8 r4 d'8 | 4. c~ | c b4 a8  b a g a e fis | % 129a
  g4.(d4) r8 | g4.~4 c8 | b4. 4 a8 | g4. fis4 g8 |
  g4. r4 r8 | R2. | R | R | R\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  To all __ the na -- tions is gone forth the sound of their words,
  to all __ the na -- tions is gone forth the sound of their words,
  is gone forth the sound of their words,
  How love -- ly are the mes -- sen -- gers
  that preach us the gos -- pel of peace, __
  they __ that preach us the gos -- pel of peace, __
  To all __ the na -- tions is gone forth the sound of their words,
  to all __ the na -- tions is gone forth the sound of their words,
  is gone forth the sound of their words, __
  to all __ the na -- tions is gone forth the sound of their words,
  through -- out all the lands their glad ti -- dings.
  How love -- ly they that preach us the gos -- pel of peace, __
  they __ that preach us the gos -- pel of peace,
}

wordsSopMidi = \lyricmode {
  "\nTo " "all "  "the " na "tions " "is " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nto " "all "  "the " na "tions " "is " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nis " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nHow " love "ly " "are " "the " mes sen "gers "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, " 
  "\nthey "  "that " "preach " "us " "the " gos "pel " "of " "peace, " 
  "\nTo " "all "  "the " na "tions " "is " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nto " "all "  "the " na "tions " "is " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nis " "gone " "forth " "the " "sound " "of " "their " "words, " 
  "\nto " "all "  "the " na "tions " "is " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nthrough" "out " "all " "the " "lands " "their " "glad " ti "dings. "
  "\nHow " love "ly " "they " "that " "preach " "us " "the " gos "pel " "of " "peace, " 
  "\nthey "  "that " "preach " "us " "the " gos "pel " "of " "peace, "
}

dynamicsAlto = {
  s4. s4 s8\p | s2.*3 |
  s2.*5 |
  s2.*5 |
  s2.*4 | % 125a
  s2. | s4 s2\f | s2. | s |
  s2. | s\sf | s | s |
  s2.*4 | % 126a
  s2. | s4 s2\f | s2. | s |
  s2. | s | s4 s2\dim | s4. s4 s8\p |
  s2.*5 | % 127a
  s2.*4 | s4. s4 s8\f |
  s2.*4 |
  s2. | s4. s4 s8\f | s2. | s | % 128a
  s2.*5 |
  s4. s4 s8\p | s2.*3 |
  s4. s4 s8\p | s2. | s | s | % 129a
  s2. | s4. s\p | s2. | s |
  s2.*5 |
}

alto = \relative {
  \global
  r4 r8 r4 d'8 | g4 fis8 e4 d8 | c'4 b8 a4 g8 | fis g a d, d d |
  d4. r4 d8 | e4 fis8 g4 a8 | fis4 g8 a4 c8 | b a g a e fis | g4. r4 g8 |
  d4. 4 c8 | b4 r8 r4 d8 | e4 d8 fis4 g8 | a4.~8 b c | b b a g4 r8 |
  R2. | r4 g8 4.~ | g d | r4 g8 4 c8 | % 125a
  b8 a g a e fis | g4 d8 g4 8 | 4. fis4 g8 | d e fis fis g a |
  g4. r4 b8 | 2.~ | 4.~8 r a | g4.~4 8 |
  g4. fis4 a8 | a4.(g4.~  4) e8(a4) g8 | fis4. r4 r8 | % 126a
  R2. | r4 a,8 a'4 g8 | fis4. r4 a8 | g4 a8 b4 g8 |
  fis4. g4 e8 | a g fis g d e | fis4. r4 e8 | e4. d4 8 |
  d4. cis4 d8 | 4. r4 r8 | R2. | R | R | % 127a
  r4 r8 r4 e8 | a4(g8 fis4) e8 | dis4. 4 e8 | dis8 e fis fis g a | g4. r4 g8 |
  c4.~4 8 | 4. b4 g8 | e fis gis a b c | 4. r4 b8 |
  g8 a b c d e | a,4.~8 r c | b4.~4 g8 | 4. f4 g8   | % 128a
  d8 e fis fis g a | g4. f4 8  e4. fis  g4. 4 8  4.(fis) |
  g4. r4 d8 | g4 fis8 e4 d8 | c'4 b8 a4 g8 | fis8 g a d, d d |
  d4. r4 d8 | e4 fis8 g4 a8 | fis4. g~ | g d4 8 | % 129a
  d8 c b c c c | b4 r8 e4. | dis4. e4 8 | d4. c4 b8 |
  b4. r4 r8 | R2. | R | R | R\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  How love -- ly are the mes -- sen -- gers
  that preach us the gos -- pel of peace,
  how love -- ly are the mes -- sen -- gers
  that preach us the gos -- pel of peace,
  the gos -- pel of peace,
  the mes -- sen -- gers that preach __ us the gos -- pel of peace,
  How love -- ly are they
  that preach us the gos -- pel of peace!
  To all the na -- tions is gone forth
  the sound of their words,
  the sound, __ is gone, __
  is gone forth the sound __ of their words,
  How love -- ly are the mes -- sen -- gers
  that preach us,
  that preach us the gos -- pel of peace,
  that preach us the gos -- pel of peace.
  To all __ the na -- tions is gone forth
  the sound of their words,
  To all __ the na -- tions is gone forth
  the sound of their words,
  is gone forth the sound of their words, __
  to all __ the na -- tions is gone forth
  the sound of their words,
  through -- out all the lands their glad ti -- dings.
  How love -- ly are the mes -- sen -- gers
  that preach us the gos -- pel of peace,
  how love -- ly are the mes -- sen -- gers
  that preach us the gos -- pel of peace,
  that preach us the gos -- pel of peace.
}

wordsAltoMidi = \lyricmode {
  "How " love "ly " "are " "the " mes sen "gers "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, "
  "\nhow " love "ly " "are " "the " mes sen "gers "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, "
  "\nthe " gos "pel " "of " "peace, "
  "\nthe " mes sen "gers " "that " "preach "  "us " "the " gos "pel " "of " "peace, "
  "\nHow " love "ly " "are " "they "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace! "
  "\nTo " "all " "the " na "tions " "is " "gone " "forth "
  "\nthe " "sound " "of " "their " "words, "
  "\nthe " "sound, "  "is " "gone, " 
  "\nis " "gone " "forth " "the " "sound "  "of " "their " "words, "
  "\nHow " love "ly " "are " "the " mes sen "gers "
  "\nthat " "preach " "us, "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace. "
  "\nTo " "all "  "the " na "tions " "is " "gone " "forth "
  "\nthe " "sound " "of " "their " "words, "
  "\nTo " "all "  "the " na "tions " "is " "gone " "forth "
  "\nthe " "sound " "of " "their " "words, "
  "\nis " "gone " "forth " "the " "sound " "of " "their " "words, " 
  "\nto " "all "  "the " na "tions " "is " "gone " "forth "
  "\nthe " "sound " "of " "their " "words, "
  "\nthrough" "out " "all " "the " "lands " "their " "glad " ti "dings. "
  "\nHow " love "ly " "are " "the " mes sen "gers "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, "
  "\nhow " love "ly " "are " "the " mes sen "gers "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace. "
}

dynamicsTenor = {
  s2.*18 |
  s4. s4 s8\f | s2. | s | s | % 125b
  s4. s\sf | s2.*3 |
  s2. | s | s4. s4 s8\f | s2. | % 126a
  s2.*4 |
  s2. | s | s4 s2\dim | s4. s4 s8\p |
  s2. | s | s | s\cresc | s | % 127a
  s2.*4 | s4. s4 s8\f |
  s2.*4 |
  s2. | s4. s4 s8\f | s2. | s | % 128a
  s2.*5 |
  s2.*4 |
  s4. s4 s8\p | s2. | s | s | % 129a
  s2. | s4. s4 s8\p | s2. | s |
  s2.*5 |
}

tenor = \relative {
  \global
  R2.*18 |
  r4 r8 r4 d8 | b'4.~4 d8 | 4. 4 8 | c b a a g fis | % 125b
  g4 b8 4.~ | 4.~4 e8 | 4. dis4 r8 | r4 r8 r4 g,8 |
  a8 b cis d e fis | 4.~4 d8 | cis4. r4 a8 | d4 cis8 b4 a8 | % 126a
  g'4 fis8 e4 d8 | cis d e a, a a | 4. r4 a8 | d4 cis8 b4 e8 |
  d4. a4 g'8 | fis e d e b cis | d a c b4 8 | ais4. b4 g8 |
  a4. g4 fis8 | 4. r4 r8 | r4 r8 r4 b8 | e2.~ | 4. 4. | % 127a
  e4(c8) a4. | R2. | R | R | r4 r8 r4 g8 |
  e'4.~4 c8 | g'4. fis,4 8 | g a b c d e | a,4. r4 g8 |
  b8 c d e fis g | d4.~8 r d, | d'4.~4 8 | 4. 4 8 | % 128a
  c8 b a a g fis | d'4. r8 g, g | c4. a | e' d4 e8 | d2. |
  d4.~4 r8 | R2. | R | R |
  r4 r8 r4 b8 | e2. | d4. g,4 e'8 | d4.~4 c8 | % 129a
  b8 a g a e fis | g4. r4 fis8 | 4. g4 c8 | b4. a4 g8 |
  g4. r4 r8 | R2. | R | R | R\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  To all __ the na -- tions is gone forth the sound of their words,
  to all __ the na -- tions is gone forth the sound of their words, their words,
  How love -- ly are the mes -- sen -- gers
  that preach us the gos -- pel of peace, __
  the mes -- sen -- gers __ that preach us,
  that preach us the gos -- pel, the gos -- pel of peace, __
  that preach us the gos -- pel of peace, __
  To all __ the na -- tions,
  to all the na -- tions is gone forth the sound of their words,
  is gone forth the sound of their words,
  to all __ the na -- tions is gone forth the sound of their words,
  through -- out all the lands their glad ti -- dings.
  how love -- ly they that preach,
  that preach us the gos -- pel of peace, __
  that preach us the gos -- pel of peace.
}

wordsTenorMidi = \lyricmode {
  "To " "all "  "the " na "tions " "is " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nto " "all "  "the " na "tions " "is " "gone " "forth " "the " "sound " "of " "their " "words, " "their " "words, "
  "\nHow " love "ly " "are " "the " mes sen "gers "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, " 
  "\nthe " mes sen "gers "  "that " "preach " "us, "
  "\nthat " "preach " "us " "the " gos "pel, " "the " gos "pel " "of " "peace, " 
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, " 
  "\nTo " "all "  "the " na "tions, "
  "\nto " "all " "the " na "tions " "is " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nis " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nto " "all "  "the " na "tions " "is " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nthrough" "out " "all " "the " "lands " "their " "glad " ti "dings. "
  "\nhow " love "ly " "they " "that " "preach, "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, " 
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace. "
}

dynamicsBass = {
  s2.*9 |
  s4. s4 s8\p | s2.*4 | % 124c
  s2.*4 | % 125a
  s2. | s4 s2\f | s2. | s |
  s2.*4 |
  s2.*4 | % 126a
  s4. s4 s8\f | s2. | s | s |
  s2. | s | s4 s2\dim | s4. s\p |
  s2.*5 | % 127a
  s2. | s | s\cresc | s | s |
  s2. | s | s4. s4 s8\f | s2. |
  s2.*4 | % 128a
  s2.*5 |
  s2.*4 |
  s4. s4 s8\p | s2. | s | s | % 129a
  s2. | s | s4. s4 s8\p | s2. |
  s2.*5 |
}

bass = \relative {
  \global
  R2.*9 |
  r4 r8 r4 d8 | g4 fis8 e4 d8 | c'4 b8 a4 g8 | fis g a d, d d | 4. r4 d8 | % 124c
  e4 fis8 g4 a8 | fis4 g8 a4 c8 | b a g a e fis | g4. r4 g8 | % 125a
  d4. 4 8 | g,4 g'8 b4 g8 | d'4. c4 b8 | a g fis fis e d |
  g4 r8 r4 b8 | g4.(~8 fis) e | b'4. b,4 8  e4.~4 8 |
  fis8 g a b cis d | g,4.~8 r g | a2.~ | a~ | % 126a
  4. r4 g,8 | a'4 g8 fis4 e8 | fis4 d8 g4 fis8 | b4 a8 g4 e8 |
  a2. | 4.~8 r a | a g fis f d e | fis4. b, |
  a4. 4 8 | d4. r4 r8 | R2. | R | R | % 127a
  R2. | r4 r8 r4 fis8 | b2.~ | 4. b | b4(g8) e4 r8 |
  R2. | R | r4 r8 r4 c8 | d e fis g a b |
  b4. r4 e,8 | fis e d c' b a | g4 d8 g4 b8 | d4. c4 b8 | % 128a
  a8 g fis fis e d | g4. r8 g g | c,4. d | e g4 c,8 | d4.(~4 c8) |
  b4.~4 r8 | R2. | R | R |
  r4 r8 r4 g8 | c2. | d4. e4 c8 | d2.~ | % 129a
  d2.~ | 8 c b c g a | b4.~4 c8 | d4. 4 8 |
  g,4. r4 r8 | R2. | R | R | R\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  How love -- ly are the mes -- sen -- gers
  that preach us the gos -- pel of peace,
  how love -- ly are the mes -- sen -- gers
  that preach us the gos -- pel of peace,
  the gos -- pel of peace!
  To all the na -- tions is gone forth
  the sound of their words,
  to all __ the na -- tions is gone, __
  is gone forth the sound of their words, __
  the sound __
  How love -- ly are the mes -- sen -- gers,
  the mes -- sen -- gers
  that preach us, __
  that preach us the gos -- pel of peace,
  the gos -- pel of peace,
  To all __ the na -- tions,
  is gone forth the sound of their words,
  is gone forth the sound of their words,
  to all __ the na -- tions,
  is gone forth the sound of their words,
  through -- out all the lands their glad ti -- dings. __
  how love -- ly they that preach, __
  us the gos -- pel of peace, __
  the gos -- pel of peace.
}

wordsBassMidi = \lyricmode {
  "How " love "ly " "are " "the " mes sen "gers "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, "
  "\nhow " love "ly " "are " "the " mes sen "gers "
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, "
  "\nthe " gos "pel " "of " "peace! "
  "\nTo " "all " "the " na "tions " "is " "gone " "forth "
  "\nthe " "sound " "of " "their " "words, "
  "\nto " "all "  "the " na "tions " "is " "gone, " 
  "\nis " "gone " "forth " "the " "sound " "of " "their " "words, " 
  "\nthe " "sound " 
  "\nHow " love "ly " "are " "the " mes sen "gers, "
  "\nthe " mes sen "gers "
  "\nthat " "preach " "us, " 
  "\nthat " "preach " "us " "the " gos "pel " "of " "peace, "
  "\nthe " gos "pel " "of " "peace, "
  "\nTo " "all "  "the " na "tions, "
  "\nis " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nis " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nto " "all "  "the " na "tions, "
  "\nis " "gone " "forth " "the " "sound " "of " "their " "words, "
  "\nthrough" "out " "all " "the " "lands " "their " "glad " ti "dings. " 
  "\nhow " love "ly " "they " "that " "preach, " 
  "\nus " "the " gos "pel " "of " "peace, " 
  "\nthe " gos "pel " "of " "peace. "
}

lh = \change Staff = pianolh
rh = \change Staff = pianorh

pianoRHone = \relative {
  \global
  r8 g(a b4 c8) |
  <b d>(g <d' fis> <c e> g <b d>) |
  <e c'>(g <d b'> <c a'> d <b g'>) |
  <a c fis>(d \lh \voiceOne <g, e'> <fis a> <g b> <a c>~) |
  <a b>8( g fis g <a c> <b d>) \rh \oneVoice | % 124b
  <c e> g <a c fis> <b g'> d <c e a> |
  fis4 g8 <e a> g <e c'> |
  b' a g a e fis |
  g2. |
  g4. d | % 124c
  s2. |
  s2. |
  a'4.^~<fis a>8 <g b> <a c> |
  <g b>8 <g, b> <a c> <b d> c d |
  \voiceOne e4 fis8 g4 a8 | % 125a
  fis4 g8 a4 c8 |
  <d, b'>8 <c a'> <b g'> a' e fis |
  g4. 4 c8 |
  <d, b'>8 <c a'> <b g'> a' e fis | % 125b
  <b, d g>4 <d g b d>8 <d g d'>4 <d g b>8 |
  <g b>4. a4 g8 |
  <c, d fis>8(<b e g> <a fis' a>) <fis' a>(<g b> <a c>) |
  <g b>8(<e g cis> <fis a dis>) <fis a dis>(<g b e> <b dis e>) | % 125c
  <e, b' e>4 <b e>8 <b e b'>4 <b e g>8 |
  <e g>4. <dis fis>4 8 |
  g8 a b cis d e |
  a,4.~4 8 | b8 cis d e fis g | <e g>4 e,8 a4 8 | <d, fis a>(a <cis e a> <b g'> d <a fis'>) | % 126a
  <b g'>8(d <a fis'> \lh <g e'> a <fis d>) | % 126b
  <e a cis>8 \rh d' e a, b <c a'> |
  <d d'>8 fis <a cis> <d, b'>4 a'8 |
  <g d' g>4 <a cis fis>8 <b e>4 <g b e>8 |
  <fis a d fis>8(e' d e b cis) | % 126c
  d4. a |
  <fis a>4.~4 <e g>8 |
  <ais, e' fis>4. <b d fis>4 <g d' g>8 |
  <a d fis>4. <g a cis e>4 \lh <fis d'>8 | % 127a
  q8 d e fis4 g8 |
  a8 b c \rh r8 gis' a |
  b8 e b gis4 a8 |
  <b, e gis>8(<c fis a> <d gis b>) q(<a' c> <b d>) |
  <a c>4 r8 c,4(d8) | % 127b
  e8(fis g a b c) |
  fis,8 b fis dis4 e8 |
  <b dis>8 e <d fis> <a d fis> <b e g> <fis' a> |
  <b, e g>8 <g e'> <a fis'> <b g'> <c a'> <d f b> |
  <g, c e g>8 c' e <e g> g, <c e> | % 127c
  q g8 q <b d> g <f g> |
  e'4 d8 <a c> b a |
  <a c fis>4. <g b d>4 8 |
  g'4 fis8 e d c | % 128a
  <a c a'>8 <a c fis > <a c g> <c fis a> <d g b> <d a' c> |
  <d g b>8 d d'~d d, d'~ |
  d8 d, d'~d d, d'~ |
  d8 d, d'~d d, d'~ | % 128b
  d8 g,, g'~g g, g'~ |
  g8 g, g' r d, <fis a d> |
  r8 e(~<e c'>) <d b'> g <e g a> |
  <g a>4.~<fis a> |
  r8 g,(a b4 c8) | b(g' fis e4 d8) | c'4 b8 a e g | fis g a <c, d>4. | % 128c
  d8 g b d g, <f d'> | d'4. c4 a8  <d, fis c'>4. <g b>4 <e g a>8 | b'8(a g a e fis) | % 129a
  g4. d | g g4 c8 | <dis, b'>4.(<e b'>4) <c e a>8 | <b d g>4. <a c fis>4 <g b g'>8 |
  <g b g'>8(g <d' f> <c e> g <b d>) | % 129c
  <e c'>8(g <d f b> <c e a> e <b d g>) |
  d2.^\sf^\> |
  d4. d\! |
  \showStaffSwitch \lh <g, b d>2.\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2 g8 a |
  s2.*5 | d8 c b s4. | d8 c b <c d>4. | b8 c d e fis <a, g'> |
  <b d>8 <a c> <g b> \lh \voiceOne <fis a> b c | % 124c
  \voiceOne b8 g <fis d'> <e c'> g <d b> |
  \rh <c' e>8 g <b d> <a c fis> d <b g'> |
  \voiceTwo d8 e fis d4. |
  s2. |
  d8 g, <a c> b d c | % 125a
  a8 d b e g e |
  s4. c |
  b8 c d <c e> <d fis> <e g> |
  s4. c4 <a d>8 | s2. | d8 b d fis d d | s2. | % 125b
  s2. | s | s | <e g>4.~4 8 |
  g4. fis4 s8 | a4. <g b> | r8 s2 g8 | s2.  % 126a
  s2.*4 |
  s4. <g a> | % 126c
  <fis a>8(<e g> <d fis> <e g> <b d> <cis e>) |
  d8 a c b4. |
  s2. |
  s2. | s | s4. d | gis e | s4. s8 e4~ | % 127a
  e8 a,(b) r a b | c4 e8 d4 e8 | dis8 fis dis b4. | s2. | s |
  s2. | s | e8 fis gis s4. | s2. |
  g8 a b c4 s8 | s2. | s | s | % 128a
  s2. | s | s | s | d,8 a b c a d |
  s4. r8 g, a | b4 a8 <<{g[s b]} \new Voice {\voiceFour s8 c4 }>> | r8 e d c4 cis8 | d4. s |
  s2. | e4 fis8 <e g>4 s8 | s2. | <<{b4. c} \new Voice {\voiceThree d2.}>> | % 129a
  d8 c b c4. | b4 r8 e4. | s2. | s |
  s2.*5 |
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.*4 |
  s2. | s-\markup\italic "sempre legato" | s | s | s |
  s2.*5 |
  s2. | s | s2 s8 s\cresc | s2. | % 125a
  s2 s8 s\f | s2.-\markup\italic Tutti. | s | s |
  s2.*4 |
  s2. | s | s2 s8 s\f | s2. | % 126a
  s2.*4 |
  s2. | s | s4 s2\dim | s4. s\p |
  s2. | s\p | s | s | s | % 127a
  s2. | s | s | s4. s\cresc | s2. |
  s2.\omit\f-\markup{\dynamic f \italic Tutti.} | s | s | s |
  s2. | s8 s4.\< s4\! | s2.\f | s | % 128a
  s2.*5 |
  s4. s\dim | s2.\p | s | s |
  s2.*4 | % 129a
  s2. | s | s4. s4 s8\p | s2. |
  s2. | s | s-\markup\italic Tutti. | s | s\p |
}

pianoLHone = \relative {
  \global
  <g,, g'>2.~ | q | q~ | q |
  q2.~ | q~ | 4. c | d2. | e4. <c c'> |
  d2. | \voiceTwo <g, g'>2.~ | \voiceOne q | fis''8 g a d,4. | <g, d'>2. |
  \oneVoice <g, g'>2.~ | 4. <a a'> | <d d'>2. | <e e'>4. <c c'> |% 125a
  <d d'>4.~4 d8 | <g, g'>4 8 <b b'>4 <g g'>8 | <d' d'>4. <c c'>4 <b b'>8 | a' g fis <fis' a>8(<e g> <d fis>) |
  g4 <b, b'>8 b'4 <a b>8 | <g b>4 g8 g fis e | b'4. <b, b'>4 8 | e4.~4 <e g>8 |
  \voiceOne a8 <g b> <a cis> <b d> <cis e> <d fis> | fis4. e4 d8 | cis4. s | <a,, a'>2. | % 126a
  q2. | \voiceTwo q4 \oneVoice g'8 fis4 e8 | fis4 <d d'>8 <g g'>4 <fis fis'>8 | <b b'>4 <a a'>8 <g g'>4 <e e'>8 |
  <a a'>2. | a'2. | a8(g fis g d e) | fis4. b, |
  \voiceTwo a2. | d, | \voiceOne fis'4. f | e2. | e | % 127a
  \oneVoice a,2. | s4. s4 \voiceOne fis'8 | 4.~8 8 g | fis g a \oneVoice fis, e dis | e4. d |
  <c c'>4.~4 <e e'>8 | <g g'>4. <g, g'>4 b'8 | \voiceOne g'8 a b c4. | <d, fis>8 <e g> <fis a> <g b> <a c> <b d> |
  b8 c d e4 \oneVoice e,8 | fis e d c b a | <g, g'>2. | q | % 128a
  q2. | 4. <b b'> | <c c'> <d d'> | <e e'> <g g'>4 c8 | d4.~4 c8 |
  b2. | e, | <a, a'> | <d d'>4 a'8 \voiceOne a' g fis |
  s4. r4 b8 | b4. a | a g4 \oneVoice c,8 | d2. | % 129a
  \voiceOne b'8 a g a e fis | g4. r4 fis8 | \oneVoice <b, fis'>4.(<b g'>4) c8 | d4.~4 8 |
  g,2. | g | \voiceOne <fis' a>4.~8(<g b> <a c>) | <fis a>(<g b> <a c>) <fis a>(<g b> <a c>) | s2. |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s2.*12 |
  g,2. | s2. | % 124c+++
  s2.*12 | % 125
  fis'4.~4. | g4.~4 8 | a2. | s | % 126a
  s2.*4 |
  s2.*4 |
  s2. | s4. r8 d, e | d2.~ | 4.~4 c8 | d c b b a gis | % 127a
  s2. | a~ | 4.~4 g8 | a g fis s4. | s2. |
  s2. | s | c' | d |
  e4.~4 s8 | s2. | s | s | % 128a
  s2.*5 |
  s2. | s | s | s4. fis,8 e d |
  <fis fis'>2. | c' | d4. e4 s8 | s2. | % 129a
  d2.~ | 8 c b c g a | s2. | s |
  s2. | s | <g, g'>2.~ | q | q\fermata |
%  \bar "|."
}

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
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        % \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        % \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
            \addlyrics {\tiny \wordsTenor}
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
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        % \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
