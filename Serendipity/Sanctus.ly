\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sanctus"
%  subtitle    = "subtitle"
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
  \key f \major
  \time 4/4
}

TempoTrack = {
  \tempo Affretando 4=65
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "30a" }
  \mark \markup { \box "A"} s1*4
  \repeat volta 2 {
    \textMark \markup { \box "30b" } s1*2
    \textMark \markup { \box "30c" } s1*2
  }
  \repeat volta 2 {
    \textMark \markup { \box "31a" } s1*2
    \textMark \markup { \box "31b" } s1*2
  }
  \textMark \markup { \box "32a" }   s1*2
  \mark \markup { \box "B" }         s1*2
  \textMark \markup { \box "32b" }   s1*3
  \textMark \markup { \box "33a" }   s1*3
  \textMark \markup { \box "33b" }   s1*3
  \textMark \markup { \box "34a" }
  \mark \markup { \box "C" }         s1*3
  \textMark \markup { \box "34b" }   s1*3
  \textMark \markup { \box "35a" }   s1*3
  \textMark \markup { \box "35b" }   s1*3
  \textMark \markup { \box "36a" }   s1*2
  \mark     \markup { \box "D"   }   s1*2
  \textMark \markup { \box "36b" }   s1*2
  \textMark \markup { \box "37a" }   s1*2
  \textMark \markup { \box "37b" }   s1*2
  \textMark \markup { \box "37c" }   s1 s1 s4
  \textMark \markup { \box "38a" }
  \mark     \markup { \box "E"   }   s1*3
  \textMark \markup { \box "38b" }   s1*3
  \textMark \markup { \box "38c" }   s1*3
  \textMark \markup { \box "38d" }   s1*2
  \mark     \markup   \box "F"       s1
  \textMark \markup { \box "39a" }   s1*3
  \textMark \markup { \box "39b" }   s1*3
  \textMark \markup { \box "40a" }   s1*3
  \textMark \markup { \box "40b" }   s1*4
  \repeat volta 2 {
    \mark     \markup   \box "G"
    \textMark \markup { \box "41a" } s1*2
    \textMark \markup { \box "41b" } s1*2
    \textMark \markup { \box "42a" } s1*2
    \textMark \markup { \box "42b" } s1*2
  }
  \textMark   \markup { \box "42c" } s1 s1 s4
  \repeat volta 2 {
    \textMark \markup { \box "43a" } s1*3
    \textMark \markup { \box "43b" } s1
  }
                                     s1*4
}

dynamicsVocal = {
  \override DynamicTextSpanner.style = #'none
  s1*4 |
  \repeat volta 2 { s1\p | s1*3 | }
  \repeat volta 2 { s1*4 | }
  s1 | s | s\p | s1*4 | % 32
  s1*6 |
  s1\mp | s1*5 | % 34
  s1*6 |
  s1*2 | s8. s16 \f\cresc s2. | s1 | s\ff | s | % 36
  s8. s16\f\cresc s2. | s1 | s\ff | s1*3 s4 |
  s1*11 | s1\mp | % 38
  s1*6 |
  s1*7 | % 40
  \repeat volta 2 {
    s8. s16\f\cresc s2. | s1 | s\ff | s
    s8. s16\f\cresc s2. | s1 | s\ff | s
  }
  s1*2 s4 |
  \repeat volta 2 { s1\p | s1*3 | }
  s1*4 |
}

soprano = \relative {
  \global
  R1*4 |
  \repeat volta 2 {
    a'4 4 r2 | gis4 4 r2 |
    g4 4 r2 | f8. 16 4 r2 |
  }
  \repeat volta 2 {
    a4 a r2 | gis8. 16 4 r2 | % 31a
    g4 g r2 | f8. 16 4 r2 |
  }
  R1 | R \section | a8. 16 8 8 8 8 g g | r8. a16 8 8 8 8 gis4 | % 32a
  a8. 16 8 8 8 8 g g | r8. a16 8 8 8 8 bes4 | a8. 16 8 8 8 8 g g |
  r8. a16 8 8 8 8 gis4 | a8. 16 8 8 8 8 g g | a8. 16 2 gis4 | % 33a
  a2. r4 | R1 | R \section |
  a8. 16 8 8 8 8 g g | r8. a16 8 8 8 8 gis r | a8. 16 8 8 8 8 g g | % 34a
  r8. a16 8 8 8 8 bes4 | g8. 16 8 8 8 8 a a | f8. 16 8 8 8 8 g g |
  e8. 16 8 8 4 f'8 e | ees2(d8) r e d | d2(cis8) r b cis | % 35a
  d2~8 r e d | 2~8 r e d | 2~(8 cis) b(cis) |
  d1~ | 2~8 r r4 \section \key aes \major | r8. d16-> 8 c->~4 8 d | 4(c8 d ees f d c) | % 36a
  d1~ | 2.~8-. r |
  r8. d16-> 8 c-> ~4 8 d | 4(c8 d ees f d c) | % 37a
  d1 ~ | 2.~8-. r |
  R1 | \time 5/4 R1*5/4 \section \key f \major \time 4/4 |
  R1*9 |
  R1 | R \section | a8. 16 8 8 8 8 g g | % 38d
  r8. a16 8 8 8 8 gis4 | a8. 16 8 8 8 8 g g | r8. a16 8 8 8 8 bes4 | % 39a
  g8. 16 8 8 8 8 a a | f8. 16 8 8 8 8 g g | e8. 16 8 8 4 f'8 e |
  ees2(d8) r e d | 2(cis8) r b cis | d2~8 r e d | % 40a
  d2~8 r e d | d2~(8 cis) b(cis) | d1~ | 2~8 r r4 \section \key aes \major |
  \repeat volta 2 {
    r8. d16-> 8 c-> ~4 8 d | 4(c8 d ees f d c) | % 41a
    d1~ | 2.~8-. r |
    r8. d16-> 8 c-> ~4 8 d | 4(c8 d ees f d c) | % 42a
    d1~ | 2.~8-. r |
  }
  R1 \time 5/4 | R1*5/4 \section \key f \major \time 4/4 |
  \repeat volta 2 { a4 a r2 | gis4 4 r2 | g4 g r2 | f8. 16 4 r2 |}
  d4 d r2 | d4 d r2 | d4 d r2 | R1 |
  \bar "|."
}

words = \lyricmode {
  \repeat volta 2 {
    Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  }
  \repeat volta 2 {
    Sanc -- tus, Sa -- ba -- oth, De -- us Sa -- ba -- oth,
  }
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  glo -- ri -- a, tu -- a.
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  Ple -- ni sunt cae -- li et ter -- ra,
  glo -- ri -- a, tu -- a.
                                % 35a
  Glo -- ri -- a, __ glo -- ri -- a, __
  glo -- ri -- a, __ glo -- ri -- a, __
  glo -- ri -- a, __ tu -- a. __
                                % 36a
  Ho -- sa -- na __ in ex -- cel -- sis, __
  Ho -- sa -- na __ in ex -- cel -- sis, __
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  Ple -- ni sunt cae -- li et ter -- ra,
  glo -- ri -- a, tu -- a.
  Glo -- ri -- a, __ glo -- ri -- a, __
  glo -- ri -- a, __ glo -- ri -- a, __
  glo -- ri -- a, __ tu -- a. __
  \repeat volta 2 {
    Ho -- sa -- na __ in ex -- cel -- sis, __
    Ho -- sa -- na __ in ex -- cel -- sis, __
  }
  \repeat volta 2 {
    Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  }
  Sanc -- tus, Sanc -- tus, Sanc -- tus.
}

wordsMidi = \lyricmode {
  \repeat volta 2 {
    "\nSanc" "tus, " Sanc "tus, " Sanc "tus, " Do mi "nus "
  }
  \repeat volta 2 {
    "\nSanc" "tus, " Sa ba "oth, " De "us " Sa ba "oth, "
  }
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nglo" ri "a, " tu "a. "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nglo" ri "a, " tu "a. "
                                % 35a
  "\nGlo" ri "a, "  glo ri "a, " 
  "\nglo" ri "a, "  glo ri "a, " 
  "\nglo" ri "a, "  tu "a. " 
                                % 36a
  "\nHo" sa "na "  "in " ex cel "sis, " 
  "\nHo" sa "na "  "in " ex cel "sis, " 
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nglo" ri "a, " tu "a. "
  "\nGlo" ri "a, "  glo ri "a, " 
  "\nglo" ri "a, "  glo ri "a, " 
  "\nglo" ri "a, "  tu "a. " 
  \repeat volta 2 {
    "\nHo" sa "na "  "in " ex cel "sis, " 
    "\nHo" sa "na "  "in " ex cel "sis, " 
  }
  \repeat volta 2 {
    "\nSanc" "tus, " Sanc "tus, " Sanc "tus, " Do mi "nus "
  }
  "\nSanc" "tus, " Sanc "tus, " Sanc "tus. "
}

alto = \relative {
  \global
  R1*4 |
  \repeat volta 2 {
    f'4 4 r2 | e4 4 r2 |
    d4 4 r2 | e8. d16 4 r2 |
  }
  \repeat volta 2 {
    f4 f r2 | e8. 16 4 r2 | % 31a
    d4 d r2 | e8. d16 4 r2 |
  }
  R1 | R \section | f8. 16 8 8 8 8 e e | r8. f16 8 8 8 8 e4 | % 32a
  f8. 16 8 8 8 8 e e | r8. f16 8 8 8 8 4 | 8. 16 8 8 8 8 e e |
  r8. f16 8 8 8 8 e4 | f8. 16 8 8 8 8 e e | f8. 16 4(ees) e | % 33a
  e2. r4 | R1 | R \section |
  f8. 16 8 8 8 8 e e | r8. f16 8 8 8 8 e4 | f8. 16 8 8 8 8 e e | % 34a
  r8. f16 8 8 8 8 4 | g8. 16 8 8 8 8 a a | f8. 16 8 8 8 8 g g |
  e8. 16 8 8 4 f8 e | ees2(d8) r e d | d2(cis8) r b cis | % 35a
  d2~8 r e d | 2~8 r e d | 2~(8cis) b(cis) |
  d1~ | 2~8 r r4 \section \key aes \major | r8. aes'16-> 8 8-> ~4 8 8 | 1 | % 36a
  a1~ | 2.~8-. r |
  r8. aes16-> 8 8-> ~4 8 8 | 1 | % 37a
  fis1~ | 2.~8 r |
  R1 \time 5/4 | R1*5/4 \time 4/4 \key f \major \section |
  R1*9 |
  R1 | R \section | f8. 16 8 8 8 8 e e | % 38d |
  r8. f16 8 8 8 8 e4 | f8. 16 8 8 8 8 e e | r8. f16 8 8 8 8 4 | % 39a
  g8. 16 8 8 8 8 a a | f8. 16 8 8 8 8 g g | e8. 16 8 8 4 f8 e |
  ees2(d8) r e d | d2(cis8) r b cis | d2~8 r e d | % 40a
  d2~8 r e d | d2~(8 cis) b(cis) | d1~ | 2~8 r r4 \section \key aes \major |
  \repeat volta 2 {
    r8. aes'16-> 8 8-> ~4 8 8 | 1 | % 41a
    a1~ | 2.~8-. r |
    r8. aes16-> 8 8-> ~4 8 8 | 1 | % 42a
    fis1~ | 2.~8 r |
  }
  R1 \time 5/4 | R1*5/4 \section \key f \major \time 4/4 |
  \repeat volta 2 { f4 f r2 | e4 e r2 | d4 d r2 | e8. d16 4 r2 }
    d4 d r2 | 4 4 r2 | 4 4 r2 | R1 |
  \bar "|."
}

tenor = \relative {
  \global
  R1*4 |
  \repeat volta 2 {
    d'4 4 r2 | b4 4 r2 |
    bes4 4 r2 | a8. 16 4 r2 |
  }
  \repeat volta 2 {
    d4 d r2 | b8. 16 4 r2 | % 31a
    bes4 4 r2 | a8. 16 4 r2 |
  }
  R1 | R \section | d8. 16 8 8 8 8 8 8 | r8. d16 8 8 8 8 b4 | % 32a
  d8. 16 8 8 8 8 8 8 | r8. d16 8 8 8 8 des4 | d8. 16 8 8 8 8 8 8 |
  r8. d16 8 8 8 8 b4 | d8. 16 8 8 8 8 8 8 | 8. 16 4(c) b | % 33a
  d4(cis2) r4 | R1 | R \section |
  d8. 16 8 8 8 8 8 8 | r8. d16 8 8 8 8 b4 | d8. 16 8 8 8 8 8 8 % 34a
  r8. d16 8 8 8 8 des4 | f8. 16 8 8 e e e ees | d8. 16 8 8 8 8 e d |
  d8. 16 8 b cis4 8 8 | a2(bes8) r bes8 8 | a2~8 r a a | % 35a
  b2(bes8) r bes8 8 | a2(bes8) r bes8 8 | b2(a4) a |
  a1~ | 2~8 r r4 \section \key aes \major \section | r8. ees'16-> 8 8-> ~4 8 8 | 1 | % 36a
  d1~ | 2.~8-. r |
  r8. ees16-> 8 8->~4 8 8 | 1 | % 37a
  d~ | 2.~8-. r |
  R1 \time 5/4 | R1*5/4 \time 4/4 \section \key f \major |
  R1*9 | % 38a
  R1 | R \section | d8. 16 8 8 8 8 8 8 |
  r8. d16 8 8 8 8 b4 | d8. 16 8 8 8 8 8 8 | r8. d16 8 8 8 8 des4 | % 39a
  f8. 16 8 8 e e e ees | d8. 16 8 8 8 8 e d | 8. 16 8 b cis4 8 8 |
  a2(bes8) r8 8 8 | a2~8 r a a | b2(bes8) r8 8 8 | % 40a
  a2(bes8) r8 8 8 | b2(a4) a | 1~ | 2~8 r r4 \section \key aes \major |
  \repeat volta 2 {
    r8. ees'16-> 8 8-> ~4 8 8 | 1 | % 41a
    d1~ | 2.~8-. r |
    r8. ees16-> 8 8-> ~4 8 8 | 1 | % 42a
    d1~ | 2.~8-. r |
  }
  R1 \time 5/4 | R1*5/4 \time 4/4 \section \key f \major \time 4/4 |
  \repeat volta 2 { d4 d r2 | b4 b r2 | bes4 4 r2 | a8. 16 4 r2 | }
  d,4 d r2 | d4 d r2 | d4 d r2 | R1 |
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*4 |
  \repeat volta 2 { s1\p | s1*3 | }
  \repeat volta 2 { s1*4 | }
  s1 | s | s\p | s1*4 | % 32
  s1*6 |
  s1\mp | s1*5 | % 34
  s1*6 |
  s1*2 | s8. s16\f\cresc s2. | s1 | s\ff | s | % 36
  s8. s16\f\cresc s2. | s1 | s\ff | s1*3 s4 |
  s1*11 | s1\mp | % 38
  s1*6 |
  s1*7 | % 40
  \repeat volta 2 {
    s8. s16\f\cresc s2. | s1 | s\ff | s
    s8. s16\f\cresc s2. | s1 | s\ff | s
  }
  s1*2 s4 |
  \repeat volta 2 { s2 s\p | s1*3 | }
  s1*4 |
}

bass = \relative {
  \global
  R1*4 |
  \repeat volta 2 {
    d4 d r2 | d4 d r2 |
    d4 d r2 | d8. 16 4 r2 |
  }
  \repeat volta 2 {
    d4 d r2 | 8. 16 4 r2 | % 31a
    d4 d r2 | 8. 16 4 r2 |
  }
  R1 | R \section | d4 8 r r2 | 4 8 r r2 | % 32a
  d4 8 r r2 | 4 8 r r2 | 4 8 r r2 |
  d4 8 r r2 | 4 8 r r2 | 8. 16 4(f) e | % 33a
  a,2. r4 | R1 | R \section |
  d8. 16 8 8 8 8 8 8 | r8. d16 8 8 8 8 4 | 8. 16 8 8 8 8 8 8 | % 34a
  r8. d16 8 8 8 8 des4 | bes'8. 16 8 8 8 8 c c | a8. 16 8 8 8 8 bes8 8 |
  g8. 16 8 8 4 8 8 | 2(f8) r f f | e2~8 r e e | % 35a
  f2(g8) r g g | f2(g8) r g g | f2(e4) e |
  d1~ | 2~8 r r4 \section \key aes \major | r8. aes'16-> 8 8-> ~4 8 8 | f1 | % 36a
  a1~ | 2.~8-. r |
  r8. aes16-> 8 8-> ~4 8 8 | f1 | % 37a
  b1~ | 2.~ 8-. r |
  R1 \time 5/4 | R1*5/4 \section \key f \major \time 4/4 |
  R1*9 | % 38a
  R1 | R \section | d,8. 16 8 8 8 8 8 8 |
  r8. d16 8 8 8 8 4 | 8. 16 8 8 8 8 8 8 | r8. 16 8 8 8 8 des4 | % 39a
  bes'8. 16 8 8 8 8 c c | a8. 16 8 8 8 8 bes8 8 | g8. 16 8 8 4 8 8 |
  g2(f8) r f f | e2~8 r e e | f2(g8) r g g | % 40a
  f2(g8) r g g | f2(e4) 4 | d1~ | 2~8 r r4 \section \key aes \major |
  \repeat volta 2 {
    r8. aes'16-> 8 8-> ~4 8 8 | f1 | % 41a
    a1~ | 2.~8-. r |
    r8. aes16-> 8 8-> ~4 8 8 | f1 | % 42a
    b1~ | 2.~8-. r |
  }
  R1 \time 5/4 | R1*5/4 \section \key f \major \time 4/4 |
  \repeat volta 2 {r2 d,4 4 | r2 d4 4 | r2 d4 4 | r2 d8. 16 4 | }
  d1~ | d~ | d | 8 r r4 r2 |
  \bar "|."
}

wordsBass = \lyricmode {
  \repeat volta 2 {
    Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  }
  \repeat volta 2 {
    Sanc -- tus, Sa -- ba -- oth, De -- us Sa -- ba -- oth,
  }
  Sanc -- tus, Sanc -- tus, Sanc -- tus, Sanc -- tus,
  Sanc -- tus, Sanc -- tus, Sanc -- tus, glo -- ri -- a __ tu -- a.
                                % 34a
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  Ple -- ni sunt cae -- li et ter -- ra,
  glo -- ri -- a, tu -- a.
                                % 35a
  Glo -- ri -- a, __ glo -- ri -- a, __
  glo -- ri -- a, __ glo -- ri -- a, __
  glo -- ri -- a, __ tu -- a. __
                                % 36a
  Ho -- sa -- na __ in ex -- cel -- sis, __
  Ho -- sa -- na __ in ex -- cel -- sis, __
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  et ter -- ra glo -- ri -- a,
  Ple -- ni sunt cae -- li et ter -- ra,
  Ple -- ni sunt cae -- li et ter -- ra,
  glo -- ri -- a, tu -- a.
  Glo -- ri -- a, __ glo -- ri -- a, __
  glo -- ri -- a, __ glo -- ri -- a, __
  glo -- ri -- a, __ tu -- a. __
  \repeat volta 2 {
    Ho -- sa -- na __ in ex -- cel -- sis, __
    Ho -- sa -- na __ in ex -- cel -- sis, __
  }
  \repeat volta 2 {
    Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  }
  Sanc -- tus.
}

wordsBassMidi = \lyricmode {
  \repeat volta 2 {
    "\nSanc" "tus, " Sanc "tus, " Sanc "tus, " Do mi "nus "
  }
  \repeat volta 2 {
    "\nSanc" "tus, " Sa ba "oth, " De "us " Sa ba "oth, "
  }
  "\nSanc" "tus, " Sanc "tus, " Sanc "tus, " Sanc "tus, "
  "\nSanc" "tus, " Sanc "tus, " Sanc "tus, " glo ri "a "  tu "a. "
                                % 34a
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nglo" ri "a, " tu "a. "
                                % 35a
  "\nGlo" ri "a, "  glo ri "a, " 
  "\nglo" ri "a, "  glo ri "a, " 
  "\nglo" ri "a, "  tu "a. " 
                                % 36a
  "\nHo" sa "na "  "in " ex cel "sis, " 
  "\nHo" sa "na "  "in " ex cel "sis, " 
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\net " ter "ra " glo ri "a, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nPle" "ni " "sunt " cae "li " "et " ter "ra, "
  "\nglo" ri "a, " tu "a. "
  "\nGlo" ri "a, "  glo ri "a, " 
  "\nglo" ri "a, "  glo ri "a, " 
  "\nglo" ri "a, "  tu "a. " 
  \repeat volta 2 {
    "\nHo" sa "na "  "in " ex cel "sis, " 
    "\nHo" sa "na "  "in " ex cel "sis, " 
  }
  \repeat volta 2 {
    "\nSanc" "tus, " Sanc "tus, " Sanc "tus, " Do mi "nus "
  }
  "\nSanc" "tus. "
}

pianoRH = \relative {
  \global
  \override NoteHead.style = #'cross
  \repeat unfold 4 {d'8. 16 8. 16 8 8 4|}
  \revert NoteHead.style
  \repeat volta 2 {
    <d f a>4 4 r8. \tuplet 3/2 {a'32-> d,-> a'->} <a d>8-> <d, a'>-> |
    <b e gis>4 4 r8. \tuplet 3/2 {b'32-> e,-> b'->} <gis d'>8-> <e b'>-> |
    <bes d g>4 4 r8. \tuplet 3/2 {g'32-> d-> g->} <g d'>8-> <d g>-> | % 30b
    <a e' f>8. <a d f>16 4 r8. \tuplet 3/2 {a'32-> d,-> a'->} <a d>8-> <d, a'>-> |
  }
  \repeat volta 2 {
    <d f a>4 4 r8. \tuplet 3/2 {a'32-> d,-> a'->} <a d>8-> <d, a'>-> | % 31a
    <b e gis>4 4 r8. \tuplet 3/2 {b'32-> e,-> b'->} <gis d'>8-> <e b'>-> |
    <bes d g>4 4 r8. \tuplet 3/2 {g'32-> d-> g->} <g d'>8-> <d g>-> | % 31b
    <a e' f>8. <a d f>16 4 r8. \tuplet 3/2 {a'32-> d,-> a'->} <a d>8-> <d, a'>-> |
  }
  <a d>1~ | 1 \section | <d f a>8. 16 8 8 8 8 <d e g> q | r8. <d f a>16 8 8 8 8 <b e gis>4 | % 32a
  <d f a>8. 16 8 8 8 8 <d e g> q | r8. <d f a>16 8 8 8 8 <des f bes>4 | <d f a>8. 16 8 8 8 8 <d e g> q |
  r8. <d f a>16 8 8 8 8 <b e gis>4 | <d f a>8. 16 8 8 8 8 <d e g> q | <d f a>8. 16 8 8 <c ees a> q <b d e gis> q | % 33a
  <a e' a>8 <a d e>16 16 <a cis e>8 8 r q q q | % 33b
  r8 <bes e f>16 16 <b d f>8 8 r q q q |
  <c d aes'>8 8 <b e gis> q <d e a> q <cis e a> r \section |
  <d f a>8. 16 8 8 8 8 <d e g> q | r8. <b d f>16 8 8 8 8 <b e gis>4 | <d f a>8. 16 8 8 8 8 <d e g> q | % 34a
  r8. <d f a>16 8 8 8 8 <des f bes>4 | % 34b
  <bes f' g>8. 16 8 8 <bes e g> q <c e a> <c ees a> |
  <a d f>8. 16 8 8 8 8 <bes e g> q |
  <g d' e>8. 16 8 <g b e> <g cis e> q <g cis f> <g cis e> | % 35a
  <g a ees'>8. 16 8 8 <f bes d> q <f bes e> <f bes d> |
  <e a d>8. 16 8 8 <e a cis> q <e a b> <e a cis> |
  <f b d>8. 16 8 8 <g bes d>8 8 <g bes e> <g bes d> | % 35b
  <f a d>8. 16 8 8 <g bes d>8 8 <g bes e> <g bes d> |
  <f b d>8. 16 8 8 <e a d> <e a cis> <e a b> <e a cis> |
  <f a d>8. 16 8 8 8 8 8 8 | % 36a
  q8. 16 8 8 8 r r4 \section \key aes \major |
  <ees' aes bes d>8.-> 16-> 8-> <ees aes bes c>~4 8 <ees aes bes d> |
  <ees aes bes d>4 <ees aes bes c>8 <ees aes bes d> <aes bes ees> <aes bes f'> <ees aes bes d> <ees aes bes c> |
  r8. \tuplet 3/2 {d'32-> a-> d->} <a d a'>4->~8. \tuplet 3/2 {d32-> a-> d->} <a d a'>8-> <d, a' d>-> | % 36b
  r8. \tuplet 3/2 {d'32-> a-> d->} <a d a'>4->~8. \tuplet 3/2 {d32-> a-> d->} <a d a'>16-> 16-> r8 |
  <ees aes bes d>8.-> 16-> 8-> <ees aes bes c>-. ~4 8 <ees aes bes d> | % 37a
  <ees aes bes d>4 8 <es aes bes d> <aes bes ees> <aes bes f'> <ees aes bes d> <ees aes bes c> |
  r8. \tuplet 3/2 {b'32-> fis-> b->} <fis b fis'>4-> ~ 8. \tuplet 3/2 {b32-> fis-> b->} <fis b fis'>8-> <b, fis' b>-> | % 37b
  r8. \tuplet 3/2 {b'32-> fis-> b->} <fis b fis'>4-> ~8. \tuplet 3/2 {b32-> fis-> b->} <fis b fis'>16-> q-> r8 |
  \break \repeat tremolo 64 <d g a d>64 \time 5/4 | % 37c
  \repeat tremolo 32 q64 8 <a' a'>16-> <c c'>-> <d d'>-> <f f'>-> r8 r4 \section \time 4/4 \key f \major |
  <d f a>8. 16 8 8 8 8 <d e g> q | % 38a
  r8 <d f a>16 16 8 8 8 8 <b e gis>4 |
  <d f a>8. 16 8 8 8 8 <d e g> q |
  r8 <d f a>16 16 8 8 8 8 <des f bes>4 | % 38b
  <d f a>8. 16 8 8 8 8 <d e g>8 8 |
  r8 <d f a>16 16 8 8 8 8 <b e gis>4 |
  <d f a>8. 16 8 8 8 8 <des f bes>8 8 | % 38c
  r8 <d f a>16 16 8 8 <c ees a>8 8 <b d e gis>8 8 |
  <a e' a>8 <a d e>16 16 <a cis e>8 8 r q8 8 8 |
  r8 <bes e f>16 16 <b d f>8 8 r q8 8 8 | % 38d
  <c d gis>8 8 <b e gis> q <d e a> q <cis e a> e \section |
  <d, f a>8. 16 8 8 8 8 <d e g> q |
  r8. <d f a>16 8 8 8 8 <b e gis>4 | % 39a
  <d f a>8. 16 8 8 8 8 <d e g> q |
  r8. <d f a>16 8 8 8 8 <des f bes>4 |
  <bes f' g>8. 16 8 8 <bes e g> q <c e a> <c ees a> | % 39b
  <a d f>8. 16 8 8 8 8 <bes e g> <bes d g> |
  <g d' e>8. 16 8 <g b e> <g cis e> q <g cis f> <g cis e> |
  <g a ees'>8. 16 8 8 <f bes d> q <f bes e> <f bes d> | % 40a
  <e a d>8. 16 8 8 <e a cis> q <e a b> <e a cis> |
  <f b d>8. 16 8 8 <g bes d> q <g bes e> <g bes d> |
  <f a d>8. 16 8 8 <g bes d> q <g bes e> <g bes d> | % 40b
  <f b d>8. 16 8 8 <e a d> <e a cis> <e a b> <e a cis> |
  <f a d>8. 16 8 8 8 8 8 8 |
  q8. 16 8 8 8 r r4 \section \key aes \major |
  \repeat volta 2 {
    <ees' aes bes d>8.-> <ees' aes bes d>16-> 8-> 8-> ~4 8 <ees aes bes d> | % 41a
    <ees aes bes d>4 <ees aes bes c>8 <ees aes bes d> <aes bes ees> <aes bes f'> <ees aes bes d> <ees aes bes c> |
    r8. \tuplet 3/2 {d'32-> a-> d->} <a d a'>4-> ~8. \tuplet 3/2 {d32-> a-> d->} <a d a'>8-> <d, a' d>-> | % 41b
    r8. \tuplet 3/2 {d'32-> a-> d->} <a d a'>4-> ~8. \tuplet 3/2 {d32-> a-> d->} <a d a'>8-> q-> |
    <ees, aes bes d>8.-> <ees' aes bes d>16-> 8-> <ees aes bes c>-> ~4 8 <ees aes bes d> | % 42a
    q4 <ees aes bes c>8 <ees aes bes d> <aes bes ees> <aes bes f'> <ees aes bes d> <ees aes bes c> |
    r8. \tuplet 3/2 {b'32-> fis-> b->} <fis b fis'>4-> ~8. \tuplet 3/2 {b32-> fis-> b->} <fis b fis'>8-> <b, fis' b>-> | % 42b
    r8. \tuplet 3/2 {b'32-> fis-> b->} <fis b fis'>4-> ~8. \tuplet 3/2 {b32-> fis-> b->} <fis b fis'>8-> q->
  }
  \repeat tremolo 64 <d g a d>64 \time 5/4 | % 42c
  \repeat tremolo 32 q64 8 <a a'>16-> <c c'>-> <d d'>-> <f f'>-> r8 r4 \section \key f \major \time 4/4 |
  \repeat volta 2 {
    <d, f a>4 4 r8. \tuplet 3/2 {a'32-> d,-> a'->} <a d>8-> <d, a'>-> | % 43a
    <b e gis>4 4 r8. \tuplet 3/2 {b'32-> e,-> b'->} <gis d'>8-> <d gis>-> |
    <bes d g>4 4 r8. \tuplet 3/2 {g'32-> d-> g->} <g d'>8-> <d g>-> |
    <a e' f>8. <a d f>16 4 r8. \tuplet 3/2 {a'32-> d,-> a'->} <a d>8-> <d, a'>-> | % 43b
  }
  <d f a d>4 4 r2 | q4 4 r2 | q4 4 r2 | R1 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s1*3 |
  \repeat volta 2 { s1*4 }
  \repeat volta 2 { s1*4 | }
  s1*7 | % 32
  s1*3 | s1\cresc | s1*2 |
  s1\mp | s1*5 | % 34
  s1*6 |
  s1*2 | s1\mf\cresc | s | s\f | s | % 36
  s1\mf\cresc | s | s\f | s1*2 | s2 s8 s\ff s2 |
  s1\p s1*7 s1\cresc | s1*2 | s1\mp | % 38
  s1*6 |
  s1*7 | % 40
  \repeat volta 2 {
    s1\mf\cresc | s | s\f | s
    s1\mf\cresc | s | s\f | s
  }
  s1 s2 s8 s\ff s2 |
  \repeat volta 2 { s1\p | s1*3 | }
  s1*4 |
}

pianoLH = \relative {
  \global
  \repeat unfold 4 {<bes,, bes,>8 r q r q r q r | }
  \repeat volta 2 {
    q8 r q r q r q r | q r q r q r q r |
    q8 r q r q r q r | q r q r q r q r |
  }
  \repeat volta 2 {
    q8 r q r q r q r | q r q r q r q r |
    q8 r q r q r q r | q r q r q r q r |
  }
  \repeat unfold 5 {q8 r q r q r q r |}
  q8 r q r q r <des, des'> r |
  \repeat unfold 3 {<d d'>8 r q r q r q r |}
  q8 r q r <f f'> r q r |
  <a a'>8 r q r q r q r | % 33b
  <bes bes'>8 r q r q r q r |
  q8 r <e e'> r <a, a'> r q r \section |
  \repeat unfold 3 {<d, d'>8 r q r q r q r |} % 34a
  q8 r q r q r <des des'> r | % 34b
  <c c'>8 r q r q r <f f'> r |
  <bes bes'>8 r q r q r <e, e'> r |
  <a a'>8 r q r q r q r | % 35a
  <f f'>8 r q r <bes bes'> r q r |
  <a a'> r q r q r q r |
  <aes aes'>8 r q r <g g'> r q r | % 35b
  <f f'>8 r q r <g g'> r q r |
  <gis gis'>8 r q r <a a'> r q r |
  <d, d'>8 r q r q r q r | % 36a
  q8 r q r q r r4 \section \key aes \major |
  <aes' aes'>8 r q r q r q r |
  <f f'>8 r q r q r q r |
  <d d'>8-> r q-> r q-> r q-> r % 36b
  q8-> r q-> r q-> r q-> r |
  <aes' aes'>8-> r q-> r q-> r q-> r | % 37a
  <f f'>8-> r q-> r q-> r q-> r |
  <b b'>8-> r q-> r q-> r q-> r | % 37b
  q8-> r q-> r q-> r q-> r |
  <d, d'>8-> r q-> r q-> r q-> r \time 5/4 | % 37c
  q8-> r q-> r q-> <a' a'>16-> <c c'>-> <d d'>-> <f f'>-> r8 r4 \section \key f \major \time 4/4 |
  <d, d'>8 r q r q r q r | % 38a
  q8 r q r q r q r |
  q8 r q r q r q r |
  q8 r q r q r <des des'> r | % 38b
  <d d'>8 r q r q r q r |
  q8 r q r q r q r |
  q8 r q r q r <des des'> r | % 38c
  <d d'>8 r q r <f f'> r <e e'> r |
  <a a'> r q r q r q r |
  <bes bes'>8 r q r q r q r | % 38d
  q8 r <e e'> r <a, a'> r q r \section |
  <d, d'>8 r q r q r q r |
  q8 r q r q r q r | % 39a
  q8 r q r q r q r |
  q8 r q r q r <des des'> r |
  <c c'>8 r q r q r <f f'> r | % 39b
  <bes bes'>8 r q r q r <e, e'> r |
  <a a'> r q r q r q r
  <f f'>8 r q r <bes bes'> r q r | % 40a
  <a a'>8 r q r q r q r |
  <aes aes'>8 r q r <g g'> r q r |
  <f f'>8 r q r <g g'> r q r | % 40b
  <gis gis'>8 r q r <a a'> r q r |
  <d, d'>8 r q r q r q r |
  q8 r q r q r r4 \section \key aes \major |
  \repeat volta 2 {
    <aes' aes'>8-> r q-> r q-> r q-> r | % 41a
    <f f'>8-> r q-> r q-> r q-> r |
    <d d'>8-> r q-> r q-> r q-> r | % 41b
    q8-> r q-> r q-> r q-> r |
    <aes' aes'>8-> r q-> r q-> r q-> r | % 42a
    <f f'>8-> r q-> r q-> r q-> r |
    <b b'>8-> r q-> r q-> r q-> r | % 42b
    q8-> r q-> r q-> r q-> r |
  }
  <c, c'>8-> r q-> r q-> r q-> r \time 5/4 | % 42c
  q8-> r q-> r q-> <a' a'>16-> <c c'>-> <d d'>-> <f f'>-> r8 r4 \section \key f \major \time 4/4 |
  \repeat volta 2 {
    \repeat unfold 4 {<d, d'>8 r q r q r q r |} % 43a
  }
  \repeat unfold 3 {q8 r q r q r q r |}
  q8 r r4 r2 |
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
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
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
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
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
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
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
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
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
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
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
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
   \unfoldRepeats
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
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
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
   \unfoldRepeats
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
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
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
   \unfoldRepeats
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
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
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
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
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
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
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
            \new Voice \pianoRH
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
  \bookOutputSuffix "midi-bass"
  \score {
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
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
            \new Voice \pianoRH
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
