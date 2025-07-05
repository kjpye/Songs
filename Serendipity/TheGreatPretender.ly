\version "2.25.26"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Great Pretender"
  subtitle    = "The 1956 #1 Hit by The Platters"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Buck Ram"
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
  \key ees \major
  \time 12/8
}

TempoTrack = {
  \tempo "50s Rock" 4.=76
  s1.
  \set Score.tempoHideNote = ##t
  s1.*21
  s2. % 6b+
  s1.*14
  s2. % 10a
  s1.*8
  \tempo 4.=70 s1.*3
  s2. \tempo 4.=23 s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s1.*2
  \mark \markup { \box "2b" } s1.*2
  \mark \markup { \box "3a" } s1.*2
  \mark \markup { \box "3b" } s1.*3
  \mark \markup { \box "4a" } s1.*3
  \mark \markup { \box "4b" } s1.*3
  \mark \markup { \box "5a" } s1.*2
  \mark \markup { \box "5b" } s1.*2
  \mark \markup { \box "6a" } s1.*2
  \mark \markup { \box "6b" } s2.*5
  \mark \markup { \box "7a" } s1.*2
  \mark \markup { \box "7b" } s1.*3
  \mark \markup { \box "8a" } s1.*2
  \mark \markup { \box "8b" } s1.*2
  \mark \markup { \box "9a" } s1.*2
  \mark \markup { \box "9b" } s1.*2
  \mark \markup { \box "10a" } s2.*3
  \mark \markup { \box "10b" } s1.*2
  \mark \markup { \box "11a" } s1.*2
  \mark \markup { \box "11b" } s1.*2
  \mark \markup { \box "12a" } s1.*2
  \mark \markup { \box "12b" } s1.*3
}

ChordTrack = \chordmode {
  ees2. aes
  bes4.:7 b4:7 bes8:7 s2.
  ees2. aes % 2b
  ees2. ees:7
  aes1. % 3a
  ees1.
  aes2. bes % 3b
  ees2. aes
  ees2. bes
  ees2. bes:7 % 4a
  ees2. aes
  aes ees:7
  aes1. % 4b
  ees1.
  aes2. bes
  ees2. aes % 5a
  ees2. bes
  ees2. ees:7 % 5b
  aes1.
  ees2. ees:7 % 6a
  aes1.
  ees2. bes:7 % 6b
  s2.
  ees2. aes
  ees2. ees:7 % 7a
  aes1.
  ees1. % 7b
  aes2. bes
  ees2. aes
  ees2. bes % 8a
  g1.:7
  ees2. bes % 8b
  ees2. ees:7
  aes1. % 9a
  ees2. ees:7
  aes1. % 9b
  ees2. bes:7
  s2. % 10a
  bes1.
  e2. a % 10b
  e2. e:7
  a1. % 11a
  e1.
  a2. b % 11b
  e2. a
  e2. b % 12a
  gis1.
  s1. % 12b
  s2. a
  e1.
}

soprano = \relative {
  \global
  R1.
  R1.
  g'4.^\mf ~8 8 8 aes4.~4 8 % 2b
  g4 8~4.~4. r4 8
  aes4.~8 8 8 aes 4.~8 8 8 % 3a
  g2.~4. r4 g8
  aes4.~4 8 bes4.~8 aes bes % 3b
  bes4.~4 g8 aes4 r8 r4.
  g4 8~4 8 f4.~8 ees f
  ees2. r % 4a
  g4.~8 8 8 aes4.~4 8
  g4 8~4.~4. r4 8
  aes4.~8 8 8 4.~8 8 8 % 4b
  g2.~4. r4 8
  aes4.~4 8 bes4.~8 aes bes
  bes4.~4 g8 aes4 r8 r4. % 5a
  g4 8~4 8 f4.~8 ees f
  ees2. r % 5b
  r4 aes8 8 8 8 4.~8 8 8
  g4.~4 8 2. % 6a
  r4 aes8 8 8 8 4.~8 8 8
  bes4.~8 g g bes4. 8(c bes \time 6/8 % 6b
  c8 bes c bes c bes) \time 12/8
  g4.~8 8 8 aes4.~4 8
  g4 8~4.~4. r4 8 % 7a
  aes4.~8 8 8 4.~8 8 8
  g2.~4. r4 8 % 7b
  aes4.~4 8 bes4.~8 aes bes
  bes4.~4 g8 aes4 r8 r4.
  g4 8~4 8 f4.~8 ees f % 8a
  g2. r
  R1. % 8b
  r4. r4 ees8 f4 ees8 f4 ees8
  r4 aes8 8 8 8 4.~8 8 8 % 9a
  g4.~4 8 2.
  r4 aes8 8 8 8 4.~8 8 8 % 9b
  bes4.~8 g g bes4. bes8(c bes \time 6/8
  c8 bes c bes c bes) \time 12/8 % 10a
  r4. b8^\cresc (cis b cis b cis b cis b) \bar "||" \key e \major
  gis 4.^\f ~8 8 8 a4.~4 8 % 10b
  gis4 8~4.~4. r4 8
  a4.~8 8 8 4.~8 8 8 % 11a
  gis2.~4. r4 8
  a4.~4 8 b4.~8 a b % 11b
  b4.~4 gis8 a4 r8 r4.
  gis4 8~4 8 fis4.~8 e fis % 12a
  gis2.^\markup\italic "molto rit." r
  <<R1. \new Voice {s4.^\markup\bold Slowly s4.^\markup\italic "rit. al fine" s2.}>> % 12b
  r2. a4. 4.
  gis2.~ 2.\fermata
  \bar "|."
}

wordsSop = \lyricmode {
  Yes, __ I'm the great __ pre -- tend -- er. __
  Pre -- tend -- ing that I'm do -- ing well. __
  My need __ is such __ I pre -- tend __ too much;
  Lone -- ly __ but no __ one can tell.

  Yes, __ I'm the great __ pre -- tend -- er. __
  A -- drift __ in a world __ of my own. __
  I play __ the game __ but to my __ real shame
  left me to grieve __ all a -- lone.

  Too real is this feel -- ing of make __ be -- lieve;
  Too real when I feel __ what my heart __ can't con -- trol.
  Woh __
  
  Yes, __ I'm the great __ pre -- tend -- er. __
  Just laugh -- ing a -- way __ like a clown. __
  I seem __ to be __ what I'm not __ you see;
  wear -- ing __ my heart __ like a crown.

  Oo wee oo wee oo,
  Too real is the feel -- ing of make __ be -- lieve;
  Too real when I feel __ what my heart __ can't con -- ceal.
  Woh __ Woh __
  
  Yes, __ I'm the great __ pre -- tend -- er. __
  Just laugh -- ing a -- way __ like a clown. __
  I seem __ to be __ what I'm not __ you see;
  wear -- ing __ my heart __ like a crown.

  Still a -- round. __
}

wordsSopMidi = \lyricmode {
  "Yes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nPre" tend "ing " "that " "I'm " do "ing " "well. " 
  "\nMy " "need "  "is " "such "  "I " pre "tend "  "too " "much; "
  "\nLone" "ly "  "but " "no "  "one " "can " "tell. "

  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nA" "drift "  "in " "a " "world "  "of " "my " "own. " 
  "\nI " "play "  "the " "game "  "but " "to " "my "  "real " "shame "
  "\nleft " "me " "to " "grieve "  "all " a "lone. "

  "\nToo " "real " "is " "this " feel "ing " "of " "make "  be "lieve; "
  "\nToo " "real " "when " "I " "feel "  "what " "my " "heart "  "can't " con "trol. "
  "\nWoh " 
  
  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nJust " laugh "ing " a "way "  "like " "a " "clown. " 
  "\nI " "seem "  "to " "be "  "what " "I'm " "not "  "you " "see; "
  "\nwear" "ing "  "my " "heart "  "like " "a " "crown. "

  "\nOo " "wee " "oo " "wee " "oo, "
  "\nToo " "real " "is " "the " feel "ing " "of " "make "  be "lieve; "
  "\nToo " "real " "when " "I " "feel "  "what " "my " "heart "  "can't " con "ceal. "
  "\nWoh "  "Woh " 
  
  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nJust " laugh "ing " a "way "  "like " "a " "clown. " 
  "\nI " "seem "  "to " "be "  "what " "I'm " "not "  "you " "see; "
  "\nwear" "ing "  "my " "heart "  "like " "a " "crown. "

  "\nStill " a "round. " 
}

alto = \relative {
  \global
  R1.
  R1.
  ees'4.^\mf ~8 8 8 4.~4 8 % 2b
  ees4 8~4 8 f4 ees8 f4 ees8
  ees4.~8 8 8 4.~8 8 8 % 3a
  ees4.~4 8 f4 ees8 f4 ees8
  ees4.~4 8 f4.~8 ees8 f % 3b
  g4.~4 ees8 4 r8 r4.
  ees4 8~4 8 d4.~8 c d
  bes2. r % 4a
  ees4.~8 8 8 4.~4 8
  ees4 8~4 8 f4 ees8 f4 ees8
  ees4.~8 8 8 4.~8 8 8 % 4b
  ees4.~4 8 f4 ees8 f4 ees8
  ees4.~4 8 f4.~8 ees f
  g4.~4 ees8 4 r8 r4. % 5a
  ees4 8~4 8 d4.~8 c d
  bes2. r % 5b
  r4 ees8 8 8 8 4.~8 8 8
  ees4.~4 8 f4 ees8 f4 ees8 % 6a
  r4 ees8 8 8 8 4.~8 8 8
  g4.~8 ees8 8 f4. bes8(c bes \time 6/8 % 6b
  c8 bes c bes c bes) \time 12/8
  ees,4.~8 8 8 4.~4 8
  ees4 8~4 8 f4 ees8 f4 ees8 % 7a
  ees4.~8 8 8 4.~8 8 8
  ees4.~4 8 f4 ees8 f4 ees8 % 7b
  ees4.~4 8 f4.~8 ees f
  g4.~4 ees8 4 r8 r4.
  ees4 8~4 8 d4.~8 c d % 8a
  d2. r
  R1. % 8b
  r4. r4 ees8 f4 ees8 f4 ees8
  r4 ees8 8 8 8 4.~8 8 8 % 9a
  ees4.~4 8 f4 ees8 f4 ees8
  r4 ees8 8 8 8 4.~8 8 8 % 9b
  g4.~8 ees ees f4. bes8(c bes \time 6/8
  c8 bes c bes c bes) \time 12/8 % 10a
  r4. b8^\cresc(cis b cis b cis b cis b) \key e \major
  e4.^\f ~8 8 8 4.~4 8 % 10b
  e4 8~4 8 fis4 e8 fis4 e8
  e4.~8 8 8 4.~8 8 8  % 11a
  e4.~4 8 fis4 e8 fis4 e8
  e4.~4 8 fis4.~8 e fis % 11b
  gis4.~4 e8 4 r8 r4.
  e4 8~4 8 dis4.~8 cis dis % 12a
  dis2.^\markup\italic "molto rit." r
  <<{R1.} \new Voice {s4. s4.^\markup\italic "rit. al fine" s2.}>> % 12b
  r2. e4. 4.
  e2.~2.\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  Yes, __ I'm the great __ pre -- tend -- er. __
  Oo wee oo wee oo,
  tend -- ing that I'm do -- ing well. __
  Oo wee oo wee oo,
  need __ is such __ I pre -- tend __ too much;
  Lone -- ly __ but no __ one can tell.

  Yes, __ I'm the great __ pre -- tend -- er. __
  Oo wee oo wee oo,
  drift __ in a world __ of my own. __
  Oo wee oo wee oo,
  play __ the game __ but to my __ real shame
  left me to grieve __ all a -- lone.

  Too real is this feel -- ing of make __
  Oo wee oo wee oo,
  Too real when I feel __ what my heart __ can't con -- trol.
  Woh __
  
  Yes, __ I'm the great __ pre -- tend -- er. __
  Oo wee oo wee oo,
  laugh -- ing a -- way __ like a clown. __
  Oo wee oo wee oo,
  seem __ to be __ what I'm not __ you see;
  wear -- ing __ my heart __ like a crown.

  Oo wee oo wee oo,
% 9
  Too real is the feel -- ing of make
  Oo wee oo wee oo,
  Too real when I feel __ what my heart __ can't con -- ceal.
  Woh __ Woh __
  
  Yes, __ I'm the great __ pre -- tend -- er. __
  Oo wee oo wee oo,
  laugh -- ing a -- way __ like a clown. __
  Oo wee oo wee oo,
  seem __ to be __ what I'm not __ you see;
  wear -- ing __ my heart __ like a crown.

  Still a -- round. __
}

wordsAltoMidi = \lyricmode {
  "Yes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nOo " "wee " "oo " "wee " "oo, "
  "\ntend" "ing " "that " "I'm " do "ing " "well. " 
  "\nOo " "wee " "oo " "wee " "oo, "
  "\nneed "  "is " "such "  "I " pre "tend "  "too " "much; "
  "\nLone" "ly "  "but " "no "  "one " "can " "tell. "

  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nOo " "wee " "oo " "wee " "oo, "
  "\ndrift "  "in " "a " "world "  "of " "my " "own. " 
  "\nOo " "wee " "oo " "wee " "oo, "
  "\nplay "  "the " "game "  "but " "to " "my "  "real " "shame "
  "\nleft " "me " "to " "grieve "  "all " a "lone. "

  "\nToo " "real " "is " "this " feel "ing " "of " "make " 
  "\nOo " "wee " "oo " "wee " "oo, "
  "\nToo " "real " "when " "I " "feel "  "what " "my " "heart "  "can't " con "trol. "
  "\nWoh " 
  
  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nOo " "wee " "oo " "wee " "oo, "
  "\nlaugh" "ing " a "way "  "like " "a " "clown. " 
  "\nOo " "wee " "oo " "wee " "oo, "
  "\nseem "  "to " "be "  "what " "I'm " "not "  "you " "see; "
  "\nwear" "ing "  "my " "heart "  "like " "a " "crown. "

  "\nOo " "wee " "oo " "wee " "oo, "
% 9
  "\nToo " "real " "is " "the " feel "ing " "of " "make "
  "\nOo " "wee " "oo " "wee " "oo, "
  "\nToo " "real " "when " "I " "feel "  "what " "my " "heart "  "can't " con "ceal. "
  "\nWoh "  "Woh " 
  
  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nOo " "wee " "oo " "wee " "oo, "
  "\nlaugh" "ing " a "way "  "like " "a " "clown. " 
  "\nOo " "wee " "oo " "wee " "oo, "
  "\nseem "  "to " "be "  "what " "I'm " "not "  "you " "see; "
  "\nwear" "ing "  "my " "heart "  "like " "a " "crown. "

  "\nStill " a "round. " 
}

tenor = \relative {
  \global
  R1.
  r2.^\markup "Solo or section Solo" r4 bes8^\mf (c4 bes8)
  bes8(g4~8) f ees f4.~8 g(aes) % 2b
  g8(f) ees~4.~4. r4 8
  c'4.~8 8 8 aes4.~8 bes c % 3a
  c8(bes4~4.~4.) r4 ees,8
  c'4.~4 8 d4 r8 r c8 d % 3b
  ees4.~8 d(ees) c4 r8 r bes(c)
  bes4 g8~4 ees8 f4.~8 ees f
  f8(ees4~4.) r4 bes'8(c4 bes8) % 4a
  bes8(g4~8) f ees f4.~8 g(aes)
  g8(f) ees~4.~4. r4 8
  c'4.~8 8 8 aes4.~8 bes c % 4b
  c8(bes4~4.~4.) r4 ees,8
  c'4.~4 8 d4 r8 r c d
  ees4.~8 d(ees) c4 r8 r bes8(c) % 5a
  bes4 g8~4 ees8 f4.~8 ees f
  f8(ees4~4.) r4. r4 ees8 % 5b
  c'4.~8 8 8 aes4.~8 bes c
  bes4.~4 g8 bes4. r8 r ees, % 6a
  c'4.~8 8 8 aes4.~8 bes c
  bes4.~8 g ees f4. bes8(c bes % 6b
  c8 bes c bes c bes)
  bes8(g4~8) f ees f4.~8 g(aes)
  g8(f) ees~4.~4. r4 ees8 % 7a
  c'4.~8 8 8 aes4.~8 bes c
  c8(bes4~4.~4.) r4 ees,8 % 7b
  c'4.~4 8 d4 r8 r c d
  ees4.~8 d(ees) c4 r8 r bes(c)
  bes4 g8~4 ees8 f4.~8 ees f % 8a
  g2. r4 bes8(c4 bes8)
  bes4 g8~4 ees8 f4.~8 ees f % 8b
  f8(ees4~4.~4.) r4 ees8
  c'4.~8 8 8 aes4.~8 bes c % 9a
  bes4.~4 g8 bes4. r8 r ees,
  c'4.~8 8 8 aes4.~8 bes c % 9b
  bes4.~8 <<{\voiceTwo g8 ees f4. bes8(c bes | c8 bes c bes c bes)}
            \new Voice {\teeny \voiceOne d8 ees f4. g4(ees8 | f ees f ees f ees)}>>
  \oneVoice r4. b8^\cresc (cis b cis b cis b cis b) \key e \major
  b8^\f(gis4~8) fis e fis4.~8 gis(a) % 10b
  gis8(fis) e~4.~4. r4 e8
  cis'4.~8 8 8 a4.~8 b cis % 11a
  cis8(b4~4.~4.) r4 e,8
  cis'4.~4 8 dis4 r8 r cis dis % 11b
  e4.~8 dis(e) cis4 r8 r b(cis)
  b4 gis8(4) e8 fis4.~8 e fis % 12a
  gis2.^\markup\italic "molto rit." r4 b8(cis4 b8)
  b4 gis8~4^\markup\italic "rit. al fine" e8 fis4.~8 e fis % 12b
  fis4(e8~4.~2.~
  e2.~2.\fermata)
  \bar "|."
}

wordsTenor = \lyricmode {
  Oh, __
  Yes, __ I'm the great __ pre -- tend -- er. __
  Pre -- tend -- ing that I'm do -- ing well. __
  My need __ is such __ I pre -- tend __ too much;
  I'm lone -- ly __ but no __ one can tell.

  Oh, __ yes, __ I'm the great __ pre -- tend -- er. __
  A -- drift __ in a world __ of my own. __
  I play __ the game __ but to my __ real shame
  you've left me to grieve __ all a -- lone.

  Too real is this feel -- ing of make __ be -- lieve;
  Too real when I feel __ what my heart __ can't con -- trol.
  Woh __
  
% b24
  Yes, __ I'm the great __ pre -- tend -- er. __
  Just laugh -- ing a -- way __ like a clown. __
  I seem __ to be __ what I'm not __ you see;
  I'm wear -- ing __ my heart __ like a crown.
  Pre -- tend -- ing __ that you're __ still a -- round. __

% 9
  Too __ real is the feel -- ing of make __ be -- lieve;
  Too real __ when I feel __ what my heart __ can't con -- ceal.
  Woh __ Woh __

% b40
  Yes, __ I'm the great __ pre -- tend -- er. __
  Just laugh -- ing a -- way __ like a clown. __
  I seem __ to be __ what I'm not __ you see;
  I'm wear -- ing __ my heart __ like a crown.
  pre -- tend -- ing __ that you're __ still a -- round. __
}

wordsTenorMidi = \lyricmode {
  "Oh, " 
  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nPre" tend "ing " "that " "I'm " do "ing " "well. " 
  "\nMy " "need "  "is " "such "  "I " pre "tend "  "too " "much; "
  "\nI'm " lone "ly "  "but " "no "  "one " "can " "tell. "

  "\nOh, "  "yes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nA" "drift "  "in " "a " "world "  "of " "my " "own. " 
  "\nI " "play "  "the " "game "  "but " "to " "my "  "real " "shame "
  "\nyou've " "left " "me " "to " "grieve "  "all " a "lone. "

  "\nToo " "real " "is " "this " feel "ing " "of " "make "  be "lieve; "
  "\nToo " "real " "when " "I " "feel "  "what " "my " "heart "  "can't " con "trol. "
  "\nWoh " 
  
% b24
  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nJust " laugh "ing " a "way "  "like " "a " "clown. " 
  "\nI " "seem "  "to " "be "  "what " "I'm " "not "  "you " "see; "
  "\nI'm " wear "ing "  "my " "heart "  "like " "a " "crown. "
  "\nPre" tend "ing "  "that " "you're "  "still " a "round. " 

% 9
  "\nToo "  "real " "is " "the " feel "ing " "of " "make "  be "lieve; "
  "\nToo " "real "  "when " "I " "feel "  "what " "my " "heart "  "can't " con "ceal. "
  "\nWoh "  "Woh " 

% b40
  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nJust " laugh "ing " a "way "  "like " "a " "clown. " 
  "\nI " "seem "  "to " "be "  "what " "I'm " "not "  "you " "see; "
  "\nI'm " wear "ing "  "my " "heart "  "like " "a " "crown. "
  "\npre" tend "ing "  "that " "you're "  "still " a "round. " 
}

bass = \relative {
  \global
  R1.
  R1.
  bes4.^\mf ~8 8 8 c4.~4 8 % 2b
  bes4 8~4.~4. r4 8
  c4.~8 8 8 c4.~8 8 8 % 3a
  bes2.~4. r4 bes8
  c4.~4 8 d4.~8 c d % 3b
  ees4.~4 bes8 c4 r8 r4.
  bes4 8~4 8 4.~8 aes bes
  g2. r2. % 4a
  bes4.~8 8 8 c4.~4 8
  bes4 8~4.~4. r4 bes8
  c4.~8 8 8 4.~8 8 8 % 4b
  bes2.~4. r4 bes8
  c4.~4 8 d4.~8 c d
  ees4.~4 bes8 c4 r8 r4. % 5a
  bes4 8~4 8 4.~8 aes bes
  g2. r % 5b
  r4 c8 8 8 8 4.~8 8 8
  bes4.~4 8 des2. % 6a
  r4 c8 8 8 8 4.~8 8 8
  ees4.~8 bes bes d4. bes8(c bes % 6b
  c8 bes c bes c bes)
  bes4.~8 8 8 c4.~4 8
  bes4 8~4.~4. r4 bes8 % 7a
  c4.~8 8 8 4.~8 8 8
  bes2.~4. r4 8 % 7b
  c4.~4 8 d4.~8 c d
  ees4.~4 bes8 c4 r8 r4.
  bes4 8~4 8 4.~8 aes bes % 8a
  b2. r
  R1. % 8b
  r4. r4 ees,8 f4 ees8 f4 ees8
  r4 c'8 8 8 8 4.~8 8 8 % 9a
  bes4.~4 8 des2.
  r4 c8 8 8 8 4.~8 8 8 % 9b
  ees4.~8 bes bes d4. bes8(c bes
  c8 bes c bes c bes) % 10a
  r4. b8^\cresc (cis b cis b cis b cis b) \key e \major
  b4.^\f ~8 8 8 cis4.~4 8 % 10b
  b4 8~4.~4. r4 8
  cis4.~8 8 8 4.~8 8 8 % 11a
  b2.~4. r4 b8
  cis4.~4 8 dis4.~8 cis dis % 11b
  b4.~4 8 cis4 r8 r4.
  b4 8~4 8 4.~8 a b % 12a
  bis2.^\markup\italic "molto rit." r
  <<R1. \new Voice {s4. s^\markup\italic "rit. al fine" s2.}>>
  r2. <a cis>4.^\markup div. q
  <e b'>2.~<e, b''>2.\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  Yes, __ I'm the great __ pre -- tend -- er. __
  Pre -- tend -- ing that I'm do -- ing well. __
  My need __ is such __ I pre -- tend __ too much;
  Lone -- ly __ but no __ one can tell.

  Yes, __ I'm the great __ pre -- tend -- er. __
  A -- drift __ in a world __ of my own. __
  I play __ the game __ but to my __ real shame
  left me to grieve __ all a -- lone.

  Too real is this feel -- ing of make __ be -- lieve;
  Too real when I feel __ what my heart __ can't con -- trol.
  Woh __
  
  Yes, __ I'm the great __ pre -- tend -- er. __
  Just laugh -- ing a -- way __ like a clown. __
  I seem __ to be __ what I'm not __ you see;
  wear -- ing __ my heart __ like a crown.

  Oo wee oo wee oo,
  Too real is the feel -- ing of make __ be -- lieve;
  Too real when I feel __ what my heart __ can't con -- ceal.
  Woh __ Woh __
  
  Yes, __ I'm the great __ pre -- tend -- er. __
  Just laugh -- ing a -- way __ like a clown. __
  I seem __ to be __ what I'm not __ you see;
  wear -- ing __ my heart __ like a crown.

  Still a -- round. __
}

wordsBassMidi = \lyricmode {
  "Yes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nPre" tend "ing " "that " "I'm " do "ing " "well. " 
  "\nMy " "need "  "is " "such "  "I " pre "tend "  "too " "much; "
  "\nLone" "ly "  "but " "no "  "one " "can " "tell. "

  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nA" "drift "  "in " "a " "world "  "of " "my " "own. " 
  "\nI " "play "  "the " "game "  "but " "to " "my "  "real " "shame "
  "\nleft " "me " "to " "grieve "  "all " a "lone. "

  "\nToo " "real " "is " "this " feel "ing " "of " "make "  be "lieve; "
  "\nToo " "real " "when " "I " "feel "  "what " "my " "heart "  "can't " con "trol. "
  "\nWoh " 
  
  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nJust " laugh "ing " a "way "  "like " "a " "clown. " 
  "\nI " "seem "  "to " "be "  "what " "I'm " "not "  "you " "see; "
  "\nwear" "ing "  "my " "heart "  "like " "a " "crown. "

  "\nOo " "wee " "oo " "wee " "oo, "
  "\nToo " "real " "is " "the " feel "ing " "of " "make "  be "lieve; "
  "\nToo " "real " "when " "I " "feel "  "what " "my " "heart "  "can't " con "ceal. "
  "\nWoh "  "Woh " 
  
  "\nYes, "  "I'm " "the " "great "  pre tend "er. " 
  "\nJust " laugh "ing " a "way "  "like " "a " "clown. " 
  "\nI " "seem "  "to " "be "  "what " "I'm " "not "  "you " "see; "
  "\nwear" "ing "  "my " "heart "  "like " "a " "crown. "

  "\nStill " a "round. " 
}

pianoRH = \relative {
  \global
  <g bes ees>8\omit\mf  8 8 8 8 8 <aes c ees> q q q q q
  <g aes bes d>8 r r <dis fis a b>4 <d f aes bes>8~2.
  <g bes ees>8 8 8 8 8 8 <aes c ees>8 8 8 8 8 8 % 2b
  <g bes ees>8 8 8 8 8 8 <g bes des>8 8 8 8 8 8
  <ees aes c>8 8 8 8 8 8 8 8 8 8 8 8 % 3a
  <ees g bes>8 8 8 8 8 8 8 8 8 8 8 8
  <ees aes c>8 8 8 8 8 8 <f bes d>8 8 8 8 8 8 % 3b
  <g bes ees>8 8 8 8 8 8 <aes c ees>8 8 8 8 8 8
  <g bes ees>8 8 8 8 8 8 <f bes d>8 8 8 8 8 8
  <g bes ees>8 8 8 8 8 8 <f a d>8 8 8 8 8 8 % 4a
  <g bes ees>8 8 8 8 8 8 <aes c ees>8 8 8 8 8 8
  <g bes ees>8 8 8 8 8 8 <g bes des>8 8 8 8 8 8
  <ees aes c>8 8 8 8 8 8 8 8 8 8 8 8 % 4b
  <ees g bes>8 8 8 8 8 8 8 8 8 8 8 8
  <ees aes c>8 8 8 8 8 8 <f bes d>8 8 8 8 8 8
  <g bes ees>8 8 8 8 8 8 <aes c ees>8 8 8 8 8 8 % 5a
  <g bes ees>8 8 8 8 8 8 <f bes d>8 8 8 8 8 8
  <g bes ees>8 8 8 8 8 8 <des' ees g>8 8 8 8 8 8 % 5b
  <c ees aes>8 8 8 8 8 8 8 8 8 8 8 8
  <bes ees g>8 8 8 8 8 8 <bes des g>8 8 8 8 8 8 % 6a
  <c ees aes>8 8 8 8 8 8 8 8 8 8 8 8
  <bes ees g>8 8 8 8 8 8 <aes d f>8 8 8 8 8 8 % 6b
  <aes d f>8 8 8 8 8 8
  <g bes ees>8 8 8 8 8 8 <aes c ees>8 8 8 8 8 8
  <g bes ees>8 8 8 8 8 8 <g bes des>8 8 8 8 8 8 % 7a
  <ees aes c>8 8 8 8 8 8 8 8 8 8 8 8
  <ees g bes>8 8 8 8 8 8 8 8 8 8 8 8 % 7b
  <ees aes c>8 8 8 8 8 8 <f bes d>8 8 8 8 8 8
  <g bes ees>8 8 8 8 8 8 <aes c ees>8 8 8 8 8 8
  <g bes ees>8 8 8 8 8 8 <f bes d>8 8 8 8 8 8 % 8a
  <f b d>8 8 8 8 8 8 8 8 8 8 8 8
  <g bes ees>8 8 8 8 8 8 <f bes d>8 8 8 8 8 8 % 8b
  <g bes ees>8 8 8 8 8 <g bes d> <des' ees g>8 8 8 8 8 8
  <c ees aes>8 8 8 8 8 8 8 8 8 8 8 8 % 9a
  <bes ees g>8 8 8 8 8 8 <bes des g>8 8 8 8 8 8
  <c ees aes>8 8 8 8 8 8 8 8 8 8 8 8 % 9b
  <bes ees g>8 8 8 8 8 8 <aes d f>8 8 8 8 8 8
  <aes d f>8 8 8 8 8 8 % 10a
  <a dis fis>8 8 8 8 8 8 8 8 8 8 8 8 \key e \major
  <gis b e>8\omit\f 8 8 8 8 8 <a cis e>8 8 8 8 8 8 % 10b
  <gis b e>8 8 8 8 8 8 <gis b d>8 8 8 8 8 8
  <e a cis>8 8 8 8 8 8 8 8 8 8 8 8 % 11a
  <e gis b>8 8 8 8 8 8 8 8 8 8 8 8
  <e a cis>8 8 8 8 8 8 <fis b dis>8 8 8 8 8 8 % 11b
  <gis b e>8 8 8 8 8 8 <a cis e>8 8 8 8 8 8
  <gis b e>8 8 8 8 8 8 <fis b dis>8 8 8 8 8 8 % 12a
  <<{\voiceOne r2. <gis' gis'>} \new Voice {\voiceTwo <fis, bis dis>2._~q}>> \oneVoice
  R1.^\markup\bold Slowly % 12b
  r2. <a cis e>4. 4.
  <gis b e>2.~2.\fermata
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1.\mf
  s1.*21
  s2. % 6b+
  s1.*14
  s2. % 10a
  s1.\cresc
  s1.\f
  s1.*6
  s1.-\markup\italic "molto rit."
  s4. s-\markup\italic "rit al fine." s2.
  s1.
  s1.
}

pianoLH = \relative {
  \global
  ees,4.\omit\mf 8 f g aes4. 8 g aes
  bes8 r r b4 bes8~2.
  ees,4. 8 f g aes4. 8 g f % 2b
  g4. ees4 bes'8 ees,4. 8 f g
  aes4. 4 ees8 aes4. 8 g f % 3a
  ees4. 4 bes'8 ees,4. 8 f g
  aes4. 8 g aes bes4. 8 c d % 3b
  ees4. 8 bes ees aes,4. 8 g f
  ees4. 4 g8 bes4. 4 f8
  ees4. g8 aes a bes4. bes, % 4a
  ees4. 8 f g aes4. 8 g f
  ees4. 4 bes'8 ees,4. 8 f g
  aes4. 4 ees8 aes4. 8 g f % 4b
  ees4. 4 bes'8 ees,4. 8 f g
  aes4. 8 g aes bes4. 8 c d
  ees4. 8 bes ees aes,4. 8 g f % 5a
  ees4. 4 g8 bes4. 4 f8
  ees4. 4 bes'8 ees,4. 8 f g % 5b
  aes4. 4 ees8 aes4. 8 g f
  ees4. 4 bes'8 ees,4. 8 f g % 6a
  aes4. 4 ees8 aes4. 8 g f
  ees4. g8 aes a bes4. bes, % 6b
  bes'4. bes,
  ees4. 8 f g aes4. 8 g f
  ees4. 4 bes'8 ees,4. 8 f g % 7a
  aes4. 4 ees8 aes4. 8 g f
  ees4. 4 bes'8 ees,4. 8 f g % 7b
  aes4. 8 g aes bes4. 8 c d
  ees4. 8 bes ees aes,4. 8 g f
  ees4. 4 g8 bes4. 4 f8 % 8a
  g4. 4 d8 g2.
  ees4. g8 aes a bes4. bes, % 8b
  ees4. 4 bes8 ees4. 8 f g
  aes4. 4 ees8 aes4. 8 g f % 9a
  ees4. 4 bes'8 ees,4. 8 f g
  aes4. 4 ees8 aes4. 8 g f % 9b
  ees4. g8 aes a bes4. bes,
  bes'4. 4. % 10a
  b4. b, b' b,8 cis dis \key e \major
  e4.\omit\f 8 fis gis a4. 8 gis fis % 10b
  e4. 4 b'8 e,4. 8 fis gis
  a4. 4 e8 a4. 8 gis fis % 11a
  e4. 4 b'8 e,4. 8 fis gis
  a4. 8 gis a b4. 8 cis dis % 11b
  e4. 8 b e a,4. 8 gis fis
  e4. 4 gis8 b4. 4 fis8 % 12a
  gis4. b gis,2.
  R1. % 12b
  r2. a'4. 4.
  <<{\voiceOne \tuplet 2/2 {r8. b} \tuplet 2/2 {e gis} b2.\fermata}
    \new Voice {\voiceTwo e,,2.~2.\fermata}>>
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single-satb"
  \header { subsubtitle = "Original SATB order" }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
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
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "single-satb-sop"
  \header { subsubtitle = "Original SATB order" }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
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
            \magnifyStaff #4/7
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
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "single-satb-alto"
  \header { subsubtitle = "Original SATB order" }
  \score {
%   \articulate
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
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
            \magnifyStaff #4/7
            \clef "treble_8"
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
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "single-satb-tenor"
  \header { subsubtitle = "Original SATB order" }
  \score {
%   \articulate
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "single-satb-bass"
  \header { subsubtitle = "Original SATB order" }
  \score {
%   \articulate
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "singlepage-satb"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \header { subsubtitle = "Original SATB order" }
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
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "singlepage-satb-sop"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \header { subsubtitle = "Original SATB order" }
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
            \magnifyStaff #4/7
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
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
%          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "singlepage-satb-alto"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \header { subsubtitle = "Original SATB order" }
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
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
            \magnifyStaff #4/7
            \clef "treble_8"
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
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
%          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "singlepage-satb-tenor"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \header { subsubtitle = "Original SATB order" }
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
%          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "singlepage-satb-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \header { subsubtitle = "Original SATB order" }
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
%          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "midi-satb-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef bass
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
  \bookOutputSuffix "midi-satb-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef bass
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
  \bookOutputSuffix "midi-satb-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef bass
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
  \bookOutputSuffix "midi-satb-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef bass
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

% and now another set with tenor and bass lines swapped

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single-sabt"
  \header { subsubtitle = "with tenor and bass lines swapped" }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "single-sabt-sop"
  \header { subsubtitle = "with tenor and bass lines swapped" }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
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
            \magnifyStaff #4/7
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
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
        >>
        \new PianoStaff = piano <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "single-sabt-alto"
  \header { subsubtitle = "with tenor and bass lines swapped" }
  \score {
%   \articulate
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
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
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
        >>
        \new PianoStaff = piano <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "single-sabt-tenor"
  \header { subsubtitle = "with tenor and bass lines swapped" }
  \score {
%   \articulate
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
        >>
        \new PianoStaff = piano <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "single-sabt-bass"
  \header { subsubtitle = "with tenor and bass lines swapped" }
  \score {
%   \articulate
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "singlepage-sabt"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \header { subsubtitle = "with tenor and bass lines swapped" }
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "singlepage-sabt-sop"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \header { subsubtitle = "with tenor and bass lines swapped" }
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
            \magnifyStaff #4/7
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
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
        >>
        \new PianoStaff = piano <<
%          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "singlepage-sabt-alto"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \header { subsubtitle = "with tenor and bass lines swapped" }
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
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
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
        >>
        \new PianoStaff = piano <<
%          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "singlepage-sabt-tenor"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \header { subsubtitle = "with tenor and bass lines swapped" }
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
        >>
        \new PianoStaff = piano <<
%          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "singlepage-sabt-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \header { subsubtitle = "with tenor and bass lines swapped" }
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
%          \new ChordNames { \ChordTrack }
%         \new FretBoards { \ChordTrack }
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
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
        \accidentalStyle Score.modern
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
  \bookOutputSuffix "midi-sabt-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \bass
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef bass
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
  \bookOutputSuffix "midi-sabt-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \bass
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef bass
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
  \bookOutputSuffix "midi-sabt-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef bass
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
  \bookOutputSuffix "midi-sabt-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef bass
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
