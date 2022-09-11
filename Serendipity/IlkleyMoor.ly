\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ilkley Moor Baht 'At"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Yorkshire Folksong"
  arranger    = "Arr. Robert De Cormier"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key a \major
  \time 2/2
}

TempoTrack = {
  \tempo 2=108
  s1
  \set Score.tempoHideNote = ##t
  s1*103
  \tempo 2=100
  s1*31
  \tempo 2=50 s2 \tempo 2=100 s2
  \tempo 2=108
  s1*32
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s1*5
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "A"  } s1
  \mark \markup { \box "4a" } s1*5
  \mark \markup { \box "4b" } s1*5
  \mark \markup { \box "5a" } s1*5
  \mark \markup { \box "B—5b"  } s1*5
  \mark \markup { \box "6a" } s1*3
  \mark \markup { \box "C"  } s1*2
  \mark \markup { \box "6b" } s1*4
  \mark \markup { \box "7a" } s1*5
  \mark \markup { \box "7b" } s1*5
  \mark \markup { \box "D—8a"  } s1*5
  \mark \markup { \box "8b" } s1*3
  \mark \markup { \box "E"  } s1*2
  \mark \markup { \box "9a" } s1*4
  \mark \markup { \box "9b" } s1*5
  \mark \markup { \box "10a" } s1*5
  \mark \markup { \box "F—10b"   } s1*5
  \mark \markup { \box "11a" } s1*3
  \mark \markup { \box "G"   } s1*2
  \mark \markup { \box "11b" } s1*5
  \mark \markup { \box "12a" } s1*5
  \mark \markup { \box "12b" } s1*4
  \mark \markup { \box "H—13a"   } s1*5
  \mark \markup { \box "13b" } s1*3
  \mark \markup { \box "J"   } s1*2
  \mark \markup { \box "14a" } s1*5
  \mark \markup { \box "14b" } s1*6
  \mark \markup { \box "15a" } s1*3
  \mark \markup { \box "K"   } s1*2
  \mark \markup { \box "15b" } s1*6
  \mark \markup { \box "16a" } s1*5
  \mark \markup { \box "16b" } s1*3
  \mark \markup { \box "L"   } s1*2
  \mark \markup { \box "17a" } s1*5
  \mark \markup { \box "17b" } s1*5
  \mark \markup { \box "18a" } s1*4
  \mark \markup { \box "M"   } s1
  \mark \markup { \box "18b" } s1*5
  \mark \markup { \box "19a" } s1*5
  \mark \markup { \box "19b" } s1*5
  
}

solo = \relative {
  \clef bass
  \global
  R1*11
  r2 e^\mf
  a4(gis) fis(e)
  fis4(e) d(cis)
  cis1( % 4b
  b4) r r2
  R1*7
  r2 r4 e % 5a+4
  a4. 8 4 e % 5b
  a4 r r2
  R1
  r2 r4 cis
  b2 a
  a2 gis % 6a
  a4 r r2
  R1
  a2 e4. fis8
  e4 d cis b
  a1~ % 6b
  a8 r r4 e'2^\mp
  a4(gis) fis(e)
  fis4(e) d(cis)
  cis1( % 7a
  b4) r e2
  e2 4. fis8
  gis4 e fis gis
  a1~
  a2 r % 7b
  b2 4. a8
  gis4 b fis b
  e,1~
  e8 r r4 r2
  R1 % 8a
  r4 e a r
  R1
  r4 a cis r
  R1
  R1 % 8b
  r4 e, cis e
  a,4 r r2
  R1
  R1
  a'2 e4. fis8 % 9a
  e4 d cis b
  a1
  R1
  R1*4
  a'4 4 gis gis
  fis4 4 e2 % 10a
  R1
  R1
  e4 4 d d
  cis4 4 b b
  a4. 8 4 e % 10b
  a4 r r2
  R1
  r4 a' cis r
  R1
  R1 % 11a
  R1
  R1 \key d \major
  R1
  R1
  r2 a,4 4 % 11b
  a'2 r
  R1
  R1
  R1
  R1 % 12a
  R1
  R1
  d2 cis
  b4 4 a2
  R1 % 12b
  R1
  a4 4 g g
  fis4 4 e e
  d4 r r2 % 13a
  R1*7 \key f \major
  R1*2 ^\markup "Freely—a little slower"
  r2 a4 4 % 14a
  d4 r r2
  R1*3
  R1 % 14b
  R1
  R1
  r2 a'4 4
  d,4 r r2
  R1
  R1*5 % 15a
  R1 % 15b
  c'2(bes4) r
  R1*4
  R1*8 \key d \major
  R1*4
  fis4 4 4. 8 % 17a++
  dis4 4 4 r
  r2 d'2->
  c4-. r r2 % 17b
  R1
  R1
  d2 cis
  b4 4 a r
  R1 % 18a
  R1
  a2 g
  fis2 e
  R1
  r4 a d r % 18b
  R1
  r4 <a d> <d fis> r
  R1
  R1
  R1 % 19a
  r2 g,4(fis)
  e1
  g1
  a1
  a1 % 19b
  d,1~
  d1~
  d1 \glissando
  d'4-> r r2
}

wordsSolo = \lyricmode {
  On Ilk -- ley __ Moor __ baht __ 'at, __
  On Ilk -- ley Moor baht -- 'at,
  On Ilk -- ley Moor baht -- 'at,

  I've been a -- court -- ing Mar -- y Jane __
  On Ilk -- ley __ Moor __ baht -- 'at. __
  Yes, Ive been a -- cout -- ing Mar -- y Jane, __
  I've been a -- court -- ing Mar -- y Jane, __
  baht -- 'at, baht -- 'at, baht -- 'at, baht -- 'at,

  I'll nev -- er catch my death of cold.
  I would nev -- er catch a cold.
  Mar -- y Jane will keep me warm
  on Ilk -- ley Moor baht -- 'at,
  baht -- 'at,

  Bur -- y me?
  Please, don't bur -- y me,
  Please, don't bur -- y me with -- out my hat.

  Et me up?
  Et me up?
  worms __

  I'll be back on Ilk -- ley Moor baht -- 'at,
  I'll be com -- in' back,
  I'll be back on
  baht -- 'at, baht -- 'at,
  On Ilk -- ley Moor baht -- 'at. __ _
}

wordsSoloMidi = \lyricmode {
  "On " Ilk "ley "  "Moor "  "baht "  "'at, " 
  "\nOn " Ilk "ley " "Moor " baht "'at, "
  "\nOn " Ilk "ley " "Moor " baht "'at, "

  "\nI've " "been " a court "ing " Mar "y " "Jane " 
  "\nOn " Ilk "ley "  "Moor "  baht "'at. " 
  "\nYes, " "Ive " "been " a cout "ing " Mar "y " "Jane, " 
  "\nI've " "been " a court "ing " Mar "y " "Jane, " 
  "\nbaht" "'at, " baht "'at, " baht "'at, " baht "'at, "

  "\nI'll " nev "er " "catch " "my " "death " "of " "cold. "
  "\nI " "would " nev "er " "catch " "a " "cold. "
  "\nMar" "y " "Jane " "will " "keep " "me " "warm "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\nbaht" "'at, "

  "\nBur" "y " "me? "
  "\nPlease, " "don't " bur "y " "me, "
  "\nPlease, " "don't " bur "y " "me " with "out " "my " "hat. "

  "\nEt " "me " "up? "
  "\nEt " "me " "up? "
  "\nworms " 

  "\nI'll " "be " "back " "on " Ilk "ley " "Moor " baht "'at, "
  "\nI'll " "be " com "in' " "back, "
  "\nI'll " "be " "back " "on "
  "\nbaht" "'at, " baht "'at, "
  "\nOn " Ilk "ley " "Moor " baht "'at. "  ""
}

soprano = \relative {
  \global
  R1*8 \bar "||"
  a'2^\mf
  e4. fis8
  e4 d cis b % 4a
  a1
  R1*4
  r2 e'' % 4b+
  e,2 4. fis8
  gis4 e fis gis
  a1~
  a2 r % 5a
  b2 4. a8
  gis4 b dis b
  e1~
  e2 r \bar "||"
  R1 % 5b
  r2 r4 b
  cis4. 8 4 a
  cis4 r r2
  R1
  R1 % 6a
  r4 e cis e
  a,4 r r2  \bar "||"
  R1*2
  a2 e4. fis8 % 6b
  e4 d' cis b
  a1
  R1
  r4 d2->^\mf b4 % 7a
  e4-> r r2
  R1*2
  a2^\markup "(Solo)" gis
  fis2 e4 r % 7b
  R1
  R1
  e2 d
  cis2 b
  a4. 8 4 e % 8a
  a4 r r b
  cis4. 8 4 a
  cis4 r r cis
  d4(cis) b(a)
  e'2 2 % 8b
  a,4 r r2
  R1 \bar "||"
  R1*4
  cis4-.^\mf^\markup Tutti 4-. 4-. r % 9a++
  ais4-. 4-. 4-. r8 8
  b4-. r a-. r % 9b
  gis4-. r r2
  e'2 4. dis8
  d4 e, fis gis
  a1^\> ~
  a2\! r % 10a
  b2 4. a8 gis4 b dis b
  e1^\> ~
  e2\! r \bar "||"
  R1 % 10b
  r4 e,^\mf a r
  R1
  r2 r4 cis
  d4(cis) b(a)
  e'2 2 % 11a
  a,1~ \slurDashed
  a1( \bar "||" \key d \major
  d2) \slurSolid
  a4. b8
  a4 g fis e
  d1~ % 11b
  d8 r r4 a'2^\mp
  d4(cis) b(a)
  b4(a) g(fis)
  fis1(
  e4) r4 r2 % 12a
  a2^\mf 4. b8
  cis4 g' fis e
  d1~
  d8 r r4 r2
  e2 4. d8 % 12b
  cis4 e b e
  a,1~
  a8 r r4 r a \bar "||"
  d4. 8 4 a % 13a
  d4 r r e
  fis4. 8 4 d
  fis4 r r fis
  g4(fis) e(d)
  fis2 e % 13b
  d1~
  d8 r r4 r2 \bar "||" \key f \major
  d2\omit\p^\markup {\dynamic p \italic legato} a4. bes8
  a4
  g f e
  d4 r r2 % 14a
  r2 r4 a'^\p
  d4(c) bes(a)
  bes4(a) g(f)
  f1-> (
  e2) r % 14b
  a2^\markup\italic staccato 4. 8
  a4^\< 4 f' e\!
  d4 r r2
  r2 r4 e,4\omit\p^\markup{\dynamic p \italic legato}
  e2 2
  a4(g) f(e) % 15a
  d4 r a2->^\f \glissando
  d4-> r r2 \bar "||"
  bes'4^\markup\italic staccato r bes4. a8
  g4 4 bes bes
  a2.-- r4 % 15b
  r2 r4 a^\markup\italic legato
  e2 2
  a4(g) f(g)
  a1~
  a8 r r4 r2
  bes4.\omit\p^\markup{\dynamic p \italic staccato} 8 4^\< 4 % 16a
  a4\! r r2
  cis4.^\< 8 4 4
  d1\!(
  e,2) 2
  a4^\markup rit.
  g f e % 16b
  d4 r a2(
  d2\fermata) r \bar "||" \key d \major
  d'2^\mf^\markup\italic "a tempo" a4. b8
  a4 g fis e
  d4 r r2 % 17a
  r2 a'
  d4(cis) b(a)
  b4(a) g(fis)
  e1~
  e4 r r2 % 17b
  a2 4. b8
  cis4 g' fis e
  d1~
  d2 r
  e2 4. d8 % 18a
  cis4 e b e
  a,1~
  a2 r4 a \bar "||"
  d4. 8 4 a
  d4 r r e % 18b
  fis4. 8 4 d
  fis4 r r fis
  g4(fis) e(d)
  d2 cis
  d1( % 19a
  e4) r fis2
  g1
  e1
  <d a'>1
  <cis a'>1 % 19b
  d1~
  d1~
  d1 \glissando
  <fis a>4-> r r2
  \bar "|."
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsSop = \lyricmode {
  Where hast thou been since I saw thee?
  Oh, where hast thou been since I saw thee, __
  Where hast thou been since I saw thee? __
  On Ilk -- ley Moor baht -- 'at,
  baht -- 'at, baht -- 'at,
  He's been a -- court -- ing Mar -- y Jane,
  Mar -- y Jane,
  He's been court -- ing Mar -- y Jane,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at,
  
  You'll catch cold on the moor with -- out your hat.
  Thou'll sure -- ly catch thy death of cold, __
  Thou'll sure -- ly catch thy death of cold, __
  baht -- 'at,
  on Ilk -- ley __ Moor \nom baht -- 'at. _ __

  Then \yesm we shall have to bur -- y thee __
  on Ilk -- ley __ Moor __ baht -- 'at, __
  Then we shall have to bur -- y thee, __
  Then we shall have to bur -- y thee __
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at.

  Then worms will come and et thee up
  on Ilk -- ley __ Moor __ baht -- 'at, __
  Then worms will come and et thee up
  on Ilk -- ley Moor __ baht -- 'at, baht -- 'at,
  Then ducks will come and et up worms
  on Ilk -- ley Moor __ baht -- 'at, __
  Worms will et thee up,
  Ducks will et up \nom worms,
  Then \yesm we'll come and et up ducks, mm, __

  Then we shall have our loved ones back
  on Ilk -- ley __ Moor __ baht -- 'at, __
  Then we shall have our loved ones back, __
  Then we shall have our loved ones back __
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at,
  on Ilk -- ley  Moor baht -- 'at. __ _
}

wordsSopMidi = \lyricmode {
  "Where " "hast " "thou " "been " "since " "I " "saw " "thee? "
  "\nOh, " "where " "hast " "thou " "been " "since " "I " "saw " "thee, " 
  "\nWhere " "hast " "thou " "been " "since " "I " "saw " "thee? " 
  "\nOn " Ilk "ley " "Moor " baht "'at, "
  "\nbaht" "'at, " baht "'at, "
  "\nHe's " "been " a court "ing " Mar "y " "Jane, "
  "\nMar" "y " "Jane, "
  "\nHe's " "been " court "ing " Mar "y " "Jane, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at, "
  
  "\nYou'll " "catch " "cold " "on " "the " "moor " with "out " "your " "hat. "
  "\nThou'll " sure "ly " "catch " "thy " "death " "of " "cold, " 
  "\nThou'll " sure "ly " "catch " "thy " "death " "of " "cold, " 
  "\nbaht" "'at, "
  "\non " Ilk "ley "  "Moor " \nom baht "'at. " "" 

  "\nThen " \yesm "we " "shall " "have " "to " bur "y " "thee " 
  "\non " Ilk "ley "  "Moor "  baht "'at, " 
  "\nThen " "we " "shall " "have " "to " bur "y " "thee, " 
  "\nThen " "we " "shall " "have " "to " bur "y " "thee " 
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at. "

  "\nThen " "worms " "will " "come " "and " "et " "thee " "up "
  "\non " Ilk "ley "  "Moor "  baht "'at, " 
  "\nThen " "worms " "will " "come " "and " "et " "thee " "up "
  "\non " Ilk "ley " "Moor "  baht "'at, " baht "'at, "
  "\nThen " "ducks " "will " "come " "and " "et " "up " "worms "
  "\non " Ilk "ley " "Moor "  baht "'at, " 
  "\nWorms " "will " "et " "thee " "up, "
  "\nDucks " "will " "et " "up " \nom "worms, "
  "\nThen " \yesm "we'll " "come " "and " "et " "up " "ducks, " "mm, " 

  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back "
  "\non " Ilk "ley "  "Moor "  baht "'at, " 
  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back, " 
  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back " 
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at. "  ""
}

alto = \relative {
  \global
  R1*8
  a'2^\mf e4. fis8
  e4 d cis b % 4a
  a1
  R1*4
  r2 e'' % 4b+
  e,2 4. fis8
  gis4 e fis gis
  a1~
  a2 r % 5a
  b2 4. a8
  gis4 b fis b
  e,1~
  e2 r
  R1 % 5b
  r2 r4 e
  a4. 8 4 e
  a4 r r2
  R1
  R1 % 6a
  r4 e' cis e
  a,4 r r2
  R1
  R1
  a2 e4. fis8 % 6b
  e4 d' cis b
  a1
  R1
  r4 a2->^\mf 4 % 7a
  gis4-> r4 r2
  R1
  R1
  a2 gis
  fis2 e4 r % 7b
  R1
  R1
  e'2 d
  cis2 b
  a4. 8 4 e % 8a
  a4 r r e
  a4. 8 4 e
  a4 r r a
  fis2 2
  e2 gis % 8b
  a4 r r2
  R1*3
  R1 % 9a
  R1
  c4-.^\mf c-. c-. r
  ais4-. 4-. 4-. r8 a
  b4-. r a-. r % 9b
  gis4-. r r2
  e'2 4. dis8
  d4 e, fis gis
  a1^\> ~
  a2\! r % 10a
  fis2 4. 8
  gis4 b fis b
  e,1^\> ~
  e2\! r
  R1 % 10b
  r4 e^mf a r
  R1
  r2 r4 a
  fis2 2
  e2 gis % 11a
  a1~
  \slurDashed a1 ( \key d \major
  fis2) \slurSolid a4. b8
  a4 g fis e
  d1~ % 11b
  d8 r r4 a'2^\mp
  d4(cis) b(a)
  b4(a) g(fis)
  fis1(
  e4) r r2 % 12a
  a2^\mf 4. b8
  cis4 g fis e
  d1~
  d8 r r4 r2
  b'2 4. 8 % 12b
  cis4 b a gis
  a1~
  a8 r r4 r a
  d4. 8 4 a % 13a
  d4 r r a
  d4. 8 4 a
  d4 r r d
  b2 2
  a2 g % 13b
  fis1~
  fis8 r r4 r2 \key f \major
  f2\omit\p^\markup{\dynamic p \italic legato} a4. bes8
  a4 g f e
  d4 r r2 % 14a
  r2 r4 a'^\p
  d4(c) bes(a)
  bes4(a) g(f)
  f1-> (
  e2) r % 14b
  g2^\markup staccato 4. 8
  g4^\< 4 4 4\!
  d4 r r2
  r2 r4 e\omit\p^\markup{\dynamic p \italic legato}
  e2 2
  a4(g) f(e) % 15a
  d4 r a2->^\f \glissando
  d4-> r r2
  e4^\markup\italic staccato r e4. f8
  g4 4 e e
  f2.-- r4 % 15b
  r2 r4 f^\markup\italic legato
  d2 2
  a'4(g) f(e)
  f1~
  f8 r r4 r2
  e4.\omit\p^\markup{\dynamic p \italic staccato} 8 4^\< 4 % 16a
  e4\! r r2
  g4.^\< 8 4 4\!
  f1(
  e2) 2
  a4 g f e % 16b
  d4 r a2(
  d2\fermata) r \key d \major
  d'2^\mf a4. b8
  a4 g fis e
  d4 r r2 % 17a
  r2 a'
  d4(cis) b(a)
  b4(a) g(fis)
  fis1(
  e4) r r2 % 17b
  a2 4. b8
  cis4 g fis e
  d1~
  d2 r
  b'2 4. 8 % 18a
  cis4 b a gis
  a1~
  a2 r4 4
  d4. 8 4 a
  d4 r r a % 18b
  d4. 8 4 a
  d4 r r d
  b2 2
  a2 g
  fis1( % 19a
  g4) r b2
  b1
  b1
  a1
  a1 % 19b
  d1~
  d1~
  d1~
  d4-> r r2
  \bar "|."
}

wordsAlto = \lyricmode {
  Where hast thou been since I saw thee?
  Oh, where hast thou been since I saw thee, __
  Where hast thou been since I saw thee? __
  On Ilk -- ley Moor baht -- 'at,
  baht -- 'at, baht -- 'at,
  He's been a -- court -- ing Mar -- y Jane,
  Mar -- y Jane,
  He's been court -- ing Mar -- y Jane,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at,
  
  You'll catch cold on the moor with -- out your hat.
  Thou'll sure -- ly catch thy death of cold, __
  Thou'll sure -- ly catch thy death of cold, __
  baht -- 'at,
  on Ilk -- ley __ Moor \nom baht -- 'at. _ __

  Then \yesm we shall have to bur -- y thee __
  on Ilk -- ley __ Moor __ baht -- 'at, __
  Then we shall have to bur -- y thee, __
  Then we shall have to bur -- y thee __
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at.

  Then worms will come and et thee up
  on Ilk -- ley __ Moor __ baht -- 'at, __
  Then worms will come and et thee up
  on Ilk -- ley Moor __ baht -- 'at, baht -- 'at,
  Then ducks will come and et up worms
  on Ilk -- ley Moor __ baht -- 'at, __
  Worms will et thee up,
  Ducks will et up \nom worms,
  Then \yesm we'll come and et up ducks, mm, __

  Then we shall have our loved ones back
  on Ilk -- ley __ Moor __ baht -- 'at, __
  Then we shall have our loved ones back, __
  Then we shall have our loved ones back __
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at,
  on Ilk -- ley  Moor baht -- 'at. __ _
}

wordsAltoMidi = \lyricmode {
  "Where " "hast " "thou " "been " "since " "I " "saw " "thee? "
  "\nOh, " "where " "hast " "thou " "been " "since " "I " "saw " "thee, " 
  "\nWhere " "hast " "thou " "been " "since " "I " "saw " "thee? " 
  "\nOn " Ilk "ley " "Moor " baht "'at, "
  "\nbaht" "'at, " baht "'at, "
  "\nHe's " "been " a court "ing " Mar "y " "Jane, "
  "\nMar" "y " "Jane, "
  "\nHe's " "been " court "ing " Mar "y " "Jane, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at, "
  
  "\nYou'll " "catch " "cold " "on " "the " "moor " with "out " "your " "hat. "
  "\nThou'll " sure "ly " "catch " "thy " "death " "of " "cold, " 
  "\nThou'll " sure "ly " "catch " "thy " "death " "of " "cold, " 
  "\nbaht" "'at, "
  "\non " Ilk "ley "  "Moor " \nom baht "'at. " "" 

  "\nThen " \yesm "we " "shall " "have " "to " bur "y " "thee " 
  "\non " Ilk "ley "  "Moor "  baht "'at, " 
  "\nThen " "we " "shall " "have " "to " bur "y " "thee, " 
  "\nThen " "we " "shall " "have " "to " bur "y " "thee " 
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at. "

  "\nThen " "worms " "will " "come " "and " "et " "thee " "up "
  "\non " Ilk "ley "  "Moor "  baht "'at, " 
  "\nThen " "worms " "will " "come " "and " "et " "thee " "up "
  "\non " Ilk "ley " "Moor "  baht "'at, " baht "'at, "
  "\nThen " "ducks " "will " "come " "and " "et " "up " "worms "
  "\non " Ilk "ley " "Moor "  baht "'at, " 
  "\nWorms " "will " "et " "thee " "up, "
  "\nDucks " "will " "et " "up " \nom "worms, "
  "\nThen " \yesm "we'll " "come " "and " "et " "up " "ducks, " "mm, " 

  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back "
  "\non " Ilk "ley "  "Moor "  baht "'at, " 
  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back, " 
  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back " 
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at. "  ""
}

tenor = \relative {
  \global
  R1*12
  a1( % 4a+++
  ais2) r
  r2 b % 4b
  e,4 r e2
  e'2 4. dis8
  d4 4 cis b
  a1~
  a2 r % 5a
  d1
  dis2 b
  e2 d
  cis2 b
  a4 r r2 % 5b
  r2 r4 b
  cis4. 8 4 a
  cis4 r r2
  R1
  R1 % 6a
  r4 e cis e
  a,4 r r2
  R1
  R1
  R1 % 6b
  r2 e^\mp
  cis'2 2
  ais2 4 r
  r4 fis'2->^\mf 4 % 7a
  e4-> r r2
  R1*3
  R1 % 7b
  d1(
  dis4) r r2
  e2 d
  cis2 b
  a4. 8 4 e % 8a
  a4 r r b
  cis4. 8 4 a
  cis4 r r cis
  b2 2
  a2 gis % 8b
  a4 r r2
  R1
  a2^\mf e4. fis8
  e4 d cis b
  a1~ % 9a
  a8 r r4 e'2^\mp
  a4(gis) fis(e)
  fis4(e) d(cis)
  cis1( % 9b
  b4) r r2
  e2^\mf 4. fis8
  gis4 d' cis b
  a1^\> ~
  a2\! r % 10a
  d2 4. 8
  dis4 4 b b
  e1^\> ~
  e2\! r
  R1 % 10b
  r2 r4 b^\mf
  cis4. 8 4 a
  cis4 r r cis
  d2 2
  cis2 b % 11a
  a1~
  a1~ \key d \major
  \slurDashed a2 \slurSolid fis4. g8
  a4 ais b cis
  d1~ % 11b
  d8 r r4 r a^\mf
  <d fis>4-. q-. q-. r8 q-.
  dis4-. 4-. 4-. r8 dis(
  <b e>4-.) r <b d>4-. r
  cis4-. r r2 % 12a
  a2^\mf 4. gis8
  g4 a b cis
  d1~
  d8 r r4 r2
  d2 4. 8 % 12b
  d4 4 4 4
  cis1~
  cis8 r r4 r a
  fis4. 8 4 a % 13a
  d4 r r e
  fis4. 8 4 d
  fis4 r r fis
  e2 d
  d2 cis % 13b
  d1~
  d8 r r4 r2 \key f \major
  a2\omit\p^\markup{\dynamic p \italic legato} d4. 8
  d4 4 cis cis
  d4 r r2 % 14a
  R1
  r2 r4 a
  d4 c bes a
  a1->(
  g2) r % 14b
  e'2^\markup\italic staccato 4. 8
  e4^\< e cis cis\!
  d4 r r2
  r2 r4 e,\omit\p^\markup{\dynamic p \italic legato}
  e2 2
  a4(g) f(e) % 15a
  d4 r a2->^\f\glissando
  d4-> r r2
  d'4^\markup\italic staccato r d4. 8
  d4 4 4 4
  e2(d4) r % 15b
  r2 r4 d^\markup\italic legato
  bes2 2
  a2 a
  d1~
  d8 r r4 r2
  d4.\omit\p^\markup{\dynamic p \italic staccato} 8 4^\< 4 % 16a
  cis4\! r r2
  e4.^\< 8 4 4\!
  d1(
  e,2) e
  a4 g f e % 16b
  d4 r a2(
  d2\fermata) r \key d \major
  R1
  R1
  d'2 a4. b8 % 17a
  a4 g fis e
  d4 r r2
  R1
  R1
  R1 % 17b
  a'2 4. gis8
  g4 a b cis
  d1~
  d2 r
  d2 4. 8 % 18a
  d4 4 4 4
  cis1~
  cis2 r4 a
  fis4. 8 4 a
  d4 r r e % 18b
  fis4. 8 4 d
  fis4 r r fis
  e2 d
  fis2 e
  d1( % 19a
  cis4) r d2
  d1
  d1
  fis1
  e1 % 19b
  d1~
  d1~
  d1 \glissando
  <fis a>4-> r r2
  \bar "|."
}

wordsTenor = \lyricmode {
  Mm __

  Baht -- 'at,
  Oh, where hast thou been since I saw thee, __
  Where hast thou been since I saw thee? __
  On Ilk -- ley Moor baht -- 'at,
  baht -- 'at, baht -- 'at,
  On Ilk -- ley Moor with Mar -- y Jane,
  Mm __
  Mar -- y Jane
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at,
  
  Thou'll sure -- ly catch thy death of cold, __
  on Ilk -- ley __ Moor __ baht -- 'at
  Thou'll sure -- ly catch thy death of cold, __
  Thou'll sure -- ly catch thy death of cold, __
  on Ilk -- ley __ Moor baht -- 'at. __
  on Ilk -- ley __ Moor \nom baht -- 'at. _ __

  Then \yesm we shall have to bur -- y thee __
  We'll bur -- y thee on Ilk -- ley Moor \nom with -- out \yesm your hat.
  Then we shall have to bur -- y thee, __
  Then we shall have to bur -- y thee __
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at.

  Then worms will come and et thee up
  on Ilk -- ley Moor baht -- 'at, __
  Then worms will come and et thee up
  on Ilk -- ley Moor __ baht -- 'at, baht -- 'at,
  Then ducks will come and et up worms
  on Ilk -- ley Moor __ baht -- 'at, __
  Worms will et thee up,
  Ducks will et up \nom worms,
  Then \yesm we'll come and et up ducks, mm, __

  Then we shall have our loved ones back,
  Then we shall have our loved ones back, __
  Then we shall have our loved ones back __
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at,
  on Ilk -- ley  Moor baht -- 'at. __ _
}

wordsTenorMidi = \lyricmode {
  "Mm " 

  "\nBaht" "'at, "
  "\nOh, " "where " "hast " "thou " "been " "since " "I " "saw " "thee, " 
  "\nWhere " "hast " "thou " "been " "since " "I " "saw " "thee? " 
  "\nOn " Ilk "ley " "Moor " baht "'at, "
  "\nbaht" "'at, " baht "'at, "
  "\nOn " Ilk "ley " "Moor " "with " Mar "y " "Jane, "
  "\nMm " 
  "\nMar" "y " "Jane "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at, "
  
  "\nThou'll " sure "ly " "catch " "thy " "death " "of " "cold, " 
  "\non " Ilk "ley "  "Moor "  baht "'at "
  "\nThou'll " sure "ly " "catch " "thy " "death " "of " "cold, " 
  "\nThou'll " sure "ly " "catch " "thy " "death " "of " "cold, " 
  "\non " Ilk "ley "  "Moor " baht "'at. " 
  "\non " Ilk "ley "  "Moor " \nom baht "'at. " "" 

  "\nThen " \yesm "we " "shall " "have " "to " bur "y " "thee " 
  "\nWe'll " bur "y " "thee " "on " Ilk "ley " "Moor " \nom with "out " \yesm "your " "hat. "
  "\nThen " "we " "shall " "have " "to " bur "y " "thee, " 
  "\nThen " "we " "shall " "have " "to " bur "y " "thee " 
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at. "

  "\nThen " "worms " "will " "come " "and " "et " "thee " "up "
  "\non " Ilk "ley " "Moor " baht "'at, " 
  "\nThen " "worms " "will " "come " "and " "et " "thee " "up "
  "\non " Ilk "ley " "Moor "  baht "'at, " baht "'at, "
  "\nThen " "ducks " "will " "come " "and " "et " "up " "worms "
  "\non " Ilk "ley " "Moor "  baht "'at, " 
  "\nWorms " "will " "et " "thee " "up, "
  "\nDucks " "will " "et " "up " \nom "worms, "
  "\nThen " \yesm "we'll " "come " "and " "et " "up " "ducks, " "mm, " 

  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back, "
  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back, " 
  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back " 
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at. "  ""
}

bass = \relative {
  \global
  R1*10
  a2^\mf e4. fis8 % 4a+
  e4 d cis b
  a1(
  ais1)
  r2 b % 4b
  e4 r r2
  R1
  R1
  a2-> gis->
  fis2-> e4-> r % 5a
  d1
  dis2 b
  e2 d
  cis2 b
  a4 r r2 % 5b
  r2 r4 e'
  a4. 8 4 e
  a4 r r2
  R1
  R1 % 6a
  r4 e cis e
  a,4 r r2
  R1
  R1
  R1 % 6b
  r2 e'^\mp
  cis'2 2
  ais2 4 r
  r4 b2->^\mf 4 % 7a
  e,4-> r r2
  R1*3
  R1 % 7b
  d1(
  dis4) r r2
  e2 d
  cis2 b
  a4. 8 4 <e e'> % 8a
  <a a'>4 r r e'
  a4. 8 4 e
  a4 r r a
  d,2 2
  e2 2 % 8b
  a,4 r r2
  R1
  gis'2^\mf e4. fis8
  e4 d cis b
  a1~ % 9a
  a8 r r4 e'2^\mp
  a4(gis) fis(e)
  fis4(e) d(cis)
  cis1( % 9b
  b4) r r2
  e2^\mf 4. fis8
  gis4 d' cis b
  a1^\> ~
  a2\! r % 10a
  d,2 4. 8
  dis4 4 b b
  e1~
  e2 r
  R1 % 10b
  r2 r4 e^\mf
  a4. 8 4 e
  a4 r r a
  b4(a) gis(fis)
  e2 2 % 11a
  a1~
  \slurDashed a1( \key d \major
  d,2) \slurSolid fis4. gis8
  a4 ais b ais
  b1~ % 11b
  b8 r r4 r a^\mf
  a4-. 4-. 4-. r8 8-.
  b4-. 4-. 4-. r8 8(
  gis4-.) r gis-. r
  a4 r <a, a'>2 % 12a
  a'2^\mf 4. gis8
  g4 a, b cis
  d1~
  d8 r r4 r2
  g2 4. 8 % 12b
  gis4 4 e e
  a1~
  a8 r r4 r a
  d,4. 8 4 a % 13a
  d4 r r a'
  d,4. 8 4 a
  e'4 r r e
  e4(fis) g(gis)
  a2 a, % 13b
  d1~
  d8 r r4 r2 \key f \major
  d2\omit\p^\markup{\dynamic p \italic legato} f4. 8
  g4 4 a a
  d,4 r r2 % 14a
  R1
  r2 r4 a'
  d c bes a
  a1->(
  g2) r % 14b
  a2^\markup\italic staccato 4. 8
  a4^\< a cis cis\!
  d4 r r2
  r2 r4e,\omit\p^\markup{\dynamic p \italic legato}
  e2 2
  a4(g) f(e) % 15a
  d4 r a2->^\f \glissando
  d4-> r r2
  g4^\markup\italic staccato r g4. a8
  bes4 4 g g
  a2.-- r4 % 15b
  r2 r4 f^\markup\italic legato
  g2 2
  a,2 b4(cis)
  e1~
  e8 r r4 r2
  g4.\omit\p^\markup{\dynamic p \italic staccato} 8 4^\< 4 % 16a
  a4\! r r2
  a4.^\< 8 4 4\!
  bes1(
  e,2) 2
  a4 g f e % 16b
  d4 r a2(
  d2\fermata) r \key d \major
  R1
  R1
  d'2 a4. b8 % 17a
  a4 g fis e
  d4 r r2
  R1
  R1
  R1 % 17b
  a'2 4. gis8
  g4 a, b cis
  d1~
  d2 r
  g2 4. 8 % 18a
  gis4 4 e e
  a1~
  a2 r4 a
  d,4. 8 4 a
  d4 r r a % 18b
  d4. 8 4 a
  d4 r r d
  g2 2
  a2 2
  b1( % 19a
  a4) r g(fis)
  e1
  g1
  a1
  <a, a'>1 % 19b
  d1~
  d1~
  d1\glissando
  d'4 r r2
  \bar "|."
}

wordsBass = \lyricmode {
  Where hast thou been since I saw thee?
  Baht -- 'at,
  Where hast thou been,
  Where hast thou been since I saw thee? __
  On Ilk -- ley Moor baht -- 'at,
  baht -- 'at, baht -- 'at,
  On Ilk -- ley Moor with Mar -- y Jane,
  Mm __
  Mar -- y Jane
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at,
  
  Thou'll sure -- ly catch thy death of cold, __
  on Ilk -- ley __ Moor __ baht -- 'at
  Thou'll sure -- ly catch thy death of cold, __
  Thou'll sure -- ly catch thy death of cold, __
  on Ilk -- ley __ Moor baht -- 'at. __
  on Ilk -- ley __ Moor \nom baht -- 'at. _ __

  Then \yesm we shall have to bur -- y thee __
  We'll bur -- y thee on Ilk -- ley Moor \nom with -- out \yesm your hat.
  Yes, then we shall have to bur -- y thee, __
  Then we shall have to bur -- y thee __
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at.

  Then worms will come and et thee up
  on Ilk -- ley Moor baht -- 'at, __
  Then worms will come and et thee up
  on Ilk -- ley Moor __ baht -- 'at, baht -- 'at,
  Then ducks will come and et up worms
  on Ilk -- ley Moor __ baht -- 'at, __
  Worms will et thee up,
  Ducks will et up \nom worms,
  Then \yesm we'll come and et up ducks, mm, __

  Then we shall have our loved ones back,
  Then we shall have our loved ones back, __
  Then we shall have our loved ones back __
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley Moor baht -- 'at,
  on Ilk -- ley __ Moor baht -- 'at,
  on Ilk -- ley  Moor baht -- 'at. __ _
}

wordsBassMidi = \lyricmode {
  "Where " "hast " "thou " "been " "since " "I " "saw " "thee? "
  "\nBaht" "'at, "
  "\nWhere " "hast " "thou " "been, "
  "\nWhere " "hast " "thou " "been " "since " "I " "saw " "thee? " 
  "\nOn " Ilk "ley " "Moor " baht "'at, "
  "\nbaht" "'at, " baht "'at, "
  "\nOn " Ilk "ley " "Moor " "with " Mar "y " "Jane, "
  "\nMm " 
  "\nMar" "y " "Jane "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at, "
  
  "\nThou'll " sure "ly " "catch " "thy " "death " "of " "cold, " 
  "\non " Ilk "ley "  "Moor "  baht "'at "
  "\nThou'll " sure "ly " "catch " "thy " "death " "of " "cold, " 
  "\nThou'll " sure "ly " "catch " "thy " "death " "of " "cold, " 
  "\non " Ilk "ley "  "Moor " baht "'at. " 
  "\non " Ilk "ley "  "Moor " \nom baht "'at. " "" 

  "\nThen " \yesm "we " "shall " "have " "to " bur "y " "thee " 
  "\nWe'll " bur "y " "thee " "on " Ilk "ley " "Moor " \nom with "out " \yesm "your " "hat. "
  "\nYes, " "then " "we " "shall " "have " "to " bur "y " "thee, " 
  "\nThen " "we " "shall " "have " "to " bur "y " "thee " 
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at. "

  "\nThen " "worms " "will " "come " "and " "et " "thee " "up "
  "\non " Ilk "ley " "Moor " baht "'at, " 
  "\nThen " "worms " "will " "come " "and " "et " "thee " "up "
  "\non " Ilk "ley " "Moor "  baht "'at, " baht "'at, "
  "\nThen " "ducks " "will " "come " "and " "et " "up " "worms "
  "\non " Ilk "ley " "Moor "  baht "'at, " 
  "\nWorms " "will " "et " "thee " "up, "
  "\nDucks " "will " "et " "up " \nom "worms, "
  "\nThen " \yesm "we'll " "come " "and " "et " "up " "ducks, " "mm, " 

  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back, "
  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back, " 
  "\nThen " "we " "shall " "have " "our " "loved " "ones " "back " 
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley " "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at, "
  "\non " Ilk "ley "  "Moor " baht "'at. "  ""
}

pianoRHone = \relative {
  \global \oneVoice
  R1
  R1
  d'''2-> a4. b8
  a4 gis fis e
  e'2-> b4. cis8
  b4 a gis fis % 3b
  e4 8(fis gis4) 8( a
  b4) 8(cis d e fis gis) \bar "||"
  \voiceTwo a8^.^> s2..
  \oneVoice r4 <b,,, d e> r q % 4a
  r4 <a cis e> r q
  r4 <b d e> r q
  r4 <cis e> r q
  r4 <cis e fis> r q
  r4 <a d fis> r q % 4b
  r4 <b d e> r q
  r4 q r q
  r4 q r q
  r4 <a cis e> r q
  r4 q r q % 5a
  r4 <a b d fis>2 4
  r4 <a b dis fis> r q
  r4 <b d e> r q
  r4 q r q
  r4 <a cis e> r <b cis e> % 5b
  r4 <e e'>(a)-> r
  r4 <a, cis e> r <b cis e>
  r4 <a' a'>4(cis->) r
  d4 cis b a
  e'4 d cis b % 6a
  a4 r r2
  r4 e'8(fis gis a b bis)
  cis2 e8->(cis a e)
  e'2 d8->(d b e,)
  cis'4 8 b a4 cis % 6b
  d8 cis b a gis fis e d
  cis1
  cis1
  r4 <fis, a d>2->(b4) % 7a
  <gis b e>4-> r r2
  r4 <b, d e> r q
  r4 q r q
  r4 <a cis e> r q
  r4 q r q % 7b
  r4 <a b d fis>2-> 4
  r4 <a b dis fis> r q
  r4 <b d e> r q
  r4 q r q
  r4 <a cis e> r <b cis e> % 8a
  r4 <e e'>(a->) r
  r4 <a, cis e> r <b cis e>
  r4 <a' a'>(cis->) r
  <d, d'>1
  e'4(d cis b) % 8b
  a4 r e2
  a4 r <d e>2->
  r4 e'8(fis e4) r
  r4 e8(fis e4) r
  cis,2(e % 9a
  d2 b)
  cis1
  cis1
  d4(fis,) cis'(fis,) % 9b
  b4 e,8 fis fis a b cis
  d1
  r4 e,8 fis gis a \tuplet 3/2 {b cis d}
  e1~
  e1 % 10a
  <d, fis b>4 r r2
  \voiceOne <dis gis>4-> r r2
  e'2 d
  cis2 b
  a1 % 10b
  \oneVoice r4 <e e'>-> a-> r
  cis1
  r4 <a a'>-> cis-> r
  r4 <d, fis b> r q
  r4 <cis e a> r <d e gis> % 11a
  a'4 e cis e
  a,4 r <a' cis g'>2-> \key d \major
  <a d fis>1
  <g cis e>1
  \acciaccatura d'8 d'2-> a4. d8 % 11b
  a4 g fis e
  d1
  dis1
  e4 8(fis) g4 e
  a1\trill % 12a
  a8 r r4 r2
  r4 <e, g a> r q
  r4 <d fis a> r q
  r4 q r q
  r4 <b d e> r q % 12b
  r4 q r q
  r4 <a cis e> r q
  r4 q r q
  d4 r r2 % 13a
  r4 a''(fis) a
  <fis d'>4-> r r2
  r4 d'(a) d
  <b d g>4 fis' e d
  <a d fis>2 <g cis e> % 13b
  d'4 a fis a
  d,8-> r r4 r2 \key f \major
  <f, d'>1^\markup "Freely—a little slower"
  a4^(g) f e
  d2 a4-> 4-> % 14a
  d4-> r r2
  r2 <f' a>4(<d f>)
  r2 <f bes>4(<d f>)
  r2 <bes g'>4(<d f>
  <cis e>1) % 14b
  R1*4
  <bes, d e>1
  <cis e a>1 % 15a
  d4 r a2\glissando
  d4 r r2
  <d e bes'>1~
  q1
  \voiceOne e'2 d % 15b
  c2 b
  \oneVoice <d, e>1
  <cis e a>1
  <d f a>1~
  q8 r r4 r2
  <e bes'>4-. r r2 % 16a
  <e a>4-. r r2
  <e a cis>1
  <d f bes d>1\arpeggio
  <b d e>1
  a2 b4 cis % 16b
  d4 r a2(
  d4\fermata) a'8 b cis d e eis \key d \major
  fis2^\markup\italic "a tempo" a8->(fis) d a
  g'2 a8->(g) e a,
  fis'4 8(e) d4 <fis a>-> % 17a
  b8->(a g fis e d cis b
  a2.) d4(
  fis2 dis
  e1)
  a,4-. r a'2\trill % 17b
  r4 <e, g a> r q
  r4 q r q
  r4 <d fis a> r q
  r4 q r q
  <b' e>4-> r r2 % 18a
  <gis cis>4-> r r2
  \voiceOne a2-> cis->
  e2-> a->
  \oneVoice r4 <d,, fis a> r <e fis a>
  r4 <a a'>4(d->) r % 18b
  r4 <d, fis a> r <e fis a>
  r4 <d' d'>4(fis->) r
  \voiceOne g4 fis e d
  \oneVoice r4 <a d fis> r <g cis e>
  r4 fis <b d> fis % 19a
  r4 <g cis e> r <a d fis>
  r4 <b d g>(<g b d>) <b d g>4-.
  r4 <d g b>(<b d g>) <d g b>-.
  r4 <fis a d>(<d a'>) <fis a d>-.
  r4 <a cis e>(<g a cis>) <a cis e>-. % 19b
  <d, fis a d>2 a'4. b8
  a4 g fis e
  d8 e fis g a b \tuplet 3/2 {cis d e}
  <d fis a>2\fermata \glissando d,,4-> r
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  R1*8
  \partCombineApart r4 \voiceOne <cis' e> r q % 3b+++
  s1*51
  \voiceTwo r4 a' e a % 9a++
  r4 fis e fis
  s1*2
  r4 <gis b> r q % 9b++
  s1
  r4 <a cis> r q
  r4 q r q % 10a
  s1
  s1
  r4 <gis b> r q
  r4 <e gis> r <d gis>
  r4 <cis e> r q % 10b
  s1
  r4 <e a> r q
  s1*30
  <bes d>2 cis % 13b+4
  s1*16
  <f a>1~ % 15b
  q1
  s1*26
  r4 g r a % 18a++
  r4 a r <g a>
  s1*4
  b1 % 18b+++
  s1*11
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1*103
  s1\p % 13b+++
  s1*9
  s2 s\mf % 14b+++
  s1
  s1\p
  s1 % 15a
  s2 s\mf
  s1
  s1\p
  s1*9
  s1\< % 16a+++
  s1\mf\>
  s1\p
  s1 % 16b
  s1
  s4 s2.\mf
  s1*32
}

pianoLHone = \relative {
  \global \clef treble
  a''2-> e4. fis8
  e4 d cis b
  a1~
  a1~
  <a d>1~
  q1 \clef bass % 3b
  e4 8(dis d4) 8(cis
  b4) 8(a gis e fis gis)
  a2 e
  b2 e % 4a
  a,2 e
  b'2 e
  a2 a,
  ais'2 ais,
  b2 b, | e e' | e, e' | e, fis4 gis | a2 gis' % 4b
  fis2 e | d1 | dis2 b | e d | cis b % 5a
  a4 r e' r | a4 r r e | a, r e' r | a r r e | \voiceOne r <fis a b> r q
  r2 <b d> | \oneVoice a4 r e2 | a,4 r e2-> | a4 <cis e> e q | b' <d e> e, q % 6a
  a4 <cis e> e, q | b' <d e> e, q | a <cis e> e, q | ais q fis q
  b2 b,4 r | e r e, r | e r e' r | e, d' cis b | a2 gis' % 7a
  fis2 e | d1 | dis2 b | e d | cis b
  a4 r e' r | a r r e | a, r e' r | a r r e | \voiceOne r <fis a b> r q % 8a
  r2 <b d> | \oneVoice a4 r e2 | a,4 r <d' e>2-> | a4 <cis e> e, q | b' <d e> e, q
  a4 <cis e> e, q | b' <d e> e, q | a2(a,4) r | ais'2(ais,4) r % 9a
  b'2 b, | e e, | e' e, | e'4 d cis b | a2 gis'
  fis2 e | d4-> r r2 | <b a>4-> r r2 | e2 d' | cis b % 10a
  a2 e | a,4 r r e' | a2 e | a,4 r r e' | d2 d,
  e'2 e, | a e' | \parenthesize a4 r a,2 \key d \major | d4 a' a, a' | e a a, a' % 11a
  d,4 a' a, a' | e a a, a' | d, a' a, a' | dis, a' b, a' | e b' b, b'
  a,4 a' a, a' | a,8 r r4 a'4.( gis8 | g4) a, b cis | d2 d, | d' d, % 12a
  g2 g | gis e | a g' | fis e
  d4 r r2 \clef treble | r4 a''(fis) a | <d, a'>4-> r r2 \clef bass | r4 d(a) d | e, fis g gis % 13a
  a4 a, a' a, | d a fis a | d,8-> r r4 r2 \key f \major | <d' a'>1 | <g, f'>2 <a g'>
  d2 a4-> a-> | d-> r r2 \clef treble | \voiceOne r4 a''2. | r4 f2. | r4 d2. % 14a
  \oneVoice <a e'>1 \clef bass | R1 | R1 | r2 <a, a'>4-> q-> | <d, d'>-> r r2 | <g g'>1
  <a g'>1 | d4 r a2 \glissando | d4 r r2 | <g, g'>1~ | q % 15a
  <d a' f'>1~ | q | <g' bes> | a,2 b4 cis | d1( | d,8) r r4 r2
  <g' d'>4-. r r2 | <a cis>4-. r r2 | \voiceOne a2 g | \oneVoice <bes, f' bes>1\arpeggio | <g g'> % 16a
  a2 b4 cis | d4 r a2( | d4\fermata) r r2 \key d \major | d4_\markup\italic staccato <fis a> a, q | e' <g a> a, q
  d4 <fis a> a, q | e' <g a> a, q | d <fis a> a, q | dis <a' b> b, q | e4 g(<b d> g) % 17a
  a4-. r a,2-> | a' a, | a' b,4 cis | d2 cis' | b2 a
  <g d'>4-> r r2 | <gis d'>4-> r r2 | \voiceOne r4 cis r cis | r cis r cis | \oneVoice d,2 a' % 18a
  d2. a4 | d,2 a' | d2. a4 | g1 | a2 a,
  <b b'>1 | <a a'>2 <g g'>4 <fis fis'> | <e e'>1 | <g g'> | <a a'>-> % 19a
  q1-> | <d d'>2 a'4. b8 | a4 g fis e | d8 e fis g a b \tuplet 3/2 {cis d e} | <d fis a>2\fermata \glissando <d,, d'>4-> r
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s1*28
  d4 r r2 % 5b+4
  e1 % 6a
  s1*22
  d4 r r2 % 8a+4
  e1 % 9a
  s1*54
  d'1 % 14a++
  bes1
  g1
  s1*19
  a,1 % 16a++
  s1*19
  a'2-> g-> % 18a++
  fis2-> e->
  s1*16
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"baritone Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
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
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
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
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"baritone Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
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
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
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
  \bookOutputSuffix "midi-solo"
  \score {
%   \articulate
    <<
      <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"baritone Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSoloMidi
          >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
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
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
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
  \bookOutputSuffix "midi-women"
  \score {
%   \articulate
    <<
      <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"baritone Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
          >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
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
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
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
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"baritone Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
          >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
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
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
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
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"baritone Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
          >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
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
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
