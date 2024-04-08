\version "2.25.14"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lullabye"
  subtitle    = "(Goodnight, My Angel)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Billy Joel"
  arranger    = "Arr. Mac Huff"
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
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo Gently 4=75
  s1*4
  \set Score.tempoHideNote = ##t
  \tempo Simply 4=75
  s1*15
  \tempo 4=70 s1 \tempo "With movement" 4=75
  s1*15
  \tempo 4=70 s1 \tempo 4=75 s1*7
  \tempo 4=70 s1
  \tempo 4=75 % 5c
  s1*7 \tempo 4=70 s1 \tempo 4=75
  s1*4
  \tempo Slower 4=65 % 7a
  s1*3 s2 \tempo 4=60 s2 | s1*2 \tempo 4=30 | s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*4
  \textMark \markup { \box "1b" } s1*3
  \textMark \markup { \box "1c" } s1*3
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "5a" } s1*4
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "5c" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*4
}

dynamicsVocal = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s8 s\p s2. | s1*5 |
  s1*9 | % 2
  s1^\markup\italic rit. | s1\mf | s1*7 |
  s1\cresc | s1*5 | s1\dim | s^\markup\italic rit. | s^\markup\italic "a tempo" | % 4
  s1*3 | s1\mp | s1 | s1-\markup louder | s1^\markup\italic rit. | s8\p s2..^\markup\italic "a tempo" | s1*2 |
  s1*4 | s1^\markup\italic rit. | s^\markup\italic "a tempo" | s1*3 | % 6
  s8 s\pp s2. | s1*2 | s2 s^\markup\italic rit. | s1*3 |
}

soprano = \relative {
  \global
  R1*4 |
  r8^\markup Soprano _\markup Alto b' b a a b b c | 4. b8 2 | r8 a a a a g g fis |
  fis4. e8 2 | r8 b' b a a b b c | 4. b8 2 |
  r8 a a a a g g fis | 4. e8 2 | r8 c' c b b a a b | % 2a
  b4.(a8) 2 | r8 b b b b d4 g,8~ | 1 |
  r8 b b b b d4 g,8~ | g g g g g4 b8 e,~ | 8 8^\markup Unis. 8 d e4 g |
  e4. d8 4 r | r8 b' b a a b b c | 4. b8 2 | % 3a
  r8 a a a a g g fis | 4. e8 2 | r8 b' b a a b b c |
  c4. b8 2 | r8 a a a a g g fis | 4. e8 2 |
  r8 c' c b b a a b | 4.(a8) 2 | r8 b b b b d4 g,8~ | % 4a
  g1 | r8 b b b b d4 g,8~ | 8 8 8 8 4 b8 e,~ |
  e8 e^\markup Unis. e d e4 g | e4. d8 2 | R1 |
  R1*3 | r8 f f g aes4. g8 | % 5a
  f2 ees | r8 g g a bes4 a | g2(fis) |
  r8 b b a a b b c | 4. b8 2 | r8 a a a a g g fis |
  fis4. e8 2 | r8 b' b a a b b d | d c c b b a a4 | % 6a
  r8 a b c d4 b8 g | 4 a8 16 b a4. g8 | 1 |
  R1*3 |
  r8 b b a a b b d | d16 c c8~8 b b a a4 | r8 a b c d4 b8 g | % 7a
  g4. a16(b) a4. g8 | 1~ | 1~ | 1\fermata |
  \bar "|."
}

alto = \relative {
  \global
  R1*4 |
  r8_\markup Alto g' g ees ees g g ees | 4. d8 2 | r8 g g fis8 8 e e d |
  d4. c8 2 | r8 g' g ees ees g g ees | 4. d8 2 |
  r8 g g fis fis e e d | 4. cis8 2 | r8 e e d d e e e | % 2a
  g2 4(fis) | r8 g g g g g4 e8~ | 1 |
  r8 g g f f f4 e8~ | e e d c d4 8 8~ | 8 e e d cis4 4 |
  c4. d8 4 r | r8 g g ees ees g g ees | 4. d8 2 | % 3a
  r8 g g fis fis e e d | 4. c8 2 | r8 g' f ees ees g g ees |
  ees4. d8 2 | r8 g g fis fis e e d | 4. cis8 2 |
  r8 e e d d e e e | g2 4(fis) | r8 g g g g g4 e8~ | % 4a
  e1 | r8 g g f f f4 e8~ | 8 8 d c d4 8 8~ |
  d8 e e d cis4 4 | c4. d8 2 | R1 |
  R1*3 | r8 d d ees f4. ees8 | % 5a
  d2 4(c) | r8 e e fis g4 fis | e2(d) |
  r8 g g ees ees g g ees | 4. d8 2 | r8 g g fis fis e e d |
  d4. c8 2 | r8 g' g ees ees g g g | g e e g fis e e4 | % 6a
  r8 ees d ees g4 8 d | e4 8 16 16 g4(fis8) g | 1 |
  R1*3 |
  r8 b b a a b b d | 16 c c8~8 b b a a4 | r8 ees d ees g4 8 d | % 7a
  e4. 8 g4(fis8) g | g2 r4 b,8 d | d(c) c(f) f(ees) ees(d) | d1\fermata |
  \bar "|."
}

bass = \relative {
  \global
  R1*4 |
  r8^\markup Baritone d' d c c d d g, | 4. 8 2 | r8 c c c c b b a |
  a4. g8 2 | r8 d' d c c d d g, | 4. 8 2 |
  r8 c c c c b b a | 4. 8 2 | r8 a a b b c c c | % 2a
  d4.(c8) 2 | r8 d d d d a4 d8~( | 4. c8~2) |
  r8 d d d d b4 c8~ | 8 8 b a b4 g8 a~ | a g g g a4 4 |
  g4. fis8 4 r | r8 d' d c c d d g, | 4. 8 2 | % 3a
  r8 c c c c b b a | 4. g8 2 | r8 d' d c c d d g, |
  g4. 8 2 | r8 c c c c b b a | 4. 8 2 |
  r8 a a b b c c c | d4.(c8) 2 | r8 d d d d b4 d8~( | % 4a
  d4. c8~2) | r8 d d d d b4 c8~ | c c b a b4 g8 a~ |
  a8 g g g a4 a | g4. fis8 2 | R1 |
  R1*3 | b1~ | % 5a
  b2 g | a1~ | 1 |
  r8 d d c c d d g, | 4. 8 2 | r8 c c c c b b a |
  a4. g8 2 | r8 d' d c c d d b | b c c d d cis8 4 | % 6a
  r8 c b a b4 d8 b | cis4 8 16 16 c4. g8 | 1 |
  R1*3 |
  r8 b b a a b b d | 16 c c8~8 b b a a4 | r8 c b a b4 d8 b | % 7a
  cis4. 8 c4. g8 | 2 r4 g8 b | b(a) a(aes) aes(c) 4 | b1\fermata |
  \bar "|."
}

words = \lyricmode {
  Good -- night, my an -- gel time to close your eyes,
  and save these ques -- tions for an -- oth -- er day.
  I think I know what you've been ask -- ing me.
  I think you know what I've been trying to say.
  I prom -- ised I would nev -- er leave __ you, __
  and you should al -- ways know __
  where -- ev -- er you may go, __
  no mat -- ter where you are, __
  I nev -- er will be far a -- way.
  Good -- night my an -- gel, now it's time to sleep,
  and still so man -- y things I want to say.
  Re -- mem -- ber all the songs you sang for me
  when we went sail -- ing on an em -- 'rald bay.
  And like a boat out on the o -- cean, __
  I'm rock -- ing you to sleep. __
  The wa -- ter's dark and deep __
  in -- side this an -- cient heart __
  you'll al -- ways be a part of me.
  Loo loo loo loo loo loo loo, __
  loo loo loo loo loo loo. __
  Good -- night, my an -- gel, now it's time to dream,
  and dream how won -- der -- ful your life will be.
  Some -- day your child may cry.
  and if you sing this lull -- a -- bye,
  then in your heart there will al -- ways be a part __ of me.
  Some -- day we'll all be gone
  but lull -- a -- byes __ go on and on.
  They nev -- er die, that's how you and __ I __ \set associatedVoice = alignerA will be,
  that's how you __ and I __ will __ be.
}

wordsSop = \lyricmode {
  Good -- night, my an -- gel time to close your eyes,
  and save these ques -- tions for an -- oth -- er day.
  I think I know what you've been ask -- ing me.
  I think you know what I've been trying to say.
  I prom -- ised I would nev -- er leave __ you, __
  and you should al -- ways know __
  where -- ev -- er you may go, __
  no mat -- ter where you are, __
  I nev -- er will be far a -- way.
  Good -- night my an -- gel, now it's time to sleep,
  and still so man -- y things I want to say.
  Re -- mem -- ber all the songs you sang for me
  when we went sail -- ing on an em -- 'rald bay.
  And like a boat out on the o -- cean, __
  I'm rock -- ing you to sleep. __
  The wa -- ter's dark and deep __
  in -- side this an -- cient heart __
  you'll al -- ways be a part of me.
  Loo loo loo loo loo loo loo, __
  loo loo loo loo loo loo. __
  Good -- night, my an -- gel, now it's time to dream,
  and dream how won -- der -- ful your life will be.
  Some -- day your child may cry.
  and if you sing this lull -- a -- bye,
  then in your heart there will al -- ways be a part __ of me.
  Some -- day we'll all be gone
  but lull -- a -- byes __ go on and on.
  They nev -- er die, that's how you and __ I __ will be.
}

wordsSopMidi = \lyricmode {
  "Good" "night, " "my " an "gel " "time " "to " "close " "your " "eyes, "
  "\nand " "save " "these " ques "tions " "for " an oth "er " "day. "
  "\nI " "think " "I " "know " "what " "you've " "been " ask "ing " "me. "
  "\nI " "think " "you " "know " "what " "I've " "been " "trying " "to " "say. "
  "\nI " prom "ised " "I " "would " nev "er " "leave "  "you, " 
  "\nand " "you " "should " al "ways " "know " 
  "\nwhere" ev "er " "you " "may " "go, " 
  "\nno " mat "ter " "where " "you " "are, " 
  "\nI " nev "er " "will " "be " "far " a "way. "
  "\nGood" "night " "my " an "gel, " "now " "it's " "time " "to " "sleep, "
  "\nand " "still " "so " man "y " "things " "I " "want " "to " "say. "
  "\nRe" mem "ber " "all " "the " "songs " "you " "sang " "for " "me "
  "\nwhen " "we " "went " sail "ing " "on " "an " em "'rald " "bay. "
  "\nAnd " "like " "a " "boat " "out " "on " "the " o "cean, " 
  "\nI'm " rock "ing " "you " "to " "sleep. " 
  "\nThe " wa "ter's " "dark " "and " "deep " 
  "\nin" "side " "this " an "cient " "heart " 
  "\nyou'll " al "ways " "be " "a " "part " "of " "me. "
  "\nLoo " "loo " "loo " "loo " "loo " "loo " "loo, " 
  "\nloo " "loo " "loo " "loo " "loo " "loo. " 
  "\nGood" "night, " "my " an "gel, " "now " "it's " "time " "to " "dream, "
  "\nand " "dream " "how " won der "ful " "your " "life " "will " "be. "
  "\nSome" "day " "your " "child " "may " "cry. "
  "\nand " "if " "you " "sing " "this " lull a "bye, "
  "\nthen " "in " "your " "heart " "there " "will " al "ways " "be " "a " "part "  "of " "me. "
  "\nSome" "day " "we'll " "all " "be " "gone "
  "\nbut " lull a "byes "  "go " "on " "and " "on. "
  "\nThey " nev "er " "die, " "that's " "how " "you " "and "  "I "  "will " "be. "
}

wordsAlto = \lyricmode {
  Good -- night, my an -- gel time to close your eyes,
  and save these ques -- tions for an -- oth -- er day.
  I think I know what you've been ask -- ing me.
  I think you know what I've been trying to say.
  I prom -- ised I would nev -- er leave __ you, __
  and you should al -- ways know __
  where -- ev -- er you may go, __
  no mat -- ter where you are, __
  I nev -- er will be far a -- way.
  Good -- night my an -- gel, now it's time to sleep,
  and still so man -- y things I want to say.
  Re -- mem -- ber all the songs you sang for me
  when we went sail -- ing on an em -- 'rald bay.
  And like a boat out on the o -- cean, __
  I'm rock -- ing you to sleep. __
  The wa -- ter's dark and deep __
  in -- side this an -- cient heart __
  you'll al -- ways be a part of me.
  Loo loo loo loo loo loo loo, __
  loo loo loo loo loo loo. __
  Good -- night, my an -- gel, now it's time to dream,
  and dream how won -- der -- ful your life will be.
  Some -- day your child may cry.
  and if you sing this lull -- a -- bye,
  then in your heart there will al -- ways be a part __ of me.
  Some -- day we'll all be gone
  but lull -- a -- byes __ go on and on.
  They nev -- er die, that's how you and __ I __ will be,
  that's how you __ and I __ will __ be.
}

wordsAltoMidi = \lyricmode {
  "Good" "night, " "my " an "gel " "time " "to " "close " "your " "eyes, "
  "\nand " "save " "these " ques "tions " "for " an oth "er " "day. "
  "\nI " "think " "I " "know " "what " "you've " "been " ask "ing " "me. "
  "\nI " "think " "you " "know " "what " "I've " "been " "trying " "to " "say. "
  "\nI " prom "ised " "I " "would " nev "er " "leave "  "you, " 
  "\nand " "you " "should " al "ways " "know " 
  "\nwhere" ev "er " "you " "may " "go, " 
  "\nno " mat "ter " "where " "you " "are, " 
  "\nI " nev "er " "will " "be " "far " a "way. "
  "\nGood" "night " "my " an "gel, " "now " "it's " "time " "to " "sleep, "
  "\nand " "still " "so " man "y " "things " "I " "want " "to " "say. "
  "\nRe" mem "ber " "all " "the " "songs " "you " "sang " "for " "me "
  "\nwhen " "we " "went " sail "ing " "on " "an " em "'rald " "bay. "
  "\nAnd " "like " "a " "boat " "out " "on " "the " o "cean, " 
  "\nI'm " rock "ing " "you " "to " "sleep. " 
  "\nThe " wa "ter's " "dark " "and " "deep " 
  "\nin" "side " "this " an "cient " "heart " 
  "\nyou'll " al "ways " "be " "a " "part " "of " "me. "
  "\nLoo " "loo " "loo " "loo " "loo " "loo " "loo, " 
  "\nloo " "loo " "loo " "loo " "loo " "loo. " 
  "\nGood" "night, " "my " an "gel, " "now " "it's " "time " "to " "dream, "
  "\nand " "dream " "how " won der "ful " "your " "life " "will " "be. "
  "\nSome" "day " "your " "child " "may " "cry. "
  "\nand " "if " "you " "sing " "this " lull a "bye, "
  "\nthen " "in " "your " "heart " "there " "will " al "ways " "be " "a " "part "  "of " "me. "
  "\nSome" "day " "we'll " "all " "be " "gone "
  "\nbut " lull a "byes "  "go " "on " "and " "on. "
  "\nThey " nev "er " "die, " "that's " "how " "you " "and "  "I "  "will " "be, "
  "\nthat's " "how " "you "  "and " "I "  "will "  "be. "
}

wordsSopAbove = \lyricmode {
  \repeat unfold 234 \skip 1
  be. __
}

wordsBass = \lyricmode {
  Good -- night, my an -- gel time to close your eyes,
  and save these ques -- tions for an -- oth -- er day.
  I think I know what you've been ask -- ing me.
  I think you know what I've been trying to say.
  I prom -- ised I would nev -- er leave __ you, __
  and you should al -- ways know __
  where -- ev -- er you may go, __
  no mat -- ter where you are, __
  I nev -- er will be far a -- way.
  Good -- night my an -- gel, now it's time to sleep,
  and still so man -- y things I want to say.
  Re -- mem -- ber all the songs you sang for me
  when we went sail -- ing on an em -- 'rald bay.
  And like a boat out on the o -- cean, __
  I'm rock -- ing you to sleep. __
  The wa -- ter's dark and deep __
  in -- side this an -- cient heart __
  you'll al -- ways be a part of me.
  Loo loo loo. __
  Good -- night, my an -- gel, now it's time to dream,
  and dream how won -- der -- ful your life will be.
  Some -- day your child may cry.
  and if you sing this lull -- a -- bye,
  then in your heart there will al -- ways be a part __ of me.
  Some -- day we'll all be gone
  but lull -- a -- byes __ go on and on.
  They nev -- er die, that's how you and __ I __ will be,
  that's how you __ and I __ will __ be.
}

wordsBassMidi = \lyricmode {
  "Good" "night, " "my " an "gel " "time " "to " "close " "your " "eyes, "
  "\nand " "save " "these " ques "tions " "for " an oth "er " "day. "
  "\nI " "think " "I " "know " "what " "you've " "been " ask "ing " "me. "
  "\nI " "think " "you " "know " "what " "I've " "been " "trying " "to " "say. "
  "\nI " prom "ised " "I " "would " nev "er " "leave "  "you, " 
  "\nand " "you " "should " al "ways " "know " 
  "\nwhere" ev "er " "you " "may " "go, " 
  "\nno " mat "ter " "where " "you " "are, " 
  "\nI " nev "er " "will " "be " "far " a "way. "
  "\nGood" "night " "my " an "gel, " "now " "it's " "time " "to " "sleep, "
  "\nand " "still " "so " man "y " "things " "I " "want " "to " "say. "
  "\nRe" mem "ber " "all " "the " "songs " "you " "sang " "for " "me "
  "\nwhen " "we " "went " sail "ing " "on " "an " em "'rald " "bay. "
  "\nAnd " "like " "a " "boat " "out " "on " "the " o "cean, " 
  "\nI'm " rock "ing " "you " "to " "sleep. " 
  "\nThe " wa "ter's " "dark " "and " "deep " 
  "\nin" "side " "this " an "cient " "heart " 
  "\nyou'll " al "ways " "be " "a " "part " "of " "me. "
  "\nLoo " "loo " "loo. " 
  "\nGood" "night, " "my " an "gel, " "now " "it's " "time " "to " "dream, "
  "\nand " "dream " "how " won der "ful " "your " "life " "will " "be. "
  "\nSome" "day " "your " "child " "may " "cry. "
  "\nand " "if " "you " "sing " "this " lull a "bye, "
  "\nthen " "in " "your " "heart " "there " "will " al "ways " "be " "a " "part "  "of " "me. "
  "\nSome" "day " "we'll " "all " "be " "gone "
  "\nbut " lull a "byes "  "go " "on " "and " "on. "
  "\nThey " nev "er " "die, " "that's " "how " "you " "and "  "I "  "will " "be, "
  "\nthat's " "how " "you "  "and " "I "  "will "  "be. "
}

wordsBassBelow = \lyricmode {
  \repeat unfold 150 \skip 1
  Loo __ loo, loo. __
}

pianoRHone = \relative {
  \global
  r8 <d' g b> q <c ees a> q <d g b> q <d e g> |
  <d e g>2\arpeggio <g, c e> |
  r8 <d' g b> q <c ees a> q <d g b> q <d e g> |
  <d e g>2\arpeggio <g, c e>4 c16 d e8 |
  r8 <d g b> q <c ees a> q <d g b> q <ees g c> | % 1b
  <ees g c>4. <ees g b>8 2 |
  r8 <c g' a> q <c fis a> q <b e g> q <a d fis>
  <a d fis>4. e'8 <g, c e>2 | % 1c
  r8 <d' g b> q <c ees a> q <d g b> q <e g c> |
  <ees g c>4. <d g b>8 2 |
  r8 <c g a> q <c fis a> q <b e g> q <a d fis> | % 2a
  <a d fis>4. e'8 <a, cis e>4. a'16 b |
  c8 <e, g c> q <d g b> q <e g a> q <e g b> |
  \vo b'4. a8 <d, a'>2 | % 2b
  \ov r8 <d g b> q q q d'4 <d, g>8^~ |
  \vo g1 |
  \ov r8 <d g b> q <d f b> q d'4 <e, g>8~ | % 2c
  q8 8 <d g> <e g> <d g>4 b'8 <a, d e>~ |
  8 <g e'> q d' <a cis e>4 <cis g'> |
  <g c e>4. d'8 <fis, d'>4 <e c'> | % 3a
  r8 <d' g b> q <c ees a> q <d g b> q <e g c> |
  <ees g c> c <ees c'> <d b'> q d g b |
  r8 <c, g' a> <c g'> <c fis a> q <b e g> q <a d fis> | % 3b
  <a d fis> a16 d fis8 <c e> <g c e>4 e'16 fis g8 |
  r8 <d g b> q <c ees a> q <d g b> q <ees g c> |
  <ees g c>8 c <ees c'> <d b'> q d g b | % 3c
  r8 <c, g' a> q <c fis a> q <b e g> q <a d fis> |
  <a d fis>8 a16 d fis8 e <cis e>4 e16 fis g a |
  r8 <e g c> q <d g b> q <e g a> q <e g b> | % 4a
  <d g b>8 d g a a d, fis a |
  r8 <d, g b> q q q d'4 <d, g>8^~ |
  \vo g2 s \ov | % 4b
  r8 <d g b> q <d f b> q d'4 <c, e g>8~ |
  q8 8 <b d g> <a e' g> <fis d' g>4 b'8 <a, d e>~ |
  q8 <g e'> q d' <a cis e>4 <cis g'> | % 4c
  e8 g, c d <fis, d'>4 <fis' d'>\arpeggio |
  r8 <bes, d g> q <c f a> q <d f bes> q <c f a> |
  <c f a> <bes d g> q <a c g'> q <a d fis> q4 | % 5a
  r8 <bes d g> q <c f a> q <d f bes> q <c f a> |
  q8 <bes d g> q <a c g'> q <a d fis> q4 |
  r8 <b d f> q <ees g> <b f' aes>4. <ees g>8 |
  <d f>8 g, b d <d ees> g, c ees | % 5b
  r8 <cis e g> q <fis a> <c g' bes>4 <f a> |
  <e g>8 a, c g' <d fis>4 <fis, c'> |
  r8 <d' g b> q <c ees a> q <d g b> q <ees g c> | % 5c
  <ees g c>4. <d g b>8 2 |
  r8 <c g' a> q <c fis a> q <b e g> q <a d fis> |
  <a d fis>4. <g c e>8 2 | % 6a
  r8 <d' g b> q <c ees a> q <d g b> q <d b' d> |
  q8 <c g' c> q <d g b> <d f b> <e a>8 4 |
  r8 <c ees a> <d g b> <e g c> <d g d'>4 b'8 g | % 6b
  <cis, e g>4 <cis e a> \vo <c a'>4. g'8 |
  \ov r8 <d g b> q <c ees a> q <d g b> q <d e g> |
  <d e g>2\arpeggio <g, c e> | % 6c
  r8 <d' g b> q <c ees a> q <d g b> q <d e g> |
  <d e g>2\arpeggio <g, c e>4 c16 d e8 |
  r8 <d g b> q <c ees a> q <d g b> q <d g d'> | % 7a
  <d g d'>16 c' <c, g' c>8~8 <d g b> q <e a>8 4 |
  r8 <c ees a> <d g b> <ees g c> <d g d'>4 <d b'>8 <b g'> |
  <cis e g>4 <g cis e> \vo <c a'>4. g'8 | % 7b
  \lh r8 <d, g b> q <c ees a> q <d g b> q <f g d'> |
  q8 <e g c> q <aes c f> q <a c ees> q <a c d> |
  <g b d>1\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s1*10 |
  s1*3 | % 2a
  <d' g>2 g4(fis) | % 2b
  s2.. \once\hideNotes d8~ |
  d4. c8~2 |
  s1*3 | % 2c
  s1*9 | % 3
  s1 | s | s2.. \once\hideNotes d8~ | % 4a
  d8 e d c~ \ov c d e g \vt | s1 | s |
  s1*3 |
  s1*10 | % 5
  s1*3 | % 6a
  s1 | s2 g4(d8) g | s1 |
  s1*3 |
  s1*3 | % 7a
  s2 g4(fis8) g8 | s1*3 |
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s | s\mf | s2 s\dim | s1\p | s1*5 |
  s1*9 | % 2
  s1-\markup\italic rit. | s\mf | s1*7 |
  s1\cresc | s1*5 | s1\dim | s-\markup\italic rit. | % 4
  s8 s\omit\mp-\markup{\column {\dynamic mp \italic "a tempo"}} s2.\< |
  s1\> | s8 s\p s2.\< | s1\> | s\! | s1*2 | s1-\markup\italic rit. | s8\p s2..-\markup\italic "a tempo" | s1*2 |
  s1*4 | s1-\markup\italic rit. | s-\markup\italic "a tempo" | s | s\mf | s\dim | % 6
  s1\pp | s | s | s2 s-\markup\italic "a tempo" | s1 | s2\< s\> | s1\! |
}

pianoLH = \relative {
  \global
  g,2. 8 c |
  c,2. 4 |
  \vo r8 g'' g ees ees d d <c, c'> | \ov
  q2. c'4 |
  g1~ | 2. 4 | d'2 e4. c8 | % 1b
  c2. c,4 | g'1~ | 2. 4 |
  d'2 e | a,2. e'4 | a,4. b8 b c c c | % 2a
  d4. c8 2 | g'4. f8~4. e8~ | 2. 4 |
  d4. g,8~4. c8~ | 4. 8 b4. a8~ | 4. e'8 a,2 |
  d2 d, | g,4. g'8 4. 8 | 2. 4 | % 3a
  d4. 8 e4. c8 | 2. 4 | g4. g'8 4. 8 |
  g2. 4 | d4. 8 e4. 8 | a,2 a'4 8 e |
  a,4. b8 8 c c4 | d4. c8 2 | g'4. f8 4 8 e~ | % 4a
  e2 e'4 e, | d4. g8 4 8 c,~ | 4. 8 b4 8 a~ |
  a4. 8 a'4 e | d4. 8 4. 8 | g, g' g f f bes, bes f' |
  f8 g g ees ees d8 4 | g,8 g' g f f bes, bes f' | f g g ees ees d8 4 | g4. 8 4. 8 | % 5a
  g2 c,4 c' | a4. 8 a,4. a'8 | d,1 |
  g'2. 4 | 2. 4 | d2 e4. c8 |
  c2. 4 | g'4. 8 4. f8 | f e e d d cis8 4 | % 6a
  c4 b8 a b4. 8 | a4. 8 d4 d, | g2. 8 c |
  c,2. 4 | % 6c
  <<{\vo r8 g'' g ees ees d d <c, c'>8~} \new Voice {\vt g2. r4}>> \ov |
  <c c'>2. c'4 |
  g2.~8 f' | f e4 d8 d cis8 4 | c,8 c' b a b2 | % 7a
  a4. 8 d,2 | \vt g,2.~8 g'~ | 4. 8~2 | g,1\fermata |
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVocal
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerA \alto
            \new NullVoice = alignerS \soprano
            \addlyrics \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \wordsBassBelow
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVocal
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerA \alto
            \new NullVoice = alignerS \soprano
            \addlyrics \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \wordsBassBelow
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Baritone staff
          \new Staff = bass \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Baritone staff
          \new Staff = bass \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Baritone staff
          \new Staff = bass \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \paper {
    output-suffix = singlepage-bar
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Baritone staff
          \new Staff = bass \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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

\book {
  \paper {
    output-suffix = midi-sop
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsVocal
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \new Voice \alto
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsVocal
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
    output-suffix = midi-alto
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsVocal
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsVocal
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
    output-suffix = midi-bar
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsVocal
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \new Voice \alto
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsVocal
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
