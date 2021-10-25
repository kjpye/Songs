\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bless this House"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "May H. Brahe"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Helen Taylor"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=112
  \set Score.tempoHideNote = ##t
  s1*3
  \tempo 4=105 s1 \tempo 4=112
  s1*11
  \tempo 4=105 s1 \tempo 4=112 % 2b+++
  s1 % 3a
  s1
  \tempo 4=100 s2. \tempo 4=24 s8 \tempo 4=100 s \tempo 4=112
  s1*3
  s2 \tempo 4=105 s \tempo 4=112 % 3b+++
  s1*7
  \tempo 4=105 s1 \tempo 4=112 % 5a+
  s1
  s1 % 5b
  s1
  \tempo 4=100 s1 \tempo 4=112
  s1*6
  \tempo 4=100 s2. \tempo 4=24 s8 \tempo 4=100 s \tempo 4=112
  s1
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s1*4
  \mark \markup { \box "1b" } s1*4
  \mark \markup { \box "2a" } s1*4
  \mark \markup { \box "2b" } s1*4
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*4
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "6a" } s1*4
  \mark \markup { \box "6b" } s1*5
}

soprano = \relative {
  \global
  R1*4
  ees'4^\mp g bes4. 8 % 1b
  c4. 8 bes2
  aes4 bes g ees
  f4 d ees2^\>
  R1\! % 2a
  R1
  aes4 bes g ees
  f4 d ees2^\>
  ees'4.^\mf 8 d4 bes % 2b
  c4 4 bes2
  c4.\omit\dim^\markup\italic "dim. (with feeling)" 8 bes4 g
  f4^\markup\italic "poco rall." ees4 f2
  ees4\omit\p^\markup{\dynamic p \italic "a tempo"} f g ees % 3a
  aes4^\< bes\! c d8 ees
  ees4^\markup\italic rall. bes8 g \acciaccatura {f16 g} f4.\fermata ees8
  ees2.^\markup\italic "a tempo" r4 % 3b
  R1*3
  ees4\omit\p^\markup{\dynamic p \italic "a tempo"} g bes bes % 4a
  c4 4 bes2
  aes4 bes g ees
  f4 d ees2^\> % 4b
  ees'2^\mf d
  c2(b4.) 8
  c2 d4(f) % 5a
  g4^\markup\italic "poco rall." (ees d2)
  ees4.^\markup\italic "a tempo" 8 d4 bes
  c4 4 bes2 % 5b
  c4.^\markup\italic "(with feeling)" 8 bes4 g
  f4^\markup\italic rall. ees f2
  ees4^\markup\italic "a tempo"^\< f g\! ees % 6a
  aes4 bes c2
  f,4^\cresc g a f
  bes4 c d2
  g4.\omit\f^\markup{\dynamic f \italic allargando} 8 f4 d % 6b
  ees4 bes c d8^\<(ees\!)
  aes4.\omit\ff^\markup{\dynamic ff \italic rall.} g8 8(f4\fermata) ees8
  ees1
  R1
  \bar "|."
}

wordsSop = \lyricmode {
  Bless this house, O Lord we pray,
  Make it safe by night and day;

  Keep -- ing want and trou -- ble out;
  Bless the roof and chim -- neys tall,
  Let Thy peace lie o -- ver all;
  Bless this door, that it may prove
  E -- ver o -- pen to joy and love.

  Bless these win -- dows shi -- ning bright,
  Let -- ting in God's heav'n -- ly light;
  Bless the hearth __ a -- blaz -- ing __ there, __
  Bless the folk who dwell with -- in,
  Keep them pure and free from sin;
  Bless us all that we may be
  Fit, O Lord, to dwell with Thee,
  Bless us all that one day we
  May dwell, O Lord, with Thee.
}

wordsSopMidi = \lyricmode {
  "Bless " "this " "house, " "O " "Lord " "we " "pray, "
  "\nMake " "it " "safe " "by " "night " "and " "day; "

  "\nKeep" "ing " "want " "and " trou "ble " "out; "
  "\nBless " "the " "roof " "and " chim "neys " "tall, "
  "\nLet " "Thy " "peace " "lie " o "ver " "all; "
  "\nBless " "this " "door, " "that " "it " "may " "prove "
  "\nE" "ver " o "pen " "to " "joy " "and " "love. "

  "\nBless " "these " win "dows " shi "ning " "bright, "
  "\nLet" "ting " "in " "God's " heav'n "ly " "light; "
  "\nBless " "the " "hearth "  a blaz "ing "  "there, " 
  "\nBless " "the " "folk " "who " "dwell " with "in, "
  "\nKeep " "them " "pure " "and " "free " "from " "sin; "
  "\nBless " "us " "all " "that " "we " "may " "be "
  "\nFit, " "O " "Lord, " "to " "dwell " "with " "Thee, "
  "\nBless " "us " "all " "that " "one " "day " "we "
  "\nMay " "dwell, " "O " "Lord, " "with " "Thee. "
}

alto = \relative {
  \global
  R1*4
  ees'4^\mp g bes4. 8 % 1b
  c4. 8 bes2
  f4 d ees bes
  c4 bes4 2
  R1 % 2a
  R1
  f'4 4 ees ees
  c4 bes4 2^\>
  g'4.^\mf 8 4 4
  ees4 4 2
  ees4.\omit\dim^\markup\italic "dim. (with feeling)" 8 4 4
  c4^\markup\italic "poco rall." 4 d2
  des4\omit\p^\markup{\dynamic p \italic "a tempo"} 4 4 4 % 3a
  c4^\< ees\! aes4 8 8
  bes4^\markup\italic rall. ees8 8 d4.\fermata bes8
  bes2.^\markup\italic "a tempo" r4
  R1*3
  R1 % 4a
  aes,4\omit\p^\markup{\dynamic p \italic "a tempo"} c ees ees
  ees4 d ees ees
  c4 bes bes2^\> % 4b
  ees4^\mf g bes4. 8
  c4 ees, g4. 8
  g4. 8 bes4 4 % 5a
  bes4^\markup\italic "poco rall." a f2
  g4.^\markup\italic "a tempo" 8 4 4
  ees4 4 2 % 5b
  ees4.^\markup\italic "(with feeling)" 8 4 4
  c4^\markup\italic rall. 4 2
  des2^\<^\markup\italic "a tempo" 4\! 4 % 6a
  c4 ees aes2
  ees2.^\cresc 4
  d4 f bes2
  g4.\omit\f^\markup{\dynamic f \italic allargando} bes8 aes4 4 % 6b
  bes4 4 aes4 4^\<
  c4.\omit\ff^\markup{\dynamic ff \italic rall.} aes8 bes(aes4\fermata) 8
  g1
  R1
  \bar "|."
}

wordsAlto = \lyricmode {
  Bless this house, O Lord we pray,
  Make it safe by night and day;

  Keep -- ing want and trou -- ble out;
  Bless the roof and chim -- neys tall,
  Let Thy peace lie o -- ver all;
  Bless this door, that it may prove
  E -- ver o -- pen to joy and love.

  Bless these win -- dows
  Let -- ting in God's heav'n -- ly light;
  Bless the hearth __ a -- blaz -- ing __ there, __
  with smoke as -- cend -- ing like a prayer;
  Bless the folk who dwell with -- in,
  Keep them pure and free from sin;
  Bless us that we may be
  Fit, to dwell with Thee,
  Bless us all that one day we
  May dwell, O Lord, with Thee.
}

wordsAltoMidi = \lyricmode {
  "Bless " "this " "house, " "O " "Lord " "we " "pray, "
  "\nMake " "it " "safe " "by " "night " "and " "day; "

  "\nKeep" "ing " "want " "and " trou "ble " "out; "
  "\nBless " "the " "roof " "and " chim "neys " "tall, "
  "\nLet " "Thy " "peace " "lie " o "ver " "all; "
  "\nBless " "this " "door, " "that " "it " "may " "prove "
  "\nE" "ver " o "pen " "to " "joy " "and " "love. "

  "\nBless " "these " win "dows "
  "\nLet" "ting " "in " "God's " heav'n "ly " "light; "
  "\nBless " "the " "hearth "  a blaz "ing "  "there, " 
  "\nwith " "smoke " as cend "ing " "like " "a " "prayer; "
  "\nBless " "the " "folk " "who " "dwell " with "in, "
  "\nKeep " "them " "pure " "and " "free " "from " "sin; "
  "\nBless " "us " "that " "we " "may " "be "
  "\nFit, " "to " "dwell " "with " "Thee, "
  "\nBless " "us " "all " "that " "one " "day " "we "
  "\nMay " "dwell, " "O " "Lord, " "with " "Thee. "
}

tenor = \relative {
  \global
  R1*4
  R1 % 1b
  R1
  c'4 aes bes bes
  aes4 4 8^\> (g4.)
  ees4^\< g bes4. 8\! % 2a
  c4. 8 bes2
  c4 d bes bes
  aes4 4 8^\>(g4.)
  bes4.^\mf 8 4 d % 2b
  c4 aes bes2
  aes4.^\markup\italic "dim. (with feeling)" 8 bes4 4
  aes4^\markup\italic "poco rall." 4 f(bes)
  g4\omit\p^\markup{\dynamic p \italic "a tempo"} 4 bes g % 3a
  aes4^\< c\! ees c8 8
  bes4^\markup\italic rall. g8 bes aes4.\fermata 8
  g2.^\markup\italic "a tempo" r4
  R1*3
  ees4\omit\p^\markup{\dynamic p \italic "a tempo"} g bes bes % 4a
  c4 4 bes2
  c4 bes bes bes
  aes4 4 g2^\>
  ees4^\f g bes4. 8
  c4 4 d4. 8
  ees4. 8 f4 d % 5a
  c4^\markup\italic "poco rall." c bes2
  bes4.^\markup\italic "a tempo" 8 4 d
  c4 aes bes2 % 5b
  aes4.^\markup\italic "(with feeling)" 8 bes4 4
  aes4^\markup\italic rall. 4 f(bes)
  g4^\<^\markup\italic "a tempo" aes bes\! f % 6a
  c4 bes aes(ees')
  a,4^\cresc bes c aes
  d4 c bes2
  bes4.\omit\f^\markup{\dynamic f \italic allargando} ees8 d4 f % 6b
  ees4 4 4 c^\<
  f4.\omit\ff^\markup{\dynamic ff \italic rall.} c8 d4.\fermata bes8
  bes1
  R1
  \bar "|."
}

wordsTenor = \lyricmode {
  Make it safe by night and day;
  Bless these walls, so firm and stout,
  Keep -- ing want and trou -- ble out;
  Bless the roof and chim -- neys tall,
  Let Thy peace lie o -- ver all;
  Bless this door, that it may prove
  E -- ver o -- pen to joy and love.

  Bless these win -- dows shi -- ning bright,
  Let -- ting in God's heav'n -- ly light;
  Bless the hearth __ a -- blaz -- ing __ there, __
  with smoke as -- cend -- ing like a prayer;
  Bless the folk who dwell with -- in,
  Keep them pure and free from sin; __
  Bless us all that we may be
  Fit, O Lord, to dwell with Thee,
  Bless us all that one day we
  May dwell, O Lord, with Thee.
}

wordsTenorMidi = \lyricmode {
  "Make " "it " "safe " "by " "night " "and " "day; "
  "\nBless " "these " "walls, " "so " "firm " "and " "stout, "
  "\nKeep" "ing " "want " "and " trou "ble " "out; "
  "\nBless " "the " "roof " "and " chim "neys " "tall, "
  "\nLet " "Thy " "peace " "lie " o "ver " "all; "
  "\nBless " "this " "door, " "that " "it " "may " "prove "
  "\nE" "ver " o "pen " "to " "joy " "and " "love. "

  "\nBless " "these " win "dows " shi "ning " "bright, "
  "\nLet" "ting " "in " "God's " heav'n "ly " "light; "
  "\nBless " "the " "hearth "  a blaz "ing "  "there, " 
  "\nwith " "smoke " as cend "ing " "like " "a " "prayer; "
  "\nBless " "the " "folk " "who " "dwell " with "in, "
  "\nKeep " "them " "pure " "and " "free " "from " "sin; " 
  "\nBless " "us " "all " "that " "we " "may " "be "
  "\nFit, " "O " "Lord, " "to " "dwell " "with " "Thee, "
  "\nBless " "us " "all " "that " "one " "day " "we "
  "\nMay " "dwell, " "O " "Lord, " "with " "Thee. "
}

bass = \relative {
  \global
  R1*4
  R1 % 1b
  R1
  f4 bes, ees g,
  aes4 bes ees2^\>
  ees4^\< g bes4. 8\! % 2a
  c4. 8 bes2
  f4 bes, ees g,
  aes4 bes c2^\>
  ees4.^\mf 8 g4 4 % 2b
  aes4 4 g2
  aes4.^\markup\italic "dim. (with feeling)" 8 g4 ees
  f4^\markup\italic "a tempo" c bes2
  ees4\omit\p^\markup{\dynamic p \italic "a tempo"} 4 4 4 % 3a
  aes4^\< 4\! 4 aes,8 8
  bes4^\markup\italic rall. 8 8 4.\fermata 8
  ees2.^\markup\italic "a tempo" r4
  R1*3
  R1 % 4a
  aes,4\omit\p^\markup{\dynamic p \italic "a tempo"} c ees ees
  f4 bes, ees g,
  aes4 bes ees2^\> % 4b
  ees2^\mf g
  c,2(g'4.) 8
  c2 f, % 5a
  ees4^\markup\italic "poco rall." (f bes,2)
  ees4.^\markup\italic "a tempo" 8 g4 4
  aes4 4 g2 % 5b
  aes4.^\markup\italic "(with feeling)" 8 g4 ees
  f4^\markup\italic rall. c bes2
  ees2^\<^\markup\italic "a tempo" 4\! 4 % 6a
  aes,4 4 aes'2
  f2.^\cresc 4
  bes4 f bes,2
  ees4.\omit\f^\markup{\dynamic f \italic allargando} 8 f4 bes % 6b
  g4 4 bes aes,^\<
  f'4.\omit\ff^\markup{\dynamic ff \italic rall.} 8 bes,4.\fermata 8
  ees1
  R1
  \bar "|."
}

wordsBass = \lyricmode {
  Make it safe by night and day;
  Bless these walls, so firm and stout,
  Keep -- ing want and trou -- ble out;
  Bless the roof and chim -- neys tall,
  Let Thy peace lie o -- ver all;
  Bless this door, that it may prove
  E -- ver o -- pen to joy and love.

  Bless these win -- dows
  Let -- ting in God's heav'n -- ly light;
  Bless the hearth __ a -- blaz -- ing __ there, __
  Bless the folk who dwell with -- in,
  Keep them pure and free from sin;
  Bless us that we may be
  Fit, to dwell with Thee,
  Bless us all that one day we
  May dwell, O Lord, with Thee.
}

wordsBassMidi = \lyricmode {
  "Make " "it " "safe " "by " "night " "and " "day; "
  "\nBless " "these " "walls, " "so " "firm " "and " "stout, "
  "\nKeep" "ing " "want " "and " trou "ble " "out; "
  "\nBless " "the " "roof " "and " chim "neys " "tall, "
  "\nLet " "Thy " "peace " "lie " o "ver " "all; "
  "\nBless " "this " "door, " "that " "it " "may " "prove "
  "\nE" "ver " o "pen " "to " "joy " "and " "love. "

  "\nBless " "these " win "dows "
  "\nLet" "ting " "in " "God's " heav'n "ly " "light; "
  "\nBless " "the " "hearth "  a blaz "ing "  "there, " 
  "\nBless " "the " "folk " "who " "dwell " with "in, "
  "\nKeep " "them " "pure " "and " "free " "from " "sin; "
  "\nBless " "us " "that " "we " "may " "be "
  "\nFit, " "to " "dwell " "with " "Thee, "
  "\nBless " "us " "all " "that " "one " "day " "we "
  "\nMay " "dwell, " "O " "Lord, " "with " "Thee. "
}

pianoRHone = \relative {
  \global
  <ees' ees'>4^\markup {Moderato \italic "(with much feeling)"} <g g'> s2
  s1
  <f' f'>4 ees'8 c <bes, bes'>4 <g g'>
  <f f'>4 <d d'> ees'2
  ees,8 <g bes ees> g <bes ees g> \once\partCombineApart r8 <d g bes>4 8 % 1b
  \once\partCombineApart r8 <ees aes c>4 8 r <ees g bes>4 8
  aes,8 <c f aes> bes <d aes' bes> g, <bes ees g> ees, <g bes ees>
  f8 <aes c f> d, <aes' bes d> ees'2
  ees,8 <g bes ees> g <bes ees g> r <d g bes>4 8 % 2a
  r8 <ees aes c>4 8 r <ees g bes>4 8
  aes,8 <c f aes> bes <d aes' bes> g, <bes ees g> ees, <g bes ees>
  f8 <aes c f> d, <aes' bes d> ees'2
  ees8( g bes ees d bes g d) % 2b
  c8(ees aes c bes g ees bes)
  c8( ees aes c bes aes ees bes)
  f8 <aes c f> c, <f aes c> d <aes' bes d> <c, aes' c> <bes aes' bes>
  ees8 <g des' ees> f <des' f> g, <des' ees g> ees, <g des' ees> % 3a
  aes <c ees aes> bes <c ees bes'> c <ees aes c> <d aes' d> <ees aes ees'>
  ees8 <g bes ees> <bes, ees g bes> <g bes ees g> r <d aes' bes> <bes' d  aes' bes>\fermata r
  <ees, ees'>4 <g g'> <bes bes'>8 g' d bes % 3b
  <c ees aes c>8 <d d'> <ees ees'> <f f'> <g b d g> d' b g
  <f f'>4 <ees ees'>8 <c c'> <bes bes'>4 <g g'>
  <f f'>4 <d d'> ees'2
  ees,8 <g bes ees> g <bes ees g> \once\partCombineApart r <d g bes>4 8 % 4a
  \once\partCombineApart r8 <ees aes c>4 8 \once\partCombineApart r <ees g bes>4 8
  aes,8 <c f aes> bes <d aes' bes> g, <bes ees g> ees, <g bes ees>
  f8 <aes c f> d, <aes' bes d> ees <g bes ees> <g bes ees g> <bes ees g bes> % 4b
  \once\partCombineApart r8 <g' bes ees>4 8 \once\partCombineApart r <g bes d>4 8
  \once\partCombineApart r8 <ees g c>4 8 \once\partCombineApart r <d g b>4 8
  \once\partCombineApart r8 <ees g c>4 8 \ottava #1 d8 <f bes d> f <bes d f> % 5a
  g8 <bes ees g> a <ees' f a> <bes d f bes>\arpeggio \ottava 0 <f bes d f>\arpeggio <d f bes d>\arpeggio <bes d f bes>\arpeggio
  <ees g bes ees>8 4 8 <g bes d g>8 8 <d g bes d>8 8
  <c ees aes c>8 4 8 <ees g ees'>8 8 <bes ees g bes>8 8 % 5b
  <c ees aes c>8 4 8 <bes ees g bes>8 8 <bes ees g>8 8
  <f c' ees f>8 8 <c f aes c>8 8 <d aes' bes d>8 8 <c aes' c> <bes d aes' bes>
  ees8 <g des' ees> f <des' f> g, <des' ees g> ees, <g des' ees> % 6a
  aes8 <c ees aes> bes <c ees bes'> \once\partCombineApart r8 <ees aes c>4 8
  f,8 <a ees' f> g <a ees' g> a <ees' f a> f, <a ees' f>
  bes8 <d aes' f> c <d aes' c> \once\partCombineApart r8 <aes' bes d>4 8
  \once\partCombineApart r8 <bes ees g>4 8 f <aes d f> d, <aes' bes d> % 6b
  ees8 <g bes ees> bes, <ees g bes> c <ees aes c> <d aes' d> <ees aes ees'>
  r8 <aes,, c f aes> ^[<aes' c f aes> <aes' c f aes>] r8 <d,, aes' bes> <bes' d aes' bes>\fermata r
  <ees, ees'>4 <g g'> <bes bes'>4. 8
  <c ees aes c>8 <d d'> <ees ees'> <f f'> <g bes ees g>4 \ottava #1 <bes ees g bes> \ottava #0
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  ees'8 <g bes> g bes <bes bes'> g' d bes
  <c ees aes c>8 <d d'> <ees ees'> <f f'> <g b d g> d' b g
  f8 <aes c> ees c bes <ees g> g, <bes ees>
  f8 <aes c> d, <aes' bes> <ees aes bes> g f ees
  ees4 g bes2 % 1b
  c2 bes
  aes4 bes g ees
  f4 d <ees aes bes>8 g f ees
  ees4 g bes2 % 2a
  c2 bes
  aes4 bes g ees
  f4 d <ees aes bes>8 g f ees
  s1*3 % 2b
  f4 c d s
  ees4 f g ees % 3a
  aes4 bes c s
  ees4 s2.
  ees,8 <g bes> g <bes ees> s2 % 3b
  s1
  f'8 <aes c> ees c bes <ees g> g, <bes ees>
  f8 <aes c> d, <aes' bes> <ees aes bes> g f ees
  ees4 g bes2 % 4a
  c2 bes
  aes4 bes g ees
  f4 d ees s % 4b
  ees'2 d
  c2 b
  c2 d4 f % 5a
  g4 a s2
  s1
  s1 % 5b
  s1
  s1
  ees,4 f g ees % 6a
  aes4 bes c2
  f,4 g aes f
  bes4 c d2
  g2 f4 d % 6b
  ees4 bes c s
  s1
  ees,8 <g bes> g <bes ees> bes <ees g>4 8
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s8\mp s2\< s4.\!
  s1
  s4 s2\> s4\!
  s1-\markup\italic "poco rall."
  s1-\markup\italic "a tempo" % 1b
  s1
  s2. s4\>
  s2 s\!
  s8 s\< s2 s4\! % 2a
  s1*3
  s1\mf % 2b
  s1
  s1\dim
  s1-\markup\italic "poco rall."
  s2-\markup\italic "a tempo" s\< % 3a
  s4 s2.\!
  s1-\markup\italic rall.
  s2-\markup\italic "a tempo" s\< % 3b
  s2 s\!
  s8 s\> s2.
  s2\! s-\markup\italic "poco rall."
  s8-\markup\italic "a tempo" s\< s2. % 4a
  s1\!
  s2. s4\>
  s2 s\! % 4b
  s1\<
  s1\!
  s1 % 5a
  s1-\markup\italic "poco rall."
  s1-\markup\italic "a tempo"
  s1 % 5b
  s1-\markup\italic "(with feeling)"
  s1-\markup\italic rall.
  s2\<-\markup\italic "a tempo" s\! % 6a
  s1
  s1\<
  s8 s\! s2.
  s1\omit\f-\markup{\dynamic f \italic "colla voce"} % 6b
  s2 s\<
  s1\!-\markup\italic rall.
  s2-\markup\italic "a tempo" s\<
  s2. s4\!
}

pianoLH = \relative {
  \global
  \voiceOne
  <ees, ees'>4 <ees' bes' ees> <g, g'> <g' bes d g>
  <aes, aes'>4 \clef treble <c' ees aes c> \clef bass <g, g'> \clef treble <d'' g b d> \clef bass
  <aes, aes'>4 \clef treble <c' ees aes c> \clef bass <bes, bes'>4 <bes' ees>
  <aes, aes'>4 q <ees ees'>2
  <ees ees'>4 <ees' bes' ees> <g, g'> <g' bes d g> % 1b
  <aes, aes'>4 <aes' c ees aes> <g, g'> <bes' ees g>
  <f, f'>4 <bes, bes'> <ees ees'> <g g'>
  <aes aes'>4 <bes bes'> <ees, ees'> <ees' g bes>
  <ees, ees'>4 <ees' bes' ees> <g, g'> <g' bes d g> % 2a
  <aes, aes'> <aes' ees' aes> <g, g'> <bes' ees g>
  <f, f'> <bes, bes'> <ees ees'> <g g'>
  <aes aes'>4 <bes bes'> <ees, ees'> <ees' g bes>
  <ees, ees'>4 \clef treble <ees'' g bes> <d g bes> <bes d g> \clef bass % 2b
  <aes, aes'> <c' ees aes> <g, g'> <bes' ees g>
  <aes, aes'>4 <c' ees aes> <bes ees g> <g bes ees>
  <aes, aes'>2 <bes bes'>4 <bes, ees'>
  <ees ees'>4 <ees' bes' des> <bes' des ees> <ees, bes' des> % 3a
  <aes, aes'>4 <aes' c ees> <c ees aes> <aes c ees>
  <bes,, bes'>4 <bes'' ees g> <bes,, bes'>8 <bes' bes'> <bes' f' aes>\fermata r
  <ees,, ees'>4 <ees' bes' ees> <g, g'> <g' bes d g> % 3b
  <aes, aes'>4 \clef treble <c' ees aes c> \clef bass <g, g'> \clef treble <d'' g b d> \clef bass
  <bes, bes'>4 \clef treble <c' ees aes c> \clef bass <bes, bes'> <bes' ees>
  <aes, aes'>4 <bes bes'> <ees, ees'> <ees' g bes>
  <ees, ees'>4 <ees' bes' ees> <g, g'> <g' bes d g> % 4a
  <aes, aes'>4 <aes' ees' aes> <g, g'> <bes' ees g>
  <f, f'>4 <bes, bes'> <ees ees'> <g g'>
  <aes aes'>4 <bes bes'> <ees, ees'> <ees' g bes> % 4b
  <ees, ees'> \clef treble <ees'' g bes> \clef bass <g,, g'> \clef treble <d'' g bes> \clef bass
  <c,, c'>4 <c'' ees g> <g, g'> <g' d' g>
  <c,, c'>4 <c'' ees aes> <f,, f'> \clef treble <f'' bes d> \clef bass % 5a
  <ees,, ees'>4 <f f'> <bes, bes'> <bes'' d f>
  <ees,, ees'> \clef treble <ees'' g bes> \clef bass <g,, g'> \clef treble <d'' g bes> \clef bass
  <aes, aes'>4 <c' ees aes> <g, g'> <bes' ees g> % 5b
  <aes, aes'>4 <c' ees aes> <g, g'> <bes' ees g>
  <aes, aes'>2 <bes bes'>4 <bes, bes'>
  <ees ees'>4 <ees' bes' des> <bes' des ees> <ees, bes' des> % 6a
  <aes, aes'>4 <aes' c ees> <c ees aes> <aes, aes'>
  <f f'> <f' c' ees> <a ees' f> <f, f'>
  <bes, bes'> \clef treble <bes'' f' aes> <d aes' bes> \clef bass <bes,, bes'>
  <ees ees'>4 <bes'' ees g> <f, f'> <bes' f' aes> % 6b
  <g, g'>4 <bes' ees g> <aes, aes'> <c' ees aes>
  <f,,, f'>8 _[ <f' f'> <f' f'> \change Staff = pianorh <f' f'> ] \change Staff = pianolh <bes,,, bes'> <bes' bes'> <bes' f' aes>\fermata r
  <ees,, ees'>4 <ees' bes' ees> <g, g'> <bes' ees g>
  <aes, aes'>4 \clef treble <c' ees aes c> \clef bass <ees,, ees'> \clef treble <ees'' bes' g>
  \bar "|."
}

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
          } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context {
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
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
          } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
