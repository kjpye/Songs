\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Children, Go Where I Send Thee"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional Spiritual"
  arranger    = "Arr. Robert de Cormier"
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

global = {
  \key e \major
  \time 4/4
  \partial 4
}

drumPitchNames.cc = #'crashcymbal
#(define mystyle
  '((crashcymbal cross   #f  5)
    (bass        default #f -1)
  ))

midiDrumPitches.bass = des

DrumTrack = \drummode {
}

TempoTrack = {
  \tempo 4=104
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s4 s1*2
  \mark \markup { \box "2b" }    s1*3
  \mark \markup { \box "2c" }    s1*3
  \mark \markup { \box "3a" }    s1*3
  \mark \markup { \box "3b" }    s1*3
  \mark \markup { \box "3c" }    s1*3
  \mark \markup { \box "3d" }    s1*3
  \mark \markup { \box "4a" }    s1*2
  \mark \markup { \box "4b" }    s1*3
  \mark \markup { \box "4c" }    s1*3
  \mark \markup { \box "4d" }    s1*3
  \mark \markup { \box "5a" }    s1*3
  \mark \markup { \box "5b" }    s1*3
  \mark \markup { \box "5c" }    s1*3
  \mark \markup { \box "5d" }    s1*3
  \mark \markup { \box "6a" }    s1*3
  \mark \markup { \box "6b" }    s1*3
  \mark \markup { \box "6c" }    s1*2
  \mark \markup { \box "6d" }    s1*2
  \mark \markup { \box "7a" }    s1*3
  \mark \markup { \box "7b" }    s1*3
  \mark \markup { \box "7c" }    s1*2
  \mark \markup { \box "7d" }    s1*2
  \mark \markup { \box "8a" }    s1*3
  \mark \markup { \box "8b" }    s1*3
  \mark \markup { \box "8c" }    s1*3
  \mark \markup { \box "8d" }    s1*2
  \mark \markup { \box "9a" }    s1*2
  \mark \markup { \box "9b" }    s1*2
  \mark \markup { \box "9c" }    s1*3
  \mark \markup { \box "9d" }    s1*3
  \mark \markup { \box "10a" }    s1*2
  \mark \markup { \box "10b" }    s1*2
  \mark \markup { \box "10c" }    s1*2
  \mark \markup { \box "10d" }    s1*2
  \mark \markup { \box "11a" }    s1*3
  \mark \markup { \box "11b" }    s1*3
  \mark \markup { \box "11c" }    s1*3
  \mark \markup { \box "11d" }    s1*2
  \mark \markup { \box "12a" }    s1*2
  \mark \markup { \box "12b" }    s1*2
  \mark \markup { \box "12c" }    s1*3
  \mark \markup { \box "12d" }    s1*4
}

ChordTrack = \chordmode {
}

solo = \relative {
  \global
  e'8^\f^\markup\italic "Solo I (Male)" gis
  b4\fermata a16 gis8. a8 b4.\fermata
  r2\fermata r4 r8 fisis8\fermata^\mf
  gis8 e16 16 8 8 8 8 gis4 % 2b
  gis8 e16 16 16 16 16 16 r8 e gis8 e16 gis
  b2 a
  R1 % 2c
  r4 b r cis
  r2 r4^\markup\italic "Solo 2 (Female)" e,8 gis \bar "||"
  b4 a8 gis a b4. % 3a
  R1
  gis8 e16 16 8 8 8 8 gis4
  gis8 e e e r e gis4 % 3b
  gis8^\markup\italic "Solo 1" e16 16 16 16 16 16 r8 e gis e16 gis
  b2 cis
  R1 % 3c
  R1
  r2 r4^\markup\italic "Solo 3 (Male)" b8 8 \bar "||"
  b4 a8 gis a b4. % 3d
  R1
  gis8 e16 16 8 8 8 8 gis4
  gis8 e16 16 8 8 r e gis4 % 4a
  gis8^\markup\italic "Solo 2" e8 8 8 r e gis4
  gis8^\markup\italic "Solo 1" e16 16 16 16 16 16 r8 e gis e16 gis % 4b
  b2 cis
  r2 r4 e,8^\markup\italic "Solo 3 (Female)" gis \bar "||"
  b4 a8 gis a b4. % 4c
  R1
  gis8 e16 16 8 8 8 8 gis4
  gis8 e16 16 8 8 r2 % 4d
  b'8^\markup\italic "Solo 3" gis16 16 8 8 r2
  e'8^\markup\italic "Solo 2" b8 8 8 r2
  gis8^\markup\italic "Solo 1" e16 16 16 16 16 16 r4 r8 e16 gis % 5a
  b2 cis
  r2 r4 e8^\markup\italic "Solo 5 (Male)" e \bar "||"
  e4 cis8 b cis e4. % 5b
  R1
  gis,8 e16 16 8 8 8 gis b4
  r2 cis8.^\f 16 b4 % 5c
  r2 cis16^\mf^\markup\italic "Solo 4" 8 16 b4
  r2 r8 cis^\mp^\markup\italic "Solo 3" b4
  r2 r8 cis^\p^\markup\italic "Solo 2" b4 % 5d
  r2 r8 cis8^\pp^\markup\italic "Solo 1" b4
  r4 e^\mf r e
  R1 % 6a
  R1
  r2 r4 b8^\mf^\markup\italic "Solo 6 (Female)" b \bar "||"
  b4 a8 gis a b4. % 6b
  r2 r4 r8 gis~
  gis8 e16 16 8 8 8 8 gis4
  r8 e16 16 8 8 16 16 8 gis4 % 6c
  r8 e16^\markup\italic "Solo 5" 16 8 8 fisis8. 16 gis4
  r8 e16^\markup\italic "Solo 4" 16 8 8 b'16 8 16 e,4 % 6d
  r8 b'16^\markup\italic "Solo 3" 16 8 8 r cis e,4
  r8 b'^\markup\italic "Solo 2" b b r e e,4 % 7a
  r8 e16^\markup\italic "Solo 1" 16 16 16 16 16 r4 r8 e16 gis
  b2 cis
  r2 r4 e8^\markup\italic "Solo 7 (Male)" e \bar "||" % 7b
  e4 cis8 b cis e4.
  R1
  gis,8 e16 16 8 8 8 8 gis4 % 7c
  gis8 e16 16 8 8 r2
  gis8^\markup\italic "Solo 6" e16 16 8 8 r2 % 7d
  gis8^\markup\italic "Solo 5" e16 16 8 8 r2
  gis8^\markup\italic "Solo 4" e16 16 8 8 r2 % 8a
  gis8^\markup\italic "Solo 3" e16 16 8 8 r2
  gis8^\markup\italic "Solo 2" e8 8 8 r2
  gis8^\markup\italic "Solo 1" e16 16 16 16 16 16 r4 r8 e16 gis % 8b
  b2 cis
  r2 r4 e8^\markup\italic "Solo 8 (Female)" 8 \bar "||"
  e4 cis8 b cis e4. % 8c
  R1
  gis,8 e16 16 8 8 8 8 gis4
  gis8 e16 16 8 8 r2 % 8d
  gis8^\markup\italic "Solo 7" e16 16 8 8 r2
  gis8^\markup\italic "Solo 6" e16 16 8 8 r2 % 9a
  gis8^\markup\italic "Solo 5" e16 16 8 8 r2
  gis8^\markup\italic "Solo 4" e16 16 8 8 r2 % 9b
  gis8^\markup\italic "Solo 3" e16 16 8 8 r2
  gis8^\markup\italic "Solo 2" e8 8 8 r2 % 9c
  gis8^\markup\italic "Solo 1" e16 16 16 16 16 16 r4 r8 e16 gis
  b2 cis
  r2 r4 b8^\markup\italic "Solo 9 (Male)" 8 \bar "||" % 9d
  b4 a8 gis a b4.
  R1
  gis8 e16 16 8 8 8 8 gis4 % 10a
  r8 e16 16 8 8 8 8 gis4
  r8 e16^\markup\italic "Solo 8" 16 8 8 16 8 16 gis4 % 10b
  r8 e16^\markup\italic "Solo 7" 16 8 8 r16 8 16 gis4
  r8 e16^\markup\italic "Solo 6" 16 8 8 16 16 8 gis4 % 10c
  r8 e16^\markup\italic "Solo 5" 16 8 8 r16 8 16 gis4
  r8 e16^\markup\italic "Solo 4" 16 8 8 cis'16 b8 gis16 b4 % 10d
  r8 e,16^\markup\italic "Solo 3" 16 8 8 r b' e,4
  r8 e8^\markup\italic "Solo 2" 8 8 r cis' e,4 % 11a
  r8 e16^\markup\italic "Solo 1" 16 16 16 16 16 fisis8(gis) e4
  r4 e' r cis
  r2 r4 e8^\markup\italic "Solo 10 (Female)" 8 \bar "||" % 11b
  e4\fermata^\markup\bold "Slow, freely" cis8 b cis e4.\fermata
  r2\fermata r4 ais,4\fermata
  b8^\markup\italic "poco a poco accel." e,16 16 8 8 r4 r8 e'8~ % 11c
  e8 cis16 16 b8 gis r2
  gis8^\markup\italic "Solo 9" e16 16 8 8 r2
  b'8^\markup\italic "Solo 8" e,16 16 8 8 r2 % 11d
  gis8^\markup\italic "Solo 7" e16 16 8 8 r2
  gis8^\markup\italic "Solo 6" e16 16 8 8 r2 % 12a
  gis8^\markup\italic "Solo 5" e16 16 8 8 r2
  gis8^\markup\italic "Solo 4" e16 16 8 8 r2 % 12b
  gis8^\markup\italic "Solo 3" e16 16 8 8 r2
  gis8^\markup\italic "Solo 2" e8 8 8 r2 % 12c
  gis8^\markup\italic "Solo 1" e16 16 16 16 16 16 r4 8 gis
  b2 cis
  R1 % 12d
  R1\fermata^\markup\italic "molto rit."
  R1^\markup\bold Slowly
  R1\fermata
  \bar "|."
}

wordsSolo = \lyricmode {
  Chil -- dren, go where I send thee.
  Well, I'm gon -- na send thee one by one,
  One for the it -- ty bit -- ty ba -- by,
  Who was born, born, born, born,

% 3
  Chil -- dren, go where I send thee.
  I'm gon -- na send thee two by two,
  Two for Paul and Si -- las,
  One for the it -- ty bit -- ty ba -- by,
  Who was born, born,
  
  Chil -- dren, go where I send thee.
  I'm gon -- na send thee three by three,
% 4
  Three for the He -- brew child -- ren,
  Two for Paul and Si -- las,
  One for the it -- ty bit -- ty ba -- by,
  Who was born, born,

  Chil -- dren, go where I send thee.
  I'm gon -- na send thee four by four,
  Four for the four that
  Three for the He -- brew
  Two for Paul and
% 5
  One for the it -- ty bit -- ty
  Who was born, born,

  Chil -- dren, go where I send thee.
  I'm gon -- na send thee five by five,
  stayed a -- live,
  stood at the door
  chil -- dren,
  Si -- las,
  ba -- by,
  born, born,

  % 6
  Chil -- dren, go where I send thee.
  I'm gon -- na send thee six by six,
  for the six that nev -- er got fixed,
  for the five that stayed a -- live,
  for the four that stood at the door,
  for the He -- brew chil -- dren,
% 7
  for Paul and Si -- las.
  for the it -- ty bit -- ty
  Who was born, born,

  Chil -- dren, go where I send thee.
  I'm gon -- na send thee sev'n by sev'n,
  Sev'n for the sev'n that
  Six for the six that
  Five for the five that
% 8
  Four for the four that
  Three for the He -- brew
  Two for Paul and
  One for the it -- ty bit -- ty
  Who was born, born,
  
  Chil -- dren, go where I send thee.
  I'm gon -- na send thee eight by eight,
  Eight for the eight that
  Sev'n for the sev'n that
  Six for the six that
  Five for the five that
% 9
  Four for the four that
  Three for the He -- brew
  Two for Paul and
  One for the it -- ty bit -- ty
  Who was born, born,
  
  Chil -- dren, go where I send thee.
% 10
  I'm gon -- na send thee nine by nine,
  for the nine that dressed so fine,
  for the eight that stood at the gate,
  for the sev'n that went to heav'n,
  for the six that nev -- er got fixed,
  for the five that stayed a -- live,
  for the four that stood at the door,
  for the He -- brew chil -- dren,
% 11
  for Paul and Si -- las.
  for the it -- ty bit -- ty ba -- by,
  born, born,
  
  Chil -- dren, go where I send thee.
  Well, I'm gon -- na send thee
  Ten for the ten com-
  Nine for the nine that
  Eight for the eight that
  Sev'n for the sev'n that
  Six for the six that
  Five for the five that
  Four for the four that
  Three for the He -- brew
  Two for Paul and
  One for the it -- ty bit -- ty
  Who was born, born,
}

wordsSoloMidi = \lyricmode {
  "Chil" "dren, " "go " "where " "I " "send " "thee. "
  "\nWell, " "I'm " gon "na " "send " "thee " "one " "by " "one, "
  "\nOne " "for " "the " it "ty " bit "ty " ba "by, "
  "\nWho " "was " "born, " "born, " "born, " "born, "

% 3
  "\nChil" "dren, " "go " "where " "I " "send " "thee. "
  "\nI'm " gon "na " "send " "thee " "two " "by " "two, "
  "\nTwo " "for " "Paul " "and " Si "las, "
  "\nOne " "for " "the " it "ty " bit "ty " ba "by, "
  "\nWho " "was " "born, " "born, "
  
  "\nChil" "dren, " "go " "where " "I " "send " "thee. "
  "\nI'm " gon "na " "send " "thee " "three " "by " "three, "
% 4
  "\nThree " "for " "the " He "brew " child "ren, "
  "\nTwo " "for " "Paul " "and " Si "las, "
  "\nOne " "for " "the " it "ty " bit "ty " ba "by, "
  "\nWho " "was " "born, " "born, "

  "\nChil" "dren, " "go " "where " "I " "send " "thee. "
  "\nI'm " gon "na " "send " "thee " "four " "by " "four, "
  "\nFour " "for " "the " "four " "that "
  "\nThree " "for " "the " He "brew "
  "\nTwo " "for " "Paul " "and "
% 5
  "\nOne " "for " "the " it "ty " bit "ty "
  "\nWho " "was " "born, " "born, "

  "\nChil" "dren, " "go " "where " "I " "send " "thee. "
  "\nI'm " gon "na " "send " "thee " "five " "by " "five, "
  "\nstayed " a "live, "
  "\nstood " "at " "the " "door "
  "\nchil" "dren, "
  "\nSi" "las, "
  "\nba" "by, "
  "\nborn, " "born, "

  % 6
  "\nChil" "dren, " "go " "where " "I " "send " "thee. "
  "\nI'm " gon "na " "send " "thee " "six " "by " "six, "
  "\nfor " "the " "six " "that " nev "er " "got " "fixed, "
  "\nfor " "the " "five " "that " "stayed " a "live, "
  "\nfor " "the " "four " "that " "stood " "at " "the " "door, "
  "\nfor " "the " He "brew " chil "dren, "
% 7
  "\nfor " "Paul " "and " Si "las. "
  "\nfor " "the " it "ty " bit "ty "
  "\nWho " "was " "born, " "born, "

  "\nChil" "dren, " "go " "where " "I " "send " "thee. "
  "\nI'm " gon "na " "send " "thee " "sev'n " "by " "sev'n, "
  "\nSev'n " "for " "the " "sev'n " "that "
  "\nSix " "for " "the " "six " "that "
  "\nFive " "for " "the " "five " "that "
% 8
  "\nFour " "for " "the " "four " "that "
  "\nThree " "for " "the " He "brew "
  "\nTwo " "for " "Paul " "and "
  "\nOne " "for " "the " it "ty " bit "ty "
  "\nWho " "was " "born, " "born, "
  
  "\nChil" "dren, " "go " "where " "I " "send " "thee. "
  "\nI'm " gon "na " "send " "thee " "eight " "by " "eight, "
  "\nEight " "for " "the " "eight " "that "
  "\nSev'n " "for " "the " "sev'n " "that "
  "\nSix " "for " "the " "six " "that "
  "\nFive " "for " "the " "five " "that "
% 9
  "\nFour " "for " "the " "four " "that "
  "\nThree " "for " "the " He "brew "
  "\nTwo " "for " "Paul " "and "
  "\nOne " "for " "the " it "ty " bit "ty "
  "\nWho " "was " "born, " "born, "
  
  "\nChil" "dren, " "go " "where " "I " "send " "thee. "
% 10
  "\nI'm " gon "na " "send " "thee " "nine " "by " "nine, "
  "\nfor " "the " "nine " "that " "dressed " "so " "fine, "
  "\nfor " "the " "eight " "that " "stood " "at " "the " "gate, "
  "\nfor " "the " "sev'n " "that " "went " "to " "heav'n, "
  "\nfor " "the " "six " "that " nev "er " "got " "fixed, "
  "\nfor " "the " "five " "that " "stayed " a "live, "
  "\nfor " "the " "four " "that " "stood " "at " "the " "door, "
  "\nfor " "the " He "brew " chil "dren, "
% 11
  "\nfor " "Paul " "and " Si "las. "
  "\nfor " "the " it "ty " bit "ty " ba "by, "
  "\nborn, " "born, "
  
  "\nChil" "dren, " "go " "where " "I " "send " "thee. "
  "\nWell, " "I'm " gon "na " "send " "thee "
  "\nTen " "for " "the " "ten " com
  "\nNine " "for " "the " "nine " "that "
  "\nEight " "for " "the " "eight " "that "
  "\nSev'n " "for " "the " "sev'n " "that "
  "\nSix " "for " "the " "six " "that "
  "\nFive " "for " "the " "five " "that "
  "\nFour " "for " "the " "four " "that "
  "\nThree " "for " "the " He "brew "
  "\nTwo " "for " "Paul " "and "
  "\nOne " "for " "the " it "ty " bit "ty "
  "\nWho " "was " "born, " "born, "
}

soprano = \relative {
  \global
  r4
  R1\fermata
  e''4\fermata^\f^\markup Unis. b16 a8. gis8 e4.\fermata^\> ~
  e2.^\p r4 % 2b
  b'8^\mf gis16 16 16 16 16 16 r8 gis b4~
  b2 cis4 4
  b8 8 a8 16 gis~8 e^\markup Unis. gis b % 2c
  e2 cis
  b8 8 a8 16 gis~2
  R1 % 3a
  gis'4 e16 cis8. b8^\markup Unis. e,4.^\> ~
  e2. r4\!
  R1 % 3b
  b'8^\mf gis16 16 16 16 16 16 r8 gis b4~
  b2 cis4 4
  b8 8 a8 16 gis~8 e^\markup Unis. gis b % 3c
  e2 cis
  b8 8 a8 16 gis~2
  R1 % 3d
  e'4 b16^\markup Unis. a8. gis8 e4.^\> ~
  e2. r4\!
  b'8^\mf gis16 16 8 8 r gis8 b4 % 4a
  R1
  b8 gis16 16 16 16 16 16 r8 gis b4 % 4b
  r4 e r e
  b8 8 a8 16 gis16~2
  R1 % 4c
  gis'4 e16 cis8. b8^\markup Unis. e,4.^\> ~
  e2. r4\!
  r2 cis'16^\mf 8 16 b4~ % 4d
  b4 r r8cis8 b4~
  b4 r r8 cis8 b4~
  b4 r r8 cis8 b4 % 5a
  r4 e r cis
  b8 8 a8 16 gis~2
  r2 r4 r8 b,^\markup Unis. % 5b
  e4 gis16 a8. b8 e,4.^\> ~
  e2. r4\!
  e'8^\f b16 16 8 8 r2 % 5c
  e8^\mf b16 16 8 8 r2
  e8^\mp b16 16 8 8 r2
  e8^\p b8 8 8 r2 % 5d
  e8^\pp b16 16 16 16 16 16 r4 r8^\markup Unis. e,16^\mf gis
  b2 cis
  b8 8 a8 16 gis~8 e^\markup Unis. ^\< gis b % 6a
  e4 fis gis2^\f \breathe
  e8 8 dis8 16 e~2
  R1 % 6b
  e4^\mf b16^\markup Unis. a8. gis8 e4.^\> ~
  e2. r8\! ais^\mf (
  b2.^\> ) r8\! ais8^\mf ( % 6c
  b2.^\> ) r8\! ais8^\mf (
  b2.^\> ) r8\! ais8^\mf ( % 6d
  b2.^\> ) r8\! ais8^\mf (
  b2.^\> ) r8\! ais^\mf ( % 7a
  b2) fisis16^\mf^\markup Unis. (gis8.) e4
  r4 e' r cis
  b8 8 a8 16 gis~2 % 7b
  R1
  gis'4 e16 cis8. b8^\markup Unis. e,4.^\> ~
  e2. r4\! % 7c
  r2 cis'8^\mf cis b4~
  b4 r e16 16 8 8 r % 7d
  r2 cis8. 16 b4~
  b4 r fisis16 8 16 gis4~ % 8a
  gis4 r \partCombineApart r8 e'8 e4~
  e4 r r2
  r2 \partCombineAutomatic r8 cis b4 % 8b
  r4 e r cis
  b8 8 a8 16 gis~2
  r2 r4 r8 b,^\markup Unis. % 8c
  e4 gis16 a8. b8 e,4.^\> ~
  e2. r4\!
  r2 fisis16^\f gis8 b16 e,4 % 8d
  r2 cis'8^\mp cis b4^\markup Unis. ~
  b4 r fisis16^\f gis b8 e r % 9a
  r2 fisis,8.^\mf 16 gis4~
  gis4 r e16 8 16 4~ % 9b
  e4 r r8 dis8^\p e4~
  e4 r r8 dis^\pp e4 ~ % 9c
  e4 r r8 cis'^\mf b4
  r4 e r cis
  b8 8 a8 16 gis~2 % 9d
  R1
  e'4 b16^\markup Unis. a8. gis8 e4.^\> ~
  e2. r8\! ais8^\mf( % 10a
  b2.^\>) r8\! ais^\mf(
  b2.^\>) r8\! ais^\mf( % 10b
  b2.^\>) r8\! ais^\mf(
  b2.^\>) r8\! ais^\mf( % 10c
  b2.^\>) r8\! ais^\mf(
  b2.^\>) r8\! ais^\mf( % 10d
  b2.^\>) r8\! ais^\mf(
  gis2.^\>) r8\! ais^\mf( % 11a
  b2.^\>) r8\! e,16^\mf^\markup Unis. gis
  b2 cis
  b8 8 a8 16 gis~2 % 11b
  R1\fermata
  gis'4\fermata e16 cis8. b8^\markup Unis. e,4.\fermata^\> ~
  e4^\markup\italic "poco a poco accel." r\! cis'8^\mf 8 b4~ % 11c
  b4 r r16 cis8. b8 r
  r2 fisis8 gis e4~
  e4 r c16^\f^\markup Unis. 8 16 b4 % 11d
  r2 cis'8^\mp 8 b4^\markup Unis. ~
  b4 r fisis16^\f gis b8 e r % 12a
  r2 fisis,8.^\mf 16 gis4~
  gis4 r e16^\mp^\markup Unis. 8 16 4~ % 12b
  e4 r r8 dis8^\p e4
  r2 r8 dis^\p e4~ % 12c
  e4 r r8 cis'^\mf b4
  r4 e r cis
  b8 8 a8 16 gis~8 e^\markup Unis. gis^\< b % 12d
  e4^\markup\italic "molto rit." fis gis2\fermata^\f \breathe
  e8 4. dis8 cis dis4 \breathe
  e2\fermata\glissando e,8 r r4
}

wordsSopAbove = \lyricmode {
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
  _ _ _
  chil -- dren, __ ""
}

alto = \relative {
  \global
  r4
  R1\fermata
  e''4\fermata^\f b16 a8. gis8 e4.\fermata^\> ~
  e2.^\p r4 % 2b
  b'8^\mf gis16 16 16 16 16 16 r8 gis b4~
  b2 a4 4
  gis8 8 dis8 16 e~8 e^\markup Unis. gis b % 2c
  e2 a,
  gis8 8 dis8 16 e~2
  R1 % 3a
  b'4 gis16 a8. b8^\markup Unis. e,4.^\> ~
  e2. r4\!
  R1 % 3b
  b'8^\mf gis16 16 16 16 16 16 r8 gis b4~
  b2 a4 4
  gis8 8 dis8 16 e~8 e^\markup Unis. gis b % 3c
  e2 a,
  gis8 8 dis8 16 e~2
  R1 % 3d
  gis4 b16^\markup Unis. a8. gis8 e4.^\> ~
  e2. r4\!
  b'8^\mf gis16 16 8 8 r gis b4 % 4a
  R1
  b8 gis16 16 16 16 16 16 r8 gis b4 % 4b
  r4 b r a
  gis8 8 dis8 16 e~2
  R1 % 4c
  b'4 gis16 a8. b8 e,4.^\> ~
  e2. r4\!
  r2 ais16^\mf 8 16 b4~ % 4d
  b4 r r8 ais b4~
  b4 r r8 ais b4~
  b4 r r8 ais b4 % 5a
  r4 b r a
  gis8 8 dis8 16 e~2
  r2 r4 r8 b % 5b
  e4 gis16 a8. b8 e,4.^\> ~
  e2. r4\!
  b'8^\f gis16 16 8 8 r2 % 5c
  b8^\mf gis16 16 8 8 r2
  b8^\mp gis16 16 8 8 r2
  b8^\p gis8 8 8 r2 % 5d
  b8^\pp gis16 16 16 16 16 16 r4 r8 e16^\mf gis
  b2 a
  gis8 8 dis8 16 e~8 8^\< gis b % 6a
  e4 b cis2^\f \breathe
  a8 8 8 16 b~2
  R1 % 6b
  gis4^\mf b16 a8. gis8 e4.^\> ~
  e2. r8\! ais^\mf (
  gis2.^\> ) r8\! fisis8^\mf ( % 6c
  gis2.^\> ) r8\! fisis8^\mf (
  gis2.^\> ) r8\! fisis8^\mf ( % 6d
  gis2.^\> ) r8\! fisis8^\mf (
  gis2.^\> ) r8\! fisis8^\mf ( % 7a
  gis2 ) fisis16^\mf ( gis8.) e4
  r4 b' r a
  gis8 8 dis8 16 e~2 % 7b
  R1
  b'4 gis16 a8. b8 e,4.^\> ~
  e2. r4\! % 7c
  r2 ais8 8 b4~
  b4 r fisis16 16 8 gis r % 7d
  r2 ais8. 16 b4~
  b4 r e,16 8 16 4~ % 8a
  e4 r r2
  r2 r8 e8 4~
  e4 r r8 fisis8 gis4 % 8b
  r4 b r a
  gis8 8 dis8 16 e~2
  r2 r4 r8 b % 8c
  e4 gis16 a8. b8 e,4.^\> ~
  e2. r4\!
  r2 fisis16^\f gis8 b16 e,4 % 8d
  r2 ais8^\mp 8 b4~
  b4 r fisis16^\f gis b8 e, r % 9a
  r2 e8.^\mf 16 4~
  e4 r e16^\mp 8 16 4~ % 9b
  e4 r r8 dis^\p e4~
  e4 r r8 dis^\pp e4~ % 9c
  e4 r r8 fisis^\mf gis4
  r4 b r a
  gis8 8 dis8 16 e~2 % 9d
  R1
  gis4 b16 a8. gis8 e4.^\> ~
  e2. r8\! fisis8^\mf( % 10a
  gis2.^\>) r8\! fisis8^\mf(
  gis2.^\>) r8\! fisis8^\mf( % 10b
  gis2.^\>) r8\! fisis8^\mf(
  gis2.^\>) r8\! fisis8^\mf( % 10c
  gis2.^\>) r8\! fisis8^\mf(
  gis2.^\>) r8\! fisis8^\mf( % 10d
  gis2.^\>) r8\! fisis8^\mf(
  gis2.^\>) r8\! fisis8^\mf( % 11a
  gis2.^\>) r8\! e16^\mf gis
  b2 a
  gis8 8 dis8 16 e~2 % 11b
  R1\fermata
  b'4\fermata gis16 a8. b8^\markup Unis. e,4.\fermata^\> ~
  e4^\markup\italic "poco a poco accel." r\! ais8^\mf 8 b4~ % 11c
  b4 r r16 fisis8. gis8 r
  r2 e8 e cis4~
  cis4 r c16^\f 8 16 b4 % 11d
  r2 ais'8^\mp 8 b4~
  b4 r fisis16^\f gis b8 e, r % 12a
  r2 e8.^\mf 16 4~
  e4 r e16^\mp 8 16 4~ % 12b
  e4 r r8 dis8^\p e4
  r2 r8 dis^\pp e4~ % 12c
  e4 r r8 fisis8^\mf gis4
  r4 b r a
  gis8 8 dis8 16 e~8 8 gis^\< b % 12d
  e4 b cis2\fermata^\f \breathe
  a8 4. 8 8 4 \breathe
  gis2\fermata\glissando e8 r r4
}

tenor = \relative {
  \global
  r4
  R1\fermata
  e'4\fermata^\f^\markup Unis. b16 a8. gis8 e4.\fermata^\> ~
  e2.^\p r4 % 2b
  R1
  r2 e'4^\mf 4
  b8 8 8 16 e,^\markup Unis. ~8 8 gis b % 2c
  e2 2
  b8 8 8 16 e,~2
  R1 % 3a
  e'4^\markup Unis. b16 a8. gis8 e4.^\> ~
  e2. r4\!
  b'8^\mf gis8 8 8 r gis b4 % 3b
  R1
  r4 e2 4
  b8 8 8 16 e,^\markup Unis. ~8 8 gis b % 3c
  e2 2
  b8 8 8 16 e,~2
  R1 % 3d
  b'4 gis16^\markup Unis. a8. b8 e,4.^\> ~
  e2. r4\!
  R1 % 4a
  b'8^\mf gis gis gis r gis b4
  R1 % 4b
  r4 e r e
  b8 8 8 16 e,~2
  R1 % 4c
  e'4^\markup Unis. b16 a8. gis8 e4.^\> ~
  e2. r4\!
  r2 e'16^\mf 8 16 4~ % 4d
  e4 r r8 e8 4~
  e4 r r8 e8 4~
  e4r r8 e8 4 % 5a
  r4 e r e
  b8 8 8 16 e,16~2
  r2 r4 r8 b^\markup Unis. % 5b
  e4 gis16 a8. b8 e,4.^\> ~
  e2. r4\!
  fis'8^\f e16 16 8 8 r2 % 5c
  fis8^\mf e16 16 8 8 r2
  fis8^\mp e16 16 8 8 r2
  fis8^\p e8 8 8 r2 % 5d
  fis8^\pp e16 16 16 16 16 16 r4 r8^\markup Unis.  e,16^\mf gis
  b2 e
  b8 8 8 16 e,^\markup Unis. ~8 8 gis^\< b % 6a
  e4 dis e2^\f \breathe
  fis8 8 8 16 gis~2
  R1 % 6b
  b,4^\mf gis16^\markup Unis. a8. b8 e,4.^\> ~
  e2. r8\! c'^\mf (
  b2.^\>) r8\! c^\mf ( % 6c
  b2.^\>) r8\! c^\mf (
  b2.^\>) r8\! c^\mf ( % 6d
  b2.^\>) r8\! c^\mf (
  b2.^\>) r8\! c^\mf ( % 7a
  b2) fisis16^\mf^\markup Unis. (gis8.) e4
  r4 e' r e
  b8 8 8 16 e, ~2 % 7b
  R1
  e'4^\markup Unis. b16 a8. gis8 e4.^\> ~
  e2. r4\! % 7c
  r2 e'8^\mf 8 4~
  e4 r cis16 16 8 b r % 7d
  r2 e8. 16 4~
  e4 r cis16 8 16 b4~ % 8a
  b4 r \partCombineApart r8 e8 4~
  e4 r r2
  r2 \partCombineAutomatic r8 e8 4 % 8b
  r4 e r e
  b8 8 8 16 e,~2
  r2 r4 r8 b^\markup Unis. % 8c
  e4 gis16 a8. b8 e,4.^\> ~
  e2. r4\!
  r2 cis'16^\f b8 fisis16 gis4 % 8d
  r2
  e'8^\mp 8 4~
  e4 r fisis,16^\mf^\markup Unis. gis b8 e r % 9a
  r2 cis8.^\mf 16 b4~
  b4 r c16^\mp 8 16 b4~ % 9b
  b4 r r8 c^\p b4~
  b4 r r8 c^\pp b4~ % 9c
  b4 r r8 e^\mf 4
  r4 e r e
  b8 8 8 16 e,~2 % 9d
  R1
  b'4 gis16^\markup Unis. a8. b8 e,4.^\> ~
  e2. r8\! c'^\mf( % 10a
  b2.^\>) r8\! c^\mf(
  b2.^\>) r8\! c^\mf( % 10b
  b2.^\>) r8\! c^\mf(
  b2.^\>) r8\! c^\mf( % 10c
  b2.^\>) r8\! c^\mf(
  b2.^\>) r8\! c^\mf( % 10d
  b2.^\>) r8\! c^\mf(
  b2.^\>) r8\! c8^\mf( % 11a
  b2.^\>) r8\! e,16^\mf^\markup Unis. gis
  b2 e
  b8 8 8 16 e,~2 % 11b
  R1\fermata
  e'4\fermata^\markup Unis. b16 a8. gis8 e4.\fermata^\> ~
  e4^\markup\italic "poco a poco accel." r\! e'8^\mf 8 4~ % 11c
  e4 r r16 e8. 8 r
  r2 cis8 8 b4~
  b4 r c,16^\f^\markup Unis. 8 16 b4 % 11d
  r2 e'8^\mp 8 4~
  e4 r fisis,16^\f^\markup Unis. gis b8 e r % 12a
  r2 cis8.^\mf 16 b4~
  b4 r c16^\mp 8 16 b4~ % 12b
  b4 r r8 c^\p b4
  r2 r8 c^\pp b4~ % 12c
  b4 r r8 e^\mf 4
  r4 e r e
  b8 8 8 16 e,^\markup Unis. ~8 8 gis^\< b % 12d
  e4^\markup\italic "molto rit." fis e2\fermata^\f \breathe
  fis8 4. 8 8 4 \breathe
  e2\fermata\glissando e,8 r r4
}

bass = \relative {
  \global
  r4
  R1\fermata
  e'4\fermata^\f b16 a8. gis8 e4.\fermata^\> ~
  e2.^\p r4 % 2b
  R1
  r2 a4^\mf 4
  b8 8 b,8 16 e~8 8 gis b % 2c
  e2 a,
  b8 8 b,8 16 e~2
  R1 % 3a
  e'4 b16 a8. gis8 e4.^\> ~
  e2. r4\!
  b'8^\mf gis gis gis r gis b4 % 3b
  R1
  r2 a4 4
  b8 8 b,8 16 e~8 8 gis b % 3c
  e2 a,
  b8 8 b,8 16 e~2
  r2 r4 r8 b % 3d
  e4 gis16 a8. b8 e,4.^\> ~
  e2. r4\!
  R1 % 4a
  b'8^\mf gis gis gis r gis b4
  R1 % 4b
  r4 gis r a
  b8 8 b,8 16 e~2
  R1 % 4c
  e'4 b16 a8. gis8 e4.^\> ~
  e2. r4\!
  r2 fisis16 8 16 gis4~ % 4d
  gis4 r r8 fisis gis4~
  gis4 r r8 fisis gis4~
  gis4 r r8 fisis8 gis4 % 5a
  r4 gis r a
  b8 8 b,8 16 e~2
  r2 r4 r8 b % 5b
  e4 gis16 a8. b8 e,4.^\> ~
  e2. r4\!
  cis'8^\f b16 16 8 8 r2 % 5c
  cis8^\mf b16 16 8 8 r2
  cis8^\mp b16 16 8 8 r2
  cis8^\p b8 8 8 r2 % 5d
  cis8^\pp b16 16 16 16 16 16 r4 r8 e,16^\mf gis
  b2 a
  b8 8 b,8 16 e~8 e gis^\< b % 6a
  e4 b a2^\f \breathe
  b8 8 <b, b'>8^\markup div. 16 e~2
  R1 % 6b
  e4^\mf gis16 a8. b8 e,4.^\> ~
  e2. r8\! b^\mf (
  e2.^\>) r8\! b^\mf ( % 6c
  e2.^\>) r8\! b^\mf (
  e2.^\>) r8\! b^\mf ( % 6d
  e2.^\>) r8\! b^\mf (
  e2.^\>) r8\! b^\mf ( % 7a
  e2) fisis16^\mf(gis8.) e4
  r4 gis r a
  b8 8 b,8 16 e~2 % 7b
  R1
  e'4 b16 a8. gis8 e4.^\>~
  e2. r4\! % 7c
  r2 fisis8^\mf 8 gis4~
  gis4 r ais16 16 8 b r % 7d
  r2 fisis8. 16 gis4~
  gis4 r ais16 8 16 b4~ % 8a
  b4 r r2
  r2 r8 e,8 4~
  e4 r r8 ais b4 % 8b
  r4 gis r a
  b8 8 b,8 16 e~2
  r2 r4 r8 b8 % 8c
  e4 gis16 a8. b8 e,4.^\> ~
  e2. r4\!
  r2 cis'16^\f b8 fisis16 gis4 % 8d
  r2 fisis8 8 gis4~
  gis4 r fisis16^\f gis b8 e, r % 9a
  r2 ais8.^\mf 16 b4~
  b4 r fisis16^\mp 8 16 gis4~ % 9b
  gis4 r r8 fisis^\p gis4~
  gis4 r r8 fisis^\pp gis4~ % 9c
  gis4 r r8 ais^\mf b4
  r4 gis r a
  b8 8 b,8 16 e~2 % 9d
  R1
  e4 gis16 a8. b8 e,4.^\> ~
  e2. r8\! b^\mf( % 10a
  e2.^\>) r8\! b^\mf(
  e2.^\>) r8\! b^\mf( % 10b
  e2.^\>) r8\! b^\mf(
  e2.^\>) r8\! b^\mf( % 10c
  e2.^\>) r8\! b^\mf(  
  e2.^\>) r8\! b^\mf( % 10d
  e2.^\>) r8\! b^\mf(
  e2.^\>) r8\! b8^\mf( % 11a
  e2.^\>) r8\! e16^\mf gis
  b2 a
  b8 8 b,8 16 e~2 % 11b
  R1\fermata
  e'4\fermata b16 a8. gis8 e4.\fermata^\> ~
  e4 r\! fisis8^\mf 8 gis4~ % 11c
  gis4 r r16 ais8. b8 r
  r2 ais8 8 gis4~
  gis4 r c,16^\f 8 16 b4 % 11d
  r2 fisis'8^\mp 8 gis4~
  gis4 r fisis16^\f gis b8 e, r % 12a
  r2 ais8.^\mf 16 b4~
  b4 r fisis16^\mp 8 16 gis4~ % 12b
  gis4 r r8 fisis^\p gis4
  r2 r8 fisis^\pp gis4~ % 12c
  gis4 r r8 ais^\mf b4
  r4 gis r a
  b8 8 b,8 16 e~8 8 gis^\< b % 12d
  e4 b a2\fermata^\f \breathe
  b8 4. <b, b'>8 8 4 \breathe e2\fermata\glissando e,8 r r4
}

words = \lyricmode {
  \set associatedVoice = alignerS
  How shall I send thee?
  One for the it -- ty bit -- ty ba -- by, __
  Who was born in Beth -- le -- hem, __
  Said he was born, born, born in Beth -- le -- hem. __

% 3a
  How shall I send
  \set associatedVoice = alignerT
thee? __
  Two for Paul and Si --
  \set associatedVoice = alignerS
  las,
  One for the it -- ty bit -- ty ba --
  \set associatedVoice = alignerT by, __ \set associatedVoice = alignerS
  born,
  Who was born in Beth -- le -- hem, __
  Said he was born, born, born in Beth -- le --

  \set associatedVoice = alignerB
  hem. __
  Oh, how shall I send
  \set associatedVoice = alignerS
  thee? __
% 4a
  Three for the He -- brew chil --
  \set associatedVoice = alignerT
  dren,
  Two for Paul and Si --
  \set associatedVoice = alignerS
  las,
  One for the it -- ty bit -- ty ba -- by, __
  born, born, born in Beth -- le -- hem, __
  How shall I send thee? __
  stood at the door,
  chil -- dren,
  Si -- las.
% 5
  ba -- by,
  born, born, born in Beth -- le -- hem.

  Oh, how shall I send thee? __
  Five for the five that
  Four for the four that
  Three for the He -- brew
  Two for Paul and
  One for the it -- ty bit -- ty
  Who was born, born,
% 6
  born in Beth -- le -- hem,
  Said he was born, born, born,
  born in Beth -- le -- hem.

  How shall I send thee? __
  Six, __
  Five, __
  Four, __
  Three, __
  Two, __
% 7
  One, __ ba -- by,
  born, born,
  born in Beth -- le -- hem,

  How shall I send thee? __
  went to heav'n,
  nev -- er got fixed,
  stayed a -- live,
% 8
  stood at the \set associatedVoice = alignerT door,
  chil -- \set associatedVoice = alignerA dren,
  Si -- \set associatedVoice = alignerS las.
  ba -- by,
  born, born, born in Beth -- le -- hem,

  Oh, how shall I send thee? __
  stood at the gate,
  went to heav'n,
  nev -- er got fixed,
  stayed a -- live,
% 9
  stood at the door,
  chil -- dren,
  Si -- las.
  ba -- by,
  born, born, born in Beth -- le -- hem,

  How shall I send thee? __
% 10
  Nine
  Eight
  Sev'n
  Six
  Five
  Four
  Three
  Two
% 11
  One
  Who was born, born,
  born in Beth -- le -- hem,

  How shall I send thee? __
  Ten by ten, __
  -mand -- ments,
  dressed so fine,
  stood at the gate,
  went to heav'n,
% 12
  nev -- er got fixed,
  stayed a -- live,
  stood at the door,
  chil -- dren,
  Si -- las.
  ba -- by,
  born, born,
  born in Beth -- le -- hem,
  Said he was born, born, born,
  born in Be -- the -- le -- hem.
}

wordsSopMidi = \lyricmode {
  "How " "shall " "I " "send " "thee? "
  "\nOne " "for " "the " it "ty " bit "ty " ba "by, " 
  "\nWho " "was " "born " "in " Beth le "hem, " 
  "\nSaid " "he " "was " "born, " "born, " "born " "in " Beth le "hem. " 

% 3a
  "\nHow " "shall " "I " "send " "thee? " 

  "\nOne " "for " "the " it "ty " bit "ty " ba "by, "  
  "\nWho " "was " "born " "in " Beth le "hem, " 
  "\nSaid " "he " "was " "born, " "born, " "born " "in " Beth le "hem. " 
  "\nHow " "shall " "I " "send " "thee? " 
% 4a
  "\nThree " "for " "the " He "brew " chil "dren, "

  "\nOne " "for " "the " it "ty " bit "ty " ba "by, " 
  "\nborn, " "born, " "born " "in " Beth le "hem, " 
  "\nHow " "shall " "I " "send " "thee? " 
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
% 5
  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem. "

  "\nOh, " "how " "shall " "I " "send " "thee? " 
  "\nFive " "for " "the " "five " "that "
  "\nFour " "for " "the " "four " "that "
  "\nThree " "for " "the " He "brew "
  "\nTwo " "for " "Paul " "and "
  "\nOne " "for " "the " it "ty " bit "ty "
  "\nWho " "was " "born, " "born, "
% 6
  "\nborn " "in " Beth le "hem, "
  "\nSaid " "he " "was " "born, " "born, " "born, "
  "\nborn " "in " Beth le "hem. "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nSix, " 
  "\nFive, " 
  "\nFour, " 
  "\nThree, " 
  "\nTwo, " 
% 7
  "\nOne, "  ba "by, "
  "\nborn, " "born, "
  "\nborn " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nwent " "to " "heav'n, "
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
% 8
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "

  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem, "

  "\nOh, " "how " "shall " "I " "send " "thee? " 
  "\nstood " "at " "the " "gate, "
  "\nwent " "to " "heav'n, "
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
% 9
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
% 10
  "\nNine "
  "\nEight "
  "\nSev'n "
  "\nSix "
  "\nFive "
  "\nFour "
  "\nThree "
  "\nTwo "
% 11
  "\nOne "
  "\nWho " "was " "born, " "born, "
  "\nborn " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nTen " "by " "ten, " 
  "\n-mand" "ments, "
  "\ndressed " "so " "fine, "
  "\nstood " "at " "the " "gate, "
  "\nwent " "to " "heav'n, "
% 12
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
  "\nba" "by, "
  "\nborn, " "born, "
  "\nborn " "in " Beth le "hem, "
  "\nSaid " "he " "was " "born, " "born, " "born, "
  "\nborn " "in " Be the le "hem. "
}

wordsAltoMidi = \lyricmode {
  "How " "shall " "I " "send " "thee? "
  "\nOne " "for " "the " it "ty " bit "ty " ba "by, " 
  "\nWho " "was " "born " "in " Beth le "hem, " 
  "\nSaid " "he " "was " "born, " "born, " "born " "in " Beth le "hem. " 

% 3a
  "\nHow " "shall " "I " "send " "thee? " 

  "\nOne " "for " "the " it "ty " bit "ty " ba "by, "  
  "\nWho " "was " "born " "in " Beth le "hem, " 
  "\nSaid " "he " "was " "born, " "born, " "born " "in " Beth le "hem. " 
  "\nHow " "shall " "I " "send " "thee? " 
% 4a
  "\nThree " "for " "the " He "brew " chil "dren, "

  "\nOne " "for " "the " it "ty " bit "ty " ba "by, " 
  "\nborn, " "born, " "born " "in " Beth le "hem, " 
  "\nHow " "shall " "I " "send " "thee? " 
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
% 5
  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem. "

  "\nOh, " "how " "shall " "I " "send " "thee? " 
  "\nFive " "for " "the " "five " "that "
  "\nFour " "for " "the " "four " "that "
  "\nThree " "for " "the " He "brew "
  "\nTwo " "for " "Paul " "and "
  "\nOne " "for " "the " it "ty " bit "ty "
  "\nWho " "was " "born, " "born, "
% 6
  "\nborn " "in " Beth le "hem, "
  "\nSaid " "he " "was " "born, " "born, " "born, "
  "\nborn " "in " Beth le "hem. "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nSix, " 
  "\nFive, " 
  "\nFour, " 
  "\nThree, " 
  "\nTwo, " 
% 7
  "\nOne, "  ba "by, "
  "\nborn, " "born, "
  "\nborn " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nwent " "to " "heav'n, "
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
% 8
  "\nstood " "at " "the " "door, "

  "\nSi" "las. "
  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem, "

  "\nOh, " "how " "shall " "I " "send " "thee? " 
  "\nstood " "at " "the " "gate, "
  "\nwent " "to " "heav'n, "
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
% 9
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
% 10
  "\nNine "
  "\nEight "
  "\nSev'n "
  "\nSix "
  "\nFive "
  "\nFour "
  "\nThree "
  "\nTwo "
% 11
  "\nOne "
  "\nWho " "was " "born, " "born, "
  "\nborn " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nTen " "by " "ten, " 
  "\n-mand" "ments, "
  "\ndressed " "so " "fine, "
  "\nstood " "at " "the " "gate, "
  "\nwent " "to " "heav'n, "
% 12
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
  "\nba" "by, "
  "\nborn, " "born, "
  "\nborn " "in " Beth le "hem, "
  "\nSaid " "he " "was " "born, " "born, " "born, "
  "\nborn " "in " Be the le "hem. "
}

wordsTenorMidi = \lyricmode {
  "How " "shall " "I " "send " "thee? "

  "\nWho " "was " "born " "in " Beth le "hem, " 
  "\nSaid " "he " "was " "born, " "born, " "born " "in " Beth le "hem. " 

% 3a
  "\nHow " "shall " "I " "send " "thee? " 
  "\nTwo " "for " "Paul " "and " Si "las, "

  "\nborn, "
  "\nwas " "born " "in " Beth le "hem, " 
  "\nSaid " "he " "was " "born, " "born, " "born " "in " Beth le "hem. " 
  "\nHow " "shall " "I " "send " "thee? " 
% 4a
  "\nTwo " "for " "Paul " "and " Si "las, "

  "\nborn, " "born, " "born " "in " Beth le "hem, " 
  "\nHow " "shall " "I " "send " "thee? " 
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
% 5
  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem. "

  "\nOh, " "how " "shall " "I " "send " "thee? " 
  "\nFive " "for " "the " "five " "that "
  "\nFour " "for " "the " "four " "that "
  "\nThree " "for " "the " He "brew "
  "\nTwo " "for " "Paul " "and "
  "\nOne " "for " "the " it "ty " bit "ty "
  "\nWho " "was " "born, " "born, "
% 6
  "\nborn " "in " Beth le "hem, "
  "\nSaid " "he " "was " "born, " "born, " "born, "
  "\nborn " "in " Beth le "hem. "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nSix, " 
  "\nFive, " 
  "\nFour, " 
  "\nThree, " 
  "\nTwo, " 
% 7
  "\nOne, "  ba "by, "
  "\nborn, " "born, "
  "\nborn " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nwent " "to " "heav'n, "
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
% 8
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "

  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem, "

  "\nOh, " "how " "shall " "I " "send " "thee? " 
  "\nstood " "at " "the " "gate, "
  "\nwent " "to " "heav'n, "
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
% 9
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
% 10
  "\nNine "
  "\nEight "
  "\nSev'n "
  "\nSix "
  "\nFive "
  "\nFour "
  "\nThree "
  "\nTwo "
% 11
  "\nOne "
  "\nWho " "was " "born, " "born, "
  "\nborn " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nTen " "by " "ten, " 
  "\n-mand" "ments, "
  "\ndressed " "so " "fine, "
  "\nstood " "at " "the " "gate, "
  "\nwent " "to " "heav'n, "
% 12
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
  "\nba" "by, "
  "\nborn, " "born, "
  "\nborn " "in " Beth le "hem, "
  "\nSaid " "he " "was " "born, " "born, " "born, "
  "\nborn " "in " Be the le "hem. "
}

wordsBassMidi = \lyricmode {
  "How " "shall " "I " "send " "thee? "

  "\nWho " "was " "born " "in " Beth le "hem, " 
  "\nSaid " "he " "was " "born, " "born, " "born " "in " Beth le "hem. " 

% 3a
  "\nHow " "shall " "I " "send " "thee? " 
  "\nTwo " "for " "Paul " "and " Si "las, "

  "\nWho " "was " "born " "in " Beth le "hem, " 
  "\nSaid " "he " "was " "born, " "born, " "born " "in " Beth le "hem. " 
  "\nOh, " "how " "shall " "I " "send " "thee? " 
% 4a
  "\nTwo " "for " "Paul " "and " Si "las, "

  "\nborn, " "born, " "born " "in " Beth le "hem, " 
  "\nHow " "shall " "I " "send " "thee? " 
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
% 5
  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem. "

  "\nOh, " "how " "shall " "I " "send " "thee? " 
  "\nFive " "for " "the " "five " "that "
  "\nFour " "for " "the " "four " "that "
  "\nThree " "for " "the " He "brew "
  "\nTwo " "for " "Paul " "and "
  "\nOne " "for " "the " it "ty " bit "ty "
  "\nWho " "was " "born, " "born, "
% 6
  "\nborn " "in " Beth le "hem, "
  "\nSaid " "he " "was " "born, " "born, " "born, "
  "\nborn " "in " Beth le "hem. "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nSix, " 
  "\nFive, " 
  "\nFour, " 
  "\nThree, " 
  "\nTwo, " 
% 7
  "\nOne, "  ba "by, "
  "\nborn, " "born, "
  "\nborn " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nwent " "to " "heav'n, "
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
% 8
  "\nstood " "at " "the " "door, "

  "\nSi" "las. "
  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem, "

  "\nOh, " "how " "shall " "I " "send " "thee? " 
  "\nstood " "at " "the " "gate, "
  "\nwent " "to " "heav'n, "
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
% 9
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
  "\nba" "by, "
  "\nborn, " "born, " "born " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
% 10
  "\nNine "
  "\nEight "
  "\nSev'n "
  "\nSix "
  "\nFive "
  "\nFour "
  "\nThree "
  "\nTwo "
% 11
  "\nOne "
  "\nWho " "was " "born, " "born, "
  "\nborn " "in " Beth le "hem, "

  "\nHow " "shall " "I " "send " "thee? " 
  "\nTen " "by " "ten, " 
  "\n-mand" "ments, "
  "\ndressed " "so " "fine, "
  "\nstood " "at " "the " "gate, "
  "\nwent " "to " "heav'n, "
% 12
  "\nnev" "er " "got " "fixed, "
  "\nstayed " a "live, "
  "\nstood " "at " "the " "door, "
  "\nchil" "dren, "
  "\nSi" "las. "
  "\nba" "by, "
  "\nborn, " "born, "
  "\nborn " "in " Beth le "hem, "
  "\nSaid " "he " "was " "born, " "born, " "born, "
  "\nborn " "in " Be the le "hem. "
}

pianoRHone = \relative {
  \global
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  c4
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            printPartCombineTexts = ##f
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
                                % Joint tenor/bass staff
          \new Staff = men \with {
            printPartCombineTexts = ##f
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerS \words
        >>
      >>
      \new DrumStaff \with {

        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            printPartCombineTexts = ##f
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
                                % Joint tenor/bass staff
          \new Staff = men \with {
            printPartCombineTexts = ##f
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerS \words
        >>
      >>
      \new DrumStaff \with {

        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
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
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \solo
            \addlyrics \wordsSoloMidi
          >>
                                % Soprano staff
          \new Staff = soprano \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
      \new DrumStaff \with {

        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
      \new DrumStaff \with {

        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
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
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
      \new DrumStaff \with {

        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
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
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
      \new DrumStaff \with {

        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
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
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
      >>
      \new DrumStaff \with {

        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
    >>
    \midi {}
  }
}
