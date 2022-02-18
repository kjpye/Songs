\version "2.20.2"

%\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All In The April Evening"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Hugh S. Robertson"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Katherine Tynan"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \tempo 4=69
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

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \circle "1a" }
  \mark \markup { \box "1a" } s1*4
  \mark \markup { \box "1b" } s1*4
  \mark \markup { \box "2a" } s1*5
  \mark \markup { \box "2b" } s1*5
  \mark \markup { \box "2c" } s1*5
  \mark \markup { \box "3a" } s1*5
  \mark \markup { \box "3b" } s1*4
  \mark \markup { \box "3c" } s1*4
  \mark \markup { \box "4a" } s1*4
  \mark \markup { \box "4b" } s1*4
  \mark \markup { \box "4c" } s1*4
}

soprano = \relative c'' {
  \global
  g4 g8 g bes4 g
  f4(g8 aes) g2
  bes4 bes aes bes8 c
  bes2. r8 g
  g4 g8 g bes4 g % 1b
  f4(g8 aes g2)
  f4 bes bes a8 c
  bes2. bes4
  aes4 aes8 aes g4 g % 2a
  c2(bes4 g)
  aes4 aes g bes8 g
  f1
  g4 g8 g g4 g
  g2 f4 f % 2b
  ees4 ees8 ees ees4 f
  ees2.\fermata \bar "||" aes4
  g4 bes aes8 aes ees'4
  ees2 des4 c8 c
  c4(bes) aes g % 2c
  aes2. aes4
  aes4 aes8 aes aes4 aes
  aes2 bes4 bes
  aes2 aes4 ges
  f1 % 3a
  f4 f8 f c'4 f,
  g2 f
  fis4 fis fis e8 d
  g1
  g4 g8 g d'4g, % 3b
  a2 g
  g4 fis8 e d4 a'
  g1
  g4 g8 g bes4 g % 3c
  f4 g8(aes)g2
  bes4 bes8 bes aes4 bes8(c)
  bes1
  g4 g8 g bes4 g % 4a
  f4 g8(aes) g2
  f4-> bes-> bes-> a8 c
  bes1
  aes4 aes8 aes g4 g % 4b
  c2 bes4(g)
  aes4 aes g bes8 g
  f1
  g4 g8 g g4 g8 g % 4c
  g2(f4) f
  ees4 ees8 ees ees4-> d
  ees1
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s1
  s1
  s1 % 1b
  s1
  s1\<
  s2.\! s4\p
  s1 % 2a
  s1
  s1
  s1
  s2\< s\!
  s1 % 2b
  s2\< s\!
  s2.\> s4\mf
  s1\<
  s1
  s1\> % 2c
  s2. s4\p
  s2\< s\!
  s1
  s1
  s1 % 3a
  s1
  s1
  s1
  s1
  s1 % 3b
  s1
  s1-\markup \italic {dim. e poco rall.}
  s1
  s1\mf-\markup \italic {con afflizione} % 3c
  s1\<
  s1\!
  s1
  s2\f\< s4\! s\p % 4a
  s1
  s1
  s2\<s\>
  s1\! % 4b
  s1
  s1
  s1
  s1\< % 4c
  s1\>
  s2\< s4\!-\markup ten. s-\markup dim.
}

wordsSop = \lyricmode {
  All in the Apr- il ev- 'ning,
  A- pril airs were a- broad;
  The sheep with their lit- tle lambs
  Pass'd me by on the road.
  The sheep with their lit- tle lambs
  Pass'd me by on the road,
  All in the Apr- il ev- 'ning,
  I thought on the Lamb of God.

  The lambs were wea- ry and cry- ing
  With a weak hu- man cry,
  I thought on the Lamb of God
  go- ing meek- ly to die.
  Up in the blue blue moun- tains,
  Dew- y pas- tures are sweet,
  Rest for the lit- tle bod- ies,
  Rest for the lit- tle feet.
  But for the Lamb, the Lamb of God,
  Up on the hill- top green,
  On- ly a cross, a cross of shame,
  Two stark cross- es be- tween.
  
  All in the Apr- il ev- 'ning,
  A- pril airs were a- broad;
  I saw the sheep with their lambs,
  And thought on the Lamb of God.
}

midiWordsSop = \lyricmode {
  "All " "in " "the " Apr "il " ev "'ning, "
  "\nApril " "airs " "were " a "broad; "
  "\nThe " "sheep " "with " "their " lit "tle " "lambs "
  "\nPass'd " "me " "by " "on " "the " "road. "
  "\nThe " "sheep " "with " "their " lit "tle " "lambs "
  "\nPass'd " "me " "by " "on " "the " "road, "
  "\nAll " "in " "the " Apr "il " ev "'ning, "
  "\nI " "thought " "on " "the " "Lamb " "of " "God. "

  "\nThe " "lambs " "were " wea "ry " "and " cry "ing "
  "\nWith " "a " "weak " hu "man " "cry, "
  "\nI " "thought " "on " "the " "Lamb " "of " "God "
  "\ngo" "ing " meek "ly " "to " "die. "
  "\nUp " "in " "the " "blue " "blue " moun "tains, "
  "\nDew" "y " pas "tures " "are " "sweet, "
  "\nRest " "for " "the " lit "tle " bod "ies, "
  "\nRest " "for " "the " lit "tle " "feet. "
  "\nBut " "for " "the " "Lamb, " "the " "Lamb " "of " "God, "
  "\nUp " "on " "the " hill "top " "green, "
  "\nOn" "ly " "a " "cross, " "a " "cross " "of " "shame, "
  "\nTwo " "stark " cross "es " be "tween. "
  
  "\nAll " "in " "the " Apr "il " ev "'ning, "
  "\nA" "pril " "airs " "were " a "broad; "
  "\nI " "saw " "the " "sheep " "with " "their " "lambs, "
  "\nAnd " "thought " "on " "the " "Lamb " "of " "God. "
}

alto = \relative c' {
  \global
  ees4 ees8 ees g4 ees
  d4(ees8 f) ees2
  g4 g f g8 aes
  aes4(f8 aes g4) r8 ees
  ees4 ees8 ees g4 ees % 1b
  d4(ees8 f ees4 des)
  d4 f g f8 f
  f2. f4
  ees4 ees8 ees ees4 ees % 2a
  d2(ees)
  d4 f ees g8 ees
  d1
  ees4 ees8 ees des4 des
  c2 c4 c % 2b
  bes4 aes8 bes c4 bes
  bes2.\fermata \bar "||" ees4
  ees4 ees ees8 ees c'4
  aes2 aes4 aes8 aes
  f2 ees4 ees % 2c
  ees2. ees4
  f4 f8 f ges4 ees
  f2 ges4 ees
  ees4(f) ges c,
  des1 % 3a
  c4 c8 c f4 c
  c2 c
  c4 c c c8 c
  b1
  b4 <ais cis>8 q <bes d>4 d % 3b
  d2 d4.(dis8)
  e4 d8 c b4 d
  d1
  ees4 ees8 ees g4 ees % 3c
  d4 ees8(f) ees2
  g4 g8 g f4 g8(aes)
  aes4(f8 aes g2)
  ees4 ees8 ees g4 ees % 4a
  d4 ees8(f) ees4(des)
  d4-> f-> g-> f8 f
  f1
  ees4 ees8 ees ees4 ees % 4b
  d2 ees
  d4 f ees g8 ees
  d1
  ees4 ees8 ees des4 des8 des % 4c
  c2. c4
  bes4 aes8(bes) c-> bes bes4
  bes1
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s1
  s1
  s1 % 1b
  s2 s\<
  s1\<
  s2.\! s4\p
  s1 % 2a
  s1
  s1
  s1
  s2\< s\!
  s1 % 2b
  s2\< s\!
  s2.\> s4\mf
  s1\<
  s1
  s1\> % 2c
  s2. s4\p
  s2\< s\!
  s1
  s1
  s1 % 3a
  s1
  s1
  s1
  s1
  s1 % 3b
  s2 s\<
  s1\!-\markup \italic {dim. e poco rall.}
  s1
  s1\mf % 3c
  s1\<
  s1\!
  s1
  s2\f\< s4\! s\p % 4a
  s2 s\<
  s1\!
  s2\<s\>
  s1\! % 4b
  s1
  s1
  s1
  s1\< % 4c
  s1\>
  s2\< s4\!-\markup ten. s-\markup dim.
}

wordsAlto = \lyricmode {
  All in the Apr- il ev- 'ning,
  A- pril airs were a- broad;
  The sheep with their lit- tle lambs
  Pass'd me by on the road.
  The sheep with their lit- tle lambs
  Pass'd me by on the road,
  All in the Apr- il ev- 'ning,
  I thought on the Lamb of God.

  The lambs were wea- ry and cry- ing
  With a weak hu- man cry,
  I thought on the Lamb of God
  go- ing meek- ly to die.
  Up in the blue blue moun- tains,
  Dew- y pas- tures are sweet,
  Rest for the lit- tle bod- ies,
  Rest for the lit- tle feet.
  But for the Lamb, the Lamb of God,
  Up on the hill- top green,
  On- ly a cross, a cross of shame,
  Two stark cross- es be- tween.
  
  All in the Apr- il ev- 'ning,
  A- pril airs were a- broad;
  I saw the sheep with their lambs,
  And thought on the Lamb of God.
}

midiWordsAlto = \lyricmode {
  "All " "in " "the " Apr "il " ev "'ning, "
  "\nA" "pril " "airs " "were " a "broad; "
  "\nThe " "sheep " "with " "their " lit "tle " "lambs "
  "\nPass'd " "me " "by " "on " "the " "road. "
  "\nThe " "sheep " "with " "their " lit "tle " "lambs "
  "\nPass'd " "me " "by " "on " "the " "road, "
  "\nAll " "in " "the " Apr "il " ev "'ning, "
  "\nI " "thought " "on " "the " "Lamb " "of " "God. "

  "\nThe " "lambs " "were " wea "ry " "and " cry "ing "
  "\nWith " "a " "weak " hu "man " "cry, "
  "\nI " "thought " "on " "the " "Lamb " "of " "God "
  "\ngo" "ing " meek "ly " "to " "die. "
  "\nUp " "in " "the " "blue " "blue " moun "tains, "
  "\nDew" "y " pas "tures " "are " "sweet, "
  "\nRest " "for " "the " lit "tle " bod "ies, "
  "\nRest " "for " "the " lit "tle " "feet. "
  "\nBut " "for " "the " "Lamb, " "the " "Lamb " "of " "God, "
  "\nUp " "on " "the " hill "top " "green, "
  "\nOn" "ly " "a " "cross, " "a " "cross " "of " "shame, "
  "\nTwo " "stark " cross "es " be "tween. "
  
  "\nAll " "in " "the " Apr "il " ev "'ning, "
  "\nA" "pril " "airs " "were " a "broad; "
  "\nI " "saw " "the " "sheep " "with " "their " "lambs, "
  "\nAnd " "thought " "on " "the " "Lamb " "of " "God. "
}

tenor = \relative c' {
  \global
  bes4 bes8 bes bes4 bes
  bes 2 bes
  bes4 bes bes bes8 bes
  ees4(d8 c bes4) r8 bes
  bes4 bes8 bes ees4 bes % 1b
  bes1
  bes4 d ees ees8 ees
  d2. d4
  c4 c8 c bes4 bes % 2a
  bes1
  bes4 bes bes bes8 bes
  bes1
  bes4 bes8 bes bes4 bes
  bes2 aes4 aes % 2b
  g4 f8 g aes4 aes
  g2.\fermata \bar "||" c4
  bes4 des c8 c aes'(g)
  f2 f4 ees8 ees
  ees4(des) c bes % 2c
  c2. c4
  des4 des8 des ees4 c
  des2 des4 des
  des2 bes4 aes % 3a
  aes1 a4 a8 a a4 a
  bes2 a
  a4 a a a8 a
  g1
  g4 g8 g g4 b % 3b
  c2 b
  g4 g8 g g4 c
  b1
  bes4 8 8 4 4 % 3c
  bes1
  bes4 8 8 4 4
  ees4(d8 c bes2)
  bes4 8 8 ees4 bes % 4a
  bes1
  bes4->d-> ees-> 8 8
  d1
  c4 c8 c bes4 bes % 4b
  bes2 bes
  bes4 4 4 8 8
  bes1
  bes4 8 8 4 8 8 % 4c
  bes2(aes4) aes
  g4 f8 g aes(g) aes4
  g1
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s1
  s1
  s1 % 1b
  s1
  s1\<
  s2.\! s4\p
  s1 % 2a
  s1
  s1
  s1
  s2\< s\!
  s1 % 2b
  s2\< s\!
  s2.\> s4\mf
  s1\<
  s1
  s1\> % 2c
  s2. s4\p
  s2\< s\!
  s1
  s1
  s1 % 3a
  s1
  s1
  s1
  s1
  s1 % 3b
  s1
  s1-\markup \italic {dim. e poco rall.}
  s1
  s1\mf % 3c
  s1
  s1\!
  s1
  s2\f\< s4\! s\p % 4a
  s1
  s1
  s2\<s\>
  s1\! % 4b
  s1
  s1
  s1
  s1\< % 4c
  s1\>
  s2\< s4\!-\markup ten. s-\markup dim.
}

wordsTenor = \lyricmode {
  All in the Apr- il ev- 'ning,
  A- pril airs were a- broad;
  The sheep with their lit- tle lambs
  Pass'd me by on the road.
  The sheep with their lit- tle lambs
  Pass'd me by on the road,
  All in the Apr- il ev- 'ning,
  I thought on the Lamb of God.

  The lambs were wea- ry and cry- ing
  With a weak hu- man cry,
  I thought on the Lamb of God
  go- ing meek- ly to die.
  Up in the blue blue moun- tains,
  Dew- y pas- tures are sweet,
  Rest for the lit- tle bod- ies,
  Rest for the lit- tle feet.
  But for the Lamb of God,
  Up on the hill- top green,
  On- ly a cross of shame,
  Two stark cross- es be- tween.
  
  All in the Apr- il ev- 'ning,
  A- pril airs were a- broad;
  I saw the sheep with their lambs,
  And thought on the Lamb of God.
}

midiWordsTenor = \lyricmode {
  "All " "in " "the " Apr "il " ev "'ning, "
  "\nA" "pril " "airs " "were " a "broad; "
  "\nThe " "sheep " "with " "their " lit "tle " "lambs "
  "\nPass'd " "me " "by " "on " "the " "road. "
  "\nThe " "sheep " "with " "their " lit "tle " "lambs "
  "\nPass'd " "me " "by " "on " "the " "road, "
  "\nAll " "in " "the " Apr "il " ev "'ning, "
  "\nI " "thought " "on " "the " "Lamb " "of " "God. "

  "\nThe " "lambs " "were " wea "ry " "and " cry "ing "
  "\nWith " "a " "weak " hu "man " "cry, "
  "\nI " "thought " "on " "the " "Lamb " "of " "God "
  "\ngo" "ing " meek "ly " "to " "die. "
  "\nUp " "in " "the " "blue " "blue " moun "tains, "
  "\nDew" "y " pas "tures " "are " "sweet, "
  "\nRest " "for " "the " lit "tle " bod "ies, "
  "\nRest " "for " "the " lit "tle " "feet. "
  "\nBut " "for " "the " "Lamb " "of " "God, "
  "\nUp " "on " "the " hill "top " "green, "
  "\nOn" "ly " "a " "cross " "of " "shame, "
  "\nTwo " "stark " cross "es " be "tween. "
  
  "\nAll " "in " "the " Apr "il " ev "'ning, "
  "\nA" "pril " "airs " "were " a "broad; "
  "\nI " "saw " "the " "sheep " "with " "their " "lambs, "
  "\nAnd " "thought " "on " "the " "Lamb " "of " "God. "
}

bass= \relative c {
  \global
  ees4 ees8 ees ees4 ees
  bes2 ees
  ees4 4 4 8 8
  ees2. r8 ees
  ees4 ees8 ees ees4 ees % 1b
  bes2(ees4 e)
  f4 f f f8 <f a>
  <bes, bes'>2. r4
  r2 r4 bes % 2a
  aes'4 g8 f g4(ees)
  f4 bes, ees ees8 ees
  bes1
  ees4 8 8 4 g,
  aes2 4 4 % 2b
  bes4 8 8 4 <bes d>
  <ees, ees'>2.\fermata \bar "||" r4
  r1
  r1
  r1 % 2c
  r1
  r1
  r4 des'8 des ges2
  aes2 aes,4 aes
  des1 % 3a
  c2 c4 c
  d4(e) f2
  ees4 ees d d8 d
  g,1
  e'4 ees8 ees d4 d % 3b
  e4(fis) g(b,)
  c4 8 8 d4 <d fis>
  <g, g'>1
  ees'4 8 8 4 4 % 3c
  bes2(ees)
  ees4 8  8 4 4
  ees1
  ees2 4 4 % 4a
  bes4 bes ees(e)
  f4-> f-> f-> f8 <f a>
  <bes, bes'>1
  r2 r4 bes8 bes % 4b
  aes'4 g8(f) g4 ees
  f4 bes, ees ees8 ees
  bes1
  ees4 8 8 4 8 8 % 4c
  aes,2. aes4
  bes4 8 8 4-> bes
  <ees, ees'>1
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s1
  s1
  s1 % 1b
  s2 s\<
  s1\<
  s1\!
  s2. s4\p % 2a
  s1-\markup {e distinto}
  s1
  s1
  s2\< s\!
  s1 % 2b
  s2\< s\!
  s2.\> s4\!
  s1
  s1
  s1 % 2c
  s1
  s1
  s4 s2.\pp
  s1
  s1 % 3a
  s1
  s1
  s1
  s1
  s1 % 3b
  s1
  s1-\markup \italic {dim. e poco rall.}
  s1
  s1\mf % 3c
  s1
  s1
  s1
  s2\mf\< s4\! s\p % 4a
  s2 s\<
  s1\!
  s2\<s\>
  s2.\! s4\p % 4b
  s1-\markup {e distinto}
  s1
  s1
  s1\< % 4c
  s1\>
  s2\< s4\!-\markup ten. s-\markup dim.
}

wordsBass = \lyricmode {
  All in the Apr- il ev- 'ning,
  A- pril airs were a- broad;
  The sheep with their lit- tle lambs
  Pass'd me by on the road.
  The sheep with their lambs
  Pass'd me by on the road,
  All in the Apr- il ev- 'ning,
  I thought on the Lamb of God.

  On the Lamb go- ing to die.
  Up in the moun- tains,
  Dew- y pas- tures are sweet, 
  Rest for the lit- tle bod- ies,
  Rest for the lit- tle feet.
  But for the Lamb of God,
  Up on the hill- top green,
  On- ly a cross of shame,
  Two stark cross- es be- tween.
  
  In the Apr- il ev- 'ning,
  A- pril airs were a- broad;
  I saw the sheep with their lambs,
  And thought on the Lamb of God.
}

midiWordsBass = \lyricmode {
  "All " "in " "the " Apr "il " ev "'ning, "
  "\nA" "pril " "airs " "were " a "broad; "
  "\nThe " "sheep " "with " "their " lit "tle " "lambs "
  "\nPass'd " "me " "by " "on " "the " "road. "
  "\nThe " "sheep " "with " "their " "lambs "
  "\nPass'd " "me " "by " "on " "the " "road, "
  "\nAll " "in " "the " Apr "il " ev "'ning, "
  "\nI " "thought " "on " "the " "Lamb " "of " "God. "

  "\nOn " "the " "Lamb " go "ing " "to " "die. "
  "\nUp " "in " "the " moun "tains, "
  "\nDew" "y " pas "tures " "are " "sweet, " 
  "\nRest " "for " "the " lit "tle " bod "ies, "
  "\nRest " "for " "the " lit "tle " "feet. "
  "\nBut " "for " "the " "Lamb " "of " "God, "
  "\nUp " "on " "the " hill "top " "green, "
  "\nOn" "ly " "a " "cross " "of " "shame, "
  "\nTwo " "stark " cross "es " be "tween. "
  
  "\nIn " "the " Apr "il " ev "'ning, "
  "\bA" "pril " "airs " "were " a "broad; "
  "\nI " "saw " "the " "sheep " "with " "their " "lambs, "
  "\nAnd " "thought " "on " "the " "Lamb " "of " "God. "
}

\book {
  \bookOutputSuffix "single"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
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
          \new Staff <<
	     \new Voice { \voiceOne \soprano }
	     \new Voice { \voiceTwo \alto    }
          >>
          \new Staff <<
            \clef "bass"
	     \new Voice { \voiceOne \tenor }
	     \new Voice { \voiceTwo \bass  }
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
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
          \new Staff <<
	     \new Voice { \voiceOne \soprano }
	     \new Voice { \voiceTwo \alto    }
          >>
          \new Staff <<
            \clef "bass"
	     \new Voice { \voiceOne \tenor }
	     \new Voice { \voiceTwo \bass  }
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
%   \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \midiWordsSop
          >>
                                  % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                  % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                  % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
	     \new Voice { \voiceOne \soprano }
	     \new Voice { \voiceTwo \alto    }
          >>
          \new Staff <<
            \clef "bass"
	     \new Voice { \voiceOne \tenor }
	     \new Voice { \voiceTwo \bass  }
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                  % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \midiWordsAlto
          >>
                                  % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                  % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
	     \new Voice { \voiceOne \soprano }
	     \new Voice { \voiceTwo \alto    }
          >>
          \new Staff <<
            \clef "bass"
	     \new Voice { \voiceOne \tenor }

            \new Voice { \voiceTwo \bass  }
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                  % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                  % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \midiWordsTenor
          >>
                                  % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
	     \new Voice { \voiceOne \soprano }
	     \new Voice { \voiceTwo \alto    }
          >>
          \new Staff <<
            \clef "bass"
	     \new Voice { \voiceOne \tenor }
	     \new Voice { \voiceTwo \bass  }
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                  % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                  % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
          >>
                                  % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \midiWordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
	     \new Voice { \voiceOne \soprano }
	     \new Voice { \voiceTwo \alto    }
          >>
          \new Staff <<
            \clef "bass"
	     \new Voice { \voiceOne \tenor }
	     \new Voice { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
