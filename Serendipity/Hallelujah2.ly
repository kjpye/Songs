\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hallelujah"
  subtitle    = "from the DreamWorks Motion Picture Shrek"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Leonard Cohen"
  arranger    = "Arr. Roger Emerson"
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
  \key bes \major
  \time 12/8
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

TempoTrack = {
  \tempo "Adagio" 4.=72
  s1.
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "2a" } s1.*2
  \mark \markup { \circle "2b" } s1.*2
  \mark \markup { \circle "2c" } s1.*2
  \mark \markup { \circle "3a" } s1.*2
  \mark \markup { \circle "3b" } s1.*3
  \mark \markup { \circle "3c" } s1.*3
  \mark \markup { \circle "4a" } s1.*2
  \mark \markup { \circle "4b" } s1.*2
  \mark \markup { \circle "4c" } s1.*2
  \mark \markup { \circle "5a" } s1.*2
  \mark \markup { \circle "5b" } s1.*3
  \mark \markup { \circle "5c" } s1.*3
  \mark \markup { \circle "6a" } s1.*2
  \mark \markup { \circle "6b" } s1.*2
  \mark \markup { \circle "6c" } s1.*2
  \mark \markup { \circle "7a" } s1.*2
  \mark \markup { \circle "7b" } s1.*2
  \mark \markup { \circle "7c" } s1.*3
  \mark \markup { \circle "8a" } s1.*2
  \mark \markup { \circle "8b" } s1.*2
  \mark \markup { \circle "8c" } s1.*3
}

ChordTrack = \chordmode {
  bes2. g:m
  bes2. g:m
  bes2. g:m % 2b
  bes2. g:m
  ees2. f % 2c
  bes2. f
  bes2. ees4. f % 3a
  g2.:m ees
  f2. d % 3b
  g2.:m s4. ees4 bes8:2/d
  ees1.
  g1.:m % 3c
  ees1.
  bes2. f4.:sus f %% FIX
  bes2. f4.:sus f % 4a
  bes2. g:m
  bes2. g:m % 4b
  ees2. f
  bes2. f % 4c
  bes2. ees4. f
  g2.:m ees % 5a
  f2. d
  g2.:m s4. bes4 bes8:2/d % 5b
  ees1.
  g:m
  ees1. % 5c
  bes2. f4.:sus f
  bes2. f4.:sus f
  c2. g4.:sus g % 6a
  c2. a:m
  c2. a:m % 6b
  f2. g
  c2. g % 6c
  c2. f4. g
  a2.:m f % 7a
  g2. e
  a2.:m s4. c4 c8:2/e % 7b
  f1.
  a1.:m % 7c
  f1.
  c2. g4. c:2/e
  f1. % 8a
  a1.:m
  f1. % 8b
  c2. g4.:sus g
  c2. c:9 % 8c
  c1.
  s1.
}

partI = \relative {
  \global
  R1.
  r2. r4. r4 d'8^\mf^\markup \smallCaps Unison.
  f4 f8 f4 f8 g g g~4 d8 % 2b
  f8 f f~f f f g4 g8 g4 f8
  g8 g4~8 g g g4 f8 f ees4 % 2c
  f4 f8~4.~4. r4 d8^\mf \break
  f8 f f~4 f8 g4 g8 a4 a8 % 3a
  bes8 bes bes~4 g8 bes bes c~4 bes8
  c8 c c~4 c8 d4 d8~d d c % 3b
  c8^\f(bes) bes~4. r4. d,4\mf f8
  g4. g~g g4 f8
  d4. d~4 r8 d4 f8 % 3c
  g4. g~g g4 f8
  f1.
  f2. r4. r4 d8^\mf % 4a
  f4 8 4 8 g g g~4 d8
  f4 8 4 8 g g g~4 f8 % 4b
  g8 g g~4 8 8 f4~8 f ees
  f8 4~4. r r8 d^\mf ees % 4c
  f4^\cresc 8 4 8 g8 g a~4 a8
  bes8 bes bes~4 g8 bes bes c~4 bes8 % 5a
  c4 c8~c c c d4 d8~d d c
  c8^\f(bes) bes~4. r d,4^\mf f8 % 5b
  g4. g~g g4 f8
  d4. d~4 r8 d4 f8
  g4. g~g g4 f8 % 5c
  f1.
  f2. r
  r2. r4. r4 e8^\mf \bar "||" \key c \major % 6a
  g4 8 4 8 a a a~4 e8
  g8 g g~g g g a4 8 4 g8 % 6b
  a4 8 4 8 8 g g~4 f8
  g4 g8~g4.~g r4 e8 % 6c
  g8^\cresc g g~4 g8 a4 8 b4 8
  c8 c c~4 c8 4 8 d4 c8 % 7a
  d8 d d~4 d8 e4 e8~e e d
  d8^\f(c) c(c4.) r e,4 g8 % 7b
  a4. a~a a4 g8
  e4. e~4 r8 e4 g8 % 7c
  a4. a~a a4 g8
  g2. g4 r8 c4 b8
  a4. a~a a4 g8 % 8a
  e4. e~4 r8 e4 g8
  a4. a~a a4 <g b>8 % 8b
  << g1. \new Voice {\voiceOne c2.~(c4. b4.)} >>
  <g c>1.~ % 8c
  q1.\fermata
  R1.
  \bar "|."
}

partIrhythm = \relative {
  \global
  R1.
  r2. r4. r4 d'8^\ff
  f4 f8 f4 f8 g g g~4 d8 % 2b
  f8 f f~f f f g4 g8 g4 f8
  g8 g4~8 g g g4 f8 f ees4 % 2c
  f4 f8~4.~4. r4 d8
  f8 f f~4 f8 g4 g8 a4 a8 % 3a
  bes8 bes bes~4 g8 bes bes c~4 bes8
  c8 c c~4 c8 d4 d8~d d c % 3b
  c8(bes) bes~4. r4. d,4 f8
  g4. g~g g4 f8
  d4. d~4 r8 d4 f8 % 3c
  g4. g~g g4 f8
  f1.
  f2. r4. r4 d8 % 4a
  f4 8 4 8 g g g~4 d8
  f4 8 4 8 g g g~4 f8 % 4b
  g8 g g~4 8 8 f4~8 f ees
  f8 4~4. r r8 d ees % 4c
  f4 8 4 8 g8 g a~4 a8
  bes8 bes bes~4 g8 bes bes c~4 bes8 % 5a
  c4 c8~c c c d4 d8~d d c
  c8(bes) bes~4. r d,4 f8 % 5b
  g4. g~g g4 f8
  d4. d~4 r8 d4 f8
  g4. g~g g4 f8 % 5c
  f1.
  f2. r
  r2. r4. r4 e8 \key c \major % 6a
  g4 8 4 8 a a a~4 e8
  g8 g g~g g g a4 8 4 g8 % 6b
  a4 8 4 8 8 g g~4 f8
  g4 g8~g4.~g r4 e8 % 6c
  g8 g g~4 g8 a4 8 b4 8
  c8 c c~4 c8 4 8 d4 c8 % 7a
  d8 d d~4 d8 e4 e8~e e d
  d8(c) c(c4.) r e,4 g8 % 7b
  a4. a~a a4 g8
  e4. e~4 r8 e4 g8 % 7c
  a4. a~a a4 g8
  g2. g4 r8 c4 b8
  a4. a~a a4 g8 % 8a
  e4. e~4 r8 e4 g8
  a4. a~a a4 <g b>8 % 8b
  << g1. \new Voice {\voiceOne c2.~(c4. b4.)} >>
  <g c>1.~ % 8c
  q1.\fermata
  R1.
  \bar "|."
}

wordsI = \lyricmode {
  I've heard there was a sec -- ret chord __
  that Dav -- id played, __ and it pleased the Lord.
  But you don't __ real -- ly care for mu -- sic do you? __
  It goes like this, __ the fourth, the fifth,
  the mi -- nor fall, __ the ma -- jor lift; __
  the baf -- fled king __ com -- pos -- ing __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  You say I took the name in vain __
  though I don't e -- ven know the name,
  but if I did, __ well real -- ly, __
  what's it to you? __
  There's a blaze of light in ev -- 'ry word __
  it does -- n't mat -- ter what you heard, __
  the ho -- ly __ or the bro -- ken  __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah. __

  I did my best, it was -- n't much, __
  I could -- n't __ feel __ so I tried to touch,
  I've told the truth, I did -- n't come __
  to fool you. __
  And e -- ven though __ it all went wrong
  I'll stand be -- fore __ the Lord of Song
  with no -- thing on __ my tongue but __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah. __
}

partII = \relative {
  \global
  s1.*6
  d'8 d d~4 d8 ees4 ees8 f4 f8 % 3a
  g8 g g~4 g8 g g g~4 g8
  a8 a a~4 g8 fis4 fis8~fis fis fis % 3b
  g4^\f g8~4. r4. d4^\mf f8
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees8(d} \tuplet 2/3 {ees8 f}) g4 a8
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g8(f} g4) r8 d4 d8 % 3c
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees(d} \tuplet 2/3 {ees f)} ees4 c8
  d4.~(8 ees d c2.)
  d2. r4. r4 d8^\mf % 4a
  f4 8 4 8 g g g~4 d8
  f4 8 4 8 g g g~4 f8 % 4b
  g8 g g~4 g8 g f4~8 f ees
  f8 f4~4. r r8 d^\mf ees % 4c
  d4^\cresc 8 4 8 ees ees f~4 f8
  g8 g g~4 g8 g g g~4 g8 % 5a
  a4 a8~a a g fis4 fis8~fis fis fis
  g4^\f g8~4. r d4^\mf f8 % 5b
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees8(d} \tuplet 2/3 {ees f)} g4 a8
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} g4) r8 d4 8
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees(d} \tuplet 2/3 {ees f)} ees4 c8 % 5c
  d4.~(d8 ees d c2.)
  d2. r
  r2. r4. r4 e8\mf \bar "||" \key c \major % 6a
  g4 8 4 8 a a a~4 e8
  g8 g g~g g g a4 8 4 g8 % 6b
  a4 8 4 8 a g g~4 f8
  g4 8~4.~g r4 e8 % 6c
  e8^\cresc e e~4 e8 f4 f8 g4 g8
  a8 a a~4 g8 a4 8 4 8 % 7a
  g8 g g~4 a8 gis4 gis8~8 8 8
  a4^\f a8~4. r e4 g8 % 7b
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f8(e} \tuplet 2/3 {f g)} a4 b8
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a8(g} a4) r8 e4 e8 % 7c
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f8(e} \tuplet 2/3 {f g)} f4 d8
  e4.~(8 f e) d4 r8 e4 g8
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} a4 b8 % 8a
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a8(g} a4) r8 e4 e8
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} f4 d8 % 8b
  e4.~(e8 f e d2.)
  e1.~
  e1.\fermata
  R1.
  \bar "|."
}

partIIrhythm = \relative {
  \global
  s1.*6
  d'8^\ff d d~4 d8 ees4 ees8 f4 f8 % 3a
  g8 g g~4 g8 g g g~4 g8
  a8 a a~4 g8 fis4 fis8~fis fis fis % 3b
  g4 g8~4. r4. d4 f8
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees8(d} \tuplet 2/3 {ees8 f}) g4 a8
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g8(f} g4) r8 d4 d8 % 3c
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees(d} \tuplet 2/3 {ees f)} ees4 c8
  d4.~(8 ees d c2.)
  d2. r4. r4 d8 % 4a
  f4 8 4 8 g g g~4 d8
  f4 8 4 8 g g g~4 f8 % 4b
  g8 g g~4 g8 g f4~8 f ees
  f8 f4~4. r r8 d ees % 4c
  d4 8 4 8 ees ees f~4 f8
  g8 g g~4 g8 g g g~4 g8 % 5a
  a4 a8~a a g fis4 fis8~fis fis fis
  g4 g8~4. r d4 f8 % 5b
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees8(d} \tuplet 2/3 {ees f)} g4 a8
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} g4) r8 d4 8
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees(d} \tuplet 2/3 {ees f)} ees4 c8 % 5c
  d4.~(d8 ees d c2.)
  d2. r
  r2. r4. r4 e8 \key c \major % 6a
  g4 8 4 8 a a a~4 e8
  g8 g g~g g g a4 8 4 g8 % 6b
  a4 8 4 8 a g g~4 f8
  g4 8~4.~g r4 e8 % 6c
  e8 e e~4 e8 f4 f8 g4 g8
  a8 a a~4 g8 a4 8 4 8 % 7a
  g8 g g~4 a8 gis4 gis8~8 8 8
  a4 a8~4. r e4 g8 % 7b
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f8(e} \tuplet 2/3 {f g)} a4 b8
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a8(g} a4) r8 e4 e8 % 7c
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f8(e} \tuplet 2/3 {f g)} f4 d8
  e4.~(8 f e) d4 r8 e4 g8
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} a4 b8 % 8a
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a8(g} a4) r8 e4 e8
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} f4 d8 % 8b
  e4.~(e8 f e d2.)
  e1.~
  e1.\fermata
  R1.
  \bar "|."
}

wordsII = \lyricmode {
  goes like this, __ the fourth, the fifth,
  the mi -- nor fall, __ the ma -- jor lift; __
  the baf -- fled king __ com -- pos -- ing __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  You say I took the name in vain __
  though I don't e -- ven know the name,
  but if I did, __ well real -- ly, __
  what's it to you? __
  There's a blaze of light in ev -- 'ry word __
  it does -- n't mat -- ter what you heard, __
  the ho -- ly __ or the bro -- ken  __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah. __

  I did my best, it was -- n't much, __
  I could -- n't __ feel __ so I tried to touch,
  I've told the truth, I did -- n't come __
  to fool you. __
  And e -- ven though __ it all went wrong
  I'll stand be -- fore __ the Lord of Song
  with no -- thing on __ my tongue but __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah, __
  Hal -- le -- lu -- jah. __
}

wordsMidi = \lyricmode {
  "I've " "heard " "there " "was " "a " sec "ret " "chord " 
  "\nthat " Dav "id " "played, "  "and " "it " "pleased " "the " "Lord. "
  "\nBut " "you " "don't "  real "ly " "care " "for " mu "sic " "do " "you? " 
  "\nIt " "goes " "like " "this, "  "the " "fourth, " "the " "fifth, "
  "\nthe " mi "nor " "fall, "  "the " ma "jor " "lift; " 
  "\nthe " baf "fled " "king "  com pos "ing " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
  "\nYou " "say " "I " "took " "the " "name " "in " "vain " 
  "\nthough " "I " "don't " e "ven " "know " "the " "name, "
  "\nbut " "if " "I " "did, "  "well " real "ly, " 
  "\nwhat's " "it " "to " "you? " 
  "\nThere's " "a " "blaze " "of " "light " "in " ev "'ry " "word " 
  "\nit " does "n't " mat "ter " "what " "you " "heard, " 
  "\nthe " ho "ly "  "or " "the " bro "ken "  
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah. " 

  "\nI " "did " "my " "best, " "it " was "n't " "much, " 
  "\nI " could "n't "  "feel "  "so " "I " "tried " "to " "touch, "
  "\nI've " "told " "the " "truth, " "I " did "n't " "come " 
  "\nto " "fool " "you. " 
  "\nAnd " e "ven " "though "  "it " "all " "went " "wrong "
  "\nI'll " "stand " be "fore "  "the " "Lord " "of " "Song "
  "\nwith " no "thing " "on "  "my " "tongue " "but " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah, " 
  "\nHal" le lu "jah. " 
}

pianoRH = \relative c' {
  \global
  \repeat unfold 4 {d8 f, bes f' f, bes d g, bes g' g, bes}
  ees8 g, bes g' g, bes f' f, a c f, a % 2c
  d8 f, bes f' f, bes c f, a f' f, a
  d8 f, bes f' f, bes ees g, bes f' f, c' % 3a
  \repeat unfold 4 {g'8 bes, d}
  a'8 c, f a c, f a d, fis a d, fis % 3b
  g8 d bes bes' g d g4. <bes, d>4 <bes c f>8
  g'8 g, bes ees bes g g' g, bes ees bes g
  d'8 g, bes g' bes, g d'8 g, bes g' bes g % 3c
  ees8 g, bes g' g, bes ees g, bes g' g, bes
  d8 f, bes f' f, d' f c bes a g f
  bes8 d, f d' d, f <f bes c> f bes <f a c f>4. % 4a
  d'8 f, bes f' f, bes d g, bes g' g, bes
  d8 f, bes f' f, bes d g, bes g' g, bes % 4b
  ees8 g, bes g' g, bes f' f, a c f, a
  d8 f, bes f' f, bes c f, a f' f, a % 4c
  d8 f, bes f' f, bes ees g, c f a, c
  g'8 bes, d g bes, d g bes, ees g bes, ees % 5a
  a8 c, f a c, f a d, fis a d, fis
  g8 d bes bes' g d g4. <bes, d>4 <bes c f>8 % 5b
  g'8 g, bes ees bes g g' g, bes ees bes g
  d'8 g, bes g' bes, g d' g, bes g' bes, g
  ees'8 g, bes g' g, bes ees g, bes g' g, bes % 5c
  d8 f, bes f' f, d' f c bes a g f
  bes8 d, f d' d, f <f bes c> f bes <f a c f>4.
  <g c e>8 g c g' g, c <g c d g>4. <g b d g>4 e'8 \bar "||" \key c \major % 6a
  e8 g, c g' g, c e a, c a' a, c
  e8 g, c g' g, c e a, c a' a, c % 6b
  f8 a, c a' a, c g' g, b d g, b
  e8 g, c g' g, c d g, b g' g, b % 6c
  e8 g, c g' g, c f a, c g' b, d
  a'8 c, e a c, e a c, f a c, f % 7a
  b8 d, g b d, g b e, gis b e, gis
  a8 e c c' a e <c e a>4. <c e>4 <c d g>8 % 7b
  a'8 a, c f c a a' a, c f c a
  e'8 a, c a' c, a e' a, c a' c, a % 7c
  f'8 a, c a' a, c f a, c a' a, c
  e8 g, c g' g, e' <g, b d g>4. <d' g c>4 b'8
  a8 a, c f c a a' a, c f c a % 8a
  e' a, c a' c, a e' a, c a' c, a
  f'8 a, c a' a, c f a, c a' a, c % 8b
  e8 g, c g' g, e' g d c b a g
  c8 e, g c e, g d' e, g c e, g % 8c
  << {<e g c>1._\fermata} \new Voice {\voiceOne r2. \voiceTwo \arpeggioArrowDown <g' c d g>\arpeggio^\fermata} >>
  R1.
  \bar "|."
}

pianoRHrhythm = \relative c' {
  \global
  \repeat unfold 4 {d8\p f, bes f' f, bes d g, bes g' g, bes}
  ees8 g, bes g' g, bes f' f, a c f, a % 2c
  d8 f, bes f' f, bes c f, a f' f, a
  d8 f, bes f' f, bes ees g, bes f' f, c' % 3a
  \repeat unfold 4 {g'8 bes, d}
  a'8 c, f a c, f a d, fis a d, fis % 3b
  g8 d bes bes' g d g4. <bes, d>4 <bes c f>8
  g'8 g, bes ees bes g g' g, bes ees bes g
  d'8 g, bes g' bes, g d'8 g, bes g' bes g % 3c
  ees8 g, bes g' g, bes ees g, bes g' g, bes
  d8 f, bes f' f, d' f c bes a g f
  bes8 d, f d' d, f <f bes c> f bes <f a c f>4. % 4a
  d'8 f, bes f' f, bes d g, bes g' g, bes
  d8 f, bes f' f, bes d g, bes g' g, bes % 4b
  ees8 g, bes g' g, bes f' f, a c f, a
  d8 f, bes f' f, bes c f, a f' f, a % 4c
  d8 f, bes f' f, bes ees g, c f a, c
  g'8 bes, d g bes, d g bes, ees g bes, ees % 5a
  a8 c, f a c, f a d, fis a d, fis
  g8 d bes bes' g d g4. <bes, d>4 <bes c f>8 % 5b
  g'8 g, bes ees bes g g' g, bes ees bes g
  d'8 g, bes g' bes, g d' g, bes g' bes, g
  ees'8 g, bes g' g, bes ees g, bes g' g, bes % 5c
  d8 f, bes f' f, d' f c bes a g f
  bes8 d, f d' d, f <f bes c> f bes <f a c f>4.
  <g c e>8 g c g' g, c <g c d g>4. <g b d g>4 e'8 \bar "||" \key c \major % 6a
  e8 g, c g' g, c e a, c a' a, c
  e8 g, c g' g, c e a, c a' a, c % 6b
  f8 a, c a' a, c g' g, b d g, b
  e8 g, c g' g, c d g, b g' g, b % 6c
  e8 g, c g' g, c f a, c g' b, d
  a'8 c, e a c, e a c, f a c, f % 7a
  b8 d, g b d, g b e, gis b e, gis
  a8 e c c' a e <c e a>4. <c e>4 <c d g>8 % 7b
  a'8 a, c f c a a' a, c f c a
  e'8 a, c a' c, a e' a, c a' c, a % 7c
  f'8 a, c a' a, c f a, c a' a, c
  e8 g, c g' g, e' <g, b d g>4. <d' g c>4 b'8
  a8 a, c f c a a' a, c f c a % 8a
  e' a, c a' c, a e' a, c a' c, a
  f'8 a, c a' a, c f a, c a' a, c % 8b
  e8 g, c g' g, e' g d c b a g
  c8 e, g c e, g d' e, g c e, g % 8c
  << {<e g c>1._\fermata} \new Voice {\voiceOne r2. \voiceTwo \arpeggioArrowDown <g' c d g>\arpeggio^\fermata} >>
  R1.
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1.\mf-\markup \italic "pedal freely"
  s1.*5
  s1.\cresc % 3a
  s1.
  s1. % 3b
  s2.\f s4. s\mf
  s1.*5
  s1.\mf % 4a+
  s1. % 4b
  s1.
  s1. % 4c
  s1.\cresc
  s1.*2 % 5a
  s2.\mf s4. s\mf % 5b
  s1.*6
  s1.\mf % 6a+
  s1.*3
  s1.\cresc % 6c+
  s1.*2
  s1.\f % 7b
  s1.*7
  s1.-\markup \italic "rit. e dim." % 8b+
  s1.*3
}

pianoLH = \relative {
  \global
  \oneVoice
  bes,4.~4 a8 g4.~4 a8
  bes4. ~4 a8 g4.~4 a8
  bes4. ~4 a8 g4.~4 a8 % 2b
  bes4. ~4 a8 g4.~4 f8
  ees2. f % 2c
  bes4.~8 d, ees f2.
  bes2. ees,4. f % 3a
  g4.~4 f8 ees2.
  f4.~4 f8 d4. d' % 3b
  g,4.~4 d8 g4. bes4 d8
  ees4.~4 bes8 ees,4.~4 f8
  g4.~4 d8 g4.~4 f8 % 3c
  ees4.~4 bes8 ees4.~8 d c
  bes4.~4 bes8 f'4. f,
  bes4.~4 bes8 f'4. f, % 4a
  bes'4.~4 a8 g4.~4 a8
  bes4.~4 a8 g4.~4 f8 % 4b
  ees2. f
  bes4.~8 d,8 ees f2. % 4c
  bes2. ees,4. f
  g4.~4 f8 ees2. % 5a
  f4.~4 f8 d4. d'
  g,4.~4 d8 g4. bes4 d8 % 5b
  ees4.~4 bes8 ees,4.~4 f8
  g4.~4 d8 g4.~4 f8
  ees4.~4 bes8 ees4.~8 d c % 5c
  bes4.~4 bes8 f'4. f,
  bes4.~4 bes8 f'4. f,
  c'4.~8 e f g4. g, \bar "||" \key c \major % 6a
  c'4.~4 b8 a4.~4 b8
  c4.~4 b8 a4.~4 g8 % 6b
  f2. g
  c4.~8 e, f g2. % 6c
  c2. f,4. g
  a4.~4 g8 f2. % 7a
  g4.~4 g8 e4. e'
  a,4.~4 e8 a4. c4 e8 % 7b
  f4.~4 c8 f,4.~4 g8
  a4.~4 e8 a4.~4 g8 % 7c
  f4.~4 c8 f4.~8 e d
  c4.~4 c8 g'4. <e' c'>4.
  f,4.~4 f8 f4.~4 g8 % 8a
  a4.~4 e8 a4.~4 g8
  f4.~4 c8 f4.~8 e d % 8b
  c4.~4 c8 g'4. g,
  c2. g' % 8c
  <c, g'>1.^\fermata
  <c, c'>4 r8 r4. r2.
  \bar "|."
}

pianoLHrhythm = \relative {
  \global
  \oneVoice
  bes,4.\p~4 a8 g4.~4 a8
  bes4. ~4 a8 g4.~4 a8
  bes4. ~4 a8 g4.~4 a8 % 2b
  bes4. ~4 a8 g4.~4 f8
  ees2. f % 2c
  bes4.~8 d, ees f2.
  bes2. ees,4. f % 3a
  g4.~4 f8 ees2.
  f4.~4 f8 d4. d' % 3b
  g,4.~4 d8 g4. bes4 d8
  ees4.~4 bes8 ees,4.~4 f8
  g4.~4 d8 g4.~4 f8 % 3c
  ees4.~4 bes8 ees4.~8 d c
  bes4.~4 bes8 f'4. f,
  bes4.~4 bes8 f'4. f, % 4a
  bes'4.~4 a8 g4.~4 a8
  bes4.~4 a8 g4.~4 f8 % 4b
  ees2. f
  bes4.~8 d,8 ees f2. % 4c
  bes2. ees,4. f
  g4.~4 f8 ees2. % 5a
  f4.~4 f8 d4. d'
  g,4.~4 d8 g4. bes4 d8 % 5b
  ees4.~4 bes8 ees,4.~4 f8
  g4.~4 d8 g4.~4 f8
  ees4.~4 bes8 ees4.~8 d c % 5c
  bes4.~4 bes8 f'4. f,
  bes4.~4 bes8 f'4. f,
  c'4.~8 e f g4. g, \bar "||" \key c \major % 6a
  c'4.~4 b8 a4.~4 b8
  c4.~4 b8 a4.~4 g8 % 6b
  f2. g
  c4.~8 e, f g2. % 6c
  c2. f,4. g
  a4.~4 g8 f2. % 7a
  g4.~4 g8 e4. e'
  a,4.~4 e8 a4. c4 e8 % 7b
  f4.~4 c8 f,4.~4 g8
  a4.~4 e8 a4.~4 g8 % 7c
  f4.~4 c8 f4.~8 e d
  c4.~4 c8 g'4. <e' c'>4.
  f,4.~4 f8 f4.~4 g8 % 8a
  a4.~4 e8 a4.~4 g8
  f4.~4 c8 f4.~8 e d % 8b
  c4.~4 c8 g'4. g,
  c2. g' % 8c
  <c, g'>1.^\fermata
  <c, c'>4 r8 r4. r2.
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single Part I staff
          \new Staff \with {
            instrumentName = #""
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Single Part II staff
          \new Staff \with {
            instrumentName = #""
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
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
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single Part I staff
          \new Staff \with {
            instrumentName = #""
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Single Part II staff
          \new Staff \with {
            instrumentName = #""
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
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
    output-suffix = singlepage-i
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
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
      <<
        \new ChoirStaff <<
                                % Single Part I staff
          \new Staff \with {
            instrumentName = #""
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Single Part II staff
          \new Staff \with {
            instrumentName = #""
            shortInstrumentName = #"II"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partII
            \addlyrics {\tiny \wordsII}
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
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
    output-suffix = singlepage-ii
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
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
      <<
        \new ChoirStaff <<
                                % Single Part I staff
          \new Staff \with {
            instrumentName = #""
            shortInstrumentName = #"I"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics {\tiny \wordsI}
          >>
                                % Single Part II staff
          \new Staff \with {
            instrumentName = #""
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
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
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames \with {
          midiInstrument = "acoustic guitar (nylon)"
        }
        { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single Part I staff
          \new Staff \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsMidi
          >>
                                % Single Part II staff
          \new Staff \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice = "two" \partII
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
