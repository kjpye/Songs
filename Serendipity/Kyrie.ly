\version "2.25.18"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Kyrie"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "?"
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
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo Pietoso 4=60
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "16a" s1*6
  \textMark \markup\box "16b" s1*7
  \textMark \markup\box "16c" s1*6
  \textMark \markup\box "16d" s1*6 \time 3/4
  \mark \markup\circle A
  \textMark \markup\box "17a" s2.*5
  \textMark \markup\box "17b" s2.*6
  \textMark \markup\box "17c" s2.*5
  \mark \markup\circle B
  \textMark \markup\box "18a" s2.*7
  \mark \markup\circle C
  \textMark \markup\box "18b" s2.*5
  \textMark \markup\box "18c" s2.*3
  \mark \markup\circle D      s2.*2
  \textMark \markup\box "19a" s2.*5
  \mark \markup\circle E
  \textMark \markup\box "19b" s2.*6
  \textMark \markup\box "20a" s2.*6 \time 4/4
  \mark \markup\circle F
  \textMark \markup\box "20b" s1*6
  \textMark \markup\box "21a" s1*5
  \textMark \markup\box "21b" s1*4
  \textMark \markup\box "22a" s1*5
  \textMark \markup\box "22b" s1*4
  \textMark \markup\box "23a" s1*5 \time 3/4
  \mark \markup\circle G
  \textMark \markup\box "23b" s2.*6
  \textMark \markup\box "24a" s2.*5
  \textMark \markup\box "24b" s2.*5
  \mark \markup\circle H
  \textMark \markup\box "25a" s2.*7
  \mark \markup\circle I
  \textMark \markup\box "25b" s2.*5
  \textMark \markup\box "26a" s2.*3
  \mark \markup\circle J      s2.*2
  \textMark \markup\box "26b" s2.*5
  \mark \markup\circle K
  \textMark \markup\box "27a" s2.*6
  \textMark \markup\box "27b" s2.*6
}

soprano = \relative {
  \global
  R1*25
  \time 3/4 \key f \major d'4^\mp^\markup "SOPRANO [optional solo]" (a') a
  a2 4 | 4(gis8 fis gis4 | b4) a2 | bes2 4 |
  a2(f4) | gis4 e(gis) | a2. \bar "||" d,4(a') a | 2 4 | 4(gis8 fis gis4 |
  b4) a2 | bes2 4 | a2(aes4) | gis e(a) | d,2. \bar "||"
  bes'4^\mf^\markup "[tutti]" 4 4 | gis4 4 4 | a8(b c b a g | fis4) 4 4 | g g g | g e(g) | a2.^\> | % 18a
  d,4^\mp^\markup "SOPRANO [optional solo]" (a') a | a2 4 | 4(gis8 fis gis4 | b4) a2 | bes2 4 |
  a2(f4) | gis4 e(a) | d,2. \bar "||" | bes'4^\mf^\markup "[tutti]" 4 4 | gis4 4 4 |
  a8(b c b a g | fis4) 4 4 | g g g | g e(g) | a2.^\> \bar "||" | % 19a
  d,4^\mp (a') a | 2 4 | 4(gis8 fis gis4 | b4) a2 | bes2 4 | a2(aes4) |
  gis4 e(a) | d,2. | bes'2 4 | a2(f4) | gis4 e(a) | d,2\fermata r4\fermata \bar "||" \key c \major \time 4/4 \break | % 20a
  R1^\markup "\"after Palestrina\"" | R1*5
  r2 d'^\mf | d g, | d'2.(c4 | b2 a | g4 b~8 a g4~ | % 21a
  g4 fis) g2~ | 2 r | d' b4 g8(a | b c d b e2~ |
  e4) d2(c4) | d2 g4.(f8 | e d e4) c b | a2 b | r4 b a g | % 22a
  b4.(c8 d4. c8 | b8 a b4) a d,8(e | f g a b c4. d8 | e4) c8(d e f g4) |
  g,8(a b c d4) g,8(a | b c d2 c8 b | a4 d~8 c a4) | b1\fermata | R1\fermata \bar "||" \key f \major \time 3/4 \break | % 23a
  d,4^\mp (a') a | a2 4 | 4(gis8 fis gis4 | b4) a2 | bes2 4 | a2(f4) |
  gis4 e(gis) | a2. | d,4(a') a | 2 4 | 4(gis8 fis gis4 | % 24a
  b4) a2 | bes2 4 | a2(aes4) | gis e(a) | d,2. \bar "||" |
  bes'4^\mf 4 4 | gis4 4 4 | a8(b c b a g | fis4) 4 4 | g g g | g e(g) a2.^\> | % 25a
  d,4^\mp (a') a | 2 4 | 4(gis8 fis gis4 | b4) a2 | bes2 4 |
  a2(aes4) | gis e(a) | d,2.^\< \bar "||" | bes'4^\mf 4 4 | gis4 4 4 | % 26a
  a8(b c b a g | fis4) 4 4 | g g g | g e(g) | a2.^\> |
  d,4^\mp (a') a | 2 4 | 4(gis8 fis gis4 | b) a2 | bes2 4 | a2(aes4) | % 27a
  gis4 e(a) | d,2. | bes'2 4 | a2(f4) | gis4^\markup\bold rall. e(a) | d,2.
  \bar "|."
}

wordsSop = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e __ e -- lei -- son.
                                % 17b
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e __ e -- lei -- son.
                                % 18a
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son.
                                % 18b
  Ky -- ri -- e e -- lei -- son,
  ky -- ei -- e __ e -- lei -- son.
                                % 19a — D
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son.
                                % 19b — E
  Ky -- ri -- e e -- lei -- son,
  ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e __ e -- lei -- son.
                                % 21a
  Chri -- ste e -- lei -- son, __
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste __ e -- lei -- son.
                                % 23b — G
  Ky -- ri -- e e -- lei -- son,
  ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e __ e -- lei -- son.
                                % 25a — H
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son.
                                % 25b — I
  Ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son.
                                % 26a — J
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son.
                                % 27a — K
  Ky -- ri -- e e -- lei -- son,
  ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e __ e -- lei -- son.
}

wordsSopMidi = \lyricmode {
  "Ky" ri "e " e lei "son, "
  "\nKy" ri "e "  e lei "son. "
                                % 17b
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e "  e lei "son. "
                                % 18a
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. "
                                % 18b
  "\nKy" ri "e " e lei "son, "
  "\nky" ei "e "  e lei "son. "
                                % 19a — D
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. "
                                % 19b — E
  "\nKy" ri "e " e lei "son, "
  "\nky" ri "e "  e lei "son. "
  "\nKy" ri "e "  e lei "son. "
                                % 21a
  "\nChri" "ste " e lei "son, " 
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste "  e lei "son. "
                                % 23b — G
  "\nKy" ri "e " e lei "son, "
  "\nky" ri "e "  e lei "son. "
  "\nKy" ri "e " e lei "son, "
  "\nKy" ri "e "  e lei "son. "
                                % 25a — H
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. "
                                % 25b — I
  "\nKy" ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. "
                                % 26a — J
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. "
                                % 27a — K
  "\nKy" ri "e " e lei "son, "
  "\nky" ri "e "  e lei "son. "
  "\nKy" ri "e "  e lei "son. "
}

alto = \relative {
  \global
  R1*25 \key f \major
  \time 3/4 R2.*16
  bes'4^\mf^\markup ALTO 4 4 % 18a
  gis4 4 4 | a8(b c b a g | fis4) 4 4 | g g g | g e(g) | a2.^\> |
  R2.^\mp R2.*6
  R2.^\markup ALTO | f4^\mf 4 4 | e e e |
  e2.( | d4) 4 4 | 4 4 4 | 4 2 | e2.^\> | % 19a
  R2.\mp | r4 r8 b^\mp (d c) | b(c d2~ | 4 c8 d) e4 | d8(f e d) f(e) | c(e d c ees d) |
  e4 b(cis) | d2. | d8(f e d) f(e) | c(e d c d4) | e b(cis) | f2\fermata r4\fermata \key c \major \time 4/4 | % 20a
  R1*5 | g2^\mf 2 |
  c,2 g'~( | 4 f e2 | d4. e8 f g a4~ | 8 g8 2 fis4) | g2 r | % 21a
  r4 d b g8(a | b c d e fis4) g~( | g fis) g2~ | g1 ~ |
  g2 r | r4 g e c8(d | e f g e a4) g~( | g fis) g2 | r4 g fis g | % 22a
  d4(g2 fis4) | g2 r4 g | a f e(f | g a ) g g,8(a |
  b8 c d4) g,8(a b c | d4. e8 fis g a4) | fis g2(f4) | g1\fermata | R1\fermata \key f \major \time 3/4 % 23a
  R2. | r4 r8 b,^\mp (d c) | b(c d2~ | 4 c8 d) e4 | d8(f e d) f(e) | c(e d c d4) |
  d4 b(d~ | d) cis2 | R2. | r4 r8 b(d c) | b(c d2~ | % 24a
  d4 c8 d) e4 | d8(f e d) f(e) | c(e d c ees d) | e4 b(cis) | d2. |
  f4^\mf 4 4 | e e e | e2.( | d4) d d | d d d | 4 2 | e2.^\> | % 25a
  R2.^\mf | r4 r8 b^\mp (d c) | b( c d2~ | 4 c8 d) e4 | d8(f e d) f(e) |
  c8(e d c ees d) | e4 b(cis) | d2.^\< | f4^\mf 4 4 | e e e | % 26a
  e2.( | d4) 4 4 | 4 4 4 | 4 2 | e2.^\> |
  R2.^\mp | r4 r8 b(d c) | b(c d2~ | 4 c8 d) e4 | d8(f e d) f(e) | c(e d c ees d) | % 27a
  e4 b(cis) | d2. | d8(f e d) f(e) | c(e d c d4) | e b(cis) | a2. |
  \bar "|."
}

wordsAlto = \lyricmode {
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son.
                                % 18c
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son.
                                % 19b
  E -- lei -- son,
  Ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e __ e -- lei -- son.
                                % 20b
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son, __
                                % 22a
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste __ e -- lei -- son,
                                % 23b
  E -- lei -- son, ky -- ri -- e __ e -- lei -- son.
  E -- lei -- son,
  Ky -- ri -- e __ e -- lei -- son,
                                % 25a
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son.
                                % 25b
  E -- lei -- son, ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son.
                                % 27a
  E -- lei -- son, ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e __ e -- li -- son.
}

wordsAltoMidi = \lyricmode {
  "Ky" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. "
                                % 18c
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. "
                                % 19b
  "\nE" lei "son, "
  "\nKy" ri "e "  e lei "son. "
  "\nKy" ri "e "  e lei "son. "
                                % 20b
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, " 
                                % 22a
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste "  e lei "son, "
                                % 23b
  "\nE" lei "son, " ky ri "e "  e lei "son. "
  "\nE" lei "son, "
  "\nKy" ri "e "  e lei "son, "
                                % 25a
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. "
                                % 25b
  "\nE" lei "son, " ky ri "e "  e lei "son. "
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. "
                                % 27a
  "\nE" lei "son, " ky ri "e "  e lei "son. "
  "\nKy" ri "e "  e li "son. "
}

tenorOne = \relative {
  \global
  R1*25 \key f \major
  \time 3/4 R2.*50
  \time 4/4 \key c \major
  R1^\markup "TENOR I" | r2 d'^\mf | d g, | d'2.(c4 | b2 a | g8 a b c d4 e~ | % 20b
  e4 d8 c b4 g8 a | b c d4~8 c c4~ | 4 b a f) | g2 r4 d' | b g b2( | % 21a
  a2 g4 b~ | 4 a8 g a4 b) | a2 r4 d | b g8(a b g c4) |
  b4.( c8 d4 e | d2) c~ | 2 r | r r4 b | a g a( b~ | % 22a
  b4 a8 g a2 | g2 a4 b) | a2 r4 a' | g f e2 |
  d4 f,8(a b c d4) | g,8( a b c d2~ | 4) 4 2 | d1\fermata | R\fermata \key f \major \time 3/4 % 23a
  R2.*38
}

wordsTenorOne = \lyricmode {
                                % 20b
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son
  Chri -- ste e -- lei -- son
  Chri -- ste e -- lei -- son
  Chri -- ste e -- lei -- son
  Chri -- ste e -- lei -- son
}

wordsTenorOneMidi = \lyricmode {
                                % 20b
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son "
  "\nChri" "ste " e lei "son "
  "\nChri" "ste " e lei "son "
  "\nChri" "ste " e lei "son "
  "\nChri" "ste " e lei "son "
}

tenorTwo = \relative {
  \global
  R1*25
  \key f \major
  \time 3/4 R2.*50 \key c \major
  \time 4/4
  R1*9 | d'1^\mf^\markup "TENOR II" ~ | 1~ | % 21a
  d1 | d~ | 2(g,) ~ | 1 ~ |
  g1 ~ | 2 r | R1 | d'1~ | 2 2~ | % 22a
  d1 | 1~ | 2(c) ~ | 1
  b1~ ( | 2 a~ | 1) g1\fermata | R\fermata
  \key f \major \time 3/4
  R2.*38

}

wordsTenorTwo = \lyricmode {
  Chri -- ste, __ Chri -- ste, __ e -- lei -- son.
}

wordsTenorTwoMidi = \lyricmode {
  "\nChri" "ste, "  Chri "ste, "  e lei "son. "
}

tenor = \relative {
  \global
  R1*25 \key f \major
  R2.*31
  d'4^\mf^\markup TENOR 4 4 | b b b | % 18c
  c2.~ | 4 4 4 | bes4 4 4 | 4 2 | d2^\> (cis4) | % 19a
  R2.^\mp | R2. | R2. | r4 r r8 a^\mp( | bes2) g4 | a2(f4) |
  b4 gis(e) | a2. | bes2 g4 | a2(f4) | b gis(e) | f2\fermata r4\fermata \key c \major \time 4/4 | % 20a
  R1*29 % split section
  \key f \major \time 3/4
  R2.*3 | r4 r r8 a^\mp ( | bes2) g4 | a2(f4) | % 23b
  e4 2 | 2. | R | R | R | % 24a
  r4 r r8 a( | bes2) g4 | a2(f4) | b4 gis(e) | a2. |
  d4^\mf 4 4 | b b b | c2.~ | 4 4 4 | bes4 4 4 | 4 2 | d2^\> (cis4) | % 25a
  R2.*3 | r4 r r8 a^\mp ( | bes2) g4 |
  a2(f4) b gis(e) | a2.^\< | d4^\mf 4 4 | b b b | % 26a
  c2.~ | 4 4 4 | bes4 4 4 | 4 2 | d^\> (cis4) |
  R2.^\mp | R | R | r4 r r8 a^\mp ( | bes2) g4 | a2(f4) | % 27a
  b4 gis(e) | a2. | bes2 g4 | a2(f4) | b4 gis(e) | f2. |
  \bar "|."
}

wordsTenor = \lyricmode {
                                % 18c
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son.
                                % 19b
  Ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e __ e -- lei -- son.
                                % 23b
  Ky -- ri -- e __ e -- lei -- son.
                                % 24b
  Ky -- ri -- e __ e -- lei -- son.
                                % 25a
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son. __
                                % 25b
  Ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e e -- lei -- son. __
                                % 27a
  Ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e __ e -- lei -- son.
}

wordsTenorMidi = \lyricmode {
                                % 18c
  "Ky" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. "
                                % 19b
  "\nKy" ri "e "  e lei "son. "
  "\nKy" ri "e "  e lei "son. "
                                % 23b
  "\nKy" ri "e "  e lei "son. "
                                % 24b
  "\nKy" ri "e "  e lei "son. "
                                % 25a
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. " 
                                % 25b
  "\nKy" ri "e "  e lei "son. "
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e " e lei "son. " 
                                % 27a
  "\nKy" ri "e "  e lei "son. "
  "\nKy" ri "e "  e lei "son. "
}

bass = \relative {
  \global
  R1*25 \key f \major
  R2.*31
  d4^\mf^\markup BASS 4 4 | 4 4 4 | % 18c
  c2.( | a'4) 4 4 | g4 4 bes,8(a) | g4 g'(g,) | a2.^\> | % 19a
  d2^\mp ~8 e | f2 4 | e2.(a4) 2 | g2 c,4 f2(bes,4) |
  e4 4(a, | d8 e f g) a(d,) | g2 c,4 | f2(bes,4) | e e(a,) | d2\fermata r4\fermata \key c \major \time 4/4 | % 20a
  g2^\mf 2 | c, g'( | 4 f e2 | d4. e8 f g a4~ | 8 g8 2 fis4 | g4. a8 b4 c |
  a2) g | R1*3 | g2 2 | % 21a
  d2 g(~ | 4 f8 e) d2~ | 2 r g e4 c8 (d |
  e8 f g a b4) c(~ | c b) c2 | R1 | r2 g | fis4 g d(g~ | % 22a
  g4 f8 e) d2 | r4 g fis g | d8(e f g a4 f | e f c8 d e f |
  g1~ | 2 d~ | d1) | g1\fermata | R1 \key f \major \time 3/4 | % 23a
  R2.*8 | d2^\mp ~8 e | f2 4 | e2.( | % 24a
  a4) 2 | g2 c,4 | f2(bes,4) | e4 4(a, | d8 e f e) c4 |
  d4^\mf 4 4 | 4 4 4 | c2.( | a'4) 4 4 | g g bes,8(a) | g4 g'(g,) | a2.^\> | % 25a
  d2^\mp ~8 e | f2 4 | e2.( | a4) 2 | g2 c,4 |
  f2(bes,4) | e4 4(a, | d8^\< e f g) a(d,) | 4^\mf 4 4 | 4 4 4 | % 26a
  c2.( | a'4) 4 4 | g g bes,8(a) | g4 g'(g,) | a2.^\> |
  d2^\mp ~8 e | f2 4 | e2.( | a4) 2 | g2 c,4 | f2(bes,4) | % 27a
  e4 4(a, | d8 e f e) d4 | g2 c,4 | f2(bes,4) | e e(a,) | d2. |
  \bar "|."
}

wordsBass = \lyricmode {
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e __ e -- lei -- son.
                                % 19b
  Ky -- ri -- e e -- lei -- son,
  ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e __ e -- lei -- son.
                                % 20b
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son, __
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son.
                                % 24a
  Ky -- ri -- e e -- lei -- son,
  ky -- ri -- e __ e -- lei -- son.
                                % 25a
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e __ e -- lei -- son.
                                % 25b
  Ky -- ri -- e e -- lei -- son,
  ky -- ri -- e __ e -- lei -- son.
                                % 26a — J
  Ky -- ri -- e, ky -- ri -- e e -- lei -- son,
  ky -- ri -- e __ e -- lei -- son.
                                % 27a — K
  Ky -- ri -- e e -- lei -- son,
  ky -- ri -- e __ e -- lei -- son.
  Ky -- ri -- e __ e -- lei -- son.
}

wordsBassMidi = \lyricmode {
  "Ky" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e "  e lei "son. "
                                % 19b
  "\nKy" ri "e " e lei "son, "
  "\nky" ri "e "  e lei "son. "
  "\nKy" ri "e "  e lei "son. "
                                % 20b
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, " 
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son, "
  "\nChri" "ste " e lei "son. "
                                % 24a
  "\nKy" ri "e " e lei "son, "
  "\nky" ri "e "  e lei "son. "
                                % 25a
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e "  e lei "son. "
                                % 25b
  "\nKy" ri "e " e lei "son, "
  "\nky" ri "e "  e lei "son. "
                                % 26a — J
  "\nKy" ri "e, " ky ri "e " e lei "son, "
  "\nky" ri "e "  e lei "son. "
                                % 27a — K
  "\nKy" ri "e " e lei "son, "
  "\nky" ri "e "  e lei "son. "
  "\nKy" ri "e "  e lei "son. "
}

pianoRHone = \relative {
  \global
  d,2.~8. ees32 e |
  f2.~8. e32 ees
  d1 |
  bes'2. a4 |
  cis,1 |
  g'2. fis4 |
  c1~ % 16b
  c4 f2 ees4 |
  r2^\markup "(Bsn.)" a2^\markup\italic legato |
  d2 e |
  c2 bes4 c |
  d2 bes |
  aes2 aes' |
  g2 f | % 16c
  ees2. des4 |
  c2. d4 |
  e1~ |
  4 \clef treble \ottava #1 <e'' e'> q <f f'> |
  q2 <a, a'> |
  <d d'>2 <e e'> | % 16d
  <c c'>2 <bes bes'>4 <c c'> |
  <d d'>2 <bes bes'> |
  <aes aes'>2 <aes' aes'>~
  q2 <f f'>4 <d d'> |
  q2 <cis cis'> \ottava #0 \bar "||" \key f \major \time 3/4
  d4 a a | a a a | a gis8 fis gis4 | b4 a2 | bes2 4 | % 17a
  a2 f4 | gis e gis | a2. | d,4 a' a | a a a | a gis8 fis gis4 |
  b4 a2 | bes2 4 | a2 aes4 | gis4 e a | d,2. |
  <d f bes>4 q q | % 18a
  <b e gis>4 q q |
  a'8 b c b a g |
  <c, d fis>4 4 4 |
  <bes d g>4 4 4 |
  q4 <bes d e> <bes d g> |
  <e a>2. |
  d4 a' a | a a a | a gis8 f gis4 | b a2 | bes2 4 | % 18b
  a2 f4 | gis4 e a | d,2. | <d f bes>4 4 4 | <b e gis>4 4 4 | % 18c
  a'8 b c b a g | <c, d fis>4 4 4 | <bes d g> q q | <bes d g> <bes d e> <bes d g> <e a>2. | % 19a
  d4 a' a | a a a | a gis8 fis gis4 | b a2 | bes2 4 | a2 aes4 |
  gis4 e a | d,2. | bes'2 4 | a2 f4 | gis4 e a | d,2\fermata r4 \fermata \key c \major \time 4/4 | % 20a
  R1*6 |
  \vo r2 d' | d g, | d'2. c4 | b2 a | g4 b~8 a g4~ | % 21a
  g4 fis g2~ | 2 r | d' b4 g8 a | b c d b e2~ |
  e4 d2 c4 | d2 g4. f8 | e d e4 c b | a2 b | r4 b a g | % 22a
  b4. c8 d4. c8 | b8 a b4 a d,8 e | f g a b c4. d8 | e4 c8 d e f g4 |
  g,8 a b c d4 g,8 a | b c d2 c8 b | a4 d~8 c a4 | b1\fermata | R1\fermata \key f \major \time 3/4 | % 23a
  d,4 a' a | a a a | a gis8 fis gis4 | b4 a2 | bes2 4 | a2 f4 |
  gis4 e gis | a2. | d,4 a' a | a a a | a gis8 fis gis4 | % 24a
  b4 a2 | bes2 4 | a2 aes4 | gis4 e a | d,2.
  <d f bes>4 4 4 | <b e gis> q q | a'8 b c b a g | <c, d fis>4 4 4 | <bes d g> q q | q <bes d e> <bes d g> <e a>2. | % 25a
  d4 a' a | a a a | a gis8 fis gis4 | b4 a2 | bes2 4 |
  a2 aes4 | gis4 e a | d,2. | <d f bes>4 4 4 | <b e gis> q q | % 26a
  a'8 b c b a g | <c, d fis>4 4 4 | <bes d g> q q | q <bes d e> <bes d g> | <e a>2. |
  d4 a' a | a a a | a gis8 fis gis4 | b4 a2 | bes2 4 | a2 aes4 | % 27a
  gis4 e a | d,2. | bes'2 4 | a2 f4 | gis4 e a | d,2.
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s1*25
  s2. | r4 r8 b d c | b c d2 | d4 c8 d e4 | d8 f e d f e | % 17a
  c8 e d c d4 | d b d~ | d cis2 | s2. | r4 r8 b d c | b c d2 |
  d4 c8 d e4 | d8 f e d f e | c e d c ees d | e4 b cis | <f, a>2. |
  s2. | s2. | <c' e>4 4 4 | s2. | s2. | s2. | d2 cis4 | % 18a
  s2. | r4 r8 b d c | b c d2 | d4 c8 d e4 | d8 f e d f e |
  c8 e d c d4 | e b cis | <f, a>2. | s2. | s2. |
  <c' e>4 4 4 | s2. | s2. | s2. | d2 cis4 | % 19a
  s2. | r4 r8 b d c | b c d2 | d4 c8 d e4 | d8 f e d f e | c e d c ees d |
  e4 b cis | <f, a>2. | d'8 g e d f e | c e d c d4 | e b cis | <f, a>2\omit\fermata s4 \key c \major \time 4/4 | % 20a
  s1*5 | g'2 g |
  c,2 g'~ | 4 f e2 | d4. e8 f g a4~ | 8 g8 2 fis4 | g2 r | % 21a
  r4 d b g8 a | b c d e fis4 g~ | g fis g2~ | g1~ |
  g2 r | r4 g4 e c8 d | e f g e a4 g~ | g fis g2 | r4 4 fis g | % 22a
  d4 g2 fis4 | g2 r4 g4 | a f e f | g a g g,8 a |
  b8 c d4 g,8 a b c | d4. e8 fis g a4 | fis4 g2 fis4 | g1\omit\fermata | s1 \key f \major \time 3/4 | % 23a
  s2. | r4 r8 b, d c | b c d2 | d4 c8 d e4 | d8 f e d f e | c e d c d4 |
  d4 b d~ | d cis2 | s2. | r4 r8 b d c | b c d2~ | % 24a
  d4 c8 d e4 | d8 f e d f e | c e d c ees d | e4 b cis | <f, a>2. |
  s2. | s2. | <c' e>4 q q | s2. | s2. | s2. | d2 cis4 | % 25a
  s2. | r4 r8 b d c | b c d2 | d4 c8 d e4 | d8 f e d f e |
  c8 e d c ees d | e4 b cis | <f, a>2. | s2. | s2. | % 26a
  <c' e>4 4 4 | s2. | s2. | s2. | d2 cis4 |
  s2. | r4 r8 b d c | b c d2 | d4 c8 d e4 | d8 f e d f e | c e d c ees d | % 27a
  e4 b cis | <f, a>2. | d'8 f e d f e | c e d c d4 | e b cis <f, a>2. |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p s1*21
  s1\cresc % 16d+++
  s1 s1 \time 3/4
  s2.\mp % 17a
  s2.*14
  s2.\<
  s2.\mf % 18a
  s2.*5 s2.\>
  s2.\mp % 18b
  s2.*6
  s2.\< s2.\mf s2. % 18c++
  s2.*4 s2\> s4\! % 19a
  s2.\mp | s2.*5 |
  s2.*6 \time 4/4 % 20a
  s1\mf | s1*5 |
  s1*9 % 21
  s1*9 % 22
  s1*5 \time 3/4 % 23a
  s2.\mp | s2.*5 |
  s2.*10 % 24
  s2.\mf | s2.*5 | s2\> s4\p | % 25a
  s2.\mp | s2.*4
  s2. | s | s\< | s\mf | s | % 26a
  s2.*4 | s2\> s4\! |
  s2.\mp | s2.*11 | % 27
}

pianoLHone = \relative {
  \global
  d,,2.~8. ees32 e |
  f2.~8. e32 ees |
  d1 |
  bes'2. a4 |
  cis,1 |
  g'2. fis4 |
  c1~ | % 16b
  c4 f2 ees4 |
  <d d'>1~ |
  q1 |
  <e e'>1~ |
  q1 |
  <f f'>1~ |
  f1 | % 16c
  <g g'>1 |
  <a a'>1 |
  <cis, cis'>2 <cis' cis'> |
  <c c'>2 <bes bes'> |
  <d, d'>1~ |
  d1 | % 16d
  <e e'>1 ~ |
  q1 |
  <f f'>2. <g g'>8 <aes aes'> |
  <bes bes'>1 |
  <a a'>1 \key f \major \time 3/4
  \vo d'2 8 e | f2. | e | 2 r8 a | bes2 g4 | % 17a
  a2 f4 | b gis b | e,2. | d2 8 e | f2. | e |
  e2 r8 a | bes2 g4 | a2 f4 | b gis e | d,8 e f e d4 |
  d4 d' d | d, d' d, | c c' c | c, c' c, | bes bes' bes,8 a | g4 g' g, | a2 4 | % 18a
  d'2 8 e | f2. | e | 2 r8 a | bes2 g4 |
  a2 f4 | b gis e | d,8 e f e d4 | 4 d' d | d, d' d, |
  c4 c' c | c, c' c, | bes bes' bes,8 a | g4 g' g, | a2 4 | % 19a
  d'2 8 e | f2. | e | 2 r8 a | bes2 g4 | a2 f4 |
  b4 gis e | d,8 e f g a d, | bes''2 g4 | a2 f4 | b gis e | d,2\fermata r4\fermata \key c \major \time 4/4 | % 20a
  R1 | r2 d'' | d g, | d'2. c4 | b2 a | g8 a b c d4 e~ |
  e4 d8 c b4 g8 a | b c d4~8 c c4~ | 4 b a f | g2 r4 d' | b g b2 | % 21a
  a2 g4 b~ | b a8 g a4 b | a2 r4 d | b g8 a b g c4 |
  b4. c8 d4 e | d2 c~ | c r | d2. b4 | a g a b~ | % 22a
  b4 a8 g a2 | g a4 b | a2 r4 a' | g f e2 |
  d4 g,8 a b c d4 | g,8 a b c d2~ | 4 4 2 | d1\fermata | R\fermata \key f \major \time 3/4 | % 23a
  d,2 8 e | f2. | e | 2 r8 a | bes2 g4 | a2 f4 |
  b4 gis b | e,2. | d2 8 e | f2. | e~ | % 24a
  e2 r8 a | bes2 g4 | a2 f4 | b gis e | d,8 e f e d4 |
  d4 d' d | d, d' d, | c c' c | c, c' c, | bes bes' bes,8 a  g4 g' g, | a2 4 | % 25a
  d'2 8 e | f2. | e | 2 r8 a | bes2 g4 |
  a2 f4 | b gis e | d,8 e f g a d, | 4 d' d | d, d' d, | % 26a
  c4 c' c | c, c' c, | bes bes' bes,8 a | g4 g' g, | a2 4 |
  d'2 8 e | f2. | e | e2 r8 a | bes2 g4 | a2 f4 | % 27a
  b4 gis e | d,8 e f e d4 | bes''2 g4 | a2 f4 | b gis e | d,2. |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s1*25 \key f \major \time 3/4
  \vt d,2 8 e | f2. | e | a | g2 c4 | % 17a
  f,2 bes4 | e,2. | a4. g8 f e | d2 8 e | f2. | e |
  a2. | g2 c4 | f,2 bes4 | e,2 a4 | s2. |
  s2.*7 % 18a
  d,2 8 e | f2. | e | a | g2 c4 |
  f,2 bes4 | e,2 a4 | s2.*3 |
  s2.*5 | % 19a
  d,2 8 e | f2. | e | a | g2 c4 | f,2 bes4 |
  e,2 a4 | s2. g2 c4 | f,2 bes4 | e,2 a4 | d,2\omit\fermata s4\omit\fermata \key c \major \time 4/4 | % 20a
  s1 | c'2 g'~ | 4 f e2 | d4. e8 f g a4~ | 8 g8 2 fis4 | g4. a8 b4 c |
  a2 g | s1*3 | g2 2 | % 21a
  d2 g~ | 4 f8 e d2~ | 2 r | g e4 c8 d |
  e8 f g a b4 c~ | c b c2~ | 2 r | r g | fis4 g d g~ | % 22a
  g4 f8 e d2 | g4 4 fis g | d8 e f g a4 f | e f c8 d e f |
  g1~ | 2 d~ | 1 | g1\omit\fermata | s \key f \major \time 3/4 | % 23a
  d,2 8 e | f2. | e | a | g2 c4 | f,2 bes4 |
  e,2. | a4. g8 f e | d2 8 e | f2. | e | % 24a
  a2. | g2 c4 | f,2 bes4 | e,2 a4 | s2. |
  s2.*7 % 25a
  d,2 8 e | f2. | e | a | g2 c4 |
  f,2 bes4 | e,2 a4 | s2.*8 | % 26a
  d,2 8 e | f2. | e | a | g2 c4 | f,2 bes4 | % 27a
  e,2 a4 | s2. | g2 c4 | f,2 bes4 | e,2 a4 | s2.
  \bar "|."
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
            instrumentName = #""
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorOne
            \addlyrics \wordsTenorOne
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics \wordsTenorTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #""
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \clef bass
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
            instrumentName = #""
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorOne
            \addlyrics \wordsTenorOne
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics \wordsTenorTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #""
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \clef bass
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
            instrumentName = #""
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorOne
            \addlyrics {\tiny \wordsTenorOne}
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #""
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
            instrumentName = #""
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorOne
            \addlyrics {\tiny \wordsTenorOne}
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #""
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
            instrumentName = #""
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorOne
            \addlyrics \wordsTenorOne
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics \wordsTenorTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #""
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
            instrumentName = #""
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorOne
            \addlyrics {\tiny \wordsTenorOne}
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #""
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
            instrumentName = #""
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorOne
            \new Voice \tenor
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
            instrumentName = #""
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorOne
            \new Voice \tenor
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
  \paper {
    output-suffix = "midi-tenor1"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #""
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorOne
            \addlyrics \wordsTenorOneMidi
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
  \paper {
    output-suffix = "midi-tenor2"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #""
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorOne
            \new Voice \tenor
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics \wordsTenorTwoMidi
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
            instrumentName = #""
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #""
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor I staff
          \new Staff = "tenor I" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorOne
            \new Voice \tenor
          >>
                                % Single tenor II staff
          \new Staff = "tenor II" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #""
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
