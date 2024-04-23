\version "2.25.15"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Goin' Home"
  subtitle    = \markup{\italic Largo from \italic "From the New World" Op. 95}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Anton Dvořák"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "William Arms Fisher"
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
  \tempo Largo 4=52
  s1
  \set Score.tempoHideNote = ##t
  s1*31 s2 s1*8
  s2. \tempo 4=26 s4 \tempo 4=52
  s1*9 s2 \tempo 4=48 s | s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*5
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "4a" } s1*5
  \textMark \markup { \box "4b" } s1*5
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1 s2 s1
  \textMark \markup { \box "6a" } s1*2
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*4
  \textMark \markup { \box "8a" } s1*4
  \textMark \markup { \box "8b" } s1*4
}

dynamicsSopSolo = {
  s1*31 s2 s1*17 |
  s4\p\<^\markup "SOPRANO SOLO" s\! s\> s\! | s\< s\! s\> s\! | s2\pp s-\markup\italic rit. | s1\ppp |
}

sopranoSolo = \relative {
  \global
  s1*31 s2 s1*17 \break
  g'8. bes16 4 g8 f ees4 | g8. bes16 4 g8 f ees4 | g8. bes16 2 r4 | g8. bes16 2 r4 |
}

wordsSopSolo = \lyricmode {
  Go -- in' home, go -- in' home,
  go -- in' home, go -- in' home,
  go -- in' home, go -- in' home!
}

dynamicsAltoSolo = {
  s1*31 s2 s1*17
  s4\p\<^\markup "ALTO SOLO" s2.\! | s4\< s2.\! | s2\pp s-\markup\italic rit. | s1\ppp |
}

altoSolo = \relative {
  \global
  s1*31 s2 s1*17 \break
  ees'8. g16 4 r2 | ees8. g16 4 r2 | ees8. g16 2 r4 | ees2. r4 | % 8b
}

wordsAltoSolo = \lyricmode {
  Go -- in' home, go -- in' home,
  go -- in' home, home!
}

dynamicsTenorSolo = {
  s1*31 s2 s1*17 |
  s2^\markup "TENOR SOLO" s4\p\> s\! | s2 s4\> s\! | s2\pp s-\markup\italic rit. | s1\ppp |
}

tenorSolo = \relative {
  s1*31 s2 s1*17 \break
  r2 ees'8 bes g4 | r2 ees'8 bes g4~ | 1~ | 2. r4 |
}

wordsTenorSolo = \lyricmode {
  go -- in' home, go -- in' home! __
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s4\p\< s\! s\> s\! |
  s8.\< s16\! s8.\> s16\! s2 | s4\< s\! s\> s\! | s8.\< s16\! s8.\> s16\! s2 | % 2a
  s1\mp | s | s8.\< s16\! s2. |
  s4.\cresc s8\> s2\! | s8.\pp\< s16\! s4 s\> s\! | s8.\< s16\! s8 s\> s2\! | % 3a
  s2\cresc s4\! s\! | s4.\f s8\> s4 s\! | s1 |
  s1\p | s | s | s2\p\< s\! | s1\f | % 4a
  s1\ff | s | s | s | s |
  s1 | s | s\mf | % 5a
  s1\cresc | s2\dim | s2. s8\> s\! |
  s4\p\< s\! s\> s\! | s4 s8. s16\< s8 s4.\! | % 6a
  s4\mf\< s\! s\> s\! | s1 | s8.\< s16\! s4 s\> s\! |
  s1 | s\cresc | s\f | % 7a
  s1 | s | s4\pp\< s\! s\> s\! | s2 s4\< s\! |
  s2\cresc s4\f\cresc s\! | s4 s\> s2\! | s1\p | s\mp | % 8a
  s2\p\> s\! | s1\dim | s2\pp s-\markup\italic rit. | s1\ppp |
}

soprano = \relative {
  \global
  R1 | R | R | R  g'8. bes16 4 g8. f16 ees4 |
  f8. g16 bes8. g16 f2 | g8. bes16 4 g8. f16 ees4 | f8. g16 f8. ees16 2 | % 2a
  c'8. ees16 4 d8 bes c4 | 8 ees d bes c2 | 8. ees16 4 d8 bes c4 |
  c8 ees d bes c2 | g8. bes16 4 g8. f16 ees4 | f8. g16 bes8. g16 f2 | % 3a
  g8. bes16 4 ees8. f16 g4 | f8. ees16 f8 c ees2 | R1 |
  f,4. ees8 f4 c | ees2. r4 | R1 | ees'2(e) | ees <c f>4-> <d f>-> | % 4a
  <ees g>1~ | 4 r r2 | R1 | R | R |
  R1 | R | ees8 g f d ees c d(bes) | % 5a
  ees8 g  f d ees c d(bes) \section \time 2/4 | ees c d bes \section \time 4/4 ees2.(des8 ces) |
  g8. bes16 4 g8. f16 ees4 | f8. g16 bes8. g16 f8(bes4.) | % 6a
  g8. bes16 4 g8. f16 ees4 | f8 g f8. ees16 2 | c'8. ees16 4 d8 bes c4 |
  c8 ees d bes c2 | 8. ees16 4 d8 bes c4 | 8 ees d-- bes-- c2-- | % 7a
  R1\fermata | R | g8. bes16 4 g8. f16 ees4 | f8. g16 bes8. g16 f4(fis) |
  g8. bes16 4 ees8. <ees f>16 <ees g>4 | <ees f>8. ees16 <ees f>8 <ces d> <bes ees>2 | f'8.^\markup SOLO ees16 f8 c ees2 | f,4.^\markup ALL ees8 f4 c | % 8a
  ees2. r4 | ees'2(bes)~ | bes2. r4 | g2. r4 |
  \bar "|."
}

wordsSop = \lyricmode {
  Go -- in' home, go -- in' home, I'm a go -- in' home;
  Qui -- et -- like, some still day,
  I'm jes' go -- in' home.
  It's not far, jes' close by,
  Through an o -- pen door;
  Work all done, care laid by,
  Gwine to fear no more.
  Mo -- ther's there 'spect -- in' me,
  Fa -- ther's wait -- in' too;
  Lots of folk gath -- er'd there,
  All the friends I knew,
  All the friends I knew.
  Home, I'm go -- in' home! __

  No more stum -- blin' on the way,
  No more long -- in' for the day,
  Gwine to roam no more! __
  Morn -- in' star lights the way,
  Res' -- less dream all done; __
  Shad -- ows gone, break o' day,
  Real life jes' be -- gun.
  Dere's no break. ain't no end,
  Jes' a -- liv -- in' on;
  Wide a -- wake, with a smile,
  Go -- in' on and on.

  Go -- in' home, go -- in' home,
  I'm jes' go -- in' home,
  It's not far, jes' close by
  Through an o -- pen door.
  I'm a go -- in' home,
  I'm jes' go -- in' home.
  Home! __ home!
}

wordsSopMidi = \lyricmode {
  "Go" "in' " "home, " go "in' " "home, " "I'm " "a " go "in' " "home; "
  "\nQui" et "like, " "some " "still " "day, "
  "\nI'm " "jes' " go "in' " "home. "
  "\nIt's " "not " "far, " "jes' " "close " "by, "
  "\nThrough " "an " o "pen " "door; "
  "\nWork " "all " "done, " "care " "laid " "by, "
  "\nGwine " "to " "fear " "no " "more. "
  "\nMo" "ther's " "there " 'spect "in' " "me, "
  "\nFa" "ther's " wait "in' " "too; "
  "\nLots " "of " "folk " gath "er'd " "there, "
  "\nAll " "the " "friends " "I " "knew, "
  "\nAll " "the " "friends " "I " "knew. "
  "\nHome, " "I'm " go "in' " "home! " 

  "\nNo " "more " stum "blin' " "on " "the " "way, "
  "\nNo " "more " long "in' " "for " "the " "day, "
  "\nGwine " "to " "roam " "no " "more! " 
  "\nMorn" "in' " "star " "lights " "the " "way, "
  "\nRes'" "less " "dream " "all " "done; " 
  "\nShad" "ows " "gone, " "break " "o' " "day, "
  "\nReal " "life " "jes' " be "gun. "
  "\nDere's " "no " "break. " "ain't " "no " "end, "
  "\nJes' " a liv "in' " "on; "
  "\nWide " a "wake, " "with " "a " "smile, "
  "\nGo" "in' " "on " "and " "on. "

  "\nGo" "in' " "home, " go "in' " "home, "
  "\nI'm " "jes' " go "in' " "home, "
  "\nIt's " "not " "far, " "jes' " "close " "by "
  "\nThrough " "an " o "pen " "door. "
  "\nI'm " "a " go "in' " "home, "
  "\nI'm " "jes' " go "in' " "home. "
  "\nHome! "  "home! "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s4\p\< s\! s\> s\! |
  s8.\< s16\! s8.\> s16\! s2 | s4\< s\! s\> s\! | s8.\< s16\! s8.\> s16\! s2 | % 2a
  s1 | s | s8. s16 s2. |
  s4.\cresc s8\> s2\! | s8.\pp\< s16\! s4 s\> s\! | s8.\< s16\! s8 s\> s2\! | % 3a
  s2\cresc s4\! s\! | s4.\f s8\> s4 s\! | s1 |
  s1\p | s\p | s2\p\< s\! | s2\p\< s\! | s1\f | % 4a
  s1\ff | s | s | s | s |
  s1 | s\p | s | % 5a
  s1 | s2\dim | s2\< s\> |
  s4\p\< s\! s\> s\! | s2 s8 s4\< s8\! | % 6a
  s4\mf\< s\! s\> s\! | s1 | s |
  s1 | s\cresc | s\f | % 7a
  s1 | s | s4\pp\< s\! s\> s\! | s2 s4.\< s8\! |
  s2\cresc s4\f\cresc s\! | s4 s\> s2\! | s1 | s\mp | % 8a
  s2\p\> s\! | s1\dim | s2\pp s-\markup\italic rit. | s1\ppp |
}

alto = \relative {
  \global
  R1 | R | R | R | ees'8. g16 4 ees8. bes16 4 |
  d8. 16 8. 16 2 | ees8. g16 4 ees8. 16 4 | 8. 16 d8. bes16 2 | % 2a
  R1 | R | ees4 4 8 8 4 |
  aes8 c bes g aes2 | ees8. g16 4 ees8. bes16 4 | d8. 16 8. 16 2 | % 3a
  ees8. g16 f4 g8. 16 4 | <f aes>8. <ees aes>16 <f aes>8 <c aes'> <ees g>2 | R1 |
  c4. 8 4 aes | bes2. r4 | ees2(e) | <g bes>(~<g c>) | <aes c>2 4-> 4-> | % 4a
  <g bes>1-> ~ | 4 r r2 | R1 | R | R |
  R1 | c,8 ees d bes c2 | R1 | % 5a
  g'2 2 \section | g8 8 8 8 \section | 4(aes a2) |bes8. g16 4 ees8. bes16 4 | d8. 16 8. 16 8 aes'8 g(f) | % 6a
  ees8. g16 4 ees8. 16 4 | 8 8 d8. bes16 2 | ees2 2 |
  ees2 2 | 8. 16 4 8 8 4 | aes8 c bes-- g-- aes2-- | % 7a
  R1\fermata | R | ees8. g16 4 ees8. bes16 g4 | bes8. ees16 f8. ees16 d4(c8 ces) |
  bes8. g'16 f4 <g c>8. <f c'>16 <g bes>4 | <aes ces>8. 16 8 <f aes> <ees g>2 | R1 | c4. 8 4 aes | % 8a
  bes2. r4 | <ees g>1~ | 2. r4 | ees2. r4 |
  \bar "|."
}

wordsAlto = \lyricmode {
  Go -- in' home, go -- in' home, I'm a go -- in' home;
  Qui -- et -- like, some still day,
  I'm jes' go -- in' home.
  Work done, care laid by,
  Gwine to fear no more.
  Mo -- ther's there 'spect -- in' me,
  Fa -- ther's wait -- in' too;
  Lots of folk gath -- er'd there,
  All the friends I knew,
  All the friends I knew.
  Home, home, I'm go -- in' home! __

  No more fret nor pain,
  No more
  Gwine to roam no more! __
  Morn -- in' star lights the way,
  Res' -- less dream all done, all done,
  Shad -- ows gone, break o' day,
  Real life jes' be -- gun.
  No break, no end;
  Wide a -- wake, with a smile,
  Go -- in' on and on.

  Go -- in' home, go -- in' home,
  I'm jes' go -- in' home, __
  It's not far, jes' close by
  Through an o -- pen door.
  I'm jes' go -- in' home.
  Home! __ home!
}

wordsAltoMidi = \lyricmode {
  "Go" "in' " "home, " go "in' " "home, " "I'm " "a " go "in' " "home; "
  "\nQui" et "like, " "some " "still " "day, "
  "\nI'm " "jes' " go "in' " "home. "
  "\nWork " "done, " "care " "laid " "by, "
  "\nGwine " "to " "fear " "no " "more. "
  "\nMo" "ther's " "there " 'spect "in' " "me, "
  "\nFa" "ther's " wait "in' " "too; "
  "\nLots " "of " "folk " gath "er'd " "there, "
  "\nAll " "the " "friends " "I " "knew, "
  "\nAll " "the " "friends " "I " "knew. "
  "\nHome, " "home, " "I'm " go "in' " "home! " 

  "\nNo " "more " "fret " "nor " "pain, "
  "\nNo " "more "
  "\nGwine " "to " "roam " "no " "more! " 
  "\nMorn" "in' " "star " "lights " "the " "way, "
  "\nRes'" "less " "dream " "all " "done, " "all " "done, "
  "\nShad" "ows " "gone, " "break " "o' " "day, "
  "\nReal " "life " "jes' " be "gun. "
  "\nNo " "break, " "no " "end; "
  "\nWide " a "wake, " "with " "a " "smile, "
  "\nGo" "in' " "on " "and " "on. "

  "\nGo" "in' " "home, " go "in' " "home, "
  "\nI'm " "jes' " go "in' " "home, " 
  "\nIt's " "not " "far, " "jes' " "close " "by "
  "\nThrough " "an " o "pen " "door. "
  "\nI'm " "jes' " go "in' " "home. "
  "\nHome! "  "home! "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s4\p\< s\! s\> s\! |
  s8.\< s16\! s8.\> s16\! s2 | s4\< s\! s\> s\! | s8.\< s16\! s8.\> s16\! s2 | % 2a
  s1\mp | s | s8.\< s16\! s4. s8\> s4\! |
  s4.\cresc s8\> s2\! | s8.\pp\< s16\! s4 s\> s\! | s8.\< s16\! s8 s\> s2\! | % 3a
  s2\cresc s4\! s\! | s4.\f s8\> s4 s\! | s1 |
  s1\p | s | s2\p\< s\! | s2\p\< s\! | s1\f | % 4a
  s1\ff | s | s | s | s |
  s1\p | s | s\mf | % 5a
  s1 | s2\dim | s4\< s4.\! s8 s8\> s\! |
  s4\p\< s\! s\> s\! | s2 s8 s8\< s4\! | % 6a
  s4\mf\< s\! s\> s\! | s1 | s1 |
  s1 | s\cresc | s\f | % 7a
  s1 | s | s | s |
  s2\cresc s4\f\cresc s\! | s4 s\> s2\! | s1 | s\mp | % 8a
  s2\p\> s\! | s1\dim | s2\pp s-\markup\italic rit. | s1\ppp |
}

tenor = \relative {
  \global
  R1 | R | R | R | bes8. ees16 4 bes8. aes16 g4 |
  aes8. g16 f8. g16 aes2 | bes8. ees16 4 bes8. 16 4 | c8. 16 aes8. 16 g2 | % 2a
  aes8. c16 4 bes8 g aes4 | 8 c bes g aes2 | 8. c16 4 bes8 g aes4 |
  c8 ees d bes c2 | bes8. ees16 4 bes8. aes16 g4 | aes8. g16 f8. g16 aes2 | % 3a
  bes8. 16 4 c8. d16 ees4 | c8. 16 8. 16 bes2 | R1 |
  aes4. 8 4 f | g2. r4 | ees'2(e) | ees(c) | es <c f>4-> <d f>-> | % 4a
  <ees g>1-> ~ | 4 r r2 | R1 | R | R |
  c8 ees d bes c2 | R1 | c8 ees d bes c aes bes(g) | % 5a
  R1 \section | c8 aes bes g \section | c4(ces2.) |
  bes8. ees16 4 bes8. aes16 g4 | aes8. g16 f8. g16 aes8 c d4 | % 6a
  bes8. ees16 4 b8. 16 4 | c8 8 aes8. 16 g2 | R1 |
  aes8 c bes g aes2 | bes8. ees16 4 d8 bes c4 | 8 ees d-- bes-- c2-- | % 7a
  R1\fermata | R | R | R |
  ees8. bes16 4 g8. aes16 bes4 | ces8. 16 8 8 bes2 | R1 | aes4. 8 4 f | % 8a
  g2. r4 | <g bes>1~ | 1~ | 2. r4 |
  
  \bar "|."
}

wordsTenor = \lyricmode {
  Go -- in' home, go -- in' home, I'm a go -- in' home;
  Qui -- et -- like, some still day,
  I'm jes' go -- in' home.
  It's not far, jes' close by,
  Through an o -- pen door;
  Work all done, care laid by,
  Gwine to fear no more.
  Mo -- ther's there 'spect -- in' me,
  Fa -- ther's wait -- in' too;
  Lots of folk gath -- er'd there,
  All the friends I knew,
  All the friends I knew.
  Home, home, I'm go -- in' home! __

  No -- thin' lost, all's gain,
  No more stum -- blin' on the way,
  Gwine to roam no more! __
  Morn -- in' star lights the way,
  Res' -- less dream all done, all done,
  Shad -- ows gone, break o' day,
  Real life jes' be -- gun.
  Jes' a -- liv -- in' on;
  Wide a -- wake, with a smile,
  Go -- in' on and on.

  It's not far, jes' close by
  Through an o -- pen door.
  I'm jes' go -- in' home.
  Home! __ home!
}

wordsTenorMidi = \lyricmode {
  "Go" "in' " "home, " go "in' " "home, " "I'm " "a " go "in' " "home; "
  "\nQui" et "like, " "some " "still " "day, "
  "\nI'm " "jes' " go "in' " "home. "
  "\nIt's " "not " "far, " "jes' " "close " "by, "
  "\nThrough " "an " o "pen " "door; "
  "\nWork " "all " "done, " "care " "laid " "by, "
  "\nGwine " "to " "fear " "no " "more. "
  "\nMo" "ther's " "there " 'spect "in' " "me, "
  "\nFa" "ther's " wait "in' " "too; "
  "\nLots " "of " "folk " gath "er'd " "there, "
  "\nAll " "the " "friends " "I " "knew, "
  "\nAll " "the " "friends " "I " "knew. "
  "\nHome, " "home, " "I'm " go "in' " "home! " 

  "\nNo" "thin' " "lost, " "all's " "gain, "
  "\nNo " "more " stum "blin' " "on " "the " "way, "
  "\nGwine " "to " "roam " "no " "more! " 
  "\nMorn" "in' " "star " "lights " "the " "way, "
  "\nRes'" "less " "dream " "all " "done, " "all " "done, "
  "\nShad" "ows " "gone, " "break " "o' " "day, "
  "\nReal " "life " "jes' " be "gun. "
  "\nJes' " a liv "in' " "on; "
  "\nWide " a "wake, " "with " "a " "smile, "
  "\nGo" "in' " "on " "and " "on. "

  "\nIt's " "not " "far, " "jes' " "close " "by "
  "\nThrough " "an " o "pen " "door. "
  "\nI'm " "jes' " go "in' " "home. "
  "\nHome! "  "home! "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s4\p\< s\! s\> s\! |
  s8.\< s16\! s8.\> s16\! s2 | s4\< s\! s\> s\! | s8.\< s16\! s8.\> s16\! s2 | % 2a
  s1 | s | s8.\< s16\! s4. s8\> s4\! |
  s4.\cresc s8\> s2\! | s8.\pp\< s16\! s4 s\> s\! | s8.\< s16\! s8 s\> s2\! | % 3a
  s2\cresc s4\! s\! | s4.\f s8\> s4 s\! | s1 |
  s1\p | s | s | s | s1\f | % 4a
  s1\ff | s | s | s | s |
  s1 | s | s | % 5a
  s1\cresc | s2\dim | s4\< s\! s s8\> s\! |
  s4\p\< s\! s\> s\! | s2 s8 s\< s4\! | % 6a
  s4\mf\< s\! s\> s\! | s1 | s8.\< s16\! s4 s\> s\! |
  s1 | s\cresc | s\f | % 7a
  s1 | s | s | s |
  s2\cresc s4\f\cresc s\! | s4 s\> s2\! | s1 | s\mp | % 8a
  s2\p\> s\! | s1\dim | s2\pp s-\markup\italic rit. | s1\ppp |
}

bass = \relative {
  \global
  R1 | R | R | R | ees8. 16 4 8. 16 4 |
  bes8. 16 8. 16 2 | ees8. 16 4 g8. 16 4 | aes8. aes,16 bes8. 16 ees2 | % 2a
  R1 | R | aes8. c16 4 bes8 g aes4 |
  aes8 c bes g aes2 | ees8. 16 4 8 bes8 g'(ees) | bes8. 16 8. 16 2 | % 3a
  ees8. 16 d4 c8. 16 bes4 | aes8. 16 8 8 ees'2 | R1 |
  <aes, ees'>4. 8 4 4 | <ees ees'>2. r4 | R1 | R | <aes' c>2 <f c'>4-> <f aes>-> | % 4a
  <ees bes'>1-> ~ | 4 r r2 | R1 | R | R |
  R1*3 | % 5a
  c'8 ees d bes c aes bes(g) \section | c aes bes g \section | ees1 |
  ees4 bes ees(g) | bes,8. 16 8. 16 8 c' bes(aes) | % 6a
  ees8. 16 4 g8. 16 4 | aes8 aes, bes8. 16 ees2 | aes8. c16 4 bes8 g aes4 |
  aes8 c bes g aes2 | 8. c16 4 bes8 g aes4 | 8 c bes-- g-- aes2-- | % 7a
  R1\fermata | R | R | R |
  ees8. 16 d4 c8. 16 bes4 | <aes ees>8. 16 8 8 ees'2 | R1 | q4. 8 4 4 | % 8a
  <ees ees'>2. r4 | <ees bes'>1~ | 1~ | 2. r4 |
                             
  \bar "|."
}

wordsBass = \lyricmode {
  Go -- in' home, go -- in' home, I'm a go -- in' home;
  Qui -- et -- like, some still day,
  I'm jes' go -- in' home.
  Work all done, care laid by,
  Gwine to fear no more.
  Mo -- ther's there 'spect -- in' me,
  Fa -- ther's wait -- in' too;
  Lots of folk gath -- er'd there,
  All the friends I knew,
  All the friends I knew.
  I'm go -- in' home! __

  No more long -- in' for the day, __
  Gwine to roam no more! __
  Morn -- in' star __
  Res' -- less dream all done, all done, __
  Shad -- ows gone, break o' day,
  Real life jes' be -- gun.
  Dere's no break, ain't no end,
  Jes' a -- liv -- in' on;
  Wide a -- wake, with a smile,
  Go -- in' on and on.

  It's not far, jes' close by
  Through an o -- pen door.
  I'm jes' go -- in' home.
  Home! __ home!
}

wordsBassMidi = \lyricmode {
  "Go" "in' " "home, " go "in' " "home, " "I'm " "a " go "in' " "home; "
  "\nQui" et "like, " "some " "still " "day, "
  "\nI'm " "jes' " go "in' " "home. "
  "\nWork " "all " "done, " "care " "laid " "by, "
  "\nGwine " "to " "fear " "no " "more. "
  "\nMo" "ther's " "there " 'spect "in' " "me, "
  "\nFa" "ther's " wait "in' " "too; "
  "\nLots " "of " "folk " gath "er'd " "there, "
  "\nAll " "the " "friends " "I " "knew, "
  "\nAll " "the " "friends " "I " "knew. "
  "\nI'm " go "in' " "home! " 

  "\nNo " "more " long "in' " "for " "the " "day, " 
  "\nGwine " "to " "roam " "no " "more! " 
  "\nMorn" "in' " "star " 
  "\nRes'" "less " "dream " "all " "done, " "all " "done, " 
  "\nShad" "ows " "gone, " "break " "o' " "day, "
  "\nReal " "life " "jes' " be "gun. "
  "\nDere's " "no " "break, " "ain't " "no " "end, "
  "\nJes' " a liv "in' " "on; "
  "\nWide " a "wake, " "with " "a " "smile, "
  "\nGo" "in' " "on " "and " "on. "

  "\nIt's " "not " "far, " "jes' " "close " "by "
  "\nThrough " "an " o "pen " "door. "
  "\nI'm " "jes' " go "in' " "home. "
  "\nHome! "  "home! "
}

lh = { \change Staff = pianolh }
rh = { \change Staff = pianorh }

pianoRHone = \relative {
  \global
  <ais cis fis>2 <g c g'> |
  <ais cis fis>2 <bes ees g> |
  <ces ees ges>2 <ces ees aes> |
  <bes ees bes'>1 |
  <g bes ees g>2\arpeggio q\arpeggio |
  <aes bes d f>8.\arpeggio (<bes d g>16 <bes d bes'>8. <bes d g>16 <bes d f>2) | % 2a
  <g bes ees g>2\arpeggio <b ees g>\arpeggio |
  f'8.(g16 <d f>8. <bes ees>16 <g bes ees>2) |
  c'8.(ees16 4 d8 bes c4) | % 2b
  c8(ees d bes c2) |
  c8.( ees16 4 d8 bes c4) |
  c8(ees d bes c2) | % 3a
  g8.(bes16 4 g8. f16 ees4) |
  <aes, bes d f>8.\arpeggio(<bes d g>16 <bes d bes'>8. <bes d g>16 <bes d f>2) |
  g'8.(bes16 4 <ees, ees'>8. <f f'>16 <g bes ees g>4) | % 3b
  <f f'>8.(<ees ees'>16 <f f'>8 <c aes' c> <ees g ees'>2) |
  f'8.(ees16 f8 c ees2) |
  f4.(ees8 f4 c | % 4a
  <g ees'>1) |
  \ov <g' bes ees>2(<e a e'>) |
  <g bes ees>2(<e g c e>) |
  \vt <ees aes c ees>2(<f aes f'> |
  <g bes ees g>2) <g, bes ees g>~ | % 4b
  q1 |
  \vo g'8.(bes16 4 aes8 f g4) |
  ees8(g f d ees2) |
  g8.(bes16 4 aes8 f g4) |
  ees8(g f d ees2) | % 5a
  ees8(g f d ees2) |
  ees8(g f d ees c d bes) |
  ees8( g f d ees c d bes) \section \time 2/4 | % 5b
  ees8(c d bes \section \time 4/4 |
  ees2. des8 ces)
  g8.(bes16 <<{s4 g8. f16 ees4)} \new Voice {\vo bes'4~ \vt <bes, bes'>2}>> % 6a
  \vo <aes bes d f>8.\arpeggio(<bes d g>16 <bes d bes'>8. <bes d g>16 <bes d f>8 \vt aes'8[g f]) |
  \vo g8.(bes16 4 g8. f16 ees4) | % 6b
  <c ees c'>4(<d d'> ees'2) |
  c8.(ees16 4 d8 bes c4) |
  c8(ees d bes c2) | % 7a
  c8.(ees16 4 d8 bes c4) |
  c8(ees d-> bes-> c2->) |
  c8(ees8 4 d8 bes) r4\fermata | % 7b
  c2 \ov r |
  <ees, g>8.(<g bes>16 4) <ees g>8.(<bes f'>16 <g ees'>4) |
  <bes f'>8.(<ees g>16 <f bes>8. <ees g>16 \vo f4 fis) |
  g8.(bes16 4 <ees, ees'>8. <f f'>16 <g bes ees g>4) | % 8a
  f'8.(ees16 f8 d ees4) g8( bes |
  f8. ees16 f8 c <g ees'>2) |
  f'4. ees8 f4 c |
  ees2 s | % 8b
  ees2 s |
  bes4 s2 \oneVoice r4 |
  <ees, g>8.(bes'16 2) r4 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s1*5
  s1 | s | <c' ees>4 s2. | % 2a
  ees1 | ees | ees |
  ees1 | <bes ees g>2\arpeggio <g bes ees>\arpeggio | s1 | % 3a
  <bes ees>4 <bes f'> <g' c> s | <aes c>4 s2. | c4 s8 f, g2 |
  c2. f,4 | s1 | s | s | s2 \vo c''4-> d-> | % 4a
  s1 | s | \vt bes,1 | g | bes |
  g2~8 4 8~ | 2~8 4 8~ | 1 | % 5a
  g1 | g2 | g4 aes <fis a>2 |
  <bes, ees g>2 s | s2 s8 \vo <d bes'>4.| % 6a
  \vt <bes ees g>2 <b ees b'> | f'8 g f8. ees16~2 | ees8 4 4 4 8~ |
  ees8 4 8 r8 4 8~ | 8 4 8 8 4 8~ | 8 8 8 8 8 4 8~ | % 7a
  ees8 4 4 8 s4 | ees8(4 8) s2 | s1 | s2 d4 \showStaffSwitch \lh c8 ces |
  \hideStaffSwitch \rh ees4 f c' s | <f, aes>2 g | <c c'>4 s2. | c2. f,4 | % 8a
  <<{\vt <ees g>8.(<g bes>16 q4) ~ \vo bes2} \new Voice {\vt s2 g8(f ees4)} >> | % 8b
  <<{\vt <ees g>8.(<g bes>16 q4) ~ \vo bes2} \new Voice {\vt s2 g8(f ees4)} >> |
  \vt <ees g>8.(16 <g bes>2) s4 | s1 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\mp\< s\> | s\< s\> | s\< s\> | s2.\f\> s4\! | s1\pp |
  s8.\> s16\! s4\> s2\! | s2\< s\> | s4\< s\> s2\pp | % 2a
  s4\p\< s\! s\> s\! | s8\< s\! s4\> s2\! | s8.\< s16\! s2. |
  s4.\cresc s8\> s2\! | s1\pp | s8.\< s16\! s8. s16\> s2\! | % 3a
  s2\cresc s4\< s\! | s4.\f s8\> s2\! | s1\pp |
  s2\p s4\> s\! | s1\pp | s2\p\< s\! | s2\p\< s\! | s1\f | % 4a
  s2\ff s\> | s1 | s\! | s | s |
  s1\p | s | s\mf | % 5a
  s1\cresc | s2\dim | s2 s\> |
  s1\p | s2 s8\< s4.\! | % 6a
  s4\mf\< s\! s2\> | s1\! | s4\< s2.\! |
  s1 | s\cresc | s\f | % 7a
  s1\dim | s\p | s\pp | s2 s\< |
  s2\cresc s\f\< | s4\! s\> s2\! | s4\p s\> s2\! | s1\mp | % 8a
  s4\p\< s\! s2\> | s4\< s\! s\> s\! | s1\pp | s\ppp |
}

pianoLHone = \relative {
  \global
  <fis, cis' fis>2 <e c' e> |
  <fis cis' fis>2 <ees bes' ees> |
  <ces' ees> \vo ees4-- f-- |
  <ees g>1-- |
  \oneVoice <ees, bes' ees>2\arpeggio q\arpeggio |
  \vo f'8.\arpeggio(g16 f8. g16 aes2) | % 2a
  \oneVoice <ees, bes' ees>2\arpeggio <g ees' g>\arpeggio |
  <aes ees' aes>4 <bes aes'> <ees, bes' ees>2 |
  \vo aes'8(c8 4 bes8 f g4) | % 2b
  aes8(c bes g aes2) |
  aes8(c8 4 bes8 g aes4) |
  aes8(c bes g aes2) | % 3a
  ees2~8(bes g' ees) |
  f8.\arpeggio(g16 f8. g16 aes2) |
  <ees, ees'>4 <d d'> <c c'> <bes bes'> | % 3b
  <aes' ees' aes>2 <ees bes' ees> |
  <aes' ees'>2 <ees bes'> |
  <aes ees>1 | % 4a
  <ees bes'>1 \clef treble |
  <ees' bes' ees>2(<cis a' cis>) |
  <ees bes' ees>2(<c g' c>) |
  s2 c'4-> d-> |
  << {<ees, g bes ees>1->  s } \new Voice {\vo s2 \clef bass <c, bes' ees>2->~ | q1} >>| % 4b
  ees'8(g8 4 f8 d ees4) | % 4b++
  c8(ees d bes c2) |
  ees8(g8 4 f8 d ees4) |
  c8(ees d bes c2) | % 5a
  c8(ees d bes c2) |
  c8(ees d bes c aes bes g) |
  c8(ees d bes c aes bes g) | % 5b
  \section c8(aes bes g \section |
  c4 ces2.) |
  r2 ees,4(f) | % 6a
  f8.\arpeggio ( g16 f8. g16 aes8 c[bes aes]) |
  \oneVoice <ees, bes' ees>2 <g ees' g> | % 6b
  <aes f' aes>4 <bes aes' bes> <ees g bes>2 |
  \vo aes8(c c4 bes8 g aes4) |
  aes8(c bes g aes2) | % 7a
  aes8(c c4 bes8 g aes4) |
  aes8(c bes-> g-> aes2->) |
  aes8(c c4 bes8 g) \oneVoice r4\fermata | % 7b
  \vo aes2 \oneVoice r |
  ees1~ |
  ees1 |
  bes'4 4 g8. aes16 bes4 | % 8a
  \oneVoice <aes, ees' ces'>2\arpeggio <ees' bes'> |
  \vo ees'4. f8 bes,2 |
  <aes ees'>1 |
  bes4 s ees8(bes g4) | % 8b
  s2 ees'8(bes g4) |
  <ees, bes'>1~ |
  q2. r4 |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  s1 | s | s | r4 \vo \repeat tremolo 8 {ees,32_\sfp ees,_~} ees4 | s1 |
  \vt <ees' bes'>4\arpeggio bes'4~2 | s1 | s | % 2a
  <aes ees'>1 | 1 | 1 |
  q1 | <ees bes'> | <ees bes'>4\arpeggio bes'4~2 | % 3a
  s1*3 |
  s1 | % 4a
  \vt \tuplet 3/2 {r8 \vo ees,(bes'} \tuplet 3/2 {ees g bes} \tuplet 3/2 {ees \rh \vt g bes} \tuplet 3/2 {ees g bes)} \lh |
  s1 | s | <aes, c>2 <f aes> |
  s2 r8 \repeat tremolo 6 {ees,,32 ees,~} | ees1 | <ees'' bes'>1 | ees | q | % 4b
  ees1 | ees | ees | % 5a
  ees1 \section | ees2 \section | ees1 |
  <<{\vth r4 bes2.} \new Voice {ees,1}>> | \vt <ees bes'>4\arpeggio bes'4 8 c'[bes aes] | % 6a
  s1 | s | <aes, ees'>1 |
  q1 | q | q | % 7a
  q2. s4 | q2 s | s1 | s |
  ees'4 d c bes | s1 | aes'2 ees | s1 | % 8a
  ees1 | <ees, bes'>1 | s | s |
  \bar "|."
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Solo soprano staff
          \new Staff = sopranosolo \with {
            instrumentName = "Solo Soprano"
            shortInstrumentName = SolS
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics \wordsSopSolo
          >>
                                % Solo alto staff
          \new Staff = altosolo \with {
            instrumentName = "Solo Alto"
            shortInstrumentName = SolA
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics \wordsAltoSolo
          >>
                                % Solo tenor staff
          \new Staff = tenorsolo \with {
            instrumentName = "Solo Tenor"
            shortInstrumentName = SolT
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics \wordsTenorSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \consists Span_arpeggio_engraver
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \set Staff.connectArpeggios = ##t
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
        \accidentalStyle Score.modern-cautionary
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo soprano staff
          \new Staff = sopranosolo \with {
            instrumentName = "Solo Soprano"
            shortInstrumentName = SolS
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics \wordsSopSolo
          >>
                                % Solo alto staff
          \new Staff = altosolo \with {
            instrumentName = "Solo Alto"
            shortInstrumentName = SolA
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics \wordsAltoSolo
          >>
                                % Solo tenor staff
          \new Staff = tenorsolo \with {
            instrumentName = "Solo Tenor"
            shortInstrumentName = SolT
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics \wordsTenorSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \consists Span_arpeggio_engraver
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \set Staff.connectArpeggios = ##t
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
        \accidentalStyle Score.modern-cautionary
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
                                % Solo soprano staff
          \new Staff = sopranosolo \with {
            instrumentName = "Solo Soprano"
            shortInstrumentName = SolS
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} {\teeny \dynamicsSopSolo}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Solo alto staff
          \new Staff = altosolo \with {
            instrumentName = "Solo Alto"
            shortInstrumentName = SolA
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} {\teeny \dynamicsAltoSolo}
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Solo tenor staff
          \new Staff = tenorsolo \with {
            instrumentName = "Solo Tenor"
            shortInstrumentName = SolT
          }
          <<
            \clef "treble_8"
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenorsolo} {\teeny \dynamicsTenorSolo}
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
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
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \consists Span_arpeggio_engraver
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \set Staff.connectArpeggios = ##t
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
        \accidentalStyle Score.modern-cautionary
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
                                % Solo soprano staff
          \new Staff = sopranosolo \with {
            instrumentName = "Solo Soprano"
            shortInstrumentName = SolS
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} {\teeny \dynamicsSopSolo}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Solo alto staff
          \new Staff = altosolo \with {
            instrumentName = "Solo Alto"
            shortInstrumentName = SolA
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} {\teeny \dynamicsAltoSolo}
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Solo tenor staff
          \new Staff = tenorsolo \with {
            instrumentName = "Solo Tenor"
            shortInstrumentName = SolT
          }
          <<
            \clef "treble_8"
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenorsolo} {\teeny \dynamicsTenorSolo}
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
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
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \consists Span_arpeggio_engraver
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \set Staff.connectArpeggios = ##t
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
        \accidentalStyle Score.modern-cautionary
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
                                % Solo soprano staff
          \new Staff = sopranosolo \with {
            instrumentName = "Solo Soprano"
            shortInstrumentName = SolS
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} {\teeny \dynamicsSopSolo}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Solo alto staff
          \new Staff = altosolo \with {
            instrumentName = "Solo Alto"
            shortInstrumentName = SolA
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} {\teeny \dynamicsAltoSolo}
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Solo tenor staff
          \new Staff = tenorsolo \with {
            instrumentName = "Solo Tenor"
            shortInstrumentName = SolT
          }
          <<
            \clef "treble_8"
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenorsolo} {\teeny \dynamicsTenorSolo}
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
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
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \consists Span_arpeggio_engraver
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \set Staff.connectArpeggios = ##t
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
        \accidentalStyle Score.modern-cautionary
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
                                % Solo soprano staff
          \new Staff = sopranosolo \with {
            instrumentName = "Solo Soprano"
            shortInstrumentName = SolS
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} {\teeny \dynamicsSopSolo}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Solo alto staff
          \new Staff = altosolo \with {
            instrumentName = "Solo Alto"
            shortInstrumentName = SolA
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} {\teeny \dynamicsAltoSolo}
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Solo tenor staff
          \new Staff = tenorsolo \with {
            instrumentName = "Solo Tenor"
            shortInstrumentName = SolT
          }
          <<
            \clef "treble_8"
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenorsolo} {\teeny \dynamicsTenorSolo}
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
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
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \consists Span_arpeggio_engraver
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \set Staff.connectArpeggios = ##t
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
        \accidentalStyle Score.modern-cautionary
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
                                % Solo soprano staff
          \new Staff = sopranosolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
%            \addlyrics \wordsSopSoloMidi
          >>
                                % Solo alto staff
          \new Staff = altosolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
%            \addlyrics \wordsAltoSoloMidi
          >>
                                % Solo tenor staff
          \new Staff = tenorsolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
%            \addlyrics \wordsTenorSoloMidi
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
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
            \consists Span_arpeggio_engraver
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
  \paper {
    output-suffix = midi-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo soprano staff
          \new Staff = sopranosolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
%            \addlyrics \wordsSopSoloMidi
          >>
                                % Solo alto staff
          \new Staff = altosolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
%            \addlyrics \wordsAltoSoloMidi
          >>
                                % Solo tenor staff
          \new Staff = tenorsolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
%            \addlyrics \wordsTenorSoloMidi
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
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
            \consists Span_arpeggio_engraver
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
  \paper {
    output-suffix = midi-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo soprano staff
          \new Staff = sopranosolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
%            \addlyrics \wordsSopSoloMidi
          >>
                                % Solo alto staff
          \new Staff = altosolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
%            \addlyrics \wordsAltoSoloMidi
          >>
                                % Solo tenor staff
          \new Staff = tenorsolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
%            \addlyrics \wordsTenorSoloMidi
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
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
            \consists Span_arpeggio_engraver
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
  \paper {
    output-suffix = midi-bass
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo soprano staff
          \new Staff = sopranosolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
%            \addlyrics \wordsSopSoloMidi
          >>
                                % Solo alto staff
          \new Staff = altosolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
%            \addlyrics \wordsAltoSoloMidi
          >>
                                % Solo tenor staff
          \new Staff = tenorsolo \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
%            \addlyrics \wordsTenorSoloMidi
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
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
            \consists Span_arpeggio_engraver
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
