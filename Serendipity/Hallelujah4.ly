\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hallelujah"
  subtitle    = "from the DreamWorks Motion Picture Shrek"
%  instrument  = "For SATB and Piano"
  
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
  s1.*44
  \set Score.tempoHideNote = ##t
  \tempo 4.=65
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "2a" } s1.*2
  \mark \markup { \circle "2b" } s1.*2
  \mark \markup { \circle "2c" } s1.*2
  \mark \markup { \circle "3a" } s1.*2
  \mark \markup { \circle "3b" } s1.*3
  \mark \markup { \circle "4a" } s1.*3
  \mark \markup { \circle "4b" } s1.*2
  \mark \markup { \circle "5a" } s1.*2
  \mark \markup { \circle "5b" } s1.*2
  \mark \markup { \circle "6a" } s1.*2
  \mark \markup { \circle "6b" } s1.*3
  \mark \markup { \circle "7a" } s1.*3
  \mark \markup { \circle "7b" } s1.*2
  \mark \markup { \circle "8a" } s1.*2
  \mark \markup { \circle "8b" } s1.*2
  \mark \markup { \circle "9a" } s1.*2
  \mark \markup { \circle "9b" } s1.*2
  \mark \markup { \circle "10a" } s1.*3
  \mark \markup { \circle "10b" } s1.*2
  \mark \markup { \circle "11a" } s1.*2
  \mark \markup { \circle "11b" } s1.*3
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

soprano = \relative {
  \global
  R1.*5
  r2. r4. r4 d'8^\mf
  d8^\cresc 8 8~4 8 ees4 8 f4 8 % 3a
  g8 8 8~4 8 8 8 8~4 8
  a8 8 8~4 8 4 8~8 8 8 % 3b
  g4^\f 8~4. r d4\omit\mf^\markup\italic { \dynamic mf mel.} f8
  g4. 4.~4. 4 f8
  d4. 4.~4 r8 d4 f8 % 4a
  g4. 4.~4. 4 f8
  f1.
  f2. r4. r4 d8^\mf % 4b
  f4^\markup\upright "Solo, section or all women" 8 4 8 g8 8 8~4 d8
  f4 8 4 8 g8 8 8~4 f8 % 5a
  g8 8 8~4 8 8 f4~8 8 e
  f8 4~4. r r8 d^\mf e % 5b
  f4^\cresc 8 4 8 g8 8 a8~4 8
  bes8 8 8~4 g8 bes8 8 c8~4 bes8 % 6a
  c4 8~8 8 8 d4 8~8 8 c
  c8^\f(bes) bes8~4. r d,4^\mf f8 % 6b
  g4. 4.~4. 4 f8
  d4. 4.~4 r8 d4 f8
  g4. 4.~4. 4 f8 % 7a
  f1.
  f2. r
  r2. r4. r4 e8^\mf \bar "||" \key c \major % 7b
  g4 8 4 8 a8 8 8~4 e8
  g8 8 8~8 a8 8 4 8 4 g8 % 8a
  a4 8 4 8 8 g8 8~4 f8
  g4 8~4.~4. r4 e8 % 8b
  g8^\cresc 8 8~4 8 a4 8 b4 8
  c8 8 8~4 8 4 8 d4 c8 % 9a
  d8 8 8~4 8 e4 8~8 8 d
  d8^\f(c) 8~4. r e,4 g8 % 9b
  a4. 4.~4. 4 g8
  e4. 4.~4 r8 4 g8 % 10a
  a4. 4.~4. 4 g8
  g2. 4 r8 <g b>4^\markup\upright div. <g b>8
  a4. 4.~4. 4 <g b>8^\markup\upright div. % 10b
  <e c'>4. 4.~4 r8 q4 <g b>8
  a4. 4.~4. 4 <g b>8^\markup div. % 11a
  << { g1.\omit\dim } \new Voice { \voiceOne c2.^\markup\italic "rit. e dim." ~(4. b4.)} >>
  <g c>1.~
  q1.\omit\p\fermata
}

sopranoRhythm = \relative {
  \global
  R1.*5
  r2. r4. r4 d'8^\ff
  d8 8 8~4 8 ees4 8 f4 8 % 3a
  g8 8 8~4 8 8 8 8~4 8
  a8 8 8~4 8 4 8~8 8 8 % 3b
  g4 8~4. r d4^\markup\italic { \dynamic mf mel.} f8
  g4. 4.~4. 4 f8
  d4. 4.~4 r8 d4 f8 % 4a
  g4. 4.~4. 4 f8
  f1.
  f2. r4. r4 d8 % 4b
  f4 8 4 8 g8 8 8~4 d8
  f4 8 4 8 g8 8 8~4 f8 % 5a
  g8 8 8~4 8 8 f4~8 8 e
  f8 4~4. r r8 d e % 5b
  f4 8 4 8 g8 8 a8~4 8
  bes8 8 8~4 g8 bes8 8 c8~4 bes8 % 6a
  c4 8~8 8 8 d4 8~8 8 c
  c8^(bes) bes8~4. r d,4 f8 % 6b
  g4. 4.~4. 4 f8
  d4. 4.~4 r8 d4 f8
  g4. 4.~4. 4 f8 % 7a
  f1.
  f2. r
  r2. r4. r4 e8 \bar "||" \key c \major % 7b
  g4 8 4 8 a8 8 8~4 e8
  g8 8 8~8 a8 8 4 8 4 g8 % 8a
  a4 8 4 8 8 g8 8~4 f8
  g4 8~4.~4. r4 e8 % 8b
  g8 8 8~4 8 a4 8 b4 8
  c8 8 8~4 8 4 8 d4 c8 % 9a
  d8 8 8~4 8 e4 8~8 8 d
  d8^(c) 8~4. r e,4 g8 % 9b
  a4. 4.~4. 4 g8
  e4. 4.~4 r8 4 g8 % 10a
  a4. 4.~4. 4 g8
  g2. 4 r8 <g b>4^\markup\upright div. <g b>8
  a4. 4.~4. 4 <g b>8^\markup\upright div. % 10b
  <e c'>4. 4.~4 r8 q4 <g b>8
  a4. 4.~4. 4 <g b>8^\markup div. % 11a
  << { g1. } \new Voice { \voiceOne c2.^\markup\italic "rit. e dim." ~(4. b4.)} >>
  <g c>1.~
  q1.\fermata
}

alto = \relative {
  \global
  R1.*5
  r2. r4. r4 d'8^\mf
  d8^\cresc 8 8~4 8 ees4 8 f4 8 % 3a
  d8 8 8~4 8 e8 8 8~4 8
  f8 8 8~4 8 fis4 8~8 8 8 % 3b
  d4^\f 8~4. r d4^\mf c8
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees8( d} \tuplet 2/3 {ees f)} g4 a8
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} g4) r8 d4 8 % 4a
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees(d} \tuplet 2/3 {ees f)} ees4 c8
  d4.(~8 ees d c2.)
  d2. r R1. % 4b
  R1. % 5a
  R1.
  r2. r4. r8 d8^\mf ees % 5b
  d4^\cresc 8 4 8 ees8 8 f8~4 8
  d8 8 8~4 8 ees8 8 8~4 8 % 6a
  f4 8~8 8 g a4 8~8 fis fis
  a8^\f(g) 8~4. r d4^\mf c8 % 6b
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees(d} \tuplet 2/3 {g a)} bes4 c8
  \tuplet 2/3 {bes8(c)} \tuplet 2/3 {g(f} g4) r8 d4 8
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees(d} \tuplet 2/3 {ees f)} ees4 c8 % 7a
  d4.(~8 ees d c2.)
  d2. r
  r2. r4. r4 e8^\mf \bar "||" \key c \major % 7b
  g4 8 4 8 a8 8 8~4 e8
  g8 8 8~8 8 8 a4 8 4 g8 % 8a
  a4 8 4 8 8 g8 8~4 f8
  g4 8~4.~4. r4 e8 % 8b
  e8^\cresc 8 8~4 8 f4 8 g4 8
  e8 8 8~4 8 f4 8 4 8 % 9a
  g8 8 8~4 a8 b4 8~8 gis gis
  b8^\f(a) a~4. r e4 d8 % 9b
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} a4 b8
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} a4) r8 e4 8 % 10a
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} f4 d8
  e4.(~8 f e) d4 r8 d4 8
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} a4 b8 % 10b
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} a4) r8 e4 8
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} f4 d8 % 11a
  e4.\omit\dim^\markup\italic "rit. e dim."(~8 f e d2.)
  e1.~ % 11b
  e1.\omit\p\fermata
  R1.
}

altoRhythm = \relative {
  \global
  R1.*5
  r2. r4. r4 d'8^\ff
  d8 8 8~4 8 ees4 8 f4 8 % 3a
  d8 8 8~4 8 e8 8 8~4 8
  f8 8 8~4 8 fis4 8~8 8 8 % 3b
  d4 8~4. r d4 c8
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees8( d} \tuplet 2/3 {ees f)} g4 a8
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} g4) r8 d4 8 % 4a
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees(d} \tuplet 2/3 {ees f)} ees4 c8
  d4.(~8 ees d c2.)
  d2. r R1. % 4b
  R1. % 5a
  R1.
  r2. r4. r8 d8 ees % 5b
  d4 8 4 8 ees8 8 f8~4 8
  d8 8 8~4 8 ees8 8 8~4 8 % 6a
  f4 8~8 8 g a4 8~8 fis fis
  a8^(g) 8~4. r d4 c8 % 6b
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees(d} \tuplet 2/3 {g a)} bes4 c8
  \tuplet 2/3 {bes8(c)} \tuplet 2/3 {g(f} g4) r8 d4 8
  \tuplet 2/3 {ees8(f)} \tuplet 2/3 {ees(d} \tuplet 2/3 {ees f)} ees4 c8 % 7a
  d4.(~8 ees d c2.)
  d2. r
  r2. r4. r4 e8 \bar "||" \key c \major % 7b
  g4 8 4 8 a8 8 8~4 e8
  g8 8 8~8 8 8 a4 8 4 g8 % 8a
  a4 8 4 8 8 g8 8~4 f8
  g4 8~4.~4. r4 e8 % 8b
  e8 8 8~4 8 f4 8 g4 8
  e8 8 8~4 8 f4 8 4 8 % 9a
  g8 8 8~4 a8 b4 8~8 gis gis
  b8^(a) a~4. r e4 d8 % 9b
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} a4 b8
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} a4) r8 e4 8 % 10a
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} f4 d8
  e4.(~8 f e) d4 r8 d4 8
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} a4 b8 % 10b
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} a4) r8 e4 8
  \tuplet 2/3 {f8(g)} \tuplet 2/3 {f(e} \tuplet 2/3 {f g)} f4 d8 % 11a
  e4.^\markup\italic "rit. e dim."(~8 f e d2.)
  e1.~ % 11b
  e1.\fermata
  R1.
}

tenor = \relative {
  \global
  R1.*5
  r2. r4. r4 d8^\mf
  f8^\cresc 8 8~4 8 g4 8 a4 8 % 3a
  bes8 8 8~4 g8 bes8 8 c~4 bes8
  c8 8 8~4 8 d4 8~8 8 c % 3b
  c8^\f(bes)8~4. r bes4^\mf 8
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} \tuplet 2/3 {g a)} bes4 c8
  \tuplet 2/3 {bes8(c)} \tuplet 2/3 {bes(a} bes4) r8 bes4 8 % 4a
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} \tuplet 2/3 {g a)} bes4 a8
  bes4.~(8 c bes~4. a4.)
  bes2. r % 4b
  R1.
  R1. % 5a
  R1.
  r2. r4. r8 d,8^\mf ees % 5b
  f4^\cresc 8 4 8 bes8 8 c~4 8
  bes8 8 8~4 8 8 8 c~4 bes8 % 6a
  c4 8~8 8 8 d4 8~8 8 c
  c8^\f(d) 8~4. r bes4^\mf 8 % 6b
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} \tuplet 2/3 {g a)} bes4 c8
  \tuplet 2/3 {bes8(c)} \tuplet 2/3 {bes(a} bes4) r8 bes4 8
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} \tuplet 2/3 {g a)} bes4 a8 % 7a
  bes4.(~8 c bes~4. a)
  bes2. r
  r2. r4. r4 e,8^\mf \bar "||" \key c \major % 7b
  g4 8 4 8 a8 8 8~4 e8
  g8 8 8~8 8 8 a4 8 4 g8 % 8a
  a4 8 4 8 8 g8 8~4 f8
  g4 8~4.~4. r4 e8 % 8b
  g8^\cresc 8 8~4 8 c4 8 d4 8
  c8 8 8~4 8 4 8 d4 c8 % 9a
  d8 8 8~4 8 e4 8~8 8 d
  d8^\f(e) 8~4. r c4 8 % 9b
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} \tuplet 2/3 {a b)} c4 d8
  \tuplet 2/3 {c8(d)} \tuplet 2/3 {c(b} c4) r8 c4 8 % 10a
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} \tuplet 2/3 {a b)} c4 b8
  c4.(~8 d c) b4 r8 c4 b8
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} \tuplet 2/3 {a b)} c4 d8 % 10b
  \tuplet 2/3 {c8(d)} \tuplet 2/3 {c(b} c4) r8 c4 8
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} \tuplet 2/3 {a b)} c4 8 % 11a
  c4.\omit\dim^\markup\italic "rit. e dim."(~8 d c~4. b)
  c1.~ % 11b
  c1.\omit\p\fermata
  R1.
}

tenorRhythm = \relative {
  \global
  R1.*5
  r2. r4. r4 d8^\ff
  f8 8 8~4 8 g4 8 a4 8 % 3a
  bes8 8 8~4 g8 bes8 8 c~4 bes8
  c8 8 8~4 8 d4 8~8 8 c % 3b
  c8^(bes)8~4. r bes4 8
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} \tuplet 2/3 {g a)} bes4 c8
  \tuplet 2/3 {bes8(c)} \tuplet 2/3 {bes(a} bes4) r8 bes4 8 % 4a
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} \tuplet 2/3 {g a)} bes4 a8
  bes4.~(8 c bes~4. a4.)
  bes2. r % 4b
  R1.
  R1. % 5a
  R1.
  r2. r4. r8 d,8 ees % 5b
  f4 8 4 8 bes8 8 c~4 8
  bes8 8 8~4 8 8 8 c~4 bes8 % 6a
  c4 8~8 8 8 d4 8~8 8 c
  c8^(d) 8~4. r bes4 8 % 6b
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} \tuplet 2/3 {g a)} bes4 c8
  \tuplet 2/3 {bes8(c)} \tuplet 2/3 {bes(a} bes4) r8 bes4 8
  \tuplet 2/3 {bes8(a)} \tuplet 2/3 {g(f} \tuplet 2/3 {g a)} bes4 a8 % 7a
  bes4.(~8 c bes~4. a)
  bes2. r
  r2. r4. r4 e,8 \bar "||" \key c \major % 7b
  g4 8 4 8 a8 8 8~4 e8
  g8 8 8~8 8 8 a4 8 4 g8 % 8a
  a4 8 4 8 8 g8 8~4 f8
  g4 8~4.~4. r4 e8 % 8b
  g8 8 8~4 8 c4 8 d4 8
  c8 8 8~4 8 4 8 d4 c8 % 9a
  d8 8 8~4 8 e4 8~8 8 d
  d8^(e) 8~4. r c4 8 % 9b
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} \tuplet 2/3 {a b)} c4 d8
  \tuplet 2/3 {c8(d)} \tuplet 2/3 {c(b} c4) r8 c4 8 % 10a
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} \tuplet 2/3 {a b)} c4 b8
  c4.(~8 d c) b4 r8 c4 b8
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} \tuplet 2/3 {a b)} c4 d8 % 10b
  \tuplet 2/3 {c8(d)} \tuplet 2/3 {c(b} c4) r8 c4 8
  \tuplet 2/3 {c8(b)} \tuplet 2/3 {a(g} \tuplet 2/3 {a b)} c4 8 % 11a
  c4.^\markup\italic "rit. e dim."(~8 d c~4. b)
  c1.~ % 11b
  c1.\fermata
  R1.
}

bass = \relative {
  \global
  R1.
  r2. r4. r4 d8\omit\mf^\markup\upright {\right-align Solo, section or all men \dynamic mf }
  f4 f8 f4 f8 g g g~4 d8 % 2b
  f8 f f~f f f g4 g8 g4 f8
  g8 g4~8 g g g4 f8 f ees4 % 2c
  f4 f8~4.~4. r4 d8^\mf \break
  f8^\cresc f f~4 f8 g4 g8 a4 a8 % 3a
  bes8 bes bes~4 g8 ees ees ees~4 ees8
  f8 8 8~4 8 d4 d8~d d d % 3b
  g4^\f 8~4. r4. f4^\mf d8
  ees4. 4.~4. 4 f8
  g4. 4.~4 r8 g4 f8 % 4a
  ees4. 4.~4. 4 f8
  f1.
  <bes, f'>2. r % 4b
  R1.*3
  r2. r4. r8 d^\mf ees % 5b
  bes4^\cresc 8 4 8 ees8 8 f8~4 8
  g8 8 8~4 f8 g g g~4 8 % 6a
  a4 8~8 8 g fis4 8~8 d d
  g4^\f 8~4. r f4^\mf d8 % 6b
  ees4. 4.~4. 4 f8
  g4. 4.~4 r8 g4 f8
  ees4. 4.~4. 4 f8 % 7a
  f1.
  <bes, f'>2.^\markup\italic div. r
  r2. r4. r4 e8^\mf \bar "||" \key c \major % 7b
  g4 8 4 8 a a a~4 e8
  g8 8 8~8 8 8 a4 8 4 g8 % 8a
  a4 8 4 8 8 g g~4 f8
  g4 8~4.~4. r4 e8 % 8b
  c8^\cresc 8 8~4 8 f4 8 g4 8
  a8 8 8~4 g8 a4 8 4 8 % 9a
  b8 8 8~4 a8 gis4 8~8 e e
  a4^\f 8~4. r g4 e8 % 9b
  f4. 4.~4. 4 g8
  a4. 4.~4 r8 g4 f8 % 10a
  f4. 4.~4. 4 g8
  g2. 4 r8 e4 8
  f4. 4.~4. 4 g8 % 10b
  a4. 4.~4 r8 a4 g8
  f4. 4.~4. 4 g8 % 11a
  g1.\omit\dim^\markup\italic "rit. e dim."
  <c, g'>1.^\markup\italic div. ~
  q1.\omit\p\fermata
  R1.
  \bar "|."
}

bassRhythm = \relative {
  \global
  R1.
  r2. r4. r4 d8\ff^\markup\upright {\right-align Solo, section or all men \dynamic mf }
  f4 f8 f4 f8 g g g~4 d8 % 2b
  f8 f f~f f f g4 g8 g4 f8
  g8 g4~8 g g g4 f8 f ees4 % 2c
  f4 f8~4.~4. r4 d8 \break
  f8 f f~4 f8 g4 g8 a4 a8 % 3a
  bes8 bes bes~4 g8 ees ees ees~4 ees8
  f8 8 8~4 8 d4 d8~d d d % 3b
  g4 8~4. r4. f4 d8
  ees4. 4.~4. 4 f8
  g4. 4.~4 r8 g4 f8 % 4a
  ees4. 4.~4. 4 f8
  f1.
  <bes, f'>2. r % 4b
  R1.*3
  r2. r4. r8 d ees % 5b
  bes4 8 4 8 ees8 8 f8~4 8
  g8 8 8~4 f8 g g g~4 8 % 6a
  a4 8~8 8 g fis4 8~8 d d
  g4 8~4. r f4 d8 % 6b
  ees4. 4.~4. 4 f8
  g4. 4.~4 r8 g4 f8
  ees4. 4.~4. 4 f8 % 7a
  f1.
  <bes, f'>2.^\markup\italic div. r
  r2. r4. r4 e8 \bar "||" \key c \major % 7b
  g4 8 4 8 a a a~4 e8
  g8 8 8~8 8 8 a4 8 4 g8 % 8a
  a4 8 4 8 8 g g~4 f8
  g4 8~4.~4. r4 e8 % 8b
  c8 8 8~4 8 f4 8 g4 8
  a8 8 8~4 g8 a4 8 4 8 % 9a
  b8 8 8~4 a8 gis4 8~8 e e
  a4 8~4. r g4 e8 % 9b
  f4. 4.~4. 4 g8
  a4. 4.~4 r8 g4 f8 % 10a
  f4. 4.~4. 4 g8
  g2. 4 r8 e4 8
  f4. 4.~4. 4 g8 % 10b
  a4. 4.~4 r8 a4 g8
  f4. 4.~4. 4 g8 % 11a
  g1.^\markup\italic "rit. e dim."
  <c, g'>1.^\markup\italic div. ~
  q1.\fermata
  R1.
  \bar "|."
}

wordsSop = \lyricmode {
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

wordsSopMidi = \lyricmode {
  "It " "goes " "like " "this, "  "the " "fourth, " "the " "fifth, "
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

wordsAlto = \lyricmode {
  It goes like this, __ the fourth, the fifth,
  the mi -- nor fall, __ the ma -- jor lift; __
  the baf -- fled king __ com -- pos -- ing __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
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

wordsAltoMidi = \lyricmode {
  "It " "goes " "like " "this, "  "the " "fourth, " "the " "fifth, "
  "\nthe " mi "nor " "fall, "  "the " ma "jor " "lift; " 
  "\nthe " baf "fled " "king "  com pos "ing " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
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

wordsTenor = \lyricmode {
  It goes like this, __ the fourth, the fifth,
  the mi -- nor fall, __ the ma -- jor lift; __
  the baf -- fled king __ com -- pos -- ing __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
  Hal -- le -- lu -- jah. __
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

wordsTenorMidi = \lyricmode {
  "It " "goes " "like " "this, "  "the " "fourth, " "the " "fifth, "
  "\nthe " mi "nor " "fall, "  "the " ma "jor " "lift; " 
  "\nthe " baf "fled " "king "  com pos "ing " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
  "\nHal" le lu "jah. " 
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

wordsBass = \lyricmode {
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

wordsBassMidi = \lyricmode {
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

pianoRH = \relative c' {
  \global
  \repeat unfold 4 {d8\omit\mf f, bes f' f, bes d g, bes g' g, bes}
  ees8 g, bes g' g, bes f' f, a c f, a % 2c
  d8 f, bes f' f, bes c f, a f' f, a
  d8\omit\cresc f, bes f' f, bes ees g, bes f' f, c' % 3a
  \repeat unfold 4 {g'8 bes, d}
  a'8 c, f a c, f a d, fis a d, fis % 3b
  g8\omit\f d bes bes' g d g4. <bes, d>4\omit\mf <bes c f>8
  g'8 g, bes ees bes g g' g, bes ees bes g
  d'8 g, bes g' bes, g d'8 g, bes g' bes g % 4a
  ees8 g, bes g' g, bes ees g, bes g' g, bes
  d8 f, bes f' f, d' f c bes a g f
  bes8 d, f d' d, f <f bes c> f bes <f a c f>4. % 4b
  d'8\omit\mf f, bes f' f, bes d g, bes g' g, bes
  d8 f, bes f' f, bes d g, bes g' g, bes % 5a
  ees8 g, bes g' g, bes f' f, a c f, a
  d8 f, bes f' f, bes c f, a f' f, a % 5b
  d8\omit\cresc f, bes f' f, bes ees g, c f a, c
  g'8 bes, d g bes, d g bes, ees g bes, ees % 6a
  a8 c, f a c, f a d, fis a d, fis
  g8\omit\f d bes bes' g d g4. <bes, d>4\omit\mf <bes c f>8 % 6b
  g'8 g, bes ees bes g g' g, bes ees bes g
  d'8 g, bes g' bes, g d' g, bes g' bes, g
  ees'8 g, bes g' g, bes ees g, bes g' g, bes % 7a
  d8 f, bes f' f, d' f c bes a g f
  bes8 d, f d' d, f <f bes c> f bes <f a c f>4.
  <g c e>8 g c g' g, c <g c d g>4. <g b d g>4 e'8 \bar "||" \key c \major % 7b
  e8\omit\mf g, c g' g, c e a, c a' a, c
  e8 g, c g' g, c e a, c a' a, c % 8a
  f8 a, c a' a, c g' g, b d g, b
  e8 g, c g' g, c d g, b g' g, b % 8b
  e8\omit\cresc g, c g' g, c f a, c g' b, d
  a'8 c, e a c, e a c, f a c, f % 9a
  b8 d, g b d, g b e, gis b e, gis
  a8\omit\f e c c' a e <c e a>4. <c e>4 <c d g>8 % 9b
  a'8 a, c f c a a' a, c f c a
  e'8 a, c a' c, a e' a, c a' c, a % 10a
  f'8 a, c a' a, c f a, c a' a, c
  e8 g, c g' g, e' <g, b d g>4. <d' g c>4 b'8
  a8 a, c f c a a' a, c f c a % 10b
  e' a, c a' c, a e' a, c a' c, a
  f'8 a, c a' a, c f a, c a' a, c % 11a
  e8\omit\dim g, c g' g, e' g d c b a g
  c8 e, g c e, g d' e, g c e, g\omit\p % 11b
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
  s1.\cresc
  s1.
  s1.
  s2.\f s4. s\mf
  s1.*5
  s1.\mf
  s1.
  s1.
  s1.
  s1.\cresc
  s1.*2
  s2.\f s4. s\mf % 6b
  s1.*6
  s1.\mf
  s1.*3
  s1.\cresc
  s1.*2
  s1.\f
  s1.*7
  s1.-\markup\italic "rit. e dim."
  s1.*3
}

pianoLH = \relative {
  \global
  \oneVoice
  bes,4.\omit\mf~4 a8 g4.~4 a8
  bes4. ~4 a8 g4.~4 a8
  bes4. ~4 a8 g4.~4 a8 % 2b
  bes4. ~4 a8 g4.~4 f8
  ees2. f % 2c
  bes4.~8 d, ees f2.
  bes2.\omit\cresc ees,4. f % 3a
  g4.~4 f8 ees2.
  f4.~4 f8 d4. d' % 3b
  g,4.\omit\f~4 d8 g4. bes4\omit\mf d8
  ees4.~4 bes8 ees,4.~4 f8
  g4.~4 d8 g4.~4 f8 % 4a
  ees4.~4 bes8 ees4.~8 d c
  bes4.~4 bes8 f'4. f,
  bes4.~4 bes8 f'4. f, % 4b
  bes'4.\omit\mf~4 a8 g4.~4 a8
  bes4.~4 a8 g4.~4 f8 % 5a
  ees2. f
  bes4.~8 d,8 ees f2. % 5b
  bes2.\omit\cresc ees,4. f
  g4.~4 f8 ees2. % 6a
  f4.~4 f8 d4. d'
  g,4.\omit\f~4 d8 g4. bes4\omit\mf d8 % 6b
  ees4.~4 bes8 ees,4.~4 f8
  g4.~4 d8 g4.~4 f8
  ees4.~4 bes8 ees4.~8 d c % 7a
  bes4.~4 bes8 f'4. f,
  bes4.~4 bes8 f'4. f,
  c'4.~8 e f g4. g, \bar "||" \key c \major % 7b
  c'4.\omit\mf~4 b8 a4.~4 b8
  c4.~4 b8 a4.~4 g8 % 8a
  f2. g
  c4.~8 e, f g2. % 8b
  c2.\omit\cresc f,4. g
  a4.~4 g8 f2. % 9a
  g4.~4 g8 e4. e'
  a,4.\omit\f~4 e8 a4. c4 e8 % 9b
  f4.~4 c8 f,4.~4 g8
  a4.~4 e8 a4.~4 g8 % 10a
  f4.~4 c8 f4.~8 e d
  c4.~4 c8 g'4. <e' c'>4.
  f,4.~4 f8 f4.~4 g8 % 10b
  a4.~4 e8 a4.~4 g8
  f4.~4 c8 f4.~8 e d % 11a
  c4.\omit\dim~4 c8 g'4. g,
  c2. g' % 11b
  <c, g'>1.^\fermata
  <c, c'>4\omit\p r8 r4. r2.
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

\book {
  \bookOutputSuffix "single"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single Alto staff
          \new Staff \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single Tenor staff
          \new Staff \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single Bass staff
          \new Staff \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef bass
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%         \new FretBoard { \ChordTrack }
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
    \layout {}
  }
}


\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single Alto staff
          \new Staff \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single Tenor staff
          \new Staff \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single Bass staff
          \new Staff \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef bass
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%         \new FretBoard { \ChordTrack }
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
    \layout {}
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single Alto staff
          \new Staff \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single Tenor staff
          \new Staff \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single Bass staff
          \new Staff \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef bass
            \new Voice = "bass" \bass
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
    \midi {}
  }
}


\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single Alto staff
          \new Staff \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single Tenor staff
          \new Staff \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single Bass staff
          \new Staff \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef bass
            \new Voice = "bass" \bass
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
    \midi {}
  }
}


\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single Alto staff
          \new Staff \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \alto
          >>
                                % Single Tenor staff
          \new Staff \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single Bass staff
          \new Staff \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef bass
            \new Voice = "bass" \bass
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
    \midi {}
  }
}


\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single Alto staff
          \new Staff \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single Tenor staff
          \new Staff \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single Bass staff
          \new Staff \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef bass
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBassMidi
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
    \midi {}
  }
}

\book {
  \bookOutputSuffix "rhythm"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
          \new Staff <<
            \new Voice \sopranoRhythm
          >>
          \new Staff <<
            \new Voice \altoRhythm
          >>
          \new Staff <<
            \new Voice \tenorRhythm
          >>
          \new Staff <<
            \new Voice \bassRhythm
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRHrhythm
          >>
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLHrhythm
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
    \midi {}
  }
}
