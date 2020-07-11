\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Shenandoah"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "American Folk Song"
  arranger    = "Jeff Funk"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key ees \major
  \time 4/4
  \tempo 4=80
}

RehearsalTrack = {
  s1*2
  \mark \markup { \circle "2a" } s1*3
  \mark \markup { \circle "2b" } s1*3
  \mark \markup { \circle "3a" } s1*3
  \mark \markup { \circle "3b" } s1*3
  \mark \markup { \circle "3c" } s1*3
  \mark \markup { \circle "4a" } s1*3
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \circle "4c" } s1*3
  \mark \markup { \circle "5a" } s1*3
  \mark \markup { \circle "5b" } s1*3
  \mark \markup { \circle "5c" } s1*3
  \mark \markup { \circle "6a" } s1*3
  \mark \markup { \circle "6b" } s1*3
  \mark \markup { \circle "6c" } s1*3
  \mark \markup { \circle "7a" } s1*3
  \mark \markup { \circle "7b" } s1*3
  \mark \markup { \circle "7c" } s1*3
  \mark \markup { \circle "8a" } s1*3
  \mark \markup { \circle "8b" } s1*3
}

TempoTrack = {
%  \tempo 4 = 80
  s1*2
  s1 % 2a
  s1
  \tempo 4 = 72 s2. \tempo 4 = 24 s4
  \tempo 4=80 s1*52
  \tempo 4=72 s2 \tempo 4 = 24 s4 \tempo 4 = 72 s % 8b+
  s4 \tempo 4 = 42 s2.
}

soprano = \relative c' {
  \global
  s1*2
  R1*7
  r2 r4 bes^\mp % 2b+
  ees8 ees ees4~ees8 f g aes
  bes4 g2 ees'8(d) % 3a
  c2~c8 bes c bes
  g8 bes4.~bes4 bes
  c8 c c4~c8 g bes g % 3b
  f4 ees2 ees8(f)
  g2~g8 ees g c
  bes2. r8 ees, % 4a
  g8 g g4~g4. ees8
  f8 ees4.~ees2
  R1*7
  ees4.(f8 g2) % 5a+
  g4.(aes8 bes4) r8 ees,
  g8 g g4~g4. ees8 % 5b
  f8 ees4.~ees2
  r2 r4 bes4
  ees8^\markup \italic {poco a poco cresc.} ees ees4~ees8 f g aes % 5c
  bes4 g2 ees'8(d)
  c2~c8 bes c bes
  g8 bes4.~bes4 bes % 6a
  c8^\f c c4~c8 g bes g
  f4 ees2 ees8(f)
  g2~g8 ees g c % 6b
  bes2. r8 ees,
  g8^\markup \italic dim. g g4~g4. ees8
  f8 ees4.~ees2 % 6c
  R1
  R1
  r2 r4 bes^\mp % 7a
  ees8 ees ees4~ees8 f g aes
  bes4 g2 ees'8(d)
  c2~c8 bes c bes % 7b
  g8 bes4.~bes4 bes
  c8 c c4~c8 g bes g
  f4-- ees2-- ees8(f) % 7c
  g2~g8 ees g c
  bes2. r8 ees,
  g8 g g4~g4. ees8 % 8a
  f8 ees4.~ees2 \breathe
  g4.^\markup \italic {poco a poco dim} ees8 ees2
  g4. ees8 ees2 % 8b
  g4.^\markup \italic rit. ees8 ees4^\fermata d--^\p
  ees8 ees ees2.^\fermata
  \bar "|."
}

wordsSop = \lyricmode {
  O Shen- an- do', __
  I long to hear you,
  a- way, __ you rol- ling riv- er. __
  O Shen- an- do', __
  I long to see you,
  a- way, __ we're bound a- way,
  a- cross the wide __ Mis- sour- ri. __

  Oo, __ oo __
  a- cross the wide __ Mis- sou- ri. __
  'Tis sev- en years __ since I have seen you
  to hear __ your roll- ing riv- er. __
  O Shen- an- do', __ I long to see you.
  A- way, __ we're bound a- way,
  a- cross the wide __ Mis- sou- ri. __

  O Shen- an- do', __ I'll not for- get you.
  I'll dream __ of your clear wa- ters. __
  O Shen- an- do', __
  you're in my mem- 'ry.
  A- way, __ we're bound a- way,
  a- cross the wide __ Mis- sou- ri. __
  Shen- an- do',
  Shen- an- do',
  Shen- an- do',
  O Shen- an- do',
  
}

MwordsSop = \lyricmode {
  "O " Shen an "do', " 
  "\nI " "long " "to " "hear " "you, "
  "\na" "way, "  "you " rol "ling " riv "er. " 
  "\nO " Shen an "do', " 
  "\nI " "long " "to " "see " "you, "
  "\na" "way, "  "we're " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sour "ri. " 

  "\nOo, "  "oo " 
  "\na" "cross " "the " "wide "  Mis sou "ri. " 
  "\n'Tis " sev "en " "years "  "since " "I " "have " "seen " "you "
  "\nto " "hear "  "your " roll "ing " riv "er. " 
  "\nO " Shen an "do', "  "I " "long " "to " "see " "you. "
  "\nA" "way, "  "we're " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sou "ri. " 

  "\nO " Shen an "do', "  "I'll " "not " for "get " "you. "
  "\nI'll " "dream "  "of " "your " "clear " wa "ters. " 
  "\nO " Shen an "do', " 
  "\nyou're " "in " "my " mem "'ry. "
  "\nA" "way, "  "we're " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sou "ri. " 
  "\nShen" an "do', "
  "\nShen" an "do', "
  "\nShen" an "do', "
  "\nO " Shen an "do', "
  
}

alto = \relative c' {
  \global
  s1*2
  R1*7
  r2 r4 bes^\mp % 3a+
  ees8 ees ees4~ees8 f g aes
  bes4 g2 g8(bes) % 3b
  aes2~aes8 bes c bes
  g8 g4(f8 ees4) d
  ees8 ees ees4~ees8 ees g ees % 3c
  f4 ees2 r4
  r4 ees8(f) g2
  g4 f ees r8 ees % 4a
  g8 g g4~g4. ees8
  f8 ees4.~ees2
  R1*7
  ees4.(f8 g2) % 5a+
  g4.(aes8 bes4) r8 ees,
  g8 g g4~g4. ees8 % 5b
  f8 ees4.~ees2
  r2 r4 bes4
  ees8^\markup \italic {poco a poco cresc.} ees ees4~ees8 f g aes % 5c
  bes4 g2 g8(bes)
  aes2~aes8 bes c bes
  g8 g4(f8 ees4) d % 6a
  ees8^\f ees8 ees4(ees8) ees g ees
  f4 ees2 r4
  r4 ees8(f) g2 % 6b
  g4 f ees r8 ees
  ees8^\markup \italic dim. ees ees4~ees4. ees8
  f8 ees4.~ees2 % 6c
  R1
  R1
  r2 r4 bes4^\mp % 7a
  ees8 ees ees4~ees8 f g aes
  bes4 g2 g8(bes)
  aes2~aes8 bes c bes % 7b
  g8 g4(f8 ees4) d
  ees8 ees ees4~ees8 ees-- g-- ees--
  f4-- ees2-- r4 % 7c
  r4 ees8(f) g2
  g4 f ees r8 ees
  ees8 ees ees4~ees4. ees8 % 8a
  f8 ees4.~ees2 \breathe
  ees4.^\markup \italic {poco a poco dim.} bes8 c2
  ees4. bes8 c2 % 8b
  ees4.^\markup \italic rit. bes8 c4\fermata bes--^\p
  bes8 bes bes2.\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  O Shen- an- do', __
  I long to hear you,
  a- way, __ you rol- ling riv- er. __
  O Shen- an- do', __
  I long to see you,
  a- way, bound a- way,
  a- cross the wide __ Mis- sour- ri. __

  Oo, __ oo __
  a- cross the wide __ Mis- sou- ri. __
  'Tis sev- en years __ since I have seen you
  to hear __ your roll- ing riv- er. __
  O Shen- an- do', __ I long to see you.

  a- way, bound a- way,
  a- cross the wide __ Mis- sou- ri. __

  O Shen- an- do', __ I'll not for- get you.
  I'll dream __ of your clear wa- ters. __
  O Shen- an- do', __
  you're in my mem- 'ry.
  A- way, bound a- way,
  a- cross the wide __ Mis- sou- ri. __
  Shen- an- do',
  Shen- an- do',
  Shen- an- do',
  O Shen- an- do',
}

MwordsAlto = \lyricmode {
  "\nO " Shen an "do', " 
  "\nI " "long " "to " "hear " "you, "
  "\na" "way, "  "you " rol "ling " riv "er. " 
  "\nO " Shen an "do', " 
  "\nI " "long " "to " "see " "you, "
  "\na" "way, " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sour "ri. " 

  "\nOo, "  "oo " 
  "\na" "cross " "the " "wide "  Mis sou "ri. " 
  "\n'Tis " sev "en " "years "  "since " "I " "have " "seen " "you "
  "\nto " "hear "  "your " roll "ing " riv "er. " 
  "\nO " Shen an "do', "  "I " "long " "to " "see " "you. "

  "\na" "way, " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sou "ri. " 

  "\nO " Shen an "do', "  "I'll " "not " for "get " "you. "
  "\nI'll " "dream "  "of " "your " "clear " wa "ters. " 
  "\nO " Shen an "do', " 
  "\nyou're " "in " "my " mem "'ry. "
  "\nA" "way, " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sou "ri. " 
  "\nShen" an "do', "
  "\nShen" an "do', "
  "\nShen" an "do', "
  "\nO " Shen an "do', "
}

tenor = \relative c' {
  \global
  s1*2
  R1*18
  r2 r4 bes^\mf % 4b
  g8 g g4~g8 f g aes
  bes4 bes2 ees8(d)
  c2~c8 bes c bes % 4c
  g8 bes4.~bes4 bes
  c8 c c4~c8 g bes g
  f4 ees2 ees8(f) % 5a
  g2~g8 ees g c
  bes2. r8 ees,
  g8 g g4~g4. ees8 % 5b
  f8 ees4.~ees2
  R1
  g4.^\markup \italic {poco a poco cresc.} g8 bes4 bes % 5c
  g4. g8 g4 ees
  ees4. ees8 f4 f
  g4. g8 g4 bes % 6a
  c4.^\f c8 bes4 bes
  c4. c8 c4 \breathe c
  bes4. aes8 g2 % 6b
  bes4. bes8 c4 r8 c
  c8^\markup \italic dim. c c4~c4. c8
  c8 bes4.~bes2 % 6c
  R1
  R1
  r2 r4 bes4^\mp % 7a
  ees,8 ees ees4~ees8 f g aes
  bes4 g2 ees'8(d)
  c2~c8 bes c d % 7b
  ees8 ees4.~ees4 d
  c8 c c4~c8 g-- bes-- c--
  d4-- c2-- r4 % 7c
  bes4. aes8 g2
  bes4. bes8 c4 r8 c
  c8 c c4~c4. c8 % 8a
  c8 bes4.~bes2 \breathe
  bes4.^\markup \italic {poco a poco dim.} g8 aes2
  bes4. g8 aes2 % 8b
  bes4.^\markup \italic rit. g8 aes4^\fermata bes--^\p
  g8 g g2.^\fermata
  \bar "|."
}

wordsTenor = \lyricmode {
  O Shen- an- do', __
  I long to hear you,
  a- way, __ you rol- ling riv- er. __
  O Shen- an- do', __
  I long to see you,
  a- way, __ we're bound a- way,
  a- cross the wide __ Mis- sour- ri. __

  Shen- an- do- ah,
  Shen- an- do- ah,
  hear your roll- ing,
  roll- ing riv- er.
  Shen- an- do- ah,
  Shen- an- do',
  A- way, a- way, bound a- way,
  a- cross the wide __ Mis- sou- ri. __

  O Shen- an- do', __ I'll not for- get you.
  I'll dream of your clear wa- ters. __
  O Shen- an- do', __ you're in my mem- 'ry.
  'Way, a- way, bound a- way,
  a- cross the wide __ Mis- sou- ri. __
  Shen- an- do', Shen- an- do',
  Shen- an- do', O Shen- an- do'.
}

MwordsTenor = \lyricmode {
  "\nO " Shen an "do', " 
  "\nI " "long " "to " "hear " "you, "
  "\na" "way, "  "you " rol "ling " riv "er. " 
  "\nO " Shen an "do', " 
  "\nI " "long " "to " "see " "you, "
  "\na" "way, "  "we're " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sour "ri. " 

  "\nShen" an do "ah, "
  "\nShen" an do "ah, "
  "\nhear " "your " roll "ing, "
  "\nroll " ing riv "er. "
  "\nShen" an do "ah, "
  "\mShen" an "do', "
  "\nA" "way, " a "way, " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sou "ri. " 

  "\nO " Shen an "do', "  "I'll " "not " for "get " "you. "
  "\nI'll " "dream " "of " "your " "clear " wa "ters. " 
  "\nO " Shen an "do', "  "you're " "in " "my " mem "'ry. "
  "\n'Way, " a "way, " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sou "ri. " 
  "\nShen" an "do', " Shen an "do', "
  "\nShen" an "do', " "O " Shen an "do'. "
}

bass= \relative c {
  \global
  s1*2
  R1*18
  r2 r4 bes^\mf % 4b
  ees8 ees ees4~ees8 f g aes
  bes4 g2 g8(bes)
  aes2~aes8 bes c bes % 4c
  g8 g4.~g4 g
  aes8 aes aes4~aes8 g bes g
  f4 ees2 ees8(f) % 5a
  g2~ g8 ees g c
  bes2. r8 ees,
  g8 g g4~g4. ees8 % 5b
  f8 ees4.~ees2
  R1
  ees4.^\markup \italic {poco a poco cresc.} ees8 d4 d % 5c
  c4. c8 bes4 bes
  aes4. aes8 bes4 bes
  ees4. ees8 ees4 d % 6a
  c4.^\f c8 g'4 g
  aes4. aes8 aes4 \breathe aes
  g4. f8 ees2 % 6b
  g4. g8 g4 r8 g
  aes8^\markup \italic dim. aes aes4~aes4. aes8
  aes8 g4.~g2 % 6c
  R1
  R1
  r2 r4 bes,^\mp % 7a
  ees8 ees ees4~ees8 f g aes
  bes4 g2 g8(bes)
  aes2~aes8 bes c bes % 7b
  g8 g4.~g4 bes
  aes8 aes aes4~aes8 g-- bes-- c--
  d4-- c2-- r4 % 7c
  g4. f8 ees2
  g4. g8 g4 r8 g
  aes8 aes aes4~aes4. aes8 % 8a
  aes8 g4.~g2 \breathe
  ees4.^\markup \italic {poco a poco dim.} ees8 ees2
  ees4. ees8 ees2 % 8b
  bes4.^\markup \italic rit. bes8 aes4^\fermata bes--^\p
  ees8 ees ees2.^\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  O Shen- an- do', __
  I long to hear you,
  a- way, __ you rol- ling riv- er. __
  O Shen- an- do', __
  I long to see you,
  a- way, __ we're bound a- way,
  a- cross the wide __ Mis- sour- ri. __

  Shen- an- do- ah,
  Shen- an- do- ah,
  hear your roll- ing,
  roll- ing riv- er.
  Shen- an- do- ah,
  Shen- an- do',
  A- way, a- way, bound a- way,
  a- cross the wide __ Mis- sou- ri. __

  O Shen- an- do', __ I'll not for- get you.
  I'll dream of your clear wa- ters. __
  O Shen- an- do', __ you're in my mem- 'ry.
  'Way, a- way, bound a- way,
  a- cross the wide __ Mis- sou- ri. __
  Shen- an- do', Shen- an- do',
  Shen- an- do', O Shen- an- do'.
}

MwordsBass = \lyricmode {
  "\nO " Shen an "do', " 
  "\nI " "long " "to " "hear " "you, "
  "\na" "way, "  "you " rol "ling " riv "er. " 
  "\nO " Shen an "do', " 
  "\nI " "long " "to " "see " "you, "
  "\na" "way, "  "we're " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sour "ri. " 

  "\nShen" an do "ah, "
  "\nShen" an do "ah, "
  "\nhear " "your " roll "ing, "
  "\nroll" "ing " riv "er. "
  "\nShen" an do "ah, "
  "\nShen" an "do', "
  "\nA" "way, " a "way, " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sou "ri. " 

  "\nO " Shen an "do', "  "I'll " "not " for "get " "you. "
  "\nI'll " "dream " "of " "your " "clear " wa "ters. " 
  "\nO " Shen an "do', "  "you're " "in " "my " mem "'ry. "
  "\n'Way, " a "way, " "bound " a "way, "
  "\na" "cross " "the " "wide "  Mis sou "ri. " 
  "\nShen" an "do', " Shen an "do', "
  "\nShen" an "do', " "O " Shen an "do'. "
}

pianoRH = \relative c'' {
  \global
  s1*2
  ees8 ees ees4~ees8 f g aes % 2a
  bes4. d,8 ees2
  g8 g g4~g8 ees f4\fermata
  <g, ees'>4 <f d'>8 <g ees'> bes4. d8 % 2b
  q4 <f, d'>8 <g ees'> bes4 ees,8 f
  s1
  <f bes>4. <ees g>8~q2 % 3a
  <f bes>4. <ees g>8~q2
  <f bes>4. <ees g>8~q2
  <d bes'>4. <ees g>8~q2 % 3b
  <ees c'>4. s8 s2
  <f bes>4. <ees g>8~q4 <d bes'>
  <ees bes' c>4. <ees aes c>8~q4 g % 3c
  <d f bes>4. <ees g>8~q2
  <bes ees f>4. <bes ees g>8~q2
  <bes d f>4. <c ees g>8~q2 % 4a
  <aes c ees g>4. <aes c ees>8~q2
  <f' bes>4. <ees g>8~q2
  <f bes>4. <ees g>8q2 % 4b
  <g ees'>4 <f d'>8 <g ees'> bes2
  <g ees'>4 <f d'>8 <g ees'> bes2
  <ees, c'>4 <d bes'>8 <ees c'> aes2 % 4c
  <g bes>4 <f aes>8 <g bes> <ees g>2
  <ees c'>4 q8 <f d'> <g ees'>2
  <g bes d f>4.\arpeggio <g bes ees>8~q2 % 5a
  <ees g>4 q8 <f aes> <g bes>2
  <d bes'>4 g8 f <c ees>2
  <aes c ees g>4 <aes c>8 <bes d> <aes c ees>2 % 5b
  <g bes ees>8 q4 q8 q q4 q8
  q8 q4 q8 q q4 q8
  q8 q4 q8 <bes d f>8 q4 q8 % 5c
  <c ees g>8 q4 q8 <bes ees g> q4 q8
  <c ees aes>8 q4 q8 <d f bes> q4 q8
  <ees g bes>8 q4 q8 q4-- <f bes d>-- % 6a
  <g c ees>8 q4 q8 <g bes d> q4 q8
  <ees aes c>8 q4 q8 <c ees aes> q4 q8
  <bes ees g>8 q4 q8 <ees g bes> q4 q8 % 6b
  <d g bes>8 q4 q8 <c ees g bes> q4 q8
  <aes c ees g>8 q4 q8 <aes c ees> q4 q8
  <aes c f>8 <g bes ees>4. r8 g'8 bes ees % 6c
  <f, bes d>8-- c' q-- ees <g, bes d f>4 <d bes'>
  s2 <aes c ees>
  <aes c>8 <bes d> <c ees>2 <c ees aes bes>4-- % 7a
  <f bes>4. <ees g>8~q2
  <d bes'>4. <ees g>8~q2
  <ees c'>4. s8 s2 % 7b
  <f bes>4. <ees g>8~q4 <d bes'>
  <ees bes' c>4. <ees aes c>8~q4 g
  <d f bes>4. <ees g>8~q2 % 7c
  <bes ees f>2 <bes ees g>
  <bes d f>2 <c ees g>
  <aes c ees g>2 <aes c ees> % 8a
  <aes' g'>8(<g ees'>) <f d'>(<g ees'>) s2
  q4 <f d'>8 <g ees'> <aes c ees>2
  <g ees'>4 <f d'>8 <g ees'> <aes c ees>2 % 8b
  <ees g bes>4 <f aes>8 <g bes> <c, ees aes>4\fermata r4
  <g bes ees g>1\fermata
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  s1*2
  s1*5
  g8 bes g4~g8 ees f4 % 2b++
  s1*4
  s4. c'8~c2 % 3b+
  s1*30
  bes8 aes g f s2 % 6c++
  s1*3
  s4. c'8~c2 % 7b
  s1*6
  s2 <g bes>2\arpeggio % 8a+
  s1*4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s1*2
  s1*5
  <aes c ees>1
  s1*4
  s4. bes'8~(bes4 aes) % 3b+
  s1*30
  ees2 s % 6c++
  s1*3
  s4. bes'8~(bes4 aes) % 7b
  s1*6
  s2 f4(ees) % 8a+
  s1*4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1*2
  s1-\markup{\dynamic p \italic dolce}
  s1
  s1-\markup \italic {poco rit.}
  s1-\markup{\dynamic mp \italic {a tempo}} % 2b
  s1 * 15
  s1\mf % 20
  s1*10
  s1-\markup \italic {poco a poco cresc.} % 31
  s1*3
  s1\f % 35
  s1*3
  s1-\markup \italic dim. % 39
  s1
  s1\mf
  s1
  s4 s2.\>
  s1\mp
  s1*9
  s1-\markup \italic {poco a poco dim.} % 54
  s1
  s1-\markup \italic rit.
  s1\p
}

pianoLH = \relative c' {
  \global
  \oneVoice
  s1*2
  s1
  c8(ees g4) c,8(ees g4) % 2a+
  aes,4(<c ees>) bes(<d f>\fermata) \clef bass
  ees,,8_\markup{\italic{(with pedal)}} bes'4 g'8~g4 ees,8 d % 2b
  c8 g'4 ees'8~ees4 c,
  f2 bes
  ees,8 bes'4 g'8~g4 ees,8 d % 3a
  ees8 bes'4 g'8~g4 ees,8 d
  ees8 bes'4 g'8~g4 ees,8 d
  c8 g'4 ees'8(ees4) c, % 3b
  aes8 ees'4 c'8~c4 aes,
  ees'8 bes'4 g'8~g4 bes,
  aes,8 ees'4 c'8~c4 aes, % 3c
  c8 g'4 ees'8~ees4 c,
  ees8 bes'4 g'8~g4 ees,
  g8 d'4 c8~c4 c, % 4a
  f8 c'4 bes8~bes4 bes,
  ees8 bes'4 g'8~g4 ees,
  ees8 bes'4 g'8~g4 ees, % 4b
  ees8 bes'4 g'8~g4 ees,8 d
  c8 g'4 ees'8~ees4 c,
  aes8 ees'4 c'8~c4 aes, % 4c
  ees'8 bes'4 g'8~g4 ees,
  aes,8 ees'4 c'8~c4 aes,
  c8 g'4 ees'8~ees4 c, % 5a
  ees8 bes'4. g'4 ees,
  g8 d'4. c4 c,
  f8 c'4. bes4 bes, % 5b
  <ees bes'>1
  <ees, ees'>2 q4 bes'--
  ees4 ees' d d, % 5c
  c4 c' bes bes,
  aes4 aes' bes bes,
  ees4 ees' ees,-- d-- % 6a
  c4 c' g g,
  aes4 aes'2 <aes, aes'>4
  ees'4 ees'2 ees,4 % 6b
  g2 c,4 c'
  f,2 bes4 <bes, bes'>
  ees4. ees8 ees2 % 6c
  aes2 g
  c2 f,
  <bes, bes'>4. q8 q2 % 7a
  ees8 bes'4 g'8~g4 ees,
  c8 g'4 ees'8~ees4 c,
  aes8 ees'4 c'8~c4 aes, % 7b
  ees'8 bes'4 g'8~g4 <bes,, bes'>
  aes8 ees'4 c'8~c4 aes,
  c8 g'4 ees'8~ees4 c, % 7c
  ees8 bes'4. g'4 ees,
  g8 d'4. c4 c,
  f8 c'4. bes4(bes,--) % 8a
  ees8 bes'4 g'8~g2
  ees,8 bes'4 ees8 <ees, ees'>2
  ees8 bes'4 ees8 <ees, ees'>2 % 8b
  <bes bes'>4. q8 <aes aes'>4^\fermata r
  <ees ees'>1\p\fermata
  \bar "|."
}

pianoLHone = \relative c'' {
  \global
  \voiceOne
  s1*2
  <g bes>1\arpeggio
  s1*56
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \voiceTwo
  s1*2
  f4(ees d2)
  s1*56
  \bar "|."
}

\book {
  #(define output-suffix "single")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
          \new Voice = tempo \TempoTrack
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
%            \set Staff.midiInstrument = "choir aahs"
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
%            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
%            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
%            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  #(define output-suffix "acc")
  \score {
    \context GrandStaff <<
      <<
        \new Voice = tempo \TempoTrack
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "sop")
  \score {
    \context GrandStaff <<
        \new Voice = tempo \TempoTrack
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \MwordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "alto")
  \score {
    \context GrandStaff <<
        \new Voice = tempo \TempoTrack
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \MwordsAlto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "tenor")
  \score {
    \context GrandStaff <<
        \new Voice = tempo \TempoTrack
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \MwordsTenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "bass")
  \score {
    \context GrandStaff <<
        \new Voice = tempo \TempoTrack
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \MwordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}
\book {
  #(define output-suffix "soponly")
  \score {
    \context GrandStaff <<
        \new Voice = tempo \TempoTrack
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \MwordsSop
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "altoonly")
  \score {
    \context GrandStaff <<
        \new Voice = tempo \TempoTrack
      <<
        \new ChoirStaff <<
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \MwordsAlto
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "tenoronly")
  \score {
    \context GrandStaff <<
        \new Voice = tempo \TempoTrack
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \MwordsTenor
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "bassonly")
  \score {
    \context GrandStaff <<
        \new Voice = tempo \TempoTrack
      <<
        \new ChoirStaff <<
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \MwordsBass
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}
