\version "2.25.13"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Blessed are the Men"
  subtitle    = "Elijah 9"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Felix Mendelssohn"
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
  \time 4/4
}

TempoTrack = {
  \tempo "Allegro moderato." 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "45a" } s1*3
  \textMark \markup { \box "45b" } s1*3
  \textMark \markup { \box "45c" } s1*3
  \textMark \markup { \box "46a" } s1*3
  \textMark \markup { \box "46b" } s1*3
  \textMark \markup { \box "46c" } s1*3
  \textMark \markup { \box "47a" } s1*3
  \textMark \markup { \box "47b" } s1*3
  \textMark \markup { \box "47c" } s1*3
  \textMark \markup { \box "48a" } s1*3
  \textMark \markup { \box "48b" } s1*3
  \textMark \markup { \box "48c" } s1*3
  \textMark \markup { \box "49a" } s1*3
  \textMark \markup { \box "49b" } s1*3
  \textMark \markup { \box "49c" } s1*3
  \textMark \markup { \box "50a" } s1*3
  \textMark \markup { \box "50b" } s1*3
  \textMark \markup { \box "50c" } s1*3
  \textMark \markup { \box "51a" } s1*5
  \textMark \markup { \box "51b" } s1*3
  \textMark \markup { \box "51c" } s1*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1 | s | s2 s\p | s1*6 |
  s2. s4\cresc | s1*4 | s2 s\p | s1 | s\cresc | s2. s4\dim | % 46
  s1 | s2 s\p\cresc | s1 | s2 s\dim | s1 | s2. s8\< s\! | s4\> s\! s2\p | s1 | s2 s\cresc |
  s2 s\f | s4 s\> s2\! | s1*5 | s4 s2.\cresc | s1 | % 48
  s1\f | s1*4 | s2 s\f | s1 | s2. s4\> | s4\! s2.\p |
  s1*2 | s2 s\cresc | s1 | s2. s4\f | s1 | s2 s\p | s1*2 | % 50
  s1 | s2 s\p | s s\< | s\> s\! | s1\p | s1*4 | s1\pp | s1*2 |
}

soprano = \relative {
  \global
  R1 | R | r2 c''4-> fis, |
  g4. 8 b4. c8 | b4 a g d'8 8 | 4 c8 a8 4. 8 |
  g2 r | r g~ | 4 fis r2 |
  r2 b4. 8 | 4(a8) g fis4 r | R1 | % 46a
  r2 d'4 fis, | g4. 8 b4. c8 | b4 a g d'8 8 |
  d4 c8 a8 4. 8 | b2 4 e | g(fis e8 b) cis(d) |
  d4(cis) r2 | r cis4 e8 8 | 4 d8 cis b4. 8 | % 47a
  b2 a4. 8 | 4 d,8 8 e4 g | fis2 b4 d8 8 |
  d4 cis8 b a4 4 | 2 r | r4 d, fis a |
  d4 d fis2 | d4 cis8 b cis2 | b r | % 48a
  R1*3 |
  R1 | r4 f a c | f4 4 2 |
  e2. g,8. 16 | c4 c r c | e8. 16 4 r e | % 49a
  g8. c,16 4 e e | 2(d) | cis f4 ais, |
  b4. 8 d4. e8 | d4 cis r d~ | d d,8 8 4. g8 |
  g4 fis g d'8 8 | 4 c8 a8 4. 8 | g2 g'4 b, | % 50a
  c4. 8 f4. 8 | 4 e2 4 | g e c b |
  a2 d~ | 4 d,8 8 c'2 | 4(b) d fis, |
  g4. 8 c4. 8 | b2 c4 4 | b2 a | e'2 d4 c | c(b a4.) 8 | % 51a
  g2 r | R1*2 |
  R1 | d'2 g,~ | 1~ | 1\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  Bless -- ed are the men who fear Him,
  they e -- ver walk in the ways of peace,
  Bless -- ed, bless -- ed are __ the men,
  Bless -- ed are the men who fear Him,
  they e -- ver walk in the ways of peace,
  in the ways __ of peace,
  they e -- ver walk in the ways of peace,
  e -- ver walk in the ways of peace,
  they e -- ver walk in the ways of peace,
  Through dark -- ness ri -- seth light,
  light to the up -- right,
  Through dark -- ness ri -- seth light, light.
  He is gra -- cious, com -- pas -- sion -- ate,
  com -- pas -- sion -- ate:
  He is right -- eous,
  Bless -- ed are the men who fear Him,
  bless -- ed the men who fear Him,
  they e -- ver walk in the ways of peace.
  Bless -- ed are the men who fear Him,
  Through dark -- ness ri -- seth light,
  light __ to the up -- right,
  Bless -- ed are the men who fear Him,
  they e -- ver walk in the ways of peace.
  Bless -- ed, __
}

wordsSopMidi = \lyricmode {
  "Bless" "ed " "are " "the " "men " "who " "fear " "Him, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace, "
  "\nBless" "ed, " bless "ed " "are "  "the " "men, "
  "\nBless" "ed " "are " "the " "men " "who " "fear " "Him, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace, "
  "\nin " "the " "ways "  "of " "peace, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace, "
  "\ne" "ver " "walk " "in " "the " "ways " "of " "peace, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace, "
  "\nThrough " dark "ness " ri "seth " "light, "
  "\nlight " "to " "the " up "right, "
  "\nThrough " dark "ness " ri "seth " "light, " "light. "
  "\nHe " "is " gra "cious, " com pas sion "ate, "
  "\ncom" pas sion "ate: "
  "\nHe " "is " right "eous, "
  "\nBless" "ed " "are " "the " "men " "who " "fear " "Him, "
  "\nbless" "ed " "the " "men " "who " "fear " "Him, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace. "
  "\nBless" "ed " "are " "the " "men " "who " "fear " "Him, "
  "\nThrough " dark "ness " ri "seth " "light, "
  "\nlight "  "to " "the " up "right, "
  "\nBless" "ed " "are " "the " "men " "who " "fear " "Him, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace. "
  "\nBless" "ed, " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*9 |
  s1 | s2 s\p | s s\cresc | s1 | s | s2 s8 s4.\p | s1 | s\cresc | s2. s4\dim | % 46
  s1 | s2. s4\cresc | s1 | s2. s4\dim | s2 s\p | s2. s8\< s\! | s4\> s\! s2\p | s1*2 |
  s1*5 | s2 s\cresc | s s\f | s1*2 | % 48
  s1\f | s1*6 | s4 s\> s2\! | s4 s2.\p |
  s1*2 | s2 s\cresc | s1 | s4 s2.\f | s1 | s2 s\p | s1*2 | % 50
  s1 | s2 s\p | s s\< | s\> s\! | s1\p | s1*3 | s1\p | s1\pp | s1*2 |
}

alto = \relative {
  \global
  R1*9 |
  R1 | s2 a'4-> cis, | d4. 8 fis4. e8 | % 46a
  d4. e8 fis4 d | r g e4. 8 | d4 4. 8 g fis |
  e8(fis) g8 8 4(fis~ | 8 g a) a g2 | b4 ais b4. 8 |
  e,2 r | g4 b8 8 4 a8 g | fis4. 8 4(a8) 8 | % 47a
  a4(g8) fis e4(g~ | g) fis8 d8 4 cis |d 2 4 fis8 8 |
  fis4 e8 8 fis4 g | fis2 r | R1 |
  R1*3 | % 48a
  R1 | R | r4 a, c e |
  a4 a c2 | a4 4 2~ | 4 8 8 g2 |
  g2. 8. 16 | 4 4 r g | c8. 16 4 r c | % 49a
  g8. 16 4 c b | ais2(b | ais4) cis, d e |
  d4 fis4 4. 8 | 2. d4 | r d8 8 4. 8 |
  d4 4. 8 g fis | e(fis) g8 8 4 fis | g g, b d | % 50a
  g4 g a2( | g4) 4 c g | g4 4 2 |
  r2 d'4 fis, | g4. 8 4. a8 | fis4 g a d,4~ |
  d4 g8 8 fis4 e | dis2 e4 4 | b2 e | 4(fis) g g | fis(g fis) d | % 51a
  d2 r | R1 | R |
  c'2 fis, | g d~ | 1~ | 1\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  bless -- ed are the men, the men who fear Him,
  the men who fear Him,
  they e -- ver walk in the ways __ of peace,
  in the ways of peace,
  they e -- ver walk in the ways of peace,
  they e -- ver walk __ in the ways of peace,
  they e -- ver walk in the ways of peace.
  Through dark -- ness ri -- seth light,
  ri -- seth light __ to the up -- right.
  He is gra -- cious, com -- pas -- sion -- ate,
  com -- pas -- sion -- ate;
  He is right -- eous,
  Bless -- ed are the men who fear Him,
  are the men who fear Him.
  they e -- ver walk in the ways of peace.
  Through dark -- ness ri -- seth light, __
  through dark -- ness ri -- seth light,
  Bless -- ed are the men who fear Him,
  Bless -- ed __ are the men who fear Him,
  they e -- ver walk in the ways of peace.
  Bless -- ed, Bless -- ed, __
}

wordsAltoMidi = \lyricmode {
  "bless" "ed " "are " "the " "men, " "the " "men " "who " "fear " "Him, "
  "\nthe " "men " "who " "fear " "Him, "
  "\nthey " e "ver " "walk " "in " "the " "ways "  "of " "peace, "
  "\nin " "the " "ways " "of " "peace, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace, "
  "\nthey " e "ver " "walk "  "in " "the " "ways " "of " "peace, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace. "
  "\nThrough " dark "ness " ri "seth " "light, "
  "\nri" "seth " "light "  "to " "the " up "right. "
  "\nHe " "is " gra "cious, " com pas sion "ate, "
  "\ncom" pas sion "ate; "
  "\nHe " "is " right "eous, "
  "\nBless" "ed " "are " "the " "men " "who " "fear " "Him, "
  "\nare " "the " "men " "who " "fear " "Him. "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace. "
  "\nThrough " dark "ness " ri "seth " "light, " 
  "\nthrough " dark "ness " ri "seth " "light, "
  "\nBless" "ed " "are " "the " "men " "who " "fear " "Him, "
  "\nBless" "ed "  "are " "the " "men " "who " "fear " "Him, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace. "
  "\nBless" "ed, " Bless "ed, " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*6 | s2 s\p | s1 | s2 s\cresc |
  s1*2 | s2 s\cresc | s1*2 | s2 s\p | s1 | s\cresc | s2. s4\dim | % 46
  s2 s\p | s2. s4\cresc | s1 | s2 s\dim | s s\p | s4 s8\< s\! s2 | s2 s\p | s1*2 |
  s1*6 | s4 s2.\cresc | s1*2 | % 48
  s1\f | s1*4 | s1\f | s1 | s4. s\> s4\! | s2 s\p |
  s1*2 | s2 s\cresc | s1 | s4 s2.\f | s1*2 | s1\p | s | % 50
  s1 | s2 s\p | s s\< | s\> s\! | s1\p | s1*2 | s1\p | s1 | s\pp | s1*2 |
}

tenor = \relative {
  \global
  R1*6 | r2 d'4 fis, | g4. 8 b4. c8 | b4 a a b8 cis |
  d4 fis8 8 4(e8) d | cis2 r | d4-> a4 4. g8 | % 46a
  fis4.(g8 a4 b)~ | 4 4 g2~ | 4 fis g2~ |
  g4 e'4.(a,8 d) c | b4(dis) e d | cis4 8 fis, b4 e |
  e4(a,) d4 fis8 8 | 4 e8 8 4 a, | ais4(b8 cis) d4 fis8 8 | % 47a
  fis4 e8 d cis4.(d8 | e4) a,4 2 | 4 d8 8 4(b4~ |
  b4) cis8 d8 4 e | d2 r | R1 |
  R1*3 | % 48a
  R1*3 |
  r4 f, a c | f4 4 2~ | 4 d8 c b4 d |
  g2. e8. 16 | 4 4 r e | g8. 16 4 r g | % 49a
  c,8. e16 4 4 d | cis2 fis, | fis'4 ais, b cis |
  d4. 8 b2~ | 4 gis d' fis, | g4. 8 b4. c8 |
  b4 a g2~ | 4 e'4.(a,8 d) c | b4 8 8 d4. 8 | % 50a
  c4 4 4 4 | b g g'2 | e2. 4 |
  e2 r | g4 b, e4. 8 | d4. 8 fis,4(a) |
  g2 fis~ | 2 g4 4 | 2 c | c4(a) d e | d2 c | % 51a
  b2 r | R1 | g'2 c, |
  R1 | b2 b~ | 1~ | 1\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  Bless -- ed are the men who fear Him,
  they e -- ver walk in the ways of peace,
  Bless -- ed are the men __ who fear __ Him,
  they __ e -- ver walk,
  __ e -- ver walk in the ways of __ peace,
  they e -- ver walk in the ways of peace,
  they e -- ver walk in the ways __ of peace,
  they e -- ver walk __ in the ways of peace.
  Through dark -- ness ri -- seth light __
  to the up -- right, light.
  Her is gra -- cious, com -- pas -- sion -- atem
  com -- pas -- sion -- ate;
  He is right -- eous.
  Bless -- ed are the men who fear __ Him,
  Bless -- ed are the men who fear Him,
  they __ e -- ver walk in the ways of peace.
  Through dark -- ness ri -- seth light,
  ri -- seth light,
  Bless -- ed are the men who fear Him,
  Bless -- ed, they e -- ver walk in the ways of peace.
  Bless -- ed, Bless -- ed, __
}

wordsTenorMidi = \lyricmode {
  "Bless" "ed " "are " "the " "men " "who " "fear " "Him, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace, "
  "\nBless" "ed " "are " "the " "men "  "who " "fear "  "Him, "
  "\nthey "  e "ver " "walk, "
   "\ne" "ver " "walk " "in " "the " "ways " "of "  "peace, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace, "
  "\nthey " e "ver " "walk " "in " "the " "ways "  "of " "peace, "
  "\nthey " e "ver " "walk "  "in " "the " "ways " "of " "peace. "
  "\nThrough " dark "ness " ri "seth " "light " 
  "\nto " "the " up "right, " "light. "
  "\nHer " "is " gra "cious, " com pas sion "atem "
  "\ncom" pas sion "ate; "
  "\nHe " "is " right "eous. "
  "\nBless" "ed " "are " "the " "men " "who " "fear "  "Him, "
  "\nBless" "ed " "are " "the " "men " "who " "fear " "Him, "
  "\nthey "  e "ver " "walk " "in " "the " "ways " "of " "peace. "
  "\nThrough " dark "ness " ri "seth " "light, "
  "\nri" "seth " "light, "
  "\nBless" "ed " "are " "the " "men " "who " "fear " "Him, "
  "\nBless" "ed, " "they " e "ver " "walk " "in " "the " "ways " "of " "peace. "
  "\nBless" "ed, " Bless "ed, " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*9 |
  s1*2 | s2 s\p | s1*4 | s1\cresc | s2. s4\dim | % 46
  s1 | s2 s\p | s1 | s2. s4\dim | s2 s\p | s1 | s2 s\p | s1*2 |
  s1*2 | s2 s\cresc | s s\f | s4\> s2.\! | s1*2 | s2. s4\cresc | s1 | % 48
  s1\f | s1*3 | s1\sf | s1 | s4 s2.\f | s1 | s2 s\p |
  s1*4 | s4 s2.\f | s1*2 | s2 s\p | s1 | % 50
  s1 | s2 s\p | s s\< | s\> s\! | s1\p | s1*4 | s1\pp | s1*2 |
}

bass = \relative {
  \global
  R1*9 |
  R1 | R | r2 a4-> cis, | % 46a
  d4 4 2 | e4. 8 4 a, | d c8 8 b4. 8 |
  c2 d4. 8 | dis8(e fis) 8 e2 | 4 fis g4. 8 |
  g2 r | r a4 cis8 8 | 4 b8 a g4. 8 | % 47a
  g2. e8 d | cis4(d a) a | d2 g, |
  g'4 8 8 a4 a, | d2 r | R1 |
  R1 | R | r4 b d fis | % 48a
  b4 4 d2~ | 4 c8 8 b2 | a r |
  R1 | r2 r4 a, | d f g b |
  c2. c,8. 16 | c'4 4 r c, | c'8. 16 4 r c, | % 49a
  e8. 16 4 4 4 | fis1 | 1~ |
  fis4 fis, b d | fis4 4 b2~ | 2 g~ |
  g4 d b4. 8 | c2 d | e f4. 8 | % 50a
  e2 d | g4 c, e g | c4 4 2~( |
  c1 | b2) a4 c, | d g c,4. 8 |
  b2(a) | b e | d c | c b4 a | d2. 4 | % 51a
  g,2 r | R1 | R |
  R1 | g2 g~ | 1~ | 1\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  Bless -- ed, are the men,
  are the men who fear Him,
  they e -- ver walk in the ways __ of peace,
  in the ways of peace,
  they e -- ver walk in the ways of peace,
  in the ways __ of peace,
  they walk in the ways of peace.
  Through dark -- ness ri -- seth light __ to the up -- right,
  Through dark -- ness ri -- seth light.
  He is gra -- cious, com -- pas -- sion -- ate,
  com -- pas -- sion -- ate;
  He is right -- eous. __
  Through dark -- ness ri -- seth light. __
  Bless -- ed are the men who walk in the ways of peace.
  Through dark -- ness ri -- seth light. __
  Bless -- ed are the men who fear __ Him,
  they e -- ver walk in the ways of peace.
  Bless -- ed, __
}

wordsBassMidi = \lyricmode {
  "Bless" "ed, " "are " "the " "men, "
  "\nare " "the " "men " "who " "fear " "Him, "
  "\nthey " e "ver " "walk " "in " "the " "ways "  "of " "peace, "
  "\nin " "the " "ways " "of " "peace, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace, "
  "\nin " "the " "ways "  "of " "peace, "
  "\nthey " "walk " "in " "the " "ways " "of " "peace. "
  "\nThrough " dark "ness " ri "seth " "light "  "to " "the " up "right, "
  "\nThrough " dark "ness " ri "seth " "light. "
  "\nHe " "is " gra "cious, " com pas sion "ate, "
  "\ncom" pas sion "ate; "
  "\nHe " "is " right "eous. " 
  "\nThrough " dark "ness " ri "seth " "light. " 
  "\nBless" "ed " "are " "the " "men " "who " "walk " "in " "the " "ways " "of " "peace. "
  "\nThrough " dark "ness " ri "seth " "light. " 
  "\nBless" "ed " "are " "the " "men " "who " "fear "  "Him, "
  "\nthey " e "ver " "walk " "in " "the " "ways " "of " "peace. "
  "\nBless" "ed, " 
}

pianoRHone = \relative {
  \global \vo
  g'4 s \ov d'(<fis, fis'>) |
  <g g'>4. \vo d'8 \ov d4(<fis, fis'>) |
  \vo <g g'>2 d'4(fis,) |
  s1 | s2 g4 d'8(d | d4 c8 a)~<c, a'>16 g' a g fis d c d | % 45b
  b16(d g, a b d g d b d c b c a d a) | b(d g, a b d g d~<d g> d b a g fis g a) | \ov R1 |
  s4 \vo fis'8 8 4(e8 d) | s2 <fis a>4->(cis) | d4 s2. | % 46a
  s1 | s | s2 g4 d'8 8 | % 46b
  d4(c8 a) s2 | b2 4 e8 g | \vo <b, g'>4 <ais fis'> <b e>8(b cis <b d>) |
  d4(cis) s4 fis,8 8 | <fis g>4 b8 8 <b cis>4 <a e'>8 <g e'> | % 47a
  <fis e'>4 d'8 cis b2 |
  s1*3 | % 47b
  s1*3 |
  <d d'>1 | d4(cis8 b) cis2 | <fis, b>2 2 | % 48a
  <fis b>2 b2~ | <e, b'>4(<e c'>8) <c a'> <f a>4(<e gis>) | <e a>2 2 |
  s1*3 |
  s1*3 | % 49a
  s1 | s | s2. \vo gis4 |
  b4 s2. | s4 cis4~4 b~ | b s2. |
  s1*3 | % 50a
  s1 | f'4 s2. | s1 |
  s2 a,4(d) | s1 | R1 |
  s1*4 | \ov r2 <d, d'>4(<fis fis'>) | % 51a
  <g g'>4. d'8 4 <fis, fis'> | \vo g'2~<f g>~ | <e g>4~8 s s2 |
  s1*4 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  b16 d g, a b d g d s2 | s1 | s1 |
  s1 | s2. g8(fis | e fis) <e g>4 s2 |
  s1*3 |
  \vo <fis, d'>16 a fis a \lh d,4~16 b' g b \rh e4~ | % 46a
  <cis e>16 fis g fis g e d c \lh d a g fis g e a e |
  fis16 a d, e fis a d a fis a g fis g e a e |
  <d fis>16 a' d, e fis a d a \rh fis a d e fis d b d | % 46b
  <b g'>16 d g, a b d g d \lh b d c b a fis g e |
  d8 g16 b \rh d fis e d g d b d g8 fis |
  e8 fis | <e g>4~<a, g'>16 g' a g fis d <c a'> d | % 46c
  fis8 <e g> <dis a'> q g4 b | s1 |
  a2 s | s1 | s2. | \vo a4~ | % 47a
  a4(g8) fis e4(g8) 8 | 4 s2. | fis2 <fis b>~ |
  q4 r <a a'>4(<cis cis'>) | <d d'>4. a'8 4 <cis, cis'> | <d d'>1 |
  s1 | s4 \vt fis, g(fis) d s d s | % 48a
  d4 s <d fis> f | s2 b, | c4 s c s |
  s1*3 |
  \ov e'16 g c, d e g c g e g c, d e g c g | % 49a
  e16 g c, d e g c g e g c, d e g c g |
  e16 c g b c e g e c e g, b c e g e |
  c16 e g, b c e g e c e g c, b e g e~ | % 49b
  e16 ais cis, d e ais cis ais fis b d, e fis b d b |
  ais16 cis ais fis e fis e c fis d b fis \vt e cis fis e |
  d16 fis b, cis d fis b fis <d fis> b' d, e fis b ais b | % 49c
  b16 d b fis e cis fis e d4. s8 | s1 |
  \ov b16(g b c d e fis d g d b d g8 fis) | % 50a
  e8 fis <e g>4~ g16( g a g fis d c d) |
  \lh b16 g e fis \rh \ov g b e b~b d(g, a b d) g d |
  <c g'>16 e c d e g c g <f a> c' f, g a c f c | % 50b
  \vt b16(d g, b c e g e c e g, b c e g e) |
  e16(g c, d e g c g e c g b c e g e |
  c16 a e gis a c e c) \lh r16 a, d, e fis a \rh d \lh a \rh | % 50c
  b16( d g, a b d g d c fis c b a b c e) \lh |
  a,16(c b a g fis g d fis a d, e fis a d a) |
  b16 d g, a \rh b d g d c d c b c b a g | % 51a
  fis16(g fis g a fis b a g2)~ |
  g16(fis g a b d g d e2)~ |
  e16(g, fis g a c a fis d'8) r r4 |
  s1 \lh |
  r16 d g, a(b d g d b d c b c a d a) % 51b
  b16 d g, a b d g d b d g, a b d g d |
  c16 e g, b c e g f e d c b c b a g |
  fis16 e d e fis g a b c b a b c a d a | % 51c
  b16 g d fis g b g a b d b c \rh \ov d g d fis |
  g16 b g a b d b c d8 g b d |
  g1\fermata |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s1*7 | s2 s\cresc |
  s1*2 | s2 s\cresc | s1\cresc | s1 | s2 s\p | s1 | s2\cresc | s | % 46
  s1 s\p | s2. s4\cresc | s1 | s2 s\p | s1 | s2 s\cresc | s2 s\p | s1 | s2 s\cresc |
  s2 s\f | s4 s2.\p | s2 s\cresc | s2 s\f | s4 s2.\p | s4 s2.\cresc | s1 | s1\cresc | s1 | % 48
  s1\ff | s1*3 | s4 s2.\omit\f-\markup{\italic sempre. \dynamic f} | s1\sf | s1 | s2. s4\dim | s2 s\p |
  s1*2 | s4 s2.\cresc | s1 | s\f | s | s2 s\p | s1*2 | % 50
  s1 | s\p | s1*2 | s2 s\p | s1*4 | s1\pp | s1*2 |
}

pianoLHone = \relative {
  \global
  g,2 \vo b'16 d c b c a d a |
  b16 d g, a b d \rh g \lh d a d c b c a d a |
  b16 \rh d \lh g, a b \rh d g d \lh b d c b \rh c a d c |
  <b g'>16 d g, a b d g d~d d b a \lh g fis g a | % 45b
  g16 d g b \rh d fis e d g d b d \lh g,4~ | 4 s2. |
  s1 | s | g16(d g a d a fis g a fis e d b' g e cis') | % 45c
  s1 | s | s2. \vt cis,4 | % 46a
  s1 | s | s2. \vo g'4~ |
  g4 s2. | b2~16 g e fis g a b dis | cis4~16 e d cis b8 g s4 |
  <g, e'>16) e' a b cis d e cis <a d> d, fis a \rh d4~ | % 47a
  d16 b g b e4~16 g e d \lh cis4~ |
  16 ais fis ais \rh fis'16 d fis8~16 g fis e dis e fis e |
  dis16 b cis d e b g d' cis b a b c a d a | % 47b
  e'4 fis8 d <d e>4~<a cis g'>~ | a8 a(d) d d4~<b d>~ |
  <b d>4 r s2 \lh | r16 a(d, e fis a d a fis a g fis g e a e) | % 47c
  fis16 a d, e fis a d a fis a d, e fis a d a |
  fis16 a d, e fis a d a fis a d, e fis a d a | % 48a
  fis16 b d b \ov d,4(<e, e'>4 <fis fis'>)~ |
  \vo fis'16 b d,  e fis b d b fis b d, e fis b d b |
  fis16 b d, e fis b d b fis b d, e f b d b \rh | % 48b
  d16 b d b \lh a4 \ov <d,, d'>4(<e e'>) \vo |
  e'16 a c, d e a c a e a c, d e a c a~ \rh |
  a16 c f, g a c f c a f f g a c f c( | % 48c
  <a c>16) f' a, bes c f a f <a, c> f' a, bes c f a f |
  <a, c>16 f' a f d f d c b d b c d g d' g, |
  \lh \ov <c,, e g c>4 <c, c'> <c' e> <c e g> | % 49a
  <c e g c>8. 16 4 r <c, c'> |
  <c' e g c>8. 16 4 r <c, c'> |
  <e' g c>8. 16 4 <e g c e> <e d'> | % 49b
  \vo cis'2 <b d> | <ais cis fis>4 <ais cis> <b d>4 s |
  \ov fis4 <fis,, fis'> <b b'> <d d'> | % 49c
  <fis fis'>4 <fis' ais>4~ \vo fis16 16 d e fis b d b |
  g16 b d, fis \rh \vo g b d b~b d g, a b d g d |
  \lh s2. g,4~ | 4 s2. | s1 | % 50a
  s1 | s | s2 c4 b |
  s2 \rh fis'4. e8 | s1 | R1 |
  s1*5 | % 51a
  s1 | g4 s2. | s1 |
  s1*4 |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  s2 g2~ | 8 4. ~2 | 2~2 |
  g2 <g,, g'>4(<e' e'>) | <d d'>4 <c c'> <b b'>~ b' | c2 \vo <d, d'> |
  <g, g'>1~ | 2 4(<e' e'>) | d1~ |
  \vo d2 \vt g | \ov a d~| 8 4. \vt d,2 | % 46a
  d2 <d d'> | <e e'>2 4 <a, a'> | d4 c' b2 |
  c2 \vo d | \vt dis8(e fis fis) e2 | e4 fis g e~ |
  s2 fis, | e4 g a cis8 8 | 4 <b b'>8 <a a'>  <g g'>2~ | % 47a
  g2 <g g'>4(<e e'>8 <d d'>) | <cis cis'>4 <d d'> <a a'>2 | <d d'> <g, g'>~ |
  q4 r r2 | r8 d''4.~2~ | 8 4.~8 4.~ |
  d8 4.~8 4.~ | 4 s2. | b2 2 | % 48a
  b2 4 a | <gis e'>4 <a e'> s2 | a2 g |
  f2 <f, f'> | <f' f'> <e e'> | <d d'>4 <f f'> <g g'> <b b'> |
  s1*3 | % 49a
  s1 | fis'_\sf | 2~2 |
  s1 | s2 b, | b g |
  g4(d) <b b'>2 | <c c'> <d d'> | <e e'> <f f'> | % 50a
  <e e'>2 <d d'> | <g g'>4 <c, c'> <e e'> <g g'> | <c e g c> q <c e g>2~ |
  <c e g a>2 \vt c | \ov b <a a'>4(<c, c'>) | \vt <d d'>4(g) <c, c'>2 |
  <b b'>2 \ov <a a'> | <b b'> <e e'> | <d d'> <c c'> | q(<b b'>4 <a a'>) | <d d'>2 r | % 51a
  s8 \vt g'4.~2~ | 8 4.~8 4.~ | 8 r r4 <g,, g'>8 r r4 |
  q8 r r4 q8 r r4 | q1~ | \ov q~ | q\fermata |
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
            \new Voice { s1*66 }
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice { s1*66 }
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
%        \RemoveAllEmptyStaves
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
%        \RemoveAllEmptyStaves
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
%        \RemoveAllEmptyStaves
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
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
%        \RemoveAllEmptyStaves
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
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
%        \RemoveAllEmptyStaves
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
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
%        \RemoveAllEmptyStaves
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice\pianoLHtwo
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice\pianoLHtwo
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice\pianoLHtwo
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice\pianoLHtwo
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
