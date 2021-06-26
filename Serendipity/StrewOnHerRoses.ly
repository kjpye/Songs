\version "2.22.1"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Strew on Her Roses"
  subtitle    = "Four Romantic Choruses No. 2"
  subsubtitle = "Based on the poem Requiescat"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Colin Brumby"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Matthew Arnold"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

% Uncomment next line for 2 systems per page%
% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key g \major
  \time 2/2
}

TempoTrack = {
  \tempo 2=90
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \mark \markup { \circle "5a" } s1*4
    \mark \markup { \circle "5b" } s1*4
    \mark \markup { \circle "6a" } s1*4
    \mark \markup { \circle "6b" } s1*4
    \mark \markup { \circle "7a" } s1*4
    \mark \markup { \circle "7b" } s1*4
  }
}

soprano = \relative {
  \global
  \repeat volta 2 {
    R1^\markup\bold "Moderato misurata:"
    r2 b'^\p(~
    b4 a) g2~
    g4 fis e2~
    e4 fis g2 % 5b
    e4 e \slurDashed b'2(
    b4) a g2~
    g4 fis e2(~
    e2 d4) \slurSolid d % 6a
    e2. fis4
    g2. fis4
    e2.(fis4)
    dis4 4 e fis % 6b
    g2 fis
    e1~
    e4 \bar "||" \break \partial 2. d4^\markup\bold "Più animato" e fis
    g4. a8 \slurDashed fis2( % 7a
    fis4) e4^\mp^\cresc fis g8 8
    a4. d8 b2~
    b4 \slurDashed a8^\mf^\cresc (a) b4 c
    d4(b) e4( a,~ % 7b
    a4) \slurSolid a^\dim g4. c8
    fis,2. <g b>4^\markup\italic rall.
    q1\fermata^\p
  }
}

sopranoSingle = \relative {
  \global
  R1^\markup\bold "Moderato misurata:"
  r2 b'^\p(~
  b4 a) g2~
  g4 fis e2~
  e4 fis g2 % 5b
  e4 e b'2(
  b4) a g2~
  g4 fis e2(~
  e2 d4) d % 6a
  e2. fis4
  g2. fis4
  e2.(fis4)
  dis4 4 e fis % 6b
  g2 fis
  e1~
  e4 \bar "||" \break \partial 2. d4^\markup\bold "Più animato" e fis
  g4. a8 fis2( % 7a
  fis4) e4^\mp^\cresc fis g8 8
  a4. d8 b2~
  b4 a8^\mf^\cresc a b4 c
  d4(b) e4( a,~ % 7b
  a4) a^\dim g4. c8
  fis,2. <g b>4^\markup\italic rall.
  q1\fermata^\p \bar "||" \break
% Second time
  R1
  r2 b^\p(~
  b4 a) g2~
  g4 fis e2~
  e4 fis g2 % 5b
  e4 e b'2
  b4 a g2~
  g4 fis e2~
  e2 d4 d % 6a
  e2. fis4
  g2. fis4
  e2.(fis4)
  dis4 4 e fis % 6b
  g2 fis
  e1~
  e4 \bar "||" \break \partial 2. d4 e fis
  g4. a8 fis2 % 7a
  fis4 e4^\mp^\cresc fis g8 8
  a4. d8 b2~
  b4 a^\mf^\cresc b4 c
  d4 b e4 a,~ % 7b
  a4 a^\dim g4. c8
  fis,2. <g b>4^\markup\italic rall.
  q1\fermata^\p
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsSopOne = \lyricmode {
  \set stanza = "1."
  Strew __ on __ her ros -- es, ros -- es,
  And ne'er __ a spray __ of yew. __
  In qui -- et she re -- pos -- es:
  Ah! would that I did too. __

  \set stanza = "2."
  Her mirth the world re -- quir'd: __
  She bath'd it in smiles of glee. __
  \nom But her \yesm heart was tired, __ tired, __
  And now they let her be.
}

wordsSopTwo = \lyricmode {
  \set stanza = "3."
  Her __ life __ was turn -- ing, turn -- ing,
  In \nom maz -- es \yesm of heat __ and \nom sound. __ _
  But for peace her soul was \yesm yearn -- ing,
  And now peace laps her round. __

  \set stanza = "4."
  Her cab -- in'd, am -- ple \nom Spir -- it,
  It flut -- ter'd and fail'd for \yesm breath. __
  To -- night it \nom doth in -- her -- \yesm it __
  The vas -- ty halls of death.
}

wordsSopSingle = \lyricmode {
  \set stanza = "1."
  Strew __ on __ her ros -- es, ros -- es,
  And ne'er __ a spray __ of yew. __
  In qui -- et she re -- pos -- es:
  Ah! would that I did too. __

  \set stanza = "2."
  Her mirth the world re -- quir'd: __
  She bath'd it in smiles of glee. __
  But her heart was tired, __ tired, __
  And now they let her be.

  \set stanza = "3."
  Her __ life __ was turn -- ing, turn -- ing,
  In maz -- es of heat __ and sound. __
  But for peace her soul was yearn -- ing,
  And now peace laps her round. __

  \set stanza = "4."
  Her cab -- in'd, am -- ple Spir -- it,
  It flut -- ter'd and fail'd for breath. __
  To -- night it doth in -- her -- it __
  The vas -- ty halls of death.
}

wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "Strew "  "on "  "her " ros "es, " ros "es, "
  "\nAnd " "ne'er "  "a " "spray "  "of " "yew. " 
  "\nIn " qui "et " "she " re pos "es: "
  "\nAh! " "would " "that " "I " "did " "too. " 

  \set stanza = "2."
  "\nHer " "mirth " "the " "world " re "quir'd: " 
  "\nShe " "bath'd " "it " "in " "smiles " "of " "glee. " 
  "\nBut " "her " "heart " "was " "tired, "  "tired, " 
  "\nAnd " "now " "they " "let " "her " "be. "

  \set stanza = "3."
  "\nHer "  "life "  "was " turn "ing, " turn "ing, "
  "\nIn " maz "es " "of " "heat "  "and " "sound. " 
  "\nBut " "for " "peace " "her " "soul " "was " yearn "ing, "
  "\nAnd " "now " "peace " "laps " "her " "round. " 

  \set stanza = "4."
  "\nHer " cab "in'd, " am "ple " Spir "it, "
  "\nIt " flut "ter'd " "and " "fail'd " "for " "breath. " 
  "\nTo" "night " "it " "doth " in her "it " 
  "\nThe " vas "ty " "halls " "of " "death. "
}

alto = \relative {
  \global
  \repeat volta 2 {
    R1
    e'2.^\p(d4)
    c2. b4
    a2. b4
    c2 b4 4 % 5b
    \slurDashed e4(2) d4
    c2. b4
    \slurSolid a1(
    b1) % 6a
    r4 d c2~
    c4 b a2~
    a4 g fis(a)
    b2 c4 d % 6b
    e2 d
    b1~
    b4 b c d
    d4. e8 \slurDashed dis2( % 7a
    d4) b^\mp^\cresc dis e8 8
    fis4. a8 \slurSolid a4(g~
    g4) \slurDashed fis8^\mf^\cresc (8) g4 a
    a4(8 gis) \slurSolid a4(fis~ % 7b
    fis4) fis^\dim fis e
    e2(d4^\markup\italic rall. ) <e g>
    <d g>1\fermata^\p
  }
}

altoSingle = \relative {
  \global
  R1
  e'2.^\p(d4)
  c2. b4
  a2. b4
  c2 b4 4 % 5b
  e2. d4
  c2. b4
  a1(
  b1) % 6a
  r4 d c2~
  c4 b a2~
  a4 g fis(a)
  b2 c4 d % 6b
  e2 d
  b1~
  b4 b c d
  d4. e8 dis2( % 7a
  d4) b^\mp^\cresc dis e8 8
  fis4. a8 a4(g~
  g4) fis8^\mf^\cresc 8 g4 a
  a4(8 gis) a4(fis~ % 7b
  fis4) fis^\dim fis e
  e2(d4^\markup\italic rall. ) <e g>
  <d g>1\fermata^\p
% second time
  R1
  e2.^\p(d4)
  c2. b4
  a2. b4
  c2 b4 4 % 5b
  e4 2 d4
  c2. b4
  a1(
  b1) % 6a
  r4 d c2~
  c4 b a2~
  a4 g fis(a)
  b2 c4 d % 6b
  e2 d
  b1~
  b4 b c d
  d4. e8 dis2 % 7a
  d4 b^\mp^\cresc dis e8 8
  fis4. a8 a4(g~
  g4) fis4^\mf^\cresc g4 a
  a4 8(gis) a4 fis~ % 7b
  fis4 fis^\dim fis e
  e2(d4^\markup\italic rall. ) <e g>
  <d g>1\fermata^\p
}

wordsAltoOne = \lyricmode {
  \set stanza = "1."
  Strew __ on __ her ros -- es, ros -- es,
  And ne'er a spray of yew. __
  In qui -- et she re -- pos -- es:
  Would that I did too. __

  \set stanza = "2."
  Her mirth the world re -- quir'd: __
  She bath'd it in smiles of glee. __
  \nom But her \yesm heart was tired, __ tired, __
  And now they let her be.
}

wordsAltoTwo = \lyricmode {
  \set stanza = "3."
  Her __ life __ was turn -- ing, turn -- ing,
  In \nom maz -- es \yesm of heat __ and \nom sound. __ _
  \yesm For peace __ her soul __ was yearn -- ing,
  Now peace laps her round. __

  \set stanza = "4."
  Her cab -- in'd, am -- ple \nom Spir -- it,
  It flut -- ter'd and fail'd for \yesm breath. __
  To -- night it \nom doth in -- her -- \yesm it __
  The vas -- ty halls of death.
}

wordsAltoSingle = \lyricmode {
  \set stanza = "1."
  Strew __ on __ her ros -- es, ros -- es,
  And ne'er a spray of yew. __
  In qui -- et she re -- pos -- es:
  Would that I did too. __

  \set stanza = "2."
  Her mirth the world re -- quir'd: __
  She bath'd it in smiles of glee. __
  But her heart was tired, __ tired, __
  And now they let her be.

  \set stanza = "3."
  Her __ life __ was turn -- ing, turn -- ing,
  In maz -- es of heat __ and sound. __
  For peace __ her soul __ was yearn -- ing,
  Now peace laps her round. __

  \set stanza = "4."
  Her cab -- in'd, am -- ple Spir -- it,
  It flut -- ter'd and fail'd for breath. __
  To -- night it doth in -- her -- it __
  The vas -- ty halls of death.
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  "Strew "  "on "  "her " ros "es, " ros "es, "
  "\nAnd " "ne'er " "a " "spray " "of " "yew. " 
  "\nIn " qui "et " "she " re pos "es: "
  "\nWould " "that " "I " "did " "too. " 

  \set stanza = "2."
  "\nHer " "mirth " "the " "world " re "quir'd: " 
  "\nShe " "bath'd " "it " "in " "smiles " "of " "glee. " 
  "\nBut " "her " "heart " "was " "tired, "  "tired, " 
  "\nAnd " "now " "they " "let " "her " "be. "

  \set stanza = "3."
  "\nHer "  "life "  "was " turn "ing, " turn "ing, "
  "\nIn " maz "es " "of " "heat "  "and " "sound. " 
  "\nFor " "peace "  "her " "soul "  "was " yearn "ing, "
  "\nNow " "peace " "laps " "her " "round. " 

  \set stanza = "4."
  "\nHer " cab "in'd, " am "ple " Spir "it, "
  "\nIt " flut "ter'd " "and " "fail'd " "for " "breath. " 
  "\nTo" "night " "it " "doth " in her "it " 
  "\nThe " vas "ty " "halls " "of " "death. "
}

tenor = \relative {
  \global
  \repeat volta 2 {
    r2 b^\p(~
    b4 a) g2~
    g4 fis e2~
    e4 fis g2
    e4 4 b'2~ % 5b
    b4 a g2~
    g4 fis e2~
    e2. fis4
    g2(fis) % 6a
    r2 r4 d
    e2. d4
    c2. c'4
    b4 fis g a % 6b
    b2 a4(g)
    <fis a>2( <e g>~
    q4) fis g a
    b4. fis8 b2~ % 7a
    b4 g^\mp^\cresc b4 8 8
    d4. 8 2~
    d4 \slurDashed 8^\mf^\cresc (8) 4 e
    b4(d) e(dis~ % 7b
    dis4) 4^\dim a4. fis8
    \slurSolid a2(b4^\markup\italic rall. ) <a c>
    <g b>1\fermata^\p
  }
}

tenorSingle = \relative {
  \global
  r2 b^\p(~
  b4 a) g2~
  g4 fis e2~
  e4 fis g2
  e4 4 b'2~ % 5b
  b4 a g2~
  g4 fis e2~
  e2. fis4
  g2(fis) % 6a
  r2 r4 d
  e2. d4
  c2. c'4
  b4 fis g a % 6b
  b2 a4(g)
  <fis a>2( <e g>~
  q4) fis g a
  b4. fis8 b2~ % 7a
  b4 g^\mp^\cresc b4 8 8
  d4. 8 2~
  d4 8^\mf^\cresc 8 4 e
  b4(d) e(dis~ % 7b
  dis4) 4^\dim a4. fis8
  a2(b4^\markup\italic rall. ) <a c>
  <g b>1\fermata^\p
% second time
  r2 b^\p(~
  b4 a) g2~
  g4 fis e2~
  e4 fis g2
  e4 4 b'2 % 5b
  b4 a g2~
  g4 fis e2~
  e2. fis4
  g2(fis) % 6a
  r2 r4 d
  e2. d4
  c2. c'4
  b4 fis g a % 6b
  b2 a4(g)
  <fis a>2( <e g>~
  q4) fis g a
  b4. fis8 b2 % 7a
  b4 g^\mp^\cresc b4 8 8
  d4. 8 2~
  d4 4^\mf^\cresc 4 e
  b4 d e dis~ % 7b
  dis4 4^\dim a4. fis8
  a2(b4^\markup\italic rall. ) <a c>
  <g b>1\fermata^\p
}

wordsTenorOne = \lyricmode {
  \set stanza = "1."
  Strew __ on __ her ros -- es, ros -- es,
  And ne'er a spray of yew, __ of yew. __
  In qui -- et she re -- pos -- es:
  Would that I did too. __

  \set stanza = "2."
  Her mirth the world re -- quir'd: __
  She bath'd it in smiles of glee. __
  \nom But her \yesm heart was tired, __ tired, __
  And now they let her be.
}

wordsTenorTwo = \lyricmode {
  \set stanza = "3."
  Her __ life __ was turn -- ing, turn -- ing,
  In \nom maz -- es \yesm of heat __ and \nom sound, __ _ of \yesm sound.
  \yesm For peace __ her soul __ was yearn -- ing,
  Now peace laps her round. __

  \set stanza = "4."
  Her cab -- in'd, am -- ple \nom Spir -- it,
  It flut -- ter'd and fail'd for \yesm breath. __
  To -- night it \nom doth in -- her -- \yesm it __
  The vas -- ty halls of death.
}

wordsTenorSingle = \lyricmode {
  \set stanza = "1."
  Strew __ on __ her ros -- es, ros -- es,
  And ne'er a spray of yew, __ of yew. __
  In qui -- et she re -- pos -- es:
  Would that I did too. __

  \set stanza = "2."
  Her mirth the world re -- quir'd: __
  She bath'd it in smiles of glee. __
  But her heart was tired, __ tired, __
  And now they let her be.

  \set stanza = "3."
  Her __ life __ was turn -- ing, turn -- ing,
  In maz -- es of heat __ and sound, __ of sound.
  For peace __ her soul __ was yearn -- ing,
  Now peace laps her round. __

  \set stanza = "4."
  Her cab -- in'd, am -- ple Spir -- it,
  It flut -- ter'd and fail'd for breath. __
  To -- night it doth in -- her -- it __
  The vas -- ty halls of death.
}

wordsTenorMidi = \lyricmode {
  \set stanza = "1."
  "Strew "  "on "  "her " ros "es, " ros "es, "
  "\nAnd " "ne'er " "a " "spray " "of " "yew, "  "of " "yew. " 
  "\nIn " qui "et " "she " re pos "es: "
  "\nWould " "that " "I " "did " "too. " 

  \set stanza = "2."
  "\nHer " "mirth " "the " "world " re "quir'd: " 
  "\nShe " "bath'd " "it " "in " "smiles " "of " "glee. " 
  "\nBut " "her " "heart " "was " "tired, "  "tired, " 
  "\nAnd " "now " "they " "let " "her " "be. "

  \set stanza = "3."
  "\nHer "  "life "  "was " turn "ing, " turn "ing, "
  "\nIn " maz "es " "of " "heat "  "and " "sound, "  "of " "sound. "
  "\nFor " "peace "  "her " "soul "  "was " yearn "ing, "
  "\nNow " "peace " "laps " "her " "round. " 

  \set stanza = "4."
  "\nHer " cab "in'd, " am "ple " Spir "it, "
  "\nIt " flut "ter'd " "and " "fail'd " "for " "breath. " 
  "\nTo" "night " "it " "doth " in her "it " 
  "\nThe " vas "ty " "halls " "of " "death. "
}

bass = \relative {
  \global
  \repeat volta 2 {
    e2.^\p(d4)
    c2. b4
    a2. b4
    c2 a4 4
    \slurDashed e'4(2) d4 % 5b
    c2. b4
    a2. b4
    \slurSolid c1(
    b1) % 6a
    R1
    R1
    R1
    b2 4 4 % 6b
    a2 b
    <e, b'>1~
    q4 b' a d
    g,4. c8 \slurDashed b2( % 7a
    b4) e^\mp^\cresc b e8 8
    d4. fis8 g2~
    g4 d8^\mf^\cresc (8) g4 fis
    f4(e) c(b~ % 7b
    b4) 4^\dim c4. a8
    d2. 4^\markup\italic rall.
    <g, d'>1\fermata^\p
  }
}

bassSingle = \relative {
  \global
  e2.^\p(d4)
  c2. b4
  a2. b4
  c2 a4 4
  e'4(2) d4 % 5b
  c2. b4
  a2. b4
  c1(
  b1) % 6a
  R1
  R1
  R1
  b2 4 4 % 6b
  a2 b
  <e, b'>1~
  q4 b' a d
  g,4. c8 b2( % 7a
  b4) e^\mp^\cresc b e8 8
  d4. fis8 g2~
  g4 d8^\mf^\cresc 8 g4 fis
  f4(e) c(b~ % 7b
  b4) 4^\dim c4. a8
  d2. 4^\markup\italic rall.
  <g, d'>1\fermata^\p
% second time
  e'2.^\p(d4)
  c2. b4
  a2. b4
  c2 a4 4
  e'4 2 d4 % 5b
  c2. b4
  a2. b4
  c1(
  b1) % 6a
  R1
  R1
  R1
  b2 4 4 % 6b
  a2 b
  <e, b'>1~
  q4 b' a d
  g,4. c8 b2 % 7a
  b4 e^\mp^\cresc b e8 8
  d4. fis8 g2~
  g4 d4^\mf^\cresc g4 fis
  f4 e c b~ % 7b
  b4 4^\dim c4. a8
  d2. 4^\markup\italic rall.
  <g, d'>1\fermata^\p
}

wordsBassOne = \lyricmode {
  \set stanza = "1."
  Strew __ on __ her ros -- es, ros -- es,
  And ne'er a spray of yew, __ of yew. __

  Ah! would that I did too. __

  \set stanza = "2."
  Her mirth the world re -- quir'd: __
  She bath'd it in smiles of glee. __
  \nom But her \yesm heart was tired, __ tired, __
  And now they let her be.
}

wordsBassTwo = \lyricmode {
  \set stanza = "3."
  Her __ life __ was turn -- ing, turn -- ing,
  In \nom maz -- es \yesm of heat __ and \nom sound, __ and \yesm sound.

  And now peace laps her round. __

  \set stanza = "4."
  Her cab -- in'd, am -- ple \nom Spir -- it,
  It flut -- ter'd and fail'd for \yesm breath. __
  To -- night it \nom doth in -- her -- \yesm it __
  The vas -- ty halls of death.
}

wordsBassSingle = \lyricmode {
  \set stanza = "1."
  Strew __ on __ her ros -- es, ros -- es,
  And ne'er a spray of yew, __ of yew. __

  Ah! would that I did too. __

  \set stanza = "2."
  Her mirth the world re -- quir'd: __
  She bath'd it in smiles of glee. __
  But her heart was tired, __ tired, __
  And now they let her be.

  \set stanza = "3."
  Her __ life __ was turn -- ing, turn -- ing,
  In maz -- es of heat __ and sound, __ and sound.

  And now peace laps her round. __

  \set stanza = "4."
  Her cab -- in'd, am -- ple Spir -- it,
  It flut -- ter'd and fail'd for breath. __
  To -- night it doth in -- her -- it __
  The vas -- ty halls of death.
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "Strew "  "on "  "her " ros "es, " ros "es, "
  "\nAnd " "ne'er " "a " "spray " "of " "yew, "  "of " "yew. " 

  "\nAh! " "would " "that " "I " "did " "too. " 

  \set stanza = "2."
  "\nHer " "mirth " "the " "world " re "quir'd: " 
  "\nShe " "bath'd " "it " "in " "smiles " "of " "glee. " 
  "\nBut " "her " "heart " "was " "tired, "  "tired, " 
  "\nAnd " "now " "they " "let " "her " "be. "

  \set stanza = "3."
  "\nHer "  "life "  "was " turn "ing, " turn "ing, "
  "\nIn " maz "es " "of " "heat "  "and " "sound, "  "and " "sound. "

  "\nAnd " "now " "peace " "laps " "her " "round. " 

  \set stanza = "4."
  "\nHer " cab "in'd, " am "ple " Spir "it, "
  "\nIt " flut "ter'd " "and " "fail'd " "for " "breath. " 
  "\nTo" "night " "it " "doth " in her "it " 
  "\nThe " vas "ty " "halls " "of " "death. "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano" shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto" shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor" shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass" shortInstrumentName = #"B" }
          <<
            \clef "bass"
            \new Voice = "bass" \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff = lf \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix "vocal-repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano" shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto" shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor" shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass" shortInstrumentName = #"B" }
          <<
            \clef "bass"
            \new Voice = "bass" \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
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
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano" shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto" shortInstrumentName = #"A"
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor" shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass" shortInstrumentName = #"B" }
          <<
            \clef "bass"
            \new Voice = "bass" \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff = lf \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix "vocal-single"
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano" shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto" shortInstrumentName = #"A"
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor" shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass" shortInstrumentName = #"B" }
          <<
            \clef "bass"
            \new Voice = "bass" \bassSingle
            \addlyrics \wordsBassSingle
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
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano" shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto" shortInstrumentName = #"A"
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor" shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass" shortInstrumentName = #"B" }
          <<
            \clef "bass"
            \new Voice = "bass" \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff = lf \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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

  \bookOutputSuffix "vocal-singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 950\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano" shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto" shortInstrumentName = #"A"
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor" shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass" shortInstrumentName = #"B" }
          <<
            \clef "bass"
            \new Voice = "bass" \bassSingle
            \addlyrics \wordsBassSingle
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
  \bookOutputSuffix "midi-sop"
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice = "bass" \bassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice \sopranoSingle
            \new Voice \altoSingle
            \new Voice \tenorSingle
            \new Voice \bassSingle
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
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
          >>
                                % Single alto staff
          \new Staff = alto
          <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice = "bass" \bassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice \sopranoSingle
            \new Voice \altoSingle
            \new Voice \tenorSingle
            \new Voice \bassSingle
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
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
          >>
                                % Single alto staff
          \new Staff = alto
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenorSingle
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice = "bass" \bassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice \sopranoSingle
            \new Voice \altoSingle
            \new Voice \tenorSingle
            \new Voice \bassSingle
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
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
          >>
                                % Single alto staff
          \new Staff = alto
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice = "bass" \bassSingle
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice \sopranoSingle
            \new Voice \altoSingle
            \new Voice \tenorSingle
            \new Voice \bassSingle
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
    \layout {}
    \midi {}
  }
}
