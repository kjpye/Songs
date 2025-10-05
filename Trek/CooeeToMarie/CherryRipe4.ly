\version "2.25.29"

\include "../../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Cherry Ripe"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "C. E. Horn"
  arranger    = "Arr. Henry Geehl"
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
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Andantino 4=100
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*3
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*4
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "8a" } s1*2
  \textMark \markup { \box "8b" } s1*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1 | s1\omit\p-\markup{\dynamic p \italic lightly} | s |
  s1*2 | s1\mf | s1*4 | % 2
  s1 | s\p | s1*5 |
  s1*2 | s4. s8\cresc s2 | s1\f | s\omit\p-\markup{\dynamic p \italic legg.} | s2\< s4.\> s8\! |
  s1*6 | % 5
  s1*4 | s4.\p s8\cresc s2 | s1 |
  s1\f | s | s-\markup\italic "poco rall." | s2\> s\!-\markup\italic "a tempo" | s1\p | s |
  s1*2 | s1\omit\f-\markup{\dynamic f \italic rall.} | s1*3 | % 8
}

soprano = \relative {
  \global
  R1 | g'8-. bes-. bes4-- c8-. bes-. 4-- | 4. ees16(f) ees4(d) |
  ees4. d8 d(c) bes4 | aes8(bes16 aes) g8(aes16 g) f4(bes8) r | g8 bes8 4 c8 bes8 4 | % 2a
  ees4 g8(f) ees4(d) | ees4. 8 f(ees) c(aes) | g16(bes8.) aes8(f) ees4 r | R1 |
  R1 | bes'4. 8 c(bes4) 8 | ees4. d8 4(c8) r | f,4. g16(a) bes4 r8 8 | % 3a
  a8(g) d'(c) bes4(aes) | f'4. d8 ees(f16 ees d8) c | bes4. c16(d) f,4~8 r |
  f'4. d8 ees4. d16(c) | bes4. c16(d) f,4~8 r | bes4. aes8 g(aes) bes(d16 c) | % 4a
  bes4. aes8 bes4 r | g8 bes8 4 c8 bes8 4 | 4. ees16(f) ees4(d8) r |
  ees4. d8 d(c) bes4 | aes8(bes16 aes) g8(aes16 g) f4(bes8) r | g bes8 4 c8 bes8 4 | % 5a
  ees4 g8(f) ees4(d) | ees4. 8 f(ees) c(aes) | g16(bes8.) aes8(f) ees4 r |
  ees'4. 8 d4. c16(bes) | c4. 8 bes2 | aes4. bes16(aes) g4 ees' | % 6a
  f,4. aes16(g) f2 | des'4. 8 8(c) 4 | ees4. 8 4(d) |
  ees4. 8 8(c) aes(f) | d(c') bes(aes) 4(g) | c4. d8 ees(bes) aes(g) | % 7a
  g8(f) ees(d) ees4 r | g8 bes8 4 8 aes8 8(c) | 4 bes8(aes) 4(g) |
  ees'4. 8 f(ees) c(aes) | g(bes) aes(f) ees4 r | % 8a
  ees'4 d8(c) c(bes) aes(g) | f4 r d'2\fermata | ees1~ | 1 |
  \bar "|."
}

wordsSop = \lyricmode {
  Cher -- ry ripe, cher -- ry ripe, ripe, I cry; __
  Full and fair ones come and buy, __
  Cher -- ry ripe, cher -- ry ripe, ripe I cry,
  Full and fair ones come and buy,
  If so be you ask __ me where
  They do grow,
  I an -- swer there,
  Where the sun -- beams sweet -- ly __ smile __
  There’s the land or __ cher -- ry Isle, __ % 4a
  There’s the land or __ cher -- ry Isle,
  Cher -- ry ripe, cher -- ry ripe, ripe, I __ cry, __
  Full and fair ones come __ and __ buy. __
  Cher -- ry ripe, cher -- ry ripe, ripe, I __ cry, __
  Full and fair ones come and __ buy.
  Where the sun -- beams sweet -- ly smile % 6a
  There’s the land or cher -- ry __ Isle.
  There plan -- ta -- tions ful -- ly show, __
  All the year where cher -- ries __ grow, __ % 7a
  All the year where cher -- ries __ grow.
  Cher -- ry ripe, cher -- ry ripe, ripe, I __ cry, __
  Full and fair __ ones __ come __ and __ buy,
  Full and __ fair ones come and buy! __  
}

wordsSopMidi = \lyricmode {
  "Cher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I " "cry; " 
  "\nFull " "and " "fair " "ones " "come " "and " "buy, " 
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "ripe " "I " "cry, "
  "\nFull " "and " "fair " "ones " "come " "and " "buy, "
  "\nIf " "so " "be " "you " "ask "  "me " "where "
  "\nThey " "do " "grow, "
  "\nI " an "swer " "there, "
  "\nWhere " "the " sun "beams " sweet "ly "  "smile " 
  "\nThere’s " "the " "land " "or "  cher "ry " "Isle, "  % 4a
  "\nThere’s " "the " "land " "or "  cher "ry " "Isle, "
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I "  "cry, " 
  "\nFull " "and " "fair " "ones " "come "  "and "  "buy. " 
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I "  "cry, " 
  "\nFull " "and " "fair " "ones " "come " "and "  "buy. "
  "\nWhere " "the " sun "beams " sweet "ly " "smile " % 6a
  "\nThere’s " "the " "land " "or " cher "ry "  "Isle. "
  "\nThere " plan ta "tions " ful "ly " "show, " 
  "\nAll " "the " "year " "where " cher "ries "  "grow, "  % 7a
  "\nAll " "the " "year " "where " cher "ries "  "grow. "
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I "  "cry, " 
  "\nFull " "and " "fair "  "ones "  "come "  "and "  "buy, "
  "\nFull " "and "  "fair " "ones " "come " "and " "buy! "   
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1 | s1\omit\p-\markup{\dynamic p \italic lightly} | s |
  s1*2 | s1\mf | s1*4 | % 2
  s1 | s\p | s1*5 |
  s1*2 | s4. s8\cresc s2 | s1\f | s\omit\p-\markup{\dynamic p \italic legg.} | s2\< s4.\> s8\! |
  s1*6 | % 5
  s1*4 | s4.\p s8\cresc s2 | s1 |
  s1\f | s | s-\markup\italic "poco rall." | s2\> s\!-\markup\italic "a tempo" | s1\p | s |
  s1*2 | s1\omit\f-\markup{\dynamic f \italic rall.} | s1*3 | % 8
}

alto = \relative {
  \global
  R1 | ees'8-. g-. 4-- aes8-. 8-. 4-- | g(f8) aes g4(f) |
  ees4. 8 4 4 | 8(d) ees4 4(d8) r | ees g8 4 aes8 8 4 |% 2a
  bes4 c bes2 | 4. 8 c4 aes8(f) | ees16(g8.) f8(d) ees4 r | R1 |
  R1 | g4. 8 f4. 8 | g(a) bes4 4(aes8) r | f4. 8 4 r8 g | % 3a
  ees8(g4) 8 f2 | d4 f f ees | d bes a~8 r |
  r4 d8 bes c4 ees | d bes a~8 r | r4 d8 f ees(g4) 8 | % 4a
  f4 ees d r | ees8 g8 4 aes8 d,8 4 | ees4 f g(f8) r |
  ees4. 8 4 4 | 8(d) ees4 4(d8) r | ees g8 4 aes8 8 4 | % 5a
  bes4 c bes2 | 4. 8 c4 aes8(f) | ees16(g8.) f8(d) ees4 r |
  g4 aes fis g | e f d(ees) | c d ees4 4 | % 6a
  c4 c ees(d) | bes'4. 8 8(aes) 4 | c4. 8 4(bes) |
  ees,4. 8 4 4 | d8(aes') g(f) 4(ees) | f4. 8 g4 f8(ees) | % 7a
  c4 bes ees r | ees8 g8 4 ees8 aes8 4 | 4 f ees2 |
  bes'4. 8 c4 aes8(f) | ees(g) f(d) ees4 r | % 8a
  ges4. 8 g4 ees | f r aes2\fermata | g1~ | g |
}

wordsAlto = \lyricmode {
  Cher -- ry ripe, cher -- ry ripe, ripe, I cry; __
  Full and fair ones come and buy, __
  Cher -- ry ripe, cher -- ry ripe, ripe I cry,
  Full and fair ones come and buy,
  If so be you ask __ me where
  They do grow,
  I an -- swer there,
  Where the sun -- beams sweet -- ly __ smile __
  There’s the land or cher -- ry Isle, __ % 4a
  There’s the land or cher -- ry Isle.
  Cher -- ry ripe, cher -- ry ripe, ripe, I cry, __
  Full and fair ones come and buy. __ % 5a
  Cher -- ry ripe, cher -- ry ripe, ripe, I cry,
  Full and fair ones come and __ buy.
  Where the sun -- beams sweet -- ly smile __  % 6a
  There’s the land or cher -- ry Isle. __
  There plan -- ta -- tions ful -- ly show, __
  All the year where cher -- ries __ grow; __ % 7a
  All the year where cher -- ries grow.
  Cher -- ry ripe, cher -- ry ripe, ripe, I cry,
  Full and fair ones __ come __ and __ buy,
  Full and fair ones come and buy! __
}

wordsAltoMidi = \lyricmode {
  "Cher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I " "cry; " 
  "\nFull " "and " "fair " "ones " "come " "and " "buy, " 
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "ripe " "I " "cry, "
  "\nFull " "and " "fair " "ones " "come " "and " "buy, "
  "\nIf " "so " "be " "you " "ask "  "me " "where "
  "\nThey " "do " "grow, "
  "\nI " an "swer " "there, "
  "\nWhere " "the " sun "beams " sweet "ly "  "smile " 
  "\nThere’s " "the " "land " "or " cher "ry " "Isle, "  % 4a
  "\nThere’s " "the " "land " "or " cher "ry " "Isle. "
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I " "cry, " 
  "\nFull " "and " "fair " "ones " "come " "and " "buy. "  % 5a
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I " "cry, "
  "\nFull " "and " "fair " "ones " "come " "and "  "buy. "
  "\nWhere " "the " sun "beams " sweet "ly " "smile "   % 6a
  "\nThere’s " "the " "land " "or " cher "ry " "Isle. " 
  "\nThere " plan ta "tions " ful "ly " "show, " 
  "\nAll " "the " "year " "where " cher "ries "  "grow; "  % 7a
  "\nAll " "the " "year " "where " cher "ries " "grow. "
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I " "cry, "
  "\nFull " "and " "fair " "ones "  "come "  "and "  "buy, "
  "\nFull " "and " "fair " "ones " "come " "and " "buy! " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1 | s1\omit\p-\markup{\dynamic p \italic lightly} | s |
  s1*7 | % 2
  s1 | s\p | s1*5 |
  s1*2 | s4. s8\cresc s2 | s1\f | s\omit\p-\markup{\dynamic p \italic legg.} | s2\< s4.\> s8\! |
  s1*6 | % 5
  s1*4 | s4.\p s8\cresc s2 | s1 |
  s1\f | s | s-\markup\italic "poco rall." | s2\> s\!-\markup\italic "a tempo" | s1\p | s |
  s1*2 | s1\omit\f-\markup{\dynamic f \italic rall.} | s1*3 | % 8
}

tenor = \relative {
  \global
  R1 | bes8-. 8-. 4-- 8-. 8-. 4-- | 4(c8) 8 bes2 |
  bes4. 8 c4 bes | aes g f(bes8) r | r4 g8 bes8 4 d8 8 | % 2a
  ees4 4 g(f) | ees4. 8 c4 c | bes aes g r | R1 |
  R1 | ees'4. 8 d4. 8 | c4 bes f'~8 r | bes,4. 8 4 r8 bes | % 3a
  c4 bes c2 | R1 | f4.-> d8 ees(f16 ees d8) c |
  bes4. c16(d) f,2 | f'4.-> d8 ees4. d16(c) | bes4. c16(d) c4 cis | % 4a
  d4 c bes r | 2. 4 | 4 c ees(d8) r |
  bes4. 8 c4 bes | aes g f~8 r | r4 g8 bes8 4 d8 d | % 5a
  ees4 4 g(f) | ees4. 8 c4 c | bes aes g r |
  R1*3 | % 6a
  R1 | e'4. 8 f4 f | ges4. 8 f2 |
  bes,4. 8 c4 c | bes8(d) 4 c2 | 4(bes8) 8 4 4 | % 7a
  aes4 g8(f) g4 r | des'2 c | d4 d bes2 |
  ees4. 8 4. c8 | bes4 8(aes) g4 r | % 8a
  c4. ees8 4 bes | 4 r f'2\fermata | ees1~ | 1 |
}

wordsTenor = \lyricmode {
  Cher -- ry ripe, cher -- ry ripe, ripe, I cry;
  Full and fair ones come and buy, __
  Cher -- ry ripe, cher -- ry ripe I cry,
  Full and fair ones come and buy,
  If so be you ask __ me where
  They do grow,
  I an -- swer there,
  Where the sun -- beams sweet -- ly __ smile __
  There’s the land or __ cher -- ry Isle, % 4a
  or cher -- ry Isle.
  Cher -- ry ripe, I cry, __
  Full and fair ones come and buy. __ % 5a
  Cher -- ry ripe, cher -- ry ripe, I cry, __
  Full and fair ones comes and buy.
  There plan -- ta -- tions ful -- ly show, % 6b
  All the year where cher -- ries grow, __ % 7a
  All __ the year where cher -- ries grow.
  Cher -- ry ripe, I cry,
  Full and fair ones come and __ buy, % 8a
  Full and fair ones come and buy! __
}

wordsTenorMidi = \lyricmode {
  "Cher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I " "cry; "
  "\nFull " "and " "fair " "ones " "come " "and " "buy, " 
  "\nCher" "ry " "ripe, " cher "ry " "ripe " "I " "cry, "
  "\nFull " "and " "fair " "ones " "come " "and " "buy, "
  "\nIf " "so " "be " "you " "ask "  "me " "where "
  "\nThey " "do " "grow, "
  "\nI " an "swer " "there, "
  "\nWhere " "the " sun "beams " sweet "ly "  "smile " 
  "\nThere’s " "the " "land " "or "  cher "ry " "Isle, " % 4a
  "\nor " cher "ry " "Isle. "
  "\nCher" "ry " "ripe, " "I " "cry, " 
  "\nFull " "and " "fair " "ones " "come " "and " "buy. "  % 5a
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "I " "cry, " 
  "\nFull " "and " "fair " "ones " "comes " "and " "buy. "
  "\nThere " plan ta "tions " ful "ly " "show, " % 6b
  "\nAll " "the " "year " "where " cher "ries " "grow, "  % 7a
  "\nAll "  "the " "year " "where " cher "ries " "grow. "
  "\nCher" "ry " "ripe, " "I " "cry, "
  "\nFull " "and " "fair " "ones " "come " "and "  "buy, " % 8a
  "\nFull " "and " "fair " "ones " "come " "and " "buy! " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1 | s1\omit\p-\markup{\dynamic p \italic lightly} | s |
  s1*7 | % 2
  s1*3 | s1\p | s | s-\markup\italic "leggiero" | s |
  s1*2 | s4. s8\cresc s2 | s1\f | s\omit\p-\markup{\dynamic p \italic legg.} | s2\< s4.\> s8\! |
  s1*6 | % 5
  s1*4 | s4.\p s8\cresc s2 | s1 |
  s1\f | s | s-\markup\italic "poco rall." | s2\> s\!-\markup\italic "a tempo" | s1\p | s |
  s1*2 | s1\omit\f-\markup{\dynamic f \italic rall.} | s1*3 | % 8
}

bass = \relative {
  \global
  R1 | ees8-. 8-. 4-. f8-. 8-. 4-- | g4(aes8) 8 bes4(aes) |
  g4. 8 aes4 g | f ees bes~8 r | r4 ees8 g f4 8 8 | % 2a
  g4 aes bes2 | g4. 8 aes4 aes, | bes4 4 ees r | R1 |
  R1*3 | d4. 8 4 r8 d | % 3a
  ees4 e f2 | bes,4 d f2~ | 2. 4 |
  bes,4 r r f' | bes,4-. d-. f2 | d4 d ees e | % 4a
  f4 f bes, r | ees8 8 4 f8 8 4 | g4 aes bes~8 r |
  g4. 8 aes4 g | f ees bes~8 r | ees4. 8 f4 8 8 | % 5a
  g4 aes bes2 | g4. 8 aes4 aes, | bes4 4 ees r |
  c'4 f, bes ees, | aes d, g(c,) | f bes, ees g | % 6a
  aes4 a bes2 | g4 bes8(g) aes4 4 | a c8(a) bes4.(aes8) |
  g4. 8 aes4 4 | bes4. b8 c4.(bes8) | a4(aes8) 8 g4 g, | % 7a
  aes4 bes ees r | 8 8 4 8 8 4 | 4. 8 2 |
  g4. 8 aes4 4 | bes bes, c r | % 8a
  a'4. 8 bes4 ees, | bes r bes'2\fermata | ees,1~ | 1 |
}

wordsBass = \lyricmode {
  Cher -- ry ripe, cher -- ry ripe, ripe, I cry; __
  Full and fair ones come and buy, __
  Cher -- ry ripe, cher -- ry ripe I cry,
  Full and fair ones come and buy,
  They do grow,
  I an -- swer there,
  Where the sun -- beams smile __
  Where sun -- beams smile, % 4a
  There’s the land or cher -- ry Isle.
  Cher -- ry ripe, cher -- ry ripe, ripe, I cry, __
  Full and faie ones come and buy. __ % 5a
  Cher -- ry ripe, cher -- ry ripe, I cry,
  Full and faie ones come and buy.
  Where the sun -- beams sweet -- ly smile __ % 6a
  There’s the land or cher -- ry Isle,
  There plan -- ta -- tions ful -- ly __ show, __
  All the year where cher -- ries grow, __ % 7a
  All __ the year where cher -- ries grow.
  Cher -- ry ripe, cher -- ry ripe, ripe, I cry,
  Full and fair ones come and buy,
  Full and fair ones come and buy! __
}

wordsBassMidi = \lyricmode {
  "Cher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I " "cry; " 
  "\nFull " "and " "fair " "ones " "come " "and " "buy, " 
  "\nCher" "ry " "ripe, " cher "ry " "ripe " "I " "cry, "
  "\nFull " "and " "fair " "ones " "come " "and " "buy, "
  "\nThey " "do " "grow, "
  "\nI " an "swer " "there, "
  "\nWhere " "the " sun "beams " "smile " 
  "\nWhere " sun "beams " "smile, " % 4a
  "\nThere’s " "the " "land " "or " cher "ry " "Isle. "
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I " "cry, " 
  "\nFull " "and " "faie " "ones " "come " "and " "buy. "  % 5a
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "I " "cry, "
  "\nFull " "and " "faie " "ones " "come " "and " "buy. "
  "\nWhere " "the " sun "beams " sweet "ly " "smile "  % 6a
  "\nThere’s " "the " "land " "or " cher "ry " "Isle, "
  "\nThere " plan ta "tions " ful "ly "  "show, " 
  "\nAll " "the " "year " "where " cher "ries " "grow, "  % 7a
  "\nAll "  "the " "year " "where " cher "ries " "grow. "
  "\nCher" "ry " "ripe, " cher "ry " "ripe, " "ripe, " "I " "cry, "
  "\nFull " "and " "fair " "ones " "come " "and " "buy, "
  "\nFull " "and " "fair " "ones " "come " "and " "buy! " 
}

pianoRHone = \relative {
  \global
  <bes ees g>8 8 8 8 8 8 8 8 |
  q-. q-. q-. q-. <bes d aes'>-. q-. q-. q-. |
  <bes ees g>8 q <c ees f> q <ees g>-. q-. <d f>-. q-. |
  <ees bes'>8-. q-. q-. q-. <ees c'>-. q-. <ees bes'>-. q-. | % 2a
  <ees aes>8 <d aes'> <ees g> q <ees f> q <d bes'> q |
  <bes ees g>8-. q-. q-. q-. <bes d aes'>-. q-. q-. q-. |
  <bes ees g>8 q <c ees f> q <ees g>-. q-. <d f>-. q-. | % 2b
  <bes ees bes'>8-. q-. q-. q-. <c ees bes'>-. q-. <c ees aes>-. q-. |
  <ees g>8-. q-. <d f>-. q-. ees4 r |
  <ees' ees'>4. 8 <f f'> <ees ees'> <c c'> <aes aes'> |
  <ees' g>8(bes') <aes, d>(<aes f'>) <g ees'>4 r | % 3a
  <g bes>8-. q-. q-. q-. <f bes> q q q |
  <g ees'>8 <a ees'> <bes d> <f d'> <f bes d> q <f aes c> q |
  <bes, f' bes>8 8 8 8 8 8 8 8 |
  <c g' bes>8 8 8 8 <c f bes> q <c f a> q | % 3b
  <d bes'>8 <d f> q q <c ees f>8-.(q-. q-. q-.) |
  <bes d f>8 8 8 8 <a c f> q q q |
  <bes d f>8 8 8 8 <c ees f> q q q | % 4a
  <bes d f>8 8 8 8 <a c f> q q q |
  <bes f' bes>8 8 8 8 <c g' bes> q <des g bes> q |
  <d f bes>8 q <c e a> q <d f bes>4 r | % 4b
  <bes ees g>8-.(q-. q-. q-.) <bes d aes'>-.(q-. q-. q-.) |
  <bes ees g>8 8 <c ees f> q <ees g> q <d f> q |
  <ees bes'>8 8 8 8 < ees c'> q <ees bes'> q | % 5a
  <ees aes>8 <d aes'> <ees g> q <ees f> q <d bes'> q |
  <bes ees g>8 8 8 8 < bes d aes'> q q q |
  <bes ees g>8 8 <c ees f> q <ees g> q <d f> q | % 5b
  <bes ees bes'>8 8 8 8 <c ees bes'> q <c ees aes> q |
  <ees g>8 8 <d f> q ees-. ees(g bes) |
  \vo ees4. 8 d4. 8 | c4. 8 bes4. 8 | aes4. 8 \ov <ees g>-.(q <bes ees g>-. q-.) | % 6a
  <c ees f>8-.(q-. q-. q-.) <ees f> q <d f> q | % 6b
  <des e bes'>8 8 8 8 <c f bes> q <c f aes> q |
  <ees ges c>8 8 8 8 <ees f c'> q <d f bes> q |
  <bes ees bes'>8 8 8 8 <c ees bes'> q <c ees aes> q | % 7a
  <d aes'>8 q <f aes> q q q <ees g> q |
  <c ees f>8 q <bes d f> q <bes ees g> q q q |
  <aes c g'>8 f' <g, ees'> <f d'> <g ees'> q q q | % 7b
  <g bes des ees>8 8 8 8 <aes c ees> q q q |
  <f aes bes d>8 8 8 8 <g bes ees> q q q |
  <bes ees bes'>8 8 8 8 <c ees aes> q q q | % 8a
  <ees g>8 q  <aes, d f> q <g ees'> q q q |
  <c ees ges>8 8 8 8 <bes ees g> q q q | % 8b
  <bes ees f>4 r <aes d f> r\fermata |
  <g bes ees>8 8 8 8 4 4 | 1 |
}

pianoRHtwo = \relative {
  \global \vt
  s1*29 |
  r8 g'(aes4~8) fis(g4~ | 8) e(f4~8) d(ees4~ | 8) c(d4) s2 | % 6a
  s1*15 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f\> | s\omit\p-\markup{\dynamic p \italic "sempre pia staccato"} | s |
  s1*2 | s1\mf | s1*3 s1\f | % 2
  s1 | s\p | s1*5 |
  s1*2 | s4 s2.\cresc | s2\f s8 s4.\dim | s1\omit\p-\markup{\dynamic p \italic legg.} | s2\< s\> |
  s1\! | s1*5 | % 5
  s1-\markup\italic "dolce espress." | s1*3 | s4\> s8\! s\cresc s2 | s4\> s2.\! |
  s1\f | s | s-\markup\italic "poco rall." | s2\> s\!-\markup\italic "a tempo" | s1\p | s |
  s1 | s2 s\< | s1\omit\f-\markup{\dynamic f \italic rall.} | s1*3 |
}

pianoLH = \relative {
  \global
  ees,2 ees' | 8 8 8 8 f f f f | g g aes8 8 bes8 8 bes,8 8 |
  <g g'>8 8 8 8 < aes aes'> q <g g'> q | % 2a
  <f f'>8 8 <ees ees'> q bes''8 8 bes,8 8 |
  ees8 8 8 8 f f f f |
  g8 g aes aes bes bes bes, bes | % 2b
  <g g'>8 8 8 8 <aes aes'> q q q |
  bes'8 8 bes,8 8 ees-. ees(g bes) |
  <g bes ees>8 8 8 8 <aes c ees> q q q |
  <bes ees g>8 8 <bes, bes'> q ees4 r | % 3a
  ees'8 8 8 8 d d d d |
  c8 c bes bes f f, f' ees |
  d8-.(d-. d-. d-.) d-.(d-. d-. d-.) |
  ees8-.(e8-. e-. e-.) f4 f, | % 3b
  bes4-. d-. f-. f,-. |
  bes4(d f f,) |
  bes4-. d-. f-. f, | % 4a
  bes4(d f f,) |
  <d d'>8-. q-. q-. q-. <ees ees'>-. q-. <e e'>-. q-. |
  <f f'>4 q <bes bes'>8-.(<aes aes'>-. <g g'>-. <f f'>-.) | % 4b
  ees'8 8 8 8 f f f f |
  g8(g aes aes bes bes bes, bes) |
  <g g'>8-.(q-. q-. q-.) <aes aes'>-.(q-. <g g'>-. q-.) | % 5a
  <f f'>8 q <ees ees'> q bes''4 bes, |
  ees8-.(8-. 8-. 8-.) f-.(f-. f-. f-.) |
  g8-.(8-. aes-. 8-.) bes-.(8-. aes-. 8-.) | % 5b
  <g, g'>8-.(q-. q-. q-.) <aes aes'>-.(q-. q-. q-.) |
  bes'4 bes, ees8-. ees(g bes) |
  c4 f, bes ees, | aes d, g c, | f bes, ees g, | % 6a
  aes4 a bes bes'8(aes) | <g, g'>2 <aes aes'> | % 6b
  <a a'>2 <bes bes'>4. <aes aes'>8 |
  <g g'>8-.(q-. q-. q-.) <aes aes'>-.(q-. q-. q-.) | % 7a
  <bes bes'>4. <b b'>8 <c c'>4. <bes bes'>8 |
  <a a'>4 <aes aes'> <g g'> <g, g'> |
  <aes aes'>4 <bes bes'> <ees ees'>2 | % 7b
  q1 | q2 2 |
  <g g'>8-.(q-. q-. q-.) <aes aes'>-.(q-. q-. q-.) | % 8a
  <bes bes'>4 <bes, bes'> <c c'>8 8 8 8 |
  <a a'>2 <bes bes'> | bes'4 r bes r\fermata | % 8b
  <ees, ees'>8 8 8 8 4 4 | 1 |
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsTenorMidi
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
%            \addlyrics \wordsBassMidi
          >>
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
    output-suffix = midi-alto
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
%            \addlyrics \wordsTenorMidi
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
%            \addlyrics \wordsBassMidi
          >>
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
    output-suffix = midi-tenor
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsBassMidi
          >>
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
    output-suffix = midi-bass
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsTenorMidi
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
