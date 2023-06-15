\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Love's Old Sweet Song"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. L. Molloy"
  arranger    = "Arr. G. van den Dyck"
%  opus        = "opus"

  poet        = "C. Clifton Bingham"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 3/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante con moto." 4=110
  s2.*3
  \tempo 4=100 s2.*5 \time 4/4
  s1*12
  \tempo 4=90 s1 \time 3/4 % 3b+3
  \tempo 4=100 s2.*16
  \tempo 4=90 s2.*6 \time 4/4
  s1*12
  \tempo 4=80 s1 \time 3/4
  \tempo 4=90 s2.*19
  \tempo 4=80 s2.
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s2.*3
  \textMark \markup { \box "1b" } s2.*5 \time 4/4
  \textMark \markup { \box "1c" } s1*3
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "3a" } s1*4 \time 3/4
  \textMark \markup { \box "3b" } s2.*5
  \textMark \markup { \box "4a" } s2.*6
  \textMark \markup { \box "4b" } s2.*6
  \textMark \markup { \box "5a" } s2.*5 \time 4/4 s1
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "7a" } s1*3 \time 3/4 s2.*2
  \textMark \markup { \box "7b" } s2.*6
  \textMark \markup { \box "8a" } s2.*6
  \textMark \markup { \box "8b" } s2.*7
}

dynamicsSopOne = {
  s2.*8 |
  s1\omit\p^\markup{\dynamic p \smallCaps Soprano} | s | s |
  s1 | s | s\< | % 2a
  s1\mf | s | s |
  s1 | s | s | s | % 3a
}

dynamicsSopOneSolo = {
  s2.*8 |
  s1\omit\p^\markup{\dynamic p \smallCaps Solo} | s | s |
  s1 | s | s\< | % 2a
  s1\mf | s | s |
  s1 | s | s | s | % 3a
}

dynamicsSopTwo = {
  s2.\omit\p-\markup{\dynamic p \italic "a tempo."} | s | s | s | s |
  s2. | s | s | s\f | s | s | % 4a
  s2. | s | s | s | s | s-\markup\italic rit. |
  s2. | s | s | s | s | % 5a
}

dynamicsSopThree = {
  s1\omit\p-\markup{\dynamic p \smallCaps Tutti} |
  s1*3 |
  s1 | s2\< s\! | s1\mf | % 6a
  s1*3 |
  s1 | s | s |
}

dynamicsSopThreeSolo = {
  s1\omit\p-\markup{\dynamic p \smallCaps Solo} |
  s1*3 |
  s1 | s2\< s\! | s1\mf | % 6a
  s1*3 |
  s1 | s | s |
}

dynamicsSopFour = {
  s2.\omit\p-\markup{\dynamic p \italic "a tempo."} | s | % 7a
  s2.*6 |
  s2.\f | s | s | s | s | s | % 8a
  s2.*7 |
}

dynamicsSop = {
  \dynamicUp
  \dynamicsSopOne
  \dynamicsSopTwo
  \dynamicsSopThree
  \dynamicsSopFour
}

dynamicsSopSolo = {
  \dynamicUp
  \dynamicsSopOneSolo
  \dynamicsSopTwo
  \dynamicsSopThreeSolo
  \dynamicsSopFour
}

sopranoOne = \relative {
  \global
  s2.*8 \section \time 4/4
  bes'4 8 8 4 4 % 1c
  bes8. a16 8 g8 a2
  c4 c8 c c4. c8
  c8. bes16 bes8 c d2 % 2a
  d4 c8 d ees4. c8
  ees8 ees d ees f2
  f4 g,8 a bes d \acciaccatura {d16 f} e8 d % 2b
  c4 e, f2
  ees'4 d8. c16 g4. a8
  bes8 a bes c d2 % 3a
  d4 c8 bes a f' g, bes
  a2 g
  f1\fermata \section \time 3/4 \break
}

sopranoTwo = \relative {
  f'8. g16 bes4 g % 3b
  a4 f'2
  f,8. g16 a4 ees'
  d2.
  d8. ees16 d4 c
  bes4 d2 % 4a
  c8 d c4 g
  c2.
  f,8. g16 bes4 g
  a4 f'2
  f,8. g16 a4 ees'
  d2. % 4b
  d8. c16 bes4 f'
  g2 ees4
  d4 c f,
  f'2 bes,4
  d8 (c) bes4 a16(c8\fermata bes16)
  bes2. \break % 5a
  R2.*4 \section \break
}

sopranoThree = \relative {
  \time 4/4
  bes'4 bes8 bes bes4. bes8
  bes8. a16 a8 g a2 % 5b
  c4 c8 c c4. a8
  c8. bes16 bes8 c d2
  d4 c8 d ees4. c8 % 6a
  ees8 ees d ees f2
  f4 g,8 a bes d \acciaccatura {d f} e8. d16
  c4 e,4 f2 % 6b
  ees'4 d8 c g4. a8
  bes8 a bes c d2
  d4 c8 bes a f' g, bes % 7a
  a2 g
  f1\fermata \section \break
}

sopranoFour = \relative {
  \time 3/4
  f'8. g16 bes4 g
  a4 f'2
  f,8. g16 a4 ees' % 7b
  d2.
  d8. ees16 d4 c
  bes4 d2
  c8. d16 c4 g
  c2.
  f,8. g16 bes4 g % 8a
  a4 f'2
  f,8. g16 a4 ees'
  d2.
  d8. c16 bes4 f'
  g2 ees4
  d4 c f, % 8b
  f'2^\markup\italic "ad lib." << bes,4 \new Voice { \voiceOne \tiny \parenthesize bes'4 }>>
  d,8(c) bes4 a16(c8\fermata bes16)
  bes2.~
  bes4 r r
  R2.
  R2.\fermata
  \bar "|."
}

soprano = { \sopranoOne \sopranoTwo \sopranoThree \sopranoFour }

wordsSop = \lyricmode {
  Once in the dear dead days be -- yond re -- call,
  When on the world the mists be -- gan to fall,
  Out of the dreams that rose in hap -- py throng
  Low to our hearts Love sang an old sweet song;
  And in the dusk where fell the fire -- light gleam,
  Soft -- ly it wove it -- self in -- to our dream.

  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet song.

  Ev -- en to -- day we hear Love's song of yore,
  Deep in our hearts it dwells for ev -- er -- more,
  Foot -- steps may fal -- ter, wea -- ry grow the way,
  Still we can hear it at the close of day,
  So till the end, when life's dim sha -- dows fall,
  Love will be found the sweet -- est song of all.

  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet __ song. __
}

emptyOne = {
  \time 3/4 s2.*8
  \time 4/4 s1*13
}

emptyThree =  {
  s1*13
}

dynamicsEmptyOne = {
  s2.*8 s1*13
}

dynamicsEmptyThree = {
  s1*13
}

dynamicsAltoOne = {
  s2.*8 |
  s1\omit\p-\markup{\dynamic p \smallCaps Alto} | s | s |
  s1 | s | s\< | % 2a
  s1\mf | s | s |
  s1*4 | % 3a
}

dynamicsAltoTwo = {
  s2.\omit\p-\markup{\dynamic p \italic "a tempo."} | s | s | s | s |
  s2. | s | s | s\f | s | s | % 4a
  s2. | s | s | s | s | s-\markup\italic rit. |
  s2.*5 | % 5a
}

dynamicsAltoThree = {
  s1\p |
  s1*3 |
  s1 | s2\< s\! | s1\mf | % 6a
  s1*3 |
  s1 | s | s | % 7a
}

dynamicsAltoFour = {
  s2.\omit\p-\markup{\dynamic p \italic "a tempo."} | s |
  s2.*6 |
  s2.\f | s | s | s | s | s | % 8a
  s2.*7 |
}

dynamicsAlto = {
  \dynamicUp
  \dynamicsAltoOne
  \dynamicsAltoTwo
  \dynamicsAltoThree
  \dynamicsAltoFour
}

dynamicsAltoSolo = {
  \dynamicUp
  \dynamicsEmptyOne
  \dynamicsAltoTwo
  \dynamicsEmptyThree
  \dynamicsAltoFour
}

altoOne = \relative {
  s2.*8 \section |
  d'4 8 8 f4 f | 1 | 4. 8 4. 8 |
  f4. 8 2 | 4 8 8 4. 8 | a8 8 8 8 bes4 d8 bes | % 2a
  f2~8 8 8 8 | 4 c c2 | r g'4 f8 ees |
  d4 g2 f4 | e4. 8 f4 4 | 2 e | f1\fermata \section |
}

altoTwo = \relative {
  d'8. 16 f4 f % 3b
  f4 a2
  ees8. ees16 ees4 g
  f2.
  fis8. fis16 fis4 fis
  g4 g2 % 4a
  g8 g e4 e
  f2(ees4)
  d8. d16 f4 f
  f4 a2
  ees8. ees16 ees4 f
  f2. % 4b
  aes8. aes16 aes4 bes
  bes2 bes4
  bes4 f f
  f2 f4
  g4 g f\fermata
  f2. % 5a
  R2.*4 \section
}

altoThree = \relative {
  d'4 8 8 4 4 |
  ees8. 16 4~8 8 d c | ees4. 8 8(c) d(ees) | d4. f8 2 |
  f4 8 8 4. 8 | a8 8 8 8 bes4 d8 bes | f2~8 8 8 8 | % 6a
  f4 c c2 | r g'4 f8 ees | d4 g2 f8 8 |
  e4. 8 f4 4 | 2 e | 1\fermata | \section
}

altoFour = \relative {
  d'8. d16 f4 f % 7a+++
  f4 a2
  ees8. ees16 ees4 g % 7b
  f2.
  fis8. fis16 fis4 fis
  g4 g2
  g8 g e4 e
  f2(ees4)
  d8. d16 f4 f % 8a
  f4 a2
  ees8. ees16 ees4 f
  f2.
  aes8. aes16 aes4 bes
  bes2 bes4
  bes4 f f % 8b
  f2^\markup\italic "ad lib." f4
  g4 g f\fermata
  f2.~
  f4 r r
  R2.
  R2.\fermata
  \bar "|."
}

alto =     { \global \altoOne  \altoTwo \altoThree  \altoFour }
altoSolo = { \global \emptyOne \altoTwo \emptyThree \altoFour }

wordsAltoOne = \lyricmode {
  Once in the dear dead days,
  When the mists be -- gan to fall,
  Out of the dreams that rose in hap -- py throng
  To our hearts __ Love sang an old sweet song;
  And in the dusk, Soft -- ly wove it -- self in -- to our dream.
}

wordsAltoTwo = \lyricmode {
  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet song.
}

wordsAltoThree = \lyricmode {
  Ev -- en to -- day we hear Love's song, __
  Deep in our hearts it dwells __ for __ ev -- er -- more,
  Foot -- steps may fal -- ter, wea -- ry grow the way,
  we can hear __ it ar the close of day,
  So till the end, Love will be found the sweet -- est song of all.
}

wordsAltoFour = \lyricmode {
  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet __ song. __
}

wordsAlto     = { \wordsAltoOne \wordsAltoTwo \wordsAltoThree \wordsAltoFour }
wordsAltoSolo = {               \wordsAltoTwo                 \wordsAltoFour }

dynamicsTenorOne = {
  s2.*8 |
  s1\omit\p-\markup{\dynamic p \smallCaps Tenor} | s | s |
  s1 | s | s\< | % 2a
  s1\mf | s | s |
  s1*4 | % 3a
}

dynamicsTenorTwo = {
  s2.\omit\p-\markup{\dynamic p \italic "a tempo."} | s | s | s | s |
  s2. | s | s | s\f | s | s | % 4a
  s2. | s | s | s | s | s-\markup\italic rit. |
  s2.*5 | % 5a
}

dynamicsTenorThree = {
  s1\p |
  s1*3 |
  s1 | s2\< s\! | s1\mf | % 6a
  s1*3 |
  s1*3 | % 7a
}

dynamicsTenorFour = {
  s2.\omit\p-\markup{\dynamic p \italic "a tempo."} | s |
  s2.*6 |
  s2.\f | s | s | s | s | s | % 8a
  s2.*7 |
}

dynamicsTenor = {
  \dynamicUp
  \dynamicsTenorOne
  \dynamicsTenorTwo
  \dynamicsTenorThree
  \dynamicsTenorFour
}

dynamicsTenorSolo = {
  \dynamicUp
  \dynamicsEmptyOne
  \dynamicsTenorTwo
  \dynamicsEmptyThree
  \dynamicsTenorFour
}

tenorOne = \relative {
  s2.*8 \section |
  f4 8 8 bes4 4 | ees2~8 8 d c | ees4. 8 8 c d ees |
  d1 | bes4 a8 bes c4. a8 | c8 8 ees8 8 d4 8 8 | % 2a
  d2~8 bes8 8 8 | 4 4 a2 | r ees'4 d8. c16 |
  g4. a8 bes a bes c | bes4 a8 g f4 d' | c2 bes | a1\fermata \section
}

tenorTwo = \relative {
  bes8. 16 d4 d % 3b
  ees4 ees2
  a,8. bes16 c4 a
  bes4(d2)
  c8. c16 c4 d
  d4 bes2 % 4a
  c8 c c4 c
  c4(ees a,)
  bes8. bes16 d4 d
  ees4 ees2
  a,8. bes16 c4 a
  bes2(d4) % 4b
  f8. f16 f4 aes
  g2 g4
  f4 a, a
  bes2 bes4
  bes8(ees) ees4 ees\fermata
  d2. % 5b
  R2.*4 \section \time 4/4
}

tenorThree = \relative {
  f4 8 8 4 4 |
  f8. 16 8 8 2 | 4 8 8 4. 8 | 8. 16 8 8 bes2 |
  bes4 a8 bes c4. a8 | c c ees ees d4 8 8 | 2~8 bes8 8 8 | % 6a
  bes4 4 a2 | r ees'4 d8 c | g4.(a8) bes(a) bes c |
  bes4 a8(g) f4 d' | c2 bes | a1\fermata \section
}

tenorFour = \relative {
  bes8. 16 d4 d % 7a+++
  ees4 ees2
  a,8. bes16 c4 a % 7b
  bes4(d2)
  c8. c16 c4 d
  d4 bes2
  c8 c c4 c
  c4(ees a,)
  bes8. bes16 d4 d % 8a
  ees4 ees2
  a,8. bes16 c4 a
  bes2(d4)
  f8. f16 f4 aes
  g2 g4
  f4 a, a % 8b
  bes2^\markup\italic "ad lib." bes4
  bes8(ees) d4 c16(ees8.)\fermata
  d2.~
  d4 r r
  R2.
  R2.\fermata
  \bar "|."
}

tenor     = { \global \tenorOne \tenorTwo \tenorThree \tenorFour }
tenorSolo = { \global \emptyOne \tenorTwo \emptyThree \tenorFour }

wordsTenorOne = \lyricmode {
  Once in the dear dead days, __
  When on the world the mists be -- gan to fall,
  Out of the dreams that rose in hap -- py throng
  To our hearts __ Love sang an old sweet song;
  And in the dusk where fell the fire -- light gleam,
  wove it -- self in -- to our dream.
}

wordsTenorTwo = \lyricmode {
  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet song.
}

wordsTenorThree = \lyricmode {
  Ev -- en to -- day we hear Love's song of yore,
  Deep in our hearts it dwells for ev -- er -- more,
  Foot -- steps may fal -- ter, wea -- ry grow the way,
  we can hear __ it ar the close of day,
  So till the end, __ Love will be found the sweet -- est song of all.
}

wordsTenorFour = \lyricmode {
  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet __ song. __
}

wordsTenor     = { \wordsTenorOne \wordsTenorTwo \wordsTenorThree \wordsTenorFour }
wordsTenorSolo = {                \wordsTenorTwo                  \wordsTenorFour }

dynamicsBassOne = {
  s2.*8 |
  s1\omit\p-\markup{\dynamic p \smallCaps Bass} | s | s |
  s1 | s | s\< | % 2a
  s1\mf | s | s |
  s1*4 | % 3a
}

dynamicsBassTwo = {
  s2.\omit\p-\markup{\dynamic p \italic "a tempo."} | s | s | s | s |
  s2. | s | s | s\f | s | s | % 4a
  s2. | s | s | s | s | s-\markup\italic rit. |
  s2.*5 | % 5a
}

dynamicsBassThree = {
  s1\p |
  s1*3 |
  s1 | s2\< s\! | s1\mf | % 6a
  s1*3 |
  s1 | s | s | % 7a
}

dynamicsBassFour = {
  s2.\omit\p-\markup{\dynamic p \italic "a tempo."} | s |
  s2.*6 |
  s2.\f | s | s | s | s | s | % 8a
  s2.*7 |
}

dynamicsBass = {
  \dynamicUp
  \dynamicsBassOne
  \dynamicsBassTwo
  \dynamicsBassThree
  \dynamicsBassFour
}

dynamicsBassSolo = {
  \dynamicUp
  \dynamicsEmptyOne
  \dynamicsBassTwo
  \dynamicsEmptyThree
  \dynamicsBassFour
}

bassOne = \relative {
  s2.*8 \section |
  bes,2 d4 4 | c c f2 | a4. 8 4. 8 |
  bes4. f8 bes,4 8(d) | f8 8 2 4 | 2~8 8 d f | % 2a
  bes4 8(a) g4 g, | c c f2 | R1 |
  g4 f8 ees d4 g | c,4. 8 d4 bes | c2 2 | f1\fermata \section % 3a
}

bassTwo = \relative {
  bes,8. 16 4 4 % 3b
  c4 c c8. c16
  f2 f4
  bes,4(bes'2)
  a8. a16 a4 d,
  g2 f4 % 4a
  e8 e g4 bes
  a4(g f)
  bes8. bes16 bes4 bes,
  c4 c f(
  f8.) f16 f4 f,
  bes2. % 4b
  bes'8. c16 d4 d
  ees4(bes) c
  f,4 ees ees
  d2 d4
  ees4 ees f\fermata
  <bes, f'>2. % 5a
  R2.*4 \section \time 4/4
}

bassThree = \relative {
  bes,4 8 8 4 4 |
  c8. 16 8 8 2 | a4 8 8 4. c8 | bes8. 16 8 8 4 8(d) |
  f8 8 4. 8 8 8 | 8 8 4~8 8 d f | bes4 8(a) g4 g, | % 6a
  c4 4 f2 | R1 | g4 f8 ees d d g4 |
  c,4. 8 d4 bes | c2 2 | f1\fermata \section | % 7a
}

bassFour = \relative {
  bes,8. 16 4 4 % 7a+++
  c4 c c8. c16
  f2 f4 % 7b
  bes,4(bes'2)
  a8. a16 a4 d,
  g2 f4
  e8 e g4 bes
  a4(g f)
  bes8. bes16 bes4 bes, % 8a
  c4 c f(
  f8.) f16 f4 f,
  bes2.
  bes'8. c16 d4 d
  ees4(bes) c
  f,4 ees ees % 8b
  d2^\markup\italic "ad lib." d4
  ees4 f f^\fermata
  <bes, f'>2.~
  q4 r r
  R2.
  R2.\fermata
  \bar "|."
}

bass     = { \global \bassOne  \bassTwo \bassThree  \bassFour }
bassSolo = { \global \emptyOne \bassTwo \emptyThree \bassFour }

wordsBassOne = \lyricmode {
  Once in the dear dead days,
  When the mists be -- gan to fall,
  Out of the dreams that rose __ 
  Low to our hearts Love sang an old sweet song;
  And in the dusk it wove it -- self in -- to our dream.
}

wordsBassTwo = \lyricmode {
  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet song.
}

wordsBassThree = \lyricmode {
  Ev -- en to -- day we hear Love's song of yore,
  Deep in our hearts it dwells for ev -- er -- more,
  Foot -- steps may fal -- ter, wea -- ry grow the way, __
  Still we can hear it __ at the close of day,
  Love, till the end, will be found the sweet -- est song of all.
}

wordsBassFour = \lyricmode {
  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet __ song. __
}

wordsBass     = { \wordsBassOne \wordsBassTwo \wordsBassThree \wordsBassFour }
wordsBassSolo = {               \wordsBassTwo                 \wordsBassFour }

wordsMidi = \lyricmode {
  "[SOLO]Once " "in " "the " "dear " "dead " "days " be "yond " re "call, "
  "\nWhen " "on " "the " "world " "the " "mists " be "gan " "to " "fall, "
  "\nOut " "of " "the " "dreams " "that " "rose " "in " hap "py " "throng "
  "\nLow " "to " "our " "hearts " "Love " "sang " "an " "old " "sweet " "song; "
  "\nAnd " "in " "the " "dusk " "where " "fell " "the " fire "light " "gleam, "
  "\nSoft" "ly " "it " "wove " it "self " in "to " "our " "dream. "

  "\n[TUTTI]Just " "a " "song " "at " twi "light, " "when " "the " "lights " "are " "low, "
  "\nAnd " "the " flick' "ring " sha "dows " soft "ly " "come " "and " "go, "
  "\nThough " "the " "heart " "be " wea "ry, " "sad " "the " "day " "and " "long, "
  "\nStill " "to " "us " "at " twi "light " "comes " "Love's " "old " "song, "
  "\ncomes " "Love's " "old " "sweet " "song. "

  "\n[SOLO]Ev" "en " to "day " "we " "hear " "Love's " "song " "of " "yore, "
  "\nDeep " "in " "our " "hearts " "it " "dwells " "for " ev er "more, "
  "\nFoot" "steps " "may " fal "ter, " wea "ry " "grow " "the " "way, "
  "\nStill " "we " "can " "hear " "it " "at " "the " "close " "of " "day, "
  "\nSo " "till " "the " "end, " "when " "life's " "dim " sha "dows " "fall, "
  "\nLove " "will " "be " "found " "the " sweet "est " "song " "of " "all. "

  "\n[TUTTI]Just " "a " "song " "at " twi "light, " "when " "the " "lights " "are " "low, "
  "\nAnd " "the " flick' "ring " sha "dows " soft "ly " "come " "and " "go, "
  "\nThough " "the " "heart " "be " wea "ry, " "sad " "the " "day " "and " "long, "
  "\nStill " "to " "us " "at " twi "light " "comes " "Love's " "old " "song, "
  "\ncomes " "Love's " "old " "sweet "  "song. " 
}

wordsAltoMidi = \lyricmode {
  "Once " "in " "the " "dear " "dead " "days, "
  "\nWhen " "the " "mists " be "gan " "to " "fall, "
  "\nOut " "of " "the " "dreams " "that " "rose " "in " hap "py " "throng "
  "\nTo " "our " "hearts "  "Love " "sang " "an " "old " "sweet " "song; "
  "\nAnd " "in " "the " "dusk, " Soft "ly " "wove " it "self " in "to " "our " "dream. "

  "\nJust " "a " "song " "at " twi "light, " "when " "the " "lights " "are " "low, "
  "\nAnd " "the " flick' "ring " sha "dows " soft "ly " "come " "and " "go, "
  "\nThough " "the " "heart " "be " wea "ry, " "sad " "the " "day " "and " "long, "
  "\nStill " "to " "us " "at " twi "light " "comes " "Love's " "old " "song, "
  "\ncomes " "Love's " "old " "sweet " "song. "

  "\nEv" "en " to "day " "we " "hear " "Love's " "song, " 
  "\nDeep " "in " "our " "hearts " "it " "dwells "  "for "  ev er "more, "
  "\nFoot" "steps " "may " fal "ter, " wea "ry " "grow " "the " "way, "
  "\nwe " "can " "hear "  "it " "ar " "the " "close " "of " "day, "
  "\nSo " "till " "the " "end, " "Love " "will " "be " "found " "the " sweet "est " "song " "of " "all. "

  "\nJust " "a " "song " "at " twi "light, " "when " "the " "lights " "are " "low, "
  "\nAnd " "the " flick' "ring " sha "dows " soft "ly " "come " "and " "go, "
  "\nThough " "the " "heart " "be " wea "ry, " "sad " "the " "day " "and " "long, "
  "\nStill " "to " "us " "at " twi "light " "comes " "Love's " "old " "song, "
  "\ncomes " "Love's " "old " "sweet "  "song. " 
}

wordsTenorMidi = \lyricmode {
  "Once " "in " "the " "dear " "dead " "days, " 
  "\nWhen " "on " "the " "world " "the " "mists " be "gan " "to " "fall, "
  "\nOut " "of " "the " "dreams " "that " "rose " "in " hap "py " "throng "
  "\nTo " "our " "hearts "  "Love " "sang " "an " "old " "sweet " "song; "
  "\nAnd " "in " "the " "dusk " "where " "fell " "the " fire "light " "gleam, "
  "\nwove " it "self " in "to " "our " "dream. "

  "\nJust " "a " "song " "at " twi "light, " "when " "the " "lights " "are " "low, "
  "\nAnd " "the " flick' "ring " sha "dows " soft "ly " "come " "and " "go, "
  "\nThough " "the " "heart " "be " wea "ry, " "sad " "the " "day " "and " "long, "
  "\nStill " "to " "us " "at " twi "light " "comes " "Love's " "old " "song, "
  "\ncomes " "Love's " "old " "sweet " "song. "

  "\nEv" "en " to "day " "we " "hear " "Love's " "song " "of " "yore, "
  "\nDeep " "in " "our " "hearts " "it " "dwells " "for " ev er "more, "
  "\nFoot" "steps " "may " fal "ter, " wea "ry " "grow " "the " "way, "
  "\nwe " "can " "hear "  "it " "ar " "the " "close " "of " "day, "
  "\nSo " "till " "the " "end, "  "Love " "will " "be " "found " "the " sweet "est " "song " "of " "all. "

  "\nJust " "a " "song " "at " twi "light, " "when " "the " "lights " "are " "low, "
  "\nAnd " "the " flick' "ring " sha "dows " soft "ly " "come " "and " "go, "
  "\nThough " "the " "heart " "be " wea "ry, " "sad " "the " "day " "and " "long, "
  "\nStill " "to " "us " "at " twi "light " "comes " "Love's " "old " "song, "
  "\ncomes " "Love's " "old " "sweet "  "song. " 
}

wordsBassMidi = \lyricmode {
  "Once " "in " "the " "dear " "dead " "days, "
  "\nWhen " "the " "mists " be "gan " "to " "fall, "
  "\nOut " "of " "the " "dreams " "that " "rose "  
  "\nLow " "to " "our " "hearts " "Love " "sang " "an " "old " "sweet " "song; "
  "\nAnd " "in " "the " "dusk " "it " "wove " it "self " in "to " "our " "dream. "

  "\nJust " "a " "song " "at " twi "light, " "when " "the " "lights " "are " "low, "
  "\nAnd " "the " flick' "ring " sha "dows " soft "ly " "come " "and " "go, "
  "\nThough " "the " "heart " "be " wea "ry, " "sad " "the " "day " "and " "long, "
  "\nStill " "to " "us " "at " twi "light " "comes " "Love's " "old " "song, "
  "\ncomes " "Love's " "old " "sweet " "song. "

  "\nEv" "en " to "day " "we " "hear " "Love's " "song " "of " "yore, "
  "\nDeep " "in " "our " "hearts " "it " "dwells " "for " ev er "more, "
  "\nFoot" "steps " "may " fal "ter, " wea "ry " "grow " "the " "way, " 
  "\nStill " "we " "can " "hear " "it "  "at " "the " "close " "of " "day, "
  "\nLove, " "till " "the " "end, " "will " "be " "found " "the " sweet "est " "song " "of " "all. "

  "\nJust " "a " "song " "at " twi "light, " "when " "the " "lights " "are " "low, "
  "\nAnd " "the " flick' "ring " sha "dows " soft "ly " "come " "and " "go, "
  "\nThough " "the " "heart " "be " wea "ry, " "sad " "the " "day " "and " "long, "
  "\nStill " "to " "us " "at " twi "light " "comes " "Love's " "old " "song, "
  "\ncomes " "Love's " "old " "sweet "  "song. " 
}

pianoRH = \relative {
  \global
  s2.
  s2.
  s2.
  \acciaccatura {g''16 a} g2(f4) % 1b
  <bes, bes'>4 <f bes f'>2
  <f a ees'>2 <f bes d>4
  s2.
  <d bes'>2\fermata r4 \section \time 4/4
  <d g bes>2\omit\p <bes f' bes> % 1c
  s2 r4 f'
  <ees f c'>2 <ees a c>
  s2 r4 f % 2a
  s2 <f a ees'>
  s2\omit\< <f bes f'>
  <d f g d'>2\omit\mf <d f bes> % 2b
  s1
  r4 <ees g c> s2
  r4 <d g bes> s2 % 3a
  s2 <f a>4 <f g>
  <f a>2 <e g>
  f4 <g' bes ees> <f a c>2\omit\>\fermata \section \time 3/4
  r4\omit\p <d, f> <f bes d> % 3b
  r4 <ees f a> <f a ees' f>
  r4 <ees f a> <g a ees'>
  r4 <f bes d> <d f bes>
  r4 <fis c' d>2
  r4 <g bes d>2 % 4a
  r4 <e g c>2
  r4 s2
  <d f>8.\omit\f g16 bes4 <d, f g>
  <ees f a>4 <f a f'>2
  <ees f>8. g16 a4 <f a f'>
  <f bes d>4 <f f'>2 % 4b
  <f aes d>8. <f a c>16 <f aes bes>4 <aes bes f'>
  <g bes g'>2 <g bes ees>4
  <f bes d>4 <f a c> <c f>
  <f bes f'>2.
  s2 <ees f a>4\omit\f\fermata
  <d f bes>4 r8 bes' d f % 5a
  <bes, bes'>4 <f bes f'>2-^
  <f a ees'>2 <f bes d>4
  s2.
  <d bes'>2. \section \time 4/4
  r4\omit\p <d f bes> <f bes d> r
  r4 <ees f a> <f a ees'> r % 5b
  r4 <ees f a> <ees f c'> r
  r4 <d f bes> <f bes d> r
  r8 <f bes d> <f a c> <f bes d> r4 <f a ees'> % 6a
  r8\omit\< <f a ees'> <f a d> <f a ees'> <f bes f'>2\!
  r4 <d f g d'> r <d f bes>
  s1 % 6b
  r4 <ees g c> s2
  r4 <d g bes> s2
  s2 <f a>4 <f g> % 7a
  <f a>2 <e g>
  f4\omit\p <g' bes ees> <ees aes c>2\fermata \section \time 3/4
  s2.*8
  <d, f>8.\omit\f g16 bes4 <d, f g> % 8a
  <ees f a>4 <f a f'>2
  <ees f>8. g16 a4 <f a ees'>
  <f bes d>4 <f f'>2
  <f aes d>8. <f a c>16 <f aes bes>4 <a bes f'>
  <g bes g'>2 <g bes d>4
  <f bes d>4 <f a c> <c f> % 8b
  <f bes f'>2.
  g8 <c ees> <f bes d>4 <ees f a c>\fermata
  s2.
  s2.
  <d' bes'>4\omit\f <d, d'> q
  q2.\fermata
%  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  f'8.(g16 bes4) g
  f8.(g16 d'4) bes
  a8(c f c' a g)
  s2.*3
  c,2. % 1b+++
  s2. \section \time 4/4
  s1\omit\p % 1c
  bes4 a s2
  s1
  c4 bes s2 % 2a
  <bes d>4 <a c>8 <bes d> s2
  r8\omit\< ees d ees s2
  s1\omit\mf % 2b
  <c, bes'>2~<c f a>8 f(a c)
  s2 <c ees>
  s2 <bes d>2~ % 3a
  d4 c8 bes s2
  s1
  s1 \section \time 3/4
  s2.*7
  s4 <ees, c'>2\omit\p % 4a+++
  s2.*8
  d'8\omit\f c bes4 s % 4b+5
  s2. % 5a
  s2.
  s2.
  c2.
  s2. \section \time 4/4
  s1\omit\p
  s1*4
  s2\omit\< s\!
  s1
  <c, bes'>2~<c f a>8 f(a c) % 6b
  s2 <c ees>
  s2 <bes d>2~
  d4 c8 bes s2 % 7a
  s1
  s1 \section \time 3/4
  d'2.\omit\p(
  ees4. d8 c bes
  aes2 g4 % 7b
  f2.)
  fis2.(
  g2 aes8 bes
  bes4. b8 c g
  g2 f4)
  s2.*9
  f,8.\omit\f(g16 bes4) g
  f8.(g16 d'8 bes f' d)
  s2.
  s2.
%  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  d'2.
  d2.
  <ees f>4 r r
  s2.*3
  g4 <ees a>2 % 1b+++
  s2. \section \time 4/4
  s1\omit\p % 1c
  <ees f>2 s
  s1
  <d f>2 s % 2a
  f2 s
  r4\omit\< <f a> s2
  s1\omit\mf % 2b
  f4 e s2
  s2 g4 a
  s2 g4 r % 3a
  e2 s
  s1
  s1 \section \time 3/4
  s2.\omit\p
  s2.*6
  s4 g(a)
  s2.\omit\f
  s2.*7
  g2\omit\f s4 % 4b+5
  s2.*3
  g4 <ees a>2 % 6a+++
  s2. \section \time 4/4
  s1\omit\p
  s1*4
  s2\omit\< s\!
  s1
  f4 e s2 % 6b
  s2 g4 a
  s2 g4 f
  e2 s % 7a
  s1
  s1 \section \time 3/4
  r4\omit\p <d' f> q
  r4 <ees f> q
  r4 <a, c> q % 7b
  r4 <bes d> q
  r4 <fis c' d> q
  r4 <bes d> q
  r4 <c e g> <c e>
  <a ees'>2.
  s2.*9
  d,2.\omit\f % 8b+++
  d2.
  s2.
  s2.
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.*3
  s4 s2-\markup\italic rit. % 1b
  s2.*4 \time 4/4
  s1\p % 1c
  s1*4
  s1\< % 2a++
  s1\mf
  s1*5
  s2-\markup\italic rit. a\> \time 3/4 % 3a+3
  s2.\omit\p-\markup {\dynamic p a tempo} % 3b
  s2.*7
  s2.\f % 4a+++
  s2.*7
  s2.-\markup {\dynamic f \italic rit.} % 4b+5
  s2.*5 \time 4/4
  s1\p % 5a+5
  s1*4
  s2\< s\! % 6a+
  s1\omit\mf s1*5 |
  s1-\markup\italic rit. \time 3/4 % 7a++
  s2.-\markup {\dynamic p \italic "a tempo."}
  s2.*7
  s2.\f % 8a
  s2.*6
  s2.-\markup\italic "ad lib."
  s2.
  s2.-\markup {\dynamic f \italic Animato.}
  s2.
  s4 s2-\markup\italic rit.
  s2.
}

pianoLH = \relative {
  \global
  \oneVoice
  s2.
  s2.
  <bes, f' c'>4 r r
  R2. % 1b
  <g' g'>4 <d d'>2
  <c c'>2 <bes bes'>4
  <ees, ees'>4 <f f'>2
  <bes f'>2\fermata r4 \section \time 4/4
  <bes, bes'>2\omit\p <d d'> % 1c
  <c c'>2 <f f'>
  <a a'>2 <f f'>
  <bes bes'>2 bes, % 2a
  <f'' bes>2 <f c'>
  s1
  <bes, bes'>2\omit\mf <g g'> % 2b
  <c g'>2(f4) r
  c1
  g1 % 3a
  s2. <bes' d>4
  c2 <c, bes'>
  <f a>4 f' f2\omit\>\fermata \section \time 3/4
  <bes,, bes'>2\omit\p r4 % 3b
  <c c'>2 r4
  <f, f'>2 r4
  <bes bes'>2 r4
  a'2(d,4
  g2 f4 % 4a
  e4 g bes
  a4 g f)
  <bes, bes'>4\omit\f r q
  <c c'>4 ees' <f,, f'>
  <c' c'>4 r <f, f'>
  <bes bes'>4 r <f f'> % 4b
  <bes bes'>8. <c c'>16 <d d'>4 <bes bes'>
  <ees ees'>4 <bes bes'> <c c'>
  <f, f'> <ees ees'> <ees' f a>
  <d, d'>2.
  <ees ees'>2\omit\f <f f'>4\fermata
  <bes bes'>4 r r % 5a
  <g' g'>4 <d d'>2-^
  <c c'>2 <bes bes'>4
  <ees, ees'>4 <f f'>2
  <bes f'>2. \section \time 4/4
  <bes bes'>2.\omit\p q4
  <c c'>2. c4 % 5b
  <f, f'>2. q4
  <bes bes'>2. q4
  s1 % 6a
  s2\omit\< s\!
  q2 <g g'>
  <c g'>2(f4) r % 6b
  c1
  g1
  s2. <bes' d>4 % 7a
  c2 <bes, bes'>
  <f' a>4 f'4 f2\fermata \section \time 3/4
  bes,,4\omit\p \clef treble <d' f bes> q \clef bass
  c,4 \clef treble <c' f a> q \clef bass
  f,,4 <ees'' f> q % 7b
  bes,4 <d' f> q
  a,4 <a' d> d,
  g,4 <bes' d g> f,
  e4 \clef treble <c'' e bes'> q \clef bass
  g, <f' c' ees>2
  <bes, bes'>4\omit\f r q % 8a
  <c c'>4 ees' <f,, f'>
  <c' c'>4 r <f, f'>
  <bes bes'>4 r <f f'>
  <bes bes'>8. <c c'>16 <d d'>4 <bes bes'>
  <ees ees'>4 <bes bes'> <c c'>
  <f, f'>4 <ees ees'> <ees' f a> % 8b
  <d, d'>2.
  <ees ees'>4 <f f'> q\fermata
  s2.
  s2.
  <bes' f' bes>4\omit\f <bes, f'> q
  q2.\fermata
%  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  f8.(g16 bes4) g
  f8.(g16 d'4) bes
  s2.
  s2.*5
  \section \time 4/4
  s1*5
  r4\omit\p\omit\< ees d2 % 2a++
  s1\omit\mf
  s1*3
  bes4 a8 g f4 s % 3a+
  s1
  s1 \section \time 3/4
  s2.*22 \section \time 4/4
  s1*4
  r2 c'\omit\p % 6a
  r4\omit\< ees4 d2\!
  s1*4
  bes4 a8 g f4 s % 7a
  s1
  s1 \section \time 3/4
  s2.*17
  f8.\omit\f(g16 bes4) g % 8b+++
  f8.(g16 d'8 a f' d)
  s2.
  s2.
%  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  bes,2.
  bes2.
  s2.*6
  \section \time 4/4
  s1*5
  f'1\omit\p\omit\< % 2b++
  s1\omit\mf
  s1*3
  c2 d4 s % 3a+
  s1
  s1 \section \time 3/4
  s2.*22 \section \time 4/4
  s1\omit\p
  s1*3
  f1 % 6a
  f1\omit\<
  s1\!
  s1*3
  c2 d4 s % 7a
  s1
  s1 \section \time 3/4
  s2.*17
  bes2.\omit\f % 8b+++
  bes2.
  s2.
  s2.
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
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "solo-single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSolo
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSolo
            \new Voice = "alto" \altoSolo
            \new Lyrics \lyricsto "alto" \wordsAltoSolo
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSolo
            \new Voice = "tenor" \tenorSolo
            \new Lyrics \lyricsto "tenor" \wordsTenorSolo
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSolo
            \new Voice = "bass" \bassSolo
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "solo-singlepage"
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
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSolo
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSolo
            \new Voice = "alto" \altoSolo
            \new Lyrics \lyricsto "alto" \wordsAltoSolo
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSolo
            \new Voice = "tenor" \tenorSolo
            \new Lyrics \lyricsto "tenor" \wordsTenorSolo
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSolo
            \new Voice = "bass" \bassSolo
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "solo-singlepage-bass"
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
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSolo
            \new Voice = "soprano" \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSolo
            \new Voice = "alto" \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSolo
            \new Voice = "tenor" \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSolo
            \new Voice = "bass" \bassSolo
            \addlyrics \wordsBassSolo
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "solo-midi"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSolo
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSolo
            \new Voice = "alto" \altoSolo
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSolo
            \new Voice = "tenor" \tenorSolo
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSolo
            \new Voice = "bass" \bassSolo
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = "soprano" \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
