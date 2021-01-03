\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "At the River"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup { Adapted by \smallCaps {Aaron Copland}}
  arranger    = \markup \italic { Choral arrangement by R. Wilding-White}
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key f \major
  \time 4/4
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
  \tempo "With dignity" 4=66
  s1
  \set Score.tempoHideNote = ##t
  \time 3/4 s2. \time 4/4
  s1*37
  s2 \tempo 4=60 s
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "2a" } s1 \time 3/4 s2. \time 4/4 s1
  \mark \markup { \circle "2b" } s1*3
  \mark \markup { \circle "3a" } s1*3
  \mark \markup { \circle "3b" } s1*3
  \mark \markup { \circle "4a" } s1*2
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \circle "5a" } s1*3
  \mark \markup { \circle "5b" } s1*3
  \mark \markup { \circle "6a" } s1*3
  \mark \markup { \circle "6b" } s1*3
  \mark \markup { \circle "7a" } s1*3
  \mark \markup { \circle "7b" } s1*2
  \mark \markup { \circle "8a" } s1*3
  \mark \markup { \circle "8b" } s1*4
}

soprano = \relative {
  \global
  R1
  \time 3/4 R2. \time 4/4
  a'4 a a8. g16 a8. bes16
  c2 a % 2b
  bes4 bes bes8. c16 bes8. a16
  g2(c)
  a4 a a8. g16 a8. bes16 % 3a
  c2 a4 a8 bes
  g4 g8(a) bes4 a8(g)
  a1 % 3b
  R1
  d4 d8.(e16) f8. e16 f8. d16
  c2 a4. a8 % 4a
  bes8. a16 bes8. a16 bes8. a16 bes8.(a16)
  a2 c % 4b
  d8. d16 d8. e16 f8.(e16) f8. d16
  c2 a4. a8
  g4 g8. a16 bes4 a8(g) % 5a
  a2 r
  R1
  R1 % 5b
  R1
  f'4 c d c
  f,4 g a f \breathe % 6a
  f'4 c d c
  f,4 g e2 \breathe
  a4 a a8. g16 a8. bes16 % 6b
  c2 a4 a8 bes
  g4. a8 bes4 a8(g)
  a1 % 7a
  R1
  d4 d8.(e16) f8. e16 f8. e16
  c2 a4. a8 % 7b
  bes8. a16 bes8. a16 bes8. a16 bes8.(a16)
  a2 c % 8a
  d8. d16 d8. e16 f8.(e16) f8. d16
  c2 a4. a8
  g4 g8 a bes4 a8(g) % 8b
  a2 r4 a
  g4 g8 a bes4 a8(g)
  <a f'>1\fermata
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1
  \time 3/4 s2. \time 4/4
  s1\p
  s1*3
  s1-\markup \italic { ( \dynamic p ) (stand out slightly) } % 3a
  s1
  s1
  s4 s2\< s4\!-\markup \italic poco % 3b
  s1
  s1\p
  s1*3
  s4 s2.\< % 4b+
  s1\>
  s1\! % 5a
  s1*4
  s1\ff % 5b++
  s1 % 6a
  s1-\markup \center-align \bold \italic {meno \dynamic f }
  s1
  s1-\markup \italic { \dynamic mf (Melody) } % 6b
  s2. s4\p
  s1
  s4 s2\< s4\!-\markup \italic poco % 7a
  s1
  s1\p
  s2. s8 s\mp % 7b
  s1
  s4 s2\< s4\! % 8a
  s4\mf s8. s16\< s4 s\!
  s2\> s4.\! s8\mf
  s1\cresc
  s2. s4\ff
  s2 s-\markup \italic rit.
  s1
}

wordsSop = \lyricmode {
  Shall we gath -- er by the riv -- er,
  Where bright an -- gel's feet have trod, __
  With it's crys -- tal tide for -- ev -- er
  Flow -- ing by the __ throne of __ God.

  Yes, we'll __ gath -- er by the riv -- er,
  the beau -- ti -- ful, the beau -- ti -- ful __ riv -- er,
  Gath -- er with the saints __ by the riv -- er
  That Flows by the throne of __ God.

  Soon we'll reach the shin -- ing riv -- er,
  Soon our pil -- grim -- age will cease.
  Soon our hap -- py hearts will quiv -- er
  With the mel -- o -- dy of __ peace.

  Yes, we'll __ gath -- er by the riv -- er,
  the beau -- ti -- ful, the beau -- ti -- ful __ riv -- er,
  Gath -- er with the saints __ by the riv -- er
  That Flows by the throne of __ God,
  that Flows by the throne of __ God.
}

wordsSopMidi = \lyricmode {
  "Shall " "we " gath "er " "by " "the " riv "er, "
  "\nWhere " "bright " an "gel's " "feet " "have " "trod, " 
  "\nWith " "it's " crys "tal " "tide " for ev "er "
  "\nFlow" "ing " "by " "the "  "throne " "of "  "God. "

  "\nYes, " "we'll "  gath "er " "by " "the " riv "er, "
  "\nthe " beau ti "ful, " "the " beau ti "ful "  riv "er, "
  "\nGath" "er " "with " "the " "saints "  "by " "the " riv "er "
  "\nThat " "Flows " "by " "the " "throne " "of "  "God. "

  "\nSoon " "we'll " "reach " "the " shin "ing " riv "er, "
  "\nSoon " "our " pil grim "age " "will " "cease. "
  "\nSoon " "our " hap "py " "hearts " "will " quiv "er "
  "\nWith " "the " mel o "dy " "of "  "peace. "

  "\nYes, " "we'll "  gath "er " "by " "the " riv "er, "
  "\nthe " beau ti "ful, " "the " beau ti "ful "  riv "er, "
  "\nGath" "er " "with " "the " "saints "  "by " "the " riv "er "
  "\nThat " "Flows " "by " "the " "throne " "of "  "God, "
  "\nthat " "Flows " "by " "the " "throne " "of "  "God. "
}

alto = \relative {
  \global
  R1
  \time 3/4 R2. \time 4/4
  f'1->~
  f1 % 2b
  f1->~(
  f2 e)
  f4 f f f % 3a
  f4 f f f
  g4 g f f
  f4 f f2 % 3b
  R1
  bes4 bes8.(c16) d8. c16 d8. bes16
  a2 f4. c8 % 4a
  \repeat unfold 3 {d8. c16} d8.(e16)
  f2 a % 4b
  bes8. bes16 bes8. c16 bes8.(c16) d8. bes16
  a2 fis4. fis8
  g4 g8. f16 g4 a8(g) % 5a
  f2 r
  R1
  R1 % 5b
  R1
  a4 a a8. g16 a8. bes16
  c2 a \breathe % 6a
  bes4 bes bes8. c16 bes8. a16
  g2(c) \breathe
  f,4 f f8. f16 f8. f16 % 6b
  g2 f4 f8 f
  d4 d c f
  f2(g) % 7a
  R1
  bes4 bes8.(c16) d8. c16 d8. bes16
  a4~(a8. g16 fis8. e16) fis8. d16 % 7b
  f8. e16 d8. e16 f8. e16 d8.(g16)
  f4.(g8) a2 % 8a
  bes8. bes16 bes8. c16 d8.(c16) d8. bes16
  a4(g) fis4. fis8
  g4 d8 bes f'4 e % 8b
  f2 r4 g
  f4 e8 d c4 e
  f1\fermata
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1
  \time 3/4 s2. \time 4/4
  s1\p
  s1*3
  s1-\markup \italic { ( \dynamic p ) (molto legato) } % 3a
  s1
  s1
  s4 s2\< s4\!-\markup \italic poco % 3b
  s1
  s1\p
  s1*3
  s4 s2.\< % 4b+
  s1\>
  s1\! % 5a
  s1*4
  s1\ff % 5b++
  s1 % 6a
  s1-\markup \center-align \bold \italic {meno \dynamic f }
  s1
  s1-\mf % 6b
  s2. s4\p
  s1
  s4 s2\< s4\!-\markup \italic poco % 7a
  s1
  s1\p
  s2. s4\mp % 7b
  s1
  s4 s2\< s4\! % 8a
  s4\mf s8. s16\< s4 s\!
  s2\> s4.\! s8\mf
  s1\cresc
  s2. s4\ff
  s2 s-\markup \italic rit.
  s1
}

wordsAlto = \lyricmode {
  Hm Hm
  With it's crys -- tal tide for -- ev -- er
  Flow -- ing by the __ throne of __ God.

  Yes, we'll __ gath -- er by the riv -- er,
  the beau -- ti -- ful, the beau -- ti -- ful __ riv -- er,
  Gath -- er with the saints __ by the riv -- er
  That Flows by the throne of __ God.

  Soon we'll reach the shin -- ing riv -- er,
  Soon our pil -- grim -- age will cease.
  Soon our hap -- py hearts will quiv -- er
  With the mel -- o -- dy of __ peace.

  Yes, we'll __ gath -- er by the riv -- er,
  the beau -- ti -- ful, the beau -- ti -- ful __ riv -- er,
  Gath -- er with the saints __ by the riv -- er
  That Flows by the throne of __ God,
  that Flows by the throne of __ God.
}

wordsAltoMidi = \lyricmode {
  "Hm " "Hm "
  "\nWith " "it's " crys "tal " "tide " for ev "er "
  "\nFlow" "ing " "by " "the "  "throne " "of "  "God. "

  "\nYes, " "we'll "  gath "er " "by " "the " riv "er, "
  "\nthe " beau ti "ful, " "the " beau ti "ful "  riv "er, "
  "\nGath" "er " "with " "the " "saints "  "by " "the " riv "er "
  "\nThat " "Flows " "by " "the " "throne " "of "  "God. "

  "\nSoon " "we'll " "reach " "the " shin "ing " riv "er, "
  "\nSoon " "our " pil grim "age " "will " "cease. "
  "\nSoon " "our " hap "py " "hearts " "will " quiv "er "
  "\nWith " "the " mel o "dy " "of "  "peace. "

  "\nYes, " "we'll "  gath "er " "by " "the " riv "er, "
  "\nthe " beau ti "ful, " "the " beau ti "ful "  riv "er, "
  "\nGath" "er " "with " "the " "saints "  "by " "the " riv "er "
  "\nThat " "Flows " "by " "the " "throne " "of "  "God, "
  "\nthat " "Flows " "by " "the " "throne " "of "  "God. "
}

tenor = \relative {
  \global
  R1
  \time 3/4 R2. \time 4/4
  f'4 f g8. f16 a8. g16
  d2 c % 2b
  bes4 bes a8. bes16 g8. a16
  bes2(c)
  f4 c d f % 3a
  c4 f d c
  d4 f d c
  d4 f e2 % 3b
  R1
  r2 d4 d8.(e16)
  e8. f16 e8. d16 c4 a8 f % 4a
  g8. f16 g8. a16 bes8. c16 d8.(c16)
  c2 e % 4b
  f8. f16 f8. e16 d8.(e16) f8. g16
  e2 d4. d8
  d4 d8. d16 f4 d8(c) % 5a
  a2 r
  R1
  R1 % 5b
  R1
  c4 f d f,
  bes4 f' d a \breathe % 6a
  c4 f d f,
  c' bes a2 \breathe
  c4 c d8. d16 d8. d16 % 6b
  f4(e) d d8 d
  bes4 a g c
  d2(e) % 7a
  R1
  r2 d4 d8.(e16)
  e8. d16 e8. e16 d4 a8. d16 % 7b
  d8. e16 f8. e16 d8. e16 f8.(bes,16)
  c4.(f8) e2 % 8a
  d8. d16 d8. e16 f8.(e16) f8. d16
  e2 d4. d8
  bes4 a8 bes g4 c % 8b
  d2 r4 e8(a,)
  bes4 a8 f g4 c
  c1\fermata
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1
  \time 3/4 s2. \time 4/4
  s1\p
  s1*3
  s1-\markup \italic { ( \dynamic p ) (poco marcato) } % 3a
  s1
  s1
  s4 s2\< s4\!-\markup \italic poco % 3b
  s1
  s2 s\p
  s1*3
  s4 s2.\< % 4b+
  s1\>
  s1\! % 5a
  s1*4
  s1\ff % 5b++
  s1 % 6a
  s1-\markup \center-align \bold \italic {meno \dynamic f }
  s1
  s1-\mf % 6b
  s2. s4\p
  s1
  s4 s2\< s4\!-\markup \italic poco % 7a
  s1
  s2 s\p
  s2. s4\mp % 7b
  s1
  s4 s2\< s4\! % 8a
  s4\mf s8. s16\< s4 s\!
  s2\> s4.\! s8\mf
  s1\cresc
  s2. s4\ff
  s2 s-\markup \italic rit.
  s1
}

wordsTenor = \lyricmode {
  Shall we gath -- er by the riv -- er,
  Where bright an -- gel's feet have trod, __
  With it's crys -- tal tide for -- ev -- er
  Flow -- ing by the __ throne of __ God.

  Yes, we'll __ gath -- er by the riv -- er,
  the beau -- ti -- ful, the beau -- ti -- ful __ riv -- er,
  Gath -- er with the saints __ by the riv -- er
  That Flows by the throne of __ God.

  Soon we'll reach the shin -- ing riv -- er,
  Soon our pil -- grim -- age will cease.
  Soon our hap -- py hearts will quiv -- er
  With the mel -- o -- dy of __ peace.

  Yes, we'll __ gath -- er by the riv -- er,
  the beau -- ti -- ful, the beau -- ti -- ful __ riv -- er,
  Gath -- er with the saints __ by the riv -- er
  That Flows by the throne of __ God,
  that Flows by the throne of __ God.
}

wordsTenorMidi = \lyricmode {
  "Shall " "we " gath "er " "by " "the " riv "er, "
  "\nWhere " "bright " an "gel's " "feet " "have " "trod, " 
  "\nWith " "it's " crys "tal " "tide " for ev "er "
  "\nFlow" "ing " "by " "the "  "throne " "of "  "God. "

  "\nYes, " "we'll "  gath "er " "by " "the " riv "er, "
  "\nthe " beau ti "ful, " "the " beau ti "ful "  riv "er, "
  "\nGath" "er " "with " "the " "saints "  "by " "the " riv "er "
  "\nThat " "Flows " "by " "the " "throne " "of "  "God. "

  "\nSoon " "we'll " "reach " "the " shin "ing " riv "er, "
  "\nSoon " "our " pil grim "age " "will " "cease. "
  "\nSoon " "our " hap "py " "hearts " "will " quiv "er "
  "\nWith " "the " mel o "dy " "of "  "peace. "

  "\nYes, " "we'll "  gath "er " "by " "the " riv "er, "
  "\nthe " beau ti "ful, " "the " beau ti "ful "  riv "er, "
  "\nGath" "er " "with " "the " "saints "  "by " "the " riv "er "
  "\nThat " "Flows " "by " "the " "throne " "of "  "God, "
  "\nthat " "Flows " "by " "the " "throne " "of "  "God. "
}

bass= \relative {
  \global
  R1
  \time 3/4 R2. \time 4/4
  R1
  R1 % 2b
  R1
  R1
  f4 f g g % 3a
  a4 a bes bes
  c4 c d d,
  e4 e f2 % 3b
  R1
  R1
  r4 a8. bes16 c4 c, % 4a
  r4 bes'8. a16 g4 <\tweak font-size #-2 \parenthesize f f'>
  r4 f8. e16 d4 d' % 4b
  bes8. bes16 bes8. a16 g8.(a16) bes8. g16
  a2 d4. d8
  bes4 bes,8. bes16 c4 c % 5a
  f2 r
  R1
  R1 % 5b
  R1
  f2---> e--->
  d2---> c---> \breathe % 6a
  bes2---> a--->
  bes2---> c---> \breathe
  f4 f g8. a16 bes8. g16 % 6b
  a2 bes4 bes8 bes
  c,4 c d d
  e2(f) % 7a
  R1
  R1
  r4 bes8. bes16 d,4 d8 d % 7b
  g8. f16 e8. d16 c8. c16 d8.(e16)
  f4(e d) c % 8a
  bes8. bes16 a8. a16 g4 g'8. g16
  a2 d4. d8
  <<\voiceOne d4 \voiceTwo \tweak font-size #-2 \parenthesize d,>> \oneVoice bes8 d c4 d % 8b
  e2 r4 f
  g4 g,8 g a4 c
  f1\fermata
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1
  \time 3/4 s2. \time 4/4
  s1
  s1*3
  s1-\markup \italic { ( \dynamic p ) (molto legato) } % 3a
  s1
  s1
  s4 s2\< s4\!-\markup \italic poco % 3b
  s1*5
  s4 s2.\< % 4b+
  s1\>
  s1\! % 5a
  s1*4
  s1\ff % 5b++
  s1 % 6a
  s1-\markup \center-align \bold \italic {meno \dynamic f }
  s1
  s1-\mf % 6b
  s2. s4\p
  s1
  s4 s2\< s4\!-\markup \italic poco % 7a
  s1
  s1
  s4 s2\p s4\mp % 7b
  s1
  s4 s2\< s4\! % 8a
  s4\mf s8. s16\< s4 s\!
  s2\> s4.\! s8\mf
  s1\cresc
  s2. s4\ff
  s2 s-\markup \italic rit.
  s1
}

wordsBass = \lyricmode {
  With it's crys -- tal tide for -- ev -- er
  Flow -- ing by the __ throne of __ God.

  by the riv -- er,  by the riv -- er, by the riv -- er,
  Gath -- er with the saints __ by the riv -- er
  That Flows by the throne of __ God.

  Soon we'll reach the shin -- ing riv -- er,
  Soon our hap -- py hearts will quiv -- er
  With the mel -- o -- dy of __ peace.

  by the riv -- er,
  the beau -- ti -- ful, the beau -- ti -- ful __ riv -- er,
  Gath -- er with the saints __ by the riv -- er
  That Flows by the throne of __ God,
  that Flows by the throne of __ God.
}

wordsBassMidi = \lyricmode {
  "With " "it's " crys "tal " "tide " for ev "er "
  "\nFlow" "ing " "by " "the "  "throne " "of "  "God. "

  "\nby " "the " riv "er, "  "by " "the " riv "er, " "by " "the " riv "er, "
  "\nGath" "er " "with " "the " "saints "  "by " "the " riv "er "
  "\nThat " "Flows " "by " "the " "throne " "of "  "God. "

  "\nSoon " "we'll " "reach " "the " shin "ing " riv "er, "
  "\nSoon " "our " hap "py " "hearts " "will " quiv "er "
  "\nWith " "the " mel o "dy " "of "  "peace. "

  "\nby " "the " riv "er, "
  "\nthe " beau ti "ful, " "the " beau ti "ful "  riv "er, "
  "\nGath" "er " "with " "the " "saints "  "by " "the " riv "er "
  "\nThat " "Flows " "by " "the " "throne " "of "  "God, "
  "\nthat " "Flows " "by " "the " "throne " "of "  "God. "
}

pianoRHone = \relative {
  \global
  \voiceOne
  r4 c''2.~
  \time 3/4 c2. \time 4/4
  a2 a
  c2 a % 2b
  bes2 bes
  a2 c
  a2 a % 3a
  c2 a
  bes4(a g c)
  a2. a8. a16( % 3b
  bes4)(a g c)
  d2 f
  c2 a % 4a
  bes2 bes
  a2 c % 4b
  d2 f
  c4( a' fis a,)
  bes4(a g c) % 5a
  a4 a a8.^\cresc g16 a8. bes16\!
  c2 a8. d,16 f8. a16
  d4 bes bes8. c16 bes8. a16 % 5b
  g8 e'4 c8 e4 c
  f4^\ff c a8. g16 a8. bes16
  c2 a % 6a
  bes2 bes8. c16 bes8. a16
  g2 c
  a4 a a8. g16 a8. bes16 % 6b
  c2 s
  bes4(a g c)
  a4.. a16->~4 a8. a16->( % 7a
  b4)(a g c^\f)
  d4 d8. e16 f8. e16 f8. d16
  c2 s % 7b
  bes4 <f bes>8. <e c'>16 <f d'>8. <e c'>16 <f d'>8. <d bes'>16
  a'2 c % 8a
  d4 d8. e16 f8. e16 f8. d16
  c2 s
  bes4(a g c) % 8b
  a4.. a16->~4 a8. a16->(
  bes4)(a g c
  a1)\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  r2 bes'4(aes~
  \time 3/4 aes4 g2) \time 4/4
  <c, f>2 <d f>
  <bes f'>2 <d f> % 2b
  <c f>2 <d f>
  <c f>2 <a e>
  <c f>2 <d f> % 3a
  <c f>2 d
  <d g bes>2 <c f g>
  <d f>2(<e g>) % 3b
  <d f>2(<c e>)
  f2 <d bes>
  <e a>2 <c f> % 4a
  <d f>2 q
  <c f>2 <e a> % 4b
  <d bes'>2 q
  <e a c>2 <d a'>
  <d g>2 <c f g> % 5a
  <c f a>2 <d f>
  <bes f'>2 <d f>
  <f bes>2 <d f> % 5b
  <c g'>2 <a' c>
  r2 <d, f>
  f2 <d f> % 6a
  <c f>2 <d f>
  <c f>2 e
  <c f>2 <d f> % 6b
  <c f>2 <d a'>
  <d g>2 <c f>
  <d f>4.. q16(<e g>4) s8. q16( % 7a
  <d f>2) <c e>
  f2 <d bes'>
  <e a>2 <d fis a> % 7b
  <d f bes>2 <d f d'>
  <c f>2 <e a> % 8a
  <d bes' d>2 <d bes'>
  <e a>2 <d a'>
  <d g>2 <c f> % 8b
  <d f>4.. q16(<e g>4..) q16(
  <d f>2) <c e>4 <a e'>
  <c >1
  \bar "|."
}

pianoRHfour = \relative {
  \global
  \voiceFour
  s1
  \time 3/4 s2. \time 4/4
  s1
  r4 f''2.~^\markup { ( \dynamic pp ) } % 2b
  f1
  r4 f^\markup { ( \dynamic p ) } c a,
  r2 r4 f''4^\markup {(\dynamic pp )} % 3a
  r4 a(^\markup {(\dynamic p )} f f,)
  s1
  s1*14
  \oneVoice % 6a
  r4 \change Staff = lh bes,8. \change Staff = rh f'16 \change Staff = lh r4 d8. \change Staff = rh a'16
  \change Staff = lh r4 c,8. \change Staff = rh f16 s4 \change Staff = lh d8. \change Staff = rh f16
  \change Staff = lh r4 c8. \change Staff = rh g'16 \change Staff = lh r4 a,8. \change Staff = rh e'16
  \voiceFour
  s1 % 6b
  r4 a'^\markup {( \dynamic p )} (f f,)
  s1*4
  r4 e8. g16 fis8. e16 fis8. e16 % 7b
  s1
  \oneVoice % 8a
  \change Staff = lh r4 a,8. \change Staff = rh c16 \change Staff = lh r4 a8. \change Staff = rh c16
  \voiceFour
  s1
  r4 a''^(fis a,)
  s1*4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\f\< s\ff
  \time 3/4 s4\> s\mp s\> \time 4/4
  s1\p-\markup \italic legato
  s1*6
  s1-\markup \italic "poco cresc." % 3b
  s2. s4\f
  s1-\markup \italic {sub. \dynamic p}
  s1*3
  s4 s2.\< % 4b+
  s1\>
  s1\!
  s1*6
  s1-\markup \center-align \bold \italic {meno \dynamic f } % 6a+
  s1
  s1\mf % 6b
  s4 s2.\>
  s1\p
  s4-\markup {( \dynamic p )} s2\< s4\!
  s1
  s1-\markup \italic {sub. \dynamic p}
  s1*3
  s2\mf s2\< % 8a+
  s2\> s\!
  s1\mf\cresc % 8b
  s1
  s2\ff s-\markup \italic rit.
  s1
}

pianoLH = \relative {
  \global
  \oneVoice
  s1
  \time 3/4 s2. \time 4/4
  \clef bass
  f2 e
  d2 c % 2b
  bes2 a
  bes2 c
  <f, f'>2 <g g'> % 3a
  <a g'> <bes f'>
  <c g'>2 d
  e2(f) % 3b
  g2( \acciaccatura g8 a2)
  bes2 g
  a2 g4.. f16--( % 4a
  g4..) g16--(c,4..) c16--(
  f4..) e16--(d4..) d16--( % 4b
  bes4..) bes16--(g4..) g16--(
  a4..) a16--( d,2)
  <bes bes'>2 <c c'> % 5a
  s1
  s1
  s1 % 5b
  <e e'>4 <c c'>4~8 <a a'>4 <f f'>8->~
  q2 <e' e'>2
  <d' bes'>2 c % 6a
  bes2 a
  bes2 <c a'>
  <f, f'>2 <g g'> % 6b
  <a g'>2 <bes f'>
  <c g'> d
  s1*2
  s2 g % 7a++
  a2 <d,, d'> % 7b
  <g g'>2 <c, c'>
  <f f'>2 <d d'> % 8a
  <bes bes'>2 <g g'>
  <a a'>2 <d d'>
  <bes bes'>2 <c c'>4 <d d'> % 8b
  <e e'>4.. q16->(<f f'>4..) f16->(
  <g, g'>4.) q8 <a a'>4 \ottava #-1 c, \ottava #0
  <f f'>1\fermata
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  \clef treble
  c'2 des4 ees~
  \time 3/4 ees4 c2 \time 4/4
  s1*16
  r4 f,-- r f'-- % 5a+
  r4 bes,-- r \parenthesize f'-- % 5b
  r4 d-- r f--
  s1
  c4 f r f,
  s1*6
  e4.. e,16->(f4..) a'16( % 7a
  g4..) g,16->( a4..) a'16(
  bes2) s
  s1*9
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  \clef treble c'1(
  \time 3/4 c4 c2) \time 4/4
  s1*16
  <f,,, f'>2 <g g'> % 5a+
  <a a'>2 <bes bes'>
  <a a'>2 <c c'>4 <d d'> % 5b
  s1*8
  e'2 g, % 7a
  g'2 a,
  s1*10
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHfour
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh <<
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
%        \Staff \RemoveAllEmptyStaves
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
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHfour
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh <<
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
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHfour
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh <<
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
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHfour
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh <<
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
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHfour
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh <<
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
