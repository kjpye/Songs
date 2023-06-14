\version "2.22.0"

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

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key bes \major
  \time 3/4
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

drumPitchNames.cc = #'crashcymbal
#(define mystyle
  '((crashcymbal cross   #f  5)
    (bass        default #f -1)
  ))

TempoTrack = {
  \tempo 4=110
  \set Score.tempoHideNote = ##t
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
  \mark \markup { \circle "1a" } s2.*3
  \mark \markup { \circle "1b" } s2.*5 \time 4/4
  \mark \markup { \circle "1c" } s1*3
  \mark \markup { \circle "2a" } s1*3
  \mark \markup { \circle "2b" } s1*3
  \mark \markup { \circle "3a" } s1*4 \time 3/4
  \mark \markup { \circle "3b" } s2.*5
  \mark \markup { \circle "4a" } s2.*6
  \mark \markup { \circle "4b" } s2.*6
  \mark \markup { \circle "5a" } s2.*5 \time 4/4 s1
  \mark \markup { \circle "5b" } s1*3
  \mark \markup { \circle "6a" } s1*3
  \mark \markup { \circle "6b" } s1*3
  \mark \markup { \circle "7a" } s1*3 \time 3/4 s2.*2
  \mark \markup { \circle "7b" } s2.*6
  \mark \markup { \circle "8a" } s2.*6
  \mark \markup { \circle "8b" } s2.*7
}

soprano = \relative {
  \global
  s2.*8 \bar "||" \time 4/4
  bes'4^\p^\markup \smallCaps Solo 8 8 4 4 % 1c
  bes8. a16 8 g8 a2
  c4 c8 c c4. c8
  c8. bes16 bes8 c d2 % 2a
  d4 c8 d ees4. c8
  ees8^\< ees d ees f2
  f4^\mf g,8 a bes d \acciaccatura {d16 f} e8 d % 2b
  c4 e, f2
  ees'4 d8. c16 g4. a8
  bes8 a bes c d2 % 3a
  d4 c8 bes a f' g, bes
  a2 g
  f1\fermata \bar "||" \time 3/4 \break
  f8.^\p^\markup \smallCaps Tutti g16 bes4 g % 3b
  a4 f'2
  f,8. g16 a4 ees'
  d2.
  d8. ees16 d4 c
  bes4 d2 % 4a
  c8 d c4 g
  c2.
  f,8.^\f g16 bes4 g
  a4 f'2
  f,8. g16 a4 ees'
  d2. % 4b
  d8. c16 bes4 f'
  g2 ees4
  d4 c f,
  f'2 bes,4
  d8^\markup \italic \bold rit. (c) bes4 a16(c8\fermata bes16)
  bes2. \break % 5a
  R2.*4 \bar "||" \time 4/4 \break
  bes4^\p^\markup \smallCaps Solo bes8 bes bes4. bes8
  bes8. a16 a8 g a2 % 5b
  c4 c8 c c4. a8
  c8. bes16 bes8 c d2
  d4 c8 d ees4. c8 % 6a
  ees8 ees d ees f2
  f4^\mf g,8 a bes d \acciaccatura {d f} e8. d16
  c4 e,4 f2 % 6b
  ees'4 d8 c g4. a8
  bes8 a bes c d2
  d4 c8 bes a f' g, bes % 7a
  a2 g
  f1\fermata \bar "||" \time 3/4 \break
  f8.^\p^\markup \italic \bold "a tempo"^\markup \smallCaps Tutti g16 bes4 g
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
  f'2 bes,4
  d8(c) bes4 a16(c8\fermata bes16)
  bes2.~
  bes4 r r
  R2.
  R2.\fermata
  \bar "|."
}

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

alto = \relative {
  \global
  s2.*8 \time 4/4
  s1*13 \bar "||" \time 3/4
  d'8.^\p 16 f4 f % 3b
  f4 a2
  ees8. ees16 ees4 g
  f2.
  fis8. fis16 fis4 fis
  g4 g2 % 4a
  g8 g e4 e
  f2(ees4)
  d8.^\f d16 f4 f
  f4 a2
  ees8. ees16 ees4 f
  f2. % 4b
  aes8. aes16 aes4 bes
  bes2 bes4
  bes4 f f
  f2 f4
  g4 g f\fermata
  f2. % 5a
  R2.*4 \bar "||" \time 4/4
  R1*13 \bar "||" \time 3/4
  d8.^\p d16 f4 f % 7a+++
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
  f2 f4
  g4 g f\fermata
  f2.~
  f4 r r
  R2.
  R2.\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet song.

  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet __ song. __
}

tenor = \relative {
  \global
  s2.*8 \time 4/4
  s1*13 \bar "||" \time 3/4
  bes8.^\p 16 d4 d % 3b
  ees4 ees2
  a,8. bes16 c4 a
  bes4(d2)
  c8. c16 c4 d
  d4 bes2 % 4a
  c8 c c4 c
  c4(ees a,)
  bes8.^\f bes16 d4 d
  ees4 ees2
  a,8. bes16 c4 a
  bes2(d4) % 4b
  f8. f16 f4 aes
  g2 g4
  f4 a, a
  bes2 bes4
  bes8^\markup \italic \bold rit. (ees) ees4 ees\fermata
  d2. % 5b
  R2.*4 \bar "||" \time 4/4
  R1*13 \bar "||" \time 3/4
  bes8.^\p 16 d4 d % 7a+++
  ees4 ees2
  a,8. bes16 c4 a % 7b
  bes4(d2)
  c8. c16 c4 d
  d4 bes2
  c8 c c4 c
  c4(ees a,)
  bes8.^\f bes16 d4 d % 8a
  ees4 ees2
  a,8. bes16 c4 a
  bes2(d4)
  f8. f16 f4 aes
  g2 g4
  f4 a, a % 8b
  bes2 bes4
  bes8(ees) d4 c16(ees8.)\fermata
  d2.~
  d4 r r
  R2.
  R2.\fermata
  \bar "|."
}

wordsTenor = \lyricmode {
  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet song.

  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet __ song. __
}

bass= \relative {
  \global
  s2.*8 \time 4/4
  s1*13 \bar "||" \time 3/4
  bes,8. 16 4 4 % 3b
  c4 c c8. c16
  f2 f4
  bes,4(bes'2)
  a8. a16 a4 d,
  g2 f4 % 4a
  e8 e g4 bes
  a4(g f)
  bes8.^\f bes16 bes4 bes,
  c4 c f(
  f8.) f16 f4 f,
  bes2. % 4b
  bes'8. c16 d4 d
  ees4(bes) c
  f,4 ees ees
  d2 d4
  ees4^\markup \bold \italic rit. ees f\fermata
  <bes, f'>2. % 5a
  R2.*4 \bar "||" \time 4/4
  R1*13 \bar "||" \time 3/4
  bes8. 16 4 4 % 7a+++
  c4 c c8. c16
  f2 f4 % 7b
  bes,4(bes'2)
  a8. a16 a4 d,
  g2 f4
  e8 e g4 bes
  a4(g f)
  bes8.^\f bes16 bes4 bes, % 8a
  c4 c f(
  f8.) f16 f4 f,
  bes2.
  bes'8. c16 d4 d
  ees4(bes) c
  f,4 ees ees % 8b
  d2^\markup \bold \italic "ad lib." d4
  ees4 f f^\fermata
  <bes, f'>2.~
  q4 r r
  R2.
  R2.\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet song.

  Just a song at twi -- light, when the lights are low,
  And the flick' -- ring sha -- dows soft -- ly come and go,
  Though the heart be wea -- ry, sad the day and long,
  Still to us at twi -- light comes Love's old song,
  comes Love's old sweet __ song. __
}

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

wordsBassMidi = \lyricmode {
  "Just " "a " "song " "at " twi "light, " "when " "the " "lights " "are " "low, "
  "\nAnd " "the " flick' "ring " sha "dows " soft "ly " "come " "and " "go, "
  "\nThough " "the " "heart " "be " wea "ry, " "sad " "the " "day " "and " "long, "
  "\nStill " "to " "us " "at " twi "light " "comes " "Love's " "old " "song, "
  "\ncomes " "Love's " "old " "sweet " "song. "

  "\nJust " "a " "song " "at " twi "light, " "when " "the " "lights " "are " "low, "
  "\nAnd " "the " flick' "ring " sha "dows " soft "ly " "come " "and " "go, "
  "\nThough " "the " "heart " "be " wea "ry, " "sad " "the " "day " "and " "long, "
  "\nStill " "to " "us " "at " twi "light " "comes " "Love's " "old " "song, "
  "\ncomes " "Love's " "old " "sweet "  "song. " 
}

pianoRH = \relative {
  \global
  s2.^\markup \bold "Andante con moto."
  s2.
  s2.
  \acciaccatura {g''16 a} g2(f4) % 1b
  <bes, bes'>4 <f bes f'>2
  <f a ees'>2 <f bes d>4
  s2.
  <d bes'>2\fermata r4 \bar "||" \time 4/4
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
  f4 <g' bes ees> <f a c>2\omit\>\fermata \bar "||" \time 3/4
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
  <d bes'>2. \bar "||" \time 4/4
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
  f4\omit\p <g' bes ees> <ees aes c>2\fermata \bar "||" \time 3/4
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
  s2. \bar "||" \time 4/4
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
  s1 \bar "||" \time 3/4
  s2.*7
  s4 <ees, c'>2\omit\p % 4a+++
  s2.*8
  d'8\omit\f c bes4 s % 4b+5
  s2. % 5a
  s2.
  s2.
  c2.
  s2. \bar "||" \time 4/4
  s1\omit\p
  s1*4
  s2\omit\< s\!
  s1
  <c, bes'>2~<c f a>8 f(a c) % 6b
  s2 <c ees>
  s2 <bes d>2~
  d4 c8 bes s2 % 7a
  s1
  s1 \bar "||" \time 3/4
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
  s2. \bar "||" \time 4/4
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
  s1 \bar "||" \time 3/4
  s2.\omit\p
  s2.*6
  s4 g(a)
  s2.\omit\f
  s2.*7
  g2\omit\f s4 % 4b+5
  s2.*3
  g4 <ees a>2 % 6a+++
  s2. \bar "||" \time 4/4
  s1\omit\p
  s1*4
  s2\omit\< s\!
  s1
  f4 e s2 % 6b
  s2 g4 a
  s2 g4 f
  e2 s % 7a
  s1
  s1 \bar "||" \time 3/4
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
  s4 s2-\markup\bold\italic rit. % 1b
  s2.*4 \time 4/4
  s1\p % 1c
  s1*4
  s1\< % 2a++
  s1\mf
  s1*5
  s2-\markup \bold\italic rit. a\> \time 3/4 % 3a+3
  s2.\omit\p-\markup \bold\italic {\dynamic p a tempo} % 3b
  s2.*7
  s2.\f % 4a+++
  s2.*7
  s2.-\markup \bold\italic {\dynamic f rit.} % 4b+5
  s2.*5 \time 4/4
  s1\p % 5a+5
  s1*4
  s2\< s\! % 6a+
  s1*6
  s1-\markup \bold\italic rit. \time 3/4 % 7a++
  s2.-\markup \bold\italic {\dynamic p a tempo.}
  s2.*7
  s2.\f % 8a
  s2.*6
  s2.-\markup \bold\italic "ad lib."
  s2.
  s2.-\markup \bold\italic {\dynamic f Animato.}
  s2.
  s4 s2-\markup \bold\italic rit.
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
  <bes f'>2\fermata r4 \bar "||" \time 4/4
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
  <f a>4 f' f2\omit\>\fermata \bar "||" \time 3/4
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
  <bes f'>2. \bar "||" \time 4/4
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
  <f' a>4 f'4 f2\fermata \bar "||" \time 3/4
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
  \bar "||" \time 4/4
  s1*5
  r4\omit\p\omit\< ees d2 % 2a++
  s1\omit\mf
  s1*3
  bes4 a8 g f4 s % 3a+
  s1
  s1 \bar "||" \time 3/4
  s2.*22 \bar "||" \time 4/4
  s1*4
  r2 c'\omit\p % 6a
  r4\omit\< ees4 d2\!
  s1*4
  bes4 a8 g f4 s % 7a
  s1
  s1 \bar "||" \time 3/4
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
  \bar "||" \time 4/4
  s1*5
  f'1\omit\p\omit\< % 2b++
  s1\omit\mf
  s1*3
  c2 d4 s % 3a+
  s1
  s1 \bar "||" \time 3/4
  s2.*22 \bar "||" \time 4/4
  s1\omit\p
  s1*3
  f1 % 6a
  f1\omit\<
  s1\!
  s1*3
  c2 d4 s % 7a
  s1
  s1 \bar "||" \time 3/4
  s2.*17
  bes2.\omit\f % 8b+++
  bes2.
  s2.
  s2.
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
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
    \midi {}
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
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBassMidi
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
    \midi {}
  }
}
