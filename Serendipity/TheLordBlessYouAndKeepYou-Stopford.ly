\version "2.25.0"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord Bless You and Keep You"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Philip W J Stopford"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Numbers 6:22-27"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \tempo "Gracefully paced" 4=68
  s4
  \set Score.tempoHideNote = ##t
  s1*29 |
  \tempo 4=65 s2. \tempo 4=68 s4 |
  s1*11 |
  s2 \tempo 4=65 s | s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s4 s1*2
  \textMark \markup { \box "4a" }    s1*3
  \textMark \markup { \box "4b" }    s1*3
  \textMark \markup { \box "5a" }    s1*2
  \textMark \markup { \box "5b" }    s1*2
  \textMark \markup { \box "6a" }    s1*3
  \textMark \markup { \box "6b" }    s1*3
  \textMark \markup { \box "7a" }    s1*2
  \textMark \markup { \box "7b" }    s1*3
  \textMark \markup { \box "8a" }    s1*3
  \textMark \markup { \box "8b" }    s1*3
  \textMark \markup { \box "9a" }    s1*3
  \textMark \markup { \box "9b" }    s1*3
  \textMark \markup { \box "10a" }   s1*4
  \textMark \markup { \box "10b" }   s1*3 s2.
}

dynamicsSopOne = {
  \override DynamicTextSpanner.style = #'none
  s4\mp | s1*2 |
  s1*3 | s2. s4\mp | s1*2 | % 4
  s1*3 | s2. s4\mf |
  s1*5 | s2 s\< | % 6
  s1\! | s1 | s\> | s2 s8 s\! s4\mp | s2\< s\> |
  s2 s8 s\! s4\p | s1 | s2. s4\mf | s1*2 | s1\< | % 8
  s2.\! s4\omit\f | s1*5 |
  s1\> | s2 s4\! s\mp\< | s1 | s2\> s8 s\! s4\mf | s1 | s\> | s4 s\! s2\omit\p | s2.
}

sopranoOne = \relative {
  \global
  bes'8(c) | d4 c8(bes c4) bes8 a | a(bes) c4~8 r bes(c) |
  d4 ees8 d c4 d8(c) | bes4. 8 ees d bes f | g a bes c a4 r8 bes | % 4a
  bes2~8 r8 bes(c) | d4 c8(bes c4) bes8 a | a(bes) 4~8 r bes(c) |
  d4 ees8 d c4 d8(c) | bes4. 8 ees d bes f | % 5a
  g8 a bes c a r bes(c) | d2~8 r g,(a) \section \key g \major |
  b4 c8(b a4) g8 fis | 8(g) 4~8 r g(a) | b4 c8 b a4 b8(a) | % 6a
  g4. 8 c b g d | e fis g a fis4 g8(a) | b r g(a) b4 e |
  g4. 8 fis(e) d c | d d d e b a g4 \section \key bes \major | % 7a
  c4. b8 a2~ | 2~8 r f4 | bes4. a8 g2~ |
  g2~8 r g4 | f d8(ees) f2~ | 2 r4 f( | % 8a
  f'1~ | 8) r ees4(d8 c) bes(c) | d4 ees8 d c4 d8(c) \section \key c \major |
  c4.^\markup\italic rit. d8 c b16 r c8^\markup{\dynamic f \italic "a tempo"} (d) | e4 f8(e d4) c8 b | 8(c) 4~8 r c(d) | % 9a
  e4 f8 e d4 e8(d) | c4. 8 f e c g | a b c d e4. d8 |
  c1~ | 2 r4 c,8(d) | e4 f8(e) d4 c8(b) | c2~8 r c'(d) | % 10a
  e4 f8(e) d4 c8(b) | c1~ | 4 r c^\markup{\dynamic p \italic rit.}(b) | c2.
  \bar "|."
}

wordsSopOne = \lyricmode {
  The __ Lord bless __ you and keep __ you. __
  The __ Lord make His face to __ shine up -- on you
  and be gra -- cious un -- to you, to you. __
  The __ Lord bless __ you and keep __ you. __
  The __ Lord make His face to __ shine up -- on you
  and be gra -- cious un -- to you, to __ you. __
  The __ Lord bless __ you and keep __ you. __
  Ther __ Lord make His face to __ shine up -- on you
  and be gra -- cious un -- to you, to __ you.
  The __ Lord lift up the light __ of His coun -- te -- nance up -- on you,
  and give you peace, __ and give you peace, __
  and give you __ peace. __
  Ah, __ ah. __
  The __ Lord make His face to __ shine up -- on you.
  The __ Lord bless __ you and keep __ you, __
  The __ Lord make His face to __ shine up -- on you
  and be gra -- cious un -- to you, to you. __
  A -- men, a -- men, a -- men. __
  A -- men, a -- men, a -- men. __
  A -- men.
}

wordsSopOneMidi = \lyricmode {
  "The "  "Lord " "bless "  "you " "and " "keep "  "you. " 
  "\nThe "  "Lord " "make " "His " "face " "to "  "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to " "you. " 
  "\nThe "  "Lord " "bless "  "you " "and " "keep "  "you. " 
  "\nThe "  "Lord " "make " "His " "face " "to "  "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to "  "you. " 
  "\nThe "  "Lord " "bless "  "you " "and " "keep "  "you. " 
  "\nTher "  "Lord " "make " "His " "face " "to "  "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to "  "you. "
  "\nThe "  "Lord " "lift " "up " "the " "light "  "of " "His " coun te "nance " up "on " "you, "
  "\nand " "give " "you " "peace, "  "and " "give " "you " "peace, " 
  "\nand " "give " "you "  "peace. " 
  "\nAh, "  "ah. " 
  "\nThe "  "Lord " "make " "His " "face " "to "  "shine " up "on " "you. "
  "\nThe "  "Lord " "bless "  "you " "and " "keep "  "you, " 
  "\nThe "  "Lord " "make " "His " "face " "to "  "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to " "you. " 
  "\nA" "men, " a "men, " a "men. " 
  "\nA" "men, " a "men, " a "men. " 
  "\nA" "men. "
}

dynamicsSopTwo = {
  \override DynamicTextSpanner.style = #'none
  s4 | s1\p | s |
  s1*3 | s2. s4\mp | s1*2 | % 4
  s1*4 |
  s1\mp | s1*4 | s4 s\mp s2\< | % 6
  s1\! | s | s\> | s2 s8 s\! s4\mp | s2\< s\> |
  s2 s8 s\! s4\p | s1 | s2. s4\mf | s1 | s | s\< | % 8
  s2.\! s4\omit\f | s1*5 |
  s1\> | s2 s4\! s\mp\< | s1 | s2\> s8 s\! s4\mp | s1 | s\> s4 s\! s2\omit\p | s2.
}

sopranoTwo = \relative {
  \global
  r4 | bes'2(a | f2.~8) r |
  bes2(a | g f | g f | % 4a
  g2 ees8) r bes'(c) d4 c8(bes c4) bes8 a | a(bes) 4~8 r8 bes(c) |
  d4 ees8 d c4 d8(c) | bes4. 8 ees d bes f | % 5a
  g8 a bes c a r g4 | g(e fis8) r r4 \section \key g \major |
  g2(fis | e g~ | 4.) r8 d2(~ | % 6a
  d1 | e2 fis | e8) r g(a) b4 e |
  e4. 8 d(c) b a | a a a a g fis e(d) \section \key bes \major | % 7a
  c4 g' f(e | d c b8) r c4 | d8(ees) f4 f(ees |
  d4 c bes8) r ees4 | 2. 4 | 2 r4 bes'8(c) | % 8a
  d4 c8(bes c4) bes8 a | a(bes) 4~8 r f4 | 4 8 8 4 4 \section \key c \major |
  a4.^\markup\italic rit. 8 g8 16 r f4^\markup{\dynamic f \italic "a tempo"} | g4 2 8 8 | 4 4~8 r g4 | % 9a
  g4 8 8 4 4 | 4. 8 8 8 8 8 | a b c d b4 e,8(b') |
  b4(a2.~ | 2) r4 c,8(d) | e4 f8(e) d4 c8(b) | c2~8 r8 c4( | % 10a
  f2 g) | a1~ | 4 r f2^\markup{\dynamic p \italic rit.} | g2.
  \bar "|."
}

wordsSopTwo = \lyricmode {
  Ah. __ Ah. __
  The __ Lord bless __ you and keep __ you. __
  The __ Lord make His face to __ shine up -- on you
  and be gra -- cious un -- to you, to you. __
  Ah. __ Ah. __
  The __ Lord lift up the light __ of His coun -- te -- nance up -- on you,
  and __ give you peace, __ and give __ you peace, __
  and give you peace.
  The __ Lord bless __ you and keep __ you. __
  The Lord make His face to shine up -- on you.
  The Lord bless you and keep you. __
  The Lord make His face to shine up -- on you
  and be gra -- cious un -- to you, to __ you. __
  A -- men, a -- men, a -- men. __
  A -- men. __ A -- men.
}

wordsSopTwoMidi = \lyricmode {
  "Ah. "  "Ah. " 
  "\nThe "  "Lord " "bless "  "you " "and " "keep "  "you. " 
  "\nThe "  "Lord " "make " "His " "face " "to "  "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to " "you. " 
  "\nAh. "  "Ah. " 
  "\nThe "  "Lord " "lift " "up " "the " "light "  "of " "His " coun te "nance " up "on " "you, "
  "\nand "  "give " "you " "peace, "  "and " "give "  "you " "peace, " 
  "\nand " "give " "you " "peace. "
  "\nThe "  "Lord " "bless "  "you " "and " "keep "  "you. " 
  "\nThe " "Lord " "make " "His " "face " "to " "shine " up "on " "you. "
  "\nThe " "Lord " "bless " "you " "and " "keep " "you. " 
  "\nThe " "Lord " "make " "His " "face " "to " "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to "  "you. " 
  "\nA" "men, " a "men, " a "men. " 
  "\nA" "men. "  A "men. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4 | s1\p | s |
  s1*3 | s2. s4\mp | s1*2 | % 4
  s1*4 |
  s1\mp | s1*4 | s4 s\mf s2\< | % 6
  s1\! | s | s\> | s2 s8 s\! s4\mp | s2\< s\>
  s2 s8 s\! s4\p s1 | s2. s4\mf | s1*2 | s1\< | % 8
  s2.\! s4\omit\f | s1*5 |
  s1\> | s2 s | s1\p\< | s2\> s8 s\! s4\mp | s1 | s\> | s4 s\! s2\omit\p | s2.
}

alto = \relative {
  \global
  r4 | f'1( | ees2.~8) r |
  f1~( | 4 ees2 d4 | ees1~ | % 4a
  ees4 d c8) r ees4 | f4 2 8 8 | 8(ees) 4~8 r f4 |
  f4 8 8 4 4 | 4. 8 8 8 8 8 | % 5a
  g8 8 8 8 f r c4 | 2~8 r r4 \section \key g \major |
  b2(d | c4. d8 e4 d8 c | d4.) r8 b2( | % 6a
  c2 b a b~ | 8) r r b' b(a) g(fis) |
  e8(fis) g4 a4 8 8 | fis8 8 8 8 g fis e(d) \section \key bes \major | % 7a
  c4. 8 2~ | 2~8 r f,4 | f'8(ees) d4 bes2~ |
  bes2~8 r8 4 | c2. 4 | 2 r4 ees | % 8a
  d4 d(c) 8 8 | bes4 4~8 r c4 | d4 8 8 c4 f \section \key c \major |
  f4.^\markup\italic rit. 8 8 16 r d4^\markup{\dynamic f \italic "a tempo"}e4 4(d) 8 8 | c4 4~8 r d4 | % 9a
  e4 8 8 d4 d | c4. 8 8 8 8 8 | a'8 8 8 8 4 gis |
  e1~ | 2 r | e(d) | c~8 r8 4(~ | % 10a
  c2 d) | f1~ | 4 r d2^\markup{\dynamic p \italic rit.} | e2.
  \bar "|."
}

wordsAlto = \lyricmode {
  Ah. __ Ah. __
  The Lord bless __ you and keep __ you. __
  The __ Lord make His face to shine up -- on you
  and be gra -- cious un -- to you, to you. __
  Ah. __ Ah. __
  The Lord __ lift __ up __ the light of His coun -- te -- nance up -- on you,
  and __ give you peace, __ and give __ you peace, __
  and give you peace.
  The Lord bless __ you and keep you. __
  The Lord make His face to shine up -- on you.
  The Lord bless you and keep you. __
  The Lord make His face to shine up -- on you
  and be gra -- cious un -- to you, to you. __
  A -- men. __ A -- men. __ A -- men.
}

wordsAltoMidi = \lyricmode {
  "Ah. "  "Ah. " 
  "\nThe " "Lord " "bless "  "you " "and " "keep "  "you. " 
  "\nThe "  "Lord " "make " "His " "face " "to " "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to " "you. " 
  "\nAh. "  "Ah. " 
  "\nThe " "Lord "  "lift "  "up "  "the " "light " "of " "His " coun te "nance " up "on " "you, "
  "\nand "  "give " "you " "peace, "  "and " "give "  "you " "peace, " 
  "\nand " "give " "you " "peace. "
  "\nThe " "Lord " "bless "  "you " "and " "keep " "you. " 
  "\nThe " "Lord " "make " "His " "face " "to " "shine " up "on " "you. "
  "\nThe " "Lord " "bless " "you " "and " "keep " "you. " 
  "\nThe " "Lord " "make " "His " "face " "to " "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to " "you. " 
  "\nA" "men. "  A "men. "  A "men. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4 | s1\p | s |
  s1*3 | s2. s4\mp | s1*2 | % 4
  s1*4 |
  s1\mp | s1*4 | s4. s8\mf\< s2 | % 6
  s1\! | s | s\> | s2 s8 s4.\! | s4 s\mp\< s2\> |
  s2 s8 s\! s4\p | s1 | s2. s4\mf | s1*2 | s1\< | % 8
  s2.\! s4\omit\f | s1*5 |
  s1\> | s2 s\! | s1\p\< | s2\> s8 s\! s4\mp | s1 | s\> | s4 s\! s2\omit\p | s2.
}

tenor = \relative {
  \global
  r4 | bes1(~ | 1~ |
  bes1~ | 1~ | 2 c | % 4a
  bes2~8) r c4 | bes4 4(c) 8 8 | bes4 4~8 r c4 |
  bes4 8 8 c4 4 | ees4. 8 d d bes8 8 | % 5a
  bes8 8 8 8 c r c4 | a2~8 r r4 \section \key g \major |
  d,2( a' | g4 bes c4.) r8 | g2( a | % 6a
  g2 g | a fis | g8) r r e'8 4 b |
  g4 e' fis4 8 8 | 8 e d d b b e,4 \section \key bes \major | % 7a
  f4. 8 2~ | 2~8 r r4 | r f d' c |
  bes4(a g8) r g4 | bes2. 4 | 2 r4 bes | % 8a
  f4 2 8 8 | ees4 4~8 r f4 | 4 8 8 4 c' \section \key c \major |
  c4.^\markup\italic rit. d8 c8 b16 r a4^\markup{\dynamic f \italic "a tempo"} | g4 2 8 8 | f4 4~8 r g4 | % 9a
  g4 8 8 4 4 | f4. 8 e e g g | c c c c d4 b |
  c1~ | 2 r | c(b) | b(a8) r c4( | % 10a
  a2 b) | c(d~ | 4) r a2^\markup{\dynamic p \italic rit.} | g2.
  \bar "|."
}

wordsTenor = \lyricmode {
  Ah. __
  The Lord bless __ you and keep you. __
  The Lord make His face to shine up -- on you
  and be gra -- cious un -- to you, to you. __
  Ah. __ Ah. __
  The Lord lift up the light of His coun -- te -- nance up -- on you,
  and give you peace, __ and give you peace, __
  and give you peace.
  The Lord bless you and keep you. __
  The Lord make His face to shine up -- on you.
  The Lord bless __ you and keep you. __
  The Lord make His face to shine up -- on you
  and be gra -- cious un -- to you, to you. __
  A -- men. __ A -- men. __ A -- men.
}

wordsTenorMidi = \lyricmode {
  "Ah. " 
  "\nThe " "Lord " "bless "  "you " "and " "keep " "you. " 
  "\nThe " "Lord " "make " "His " "face " "to " "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to " "you. " 
  "\nAh. "  "Ah. " 
  "\nThe " "Lord " "lift " "up " "the " "light " "of " "His " coun te "nance " up "on " "you, "
  "\nand " "give " "you " "peace, "  "and " "give " "you " "peace, " 
  "\nand " "give " "you " "peace. "
  "\nThe " "Lord " "bless " "you " "and " "keep " "you. " 
  "\nThe " "Lord " "make " "His " "face " "to " "shine " up "on " "you. "
  "\nThe " "Lord " "bless "  "you " "and " "keep " "you. " 
  "\nThe " "Lord " "make " "His " "face " "to " "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to " "you. " 
  "\nA" "men. "  A "men. "  A "men. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4 | s1\p | s |
  s1*3 | s2. s4\mp | s1*2 | % 4
  s1*4 |
  s1\mp | s1*4 | s4 s\mf\< s2 | % 6
  s1\! | s | s\> | s2 s8 s8\! s4\mp | s2\< s\> |
  s2 s8 s\! s4\p | s1 | s2. s4\mf | s1*2 | s1\< | % 8
  s2.\! s4\omit\f | s1*5 |
  s1\> | s2 s\! | s1\p\< | s2\> s8 s\! s4\mp | s1 | s\> | s4 s\! s2\omit\p | s2.
}

bass = \relative {
  \global
  r4 | bes1(~ | 1~ |
  bes1~ | 1 | ees,~ | % 4a
  ees2 f8) r f4 | bes4 4(a) 8 8 | g4 g~8 r a4 |
  bes4 8 8 a4 a | g4. 8 f8 f d d | % 5a
  ees8 8 8 8 8 r8 4 | d2~8 r r4 \section \key g \major |
  g,2(b | c d4.) r8 | g2(fis | % 6a
  e2 d | cis dis | e8) r b'(a) g(fis) e(d) |
  c4 c'4 4 8 8 | b8 8 8 8 e, e g,4 \section \key bes \major | % 7a
  a4. 8 2~ | 2~8 r a4 | d4. 8 ees2~ |
  ees2~8 r ees4 | f1~ | 2 r4 f | % 8a
  bes,4 4(a) 8 8 | g4 4~8 r a4 | bes4 8 8 a4 a' \section \key c \major |
  g4.^\markup\italic rit. 8 8 16 r g,4^\markup{\dynamic f \italic "a tempo"} | c c(b) 8 8 | a4 4~8 r b4 | % 9a
  c4 8 8 b4 4 | a4. 8 g g e' e | f f f f e4 4 |
  a,1~ | 2 r | g'1 | f2~8 r f(e | % 10a
  d2 e) | f(g~ | 4) r g,2^\markup{\dynamic p \italic rit.} | c2.
  \bar "|."
}

wordsBass = \lyricmode {
  Ah. __
  The Lord bless __ you and keep you. __
  The Lord make His face to shine up -- on you
  and be gra -- cious un -- to you, to you. __
  Ah. __ Ah. __
  The __ Lord __ lift __ up the light of His coun -- te -- nance up -- on you,
  and give you peace, __ and give you peace, __ and peace. __
  The Lord bless __ you and keep you. __
  The Lord make His face to shine up -- on you.
  The Lord bless __ you and keep you. __
  The Lord make His face to shine up -- on you
  and be gra -- cious un -- to you, to you. __
  A -- men. __ A -- men. __ A -- men.
}

wordsBassMidi = \lyricmode {
  "Ah. " 
  "\nThe " "Lord " "bless "  "you " "and " "keep " "you. " 
  "\nThe " "Lord " "make " "His " "face " "to " "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to " "you. " 
  "\nAh. "  "Ah. " 
  "\nThe "  "Lord "  "lift "  "up " "the " "light " "of " "His " coun te "nance " up "on " "you, "
  "\nand " "give " "you " "peace, "  "and " "give " "you " "peace, "  "and " "peace. " 
  "\nThe " "Lord " "bless "  "you " "and " "keep " "you. " 
  "\nThe " "Lord " "make " "His " "face " "to " "shine " up "on " "you. "
  "\nThe " "Lord " "bless "  "you " "and " "keep " "you. " 
  "\nThe " "Lord " "make " "His " "face " "to " "shine " up "on " "you "
  "\nand " "be " gra "cious " un "to " "you, " "to " "you. " 
  "\nA" "men. "  A "men. "  A "men. "
}

pianoRHone = \relative {
  \global
  bes'8 c | d4 c8 bes c4 bes8 a | a bes8 4~8 r bes c |
  d4 c8 d c4 d8 c | bes4. 8 ees d bes f | g a bes c a4 r8 bes8 | % 4a
  bes2~8 r bes8 c | d4 c8 bes c4 bes8 a | a bes8 4~8 r bes8 c |
  d4 ees8 d c4 d8 c | bes4. 8 ees d bes f | % 5a
  g8 a bes c a r bes c | d2~8 r g, a \section \key g \major |
  b4 c8 b a4 g8 fis | fis g g d g4 8 a | b4 c8 b a4 b8 a | % 6a
  g4. 8 c b g d | e fis g a fis4 g8 a | b r g b b a e' fis, |
  <e' g>4. 8 <d fis> e <b d> c | d d d e b a g d \section \key bes \major | % 7a
  c'4 g8 b <f a>4~<e a>4~ | <d a'>4~a'4 <c, a'>8 r f4 | <f bes>8 ees f a <f g>4~ <ees g>~ |
  g4~g~8 r <ees g>4 | <ees f> d8 ees f4 ees | <ees f>2 r4 bes'8 c | % 8a
  <d f>4 c8 bes c4 bes8 a | a bes ees4 d8 c bes c | <f, d'>4 <f ees'>8 <f d'> <f c'>4 d'8 c \section \key c \major |
  <a c>4. <a d>8 <g c> <g b>16 r c8 d | <g, e'>4 f'8 e d4 <g, c>8 <g b> | b8 c \chord <g c>4~8 \auto r c8 d | % 9a
  \chord <g, e'>4 <g f'>8 <g e'> <g d'>4 \auto e'8 d | \chord <g, c>4. 8 <g f'> <g e'> <g c> g | a b c d <b e>4 gis8 d' |
  <e, c'>1~ | 2 r4 c8 d | e4 f8 e d4 c8 b | c2~8 r c' d | % 10a
  e4 f8 e d4 c8 b | <a c>1~ | 4 r c b | <g c>2.
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  r4 | <f' bes>2 <f a> | <ees f>2. r4 |
  <f bes>2 <f a> | <f g>4 ees f d | ees2 <ees f> | % 4a
  <ees g>4 d <c ees>8 r ees4 | f4 2 8 8 | 8 ees8 4~8 r f4 |
  f4 8 8 4 4 | 4. 8 8 8 8 8 | % 5a
  g8 8 8 8 f r g4 | g4 ees fis8 r g a \section \key g \major |
  <b, g'>2 <d fis> | <c e>8 r r d8 e4 d8 c | <d g>4 r <b d>2 | % 6a
  <c d>2 <b d> | a2 b | e8 r g e e a g fis |
  e8 fis <e g>4 \chord a8 c <fis, a> fis | <fis a>8 8 8 8 \auto g fis e d \section \key bes \major | % 7a
  c4 g'8 c,8 \chord 4~4 | 4~4~b8 \auto r c4 | \chord d8 s d s d4 c |
  d4 c bes8 s bes4 | c4 s s c | 2 r4 \auto <ees f> | % 8a
  \chord d4 \auto d c4 8 8 | s4 bes'4 s <c, f>4 | \chord d4 8 8 c4 \auto f \section \key c \major |
  \chord f4. 8 8 16 r \auto <d f>4 | \chord e4 \auto <e g>4 d4 \chord 8 8 \auto | <c g'>4 4~8 r <d g>4 | % 9a
  e4 8 8 d4 <d g> | c4. 8 8 8 8 8 | a'8 8 8 8 4 e8 b' |
  \auto b4 a2.~ | 2 r | s1 | s | % 10a
  f2 g | f1~ | 4 r <d f>2 | \chord e2.
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\omit\mp-\markup{\dynamic mp \italic "(for rehearsal only)"} | s1 | s |
  s1*6 | % 4
  s1*3 | s2. s4\mf |
  s1*6 | % 6
  s1*2 | s1\> | s2 s8 s\! s4\mp | s2\< s\> |
  s2 s8 s\! s4\p | s1 | s2. s4\mf | s1 | s | s\< | % 8
  s2.\!-\markup\italic rit. s4\omit\f-\markup{\dynamic f \italic "a tempo"} | s1*5 |
  s1\> | s2\! s4 s\p | s1\< | s2\> s8 s\! s4 | s1 | s\> | s4 s\! s2\omit\p-\markup{\dynamic p \italic rit.} | s2.
}

pianoLHone = \relative {
  \global
  r4 | bes1 | 2. r4 |
  bes1 | bes | 2 c | % 4a
  bes2 8 r c4 | bes4 4 c4 8 8 | bes4 4~8 r c4 |
  bes4 8 8 c4 4 | ees4. 8 d d bes8 8 | % 5a
  bes8 8 8 8 c r c4 | \chord <a c>2~8 \auto r r4 \section \key g \major |
  d,2 a' | g4 b c4 r | g2 a | % 6a
  g2 g | a fis | b8 r b a g fis b d, |
  g4 c fis4 c8 8 | b8 e d d b b e,4 \section \key bes \major | % 7a
  f4. 8 2~ | 2~8 r r4 | d4 f8 d bes'4~4 |
  bes4 a g8 r g4 | bes2. 4 | 2 r4 bes | % 8a
  f4 4 4 8 8 | \chord <ees g bes>4 4~8 r <f a>4 \auto | f4 8 8 4 c' \section \key c \major |
  c4. d8 c8 b16 r a4 | g4 4 s g8 8 | f4 4~8 r g4 | % 9a
  g4 8 8 4 4 | f4. 8 e e g g | c c c c d4 b |
  c1~ | 2 r | c b | \chord b a8 r c8 s | % 10a
  a2 b | c d~ | 4 r a2 | g2.
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  r4 | s1 | s1 |
  s1 | s1 | ees1 | % 4a
  ees2 f8 r f4 | bes4 4 a4 8 8 | g4 g~8 r a4 |
  bes4 8 8 a4 a | g4. 8 f8 f d d | % 5a
  ees8 8 8 8 8 r8 4 | d2~8 r r4 \section \key g \major |
  g,2 b | c d4 r | g2 fis | % 6a
  e2 d | cis dis | \chord <e g>8 \auto r b' a g fis e d |
  c4 c'4 4 8 8 | b8 8 8 8 e, e g,4 \section \key bes \major | % 7a
  a4. 8 2~ | 2~8 r a4 | d4 f8 d ees4~4 |
  ees2~8 r ees4 | f2. 4 | 2 r4 f | % 8a
  bes,4 4 a4 8 8 | g4 4~8 r a4 | bes4 8 8 a4 a' \section \key c \major |
  g4. 8 8 16 r g,4 | c c b4 8 8 | a4 4~8 r b4 | % 9a
  c4 8 8 b4 4 | a4. 8 g g e' e | f f f f e4 4 |
  a,1~ | 2 r | g'1 | f2~8 r f e | % 10a
  d2 e | f g~ | 4 r g,2 | c2.
  \bar "|."
}

#(set-global-staff-size 17)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopOne
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics \wordsSopOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopTwo
            \new Voice \sopranoTwo
            \addlyrics \wordsSopTwo
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
            \magnifyStaff #5/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\small \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #5/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "single-noacc"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopOne
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics \wordsSopOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopTwo
            \new Voice \sopranoTwo
            \addlyrics \wordsSopTwo
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopOne
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics \wordsSopOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopTwo
            \new Voice \sopranoTwo
            \addlyrics \wordsSopTwo
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
  \bookOutputSuffix "singlepage-sop1"
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
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopOne
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics \wordsSopOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} {\teeny \dynamicsSopTwo}
            \new Voice \sopranoTwo
            \addlyrics {\tiny \wordsSopTwo}
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
  \bookOutputSuffix "singlepage-sop2"
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
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} {\teeny \dynamicsSopOne}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics {\tiny \wordsSopOne}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopTwo
            \new Voice \sopranoTwo
            \addlyrics \wordsSopTwo
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} {\teeny \dynamicsSopOne}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics {\tiny \wordsSopOne}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} {\teeny \dynamicsSopTwo}
            \new Voice \sopranoTwo
            \addlyrics {\tiny \wordsSopTwo}
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} {\teeny \dynamicsSopOne}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics {\tiny \wordsSopOne}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} {\teeny \dynamicsSopTwo}
            \new Voice \sopranoTwo
            \addlyrics {\tiny \wordsSopTwo}
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} {\teeny \dynamicsSopOne}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics {\tiny \wordsSopOne}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} {\teeny \dynamicsSopTwo}
            \new Voice \sopranoTwo
            \addlyrics {\tiny \wordsSopTwo}
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
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
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

\book {
  \bookOutputSuffix "midi-sop1"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopOne
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics \wordsSopOneMidi
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopTwo
            \new Voice \sopranoTwo
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
  \bookOutputSuffix "midi-sop2"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopOne
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopTwo
            \new Voice \sopranoTwo
            \addlyrics \wordsSopTwoMidi
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
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopOne
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopTwo
            \new Voice \sopranoTwo
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
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopOne
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopTwo
            \new Voice \sopranoTwo
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
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopOne
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopTwo
            \new Voice \sopranoTwo
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
