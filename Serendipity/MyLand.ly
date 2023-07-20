\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Land"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Brendan Graham, Alana Graham & Rolf Lovland"
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
  \time 3/4
  \partial 4
}

TempoTrack = {
  \tempo "With a lilt" 4=88
  s4
%  \set Score.tempoHideNote = ##t
  s2.*12 |
  \repeat volta 2 {
    s2.*41 |
  }
  s2.*51 |
  \tempo "rit." 4=80 s2.*5 \tempo 4=48 | % 10b+++
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "2a" } s4 s2.*5
  \textMark \markup { \box "2b" }    s2.*5
  \textMark \markup { \box "2c" }    s2.*2
  \repeat volta 2 {
    s2.*2
    \textMark \markup { \box "3a" }    s2.*4
    \textMark \markup { \box "3b" }    s2.*4
    \textMark \markup { \box "3c" }    s2.*4
    \textMark \markup { \box "4a" }    s2.*4
    \textMark \markup { \box "4b" }    s2.*4
    \textMark \markup { \box "4c" }    s2.*4
    \textMark \markup { \box "5a" }    s2.*4
    \textMark \markup { \box "5b" }    s2.*3
    \textMark \markup { \box "5c" }    s2.*4
    \textMark \markup { \box "6a" }    s2.*4
  }
  \textMark \markup { \box "6b" }    s2.*4
  \textMark \markup { \box "6c" }    s2.*4
  \textMark \markup { \box "7a" }    s2.*5
  \textMark \markup { \box "7b" }    s2.*4
  \textMark \markup { \box "7c" }    s2.*4
  \textMark \markup { \box "8a" }    s2.*4
  \textMark \markup { \box "8b" }    s2.*3
  \textMark \markup { \box "8c" }    s2.*4
  \textMark \markup { \box "9a" }    s2.*4
  \textMark \markup { \box "9b" }    s2.*4
  \textMark \markup { \box "9c" }    s2.*4
  \textMark \markup { \box "10a" }    s2.*4
  \textMark \markup { \box "10b" }    s2.*4
  \textMark \markup { \box "10c" }    s2.*5
}

ChordTrack = \chordmode {
  s4 | ees2. | bes/ees | aes2/ees bes4/ees | ees2. | ees:maj7 |
  ees2:6 bes4/ees | aes2./ees | bes/ees | ees | s |
  s2. | s |
  \repeat volta 2 {
    ees2. | bes/ees |
    aes2/ees bes4/ees | ees2. | s | ees:maj7 | % 3a
    ees2.:6 | aes/ees | bes/ees | s |
    ees2. | bes/ees | ees | bes/ees |
    s2. | ees | aes/ees | ees2 bes4/ees | % 4a
    ees2. | s | s | s2 bes4/d |
    c2.:m | aes | ees/g | bes/d |
    c2.:m | aes | ees/g | bes2 bes4/aes | % 5a
    ees2/g g4:m | f2:m bes4 | ees2 aes4 |
    bes2 bes4/aes | ees2./g | aes:9 | ees2/bes bes4 |
    ees2. | s | s | s | % 6a
  }
  ees2. | bes/d | aes2/c bes4/d | ees2. |
  g2.:m | c:m | aes | bes2 bes4/aes |
  ees2/g c4:m | f2:m bes4 | ees2 aes4 | bes2 bes4/aes | ees2./g | % 7a
  aes2.:9 | ees2/bes bes4 | ees2. | s2 bes4/d |
  c2.:m | aes | ees/g | bes/d |
  c2.:m | aes | ees/g | bes2 bes4/aes | % 8a
  ees2/g c4:m | f2:m bes4 | ees2 aes4 |
  bes2 bes4/aes | ees2./g | aes:9 | ees2/bes bes4 |
  ees2. | s | f | s2 c4/e | % 9a
  d2.:m | bes | f/a | c/e |
  d2.:m | bes | f/a | c2 c4/bes |
  f2/a d4:m | g2:m c4 | f2 bes4 | c2 c4/bes | % 10a
  f2./a | bes:9 | f2/c c4 | f2. |
  s2. | f/a | bes:9 | f2/c c4 | f2. |
}

dynamicsSop = {
  \dynamicUp
  \override DynamicTextSpanner.style = #'none
  s4 | s2.*11 | s2 s4\mp |
  \repeat volta 2 {
    s2.*2 |
    s2.*12 | % 3
    s2.*7 s2 s4\mf | s2.*4 | % 4
    s2.*11 | % 5
    s2.*3 | s2 s4\mf | % 6a
  }
  s2.*7 | s2 s4\mf |
  s2.*8 | s2 s4\f | s2.*4 | % 7
  s2.*11 | % 8
  s2.*3 | s2 s4\ff | s2.*8 | % 9
  s2.*8 | s2 s4\mp | s2.*4 |
}

sopranoOne = \relative {
  \global
  r4 | R2.*10 |
  R2. r4 r bes |
  \repeat volta 2 {
    g'4 g aes | f f g |
    ees4 4 f | g2.~ | 4 r g | bes bes g | % 3a
    ees'2 8 d | c2~(8 d16 c) | bes2.~ | 4 r bes, |
    bes'4 4 g | aes4. 8 f4 | g g4. ees8 | f2.~ |
    f4 r bes, | 4 ees g | bes aes4. f8 | ees4.(f16 ees d4) | % 4a
    ees2.~ | 2. | R | r4 r bes' |
    ees4 4. d8 | c4 d ees | bes^\markup Unis. g ees | f2 bes4 |
    ees4 4. d8 | c4 d ees | bes2.~ | 4 r bes,^\markup Unis. | % 5a
    bes'4 4 c | aes4 4 bes | g g ees |
    f2 bes,4^\markup Unis. | bes ees g | c c aes | g2 f4 |
    g2.~ | g | R | r4 r bes4^\markup {\halign #RIGHT "(Sop I.)"} ^\markup\italic {\halign #RIGHT Duet} ^\markup\italic\bold {\halign #RIGHT "Repeat for extended version"} |
  }
  bes4 4 c | bes4 4. 8 | 4 ees4. c8 | bes2 r8 bes |
  bes4^\markup\italic melody bes g | ees'4 4. d8 | c2~(8 d16 c) | bes2 4^\markup{\halign #RIGHT "(Sop. I/II)"} ^\markup\italic Trio |
  bes4 4 g | aes aes f | g g ees | f2 bes,4^\markup Unis. | bes ees g | % 7a
  c4 4. aes8 g2(f4) | g2. | r4 r bes^\markup\italic All |
  ees4 4. d8 | c4 d ees | bes^\markup Unis. g ees | f2 bes4 |
  ees4 4. d8 | c4 d ees | bes2.~ | 4 r bes,^\markup Unis. | % 8a
  bes'4 4 c | aes aes bes | g g ees |
  f2 bes,4^\markup Unis. | bes ees g | c c aes | g2 f4 |
  g2.~ | g \section \key f \major | R2. r4 r c | % 9a
  f4 4. e8 | d4 e f | c^\markup Unis. a f | g2 c4 |
  f4 4. e8 | d4 e f | c2.~ | 4 r c,^\markup Unis. |
  c'4 c d | bes bes c | a a f | g2 c,4^\markup Unis. | % 10a
  c4 f a | d d bes | a2 g4 | a2. |
  r4 r c,^\markup Unis. | c f a | d4 4. bes8 | a2 g4 | a2.\fermata |
  \bar "|."
}

wordsOne = \lyricmode {
  How green are your val -- leys,
  how blue your great skies? __
  Your moun -- tains stand tall in their glo -- ry. __
  Your riv -- ers run free,
  the bright stars are your eyes, __
  Your beau -- ty is end -- less be -- fore __ me. __
  For you are the song ev -- er sing -- ing in me.
  And you are the heart ev -- er true. __
  \set associatedVoice = alignerA
  For you __ are __ my land, __
  and __ you al -- ways __ will be,
  the voice ev -- er call -- ing me home __ to you.

  When to your green val -- leys some -- day I re -- turn,
  when you lay your man -- tle a -- round __ me.
  At rest I will be where the heart will not yearn,
  then my land will ev -- er sur -- round __ me.
  For you are the song ev -- er sing -- ing in me.
  And you are the heart ev -- er true __
  For you __ are __ my land, __
  and __ you al -- ways __ will be,
  the voice ev -- er call -- ing me home __ to you. __
  For you are the song ev -- er sing -- ing to me.
  And you are the heart ev -- er true, __
  For you __ are __ my land, __
  and __ you al -- ways __ will be,
  the voice ev -- er call -- ing me home __ to you,
  the voice ev -- er call -- ing me home __ to you.
}

wordsTwo = \lyricmode {
  _ \markup\italic times \markup\italic we \markup\italic are \markup\italic far \markup\italic from \markup\italic your \markup\italic for -- \markup\italic ests \markup\italic and \markup\italic streams, __
  \markup\italic when \markup\italic sail -- \markup\italic ing \markup\italic from \markup\italic your \markup\italic shin -- \markup\italic ing \markup\italic wa -- \markup\italic ters: __
  \markup\italic We \markup\italic car -- \markup\italic ry \markup\italic your \markup\italic hopes,
  \markup\italic your \markup\italic spi -- \markup\italic rit, \markup\italic your \markup\italic dreams, __
  \markup\italic in \markup\italic the \markup\italic hearts \markup\italic of \markup\italic your \markup\italic sons \markup\italic and \markup\italic your \markup\italic daugh -- \markup\italic ters. __
  "" \repeat unfold 39 _
  \markup\italic When
}

wordsSingle = \lyricmode {
  How green are your val -- leys,
  how blue your great skies? __
  Your moun -- tains stand tall in their glo -- ry. __
  Your riv -- ers run free,
  the bright stars are your eyes, __
  Your beau -- ty is end -- less be -- fore __ me. __
  For you are the song ev -- er sing -- ing in me.
  And you are the heart ev -- er true. __
  \set associatedVoice = alignerA
  For you __ are __ my land, __
  and __ you al -- ways __ will be,
  the voice ev -- er call -- ing me home __ to \set associatedVoice = alignerS you.

  When times we are far from your for -- ests and streams, __
  when sail -- ing from your shin -- ing wa -- ters: __
  We car -- ry your hopes,
  your spi -- rit, your dreams, __
  in the hearts of your sons and your daugh -- ters. __
  For you are the song ev -- er sing -- ing in me.
  And you are the heart ev -- er true. __
  \set associatedVoice = alignerA
  For you __ are __ my land, __
  and __ you al -- ways __ will be,
  the voice ev -- er call -- ing me home __ to \set associatedVoice = alignerS you.

  When to your green val -- leys some -- day I re -- turn,
  when you lay your man -- tle a -- round __ me.
  At rest I will be where the heart will not yearn,
  then my land will ev -- er sur -- round __ me.
  For you are the song ev -- er sing -- ing in me.
  And you are the heart ev -- er true __
  For you __ are __ my land, __
  and __ you al -- ways __ will be,
  the voice ev -- er call -- ing me home __ to you. __
  For you are the song ev -- er sing -- ing to me.
  And you are the heart ev -- er true, __
  For you __ are __ my land, __
  and __ you al -- ways __ will be,
  the voice ev -- er call -- ing me home __ to you,
  the voice ev -- er call -- ing me home __ to you.
}

wordsMidi = \lyricmode {
  "How " "green " "are " "your " val "leys, "
  "\nhow " "blue " "your " "great " "skies? " 
  "\nYour " moun "tains " "stand " "tall " "in " "their " glo "ry. " 
  "\nYour " riv "ers " "run " "free, "
  "\nthe " "bright " "stars " "are " "your " "eyes, " 
  "\nYour " beau "ty " "is " end "less " be "fore "  "me. " 
  "\nFor " "you " "are " "the " "song " ev "er " sing "ing " "in " "me. "
  "\nAnd " "you " "are " "the " "heart " ev "er " "true. " 
  "\nFor " "you "  "are "  "my " "land, " 
  "\nand "  "you " al "ways "  "will " "be, "
  "\nthe " "voice " ev "er " call "ing " "me " "home "  "to " "you. "

  "\nWhen " "times " "we " "are " "far " "from " "your " for "ests " "and " "streams, " 
  "\nwhen " sail "ing " "from " "your " shin "ing " wa "ters: " 
  "\nWe " car "ry " "your " "hopes, "
  "\nyour " spi "rit, " "your " "dreams, " 
  "\nin " "the " "hearts " "of " "your " "sons " "and " "your " daugh "ters. " 
  "\nFor " "you " "are " "the " "song " ev "er " sing "ing " "in " "me. "
  "\nAnd " "you " "are " "the " "heart " ev "er " "true. " 
  "\nFor " "you "  "are "  "my " "land, " 
  "\nand "  "you " al "ways "  "will " "be, "
  "\nthe " "voice " ev "er " call "ing " "me " "home "  "to " "you. "

  "\nWhen " "to " "your " "green " val "leys " some "day " "I " re "turn, "
  "\nwhen " "you " "lay " "your " man "tle " a "round "  "me. "
  "\nAt " "rest " "I " "will " "be " "where " "the " "heart " "will " "not " "yearn, "
  "\nthen " "my " "land " "will " ev "er " sur "round "  "me. "
  "\nFor " "you " "are " "the " "song " ev "er " sing "ing " "in " "me. "
  "\nAnd " "you " "are " "the " "heart " ev "er " "true " 
  "\nFor " "you "  "are "  "my " "land, " 
  "\nand "  "you " al "ways "  "will " "be, "
  "\nthe " "voice " ev "er " call "ing " "me " "home "  "to " "you. " 
  "\nFor " "you " "are " "the " "song " ev "er " sing "ing " "to " "me. "
  "\nAnd " "you " "are " "the " "heart " ev "er " "true, " 
  "\nFor " "you "  "are "  "my " "land, " 
  "\nand "  "you " al "ways "  "will " "be, "
  "\nthe " "voice " ev "er " call "ing " "me " "home "  "to " "you, "
  "\nthe " "voice " ev "er " call "ing " "me " "home "  "to " "you. "
}

sopranoTwo= \relative {
  \global
  r4 | R2.*10 |
  R2. r4 r bes |
  \repeat volta 2 {
    g'4 g aes | f f g |
    ees4 4 f | g2.~ | 4 r g | bes bes g | % 3a
    ees'2 8 d | c2~(8 d16 c) | bes2.~ | 4 r bes, |
    bes'4 4 g | aes4. 8 f4 | g g4. ees8 | f2.~ |
    f4 r bes, | 4 ees g | bes aes4. f8 | ees4.(f16 ees d4) | % 4a
    ees2.~ | 2. | R | r4 r bes' |
    c4 4. bes8 | aes4 bes c | bes g ees | f2 bes4 |
    c4 4. bes8 | aes4 bes c | bes2(ees,4 | f) r bes, | % 5a
    bes'4 4 c | aes4 4 bes | g g ees |
    d2 bes4 | bes ees g | c c aes | g2 f4 |
    ees2.~ | 2. | R | r4 r bes'4 | % 6a
  }
  bes4 4 c | bes4 4. 8 | 4 ees4. c8 | bes2 r8 bes |
  bes4 bes g | ees'4 4. d8 | c2~(8 d16 c) | bes2 4 |
  g4 g ees | f f d | ees ees ees | d2 bes4 | bes ees g | % 7a
  bes4 aes4. f8 | ees4.(f16 ees d4) | ees2. | r4 r bes' |
  c4 4. bes8 | aes4 bes c | bes g ees | f2 bes4 |
  c4 4. bes8 | aes4 bes c | bes2(ees,4 | f) r bes, | % 8a
  bes'4 4 c | aes aes bes | g g ees |
  d2 bes4 | bes ees g | bes_\markup\italic melody aes f | ees4.(f16 ees) d4 |
  ees2.~ | ees \section \key f \major | R2. r4 r c' | % 9a
  d4 4. c8 | bes4 c d | c a f | g2 c4 |
  d4 4. c8 | bes4 c d | c2(f,4 | g) r c, |
  c'4 c d | bes bes c | a a f | e2 c4 | % 10a
  c4 f a | c bes g | f4.(g16 f) e4 | f2. |
  r4 r c | c f a | c bes4. g8 | f4.(g16 f) e4 | f2.\fermata |
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4 s2.*12 |
  \repeat volta 2 {
    s2.*2 |
    s2.*4 | % 3a
    s2. | s | s | s2 s4\mp |
    s2.*4 |
    s2.*7 | s2 s4\mf | s2.*4 | % 4
    s2.*11 | % 5
    s2.*3 s2 s4\mf | % 6a
  }
  s2.*8 |
  s2.*8 | s2 s4\f | s2.*4 | % 7
  s2.*11 | % 8
  s2.*3 | s2 s4\ff | s2.*8 | % 9
  s2.*8 | s2 s4\mp | s2.*4 |
}

alto = \relative {
  \global
  r4 | R2.*12 |
  \repeat volta 2 {
    R2.*6 |
    R2. | R | R | r4 r bes |
    g'4 g ees | f4. 8 d4 | ees4 4. c8 | d2.~ |
    d4 r bes | bes ees g | bes aes4. f8 | ees4.(f16 g d4) | % 4a
    ees2.~ | 2. | R | r4 r bes' |
    g4 4. 8 | ees4 4 aes | ees4 4 bes | 2 f'4 |
    g4 4. 8 | ees4 4 aes | ees2.~ | 4 r bes | % 5a
    bes'8(aes) g(f) ees4 | aes8(g) f(ees) d4 | g8(f) ees(d) c4 |
    bes2 4 | bes ees ees | ees ees c | bes2 4 |
    bes2.~ | 2. | R | r4 r bes^\markup melody | % 6a
  }
  g'4 g aes | f4 4. g8 | ees4 bes'4. aes8 | g2 r8 g |
  d4 d bes | g'4 4. f8 | ees2. | d2 bes4 |
  ees4 4 c | c c bes | bes bes c | bes2 4 | 4 ees ees | % 7a
  ees4 4. c8 | bes2. | bes | r4 r bes'4 |
  g4 4. 8 | ees4 4 aes | ees4 4 bes | 2 f'4 |
  g4 4. 8 | ees4 4 aes | ees2.( | d4) r bes | % 8a
  bes'8(aes) g(f) ees4 | aes8(g) f(ees) d4 | g8(f) ees(d) c4 |
  bes2 4 | 4 ees ees | ees ees c | bes2 4 |
  bes2.~ | bes \section \key f \major | R2. | r4 r c' | % 9a
  a4 4. 8 | f4 f bes | f f c | 2 g'4 |
  a4 4. 8 | f4 f bes | f2.( | e4) r c |
  c'8(bes) a(g) f4 | bes8(a) g(f) e4 | a8(g) f(e) d4 | c2 4 | % 10a
  c4 f f | f f d | c2 4 | 2. |
  r4 r c | c f f | f4 4. d8 | c2 4 | 2.\fermata |
  \bar "|."
}

pianoRHone = \relative {
  \global
  bes'4 |
  <bes g'>4 4 <c aes'> |
  <aes f'>4 4 <bes g'> |
  <g ees'>4 4 <aes f'> |
  <bes g'>2 4 |
  <d bes'>4 4 <bes g'> |
  <g' ees'>4 4 <f d'> | % 2b
  <ees c'>2. |
  <f d>2. |
  \repeat unfold 4 {<ees, bes'>8 ees bes' ees bes ees, |}
  \repeat volta 2 {
    <g bes ees>4 <g ees'> <aes f'> |
    <f bes d> <f d'> <g ees'> |
    <ees aes c>4 <ees c'> <f d'> | % 3a
    <g bes ees>8 ees bes' ees bes ees, |
    ees'8 ees, bes' ees bes ees, |
    \voiceOne <bes bes'>2. \oneVoice |
    <g c ees>4 <g ees'> <f d'> | % 3b
    <ees aes c>8 ees aes bes c ees |
    <f, bes d>4 <bes f'> <d bes'> |
    <bes' f'> f bes |
    <bes g'>4 4 <g ees'> | % 3c
    <aes f'> q <f d'> |
    <g ees'> q <ees c'> |
    <f bes>8 bes, f' bes f bes, |
    <bes f'>8 bes bes' bes, aes' bes, | % 4a
    <bes g'>4 <ees bes'> <g ees'> |
    <aes f'>2 <c aes'>4 |
    <bes g'>2 <aes f'>4 |
    <g ees' bes'>4.\arpeggio g'8 aes8. bes32 aes | % 4b
    g2. |
    <bes,, ees bes'>4. g'8 aes8. bes32 aes |
    g2 r4 |
    <c, ees g>2. | <c ees aes> | <bes ees g> | <bes f'> | % 4c
    <c ees g>2. | <c ees aes> | <bes ees g> | <bes d f>2 <bes f'>4 | % 5a
    <g bes ees>4 g8 bes <g c ees>4 | % 5b
    <aes c f>4 aes8 c <bes d f>4 |
    <bes ees g>4 g8 bes <c ees aes>4 |
    <d f bes>4 bes8 d <bes f'>4 | % 5c
    ees8 bes ees bes' ees, bes |
    bes'8 aes ees c bes aes |
    ees'8 bes g bes d es |
    <bes ees bes'>4. g'8 aes8. bes32 aes | % 6a
    g2. |
    <bes, ees bes'>4. g'8 aes8. bes32 aes |
    g2. |
  }
  <bes, ees g>8 bes ees g ees bes | % 6b
  <bes f' bes>8 bes f' bes f bes, |
  <aes ees' aes>8 aes ees' aes f bes, |
  <bes ees g>4. bes8 ees g |
  <d g bes>4. d8 g bes | % 6c
  <g c ees>4. g8 c ees |
  <ees, aes c ees>4. bes'8 aes ees |
  <d f bes>4 d8 f bes f |
  <bes, ees bes'>8 bes ees bes' <c, ees g>4 | % 7a
  <c f aes>8 c f aes <bes, d f>4 |
  <es ees g>8 bes ees g <aes, c ees>4 |
  <bes d f>4 bes8 c d f |
  ees8 bes ees, bes' ees bes' |
  bes8 aes ees c bes aes | % 7b
  ees'8 g, bes ees d f, |
  <g bes ees>4 g8 bes ees f |
  g8 bes ees f <f, bes f'>4 |
  <ees g c ees>2. | <ees aes c ees> | <ees g bes ees> | <f bes f'> | % 7c
  <ees g c ees>2. | <ees aes c ees> | <ees g bes ees> | <f bes d>2 <bes, f' bes>4 | % 8a
  <bes ees g es>4 bes8 ees <c ees g c>4 | % 8b
  <aes c f aes>4 aes8 c <bes d f bes>4 |
  <bes ees g>4 g8 bes <c ees aes>4 |
  <d f es>4 bes8 d <bes f'>4 | % 8c
  ees8 bes ees bes' ees, bes |
  bes'8 aes ees c bes aes |
  ees'8 bes g bes d bes |
  <bes ees bes'>4. g'8 aes bes16 aes | % 9a
  g2. \section \key f \major
  <c, f c'>4. a'8 bes8 c16 bes |
  a2 r4 |
  <d, f a>2. | <d f bes> | <c f a> | <c g'> | % 9b
  <d f a>2. | <d f bes> | <c f a> | <c e g>2 <c g'>4 | % 9c
  <a c f>4 a8 c <a d f>4 | % 10a
  <bes d g>4 bes8 d <c e g>4 |
  <c f a>4 a8 c <d f bes>4 |
  <e g c>4 c8 e <c g'>4 |
  f8 c f c' f, c | % 10b
  c'8 bes f d c bes |
  f'8 c a c e g, |
  <a c f>8 c f c' f, c |
  r8 c f c' f, c | % 10c
  c4 f a |
  \voiceOne c4 bes4. g8 \oneVoice |
  <a, c f>2 <g c e>4 |
  <a c f>2.\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s4 | s2.*12 |
  \repeat volta 2 {
    s2.*2 |
    s2. | s | s | f'4 ees d |
    s2.*35 |
  }
  s2.*34 \section \key f \major |
  s2.*20 |
  <d f>2. |
  s2.*2 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mp | s2.*12 |
  \repeat volta 2 {
    s2.*2 |
    s2.*12 | % 3
    s2.*4 | s2.\cresc | s2.*3 | s2.\mf | s2.*3 | % 4
    s2.*11 | % 5
    s2.*4 | % 6a
  }
  s2.*8 |
  s2.*7 | s2.\cresc | s2. | s\f | s2.*3 | % 7
  s2.*11 | % 8
  s2.\cresc | s2.*3 | s2.\ff | s2.*7 | % 9
  s2.*4 | s2.\dim | s2. | s | s-\markup\italic rit. | s | s\mp | s | s | s | % 10
}

rh = \markup{\tiny R.H.}

pianoLHone = \relative {
  \global
  r4 | <ees, bes'>2.~ | 2. | 2.~ | 2. | 2.~ |
  q2. | q~ | q | q~ | q |
  q2.~ | q |
  \repeat volta 2 {
    q2.~ | q~ |
    q2. | q~ | q | q~ | % 3a
    q2.~ | q | q~ | q |
    q2.~ | q~ | q | q~ |
    q2. | q~ | q~ | q | % 4a
    \voiceOne r8 g'8 bes[g] ees' bes | % 4b
    ees,8[g] bes g ees'^\rh[bes] |
    r8 g bes[g] ees' bes |
    ees,8 bes' g[es] <f bes>4^\rh |
    r8 g,8 c[ees] g^\rh c | % 4c
    r8 f,, aes[c] ees^\rh aes |
    r8 ees, bes'[ees] g^\rh bes |
    r8 bes, f'[bes] c^\rh d |
    r8 g,, c[ees] g^\rh c | % 5a
    r8 ees,, aes[c] ees^\rh aes |
    r8 ees, bes'[f'] g^\rh bes |
    es,4 bes, aes' |
    r8 ees'8~2 | r8 f~2 | r8 ees~2 | % 5b
    r8 f~2 | \oneVoice g,2~8 8 | aes2~8 8 | bes2 bes,4 | % 5c
    \voiceOne r8 g'' bes[g] ees' bes | % 6a
    ees,8 g bes[g] ees'^\rh bes |
    r8 g bes[g] ees' bes |
    ees,8 g bes[g] ees'^\rh bes |
  }
  r8 bes, g'2 | \oneVoice d2. | c2 d4 | \voiceOne r8 bes8 g'2 |
  r8 d8 bes'2 | r8 g,8 ees'2 | r8 ees8 c'2 | r8 f,8~2 |
  \oneVoice g,2 c4 | f,2 bes4 | ees,2 aes4 | \voiceOne r8 f'8~2 \oneVoice | g,2. | % 7a
  aes2. | bes2 bes,4 | \voiceOne r8 bes'8~2~ | 2. |
  r8 g c[ees] g c | % 7c
  r8 ees,, aes[c] ees[aes] |
  r8 ees, bes'[ees] g bes |
  r8 bes, f'[bes] c d |
  r8 g,, c[ees] g c | % 8a
  r8 ees,, aes[c] ees aes |
  r8 ees, bes'[ees] g bes |
  bes,4 bes, bes' |
  r8 ees~2 | r8 f~2 | r8 ees~2 | % 8b
  r8 f~2 | g,2~8 8 | aes2~8 8 | bes2 bes,4 | % 8c
  r8 g'' bes[g] ees' bes | % 9a
  ees, g bes[g] ees'^\rh bes \section \key f \major |
  r8 a c[a] f'[c] |
  f,8 c' a[c] <g c>4^\rh |
  r8 a, d[f] a[d^\rh] | % 9b
  r8 f,, bes[d] f[bes^\rh] |
  r8 f, c'[f] a^\rh c |
  r8 c, g'[c] d^\rh e |
  r8 a,, d[f] a^\rh d | % 9c
  r8 f,, bes[d] f^\rh[bes] |
  r8 f, c'[f] a^\rh c |
  c,4 c, bes' |
  r8 f'~2 | r8 g~2 | r8 f~2 | r8 g~2 | % 10a
  \oneVoice a,2~8 8 | bes2~8 8 | c2 c,4 | <f c'>2. |
  q2. \voiceOne | r8 f'4 4 8 \oneVoice | <bes, f'>2. | <c f>2 c,4 | <f c'>2.\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s4 | s2.*12 |
  \repeat volta 2 {
    s2.*2 |
    s2.*16 |
    <ees, bes'>2.~ | q | q~ | 2 d4 |
    c2. | aes | g | d' |
    c2. | aes | g | s | % 5a
    g'2 c4 | f,2 bes4 | ees,2 aes4 |
    bes2 aes4 | s2. | s | s |
    q2.~ | q | q~ | q | % 6a
  }
  ees2. | s | s | ees |
  g2. | c, | aes' | bes2 aes4 |
  s2. | s | s | bes2 aes4 | s2. | % 7a
  s2. | s | ees2.~ | 2 d4 |
  c2. | aes | g | d' |
  c2. | aes | g | s | % 8a
  g'2 c4 | f,2 bes4 | ees,2 aes4 |
  bes2 aes4 | s2. | s | s |
  q2.~ | q \section \key f \major | <f c'>2.~ | 2 e4 | % 9a
  d2. | bes | a | e' |
  d2. | bes | a | s |
  a'2 d4 | g,2 c4 | f,2 bes4 | c2 bes4 | % 10a
  s2.*4 |
  s2. | a2. | s | s | s |
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \partCombine \sopranoOne \sopranoTwo
            \new NullVoice =alignerS \sopranoOne
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alignerA \alto
          >>
        >>
        \new Lyrics \with {alignBelowContext = soprano} \lyricsto alignerS \wordsTwo
        \new Lyrics \with {alignBelowContext = soprano} \lyricsto alignerS \wordsOne

        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \partCombine \sopranoOne \sopranoTwo
            \new NullVoice =alignerS \sopranoOne
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alignerA \alto
          >>
        >>
        \new Lyrics \with {alignBelowContext = soprano} \lyricsto alignerS \wordsSingle

        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \partCombine \sopranoOne \sopranoTwo
            \new NullVoice =alignerS \sopranoOne
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alignerA \alto
          >>
        >>
        \new Lyrics \with {alignBelowContext = soprano} \lyricsto alignerS \wordsSingle

        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-sop"
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \partCombine \sopranoOne \sopranoTwo
            \new NullVoice =alignerS \sopranoOne
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \tiny \dynamicsAlto
            \new Voice = alignerA \alto
          >>
        >>
        \new Lyrics \with {alignBelowContext = soprano} \lyricsto alignerS {\tiny \wordsSingle}

        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \tiny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-alto"
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \tiny \dynamicsSop
            \new Voice \partCombine \sopranoOne \sopranoTwo
            \new NullVoice =alignerS \sopranoOne
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alignerA \alto
          >>
        >>
        \new Lyrics \with {alignBelowContext = alto} \lyricsto alignerS \wordsSingle

        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \tiny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-bass"
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \tiny \dynamicsSop
            \new Voice \partCombine \sopranoOne \sopranoTwo
            \new NullVoice =alignerS \sopranoOne
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alignerA \transpose c c, \alto
          >>
        >>
        \new Lyrics \with {alignBelowContext = alto} \lyricsto alignerS \wordsSingle

        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \tiny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \partCombine \sopranoOne \sopranoTwo
            \new NullVoice =alignerS \sopranoOne
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alignerA \alto
          >>
        >>
        \new Lyrics \with {alignBelowContext = soprano} \lyricsto alignerS \wordsMidi

        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
