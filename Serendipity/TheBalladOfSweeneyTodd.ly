\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Ballad of Sweeney Todd"
  subtitle    = "The Demon Barber of Fleet Street"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Stephen Sondheim"
  arranger    = "Arr. Andy Beck"
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
  \key bes \major
  \time 6/8
  \partial 4.
}

TempoTrack = {
  \tempo "Misterioso, con moto" 4=132
  s4.
  \set Score.tempoHideNote = ##t
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "2a" } s4. s2.*3
  \textMark \markup { \box \bold "2b" }     s2.*4
  \textMark \markup { \box \bold "2c" }     s2.*4
  \textMark \markup { \box \bold "2d" }     s2.*4
  \textMark \markup { \box \bold "3a" }     s2.*4
  \textMark \markup { \box \bold "3b" }     s2.*4
  \textMark \markup { \box \bold "3c" }     s2.*3
  \textMark \markup { \box \bold "4a" }     s2.*4
  \textMark \markup { \box \bold "4b" }     s2.*4
  \textMark \markup { \box \bold "4c" }     s2.*4
  \textMark \markup { \box \bold "5a" }     s2.*4
  \textMark \markup { \box \bold "5b" }     s2.*4
  \textMark \markup { \box \bold "5c" }     s2.*3
  \textMark \markup { \box \bold "6a" }     s2.*4
  \textMark \markup { \box \bold "6b" }     s2.*4
  \textMark \markup { \box \bold "6c" }     s2.*4
  \textMark \markup { \box \bold "7a" }     s2.*5
  \textMark \markup { \box \bold "7b" }     s2.*5
  \textMark \markup { \box \bold "7c" }     s2.*4
  \textMark \markup { \box \bold "8a" }     s2.*4
  \textMark \markup { \box \bold "8b" }     s2.*4
  \textMark \markup { \box \bold "8c" }     s2.*4
  \textMark \markup { \box \bold "9a" }     s2.*4
  \textMark \markup { \box \bold "9b" }     s2.*4
  \textMark \markup { \box \bold "9c" }     s2.*4
  \textMark \markup { \box \bold "10a" }     s2.*4
  \textMark \markup { \box \bold "10b" }     s2.*3
  \textMark \markup { \box \bold "10c" }     s2.*3
  \textMark \markup { \box \bold "11a" }     s2.*4
  \textMark \markup { \box \bold "11b" }     s2.*3
  \textMark \markup { \box \bold "11c" }     s2.*3
  \textMark \markup { \box \bold "12a" }     s2.*3
  \textMark \markup { \box \bold "12b" }     s2.*3
  \textMark \markup { \box \bold "13a" }     s2.*3
  \textMark \markup { \box \bold "13b" }     s2.*3
  \textMark \markup { \box \bold "14a" }     s2.*4
  \textMark \markup { \box \bold "14b" }     s2.*4
  \textMark \markup { \box \bold "14c" }     s2.*3
  \textMark \markup { \box \bold "15a" }     s2.*3
  \textMark \markup { \box \bold "15b" }     s2.*4
  \textMark \markup { \box \bold "15c" }     s2.*4
  \textMark \markup { \box \bold "16a" }     s2.*4
  \textMark \markup { \box \bold "16b" }     s2.*4
  \textMark \markup { \box \bold "16c" }     s2.*4
}

dynamicsWomen = {
  s4. s2.*14
  s4. s4 s8\p |
  s2.*22
  s4. s4 s8\mp |
  s2.*23
  s2.\f | % 7a
  s2.*11
  s2\sfz s4\decresc | s2.
  s2. | s4. s4 s8\mf | s2. | s | % 8a
  s4. s\mf | s2.*3 | % 8b
  s2.*18 |
  s2.\mp | s2. | % 10a
  s2.*6 |
  s2.\mf | s2.*3 | % 11a
  s2.*21 |
  s4. s4 s8\f |
  s2.*13 |
  s4. s4 s8\p |
  s2.*4 | % 15c
  s2.*3 | s4. s4 s8\omit\ff-\markup{\halign #RIGHT \italic sub. \dynamic ff} |
  s2.*8 |
}

dynamicsSop = {
  s4.
  s2.*123 |
  s2.\mf | s2.\omit\cresc ^\markup\italic "molto cresc." | % 12b
  s2. | s | s\ff | % 13a
  s2.*3 |
  s2.*34
}

sopranoJoint = \relative {
  \global
  r4. | R2. | R  R |
  R2. | R | R | R |
  R2. | R | R | R |
  R2. | R | R | r4.^\markup SOPRANO _\markup ALTO r4 d'8 |
  g4 a8 bes4 g8 | a4 f8 g4. | R2. | r4. r4 d8 | % 3a
  g4 a8 bes a g | a4 f8 g4. | R2. | r4. r4 d8
  bes'4 c8 d c bes | c4 a8 bes4 g8 | a bes a g f d |
  c8 d bes c4.~ | c r4 ees'8 | d4 bes8 c4 ees8 | d4 bes8 c4. | % 4a
  R2. | R | R | r4. r4 d8 |
  c4 bes8 a bes g | a4-. r8 a4-. r8 | R2. | r4. r4 d,8 |
  g4 a8 bes4 g8 | a4 f8 g4. | R2. | r4. r4 d8 | % 5a
  g4 a8 bes a g  a4 f8 g4. | R2. | r4. r4 d8 |
  bes'4 c8 d c bes | c4 a8 bes4 g8 | a bes a g f d |
  c8 d bes c4.~ | c r | r r4 ees'8 | d4. c | % 6a
  R2. | R | R | r4. r4 d8 |
  c4 bes8 a bes g | a4-. r8 4-. r8 | R2. | R |
  d4. c | d bes | c2. | g4. a | d c | % 7a
  d4. bes | c2.~ | c \breathe | d4. c | d bes |
  c4. bes | c g | a8 g a~4.~ | 2.~ |
  a2.~ | 4. r4^\markup "ALTO only" s8 | s2. | s | % 8a
  r4. d( | c4. ees | d2.~ | d) |
  r4. d4.( | f g | d2.~ | d) |
  s2. | s | s4. r | r4. r4^\markup "SOPRANO only" ees8 | % 9a
  d4 bes8 c4 ees8 | d4 bes8 c4. | r4. r4^\markup "ALTO only" s8 | s2. |
  R2. | r4. r4 d8 | c4 bes8 a bes g | a4-. r8 a4-. r8 |
  R2. | R \section \key ees \major | f4 g8 aes g f | g4 aes8 bes4. | % 10a
  aes4 g8 f g ees | f4 d bes | R2. |
  R2. | c'8 bes c c d bes | c bes c c4 r8 |
  \tiny f4 g8 aes g f | g4 aes bes | aes g8 f g ees | f4 des bes \section \key bes \major \normalsize | % 11a
  R2.*18 |
  R2.^\markup SOPRANO | R | R | r4. r4 d,8 | % 14a
  g4 a8 bes4 g8 | a4 f8 g4. | R2. | r4. r4 d8 |
  g4 a8 bes a g | a4 f8 g4. | R2. |
  r4. r4 d8 | bes'4 c8 d4 bes8 | c4 a8 bes4 r8 | % 15a
  R2. | R | R | r4. r4 ees8 |
  d4. c | R2. | R | R |
  R2. | R | R | r4. r4 <d \tweak font-size #-2 d'>8 | % 16a
  <c \tweak font-size #-2 c'>4 <bes \tweak font-size #-2 bes'>8 <a \tweak font-size #-2 a'> <bes \tweak font-size #-2 bes'> <g \tweak font-size #-2 g'> | <a \tweak font-size #-2 a'>4 r8 r4. | r4. <a \tweak font-size #-2 a'>4-. r8 | R2. |
  R2.*4 |
}

sopranoApart = \relative {
  \global
  \partial 4. r4.
  R2.*119 |
  R2. | R | R | % 12a
  R2. | c''8^\markup SOPRANO bes c8 4. | 8 bes c c d r |
  c8 bes c8 4 g8 | c4 g8 c d r | <d g>2.~ | % 13a
  q2. | <cis fis>2.~ | q |
  R2.*34 |
}

wordsSopAbove = \lyricmode {
  \repeat unfold 124 \skip 1
  Ah __ Ah __
}

wordsSop = \lyricmode {
  No -- one can help, no -- thing can hide you.
  Is -- n't that Swee -- ney there be -- side you?
  Swee -- ney! __
}

wordsSopMidiJoint = \lyricmode {
  "At" "tend " "the " "tale " "of " Swee "ney " "Todd. "
  "\nHis " "skin " "was " "pale " "and " "his " "eye " "was " "odd. "
  "\nHe " "shaved " "the " fac "es " "of " gen tle "men "
  "\nwho " nev "er " there af "ter " "were " "heard " "of " a "gain. " 
  "\nHe " "trod " "a " "path " "that " "few " "have " "trod, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nHe " "kept " "a " "shop " "in " Lon "don " "town, "
  "\nof " fan "cy " cli "ents " "and " "good " re "nown. "
  "\nAnd " "what " "if " "none " "of " "their " "souls " "were " "saved? "
  "\nThey " "went " "to " "their " mak "er " im pec ca "bly " "shaved? " 
  "\nby " Swee "ney. "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nSwing " "your " ra "zor " "wide, " Swee "ney, "
  "\nhold " "it " "to " "the " "skies! " 
  "\nFree" "ly " "flows " "the " "blood " "of " "those " "who " mor al "ize. " 
  "\nAh "  "Ah " 

  "\nFor " neat "ness " "he " de "serves " "a " "nod "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nSwee" "ney " wish "es " "a " "world " a "way, "
  "\nSwee" "ney's " weep "ing " "for " yes ter "day, "
  "\nhear" "ing " "the " mu "sic " "that " no bod "y " "hears. "

  "\nSwee" "ney " "waits " "in " "the " par "lour " "hall, "
  "\nSwee" "ney " "leans " "on " "the " of "fice " "wall. "

  "\nAt" "tend " "the " "tale " "of " Swee "ney " "Todd. "
  "\nHe " "served " "a " "dark " "and " "a " hun "gry " "God. "
  "\nTo " "seek " re "venge " "may " "lead " "to " "hell. "
  "\nas " Swee "ney, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "
}

wordsSopMidiApart = \lyricmode {
  "No" "one " "can " "help, " no "thing " "can " "hide " "you. "
  "\nIs" "n't " "that " Swee "ney " "there " be "side " "you? "
  "\nSwee" "ney! " 
}

dynamicsAlto = {
  s4.
  s2.*121
  s2.\mf | % 12a
  s2. | s | s\omit\cresc ^\markup\italic "molto cresc." |
  s2. | s | s\ff | % 13a
  s2.*3 |
  s2.*34 |
}

altoJoint = \relative {
  \global
  r4. | R2. | R  R |
  R2. | R | R | R |
  R2. | R | R | R |
  R2. | R | R | r4._\markup ALTO r4 d'8 |
  g4 a8 bes4 g8 | a4 f8 g4. | R2. | r4. r4 d8 | % 3a
  g4 a8 bes a g | a4 f8 g4. | R2. | r4. r4 d8 |
  g4 a8 bes a g | a4 f8 g4 8 | a bes a g f d |
  c8 d bes c4.~ | c r4 ees8 | d4 bes8 c4 ees8 | d4 bes8 c4. | % 4a
  R2. | R | R | r4. r4 d8 |
  c4 bes8 a bes g a4-. r8 a4-. r8 | R2. | r4. r4 d8 |
  g4 a8 bes4 g8 | a4 f8 g4. | R2. | r4. r4 d8 | % 5a
  g4 a8 bes a g  a4 f8 g4. | R2. | r4. r4 d8 |
 g4 a8 bes a g | a4 f8 g4 8 | a bes a g f d |
  c8 d bes c4.~ | c r | r r4 ees8 | d4. c | % 6a
  R2. | R | R | r4. r4 d8 |
  c4 bes8 a bes g | a4-. r8 4-. r8 | R2. | R |
  g'4. g | g g | g2. | 4. fis | g f | % 7a
  fis4. f | g(fis | gis b) | g g | a a |
  g4. g | g ees | d8 ees d~4.~ | 2.~ |
  d2.~ | 4. r4^\markup "ALTO only" d8 | g4 a8 bes4 g8 | a4 f8 g4. | % 8a
  r4.^\markup "+SOPRANO" r | r r4 d8 | g4 a8 bes a g | a4 f8 g4. |
  r4. r | r r4 d8 | bes'4 c8 d c bes | c4 a8 bes4 g8 |
  a8^\markup "ALTO only" bes a g f d | c d bes c4.~ | c r | r r4^\markup "SOPRANO only" s8 % 9a
  s2. | s | r4. r4^\markup "ALTO only" ees8 | d4 bes8 c4. |
  R2. | r4. r4^\markup ALL d8 | c4 bes8 a bes g | a4-. r8 a4-. r8 |
  R2. | R | \key ees \major f'4 g8 aes g f | g4 aes8 bes4. | % 10a
  aes4 g8 f g ees | f4 d bes | R2. |
  R2. | c8 bes c c d bes | c bes c c4 r8 |
  f4 g8 aes g f | g4 aes bes | aes4 g8 f g ees | f4 des bes | \key bes \major % 11a
  s2.*18 |
  R2. | R | R | r4. r4 d8 | % 14a
  g4 a8 bes4 g8 | a4 f8 g4. | R2. | r4. r4 d8 |
  g4 a8 bes a g | a4 f8 g4. | R2. |
  r4. r4 d8 | g4 a8 bes4 g8 | a4 f8 g4 r8 | % 15a
  R2. | R | R | r4. r4 ees8 |
  d4. c | R2. | R | R |
  R2. | R | R | r4. r4 \partCombineChords d8 | % 16a
  c4 bes8 a bes g | a4-. r8 r4. | r4. a4-. r8 | R2. |
  R2.*4 |
}

altoApart = \relative {
  \global
  r4. R2.*119 |
  R2. | R | c'4^\markup ALTO d8 ees d c | % 12a
  d4 ees f | ees f8 g f ees | f4 g aes |
  g8 f g~g g(f) | g4. aes8 r r | bes2.~ | % 13a
  bes2. | gis2.~ | gis \break |
  s2.*34 |
}

wordsAlto = \lyricmode {
  Swee -- ney wish -- es the world a -- way,
  Swee -- ney's wish -- ing for yes -- ter -- day.
  There he is, __ is __ Swee -- ney.
  Swee -- ney! __
}

wordsAltoMidiJoint = \lyricmode {
  "At" "tend " "the " "tale " "of " Swee "ney " "Todd. "
  "\nHis " "skin " "was " "pale " "and " "his " "eye " "was " "odd. "
  "\nHe " "shaved " "the " fac "es " "of " gen tle "men "
  "\nwho " nev "er " there af "ter " "were " "heard " "of " a "gain. " 
  "\nHe " "trod " "a " "path " "that " "few " "have " "trod, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nHe " "kept " "a " "shop " "in " Lon "don " "town, "
  "\nof " fan "cy " cli "ents " "and " "good " re "nown. "
  "\nAnd " "what " "if " "none " "of " "their " "souls " "were " "saved? "
  "\nThey " "went " "to " "their " mak "er " im pec ca "bly " "shaved? " 
  "\nby " Swee "ney. "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nSwing " "your " ra "zor " "wide, " Swee "ney, "
  "\nhold " "it " "to " "the " "skies! " 
  "\nFree" "ly " "flows " "the " "blood " "of " "those " "who " mor al "ize. " 
  "\nHis " "needs " "were " "few, " "his " "room " "was " "bare: "
  "\na " la va "bo " "and " "a " fan "cy " "chair, "
  "\na " "mug " "of " "suds " "and " "a " leath "er " "strop, "
  "\nan " a "pron, " "a " tow "el, " "a " "pail, " "and " "a " "mop. " 
  "\ndoes " Swee "ney " "Todd, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nSwee" "ney " wish "es " "a " "world " a "way, "
  "\nSwee" "ney's " weep "ing " "for " yes ter "day, "
  "\nhear" "ing " "the " mu "sic " "that " no bod "y " "hears. "

  "\nSwee" "ney " "waits " "in " "the " par "lour " "hall, "
  "\nSwee" "ney " "leans " "on " "the " of "fice " "wall. "

  "\nAt" "tend " "the " "tale " "of " Swee "ney " "Todd. "
  "\nHe " "served " "a " "dark " "and " "a " hun "gry " "God. "
  "\nTo " "seek " re "venge " "may " "lead " "to " "hell. "
  "\nas " Swee "ney, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "
}

wordsAltoMidiApart = \lyricmode {
  "Swee" "ney " wish "es " "the " "world " a "way, "
  "\nSwee" "ney's " wish "ing " "for " yes ter "day. "
  "\nThere " "he " "is, "  "is "  Swee "ney. "
  "\nSwee" "ney! " 
}

wordsWomen = \lyricmode {
  At -- tend the tale of Swee -- ney Todd.
  His skin was pale and his eye was odd.
  He shaved the fac -- es of gen -- tle -- men
  who nev -- er there -- af -- ter were heard of a -- gain. __
  He trod a path that few have \set associatedVoice = alignerBJ trod,
  did Swee -- ney \set associatedVoice = alignerSJ Todd,
  the de -- mon bar -- ber of Fleet Street.

  He kept a shop in Lon -- don town,
  of fan -- cy cli -- ents and good re -- nown.
  And what if none of their souls were saved?
  They went to their mak -- er im -- pec -- ca -- bly shaved? __
  by Swee -- \set associatedVoice = alignerBJ ney.
  by Swee -- ney \set associatedVoice = alignerSJ Todd,
  the de -- mon bar -- ber of Fleet Street.

  Swing your ra -- zor wide, Swee -- ney,
  hold it to the skies! __
  Free -- ly flows the blood of those who mor -- al -- \set associatedVoice = alignerAJ ize. __
  His needs were few, his room was bare:
  a la -- va -- bo and a fan -- cy chair,
  a mug of suds and a leath -- er strop,
  an a -- pron, a tow -- el, a pail, and a \set associatedVoice = alignerSJ mop. __
  For neat -- ness he de -- serves a \set associatedVoice = alignerAJ nod
  does Swee -- ney \set associatedVoice = alignerSJ Todd,
  the de -- mon bar -- ber of Fleet Street.

  Swee -- ney wish -- es a world a -- way,
  Swee -- ney's weep -- ing for yes -- ter -- \set associatedVoice = alignerBJ day,
  hug -- ging the blade, wait -- ing the \set associatedVoice = alignerSJ years,
  hear -- ing the mu -- sic that no -- bod -- y hears.

  Swee -- ney waits in the par -- lour hall,
  Swee -- ney leans on the of -- fice wall.

  At -- tend the tale of Swee -- ney Todd.
  He served a dark and a hun -- gry God.
  To seek re -- venge may lead to \set associatedVoice = alignerBJ hell.
  But ev -- 'ry -- one does it, if sel -- dom as \set associatedVoice = alignerSJ well. __
  as Swee -- \set associatedVoice = alignerBJ ney,
  as Swee -- ney \set associatedVoice = alignerSJ Todd,
  the de -- mon bar -- ber of Fleet Street.
}

dynamicsMen = {
  s4. s2.*14
  s4. s4 s8\p |
  s2.*24
  s4. s4 s8\mp |
  s2.*21
  s2.\f | % 7a
  s2.*11
  s2\sfz s4\decresc | s2.
  s2. | s4. s4 s8\mf | s2. | s | % 8a
  s4. s\mf | s2.*3 | % 8b
  s2.*18 |
  s2.\mp | s2. | % 10a
  s2.*6 |
  s2.\mf | s2.*3 | % 11a
  s2.*21 |
  s4. s4 s8\f |
  s2.*10 |
  s2.\decresc |
  s2.*7 |
  s2.*3 | s4. s4 s8\omit\ff-\markup{\halign #RIGHT \italic sub. \dynamic ff} |
  s2.*8 |
}

dynamicsTenor = {
  s4.
  s2.*119
  s2.\omit\mf | s | s | % 12a
  s2. | s | s\omit\cresc ^\markup\italic "molto cresc." |
  s2. | s | s\ff |
  s2.*3 |
  s2.*34 |
}

tenorJoint = \relative {
  \global
  s4. s2.*11 |
  R2. | R | R | r4.^\markup TENOR _\markup BASS r4 d8
  g4 a8 bes4 g8 | a4 f8 g4. | R2. | r4. r4 d8 | % 3a
  g4 a8 bes a g | a4 f8 g4. | R2. | r4. r4 d8 |
  bes'4 c8 d c bes | c4 a8 bes4 g8 | a bes a g f d' |
  c8 d bes c4.~ | c r | R2. | R | % 4a
  r4. r4 ees8 | d4 bes8 c4. | R2. | r4. r4 d8 |
  c4 bes8 a bes g | a4-. r8 a4-. r8 | R2. | R |
  R2. | r4. r4 d,8 | g4 a8 bes4 g8 | a4 f8 g4. | % 5a
  R2. | r4. r4 d8 | g4 a8 bes a g | a4 f8 g4. |
  R2. | r4. r4 g8 | a bes a g f d' |
  c8 d bes c4.~ | c r | R2. | R | % 6a
  r4. r4 ees8 | d4 bes8 c4. | R2. | r4. r4 d8 |
  c4 bes8 a bes g | a4-. r8 a4-. r8 | R2. | R |
  d4. c | bes d | 2. | 4. bes | d c | % 7a
  d4. d | c2.( | 2.) \breathe | d4. d  ees d |
  d4. d | c cis | d8 ees d~4.~ | 2.~ |
  d2.~ | 4. r4^\markup "BASS only" s8 | s2. | s | % 8a
  r4.^\markup "+TENOR" d4.( | c ees | d2.~ | d) |
  r4. d( | f g | d2.~ | d) |
  s2. | s | s  s4. s4^\markup "TENOR only" ees8 | % 9a
  d4 bes8 c4 ees8 | d4 bes8 c4. | r4. r4^\markup "BASS only" s8 | s2. |
  s2. | r4. r4^\markup ALL d8 | c4 bes8 a bes g | a4-. r8 a4-. r8 |
  R2. | R | \key ees \major f4 g8 aes g f | g4 aes8 bes4. | % 10a
  aes4 g8 f g ees | f4 d' bes | c8 bes c c4 r8 |
  c8 bes c c4 r8 | R2. | R |
  f,4 g8 aes g f | g4 aes bes | aes g8 f g ees | f4 des' bes |
  R2.*18 |
  R2.^\markup TENOR | R | R | r4. r4 d,8 | % 14a
  g4 a8 bes4 g8 | a4 f8 g4. | R2. | r4. r4 d8 |
  g4 a8 bes a g | a4 f8 g4. | R2. |
  r4. r4 d8 | bes'4 c8 d4 bes8 | c4 a8 bes4 g8 | % 15a
  a bes a g f d | c d bes c4.~ | c r | R2. |
  R2.  R | R | r4. r4 ees'8 |
  d4 bes8 c4.  R2. | R | r4. r4 d8 | % 16a
  c4 bes8 a bes g | a4-. r8 r4.  r a4-. r8 | R2.
  R2.*4 |
}

tenorApart = \relative {
  \global
  r4.
  R2.*113 \break |
  c'8^\markup TENOR bes c c4. | c8 bes c c d r | c bes c c4 g8 | % 11b
  c4 g8 c8 d r | c bes c c4. | c8 bes c c d r |
  c8 bes c c4 g8 | c4 g8 c d r | c bes c8 4. | % 12a
  c8 bes c c d r | c bes c c4 g8 | c4 g8 c8 d r |
  c4. d8 r r | ees4. f8 r r | g2.~ | % 13a
  g2. | fis~  fis |
  R2.*34 |
}

wordsTenorAbove = \lyricmode {
  \repeat unfold 112 \skip 1
  Ah __ Ah __
}

wordsTenor = \lyricmode {
  No -- one can help, no -- thing can hide you.
  Is -- n't that Swee -- ney there be -- side you?
  No -- one can help, no -- thing can hide you.
  Is -- n't that See -- ney there be -- side you?
  No -- one can help, no -- thing can hide you.
  Is -- n't that See -- ney there be -- side you?
  Swee -- ny, Swee -- ny, Swee -- ny! __
}

wordsTenorMidiJoint = \lyricmode {
  "At" "tend " "the " "tale " "of " Swee "ney " "Todd. "
  "\nHis " "skin " "was " "pale " "and " "his " "eye " "was " "odd. "
  "\nHe " "shaved " "the " fac "es " "of " gen tle "men "
  "\nwho " nev "er " there af "ter " "were " "heard " "of " a "gain. " 
  "\ndid " Swee "ney " "Todd, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nHe " "kept " "a " "shop " "in " Lon "don " "town, "
  "\nof " fan "cy " cli "ents " "and " "good " re "nown. "
  "\nThey " "went " "to " "their " mak "er " im pec ca "bly " "shaved? " 
  "\nby " Swee "ney " "Todd, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nSwing " "your " ra "zor " "wide, " Swee "ney, "
  "\nhold " "it " "to " "the " "skies! " 
  "\nFree" "ly " "flows " "the " "blood " "of " "those " "who " mor al "ize. " 
  "\nAh "  "Ah " 
  "\nFor " neat "ness " "he " de "serves " "a " "nod "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nSwee" "ney " wish "es " "a " "world " a "way, "
  "\nSwee" "ney's " weep "ing " "for " yes ter "day, "
  "\nhug" "ging " "the " "blade, " wait "ing " "the " "years, "

  "\nSwee" "ney " "waits " "in " "the " par "lour " "hall, "
  "\nSwee" "ney " "leans " "on " "the " of "fice " "wall. "

  "\nAt" "tend " "the " "tale " "of " Swee "ney " "Todd. "
  "\nHe " "served " "a " "dark " "and " "a " hun "gry " "God. "
  "\nTo " "seek " re "venge " "may " "lead " "to " "hell. "
  "\nBut " ev 'ry "one " "does " "it, " "if " sel "dom " "as " "well. " 
  "\nas " Swee "ney " "Todd, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "
}

wordsTenorMidiApart = \lyricmode {
  "No" "one " "can " "help, " no "thing " "can " "hide " "you. "
  "\nIs" "n't " "that " Swee "ney " "there " be "side " "you? "
  "\nNo" "one " "can " "help, " no "thing " "can " "hide " "you. "
  "\nIs" "n't " "that " See "ney " "there " be "side " "you? "
  "\nNo" "one " "can " "help, " no "thing " "can " "hide " "you. "
  "\nIs" "n't " "that " See "ney " "there " be "side " "you? "
  "\nSwee" "ny, " Swee "ny, " Swee "ny! " 
}

bassJoint = \relative {
  \global
  r4. | R2.*3 |
  R2.*4 |
  R2.*4 |
  R2. | R  R | r4._\markup BASS r4 d8 |
  g4 a8 bes4 g8 | a4 f8 g4. | R2. | r4. r4 d8 | % 3a
  g4 a8 bes a g | a4 f8 g4. | R2. | r4. r4 d8 |
  g4 a8 bes a g | a4 f8 g4 8  a bes a g f d |
  c8 d bes c4.~ | 4. r | R2. | R | % 4a
  r4. r4 ees8 | d4 bes8 c4. | R2. | r4. r4 d8 |
  c4 bes8 a bes g | a4-. r8 a4-. r8  R2. | R |
  R2. | r4. r4 d8  g4 a8 bes4 g8 | a4 f8 g4. | % 5a
  R2. | r4. r4 d8 | g4 a8 bes a g | a4 f8 g4. |
  R2.  r4. r4 g8 | a bes a g f d |
  c8 d bes c4.~ | c r | R2. | R | % 6a
  r4. r4 ees8 | d4 bes8 c4. | R2. | r4. r4 d8 |
  c4 bes8 a bes g | a4-. r8 a4-. r8 | R2. | R |
  bes'4. a | g fis | f2. | e4. d | bes' a | % 7a
  g4. fis | e2.( | ees) | bes'4. a | g fis |
  f4. f | e4. g | a8 g a~4.~ | 2.~ |
  a2.~ | 4. r4 d,8 | g4 a8 bes4 g8 | a4 f8 g4. | % 8a
  r4.^\markup "+TENOR" r | r r4 d8 | g4 a8 bes a g | a4 f8 g4. |
  r4. r | r r4 d8 | g4 a8 bes a g | a4 f8 g4 8 |
  a8^\markup "BASS only" bes a g f d | c d bes c4.~ | c r | r r4 s8 | % 9a
  s2. | s | r4. r4^\markup "BASS only" ees8 d4 bes8 c4. |
  R2. | r4. r4^\markup "ALL" d8 | c4 bes8 a bes g | a4-. r8 a4-. r8 |
  R2. | R \section \key ees \major | f'4 g8 aes g f | g4 aes8 bes4. | % 10a
  aes4 g8 f g ees | f4 d bes | c8 bes c c4 r8 |
  c bes c c4 r8 | R2. | R |
  f4 g8 aes g f | g4 aes bes | aes g8 f g ees | f4 des bes \section \key bes \major | % 11a
  R2.*18 |
  R2._\markup BASS | R | R | r4. r4 d8 | % 14a
  g4 a8 bes4 g8 | a4 f8 g4. | R2. | r4. r4 d8 |
  g4 a8 bes a g | a4 f8 g4. | R2. |
  r4. r4 d8 | g4 a8 bes4 g8 | a4 f8 g4 8 | % 15a
  a8 bes a g f d | c d bes c4.~ | c r | R2. |
  R2. | R | R | r4. r4 ees8 |
  d4 bes8 c4. | R2. | R | r4. r4 d8 | % 16a
  c4 bes8 a bes g | a4-. r8 r4. | r a4-. r8 | R2. |
  R2.*4 |
}

bassApart = \relative {
  \global
  r4.
  R2.*113 \break
  R2. | R | R | % 11b
  R2. | c4^\markup BASS d8 ees d c | d4 ees f |
  ees4 f8 g f ees | f4 g aes | g8 f g~g g(f) | % 12a
  g4. aes8 r r | g f g~g g(f) | g4. aes8 r r |
  g4. bes8 r r | c4. ees8 r r | d2.~ | % 13a
  d2. | d~ | d |
  R2.*34 |
}

wordsBass = \lyricmode {
  Swee -- ney wish -- es the world a -- way.
  Swee -- ney's weep -- ing for yes -- ter -- day.
  There he is, __ is __ Swee -- ney,
  There he is, __ is __ Swee -- ney.
  Swee -- ney, Swee -- ney, Swee -- ney! __
}

wordsBassMidiJoint = \lyricmode {
  "At" "tend " "the " "tale " "of " Swee "ney " "Todd. "
  "\nHis " "skin " "was " "pale " "and " "his " "eye " "was " "odd. "
  "\nHe " "shaved " "the " fac "es " "of " gen tle "men "
  "\nwho " nev "er " there af "ter " "were " "heard " "of " a "gain. " 
  "\ndid " Swee "ney " "Todd, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nHe " "kept " "a " "shop " "in " Lon "don " "town, "
  "\nof " fan "cy " cli "ents " "and " "good " re "nown. "
  "\nThey " "went " "to " "their " mak "er " im pec ca "bly " "shaved? " 
  "\nby " Swee "ney " "Todd, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nSwing " "your " ra "zor " "wide, " Swee "ney, "
  "\nhold " "it " "to " "the " "skies! " 
  "\nFree" "ly " "flows " "the " "blood " "of " "those " "who " mor al "ize. " 
  "\nHis " "needs " "were " "few, " "his " "room " "was " "bare: "
  "\na " la va "bo " "and " "a " fan "cy " "chair, "
  "\na " "mug " "of " "suds " "and " "a " leath "er " "strop, "
  "\nan " a "pron, " "a " tow "el, " "a " "pail, " "and " "a " "mop. " 
  "\ndoes " Swee "ney " "Todd, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "

  "\nSwee" "ney " wish "es " "a " "world " a "way, "
  "\nSwee" "ney's " weep "ing " "for " yes ter "day, "
  "\nhug" "ging " "the " "blade, " wait "ing " "the " "years, "

  "\nSwee" "ney " "waits " "in " "the " par "lour " "hall, "
  "\nSwee" "ney " "leans " "on " "the " of "fice " "wall. "

  "\nAt" "tend " "the " "tale " "of " Swee "ney " "Todd. "
  "\nHe " "served " "a " "dark " "and " "a " hun "gry " "God. "
  "\nTo " "seek " re "venge " "may " "lead " "to " "hell. "
  "\nBut " ev 'ry "one " "does " "it, " "if " sel "dom " "as " "well. " 
  "\nas " Swee "ney " "Todd, "
  "\nthe " de "mon " bar "ber " "of " "Fleet " "Street. "
}

wordsBassMidiApart = \lyricmode {
  "Swee" "ney " wish "es " "the " "world " a "way. "
  "\nSwee" "ney's " weep "ing " "for " yes ter "day. "
  "\nThere " "he " "is, "  "is "  Swee "ney, "
  "\nThere " "he " "is, "  "is "  Swee "ney. "
  "\nSwee" "ney, " Swee "ney, " Swee "ney! " 
}

wordsMen = \lyricmode {
  \repeat unfold 49 \skip 1
  He kept a shop in Lon -- don town,
  of fan -- cy cli -- ents and good re -- nown.
  \repeat unfold 54 \skip 1
  a la -- vo -- bo and a fan -- cy chair,
  a mug of suds and a leath -- er strop,
  an a -- pron, a tow -- el, a pail, and a mop. __
}

pianoRHone = \relative {
  \global
  r4. |
  <d'' g d'>4. <c g' c> |
  <d g d'>4. <bes d bes'> |
  <c g' c>2. |
  <aes d g>4. <bes d a'> | % 2b
  <d g d'>4. <c g' c> |
  <d g d'>4. <bes d bes'> |
  <c g' c>2.\fermata |
  a,8 bes a d-- a bes | a bes a d-- a bes | a bes a bes a bes | a bes a f'-- a, bes | % 2c
  a8 bes a d-- a bes | a bes a d-- a bes | a bes a bes a bes | a bes a f'-- a, bes |
  a8 bes a d-- a bes | a bes a d-- a bes | a bes a bes a bes | a bes a f'-- a, bes | % 3a
  a8 bes a d-- a bes | a bes a d-- a bes | a bes a bes a bes | a bes a f'-- a, bes |
  a8 bes a d-- a bes | a bes a d-- a bes | a bes a bes a bes |
  a8 bes a f'-- a, bes | a bes a d-- a bes | aes c aes d-- aes c | aes c aes d-- aes c | % 4a
  aes8 c aes f'-- aes, c | fis, c' fis, d'-- fis, c' | fis, c' fis, d'-- fis, c' | fis, c' fis, f'-- fis, c' |
  a8 bes a d-- a bes | a bes a d-- a b | a bes a bes a bes | a bes a fis'-- a, bes |
  a8 bes a d-- a bes | a bes a d-- a d | a bes a bes a bes | a bes a f'-- a, bes | % 5a
  a8 c a d-- a c | a c a d-- a c | a c a c a c | a c a f'-- a, c |
  a8 bes a d-- a bes | a bes a d-- a bes | a bes a bes a bes |
  a8 bes a f'-- a, bes | a bes a d-- a bes | a bes a bes a bes | aes c aes d-- aes c | % 6a
  aes8 c aes f'-- aes, c | fis, c' fis, d'-- fis, c' | fis, c' fis, f'-- fis, c' | fis, c' fis, ees'-- fis, bes |
  a8 bes a d-- a bes | a bes a d-- a bes | a bes a bes a bes | a bes d g-- a bes |
  <d, g d'>4. <c g' c> | % 7a
  <d g d'>4. <bes d bes'> |
  <c g' c>2. |
  <aes d g>4. <bes d a'> |
  <d g d'>4. <c f c'> |
  <d fis d'>4. <bes f' bes> | % 7b
  \voiceOne g'4. fis |
  <gis gis'>4.-> <b b'>-> |
  \oneVoice <d g d'>4. <c g' c> |
  <d g d'>4. <bes d bes'> |
  <c g' c>4. <bes g' bes> | % 7c
  <c g' c>4. <g c g'> |
  a,8 bes a d-- a bes |
  a8 bes a d-- a bes |
  a8 bes a bes a bes | a bes a f'-- a, bes | a bes a d-- a bes | a bes a d-- a bes | % 8a
  a8 bes a bes a bes | a bes a f'-- a, bes | a bes a d-- a c | a c a d-- a c |
  a8 c a c a c | a c a f'-- a, c | a bes a d-- a bes | a bes a d-- a bes |
  a8 bes a bes a bes | a bes a f'-- a, bes | a bes a d-- a bes | a bes a d-- a bes | % 9a
  aes8 c aes c aes c | aes c aes d'-- aes, c | aes c aes f'-- aes, c | fis, c' fis, d'-- fis, c' |
  fis,8 c' fis, d'-- fis, c'  fis, c' fis, f'-- fis, c' | a bes a d-- a bes  a bes a d-- a bes |
  a8 bes a bes a bes | a bes a f'-- a c \section \key ees \major | bes c ees bes' ees, d | c d ees bes' ees, d  % 10a
  bes8 c ees bes' ees, d | c d ees bes' ees, d | c g f d f g |
  c8 g f d f g  c g f d f g | c g f d f g |
  ees'8 f aes ees' aes, g |f g aes ees' aes, g | ees f aes ees' aes, g | f g aes ees' aes, g \section \key bes \major | % 11a
  d4. d8-. r r | d4. 8-. r r | 4. 8-. r r |
  d4. 8-. r r | <d g>4. 8-. r r q4. 8-. r r |
  q4. 8-. r r | 4. 8-. r r | <f g bes>4. 8-. r r | % 12a
  q4. 8-. r r | 4. 8-. r r | 4. 8-. r r |
  <f g c>4. 8-. r r | 4. 8-. r r | <g bes d> f q q f q | % 13a
  q8 f q q f q | q f q q f q | q f q q f q |
  q8-> r r r \clef bass d,,-> f-> | g-> f-> d-> g,-> d'-> g-> | g_\markup\italic sim. f d g, d' f | g f d g, d' f | % 14a
  g8 f d g, d' f | g f d g, d' f | <a d>4. <bes c> | <ges ees'> <f f'>8-> r r |
  g8 f d g, d' f | g f d g, d' f | <a d>4. <bes c> |
  <aes ees'>4. <ges f'>8-> r r \clef treble | <bes g'>4. <d bes'> | <c a'> <bes g'> | % 15a
  a8 bes a bes a bes | a bes a bes a bes | \voiceTwo a bes a bes a bes | a bes a bes a bes |
  \oneVoice aes c aes c aes c | \voiceTwo aes c aes c aes c | aes c aes c aes c | aes c aes c aes c |
  \oneVoice fis, c' fis, c' fis, c' | \voiceTwo \repeat unfold 3 {fis, c' fis, c' fis, c' } | % 16a
  \oneVoice a'8-.-> bes-.-> a-.-> d-.-> a-.-> bes-.-> | a-.-> bes-.-> a-.-> d-.-> a-.-> bes-.-> | a bes a d a bes | a bes a d a bes |
  a8 bes a d a bes | a bes a d r r | r4. a8-.-> bes-.-> d-.-> | <g, g'>8-.-> r r r4. |
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s4. s2.*66
  s2. | <c' c'>~ | q | s | s | % 7b
  s2.*76 |
  \partCombineApart \voiceOne c'4.^\markup\italic "(L.H. over)" 8-> r r | % 15b++
  d4. ees8-> r r |
  s2. | c4.^\markup\italic "(L.H. over)" bes8-> r r | d4. ees8-> r r | f4. aes8-> r r | 
  s2. | c,4.^\markup\italic "(L.H. over)" bes8-> r r | d4. ees | f aes8-> r r | % 16a
  s2.*8 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\ff s2.*7
  s2.\p | s | s | s | % 2c
  s2.*4 |
  s2.*19
  s2. | s\cresc | s | s | % 4c
  s2.\mp | s | s | s | % 5a
  s2.*15 |
  s2. | s\cresc | s | s\< | % 6c
  s2.\f | s | s | s | s | % 7a
  s2.*5 |
  s2. | s | s8\sfz s\omit\p-\markup{\italic sub. \dynamic p} s2 | s2. |
  s2. | s | s\mf | s | % 8a
  s2.*16 |
  s2. | s | s | s\decresc | % 9c
  s2. | s | s\mp | s | % 10a
  s2.*3 |
  s2.*3 |
  s2.\mf | s | s | s | % 11a
  s2.*9 |
  s2. | s | s\omit\cresc-\markup\italic "molto cresc." | % 12b
  s2. | s | s\ff | % 13a
  s2.*3 |
  s2.*4 | % 14a
  s2.\f | s | s | s |
  s2.*6 |
  s2.\decresc | s | s | s | % 15b
  s2.\p | s | s | s |
  s2.*4 | % 16a
  s2.\omit\ff-\markup{\italic sub. \dynamic ff} | s | s-\markup\italic sim. | s |
  s2. | s | s4. s\fff | s2. |
}

pianoLHone = \relative {
  \global
  r4. |
  <d' bes'>4. <d a'> |
  <d g>4. <d fis> |
  <d f>2. |
  <d e>4. <d fis> | % 2b
  <bes g'>4. <a f'> |
  <g fis'>4. <fis f'> |
  \arpeggioBracket <e c' g'>2.\arpeggio\fermata \arpeggioNormal |
  <g, d'>2.~ | q~ | q~ | q4. <ees bes' ees> | % 2c
  <g d'>2.~ | q~ | q~ | q4. <ees bes' ees> | % 2d
  \repeat unfold 2 {<g d'>2.~ | q~ | q~ | 4. <ees bes' ees> | } % 3a
  <g d'>2.~ | q | <ees bes' ees>2.~ |
  q2.~ | q | q~ | q~  % 4a
  q2. | <d a' d>2.~ | q~ | q |
  <f d'>2.~ | q~ | q~ | 4. <ees bes' ees> |
  \repeat unfold 2 {<g d'>2.~ | q~ | q~ | 4. <ees bes' ees> | } % 5a
  <g d'>2.~ | q | <ees bes' ees>2.~ |
  q2.~ | q~ | q | <ees d'>2.~ | % 6a
  q2. | <d a' d>2.~ | q~ | q |
  <g d'>2.~ | q~ | q~ | 4. <d d'> |
  \voiceOne r4. <d' a'> | <d g> <d fis> | <d f>2. | e4. <d fis> | <d bes'> <d a'> | % 7a
  <d g>4. <d fis> | <e g>2. | ees | <d' bes'>4. <d a'> | <d ees a> <d fis a> |
  <bes f' g>4. <a d f> | <g d' e> <g des' ees> | \oneVoice <g, d'>2.~ | q~ |
  q2.~ | 4. <ees bes' ees> | <g d'>2.~ | q~ | % 8a
  q2.~ | 4. <ees bes' ees> | <g d'>2.~ | q~ |
  q2.~ | 4. <ees bes' ees> | <g d'>2.~ | q |
  <ees bes' ees>2.~ | q~ | q~ | q | % 9a
  <ees d'>2.~ | q~ | q | <d a' d>2.~ |
  q2.~ | q | <g d'>~ | q~ |
  q2.~ | q \section \key ees \major \clef treble | aes''8 f ees bes ees f | aes f ees bes ees f | % 10a
  aes8 f ees bes ees f | aes f ees bes ees f \clef bass | c, g' bes c bes g |
  c,8 g' bes c bes g | c, g' bes c bes g | c, g' bes c bes g \clef treble |
  des''8 bes aes ees aes bes | des bes aes ees aes bes | des bes aes ees aes bes | des bes aes ees aes bes \section \key bes \major % 11a
  c8 bes g c-. r r | c bes g c-. r r | c bes g c-. r r |
  c8 bes g c-. r r | c bes g c-. r r | c bes g c-. r r |
  c8 bes g c-. r r | c bes g c-. r r | c bes g c-. r r | % 12a
  c8 bes g c-. r r | c bes g c-. r r | c bes g c-. r r |
  c8 bes g c-. r r | c bes g c-. r r \clef bass | R2. | % 13a
  d,4. cis | gis d | cis gis |
  g8-> f-> d-> g,-> d'-> f-> | g-> f-> d-> g,-> d'-> f-> | g_\markup\italic sim. f d g, d' f | g f d g, d' f | % 14a
  \repeat unfold 9 {g f d g, d' f}
  g8 fis d g4. | % 15a++
  <ees bes'>2.~ | q~ | q~ | q |
  <ees d'>2.~ | q~ | q~ | q |
  <d a' d'>2.~ | q~ | q~ | q | % 16a
  \repeat unfold 2 {a''8-.-> bes-.-> a-.-> d-.-> a-.-> bes-.->} | a bes a d a bes | a bes a d a bes |
  a8 bes a d a bes | a bes a d r r | r4. g,,8-.-> f-.-> d-.-> | <g, g'>8-.-> r r r4. |
}

pianoLHtwo = \relative {
  \global
  <g,, g'>4.->~ | q2.~ | q~ | q4. q~ |
  q2.~ | q~ | q~ | q\fermata |
  s2.*54 |
  <g g'>2.~ | q | 4. q~ | q2. | q | % 7a
  q2.~ | q~ | 4. q~ | 2.~ | q~ |
  q2.~ | q | s | s |
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoApart
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoApart
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorApart
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsTenor
            \new Voice \bassApart
            \addlyrics \wordsBass
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \partCombine #'(2 . 88) \sopranoJoint \altoJoint
            \new NullVoice = alignerSJ \sopranoJoint
            \new NullVoice = alignerAJ \altoJoint
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerSJ \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine #'(2 . 88) \tenorJoint \bassJoint
            \new NullVoice = alignerTJ \tenorJoint
            \new NullVoice = alignerBJ \bassJoint
            \addlyrics \wordsMen
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerTJ \wordsTenorAbove
          >>
          \new Lyrics \with {alignBelowContext = women} \lyricsto alignerSJ \wordsWomen
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoApart
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoApart
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorApart
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsTenor
            \new Voice \bassApart
            \addlyrics \wordsBass
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \partCombine #'(2 . 88) \sopranoJoint \altoJoint
            \new NullVoice = alignerSJ \sopranoJoint
            \new NullVoice = alignerAJ \altoJoint
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerSJ \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine #'(2 . 88) \tenorJoint \bassJoint
            \new NullVoice = alignerTJ \tenorJoint
            \new NullVoice = alignerBJ \bassJoint
            \addlyrics \wordsMen
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerTJ \wordsTenorAbove
          >>
          \new Lyrics \with {alignBelowContext = women} \lyricsto alignerSJ \wordsWomen
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
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
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \sopranoJoint
            \addlyrics \wordsSopMidiJoint
            \new Voice \sopranoApart
            \addlyrics \wordsSopMidiApart
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoJoint
            \new Voice \altoApart
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorJoint
            \new Voice \tenorApart
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsTenor
            \new Voice \bassJoint
            \new Voice \bassApart
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \sopranoJoint
            \new Voice \sopranoApart
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoJoint
            \addlyrics \wordsAltoMidiJoint
            \new Voice \altoApart
            \addlyrics \wordsAltoMidiApart
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorJoint
            \new Voice \tenorApart
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsTenor
            \new Voice \bassJoint
            \new Voice \bassApart
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \sopranoJoint
            \new Voice \sopranoApart
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoJoint
            \new Voice \altoApart
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorJoint
            \addlyrics \wordsTenorMidiJoint
            \new Voice \tenorApart
            \addlyrics \wordsTenorMidiApart
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsTenor
            \new Voice \bassJoint
            \new Voice \bassApart
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \sopranoJoint
            \new Voice \sopranoApart
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoJoint
            \new Voice \altoApart
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorJoint
            \new Voice \tenorApart
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsTenor
            \new Voice \bassJoint
            \addlyrics \wordsBassMidiJoint
            \new Voice \bassApart
            \addlyrics \wordsBassMidiApart
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
