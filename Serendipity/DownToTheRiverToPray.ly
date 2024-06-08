\version "2.25.16"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Down to the River to Pray"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional"
  arranger    = "Arr. Sheldon Curry"
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
  \tempo "Moderately, in two" 2=66
  s1*94
  \set Score.tempoHideNote = ##t
  \tempo 2=60
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "4a" } s1*4
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*4
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "5c" } s1*4
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*4
  \textMark \markup { \box "6c" } s1*4
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" } s1*4
  \textMark \markup { \box "7c" } s1*4
  \textMark \markup { \box "8a" } s1*4
  \textMark \markup { \box "8b" } s1*4
  \textMark \markup { \box "8c" } s1*4
  \textMark \markup { \box "9a" } s1*3
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "9c" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "10c" } s1*3
  \textMark \markup { \box "11a" } s1*4
  \textMark \markup { \box "11b" } s1*4
  \textMark \markup { \box "11c" } s1*3
}

ChordTrack = \chordmode {
  f1:5 | s | s
  s1 | f:5 s % 3b
  bes1:5 | f:5 | s
  s2 bes:5 | s f:5 | s1 | c:5 % 4a
  f1:5 | s2 bes:5 | s f:5
  c1:5 | f:5 | bes:5 | f:5
  s1 | f:5 | s % 5a
  c2:5 bes:5 | f1:5 | s
  s2 c:5 | bes:5 f:5 | s1 | c:5
  f1:5 | s2 bes:5 | s f:5 | c1:5 % 6a
  f1:5 | d2:m bes:5 | f1:5 | s
  f1:5 | s | c2:5 d:m | f1:5
  s1 | s2 c:5 | bes:5 f:5 | s1 % 7a
  c1:5 | f:5 | s2 bes:5 | s f:5
  c1:5 | f:5 | d2:m bes:5 | f1:5
  r1 | g:5 | s | d2:5 e:m % 8a
  g1:5 | s | s2 d:5 | c:5 g:5
  s1 | d:5 | g:5 | s2 c:5
  s2 g:3 | d1:5 | g:5 % 9a
  e2:m c:5 | g1:5 | s
  aes1:5 | s | ees2:5 f:m
  aes1:5 | s | s2 ees:5 % 10a
  des2:5 aes:5 | ees1:5 | aes:5
  s2 des:5 | s aes:5 | ees1:5
  aes1:5 | f2:m des:5 | aes1:5 | s % 11a
  aes1:5 | s2 aes:5.7 | des1/aes | aes
  aes1:5 | des2/aes ees/aes | des/aes aes
}

soprano = \relative {
  \global
  s1*12
  g'2 4 f
  a4 c a r % 4b
  a4 g f2
  f8 4. d8(c) r4
  g'2 4 f % 4c
  a4 c a r
  a4 g8 8 f8 8 d4
  c1
  r4 c^\mp^\markup\italic "Trio (optional)" c d % 5a
  f4 8 8 8 8 4
  f4 r g8 8 8 a
  g4 f a g8(f) % 5b
  f4 d c a
  c4 r8 d f4 d
  f4 a g2 % 5c
  f8 4 d8 c2
  R1
  g'2\omit\p^\markup{\dynamic p \italic "with hushed intensity"}^\markup\italic All 4 f
  a4 c a r % 6a
  a4 g8(f) 2
  f8 4. d8(c) r4
  g'8 4. 4 f
  a4 c a r % 6b
  a4 g8 8 d d d4^\markup Unis.
  c1
  r4 c^\mp c d
  f4 8 8 8 8 4 % 6c
  f4 r g8 8 8 a
  g4 f a g8(f)
  f4 d c a
  c4 r8 d f4 a % 7a
  a8(g) f4 g2
  f8 4 d8 c2
  R1
  g'2 4 f % 7b
  a4 c a r
  a4 g8(f) 2
  f8 4. d8(c) r4
  g'2 4 f % 7c
  a4 c a r
  a4 g8 8 f8 8 d4
  c1^\markup Unis.
  r4 d d e \bar "||" \key g \major % 8a
  g4 8 8 8 8 4
  g4 r a8 8 8 b
  a4 g b a8(g)
  g4 e d b % 8b
  d4 r8 e g4 e
  g4 b a2
  g8 4 e8 d2
  R1 % 8c
  a'2 4 g
  b4 d b r
  b8 a4. g4 8 e
  g8 e g4 e8(d) r4 % 9a
  a'8 4. 4 g
  b4 d b r
  b4 a8 8 g g e4 % 9b
  d1^\markup Unis.
  r4 \tweak font-size #-2 aes'4^\mf^\markup\italic "One or two sopranos on cued notes" \tweak font-size #-2 aes \tweak font-size #-2 bes \bar "||" \key aes \major
  \normalsize <aes \tweak font-size #-2 c>4 8 8 8 8 4 % 9c
  q4 r <bes \tweak font-size #-2 ees>8 8 8 <c \tweak font-size #-2 ees>
  <bes \tweak font-size #-2 ees>4 <aes \tweak font-size #-2 c> <c \tweak font-size #-2 ees> <bes \tweak font-size #-2 des>8(<aes \tweak font-size #-2 c>)
  q4 <f \tweak font-size #-2 aes> <ees \tweak font-size #-2 aes> <c \tweak font-size #-2 aes'> % 10a
  <ees \tweak font-size #-2 aes>4 r8 <f \tweak font-size #-2 aes>8 <aes \tweak font-size #-2 c>4 <f \tweak font-size #-2 aes>
  <aes \tweak font-size #-2 c>4 <c \tweak font-size #-2 ees> <bes \tweak font-size #-2 ees>2
  <aes \tweak font-size #-2 des>8 4 <f \tweak font-size #-2 bes>8 <ees \tweak font-size #-2 aes>4 r % 10b
  <bes' \tweak font-size #-2 ees>2 4 <aes \tweak font-size #-2 c>
  <c \tweak font-size #-2 ees>4 ees <c \tweak font-size #-2 ees> r
  q4 <bes \tweak font-size #-2 des>8(<aes \tweak font-size #-2 c>) <aes \tweak font-size #-2 des>2 % 10c
  <aes \tweak font-size #-2 des>8 aes4. <f \tweak font-size #-2 bes>8(<ees \tweak font-size #-2 c'>) r4
  <bes' \tweak font-size #-2 ees>2 4 <aes \tweak font-size #-2 c>
  <c \tweak font-size #-2 ees>4 ees q r % 11a
  <bes \tweak font-size #-2 des>4 <bes \tweak font-size #-2 c>8 8 <aes \tweak font-size #-2 bes>8 8 <f \tweak font-size #-2 aes>4
  <ees \tweak font-size #-2 aes>1^\markup Unis.
  r4 ees^\mp ees f
  aes4 8 8 8 8 4 % 11b
  aes4 r bes8 8 8 c
  bes4 aes c bes
  aes4 f ees c
  ees4 r8 f aes4 f % 11c
  aes4^\dim c bes2
  aes8^\markup\italic rit. 4 f8 ees2\fermata\omit\pp
  \bar "|."
}

wordsSop = \lyricmode {
  O sis -- ters, let’s go down,
  let’s go down, come on down. __
  O sis -- ters, let’s go down,
  down to the riv -- er to pray.
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.
}

alto = \relative {
  \global
  R1*3
  r4^\markup\italic "Alto Solo (or Section)" c'4^\p c d % 3b
  f4 8 8 8 8 4
  f4 r g8 8 8 a
  g4 f a g8(f) % 3c
  f4 d c a
  c4 r8 d f4 d
  f4 a g2 % 4a
  f8 4 d8 c2
  R1
  c1~\omit\p_\markup {\dynamic p \italic "a few Altos"} 
  c1~ % 4b
  c2 bes~(
  bes2 a4) r
  c1~ % 4c
  c2. r4
  c4(bes2.
  g4 a2.)
  r4 a^\mp a bes % 5a
  c4 8 8 8 8 4
  c4 r e8 8 8 f
  e4 d f d8(c) % 5b
  c4 bes a a
  a4 r8 bes c4 a
  c4 f e2 % 5c
  d8 4 bes8 c2
  R1
  e2\omit\p e4 c
  f4 a f r % 6a
  f4 c d2
  d8 4. bes8(c) r4
  e8 4. 4 d
  f4 a f r % 6b
  f4 d8 8 8 8 4
  c1
  r4 c^\mp c d
  c4 8 8 8 8 4 % 6c
  c4 r e8 8 8 f
  e4 d f d8(c)
  c4 bes a a
  a4 r8 bes c4 f % 7a
  f8(d) c4 e2
  d8 4 bes8 a2
  R1
  e'2 4 c % 7b
  f4 g f r
  f4 c d2
  d8 4. bes8(a) r4
  e'2 4 c % 7c
  f4 g f r
  f4 d8 8 8 8 bes4
  c1
  r4 d d e \bar "||" \key g \major % 8a
  d4 8 8 8 8 4
  d4 r fis8 8 8 g
  fis4 e g e8(d)
  d4 c b b % 8b
  b4 r8 c d4 c
  d4 g fis2
  e8 4 c8 d2
  R1 % 8c
  fis2 4 d
  g4 4 4 r
  g8 d4. e4 8 c
  e8 c e4 e8(d) r4 % 9a
  fis8 4. 4 d
  g4 4 4 r
  g4 e8 8 8 8 c4 % 9b
  d1
  r4 ees4\omit\mf 4 f \bar "||" \key aes \major
  ees4 8 8 8 8 4 % 9c
  ees4 r g8 8 8 aes
  g4 f aes f8(ees)
  ees4 des c c % 10a
  c4 r8 des ees4 des
  ees aes g2
  f8 4 des8 c4 r % 10b
  g'2 4 ees
  aes4 4 4 r
  aes4 ees f2 % 10c
  f8 des4. 8(ees) r4
  g2 4 f
  aes4 bes aes r % 11a
  aes f8 8 8 8 des4
  ees1
  R1
  ees1\mp ~ % 11b
  ees2 2
  des1
  c1
  ees1 % 11c
  des2 ees
  des2 c2\fermata
  \bar "|."
}

words = \lyricmode {
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown.
  Good Lord, show me the way.
  Oh __ Oh __ Oh __ Oh __
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the robe and crown,
  Good Lord, show me the way.

  O broth -- ers, let’s go down,
  let’s go down, come on down.
  Come on broth -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown, __
  Good Lord, show me the way.

  O fath -- ers, let’s go down,
  let’s go __ down, come on down.
  O fath -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.

  O moth -- ers, let’s go down,
  come on down,
  don’t -- cha wan -- na go down.
  Come on moth -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.

  O sin -- ners, let’s go down,
  let’s go down, come on down,
  O sin -- ners, let’s go down,
  down to the riv -- er to pray.

  \markup{Hm. \italic "(Hum to the end)"} __
  _ _ _ _ _ _ _ _
}

wordsSopSep = \lyricmode {
  O sis -- ters, let’s go down,
  let’s go down, come on down. __
  O sis -- ters, let’s go down,
  down to the riv -- er to pray.

  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the robe and crown,
  Good Lord, show me the way.

  O broth -- ers, let’s go down,
  let’s go down, come on down.
  Come on broth -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown, __
  Good Lord, show me the way.

  O fath -- ers, let’s go down,
  let’s go __ down, come on down.
  O fath -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.

  O moth -- ers, let’s go down,
  come on down,
  don’t -- cha wan -- na go down.
  Come on moth -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.

  O sin -- ners, let’s go down,
  let’s go down, come on down,
  O sin -- ners, let’s go down,
  down to the riv -- er to pray.

  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.
}

wordsAltoSep = \lyricmode {
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown.
  Good Lord, show me the way.
  Oh __ Oh __ Oh __ Oh __
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the robe and crown,
  Good Lord, show me the way.

  O broth -- ers, let’s go down,
  let’s go down, come on down.
  Come on broth -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown, __
  Good Lord, show me the way.

  O fath -- ers, let’s go down,
  let’s go __ down, come on down.
  O fath -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.

  O moth -- ers, let’s go down,
  come on down,
  don’t -- cha wan -- na go down.
  Come on moth -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.

  O sin -- ners, let’s go down,
  let’s go down, come on down,
  O sin -- ners, let’s go down,
  down to the riv -- er to pray.

  \markup{Hm. \italic "(Hum to the end)"} __
  _ _ _ _ _ _ _ _
}

wordsMenSep = \lyricmode {
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the robe and crown,
  Good Lord, show me the way.

  O broth -- ers, let’s go down,
  let’s go down, come on down.
  Come on broth -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown, __
  Good Lord, show me the way.

  O fath -- ers, let’s go down,
  let’s go __ down, come on down.
  O fath -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.

  O moth -- ers, let’s go down,
  come on down,
  don’t -- cha wan -- na go down.
  Come on moth -- ers, let’s go down,
  down to the riv -- er to pray.
  As I went down to the riv -- er to pray,
  stud -- y -- in’ a -- bout that good ol’ __ way
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.

  O sin -- ners, let’s go down,
  let’s go down, come on down,
  O sin -- ners, let’s go down,
  down to the riv -- er to pray.

  \markup{Hm. \italic "(Hum to the end)"} __
  _ _ _ _ _ _ _ _
}

wordsMidi = \lyricmode {
  "As " "I " "went " "down " "to " "the " riv "er " "to " "pray, "
  "\nstud" y "in’ " a "bout " "that " "good " "ol’ "  "way "
  "\nand " "who " "shall " "wear " "the " star "ry " "crown. "
  "\nGood " "Lord, " "show " "me " "the " "way. "
  "\nOh "  "Oh "  "Oh "  "Oh " 
  "\nAs " "I " "went " "down " "to " "the " riv "er " "to " "pray, "
  "\nstud" y "in’ " a "bout " "that " "good " "ol’ "  "way "
  "\nand " "who " "shall " "wear " "the " "robe " "and " "crown, "
  "\nGood " "Lord, " "show " "me " "the " "way.\n"

  "\nO " broth "ers, " "let’s " "go " "down, "
  "\nlet’s " "go " "down, " "come " "on " "down. "
  "\nCome " "on " broth "ers, " "let’s " "go " "down, "
  "\ndown " "to " "the " riv "er " "to " "pray. "
  "\nAs " "I " "went " "down " "to " "the " riv "er " "to " "pray, "
  "\nstud" y "in’ " a "bout " "that " "good " "ol’ " "way "
  "\nand " "who " "shall " "wear " "the " star "ry " "crown, " 
  "\nGood " "Lord, " "show " "me " "the " "way.\n"

  "\nO " fath "ers, " "let’s " "go " "down, "
  "\nlet’s " "go "  "down, " "come " "on " "down. "
  "\nO " fath "ers, " "let’s " "go " "down, "
  "\ndown " "to " "the " riv "er " "to " "pray. "
  "\nAs " "I " "went " "down " "to " "the " riv "er " "to " "pray, "
  "\nstud" y "in’ " a "bout " "that " "good " "ol’ " "way "
  "\nand " "who " "shall " "wear " "the " star "ry " "crown, "
  "\nGood " "Lord, " "show " "me " "the " "way.\n"

  "\nO " moth "ers, " "let’s " "go " "down, "
  "\ncome " "on " "down, "
  "\ndon’t" "cha " wan "na " "go " "down. "
  "\nCome " "on " moth "ers, " "let’s " "go " "down, "
  "\ndown " "to " "the " riv "er " "to " "pray. "
  "\nAs " "I " "went " "down " "to " "the " riv "er " "to " "pray, "
  "\nstud" y "in’ " a "bout " "that " "good " "ol’ " "way "
  "\nand " "who " "shall " "wear " "the " star "ry " "crown, "
  "\nGood " "Lord, " "show " "me " "the " "way.\n"

  "\nO " sin "ners, " "let’s " "go " "down, "
  "\nlet’s " "go " "down, " "come " "on " "down, "
  "\nO " sin "ners, " "let’s " "go " "down, "
  "\ndown " "to " "the " riv "er " "to " "pray.\n"

  "\nHm. Hum to the end" __
  "" "" "" "" "" "" "" ""
}

wordsMidiSop = \lyricmode {
  "O " sis "ters, " "let’s " "go " "down, "
  "\nlet’s " "go " "down, " "come " "on " "down. " 
  "\nO " sis "ters, " "let’s " "go " "down, "
  "\ndown " "to " "the " riv "er " "to " "pray. "
  "\nAs " "I " "went " "down " "to " "the " riv "er " "to " "pray, "
  "\nstud" y "in’ " a "bout " "that " "good " "ol’ "  "way "
  "\nand " "who " "shall " "wear " "the " "robe " "and " "crown, "
  "\nGood " "Lord, " "show " "me " "the " "way.\n"

  "\nO " broth "ers, " "let’s " "go " "down, "
  "\nlet’s " "go " "down, " "come " "on " "down. "
  "\nCome " "on " broth "ers, " "let’s " "go " "down, "
  "\ndown " "to " "the " riv "er " "to " "pray. "
  "\nAs " "I " "went " "down " "to " "the " riv "er " "to " "pray, "
  "\nstud" y "in’ " a "bout " "that " "good " "ol’ " "way "
  "\nand " "who " "shall " "wear " "the " star "ry " "crown, " 
  "\nGood " "Lord, " "show " "me " "the " "way.\n"

  "\nO " fath "ers, " "let’s " "go " "down, "
  "\nlet’s " "go "  "down, " "come " "on " "down. "
  "\nO " fath "ers, " "let’s " "go " "down, "
  "\ndown " "to " "the " riv "er " "to " "pray. "
  "\nAs " "I " "went " "down " "to " "the " riv "er " "to " "pray, "
  "\nstud" y "in’ " a "bout " "that " "good " "ol’ " "way "
  "\nand " "who " "shall " "wear " "the " star "ry " "crown, "
  "\nGood " "Lord, " "show " "me " "the " "way.\n"

  "\nO " moth "ers, " "let’s " "go " "down, "
  "\ncome " "on " "down, "
  "\ndon’t" "cha " wan "na " "go " "down. "
  "\nCome " "on " moth "ers, " "let’s " "go " "down, "
  "\ndown " "to " "the " riv "er " "to " "pray. "
  "\nAs " "I " "went " "down " "to " "the " riv "er " "to " "pray, "
  "\nstud" y "in’ " a "bout " "that " "good " "ol’ " "way "
  "\nand " "who " "shall " "wear " "the " star "ry " "crown, "
  "\nGood " "Lord, " "show " "me " "the " "way.\n"

  "\nO " sin "ners, " "let’s " "go " "down, "
  "\nlet’s " "go " "down, " "come " "on " "down, "
  "\nO " sin "ners, " "let’s " "go " "down, "
  "\ndown " "to " "the " riv "er " "to " "pray. "
  "\nAs " "I " "went " "down " "to " "the " riv "er " "to " "pray, "
  "\nstud" y "in’ " a "bout " "that " "good " "ol’ " "way "
  "\nand " "who " "shall " "wear " "the " star "ry " "crown, "
  "\nGood " "Lord, " "show " "me " "the " "way."
}

tenor = \relative {
  \global
  R1*20
  r4 c'4^\mp c bes % 5a+
  a4 8 8 8 8 4
  a4 r c8 8 8 8
  c4 a c bes8(a) % 5b
  a4 f f f
  f4 r8 f a4 f
  a4 c4 2 % 5c
  bes8 4 f8 2
  R1
  c'2^\p 4 a
  c4 f c r % 6a
  c4 a bes2
  bes8 f4. 4 r
  c'8 4. 4 a
  c4 f c r % 6b
  d4 bes8 8 8 8 4
  c1
  r4 c^\mp c bes
  a4 8 8 8 8 4 % 6c
  a4 r c8 8 8 8
  c4 a c bes
  a4 f f f--
  f4 r8 f a4 c % 7a
  c8(bes) a4 c2
  bes8 4 g8 f2
  R1
  c'2 4 a % 7b
  c4 d c r
  c4 a bes2
  bes8 f4. 4 r
  c'2 4 a % 7c
  c4 d c r
  d4 bes8 8 8 8 f4
  f1^\markup Unis.
  r4 d d e % 8a
  \key g \major g4 b8 8 8 8 4
  b4 r d8 8 8 8
  d4 b d c8(b)
  b4 g g g % 8b
  g4 r8 g8 a4 g
  b4 d d2
  c8 4 g8 2
  R1 % 8c
  d'2 4 b
  d4 4 4 r
  d8 b4. c4 8 g
  c8 g c4 g r % 9a
  d'8 4. 4 b
  d4 4 4 r
  e4 c8 8 8 8 g4 % 9b
  g1
  r4 aes^\mf aes bes \key aes \major
  c4 8 8 8 8 4 % 9c
  c4 r ees8 8 8 8
  ees4 c ees des8(c)
  c4 aes4 4 4 % 10a
  aes4 r8 aes8 c4 aes
  c4 ees 4 ees2
  des8 4 aes8 4 r % 10b
  ees'2 4 c
  ees4 4 4 r
  ees4 des8(c) des2 % 10c
  des8 aes4. 4 r
  ees'2 4 c
  ees4 f ees r % 11a
  f4 c8 8 des8 8 aes4
  aes1
  R1
  ees1~ % 11b
  ees2 ges
  f1
  ees1
  ees1
  f2 g
  f2 ees\fermata
  \bar "|."
}

bass = \relative {
  \global
  R1*20
  r4 c'4^\mp c bes % 5a+
  a4 8 8 8 8 4
  a4 r c8 8 8 8
  c4 a c bes8(a) % 5b
  a4 f f f
  f4 r8 f a4 f
  a4 c4 2 % 5c
  bes8 4 f8 2
  R1
  c2 4 4
  f4 4 4 r % 6a
  f4 a, bes2
  bes8 4. f4 r
  c'8 4. 4 4
  f4 4 4 r % 6b
  d4 8 8 bes8 8 4
  f'1
  r4 c^\mp 4 d
  f4 8 8 8 8 4 % 6c
  f4 r g8 8 8 a
  g4 f a g8(f)
  f4 d c a
  c4 r8 d8 f4 a % 7a
  a8(g) f4 g2
  f8 4 8 c2
  R1
  c2 4 4 % 7b
  f4 4 4 r
  f4 a, bes2
  bes8 f4. 4 r
  c'2 4 4 % 7c
  f4 4 4 r
  d4 8 8 bes8 8 4
  f'1
  r4 d d e \key g \major % 8a
  g4 8 8 8 8 4
  g4 r d8 8 8 8
  d4 4 e d
  b4 c d e % 8b
  g4 r8 c, b4 c
  d4 4 2
  c8 4 g8 2
  R1 % 8c
  d'2 4 4
  g4 4 4 r
  g8 b,4. c4 8 8
  c8 8 g4 4 r % 9a
  d'8 4. 4 4
  g4 4 4 r
  e4 8 8 c8 8 4 % 9b
  g1
  r4 aes^\mf 4 4 \key aes \major
  aes4 8 8 8 bes c4 % 9c
  aes4 r ees'8 8 8 8
  ees4 4 f ees
  c4 des ees f % 10a
  aes4 r8 des, c4 des
  ees4 4 2
  des8 4 aes8 4 r % 10b
  ees'2 4 4
  aes4 4 4 r
  aes4 c, des2 % 10c
  des8 aes4. 4 r
  ees'2 4 4
  aes4 4 4 r % 11a
  f4 8 8 des8 8 aes4
  aes1
  R1
  aes1~ % 11b
  aes2 2~
  aes1~
  aes1
  aes1~ % 11c
  aes2 2~
  aes1\fermata
  \bar "|."
}

pianoRH = \relative {
  \global
  r4 <c' g'> r <c f>
  r4 <<{\vo f g8 a g f} \new Voice {\vt c2.}>> \ov
  r4 <c g'> r <c f>
  r4 <<{f4 g8 a g f} \new Voice {\vt c2.}>> % 3b
  r4 <c f> r q
  r4 q r q
  r4 <bes f'> r q % 3c
  r4 <c f> r q
  r4 q r q
  r4 q r <bes f'> % 4a
  r4 q r <c g'>
  r4 <c f> r q
  r4 <c g'> r q
  r4 <c f> r q % 4b
  r4 q r <bes f'>
  r4 q r <f c'>
  r4 <c' g'> r q % 4c
  r4 <c f> r q
  r4 <bes f'> r q
  r4 <c f> r q
  R1 % 5a
  r4 <c g'> r <c f>
  r4 q r <c g'>
  r4 <c d f> r <bes c f> % 5b
  r4 <c f> r q
  r4 q r q
  r4 q r <c g'> % 5c
  r4 <bes f'> r <c g'>
  r4 <c f> r q
  r4 <c g'> r q
  r4 <c f> r q % 6a
  r4 q r <bes f'>
  r4 q r <f c'>
  r4 <c' g'> r q
  r4 <c f> r q % 6b
  r4 <bes d g> r <bes f'>
  r4 <c f> r q
  r4 <<{f4 g8 a g f} \new Voice {\vt c2.}>>
  r4 <c f> r q % 6c
  r4 q r <c g'>
  r4 q r <<{g'8 f} \new Voice {\vt d4}>>
  r4 <c f> r q
  r4 q r q % 7a
  r4 q r <c g'>
  r4 <bes f'> r <c f>
  f4 <c g'> <<{a'8 bes a f} \new Voice {\vt r4 c}>>
  r4 <c g'> r q % 7b
  r4 <c f> r q
  r4 q r <bes f'>
  r4 q r <f c'>
  r4 <c' g'> r q % 7c
  r4 <c f> r q
  r4 <d g> r <bes f'>
  r4 <c f> r q
  r4 d d e \key g \major % 8a
  r4 <d a'> r <d g>
  r4 <d g> r <d a'>
  r4 <d e g> r <<{a'8 g} \new Voice {\vt e4}>>
  r4 <d g> r q % 8b
  r4 q r q
  r4 q r <d a'>
  r4 <c g'> r <d g>
  r4 <<{d4 r g} \new Voice {\vt g,8 a b4 e8(d)}>> % 8c
  r4 <d a'> r <d g>
  r4 q r q
  r4 q r <c g'>
  r4 <c g'> r <g d'> % 9a
  r4 <d' a'> r <d g>
  r4 q r q
  r4 <e a> r <c g'> % 9b
  r4 <d a'> r <d g>
  R1 \key aes \major
  r4 <c ees aes> r q % 9c
  r4 q r <ees aes bes>
  r4 <ees f aes> r <<{bes'8 aes} \new Voice {\vt f4}>>
  r4 <ees aes> r <c ees aes> % 10a
  r4 q r <des ees aes>
  r4 <c ees aes> r <ees bes'>
  r4 <des aes'> r q % 10b
  r4 <ees bes'> r q
  r4 <ees aes bes> r <c ees aes>
  r4 <ees aes> r <des aes'> % 10c
  r4 <des aes'> r <aes ees'>
  r4 <ees' bes'> r <ees aes>
  r4 <ees aes bes> r <ees aes> % 11a
  r4 <c f> r <des aes'>
  r4 <ees aes> r q~
  q1
  <aes, ees'>1~ % 11b
  q2 2
  <aes des>1
  <aes c>1
  <aes ees'>1 % 11c
  <aes des f>2 <bes ees>
  <aes des f>2 <aes c ees>\fermata
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1*37
  s1\mp % 6c
  s1*33
  s1\mp % 9c
  s1*15
  s1\mp % 11b
  s1*4
  s1\dim % 11c+
  s2..-\markup\italic rit. s8\omit\pp
}

pianoLH = \relative {
  \global
  f1~
  f1
  f1~ \break
  f1 % 3b
  f1~
  f1
  bes,1 % 3c
  f'1~
  f1
  f2 bes,~ % 4a
  bes2 f'~
  f2 f
  c1
  f1 % 4b
  f2 bes,~
  bes2 f
  c'1 | f1 | bes,1 | f'1 % 4c
  R1 | f | f, % 5a
  c'2 bes | f'1 | f,
  f'2 c | bes f' | f f| c1
  f2 f, | f4 a bes2 | bes2 f4 a | c1 % 6a
  f1 | d2 bes | f1 f'
  f2 2 | f f | c d | f f
  f2 f | f c | bes f' | f, f % 7a
  c'2 c | f f | f4 a, bes2 | bes8 f4. 4 a
  c2 c | f f | d bes | f' f,
  r4 d' d e \key g \major | g2 g | g g | d e % 8a
  g2 g | g g | g d | c g'
  g,2 g | d' d | g g | g4 b, c2
  c4 g g b | d2 d | g g % 9a
  e2 c | g' g, | R1 \key aes \major
  aes'2 aes, | aes' aes, | ees' f
  aes2 aes, | aes' aes, | aes' ees % 10a
  d2 aes' | ees ees | aes aes,
  aes'4 c, des2 | des8 aes4. 4 c | ees2 ees
  aes,2 <aes aes'>4 <g g'> % 11a
  <f f'>2 <des des'>
  <aes' aes'>2 aes2~
  aes1
  <aes ees'>1~ | q2 <aes ges'> ~ | <aes f'>1 ~ | <aes ees'> % 11b
  q1~ | <aes f'>2 <aes g'>_~ <<aes1_\fermata \new Voice {\vo f'2 ees\fermata}>>
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
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \with {alignAboveContext = women} \wordsSop
            \new NullVoice \alto
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \with {alignAboveContext = women} \wordsSop
            \new NullVoice \alto
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = singlepage-sep
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMenSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMenSep
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMenSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsMenSep}
          >>
        >>
        <<
%          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSep
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMenSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsMenSep}
          >>
        >>
        <<
%          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMenSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsMenSep}
          >>
        >>
        <<
%          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMenSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMenSep
          >>
        >>
        <<
%          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          } <<
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
  \paper {
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          } <<
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
