\version "2.25.31"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Grosse Messe in Cmoll"
  subtitle    = "№ 1. Kyrie"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "W. A. Mozart"
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
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante moderato" 4=72
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*3
  \textMark \markup { \box "1b" } s1*3
  \textMark \markup { \box "1c" } s1*4
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*2
  \mark \markup\circle\bold A     s1
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*2
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \mark \markup\circle\bold B
  \textMark \markup { \box "4c" } s1*4
  \textMark \markup { \box "5a" } s1*4
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "5c" } s1*5
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*4
  \textMark \markup { \box "6c" } s1*3
  \mark \markup\circle\bold C
  \textMark \markup { \box "6d" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "7c" } s1*3
  \textMark \markup { \box "7d" } s1*3
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*3
  \textMark \markup { \box "8c" } s1*3
  \mark \markup\circle\bold D
  \textMark \markup { \box "9a" } s1*3
  \textMark \markup { \box "9b" } s1*2 s2
  \textMark \markup { \box "9c" } s2 s1*3
}

dynamicsSolo = {
  \override DynamicTextSpanner.style = #'none
  s1*45 |
  s2. s4\cresc | s1*2 | s2.\f s4\p | s1 | % 5c
  s1*2 | s4 s2.\f | s1 | s1\p | s1*9 | % 6
  s1*30 |
}

solo = \relative {
  \global
  R1*33 \break |
  ees''2.^\markup\bold "Sop Solo" (d8 c) | \appoggiatura c8 b2. aes8(g) | a4.\trill(g16 aes) bes4 aes | fis8(g) 4 r2 | % 4c
  ees1 | f | g4.(aes8) bes(c) d(ees) | f(ees d c bes4 aes\trill) | % 5a
  g4 r r2 | r2 r4 bes | 2~\tuplet 3/2 4 {bes8(c d ees f g} | % 5b
  aes8 g f ees d c bes aes |
  g4) bes r bes | bes ees r ees | ees g r ees | \after 2 \fermata 2.( g,4 | % 5c
  bes4.\fermata g8) f4 r\fermata |
  bes,1 | aes | d'8.(aes'16) 2 d,4 | ees4.\fermata(d16 c) bes8 r r4\fermata % 6a
  des2 b | c4.( \grace {d32 c b c} d8) ees4 r | % 6b
  r4 g, bes8(aes g f) | ees4 r r8 ees(f g) |
  g8(aes) e(f) r f(g aes) | a(bes) fis(g) r g(aes bes) | % 6c
  b8(c d ees d c bes aes |
  bes8 aes\trill) g4 r2 | R1 | r2 r8 g aes bes | % 6d
  c4~16.(aes32 8\trill d4~16. bes32 8\trill | % 7a
  f'8 ees4 e f fis8 | r16 g fis g r f e d r e d e r des c b |
  r16 c ees c bes aes c aes g f aes g f ees d c | % 7b
  bes4 g''~8 ees bes g | f1\trill |
  \grace {ees16 f)} ees4 r r2 | R1*2 | % 7c
  R1*9 | % 8
  R1*10 |
}

wordsSolo = \lyricmode {
  Chri -- ste e -- lei -- son, e -- lei -- son,
  Chri -- ste, Chri -- ste  __ e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lei -- son.
  Chri -- ste, Chri -- ste e -- lei -- son, % 6a
  Chri -- ste, Chri -- ste e -- lei -- son,
  e -- lei -- son e -- lei -- son,
  e -- lei -- son,
  Chri -- ste e -- lei -- son.
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*5 | s1\f | s1*4 |
  s1*9 | % 2
  s1*7 | s4 s2.\p |
  s1*9 | s4 s2.\p |
  s1*4 | s1\p | s1*4 | s4 s2.\cresc | s1 | s1\f | s | % 5
  s1*11 | s2 s8 s4.\p | s1*2 |
  s1*6 | s2 s\f | s1*5 |
  s1*9 | % 8
  s4 s2.\p | s1*4 | s2 s\p | s1*3 |
}

soprano = \relative {
  \global
  R1*5 | c'4~8. 16 ees4 g |
  c4(ees) g ees | c(g ees g) | c4 r c2~ | 4 b g bes | % 1c
  bes4(a) f aes | g(c2 b4) | c8 g'4 8 8(d) d(bes) | % 2a
  a16(b c b) c8 c c(b) g g | 16(a bes a) bes8 8 8(a) f4 | % 2b
  r8 d' bes ees r c a(d) |
  b8 g c16(d ees c f2) | ees4 r r g, f'(d) g g, | % 2c
  ees'4(c) f f, | ees2(d)~ | 4 c8 g' f2~ | % 3a
  f4 ees8 bes' a4.(c8) | bes4 16(c) d(bes) g'4 g,16(a bes g) |
  g'4(g,16 a bes g g'4 g,16 a bes g) | d'4 r r2 | r4 d2 bes4 |
  b8(a4) 8 16(b c b) c8 8 | c(b) 4~16(cis d cis d8) d | d(cis) 4.(d8) d(e) | % 4a
  e8(a, bes g a2) | g4 r r2 | R1 |
  R1*3 | r4^\markup\bold Tutti bes4.(g8 aes f) |
  ees4 r r2 | R1*3 | % 5a
  ees1 | f | g8(aes) bes4 r2 | R1 |
  r4 g g bes | r bes bes ees | r ees ees(g) | g,2 r\fermata | R1\fermata |
  R1*11 | % 6abc
  r2 r8 ees(f g) | g(aes) e(f) r f(g aes) | a(bes) fis(g) r2 | % 6d
  R1*6 | % 7ab
  r2 ees'~ | 4 d bes des | des c2 f4~ | % 7c
  f4 e c ees | ees d2 4 | 2 4 4 |
  d8(c) 2 g4 | f'(d) g g, | ees'(c) f f, | % 8a
  ees2(d)~ | 4 c8 g' f2~ | 4 ees8 bes' aes2~ |
  aes4(g8 des') c4 c16(d) ees(d) | c4~16(d) ees(d) c4~16(d ees c) | g'4 r r2 |
  r4 g,2 ees4 | 8(d4) 8 16(e f e) f8 8 | f(e) 4~16(fis g fis g8) g | % 9a
  g8(fis) 4.(g8) g(a) | a(b) b c8 4(b) | c8 r r4 \break
  a8 r r4 | ees8 r r4 d8 r r4 | c4 r r2 | R1 |
  \bar "|."
}

wordsSop = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e __ e -- lei -- son, % 2a
  e -- lei -- son, e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lei -- son, e -- lei -- son,
  e -- lei -- son. e -- lei -- son,

  e -- lei -- son, e -- lei -- son, e -- lei -- son, % 3a
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e __ e -- lei -- son, e -- lei -- son, __
  e -- lei -- son, __ e -- lei -- son. % 4a

  Chri -- ste,
  Chri -- ste, Chri -- ste e -- lei -- son, % 5b
  e -- lei -- son, e -- lei -- son.
  e -- lei -- son, e -- lei -- son, % 6d

  Ky -- ri -- e e -- lei -- son, % 7c
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lei -- son, % 8a
  e -- lei -- son, e -- lei -- son,
  Kyr -- i -- e __ e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, % 9a
  e -- lei -- son, __ e -- lei -- son, __
  e -- lei -- son, e -- lei -- son,
  e -- le -- i -- son.
}

wordsSopMidi = \lyricmode {
  "Ky" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son, " e lei "son, "
  "\nKy" ri "e "  e lei "son, " % 2a
  "\ne" lei "son, " e lei "son, " e lei "son, "
  "\ne" lei "son, " e lei "son, " e lei "son, "
  "\ne" lei "son. " e lei "son, "

  "\ne" lei "son, " e lei "son, " e lei "son, " % 3a
  "\nKy" ri "e " e lei "son. "
  "\nKy" ri "e "  e lei "son, " e lei "son, " 
  "\ne" lei "son, "  e lei "son. " % 4a

  "\nChri" "ste, "
  "\nChri" "ste, " Chri "ste " e lei "son, " % 5b
  "\ne" lei "son, " e lei "son. "
  "\ne" lei "son, " e lei "son, " % 6d

  "\nKy" ri "e " e lei "son, " % 7c
  "\nKy" ri "e " e lei "son, " e lei "son, "
  "\ne" lei "son, " e lei "son, "
  "\ne" lei "son, " e lei "son, " % 8a
  "\ne" lei "son, " e lei "son, "
  "\nKyr" i "e "  e lei "son. "
  "\nKy" ri "e " e lei "son, " % 9a
  "\ne" lei "son, "  e lei "son, " 
  "\ne" lei "son, " e lei "son, "
  "\ne" le i "son. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*5 | s2 s\f | s1*4 |
  s1*9 | % 2
  s1*7 | s4 s2.\p |
  s1*9 | s4 s2.\p |
  s1*4 | s1\p | s1*4 | s4 s2.\cresc | s1 | s\f | s | % 5
  s1*11 | s2 s\p | s1*2 |
  s1*10 | s2.. s8\f | s1 |
  s1*9 | % 8
  s4 s2.\p | s1*4 | s2 s\p | s1*3 |
}

alto = \relative {
  \global
  R1*5 | r2 c'4~8. 16 | ees4 g c(g) | ees c g(c8. ees16) | 4 r r2 | R1 |
  R1*2 | r2 g~ | % 2a
  g4 fis d f | f(e) c ees | d(g2 fis4) |
  g4 r r8. f16 g16(a b g) | c4 r r2 | r4 g8. 16 4 r |
  r4 f8. 16 4 d | d c r2 | r4 ees4. 8 d aes' | % 3a
  g2.(fis4) | g4 16(a) bes(g) d4 bes16(c d bes) |
  g4(ees'16 f g ees bes'4 e,16 fis g e) | fis4 r r2 | r4 g2 d4 |
  ees2 d | 2.(g,4 | g'1~ | % 4a
  g2. fis4) | g4 r r2 | R1 |
  R1*3 | r4^\markup\bold Tutti g4.(ees8 f d) |
  ees4 r r2 | R1*3 | % 5a
  bes1 | d | ees8(f) g4 r2 | R1 |
  r4 ees ees ees | r g g g | r bes bes(g) | ees2 r\fermata | R1\fermata |
  R1*11 | % 6abc
  r2 ees~ | 4 d2 f4 | f ees r2 | % 6d
  R1*9 | % 7abc
  R1 | r2 r4 r8 g | a16(b c b) c8 8 8(b) g4~ | % 7d
  g4 8. 16 4 r | r g8. 16 4 r | r f8. 16 4 d | % 8a
  d4 c r2 | r4 ees4. 8 d aes' | g2. f8 c' |
  bes2 aes4 ees16(d) c(d) | ees4~16(d) c(d) ees2 | d4 r r2 |
  r4 c2 4 | aes2 g4(d') | des2 c2~ | % 9a
  c4 ees4. 8 8 8 | d4(ees f2) | ees8 r r4
  ees8 r r4 | c8 r r4 b8 r r4 | c4 r r2 | R1 |
}

wordsAlto = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, % 2a
  e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e,
  Ky -- ri -- e e -- lei -- son, % 3a
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.

  Chri -- ste,
  Chri -- ste, Chri -- ste e -- lei -- son, % 5b
  e -- lei -- son, e -- lei -- son.
  Chri -- ste e -- lei -- son. % 6d

  e -- lei -- son, e -- lei -- son, __ % 7d
  Ky -- ri -- e, Ky -- ri -- e, % 8a
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, __ % 9a
  Ky -- ri -- e e -- lei -- son,
  e -- le -- i -- son.
}

wordsAltoMidi = \lyricmode {
  "Ky" ri "e " e lei "son, " e lei "son. "
  "\nKy" ri "e " e lei "son, " % 2a
  "\ne" lei "son, " e lei "son. "
  "\nKy" ri "e, "
  "\nKy" ri "e " e lei "son, " % 3a
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son. "
  "\nKy" ri "e " e lei "son. "

  "\nChri" "ste, "
  "\nChri" "ste, " Chri "ste " e lei "son, " % 5b
  "\ne" lei "son, " e lei "son. "
  "\nChri" "ste " e lei "son. " % 6d

  "\ne" lei "son, " e lei "son, "  % 7d
  "\nKy" ri "e, " Ky ri "e, " % 8a
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e " e lei "son, " e lei "son, "
  "\nKy" ri "e " e lei "son. "
  "\nKy" ri "e " e lei "son, "  % 9a
  "\nKy" ri "e " e lei "son, "
  "\ne" le i "son. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*6 | s1\f | s1*3 |
  s1*9 | % 2
  s1*7 | s4 s2.\p |
  s1*9 | s4 s2.\p |
  s1*4 | s1\p | s1*4 | s4 s2.\cresc | s1 | s\f | s | % 5
  s1*11 | s2 s\p | s1*2 |
  s1*10 | s2 s\f | s1 |
  s1*9 | % 8
  s4 s2.\p | s1*4 | s2 s\p | s1*3 |
}

tenor = \relative {
  \global
  R1*6 | c4~8. 16 ees4 g | c(ees g g,) | g r r2 | R1 |
  R1*7 | r2 c2~ | 4 b g bes |
  bes4(a) f aes | g(c2 b4) | ees r8 c aes f r d' | % 3a
  bes8 g r ees' c a r4 | d4. 8 bes4 g |
  ees2(e8 g bes4) | a r r2 | r4 bes2 4 |
  c2. a4 | aes2 g4 b | bes1( | % 4a
  a4 g c2) | bes4 r r2 | R1 |
  R1*3 | r4^\markup\bold Tutti. bes4 2 |
  g4 r r2 | R1*3 | % 5a
  g1( | bes) | bes4 r r2 | R1 |
  r4 bes bes g | r ees' ees bes | r g' g(ees) | c2 r\fermata | R1\fermata |
  R1*11 | % 6abc
  r2 bes | bes1 | bes2 r | % 6d
  R1*9 | % 7abc
  R1 | r2 g'~ | 4 fis d fis | % 7d
  f8(e) ees4 c2~ | 4 b g bes | 4(a) f aes | % 8a
  g4(c2 b4) | ees r8 c aes f r d' | bes g r ees' c aes r f' |
  des8 bes r g aes(ees c4~ | 16 d ees c c'4~16 d c b a b c a) | b4 r r2 |
  r4 ees,2 g4 | f2 d4(g) | 2. e4 | % 9a
  c4 c'4. 8 4~ | 4 4 d2 | c8 r r4
  c8 r r4 | g8 r r4 g8 r r4 | g4 r r2 | R1 |
}

wordsTenor = \lyricmode {
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, % 2c
  e -- lei -- son. e -- lei -- son, % 3a
  e -- lei -- son, e -- lei son,
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.

  e -- lei -- son,
  Chri -- ste e -- lei -- son, % 5b
  e -- lei -- son, e -- lei -- son.
  e -- lei -- son. % 6d

  Ky -- ri -- e e -- lei -- son, % 7d
  Ky -- ri -- e e -- lei -- son, % 8a
  e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- le -- i -- son, % 9a
  Ky -- ri -- e __ e -- lei -- son,
  e -- le -- i -- son.
}

wordsTenorMidi = \lyricmode {
  "Ky" ri "e " e lei "son. "
  "\nKy" ri "e " e lei "son, " % 2c
  "\ne" lei "son. " e lei "son, " % 3a
  "\ne" lei "son, " e "lei " "son, "
  "\nKy" ri "e " e lei "son. "
  "\nKy" ri "e " e lei "son, " e lei "son. "

  "\ne" lei "son, "
  "\nChri" "ste " e lei "son, " % 5b
  "\ne" lei "son, " e lei "son. "
  "\ne" lei "son. " % 6d

  "\nKy" ri "e " e lei "son, " % 7d
  "\nKy" ri "e " e lei "son, " % 8a
  "\ne" lei "son, " e lei "son, "
  "\ne" lei "son, " e lei "son, "
  "\ne" lei "son, " e lei "son. "
  "\nKy" ri "e " e le i "son, " % 9a
  "\nKy" ri "e "  e lei "son, "
  "\ne" le i "son. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*6 | s2 s\f | s1*3 |
  s1*9 | % 2
  s1*7 | s4 s2.\p |
  s1*9 | s4 s2.\p |
  s1*4 | s1\p | s1*4 | s4 s2.\cresc | s1 | s\f | s | % 5
  s1*11 | s2 s\p | s1*2 |
  s1*12 |
  s1\f | s1*8 |
  s4 s2.\p | s1*4 | s2 s\p | s1*3 |
}

bass = \relative {
  \global
  R1*6 | r2 c4~8. 16 | ees4 g c(g8. ees16) | c4 r r2 | R1 |
  R1*7 | c'8(g4) 8 8(ees4) 8 | d16(e f e) f8 f f(ees) c8 c | % 2c
  c16(d ees d) ees8 8 8(d) bes4 | r8 g' ees aes r f d g | r g ees aes r aes f bes | % 3a
  r8 bes g c r c a d | r4 g,4. 8 bes4~ |
  bes4 g8(ees) cis2 | d4 r r2 | r4 g2 4 |
  g2 fis | f1 | e2 d | % 4a
  cis4 d2. | g,4 r r2 R1 |
  R1*3 | r4^\markup\bold Tutti ees' g(bes) |
  ees,4 r r2 | R1*3 | % 5a
  ees1( | bes) | ees4 r r2 | R1 |
  r4 ees ees ees | r ees ees ees | r ees4 2 | a,2 r\fermata | R1\fermata |
  R1*11 | % 6abc
  r2 g | f(aes) | g r | % 6d
  R1*12 | % 7
  c'8(g4) 8 8(ees4) 8 | d16(e f e) f8 8 8(e) c c | % 8a
  c16(d ees d) ees8 8 8(d) bes4 |
  r8 g' ees aes r f d g | r g ees aes r aes f bes | r bes g c r c, aes des | % 8b
  r8 des bes(ees) aes,4 8. 16 | g4. g'8 fis2 | g4 r r2 |
  r4 c,2 4 | 2 b | bes bes | % 9a
  a4. a'8 g4. 8 | fis4(g2) 4 | aes8 r r4
  fis8 r r4 | g8 r r4 g,8 r r4 | c4 r r2 | R1 |
}

wordsBass = \lyricmode {
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e __ e -- lei -- son, e -- lei -- son, % 2c
  e -- lei -- son,
  e -- lei -- son, e -- lei -- son, % 3a
  e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lei -- son, e -- lei -- son,
  Ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, e -- le -- i -- son.

  e -- lei -- son,
  Chri -- ste e -- lei -- son, e -- lei -- son, % 5b
  e -- lei -- son.
  e -- lei -- son. % 6d
  Ky -- ri -- e __ % 8a
  \repeat unfold 11 { e -- lei -- son, }
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, % 9a
  Ky -- ri -- e e -- le -- i -- son,
  e -- le -- i -- son.
}

wordsBassMidi = \lyricmode {
  "Ky" ri "e " e lei "son. "
  "\nKy" ri "e "  e lei "son, " e lei "son, " % 2c
  "\ne" lei "son, "
  "\ne" lei "son, " e lei "son, " % 3a
  "\ne" lei "son, " e lei "son, "
  "\ne" lei "son, " e lei "son, " e lei "son, "
  "\nKy" ri "e "  e lei "son. "
  "\nKy" ri "e " e lei "son, " e le i "son. "

  "\ne" lei "son, "
  "\nChri" "ste " e lei "son, " e lei "son, " % 5b
  "\ne" lei "son. "
  "\ne" lei "son. " % 6d
  "\nKy" ri "e "  % 8a
  \repeat unfold 11 { e -- lei -- son, }
  "\nKy" ri "e " e lei "son. "
  "\nKy" ri "e " e lei "son, " % 9a
  "\nKy" ri "e " e le i "son, "
  "\ne" le i "son. "
}

pianoRHone = \relative {
  \global
  c''8(g) g-. g-. g(ees) 8-. 8-. | ees(d) d-. d-. d16(e f e) \vo f8 f |
  f8(e) e-. e-. e16(fis g fis) g8-. g-. |
  g8(fis) 8 8 16(g a g) g(a bes a) | % 1b
  a(b c b) b(c d c) c(d ees d) d(c b c) | \ov <ees, c'>4 r \vo ees g |
  c4 ees g ees | c g ees g | c8(g) g-. g-. c2~ | 4 b g bes~ | % 1c
  bes4 a f aes | g(c2 b4) | <g c>8 g'4 8 8 d d bes | % 2a
  a16(b c b) c8 c c(b) g g | g16(a bes a) bes8 8 8(a) f f | % 2b
  r8 d' bes ees r c a d |
  b16(c d b) c(d ees c) <ees f>8-. 8-. <d f>-. <bes f'>-. | % 2c
  \ov <g c ees>4 <ees g c>8. 16 4 g | \vo f'(d) g g, |
  ees'4(c) f f, | ees16(f g ees) c'8 8 d,16(ees f d) d'8 d | % 3a
  ees,16(f g ees) ees'8-. <g, ees'>-. f16(g aes f) f'8-. <aes, f'>-. |
  g16(aes bes g) g'8-. <bes, g'>-. a16(bes c a) a'8-. <a, a'>-. | % 3b
  \ov \repeat unfold 2 {<g bes>8 <g' bes>4 8 <g, bes> <g' bes>4 8 |}
  <fis a>16-. d-. d'(cis) d-. d,-. d'(cis) <d, d'>4 r | % 3c+
  \vo g8(d) d-. d-. \ov d(bes) bes-. bes-. |
  bes8(a-.) a-. a-. a16(b c b) c8-. c-. | % 4a
  c8(b) b-. b-. 16(cis d cis) d8-. d-. |
  d8(cis) 8-. 8-. 16(d e d) d(e f e) |
  e16(fis g fis) 16(g a g) g(a bes a) a(g fis g) | % 4b
  g8 <g, bes>8-.(8-. 8-.) 8-.(8-. 8-. 8-.) |
  aes'16_\markup "Vl." (g) g(f) f(ees) ees(d) d(c) d(bes) bes(aes) aes(g) |
  <bes, ees g>8-. g-. bes-. ees-. bes-. g-. bes-. ees-. | % 4c
  r8 g, bes ees bes g bes ees |
  r8 aes, c ees f bes, d f |
  <d fis>8(<ees g>) q4 \vo r2 | \ov
  <g, bes ees>8 4 4 4 8 | <bes d f>8 4 4 4 8 | % 5a
  <bes ees g>2~ <bes g bes'> | <c ees aes> <d f aes> |
  <ees g>8 <g, bes ees>4 4 4 8 | <bes d f>8 4 4 4 8 | % 5b
  <bes ees g>2 <bes ees bes'> | <c ees aes> <d f aes> |
  <ees g>4 <ees g bes>4 4 4 | r <g bes ees> q q | r <bes ees g> q q | % 5c
  <c ees g>2 r\fermata | <bes, ees g>8 r r4\fermata <bes d f>8 r r4\fermata \clef bass |
  r4 <d, bes'>2 4 | r <ees aes>2 4 | r \clef treble <d' f bes d>2 4 | % 6a
  <ees bes' ees> r r2\fermata |
  r2 <des ees b'>2~( | <c ees c'>)(~ <c ees f>8) r r4 | % 6b
  <ees g>2 <g bes>8(<f aes> <ees g> <d f>) | ees2 r8 ees(f g) |
  \vo g8(aes e f) r f(g aes) | a(bes fis g) r g(aes bes) \ov % 6c
  <g b>8(<aes c> <b d> <c ees> <bes d> <aes c> <g bes> <f aes>) |
  \vo r8 <bes bes'>8-.(q-. q-.) bes'2~ | bes8 8-.(8-. 8-.) 2~ | % 6d
  bes8 8-.(8-. 8-.) ees,2 |
  \ov r8 <ees, aes c>8 8 8 r <f bes d> q q | % 7a
  r8 <g bes ees> r <g bes e> r <aes bes f'> r <aes bes fis'> |
  <g bes g'>8 r <f aes d> r <ees bes' ees> r <ees g des'> r |
  <ees aes c>2 <c f aes> | <bes ees g>8 8 8 8 8 8 8 8 | % 7b
  <bes ees f>8 8 8 8 <aes d f>8 8 8 8 |
  \vo <bes' ees>8(bes) bes-. 8-. ees2~ | 4 d bes des~ | 4 c2 f4~ | % 7c
  f4 e c ees~ | 4 d2 8(bes) | a16(b c b) c8-. c-. c(b) d4~ |
  <f, d'>8(<e c'>) \ov <c ees g c>8. 16 <ees g c>4 g | % 8a
  f'8. d16 8.\trill(c32 d) g8. g,16 \vo 8.\trill(f32 g) |
  \ov ees'8. c16 8.\trill(bes32 c) f8. f,16 \vo 8.\trill(ees32 f) |
  ees16(f g ees) c'8-. c-. d,16(ees f d) d'8-. d-. | % 8b
  ees,16(f g ees) ees'8-. <g, ees'>-. f16(g aes f) f'8-. <aes, f'>-· |
  g16(aes bes g) g'8-. <bes, g'>-. aes16(bes c aes) aes'8-. <c, aes'>-. |
  bes16(c des bes) bes'8-. 8-. \ov c,8 <c ees c'>4 8 | % 8c
  <ees, c'>8 <c' ees c'>4 8 <ees, c'> <c' ees c'>4 8 |
  <d b'>16 g, [ g'(fis) ] g-. g,-. g'(fis) g8 <g,, g'>8 [ q q ] |
  \vo c'8(g) \ov g-. g-. g(ees) 8-. 8-. | % 9a
  ees8(d) d-. d-. 16(e f e) f8-. <d f>-. |
  \vo f8(e) e-. e-. 16(fis g fis) g8-. g-. |
  g8(fis) 8-. 8-. 16(g a g) g(a bes a) | % 9b
  a16(b c b) b(c d c) c(d ees d) d(c b c) |
  \ov r16 c(b c b c d ees)
  r16 a,(gis a gis a b c) | % 9c
  \vo r16 ees,(d ees g ees g ees) r d(c d f d f d) |
  c4 r8 c c(g) g-. c-. | c2 r |
}

pianoRHtwo = \relative {
  \global \vt
  ees'4 s2. | s2. r8 d | des4 r8 des c4 r8 c |
  <c ees>4 s2. | s2 f4 4 | s2 c |
  ees4 g c g | ees2 4 4 | 4 s g8(ees) 8-. 8-. | d16(e f e) f8 f f(ees) c c | % 1c
  c16(d ees d) ees8 8 8(d) bes8 8 | r4 ees8 c r aes' d, g~ | % 2a
  <<{\vo \once\hideNotes g8 s16} \new Voice {\vt r8.}>> \vt c16 [ ees8. c16 ] g4 <d g>~ |
  q8. s16 fis4 d f~ | f e c ees | d <ees g>2 <d fis>4 | % 2b
  g4 g a16(b c a) bes8-. g-. | s1 | r4 g2 e4 |
  r4 f2 d4~ | d ees s d~ | d ees ees f | % 3a
  f4 g~g s | s1 |
  s1*2 | g4 r s2 |
  s1*9 | s2 bes,4. aes8 | % 4
  s1*13 |
  s1*8 | % 6ab
  d2 f | ees2 4 f8 g | s1 | % 6c
  <f aes>4( \lh <ees g>) \rh <<{\vf r8 ees'(f g)} \new Voice {\vt bes,2}>> | % 6d
  <bes g'>8 <bes aes'> <bes e'> <bes f'> <<{\vf r8 f'(g aes)} \new Voice {\vt bes,2}>> |
  <bes aes'>8 <bes bes'> <bes fis'> <bes g'> r g(<f aes> <g bes>) |
  s1*6 | % 7ab
  <ees g>4 r bes'8(g) g-. g-. | % 7c
  f16(g aes g) aes8-. 8-. 8(g) ees-. 8-. |
  <e g>16(<f aes> <g bes> <f aes>) <g bes>8-. q-. q(<f a>) <f c'>(aes) |
  g16(a bes a) bes8-. 8-. 8(a) <f a>-. q-. | % 7d
  <fis a>16(<g bes> <a c> <g bes>) <a c>8-. q-. q(<g b>) <g bes>-. g-.~ |
  g4 fis d f |
  g4 s2. | s e4 | s2. d4~ | % 8a
  d4 c2 d4~ | 4 ees~4 f~ | f g~g aes |
  aes4 <bes des> s2 | s1*2 |
  <c, ees>4 s2. | s1 | des4 r8 d c4 r8 e | % 9a
  c4 r8 c <c ees>4 r8 q | d4 ees f2 | s2
  s2 | c b | c8( \lh g) <ees g>-. q-. \rh s2 | s1 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s1*9 |
  s1*9 | % 2
  s1*6 | s2 s8 s4.\> | s1\p |
  s1*6 | s1\p | s1*3 |
  s1*2 | s2\< s\! | s\> s\! | s1*2 | s2 s\< | s\> s\! | s1 | s4 s2.\cresc | s1 | s\f | s\p | % 5
  s4 s2.\p | s1 | s4 s2.\f | s1 | s2 s\p | s1*9 |
  s1*6 | s1\f | s1*5 |
  s1*8 | s2 s8 s4.\> | % 8
  s1\p | s1*4 | s2\p s2 | s1 | s1\pp | s |
}

pianoLHone = \relative {
  \global
  <c g'>4 r8 <c ees g>8 4 r8 q | <c f aes>4 r8 q <b d g>4 r8 <b g'> |
  <bes g'>4 r8 q8 4 r8 <bes e> |
  <a a'>4 r8 <a' c ees>8 4 r8 q | % 1b
  <<{\vo d4 ees d} \new Voice {\vth c2.}>> \vo b16(c d c) | c2 r |
  c,2 ees4 g | c c c c | <g c>4 \ov r r8. c,16 [ ees8. c16 ] | % 1c
  \vo r8. d'16 [ g,8. b16 ] c4 r |
  r8. c16 [ f,8. a16 ] bes4 r | % 2a
  ees,16(f g ees) aes8-. 8-. d,16(ees f d) g8-. g-. | r4 g2 s4 |
  r8. a16 [ d,8. fis16 ] g4 r | r8. g16 [ c,8. e16 ] f4 r | r s2. | % 2b
  d'16(ees f d) ees(f g ees) \ov <g,, g'>4 4 | % 2c
  <c c'>8(g') g-. g-. \vo c2~ | c4(b) g bes~ |
  bes4(a) f aes | s4 c~c b~ | b c2 d4~ | % 3a
  d4 ees2 fis4 | % 3b
  \ov <g, bes>16(<a c> <bes d> <g bes>) \clef treble <g' bes>8-. q-. \clef bass <bes,, g'>16(<c a'> <d bes'> <bes g'>) \clef treble <bes' g'>8-. q-. \clef bass |
  <ees, g>16(<f a> <g bes> <ees g>) \clef treble <ees' g>8-. q-. \clef bass <cis, e>16(<d fis> <e g> <cis e>) <cis' e>8-. q-. | % 3c
  <d, d'>8 \vo \clef treble <g' bes> [ <fis a> <g bes> ] <fis a> \clef bass \ov <c, c'>-. [ <bes bes'>-. <a a'>-. ] |
  <g g'>4 r8 <g' bes d>8 4 r8 q |
  <g c ees>4 r8 q <fis a d>4 r8 q | % 4a
  <f aes d>4 r8 q <f g d'>4 r8 q |
  <e g bes>4 r8 q <d g bes>4 r8 q |
  \vo a'4(bes8 g <aes c>4) <<{\vo c4} \new Voice {\vth fis,16(g a g)} >> \ov | % 4b
  <g bes>8 <g bes d>-.(q-. q-.) q-.(q-. q-. q-.) |
  <f aes bes d>2 <bes, f' aes> |
  <ees g>4 r r2 | <ees, ees'>4 r r2 | <c c'>4 r <d d'> r | r <ees ees'>(g bes) | % 4c
  r4 <ees, ees'> <g g'> <ees ees'> | r <bes bes'> <d d'> <bes bes'> | % 5a
  <ees ees'>2 <g g'> | <f f'> <bes, bes'> |
  r4 <ees ees'> <g g'> <ees ees'> | r <bes bes'> <d d'> <bes bes'> | % 5b
  <ees ees'>2 <g g'> | <f f'> <bes, bes'> |
  r4 <ees es'>4 4 4 | r q q q | r q q q | <a, a'>2 r\fermata | % 5c
  bes'8 r r4\fermata <bes, bes'>8 r r4\fermata |
  r4 q q q | r <c c'> q q | r <aes' aes'> q q | <g g'> r r2\fermata | % 6a
  r2 q2(<aes aes'>2)~8 r r4 | \vo bes'2~4.(aes8) | g(bes) bes-. bes-. 2~ |
  bes8 8-. 8-. 8-. 2~ | 8 8-.8-.8-. c4(d) | \ov <aes c>2(<bes d>) |
  \vo d4 s ees2~ | 4 d2 f4~ | 4 ees2~8 des |
  \ov <aes c>8 r r4 <aes, aes'>8 r r4 | <g g'>8 r q r <d d'> r q r | % 7a
  <ees ees'>8 r <f f'> r <g g'> r <ees ees'> r |
  <aes, aes'>1 | <bes bes'>4 4 4 4 | 4 4 4 4 | % 7b
  <ees ees'>4 r r8. q16 <g g'>8. <ees ees'>16 | % 7c
  <bes' bes'>8 \vo r16 f'' bes,8. d16 ees8. \ov <bes, bes'>16 [ <g g'>8. <ees ees'>16 ] |
  <c c'>8 \vo r16 g'' c,8. e16 f8. \ov <f, f'>16 [ <aes aes'>8. <f f'>16 ] |
  <c' c'>8 \clef treble r16 g''16 c,8. e16 f8 \clef bass r16 <c, c'>16 <a a'>8. <f f'>16 | % 7d
  <d d'>8 \vo r16 a'' d,8. fis16 g8. \ov <g, g'>16 [ <bes bes'>8. <g g'>16 ] |
  <d' d'>8 r16 a' d,8. fis16 g8 r16 <d d'> <b b'>8. <g g'>16 |
  \vo s2 c'~ | 4(b) g bes~ | bes(a) f aes | % 8a
  g8 s4. r8 s b4~ | 4 c2 d4~ | 4 ees2 f4~ |
  f4 s \ov <aes,, c>16(<bes des> <c ees> <aes c>) <aes' c>8-. q-. | % 8c
  <g, c>16(<b d> <c ees> <g c>) <g' c>8-. q-. <fis, a>16(<g b> <a c> <f a>) <fis' c' ees>8-. q-. |
  \vo <b d>8 <c ees> <b d> <c ees> <b d> \ov <f, f'>-. <ees ees'>-. <d d'>-. |
  <c c'>4 r8 <c' ees g>8 4 r8 q | <c f aes>4 r8 q <b d g>4 r8 q | % 9a
  <bes g'>4 r8 q8 4 r8 q |
  <a a'>4 r8 q <g g'>4 r8 g' | \vo c2 d | <c ees>2 % 9b
  q2 | g g | s2 \crossStaff {<ees g>8 s ees q | q2} r |
}

pianoLHtwo = \relative {
  \global \vt
  s1*4 | fis4 g2 4 | c, r r2 |
  r2 c | ees4 g c g8. ees16 | c4 s2. | g'4 r4 r8. g16 [ e8. c16 ] | % 1c
  f4 r r8. f16 [ d8. bes16 ] | s1 | ees4 c bes8. g16 bes8. g16 | % 2a
  d'4 r r8. d16 [ b8. g16 ] | c4 r r8. c16 [ a8. f16 ] | % 2b
  bes16(c d bes) ees8-. 8-. a,16(bes c a) d8-. d-. |
  g4 g s2 | s g8-.(ees) 8-. 8-. | d16(e f e) f8-. f-. f(ees) c-. c-. | % 2c
  c16(d ees d) ees8-. 8-. 8(d) bes-. 8-. | % 3a
  r8 g' ees aes r f d g | r g ees aes r aes f bes |
  r8 bes g c r c a d | s1 | % 3b
  s1 | s8 d8 4~8 s4. | s1 |
  s1*3 | % 4a
  <cis, g'>4 d2 4 | s1*2 |
  s1*4 |
  s1*13 | % 5
  s1*4 | % 6a
  s1*2 | bes'2 bes, | ees g |
  f2 aes | g c4 bes | s1 |
  ees,2(g | f aes) | g des'4(c8 bes) |
  s1*6 | % 7ab
  s1 | s8 r r4 r8. s16 s4 | s8 r r4 r8. s16 s4 | % 7c
  s1 | 8 r r4 r8. s16 s4 | s1 |
  <c, c'>8(g') g-. g-. g(ees) 8-. 8-. | % 8a
  d16(e f e) f8-. f-. f(ees) c-. c-. |
  c16(d ees d) ees8-. 8-. 8(d) bes-. bes-. |
  r8 g' ees aes r f d g | r g ees aes r aes f bes | r bes g c r c aes des | % 8b
  r8 des bes ees s2 | s1 | g,4 g~8 s4. |
  s1*3 | % 9a
  s1 | fis4 g2 4 | aes8 r r4
  fis8 r r4 | g,8 r r4 g8 r r4 | <c ees>4 r8 <c, c'>8 4 r8 q | q2 r |
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
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
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
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
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
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
