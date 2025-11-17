\version "2.25.29"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Toward the Unknown Region"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "R. Vaughan Williams"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Walt Whitman"
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
  \set Score.tempoHideNote = ##t
  \once \set Score.tempoHideNote = ##f \tempo "Grave ma non troppo" 4=50
  s1*21 | \tempo \markup{\rhythm { 4 } = \rhythm { 4 } } 4=50 s1. |
  s1*2 | s2 | s1*3 | s1. | s1*16 | \tempo "a tempo" 4=50 |
  s1*9 | s1. | s1*3 | s1. |
  \tempo "Tempo del Comencio" 4=50 s1*2 |
                                % 8
  s1*6 | s2 \tempo "Pochettino Animando" s | s1*12 |
  \once\set Score.tempoHideNote = ##f \tempo "Poco piú animato" 4=72 s1*2
  \tempo Allargando 4=72 s1 | \tempo "a tempo" 4=72
  s1*14 | \tempo "Grave (rather slower than Tempo I.)" 4=48 s1*13 |
                                % 15
  \tempo "Poco animado" 4=55 s1*6 |
  \once \set Score.tempoHideNote = ##f
  \tempo "Maestoso moderato." 4=108 s1*4 \tempo 4=90 s1 \tempo 4=108 s1
  \tempo Maestoso 4=80 s1*5
                                % 17
  \tempo "Poco animando." 4=85 s1*9 | \tempo "Poco animando." 4=90 s1*13 |
  \tempo "Poco animando" 4=95 s1*7 |
  \tempo "sempre animando" 4=100 s1*24 |
  \tempo \markup{"molto sostenuto(" \rhythm {4} = \rhythm {2} ") of preceding"} 2=100
  s1*7 |
  \once\set Score.tempoHideNote = ##f
  \tempo "Moderato deciso." 4=100 s1*11 |
  \tempo allargando 4=100 s1 \tempo "a tempo" 4=100 s1*9 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s1*6
  \textMark \markup { \box "2b" } s1*4
  \textMark \markup { \box "2c" } s1
  \mark \markup\circle\bold A s1*3
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*3
  \mark \markup\circle\bold B s1.
  \textMark \markup { \box "4a" } s1*2 s2 s1*2
  \textMark \markup { \box "4b" } s1 s1.
  \mark \markup\circle\bold C s1*2
  \textMark \markup { \box "5a" } s1*4
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1
  \mark \markup\circle\bold D s1*4
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" } s1*2
  \mark \markup\circle\bold E s1.
  \textMark \markup { \box "7c" } s1*3
  \textMark \markup { \box "7d" } s1. s1*2
  \textMark \markup { \box "8a" } s1*4
  \textMark \markup { \box "8b" } s1*2
  \mark \markup\circle\bold F s1*2
  \textMark \markup { \box "9a" } s1*3
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1
  \mark \markup\circle\bold G s1*3
  \textMark \markup { \box "11a" } s1*2
  \textMark \markup { \box "11b" } s1*3
  \mark \markup\circle\bold K s1
  \textMark \markup { \box "12a" } s1*3
  \textMark \markup { \box "12b" } s1*4
  \mark \markup\circle\bold L
  \textMark \markup { \box "13a" } s1*5
  \textMark \markup { \box "13b" } s1*3
  \textMark \markup { \box "14a" } s1*2
  \mark \markup\circle\bold M s1
  \textMark \markup { \box "14b" } s1*4
  \textMark \markup { \box "15a" } s1*3
  \textMark \markup { \box "15b" } s1*3
  \textMark \markup { \box "16a" } s1*5
  \textMark \markup { \box "16b" } s1*5
  \mark \markup\circle\bold O s1
  \textMark \markup { \box "17a" } s1*4
  \textMark \markup { \box "17b" } s1*3
  \textMark \markup { \box "18a" } s1*2
  \mark \markup\circle\bold P s1
  \textMark \markup { \box "18b" } s1*2
  \textMark \markup { \box "19a" } s1*2
  \textMark \markup { \box "19b" } s1*2
  \textMark \markup { \box "20a" } s1*2
  \textMark \markup { \box "20b" } s1
  \mark \markup\circle\bold Q s1
  \textMark \markup { \box "21a" } s1*3
  \textMark \markup { \box "21b" } s1*4
  \textMark \markup { \box "22a" } s1*3
  \mark \markup\circle\bold R s1
  \textMark \markup { \box "22b" } s1*4
  \textMark \markup { \box "23a" } s1*4
  \mark \markup\circle\bold S s1
  \textMark \markup { \box "23b" } s1*5
  \textMark \markup { \box "24a" } s1*3
  \textMark \markup { \box "24b" } s1*2
  \mark \markup\circle\bold T
  \textMark \markup { \box "25a" } s1*3
  \textMark \markup { \box "25b" } s1*3
  \textMark \markup { \box "26a" } s1*4
  \textMark \markup { \box "26b" } s1*5
  \mark \markup\circle\bold V
  \textMark \markup { \box "27a" } s1*5
  \textMark \markup { \box "27b" } s1*2
  \mark \markup\circle\bold W s1*3
  \textMark \markup\box "27c" s1*6
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*11 | s1\omit\p-\markup{\dynamic p \italic sostenuto} | s2. s4\> | s1\! |
  s1*4 | s2.\> s4\! | s1*2 | s1. | % 3
  s1*2 | s4 s\omit\pp-\markup{\dynamic pp \italic misterioso} | s1*3 | s4 s2.\pp s4\> s\! | s1 | s2. s4\p |
  s1*2 | s2 s8 s4.\omit\mp-\markup{\dynamic mp \italic cantabile} | s4 s2\> s4\p | s1*2 | s2. s4\mf | s\< s2.\! |
  s1 | s4\> s2.\! | s4. s8\p s2 | s2.. s8\p | s2. s4-\markup\italic "poco smorz." | s1 | s4 s2.\omit\p-\markup{\dynamic p \italic sostenuto} | s1\pp | s % 6
  s2 s\pp | s s\> | s1\! | s1*3 | s1. | s1*3 | s1. | s1*2 |
  s1 | s\pp | s2 s4.\omit\p-\markup{\dynamic p \italic sostenuto} s8\> | s1\! | s | s2. s4\< | s\> s2.\! | s1 |
  s1\p | s | s2.\omit\mf-\markup{\dynamic mf \italic cantabile} s4\> | s2\! s\mf | s1 | s2 s\< | % 9
  s2\! s\> | s1\pp | s | s2\mf\< s\> | s1\omit\p-\markup{\dynamic p \italic allargando} | s4 s2.\ppp | s1 |
  s1*2 | s2 s\ppp | s1 | s2.\< s4\! | s2\> s\! |
  s1 | s8 s\< s2\> s4\! | s4.\> s8\! s2 | s2 s\omit\mf-\markup{\dynamic mf \italic "parlando (dark tone)"} | s1*3 | % 12
  s1*4 | s1\omit\pp-\markup{\dynamic pp \italic teneramente} s2. s4\cresc | s1*2 |
  s4 s2.\omit\f-\markup{\italic poco \dynamic f} | s4 s\> s2\p | s1 | s\p | s\cresc | s1*2 |
  s1 | s\f | s1*2 | s4 s2.\f | s1\< | % 15
  s4\! s2.\omit\ff-\markup{\dynamic ff \italic brillante} | s1*2 | s2.\< s4\! | s1\omit\ff-\markup{\dynamic ff \italic "molto allarg."} | s1-\markup\italic "a tempo" | s1*2 | s1\omit\mf-\markup{\dynamic mf \italic legato} | s1*2 |
  s1*4 | s1\omit\mf-\markup{\dynamic mf \italic cantabile} | s1*2 |
  s1*4 | s1\omit\f-\markup{\dynamic f \italic risoluto} | % 18
  s1*3 | s2 s4\< s\! |
  s1-\markup\italic espr. | s1 | s1\cresc| s |
  s1\omit\ff-\markup{\dynamic ff \italic espr.} | s4.\> s8\! s2 | s2 s2*2/3\omit\mf-\markup{\dynamic mf \italic espr.} s2*1/3\cresc | s1 | s4*8/3\< s4*4/3\! | s1*2 | % 21
  s1 | s\f | s | s\f | s | s4 s2.\< | s1\! | s |
  s1\ff | s1*3 | s1\omit\f-\markup{\dynamic f \italic risoluto.} | s2. s4\< | s1\! | s1*3 |
  s2 s\f | s4.\< s8\! s2\> | s1\ff | s | s4 s2.\< | % 24
  s1\! | s | s2 s\fff\< | s2.\! s4\< | s1\! | s |
  s2 s\< | s1\! | s1*4 | s2\f s\< | s1\! | s |
  s2\f s\< | s1\! | s1*2 | s2..\< s8\! | s1\ff | s\omit\ff\omit\cresc-\markup{\dynamic ff \italic "molto cresc"} | s\fff | s\< | s\! | s1*6 | % 27
}

soprano = \relative {
  \global
  R1*10 |
  R1 | a'4 8 8 f4 g | a2\(d4\) c8 c | f,4. g8 a4 a |
  d,4 \tuplet 3/2 {8(e f)} g4 g | r2 g4 a8 g | bes4 2 a8 g | a2 d,4 e8 f | % 3a
  g2. a4 | d,4 4 r2 | R1 \time 3/2 | R1. \time 4/4 |
  R1*2 \time 2/4 | r4 a' \time 4/4 | gis4-- 2-- r4 | r2 r4 a-- | % 4a
  gis2-- r \time 3/2 | r4 fis4 2 4 4 \section \time 4/4 \key c \major | R1 | r2 r4 <d fis> |
  q2 <d g> | d1 | r2 r8 b' d fis | e(fis d2) d,4 | % 5a
  d2. <fis a>4 | 2. <e g>4 | <ees c'>4. <d bes'>8 4 bes' | d f ees2~ |
  ees1~ | 8 d8 2.~ | 8 r r g, c r r4 | r2 r4 r8 b | % 6a
  a4 r r a | gis8 a e4 r2 | r4 a b cis | <c e>1 | R |
  r2 ees | ces2 2 | 2 r | R1 | % 7a
  R1*2 | R1. | R1*3 | R1. \section \key f \major | R1*2 |
  R1 | a4 8 8 f4 g | a2 d4 c8 8 | f,4. g8 a4~8 r | % 8a
  <<{\vt r2 g4. 8 | 2 2~ | 4 fis g r4}
    \new Voice {\vo r2 g4. 8 | 2 a4 bes8(c) d4~8 r8 r2}>> | \ov R1 |
  g,2 4. 8 | 4~8 r r2 | 4 c8 e ees2~ \section \key ees \major | % 9a
  ees4 r g, bes8 ees | des2 c | bes2 4 ees8 g |
  f2 ees | 4(des ces ges) | bes2 r | % 10a
  bes2 des4. ees8 | c4 c r2 \section \key c \major | r4 <a cis>4 4 4 | 2 2~ |
  q4 r r2 | R1 | % 11a
  r2 <b d>2~ | 2 2~ | 2. g'4 | 2 a,4 r |
  R1 | aes4 ges2(f4) | ees4 d8 r r2 | % 12a
  r2 c' | b4. 8 g4 a8 8 | bes4 r r2 | R1 |
  R1*2 \section \key f \major | R1*2 | d,4 \tuplet 3/2 {8(e)f} <f g>2 | % 13a
  q4 <e g> e f8 g | a4. g8 4(fis~ | 4 e2) dis4 \section \key c \major |
  r4 <c' e>2.~ | 4 <b d>8(<a c>) <fis b>4 r | R1 | % 14a
  fis4 g8(a) b2~ | 4 a8(gis) fis4 eis | gis4 8 8 dis'2 | e4. b8 2 |
  r8 ais cis dis e2 | <e a>4. b8 2 | R1 | % 15a
  R1 | r4 c2.~ | 1 \section \key f \major |
  r4 f2.~ | 1~ | 1~ | 2.~8 r | 2 e4 d | % 16a
  c1~ | 8 r r4 r2 | R1 | f,2. 4 | a c a4. g8 | f1~ |
  f2 r | R1*3 \key c \major | % 17a
  e'2 cis4 b | a2. r4 | d2 a4 b |
  cis2. 4 | e2~ \tuplet 3/2 {4(d) cis} | \tuplet 3/2 {cis(d) e} d r | % 18a
  R1 | fis2 d4-- cis-- |
  b2 \tuplet 3/2 {gis4(a b)} | cis1~ | % 19a
  cis2 \tuplet 3/2 {a4(b cis)} | % 19b
  <<{\vt dis4. des8 ces4 bes | aes2 2 | ees'2. r4 |}
    \new Voice {\vo d2. ees4 | fes2 ees4(d) | ees2. r4 |}>>
  \ov <ees g>2^\markup\italic espr. (<d f>4 <c ees>) | <<{\vo f1} \new Voice {\vt bes,2(f')}>> | % 20b
  \ov aes2(g4 f) | e4. d8 c4 bes | 4(aes) \tuplet 3/2 {a bes c} | % 21a
  d4. a8 bes2 | \tuplet 3/2 {b4 a b} \tuplet 3/2 {c(d) e} | f2 r | r d4 4 |
  r4 c d4. <c e>8 | <d f>1~ | 8 r r4 r2 | \tuplet 3/2 {d,4(fis a)} d fis | % 22a
  <d f>2 r | r4 a(d e) | g4. fis8 e4 d | bes2 r \section \key f \major |
  f'2 e4 d | c2. 4 | f2 r | R1 | f,2 4 g | % 23a
  bes4. a8 g4 f | f'1~ | 1~ | 4 r c2~ | 2 4 r |
  r2 f,4 8 g | a4. f'8 2~ | 1~ | % 24a
  f1~ | 1~ |
  f8 r r4 r2 | R1 | r2 c \section | % 25a
  ees2. b4 | <ees g>4. bes8 2~ | 8 r r4 r2 |
  r2 c | <des f>2. aes4 | <f' aes>4. aes,8 2~ | 8 r r4 r2 \section | % 26a
  R1*2 | f2 a4. c8 | d1 | R |
  a2 <a d>4. <c e>8 | <d f>1~ | 2 d | g1 | d2 <d e>4. <d f>8 | % 27a
  q2~8 r r4 | r c2. | <f a>1~ | 1~ | 8 r r4 r2 |
  R1*6 |
  \bar "|."
}

wordsSop = \lyricmode {
  Dar -- est thou now, O soul,
  walk out with me to -- ward the un -- known re -- gion,
  where nei -- ther ground is for the feet
  nor a -- ny path to fol -- low?
  No map there, nor guide, % 4a
  nor voice sound -- ing,
  no map, no guide,
  nor face with bloom -- inf flesh,
  nor face with bloom -- ing flesh,
  nor touch of hu -- man hand, __
  nor lips, nor eyes, are in that land, % 6a
  are in that land,
  are in that land. % 7a
  I know it not O soul, % 8a
  I know it not O soul, __
  nor dost thou, nor __ dost thou,
  all is a blank, __ % 9a
  all is a blank __
  I know it not O soul,
  all is a blank be -- fore __ us,
  all waits un -- dreamed of, % 10b
  all waits un -- dreamed of __
  all __ waits __ un -- dreamed of % 11b
  in that re -- gion,
  that in -- ac -- ces -- si -- ble land.
  Till when the ties loos -- en, % 13a
  all but the ties e -- ter -- nal,
  time __ and space. % 14a
  time and space, __ nor dark -- ness,
  nor an -- y bounds bound -- ing us,
  nor an -- y bounds bound -- ing us. % 15a
  Then, __
  Then, __ % 16a
  Then we burst forth, __
  then we float, in time and space __
  Then we burst forth, % 17b
  then we burst forth O soul, __
  pre -- pared for them,
  then we burst forth, % 18b
  we __ float, __
  we __ float, pre -- pared for them,
  O __ soul, % 20a
  O __ soul, __
  O __ soul, pre -- pared for them, __
  e -- qual, e -- quipt at last,
  e -- qual, e -- quipt at last,
  e -- qual, e -- quipt ar last, __
  Then __ we burst forth O __ soul, % 22a
  pre -- pared for them,
  e -- qual, e -- quipt ar last, % 23a
  e -- qual, e -- quipt, q -- quipt at last, __
  e -- qual, e -- qual, e -- quipt ar last. __
  O joy! O fruit of all! __ % 25a
  O joy! O fruit of all! __
  them to ful -- fil,
  them to ful -- fil __ O soul,
  them to ful -- fil __ O soul. __
}

wordsSopMidi = \lyricmode {
  "Dar" "est " "thou " "now, " "O " "soul, "
  "\nwalk " "out " "with " "me " to "ward " "the " un "known " re "gion, "
  "\nwhere " nei "ther " "ground " "is " "for " "the " "feet "
  "\nnor " a "ny " "path " "to " fol "low? "
  "\nNo " "map " "there, " "nor " "guide, " % 4a
  "\nnor " "voice " sound "ing, "
  "\nno " "map, " "no " "guide, "
  "\nnor " "face " "with " bloom "inf " "flesh, "
  "\nnor " "face " "with " bloom "ing " "flesh, "
  "\nnor " "touch " "of " hu "man " "hand, " 
  "\nnor " "lips, " "nor " "eyes, " "are " "in " "that " "land, " % 6a
  "\nare " "in " "that " "land, "
  "\nare " "in " "that " "land. " % 7a
  "\nI " "know " "it " "not " "O " "soul, " % 8a
  "\nI " "know " "it " "not " "O " "soul, " 
  "\nnor " "dost " "thou, " "nor "  "dost " "thou, "
  "\nall " "is " "a " "blank, "  % 9a
  "\nall " "is " "a " "blank " 
  "\nI " "know " "it " "not " "O " "soul, "
  "\nall " "is " "a " "blank " be "fore "  "us, "
  "\nall " "waits " un "dreamed " "of, " % 10b
  "\nall " "waits " un "dreamed " "of " 
  "\nall "  "waits "  un "dreamed " "of " % 11b
  "\nin " "that " re "gion, "
  "\nthat " in ac ces si "ble " "land. "
  "\nTill " "when " "the " "ties " loos "en, " % 13a
  "\nall " "but " "the " "ties " e ter "nal, "
  "\ntime "  "and " "space. " % 14a
  "\ntime " "and " "space, "  "nor " dark "ness, "
  "\nnor " an "y " "bounds " bound "ing " "us, "
  "\nnor " an "y " "bounds " bound "ing " "us. " % 15a
  "\nThen, " 
  "\nThen, "  % 16a
  "\nThen " "we " "burst " "forth, " 
  "\nthen " "we " "float, " "in " "time " "and " "space " 
  "\nThen " "we " "burst " "forth, " % 17b
  "\nthen " "we " "burst " "forth " "O " "soul, " 
  "\npre" "pared " "for " "them, "
  "\nthen " "we " "burst " "forth, " % 18b
  "\nwe "  "float, " 
  "\nwe "  "float, " pre "pared " "for " "them, "
  "\nO "  "soul, " % 20a
  "\nO "  "soul, " 
  "\nO "  "soul, " pre "pared " "for " "them, " 
  "\ne" "qual, " e "quipt " "at " "last, "
  "\ne" "qual, " e "quipt " "at " "last, "
  "\ne" "qual, " e "quipt " "ar " "last, " 
  "\nThen "  "we " "burst " "forth " "O "  "soul, " % 22a
  "\npre" "pared " "for " "them, "
  "\ne" "qual, " e "quipt " "ar " "last, " % 23a
  "\ne" "qual, " e "quipt, " q "quipt " "at " "last, " 
  "\ne" "qual, " e "qual, " e "quipt " "ar " "last. " 
  "\nO " "joy! " "O " "fruit " "of " "all! "  % 25a
  "\nO " "joy! " "O " "fruit " "of " "all! " 
  "\nthem " "to " ful "fil, "
  "\nthem " "to " ful "fil "  "O " "soul, "
  "\nthem " "to " ful "fil "  "O " "soul. " 
}

wordsSopAboveAlign = {
  s1*21 s1. s1*2 s2 s1*3 | s1. s1*25 s1. s1*3 | s1. s1*6 |
  s2 d4. 8 | 2 4 8(8) 4(8) s8 s2 |
  s1*73 | s2 \tuplet 3/2 {d4(4 4)} | d2. 4 | d2 d | d2. s4 |
  s1*63 |
}

wordsSopAbove = \lyricmode {
%  \repeat unfold 91 \skip 1
  nor dost thou, nor dost thou,
  we __ float in time and space,
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*11 | s1\omit\p-\markup{\dynamic p \italic sostenuto} | s2. s4\> | s1\! |
  s1*4 | s2.\> s4\! | s1*2 | s1. | % 3
  s1*2 | s4 s\omit\pp-\markup{\dynamic pp \italic misterioso} | s1*3 | s4 s2.\pp s4\> s\! | s1 | s2 s8 s\omit\mp-\markup{\dynamic mp \italic cantabile} s4 |
  s1 | s4 s4.\> s8\! s4 | s s2.\p | s1*2 | s4. s\mp\< s4\! | s4. s4\> s4.\! | s1 |
  s4. s4\mf\< s4.\! | s1 | s2.. s8\p | s2.. s8\p | s2. s4-\markup\italic "poco smorz." | s1 | s4 s\omit\p-\markup{\dynamic p \italic sostenuto} s\> s\! | s1\pp | s | % 6
  s2 s\pp | s s\> | s1\! | s1*3 | s1. | s1*3 | s1. | s1*2 |
  s1 | s\pp | s2 s4.\omit\p-\markup{\dynamic p \italic sostenuto} s8\> | s1\! | s | s2. s4\< | s\> s2.\! | s1 |
  s1 | s4.\omit\mf\<-\markup{\dynamic mf \italic cantabile} s4.\! s4\> | s2.\! s4\> | s1\! | s4\mf\< s\! s\> s\! | s2 s\< | % 9
  s2\! s4\> s\! | s1\pp | s\mf | s2\< s4\! s\> | s1\omit\p-\markup{\dynamic p \italic allargando} | s4 s2.\ppp | s1 |
  s1 | s4 s\p s\> s\! | s1\ppp | s1*3 |
  s1 | s8 s\< s4\! s\> s\! | s4 s\> s2\! | s2 s\omit\mf-\markup{\dynamic mf \italic "parlando (dark tone)"} | s1*3 | % 12
  s1*4 | s4 s2.\omit\pp-\markup{\dynamic pp \italic teneramente} | s2. s4\cresc | s\< s\! s\> s\! | s2 s\< |
  s4.\! s8\> s2\! | s2.\p s4\< s1\! | s4. s8\p s2 | s1\cresc | s1*2 |
  s4\< s2.\! | s1\f | s | s4 s2.\f | s1 | s\< | % 15
  s4\! s2.\omit\ff-\markup{\dynamic ff \italic brillante} | s1*2 | s2..\< s8\! | s1\omit\ff-\markup{\dynamic ff \italic "molto allarg."} | s1-\markup\italic "a tempo" | s\> | s\omit\mf-\markup{\dynamic mf \italic legato} | s1 | s2 s2*2/3-\markup\italic espr. s4*2/3\< | s4 s\! s2\> |
  s1\! | s\omit\mf-\markup{\dynamic mf \italic cantabile.} | s | s2.\< s4\! | s1*3 | 
  s1*2 | s1\f | s1*2 | % 18
  s1*4 |
  s4\<^\markup\italic espr. s\! s\> s\! | s1 | s\cresc | s2.\< s4\! |
  s1\omit\ff-\markup{\dynamic ff \italic espr.} | s2\> s\! | s2\mf s\cresc | s1 | s4*2/3 s2*2/3\< s2\! | s1*2 | % 21
  s1 | s\f | s1*6 |
  s1\ff | s1*2 | s1\f | s1*2 | s1\omit\f-\markup{\dynamic f \italic risoluto} | s2. s4\< | s1\! | s2 s\ff |
  s2 s4.\< s8\! | s1*2 | s1\< | s\! | % 24
  s1*2 | s2 s\fff\< | s2.\! s4\< | s1\! | s |
  s2. s4\< | s2.\! s4\< | s1\! | s1*3 | s2\f s4.\< s8\! | s1*2 |
  s2\f s4.\< s8\! | s1*3 | s2..\< s8\! | s1\ff | s4 s2.\omit\ff\omit\cresc-\markup{\dynamic ff \italic molto cresc.} | s1\fff | s1\< | s\! | s1*6 | % 27
}

alto = \relative {
  \global
  R1*10 | R1 | a'4 8 8 f4 g | a2 <e bes'>4 <e g>8 8 | f4. d8 4 c |
  d4 8(c) <b f'>4 4 | r2 f'4 8 8 | 4 2 8 8 | 2 d4 8 8 | % 3a
  e2. f4 | d d r2 | R1 \time 3/2 | R1. \time 4/4 |
  R1*2 \time 2/4 | r4 a'-- \time 4/4 | gis4-- 2-- r4 | r2 r4 a-- | % 4a
  gis2-- r \time 3/2 | r4 d4 2 4 4 \section \key c \major \time 4/4 | R1 | r2 r8 fis a d |
  c8(d c4.) b8 4~ | 8 a8 4. fis8 d4 | r <a' c> <<{\vo b2} \new Voice {\vt a4(g)}>> \ov | <fis a>2 d | % 5a
  <d a'>2 r | r4 r8 fis a d cis(d | c4.) bes8 2~ | 2.~ <g bes>4~ |
  q4. c,8 ees bes' a4~ (| 1 | aes4) g4 8 r r g-- | fis4-- r r r8 d | % 6a
  d4 r r cis | 8 8 4 r2 | r4 <cis a'> <d a'> <e a> | <e gis>1 | R |
  r2 ees | <ees g> q | <ees ges> r | R1 | % 7a
  R1*2 | R1. | R1*3 | R1. | R1*2 |
  R1 | a4 8 8 f4 g | a2 <e bes'>4 <a g>8 8 | f4. d8 4~8 r | % 8a
  r2 g4. 8 | 2 ees4 4 | c~8 r r2 | R1 |
  R1 | d4 g8 b a4. b8 | g2.(<f aes>4) \section \key ees \major | % 9a
  <ees bes'>4 r r2 | ees4 g8 bes8 4 aes | 4(g8 f) g2 |
  bes2 4 aes | ges2 r | bes,4 ees8 f g2 | % 10a
  g2 <f aes>4. <g bes>8 | <e g>4 4 r2 \section \key c \major | r4 <cis e>4 4 4 | 2 2~ |
  q4 r r2 | r4 bes' a aes | % 11a
  g1~ | 1~ | 2 4 r | R1 |
  R1 | aes4 ges2(f4) | 2 e~ | % 12a
  e2 c | b4. 8 g4 a8 8 | bes4 r r2 | R1 |
  R1*2 \section \key f \major | R1*2 | r4 d c b | % 13a
  bes2 <<{\vo d~( | d4 a'2) d,4} \new Voice {\vo d2~ | \vt d4(cis) c2 |}>> \ov r2 fis4 a8 b \section \key c \major |
  c4. fis,8 a4 4 | fis2. a8(b) | c2 r | % 14a
  <<{\vt fis,4.(e8) 4 dis} \new Voice {\vo r4 r8 a'8 b4-- b--}>> | \ov gis4 a8(b) cis4 4 | 4 b8 ais gis4(fisis) | gis4. <e gis>8 2 |
  \tuplet 3/2 {e8 fis e} gis2(f4) | <<{\vo cis'4. fis,8 2} \new Voice {\vt a4. 8 2}>> \ov | R1 | % 15a
  r4 a2.~ | 1~ | 1 \section \key f \major |
  r4 <f \tweak font-size #-2 f'>2.~ | 1~ | 1~ | 2.~8 r | a1 | % 16a
  c2 a4 g | f1~ | 2. c4 | f1~ | 4 4 \tuplet 3/2 {a(bes) c} | d2 c4(bes) |
  c2 r | 2 a4 g | f4. g8 \tuplet 3/2 {a4(bes) c} | d2. e4 \section \key c \major | % 17a
  e2 r | r r4 e, | fis2. gis4 |
  e2 2 | 4 r r2 | b'2 a4-- g-- | % 18a
  fis1~ | 1~ |
  fis1 | cis'2-- a4-- gis-- | % 19a
  fis8(gis a b cis4) gis | ees'4. des8 ces4 bes |
  aes4(bes) c(aes) | g4. 8 4 4 | % 20a
  bes4^\markup\italic espr. (g) a2 | bes4 f8(g) aes4 bes |
  c2 b | bes aes4(g) | f2^\markup\italic espr.  fis | % 21a
  e4(fis) g2 | \tuplet 3/2 {gis4(fis gis)} a2 | <a b> r | r bes4 4 |
  r4 a4 4. 8 | f1~ | 8 r r4 r2 | r2 r4 d | % 22a
  bes'4. a8 g4 f | a4. g8 fis4 a | d2(a4) r | bes2~ \tuplet 3/2 {bes4 c des} \section \key f \major |
  c2 a | c a4(g) | f2 r | <c c'> q~ | 1~ | % 23a
  q1 | f2-- 4-- g-- | bes4.-- a8-- g4-- f-- | c'1~ | 2 f,-- |
  f4 g a4. d8 | 2. f,4 | 1~ | % 24a
  f1~ | 1~ |
  f8 r r4 r2 | R1 | r2 c' \section | % 25a
  bes2. 4 | 4. g8 2~ | 8 r r4 r2 |
  r2 c | aes2. 4 | des4. f,8 2~ | 8 r r4 r2 \section | % 26a
  R1*2 | f2 a4. g8 | f1 | R |
  f2 a4. 8 | f1~ | 2 bes | 1 | 2 4. 8 | % 27a
  bes2~8 r r4 | r c2. | 1~ | 1~ | 8 r r4 r2 |
  R1*6 |
  \bar "|."
}

wordsAlto = \lyricmode {
  Dar -- est thou now, O soul,
  walk out with me to -- ward the un -- known re -- gion,
  where nei -- ther ground is for the feet
  nor a -- ny path to fol -- low?
  No map there, nor guide, % 4a
  nor voice sound -- ing,
  nor face with bloom -- ing flesh __ are in that land,
  no map there, no guide,
  nor face with bloom -- ing flesh __
  nor touch of hu -- man hand, nor lips, % 6a
  nor eyes, are in that land, are in that land,
  are in that land. % 7a
  I know it not O soul,
  I know it not O soul, __
  nor dost thou, nor dost thou,
  all is a blank be -- fore __ us, % 9a
  all is a blank be -- fore __ us,
  all is a blank, all is a blank, % 10a
  all waits un -- dreamed of.
  all waits un -- dreamed of, __
  all waits un -- dreamed __ of % 11a
  in that re -- gion, __
  that in -- ac -- ces -- si -- ble land.
  Till when the ties loos -- en, % 13a
  all but the ties e -- ter -- nal,
  time and space,
  nor dark -- ness, gra -- vi -- ta -- tion, % 14b
  nor an -- y bounds bound -- ing us,
  nor an -- y bounds __ bound -- ing us. % 15a
  Then, __ Then, __ Then, then we burst fortth, __
  we float, __ in time and space, O __ soul,
  The we burst forth, we float in time and space % 17a
  O soul, pre -- pared for them,
  then we burst forth, __
  then we burst forth __ O soul, % 19a
  pre -- pared for them, __ O __ soul,
  pre -- pared for them __ O soul,
  pre -- pared for them, pre -- pared for them,
  pre -- pared for them __ at last,
  e -- qual, e -- quipt at last, O soul,
  pre -- pared for them, pre -- pared for them, __ % 22b
  e -- qual e -- quipt, e -- quipt at __ last,
  e -- qual, __ e -- qual, e -- quipt, e -- quipt at last, __
  e -- qual. e -- quipt at last, at last. __
  O joy! O fruit of all! __ % 25a
  O joy! O fruit of all! __
  them to ful -- fil,
  them to ful -- fil __ O soul, % 27a
  them to ful -- fil __ O soul. __
}

wordsAltoMidi = \lyricmode {
  "Dar" "est " "thou " "now, " "O " "soul, "
  "\nwalk " "out " "with " "me " to "ward " "the " un "known " re "gion, "
  "\nwhere " nei "ther " "ground " "is " "for " "the " "feet "
  "\nnor " a "ny " "path " "to " fol "low? "
  "\nNo " "map " "there, " "nor " "guide, " % 4a
  "\nnor " "voice " sound "ing, "
  "\nnor " "face " "with " bloom "ing " "flesh "  "are " "in " "that " "land, "
  "\nno " "map " "there, " "no " "guide, "
  "\nnor " "face " "with " bloom "ing " "flesh " 
  "\nnor " "touch " "of " hu "man " "hand, " "nor " "lips, " % 6a
  "\nnor " "eyes, " "are " "in " "that " "land, " "are " "in " "that " "land, "
  "\nare " "in " "that " "land. " % 7a
  "\nI " "know " "it " "not " "O " "soul, "
  "\nI " "know " "it " "not " "O " "soul, " 
  "\nnor " "dost " "thou, " "nor " "dost " "thou, "
  "\nall " "is " "a " "blank " be "fore "  "us, " % 9a
  "\nall " "is " "a " "blank " be "fore "  "us, "
  "\nall " "is " "a " "blank, " "all " "is " "a " "blank, " % 10a
  "\nall " "waits " un "dreamed " "of. "
  "\nall " "waits " un "dreamed " "of, " 
  "\nall " "waits " un "dreamed "  "of " % 11a
  "\nin " "that " re "gion, " 
  "\nthat " in ac ces si "ble " "land. "
  "\nTill " "when " "the " "ties " loos "en, " % 13a
  "\nall " "but " "the " "ties " e ter "nal, "
  "\ntime " "and " "space, "
  "\nnor " dark "ness, " gra vi ta "tion, " % 14b
  "\nnor " an "y " "bounds " bound "ing " "us, "
  "\nnor " an "y " "bounds "  bound "ing " "us. " % 15a
  "\nThen, "  "Then, "  "Then, " "then " "we " "burst " "fortth, " 
  "\nwe " "float, "  "in " "time " "and " "space, " "O "  "soul, "
  "\nThe " "we " "burst " "forth, " "we " "float " "in " "time " "and " "space " % 17a
  "\nO " "soul, " pre "pared " "for " "them, "
  "\nthen " "we " "burst " "forth, " 
  "\nthen " "we " "burst " "forth "  "O " "soul, " % 19a
  "\npre" "pared " "for " "them, "  "O "  "soul, "
  "\npre" "pared " "for " "them "  "O " "soul, "
  "\npre" "pared " "for " "them, " pre "pared " "for " "them, "
  "\npre" "pared " "for " "them "  "at " "last, "
  "\ne" "qual, " e "quipt " "at " "last, " "O " "soul, "
  "\npre" "pared " "for " "them, " pre "pared " "for " "them, "  % 22b
  "\ne" "qual " e "quipt, " e "quipt " "at "  "last, "
  "\ne" "qual, "  e "qual, " e "quipt, " e "quipt " "at " "last, " 
  "\ne" "qual. " e "quipt " "at " "last, " "at " "last. " 
  "\nO " "joy! " "O " "fruit " "of " "all! "  % 25a
  "\nO " "joy! " "O " "fruit " "of " "all! " 
  "\nthem " "to " ful "fil, "
  "\nthem " "to " ful "fil "  "O " "soul, " % 27a
  "\nthem " "to " ful "fil "  "O " "soul. " 
}

wordsAltoAbove = \lyricmode {
  nor dark -- ness,
}

wordsAltoAboveAlign = {
  s1*21 | s1. | s1*2 | s2 | s1*3 | s1. | s1*25 |
  s1. | s1*3 | s1. | s1*47 |
  s4. d8 4 4 |
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*11 | s1\omit\p-\markup{\dynamic p \italic sostenuto} | s2. s4\> | s1\! |
  s1*4 | s2.\> s4\! | s1*2 | s1. % 3
  s1*2 | s4 s\omit\pp-\markup{\dynamic pp \italic misterioso} | s1*3 | s4 s2.\pp s4\> s\! | s1*2 |
  s1 | s4 s2.\omit\mp-\markup{\dynamic mp \italic cantabile} | s1 | s2. s4\p | s1*2 | s4 s2\mf\< s4\! | s1 |
  s1 | s4 s2\mp\< s4\! | s4 s\> s2\! | s2.. s8\p | s2. s4-\markup\italic "poco smorz." | s4 s2.\omit\p-\markup{\dynamic p \italic sostenuto} | s4 s2.\> | s1\! | s | % 6
  s4 s2.\omit\pp-\markup{\dynamic pp \italic sostenuto} | s2 s\> | s1\! | s1*3 | s1. | s1*3 | s1. | s1*2 |
  s1 | s\pp | s2 s4.\omit\p-\markup{\dynamic p \italic sostenuto} s8\> | s1\! | s | s2 s\< | s4\> s2.\! | s2 s\omit\mf-\markup{\dynamic mf \italic cantabile} |
  s1*3 | s2\mf s4.\< s8\! | s4 s\> s2\! | s s\< | % 9
  s2\! s\> | s1\pp | s | s4\> s2.\! | s2\p\< s\> | s1\ppp | s |
  s1*2 | s2 s\ppp | s1*3 |
  s1\p | s1*3 | s2. s4\omit\mf-\markup{\dynamic mf \italic "parlando (dark tone)"} | s2 s4\> s\! | s1\pp | % 12
  s1*7 | s2\omit\mp-\markup{\dynamic mp \italic teneramente} s4\< s\! |
  s2 s\< | s4.\! s\> s4\! | s1 | s2\> s\p | s1\cresc | s1*2 |
  s4\< s2.\! | s1\f | s4 s2.\f\< | s1\! | s | s\f\< | % 15
  s4\! s2.\omit\ff-\markup{\dynamic ff \italic brillante} | s1*2 | s2.\< s4\! | s2.\omit\ff\<-\markup{\dynamic ff \italic "molto allarg."} s4\! | s1-\markup\italic "a tempo" | s1*2 | s1\omit\mf-\markup{\dynamic mf \italic legato} | s1 | s\< |
  s4\> s2.\! | s1*4 | s1\omit\mf-\markup{\dynamic mf \italic cantabile} | s1 |
  s1*3 | s1\f | s | % 18
  s1*4 |
  s4\<-\markup\italic espr. s\! s\> s\! | s1 | s\cresc-\markup\italic espr. | s\< |
  s1\ff s4 s2.\> | s2\omit\mf-\markup{\dynamic mf \italic espr.} s\cresc | s1 | s2\< s\! | s1*2 | % 21
  s1 | s\f | s | s2.\f\< s4\! | s1*4 |
  s1\ff | s1*2 | s1\omit\f-\markup{\dynamic f \italic risoluto.} | s1*4 | s2 s4\< s\! | s1 |
  s1\< | s2\! s4\ff s\< | s1\! | s\< | s\! | % 24
  s1*2 | s2 s\fff\< | s1\! | s4 s\< s2\! | s1 |
  s2 s\< | s1\! | s4 s\< s2\! | s4 s2\> s4\! | s1\mf | s | s2\f s\< | s1\! | s |
  s2\f s4.\< s8\! | s1*3 | s2..\< s8\! | s1\ff | s4 s2.\omit\ff-\markup{\dynamic ff \italic "molto cresc."} | s1\fff | s\< | s\! | s1*6 | % 27
}

tenor = \relative {
  \global
  R1*10 |
  R1 | a4 8 8 f4 g | a2 bes4 c8 c | <c d>4. <bes d>8 <a d>4 a |
  a8(c) bes(a) g4 g | r2 b4 c8 b | bes4 2 a8 g | a2 d4 8 8 | % 3a
  d2. cis4 | d4 4 r2 | R1 \time 3/2 | R1. \time 4/4 |
  R1*2 \time 2/4 | r4 a-- \time 4/4 | gis4-- 2-- r4 | r2 r4 a-- | % 4a
  gis2-- r \time 3/2 | r4 a4 2 4 4 \section \key c \major \time 4/4 | R1*2 |
  R1 | r4 a d fis | e4. fis8 d4 4 | a2. g4 | % 5a
  g4(fis) r2 | R1 | r4 g d' f | e(d2) c4 |
  c2. r4 | r f, a d | d cis8(d) c4 r | r2 r4 r8 c | % 6a
  b4 r r2 | r4 a cis fis | e1~ | 8 r r4 r2 | R1 |
  r4 a, <a bes> <a ces> | <g ees'>2 <g ces> | <ges ces> r | R1 | % 7a
  R1*2 | R1. | R1*3 | R1. \section \key f \major | R1*2 |
  R1 | a4 8 8 f4 g | a2 bes4 c8 8 | <c d>4. <bes d>8 <a d>4~8 r | % 8a
  r2 g4. 8 | 2 2~( | <d g>4) <d fis> g r | r2 g4 b8 d |
  d4(c2) b8(a) | b4 8 r r2 | R1 \section \key ees \major | % 9a
  g4 bes8 ees d4. ees8 | des2(c) | <bes ees>1 |
  des2 c | ces2.(ees4) | bes r g bes8 ees | % 10a
  bes2 r | c2 b4 bes \section \key c \major | a1 | a~ |
  a4 r r2 | R1 | % 11a
  r2 <b d> | q q | 2 4 r | R1 |
  b2 g4(a) | b b r2 | R1 | % 12a
  R1 | r2 r4 a | bes4. 8 ges4 aes8 8 | a4 r r2 |
  R1*2 \section \key f \major | R1*3 | % 13a
  R1*2 | fis4 g8 a b4 a~ \section \key c \major |
  a8(fis) a(b) c4 d8 e | f4. e8 4 dis | r2 c4 d8(e) | % 14a
  fis4 r fis,2 | <<{\vo b1} \new Voice {\vt b2(gis)}>> \ov | ais4 b8 cis dis2 | <b e>4. b8 2 |
  \tuplet 3/2 {<cis e>8 <dis fis> <cis e>} <e gis>2(<dis fis>8 <cis e>) | <cis e>4. <b dis>8 2 | r4 e2.~ | % 15a
  e2(a,)~ | 4 r r2 | d1 \section \key f \major |
  r4 f2.~ | 1~ | 1~ | 2.~8 r | d2 e4 f | % 16a
  c1~ | 4 r r2 | R1 | f,2. 4 | a c a4. g8 | f2. bes4 |
  bes4(a) r2 | R1*3 \section \key c \major | % 17a
  R1 | a2 b4 cis | d2~(\tuplet 3/2 {4 cis) b} |
  b4(a) cis2 | e b4(cis) | fis, r r2 | % 18a
  fis'2 d4-- cis-- | b4.(cis8 d e) fis4 |
  fis,1~ | 2(eis4) r | % 19a
  cis'2-- a4-- gis-- | g g ees'4. des8 |
  ces4 bes aes ces | bes4. ees8 4 4 | % 20a
  ees2 f | 1~ |
  f2 ees4(d) | c(d2) e4 | f2 d~ | % 21a
  d4 c \tuplet 3/2 {bes c d} | e4. b8 \tuplet 3/2 {c4(d) e} | f2 r | r e4 e |
  r4 e d4. c8 | bes1~ | 8 r r4 r2 | \tuplet 3/2 {d,4(fis a)} d fis | % 22a
  <d f>2 r4 d | 2 fis4(e) | d r r2 | R1 \section \key f \major |
  f2 e4 d | c2. 4 | f2 r | c2 4-- d-- | f4.-- e8-- d4-- c-- | % 23a
  f1 | c~ | 4 4 r2 | f,2 4 g | bes4. a8 g4. f8 |
  f'1~ | 8 r r4 a,4 8 b | cis4. a'8 2~ | % 24a
  a1~ | 1~ |
  a8 r r4 r2 | R1 | r2 c, \section | % 25a
  g'1~ | 8 r bes,4 ees2~ | 4 d2(des4) |
  c2 c | <des f>1~ | 8 r aes4 des2~ | 4 <<{\vo aes2(bes4)} \new Voice {\vt aes2~4}>> \ov \section | % 26a
  <a c>2 r | R1 | f2 c'4. 8 | a1 | R |
  d2 f4. e8 | d1~ | 2 2 | 1 | 2 <d e>4. <d f>8 | % 27a
  q2~8 r r4 | r c2. | <f a>1~ | 1~ | 8 r r4 r2 |
  R1*6 |
  \bar "|."
}

wordsTenor = \lyricmode {
  Dar -- est thou now, O soul,
  walk out with me to -- ward the un -- known re -- gion,
  where nei -- ther ground is for the feet
  nor a -- ny path to fol -- low?
  No map there, nor guide, % 4a
  nor voice sound -- ing,
  nor touch of hu -- man hand are in that land, % 5a
  nor touch of hu -- man hand,
  nor touch of hu -- man hand,
  nor eyes, are in that land, __
  are in that land, that land. % 7a
  I know it not O soul, % 8a
  I know it not O soul, __
  nor dost thou, nor __ dost thou,
  all is a blank be -- fore us
  I know it not O soul, __ % 9b
  all blank be -- fore __ us,
  all is a blank,
  all waits un -- dreamed of, __
  all waits un -- dreamed of % 11b
  in that __ reg -- ion,
  that in -- ac -- ces -- si -- ble land.
  Till when the ties loos -- en % 13b
  all but the ties e -- ter -- nal,
  time and space, nor sense, __
  nor a -- ny bounds bound -- ing us,
  no a -- ny bounds __ bound -- ing is. % 15a
  Then, __ Then, Then, __
  Then we burst forth, __ % 16a
  then we float, in time and space, O soul,
  Then we burst forth, __ O soul, __ % 17b
  pre -- pared for __ them,
  then we burst forth, __ O soul, __
  then we burst forth O soul, % 19b
  pre -- pared for them, O soul,
  pre -- pared for them, O soul, __
  pre -- pared __ for them, % 21a
  e -- qual, e -- qual, e -- quipt,
  e -- quipt at last
  e -- qual, e -- quipt at last, __
  Then we burst forth pre -- pared for __ them, % 22a
  e -- qual, e -- quipt ar last,
  e -- qual, e -- quipt, e -- quipt at last e -- qual,
  e -- qual, e -- quipt, e -- quipt at last, __
  e -- qual, e -- quipt at last. __ % 24a
  O joy! __
  O fruit __ of __ all!
  O joy! __
  O fruit __ of __ all!
  them to ful -- fil,
  them to ful -- fil __ O soul,
  them to ful -- fil __ O soul. __
}

wordsTenorMidi = \lyricmode {
  "Dar" "est " "thou " "now, " "O " "soul, "
  "\nwalk " "out " "with " "me " to "ward " "the " un "known " re "gion, "
  "\nwhere " nei "ther " "ground " "is " "for " "the " "feet "
  "\nnor " a "ny " "path " "to " fol "low? "
  "\nNo " "map " "there, " "nor " "guide, " % 4a
  "\nnor " "voice " sound "ing, "
  "\nnor " "touch " "of " hu "man " "hand " "are " "in " "that " "land, " % 5a
  "\nnor " "touch " "of " hu "man " "hand, "
  "\nnor " "touch " "of " hu "man " "hand, "
  "\nnor " "eyes, " "are " "in " "that " "land, " 
  "\nare " "in " "that " "land, " "that " "land. " % 7a
  "\nI " "know " "it " "not " "O " "soul, " % 8a
  "\nI " "know " "it " "not " "O " "soul, " 
  "\nnor " "dost " "thou, " "nor "  "dost " "thou, "
  "\nall " "is " "a " "blank " be "fore " "us "
  "\nI " "know " "it " "not " "O " "soul, "  % 9b
  "\nall " "blank " be "fore "  "us, "
  "\nall " "is " "a " "blank, "
  "\nall " "waits " un "dreamed " "of, " 
  "\nall " "waits " un "dreamed " "of " % 11b
  "\nin " "that "  reg "ion, "
  "\nthat " in ac ces si "ble " "land. "
  "\nTill " "when " "the " "ties " loos "en " % 13b
  "\nall " "but " "the " "ties " e ter "nal, "
  "\ntime " "and " "space, " "nor " "sense, " 
  "\nnor " a "ny " "bounds " bound "ing " "us, "
  "\nno " a "ny " "bounds "  bound "ing " "is. " % 15a
  "\nThen, "  "Then, " "Then, " 
  "\nThen " "we " "burst " "forth, "  % 16a
  "\nthen " "we " "float, " "in " "time " "and " "space, " "O " "soul, "
  "\nThen " "we " "burst " "forth, "  "O " "soul, "  % 17b
  "\npre" "pared " "for "  "them, "
  "\nthen " "we " "burst " "forth, "  "O " "soul, " 
  "\nthen " "we " "burst " "forth " "O " "soul, " % 19b
  "\npre" "pared " "for " "them, " "O " "soul, "
  "\npre" "pared " "for " "them, " "O " "soul, " 
  "\npre" "pared "  "for " "them, " % 21a
  "\ne" "qual, " e "qual, " e "quipt, "
  "\ne" "quipt " "at " "last "
  "\ne" "qual, " e "quipt " "at " "last, " 
  "\nThen " "we " "burst " "forth " pre "pared " "for "  "them, " % 22a
  "\ne" "qual, " e "quipt " "ar " "last, "
  "\ne" "qual, " e "quipt, " e "quipt " "at " "last " e "qual, "
  "\ne" "qual, " e "quipt, " e "quipt " "at " "last, " 
  "\ne" "qual, " e "quipt " "at " "last. "  % 24a
  "\nO " "joy! " 
  "\nO " "fruit "  "of "  "all! "
  "\nO " "joy! " 
  "\nO " "fruit "  "of "  "all! "
  "\nthem " "to " ful "fil, "
  "\nthem " "to " ful "fil "  "O " "soul, "
  "\nthem " "to " ful "fil "  "O " "soul. " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*11 | s1\omit\p-\markup{\dynamic p \italic sostenuto} | s2. s4\> | s1\! |
  s1*4 | s2.\> s4\! | s1*2 | s1. | % 3
  s1*2 | s4 s\omit\pp-\markup{\dynamic pp \italic misterioso} | s1*3 | s4 s2.\pp s2\> | s4\! s2.\omit\mp-\markup{\dynamic mp \italic cantabile} | s2\> s\p |
  s2 s4\> s\! | s1*3 | s4 s2.\mp | s1*2 | s2. s4\mf |
  s4\< s2.\! | s1 | s4. s8\p s2 | s2.. s8\p | s2. s4-\markup\italic "poco smorz." | s\> s2.\! | s1*3 | % 6
  s4 s2.\omit\pp-\markup{\dynamic pp \italic sostenuto} | s2 s\> | s1\! | s1*3 | s1. | s1*3 | s1. | s1*2 |
  s1 | s\pp | s2 s4.\omit\p-\markup{\dynamic p \italic sostenuto} s8\tweak minimum-length #7 \> | s1\! | s1*2 | s2 s\omit\mf-\markup{\dynamic mf \italic cantabile} | s1 |
  s1*4 | s4\mf\< s\! s\> s\! | s1 | % 9
  s2 s4\> s\! | s1*2 | s4\> s\! s2 | s1-\markup\italic allargando | s4 s2.\ppp | s1 |
  s1*2 | s2 s\ppp | s1*3 |
  s1\p | s1*3 | s2. s4\omit\mf-\markup{\dynamic mf \italic "parlando (dark tone)"} | s2 s4\> s\! | s1\pp | % 12
  s1*4 | s2 s\omit\pp-\markup{\dynamic pp \italic teneramente} | s2. s4\cresc | s1*2 |
  s1 | s\mf | s1 | s4.\> s8\p s2 | s1\cresc | s1*2 |
  s2\< s\! | s4 s2.\f\< | s1\! | s1*2 | s1\f\< | % 15
  s4\! s2.\ff | s1*3 | s1\omit\ff-\markup{\dynamic ff \italic "molto allarg."} | s1-\markup\italic "a tempo" s2.\> s4\omit\mf-\markup{\dynamic mf \italic legato} | s1*4 |
  s1*6 | s1\mf |
  s1*3 | s2 s\f | s1 | % 18
  s1*4 |
  s1*2 | s4\cresc s2\< s4\! | s1 |
  s1\ff | s4*2/3\omit\mf-\markup{\dynamic mf \italic espr.} s2*2/3\< s2\> | s1\cresc | s1 | s2\< s\! | s1*2 | % 21
  s1 | s\f | s1*5 | s2\< s2*2/3 s4*2/3\! |
  s1\ff | s | s\omit\f-\markup{\dynamic f \italic risoluto.} | s1*3 | s2. s4\< | s4 s2.\! | s1*2 |
  s1 | s4 s\ff s\< s\! | s1 | s4 s2.\< | s1\! | % 24
  s1*2 | s2 s\fff\< | s1\! | s4 s\< s2\! | s1 |
  s2 s\< | s1\! | s4 s\< s2\! | s4 s2.\> | s1\mf | s | s2\f s\< | s1\! | s |
  s2\f s4.\< s8\! | s1*3 | s1\< | s\ff | s\omit\ff-\markup{\dynamic ff \italic "molto cresc"} | s1\fff | s4 s2.\< | s1\! | s1*6 |
}

bass = \relative {
  \global \set breathMarkType = #`tickmark
  R1*10 |
  R1 | a4^\markup\with-color "red" \bold "in 4" 8 8 f4 \breathe g\( | a2 g4 a8 a | d,4. e8 f4 4 |
  bes,4 8(c) d4 d\) | r2 4 e8 d | des4 2 c8 d | c2 d4 e8 f | % 3a
  g2. a4 | d,4 d r2 | R1 \time 3/2 | R1. \time 4/4 |
  R1*2 \time 2/4 | r4 a'-- \time 4/4 | gis4-- 2-- r4 | r2 r4 a-- | % 4a
  gis2-- r \time 3/2 | r4 <a, d>4 2 4 4 \section \time 4/4 \key c \major | r4 fis' a d | cis4. d8 a2~ |
  a4 a g g | fis2 r | R1*2 | % 5a
  r4 fis a d | cis4.(d8 c4 bes~ | 8) a g4 r2 | r r4 c, |
  ees4 bes' a8(g4) ges8 | f2 r | r4 r8 bes,8 8-. r r4 | r2 r4 r8 g' | % 6a
  f4 r r e | dis8 8 e4 r2 | R1*3 |
  r4 c des ees | 1~ | 2 r | R1 | % 7a
  R1*2 \time 3/2 | R1.\time 4/4 |
  R1*3 \section \time 3/2 |
  R1. \section \time 4/4 \key f \major | R1*2 |
  R1 | <a, a'>4 8 8 <f f'>4\breathe <g g'> | <a a'>2 <g g'>4 <a a'>8 8 | d4. e8 f4~8 r | % 8a
  r2 g4. 8 | 4 r r2 | r b,4 d8 g | fis4. g8 f2( |
  e2) d~ | 4 r r2 | R1 \section \key ees \major | % 9a
  R1 | ees4 g8 bes8 4 aes | 4(g8 f) g4 r |
  g,2 aes4 4 | ees'2. r4 | bes4 ees8 f g4 g | % 10a
  bes2 bes,4 r | R1 \section \key c \major | r4 <a e'>4 4 4 | 2 2~ |
  q4 r r2 | R1 | % 11a
  r2 <g d'> | q q | 2 4 r | R1 |
  b2 f4(a) | b b r2 | R1 | % 12a
  R1 | r2 r4 a | bes4. 8 ges4 aes8 8 | a4 r r2 |
  R1*2 \section \key f \major | R1*2 | r2 d4 \tuplet 3/2 {8(e) f} | % 13a
  <<{\vt g2 4. f8 | e2 d4 d | c4. 8 b4 b}
    \new Voice {\vo g'1~ | 2 a~ | 4.(g8) fis2}>> \section \key c \major \ov
  R1 | fis4 g8(a) b2 | fis4 a8(b) c2~ | % 14a
  c4. c,8 b4 b | d2(cis) | r cis'4 b8 ais | gis1 |
  ais4. <cis, ais'>8 2 | r4 d'2.~ | 2(e,2~) | % 15a
  e4 r r2 | r4 a2. | d1 \section \key f \major |
  <<{\tiny r4^\markup{\halign #CENTER \italic "(ad lib)"} f2.~ | 1~ | 1~ | 2.~8 r} \new Voice {\ov R1*4}>> | \normalsize \ov b,1 | % 16a
  c2 a4 g | f2.^\markup\bold\with-color "red" "in 2" 4 | a c a4. g8 | f1~ | 2. a,4 | bes2 d |
  f2 r | R1*3 \section \key c \major | % 17a
  R1*2 | b,2(e) |
  a,2. a'4 | g2 fis | b,4 r r2 | % 18a
  r2 b'2-- | a4-- g-- fis-- r |
  d'2-- b4-- a-- | \tuplet 3/2 {gis4(a b)} cis2-- | % 19a
  a4-- gis-- fis-- e-- | ees2. 4 |
  aes4 r r aes | ees2. r4 | % 20a
  r4^\markup\italic espr. c' d ees | 2 d |
  c4 r r2 | \tuplet 3/2 {g4\(aes bes\)} c4. g8 | c4 f, d'4. c8 | % 21a
  bes4 a g f | e2 a, | d r | r g4 g |
  r4 a4 4. 8 | g1~ | 8 r r4 r2 | r r4 d | % 22a
  bes'4. a8 g4 f | a2 b4(cis) | d2(a4) r | bes2~\tuplet 3/2 {4\(c des\)} \section \key f \major |
  c1~ | 2 a4(g) | f2. g4-- | b4.-- a8-- g4-- f-- | c'1 | % 23a
  f,2-- 4-- g-- | b4.-- a8-- g4-- f-- | c'1~ | 8 r r4 r2 | f,2 4 g |
  a4. f'8 2 | f,4 8 g a4. b8 | cis1~ | % 24a
  cis1~ | 1~ |
  cis8 r r4 r2 | R1 | r2 c \section | % 25a
  bes1~ | 8 r bes4 ees2~ | 4 d2(des4) |
  c2 c | aes1~ | 8 r aes,4 des2~ | 4 aes2(bes4) \section | % 26a
  <f c'>2 r | R1 | f'2 4. e8 | d1 | R |
  d2 d'4. c8 | bes1~ | 2 4(a) | g1 | bes2 4. 8 | % 27a
  <g bes>2~8 r r4 | r4 c2. | <f, c'>1~ | 1~ | 8 r r4 r2 |
  R1*6 |
  \bar "|."
}

wordsBass = \lyricmode {
  Dar -- est thou now, O soul,
  walk out with me to -- ward the un -- known re -- gion,
  where nei -- ther ground is for the feet
  nor a -- ny path to fol -- low?
  No map there, nor guide, % 4a
  nor voice sound -- ing,
  nor touch of hu -- man hand, __ are in that land.
  nor touch of hu -- man hand, % 5b
  nor touch of hu -- man hand,
  nor lips, nor eyes, are in that land,
  are in that land. __ % 7a
  I know it not O soul,
  I know it not O soul, __
  nor dost thou,
  all is a blank be -- fore __ us. __
  all is a blank be -- fore __ us, % 9b
  all is a blank,
  all is a blank be -- fore us,
  all waits un -- dreamed of, __
  all waits un -- dreamed of % 11b
  in that __ re -- gion,
  that in -- ac -- ces -- si -- ble land.
  Till when the ties loos -- en, % 13a
  all but the ties e -- ter -- nal,
  time and space, time and space, __
  nor dark -- ness, sense, __
  nor an -- y bounds bound -- ing us.
  Then, __ Then, Then, Then, __ Then,
  then we burst forth,
  we float, in time and space, __
  in time and space
  O __ soul, pre -- pared for them, % 17b
  then we burst forth,
  then we burst forth, __ % 19a
  then we burst forth,
  we float in time and space,
  O soul, pre -- pared for them, % 20b
  e -- qual, e -- quipt at last. % 21a
  O soul, pre -- pared, pre -- pared for them at last
  e -- qual, e -- quipt at last, __
  O soul, pre -- pared, pre -- pared for __ them, __ % 22a
  e -- qual e -- quipt __ at __ last,
  e -- quipt, e -- quipt at last
  e -- qual, e -- quipt, e -- quipt at last, __ % 23b
  e -- qual e -- quipt at last,
  e -- qual, e -- quipt at last. __
  O joy! __
  O fruit __ of __ all!
  O joy! __
  O fruit __ of __ all!
  them to ful -- fil,
  them to ful -- fil __ O __ soul, % 27a
  them to ful -- fil __ O soul. __
}

wordsBassMidi = \lyricmode {
  "Dar" "est " "thou " "now, " "O " "soul, "
  "\nwalk " "out " "with " "me " to "ward " "the " un "known " re "gion, "
  "\nwhere " nei "ther " "ground " "is " "for " "the " "feet "
  "\nnor " a "ny " "path " "to " fol "low? "
  "\nNo " "map " "there, " "nor " "guide, " % 4a
  "\nnor " "voice " sound "ing, "
  "\nnor " "touch " "of " hu "man " "hand, "  "are " "in " "that " "land. "
  "\nnor " "touch " "of " hu "man " "hand, " % 5b
  "\nnor " "touch " "of " hu "man " "hand, "
  "\nnor " "lips, " "nor " "eyes, " "are " "in " "that " "land, "
  "\nare " "in " "that " "land. "  % 7a
  "\nI " "know " "it " "not " "O " "soul, "
  "\nI " "know " "it " "not " "O " "soul, " 
  "\nnor " "dost " "thou, "
  "\nall " "is " "a " "blank " be "fore "  "us. " 
  "\nall " "is " "a " "blank " be "fore "  "us, " % 9b
  "\nall " "is " "a " "blank, "
  "\nall " "is " "a " "blank " be "fore " "us, "
  "\nall " "waits " un "dreamed " "of, " 
  "\nall " "waits " un "dreamed " "of " % 11b
  "\nin " "that "  re "gion, "
  "\nthat " in ac ces si "ble " "land. "
  "\nTill " "when " "the " "ties " loos "en, " % 13a
  "\nall " "but " "the " "ties " e ter "nal, "
  "\ntime " "and " "space, " "time " "and " "space, " 
  "\nnor " dark "ness, " "sense, " 
  "\nnor " an "y " "bounds " bound "ing " "us. "
  "\nThen, "  "Then, " "Then, " "Then, "  "Then, "
  "\nthen " "we " "burst " "forth, "
  "\nwe " "float, " "in " "time " "and " "space, " 
  "\nin " "time " "and " "space "
  "\nO "  "soul, " pre "pared " "for " "them, " % 17b
  "\nthen " "we " "burst " "forth, "
  "\nthen " "we " "burst " "forth, "  % 19a
  "\nthen " "we " "burst " "forth, "
  "\nwe " "float " "in " "time " "and " "space, "
  "\nO " "soul, " pre "pared " "for " "them, " % 20b
  "\ne" "qual, " e "quipt " "at " "last. " % 21a
  "\nO " "soul, " pre "pared, " pre "pared " "for " "them " "at " "last "
  "\ne" "qual, " e "quipt " "at " "last, " 
  "\nO " "soul, " pre "pared, " pre "pared " "for "  "them, "  % 22a
  "\ne" "qual " e "quipt "  "at "  "last, "
  "\ne" "quipt, " e "quipt " "at " "last "
  "\ne" "qual, " e "quipt, " e "quipt " "at " "last, "  % 23b
  "\ne" "qual " e "quipt " "at " "last, "
  "\ne" "qual, " e "quipt " "at " "last. " 
  "\nO " "joy! " 
  "\nO " "fruit "  "of "  "all! "
  "\nO " "joy! " 
  "\nO " "fruit "  "of "  "all! "
  "\nthem " "to " ful "fil, "
  "\nthem " "to " ful "fil "  "O "  "soul, " % 27a
  "\nthem " "to " ful "fil "  "O " "soul. " 
}

wordsBassAboveAlign = {
  s1*21 | s1. | s1*2 | s2 | s1*3 |
  s1. | s1*25 | s1. | s1*3 | s1. |
  s1*41 |
  d1(2) 2~2 2 |
  s1*105 |
}

wordsBassAbove = \lyricmode {
  ties __ loos -- en,
}

pianoRHone = \relative {
  \global
  <e' bes' d>2--^\markup\with-color "red" \bold "in 4"( <e g c>4-- <c e a>-- | <a c f>2 <g d' e g>) |
  <a a'>1\caesura \clef bass | <e bes' d>2--(<e g c>4-- <c e a>-- |
  <a c f>2 <bes d g>) \clef treble |
  \repeat unfold 6 {<a' a'>2. 8. 32-. 32-. |}
  R1 | q2 <e' bes' d>4(<e g c>) | <a, c f>4.^(<bes d g>8 \vo <a a'>2) | % 2c+
  d4(\tuplet 3/2 {8 e f} \ov <g, bes f'>2)~ | % 3a
  q4 <c f a>4--(<bes f' g>--) \vo r4 | \ov <bes f' bes>2.(<a f' a>8 <g f' g>) |
  <a f' a>2 <d, d'>4(<e d' e>8 <f d' f> |
  <g d' e g>2. <a cis f a>4) \clef bass | % 3b
  <d, d'>2. 8. 32-. 32-. | 2 \clef treble <e' bes' d>2--( \time 3/2 |
  <e g c>4-- <c e a>-- <a c f>2-- <g d' e g>--) \time 4/4 |
  \vo a''4(f2 cis4) | a'4(f2 cis4) \time 2/4 \ov | <a, a'>2 \time 4/4 | % 4a
  \vo r2 r4 e''(~ | \ov <e, g e'> <cis e cis'> <a f' a>2) |
  \vo <e' gis>2. g4-- \time 3/2 \ov | % 4b
  <a, d fis>1-- ~4 \clef bass <a, d fis>4 \section \time 4/4 \key c \major |
  <d fis a>4( \clef treble <a' d fis> <d fis a> <fis a d>) |
  <fis a cis>4.(<fis a d>8 <d fis a>2)~ |
  q4 \vo c'2(b4)~ | 8 a r4(r2 | e'4. fis8 <b, d>2) | e8(fis d2) s4 | % 5a
  <d, d'>4( \ov <a d fis> <d fis a> <fis a d> | % 5b
  <fis a cis>4. <fis a d>8 \vo a4) cis8 d | <ees, c'>4. <d bes'>8 <bes' d>2 |
  r8 bes(d f) ees2~ |
  <ees, g bes ees>4. c'8(ees bes' a4) | <a, a'> <a d a'>2 d4~ | % 6a
  d8 d(cis d) c2~ | <ees, fis c'>~ 8(<g b> <c, ais'> <b b'>) |
  a'2~8(b cis a' | gis a e4) \ov r2 | R1 | \vo r2 r4 r8 e( | % 6b
  gis c4 e8) \ov r4 <ees, aes c ees>~ |
  q4~8 r r2 | \vo r2 r8 ces(ees g) | % 7a
  r <dis fis> \( <cisis eis> <cis e>(<c e>) <b dis> \) \ov <b d b'>4~(
  q4 <bes d bes>) \vo <a d a'>8^\markup\italic cantabile fis(a d |
  cis8 d a4) <cis, a'>2~ | % 7b
  \vt a'8 bes \ov <f bes d f> <bes d f bes> \vo <a a'> <bes bes'> <des f>4~ |
  \time 3/2 <a f'>2~ f'8 ges fes4~8 f ees aes, \time 4/4 |
  ees'2-- des4-- bes-- | ges2-- aes-- | bes \ov \clef bass ees,2-- \time 3/2 | % 7c
  des4--(bes-- <ees, ges>2-- <f aes>--) \section \key f \major \time 4/4 | % 7d
  <bes, bes'>2. 8. 32 32 | 2. 8. 32 32 \clef treble |
  r4 <a' a'>2.~ | 8 r r4 r2 | q2 <e' bes d>4(<e g c> | % 8a
  <a, c f>4. <bes d g>8 <a d a'>2) |
  \vo d4^\markup\italic cantabile. (e8 f) <f g>2 | <bes, g'> a'4(bes8 c | % 8b
  <c, d'>2) \ov <d g b>4(<g b d>8 <b d g> |
  <b d fis>4. <b d g>8 \vo f'2 |
  e2 <g, d'>) | d'4 s <f d'>2( | % 9a
  d'4)(c \ov <g, ees'> <f aes f'> \section \key ees \major |
  <g bes g'>4) <bes, ees g>(<bes g' bes>4. <g' bes ees>8 | % 9b
  q4 <bes des g>8 <des g bes> \vo bes'4 aes) | 4(g8 f g) r r4 |
  bes4.(c8 bes4 aes) | \ov <ces, ees ges>2(<ees ges ces>4 <ges ces ees>) | % 10a
  \vo <g bes ees g>2. r4 |
  s1 | % 10b
  \tuplet 3/2 4 { <e g c e>8 8 8 8 8 8 <e g b e>8 8 8 <e g bes e>8 8 8} \section \key c \major |
  \vo <e a cis e>1~ | 1~ |
  \tuplet 3/2 4 {<a cis e>8 <e a cis e>8 8 8 8 8 <e g cis e>8 8 8 8 <e g c>4} | % 11a
  <d f bes d>1 |
  <g b d g>1~ | 1~ | 1 | s4 <c, c'>2 <b b'>8 <a a'> | % 11b
  b'2~(<b, b'>8 <bes bes'>4 <a a'>8) | % 12a
  \tuplet 3/2 {<aes aes'>8(<bes bes'> <aes aes'>} <ces ces'>2 <bes bes'>8 <aes aes'>) |
  <bes bes'>2 a'4.(gis8) |
  gis2 fis | 4(e2~8 ees) | 4(d2~8 des) | 4(c~8^\< ces4^\> bes8\!) | % 12b
  a4 8-- 8-- f4-- g-- | a1 \section \key f \major | % 13a
  <e bes' d>2(<e g c>4-- q--) | f4.(g8 a4-- a--) |
  d,4(\tuplet 3/2 {d8 e f} <f g>2) |
  <bes, g'>2 e4(f8 g) | a2 a | fis4(g8 a b4 a) \section \key c \major | % 13b
  \tuplet 3/2 {<a c>8(<b d> <a c>} <c e>2.~ | % 14a
  4 <b d>8 <a c> <fis b>4) a8 b | \tuplet 3/2 {<a c>8(<b d> <a c>} <e' g>2. |
  q4 <d fis>8 <c e> <fis, b>2) | gis4(a8 b cis2) | % 14b
  ais4(b8 cis dis2) |
  \tuplet 3/2 {<gis, e'>8(<ais fis'> <gis e'>} gis'2 <dis fis>8 <cis e>) |
  \vo \tuplet 3/2 {<ais cis e>8(<dis fis> <cis e>} <e gis>2 <dis fis>8 <cis e> | % 15a
  \ov <a cis e>4) <c a'>(<b gis'> <a fis'>) |
  <fis' gis fis'>(<e gis e'>2 <d gis d>4) |
  \vo <d d'>4(<cis cis'> <b b'> <a a'>) | <c c'>2 q~ | % 15b
  q4(<d d'>2 <e e'>4) \section \key f \major |
  \ov <f a f'>8 r r4 r2 | r2 <a,, d f>4. 8 | % 16a
  <d f a>4 <f a d> <d f a> <bes d g> |
  <d f a>4 <f a d> \tuplet 3/2 {<d f a> <bes d g> <d f a>} | R1 |
  c'1 | <a, c f>4 a <a c> <a f'> | <c f a> <f a c> \vo <f a>4. <e g>8 | % 16b
  \ov <a, d f>4 <f a> <f a d> <b d f> |
  <c f a>4-- <c a' c>-- \vo \tuplet 3/2 {a' bes c} |<bes d>2 <a c>4 <g bes> |
  f'2(e4 d) | c2. 4 | <c, a' c>2 \tuplet 3/2 {<f a>4 <g bes> <a c>} | % 17a
  d2 4 e \section \key c \major |
  e2 cis4 b | a a'2. | d1 | % 17b
  cis2~8 e, a cis | e2~\tuplet 3/2 {e4 d cis} | b2-- a4-- g-- | % 18a
  \ov fis16(d b fis fis' d b fis fis' d b fis fis' cis b fis) |
  <<{\vo fis'1} \new Voice {\vo s2 d4 cis}>> |
  \vo b1 | c | % 19a
  \ov cis16(a fis cis fis cis fis a cis a fis cis cis' gis e cis) | % 19b
  ees'16(bes g ees g ees g bes ees ces g ees ees' bes g ees) |
  \vo fes'2(ees4 d) | % 20a
  \ov ees16(bes g ees g ees g bes ees ees, g bes ees g, bes ees) |
  \vo g2(f4 ees) | % 20b
  \ov f16(ees bes f f' ees bes f f' d bes f f' d bes f) |
  <aes f' aes>4(<c aes' c>-- \vo <b b'>2--) | % 21a
  <bes bes'>2(<aes aes'>4 <g g'>) | f'2 fis4.(e8) |
  d4 c \tuplet 3/2 {bes c d} | e4.(b8) \tuplet 3/2 {c4 d e} | % 21b
  <b f'>2 \tuplet 3/2 {d4 e f} | <d g>2 \tuplet 3/2 {e4 f g} |
  <e a>2 \tuplet 3/2 {f4 g a} | <bes, d f bes>1 | % 22a
  \ov <bes bes'>4. <a a'>8 \vo <g g'>4 <f f'> | \ov
  \repeat unfold 2 \repeat tremolo 8 {<d' fis a>32 a} |
  <bes d f bes>4.(<a a'>8 <g bes d g>4 <f f'>) | % 22b
  <a d fis a>4.(<g g'>8 <fis d' fis>4 <e a e'>) |
  <g d' g>4.(<fis fis'>8 <e a e'>4 <d d'>) |
  <ees' f ees'>4. <des des'>8 <c des c'>4 <bes bes'> \section \key f \major |
  \vo bes'4.(a8 g4 f) | e4.(d8 c4 bes) | % 23a
  bes4.--(a8-- g4-- f--) | c'2-- bes-- | a-- f-- |
  c'2 bes | 4. a8 g4 f | \vo r4 f'2. | g8 a bes4. a8 g f | bes4. a8 g f bes4~ | % 23b
  bes8 a g f \tuplet 3/2 {g a bes} b a | % 24a
  g8 f b a g f \repeat unfold 13 {b16 a g f} |
  <f b f'>1 | \ov r16 des [ r f r g r a] r f[r g r a r des] | % 25a
  f8 r r4 \tuplet 3/2 {<f,, a f'>4 <a c a'> <f' a f'>} \section |
  \repeat unfold 9 \tuplet 3/2 {<g bes ees g>8 8 8} % 25b
  \tuplet 3/2 4 {<g bes d g> q q q q q <g bes des g> q q} |
  \tuplet 3/2 4 {\repeat unfold 8 <g c e g>8 <g b e g> q <g bes e g> q} | % 26a
  \repeat tremolo 3 <g aes des f>8*2/3 \repeat tremolo 3 <des g aes des>
  \repeat tremolo 3 q8*2/3 \repeat tremolo 3 <aes des f aes> |
  \repeat tremolo 3 <f aes des f>8*2/3 \repeat tremolo 3 <des f aes des>
  \repeat tremolo 3 <des f aes>8*2/3 \repeat tremolo 3 <aes des f> |
  \clef bass \repeat tremolo 3 <f aes des>8*2/3
  \repeat unfold 2 \repeat tremolo 3 <f aes>8*2/3
  \repeat tremolo 3 <f aes bes>8*2/3 \clef treble \section |
  <a c>4-- <f a>-- <a c>-- <a c f>-- | % 26b
  <c f a>4-- <f a c>-- <d f a>-- <c e g>-- | <a c f> r r2 |
  <a d f>2.-- 4-- | <d f a> <f a d> \vo \tuplet 3/2 {<f a>4-- <e g>-- <f a>--} |
  \ov <a, d f>4 r r2 | <d f bes>4. 8 <f bes d>4 <bes d f> | % 27a
  <f bes d>4 <bes d f> \tuplet 3/2 {<f bes d> <ees bes' c> <f bes d>} |
  <g bes d g>4 r r2 | R1 |
  bes,16( c32 d e f g a bes16 c32 d e f g a) <d, f bes>2~ | % 27a
  q4(<a d f a>2 <g bes e g>4) r2 <a c f>4. 8 |
  <c f a>4 <f a c> <c f a> <bes f' g> | <f' a c>2 <a, c f>4. 8 |
  \repeat unfold 2 {<a c f a>4 <c f a c> <a c f a> <g bes f' g>} | % 27c
  <a c f a>4 <c f a c> \tuplet 3/2 {<a c f a> <bes f' g> <c f a>} |
  <c f a c>1 | 2.. 8 | 1\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s1*13 | s2 d'4(c) |
  a8(c bes a) s2 | s2. <c f a>8 <bes f' g> | s1*2 | % 3a
  s1*3 | s1. |
  a'4 <f a>2 <cis a'>4 | a'4 <f a>2 <cis a'>4 | s2 | <gis e' gis>2~4 <e' gis>4~ \vo \once\hideNotes q s2. | % 4a
  \vt gis,4(cis8 dis e cis <b e>4) \time 3/2 | s1. \section \time 4/4 | s1*2 |
  s4 <d f> <d g>2~ | <d fis>4 <d fis a> <fis a d> <a d fis> | % 5a
  <<{\vf c2 s} \new Voice {\vt fis,4(a2 g4)}>> | \vt fis(a2 g4) |
  g4 s2. | s2 <e a>8 <fis d'> <e b'>4 | bes'8 a g4--(<d d'>-- <f f'>--) | % 5b
  \set tieWaitForNote = ##t <e d' e>8 <d bes'> <f d'>4 <g bes d>8 ees~ g~ bes~ |
  <<{\once\hideNotes \vo <ees, g bes>4. s8 s2} \new Voice {\vt s8 c ees[bes'] c4 <c ees>}>> | \vt % 6a
  <<{ees8 d s4} \new Voice {r2}>> r8 d,(f a)(|
  aes4) r <ees g> \vth ees_~ \vt | \once\hideNotes ees2 c8(b ees d) |
  r8 b(d a'~4) 4 | <a cis> <e a c> s2 | s1 | r4 r8 \parenthesize c e gis c d~ | 2 r4 s | % 6b
  s1 | r4 r8 ees,8(g ces)~4 | r8 fis,4 g8~8 f s4 | s2 r8 fis eis e | % 7a
  ees8 d~<d~ f> cis f e ees4 | \vo <d d'>4 \vt s4 <d' f>4 bes8 a | % 7b
  \time 3/2 d8 c ces4 <ges bes>2 <f a>4.~f8~ \time 4/4 |
  <f aes>8(<fes aes> <ees g>~<ees ges>~ges f fes ees) | % 7c
  <c ees>2 <ces ees> | <d ges> s \time 3/2 |
  s1. \time 4/4 | s1*2 | % 7d
  s1*4 | % 8a
  <<{\vth d1} \new Voice {\vt d4. c8 4 b}>> | \vt f'4(e) <ees g>2 | % 8b
  g4 fis s2 | s g4(bes8 <f d'>) |
  <<{\vf d'4(c2 b8 a)} % 9a
    \new Voice {\vt \tuplet 3/2 4 {e8 \lh d(e g, c e d g, a b d e)}}>> |
  \tuplet 3/2 4 {\rh <g b>( \lh e d b a g)} \rh a''4 \vo \tuplet 3/2 {4 bes8} |
  \vt <e, g>2 s \section \key ees \major |
  s1 | s2 <c ees> | bes(<bes ees>4 <bes ees g>) | % 9b
  <des f>2 <c ees> | s1 | % 10a
  r8 bes,(<bes ees> <bes ees f> <bes ees g> <ees g bes> <g bes ees> <bes ees f> |
  <bes ees g>8 <bes ees g bes> <ees g bes ees> <g bes ees g>) <aes d f>4.(<bes ees g>8) | % 10b
  s1 \section \key c \major |
  <<{r2 \vo a,4. 8 | <a cis>4 <cis e> \tuplet 3/2 {c <e, b'> c'} |}
    \new Voice {\vt r2 <cis, e>4. 8 | e4-- a-- \tuplet 3/2 {<fis a>-- gis-- q--}}>>
  <a cis e>4 s2. | \lh \tuplet 6/4 4 {f,,16(bes d \rh f bes d \lh f, bes d \rh f bes d \lh f, bes d \rh f bes d \lh bes, d f \rh bes d f)} |
  <<
    {\vo r2 g,,4. 8 | <g b>4 <b d> <g b> <d a'> | <g b> <b d> \tuplet 3/2 {<g b> <d a'> <g b>} |}
    \new Voice
    {\vt r2 <b, d>4.-- 8-- | d4-- g-- e-- fis-- | e-- g-- \tuplet 3/2 {e-- fis-- e--}}
  >>
  \vt \tuplet 3/2 {<a c a'>8 <b b'> <a a'>} c2 ees4 |
  <b dis>8 4 8 <c e>8 4 8 | ees4 <ees ges>8 4 8 ees4 | % 12a
  <ees f>8 4 <d f>8 <a c e>8 4 8 |
  \tuplet 3/2 {a8(b a} c2 b8 a) | <gis b>8 4 8 <g b> <e g>4 <ees g>8 | % 12b
  q8 4 8 <ees ges>8 4 8 | ges8 f4 fes8 ees8~<ees ges> <d f>4~ |
  <d f>8 cis4(c8~8 b4 bes8) | a1 \section \key f \major | % 13a
  s1 | d2. c4 | d4 d(c b) |
  f'4 e <g, d'>2 | % 13b
  <<{\vf d'4(cis c2)} \new Voice {\vt a'4. g8 4 fis}>> \vt |
  fis4 e2 fis4 \section \key c \major |
  r2 c4 d8 e | fis4. e8 4 dis | s2 \parenthesize c4 d8 e | % 14a
  fis4 g8 a e4 dis | fis2. eis4 | <<{gis2. fisis4} \new Voice {\vf s2 dis}>> | \vt s2. gis4 |
  s1*3 | % 15a
  g'1 | 2(fis | e d) \section \key f \major |
  s1*5 | % 16a
  \vf <f, a c>2 \vt <c f a>4 <bes c g'> | s1 | % 16b
  s2 d4 bes | s1 | s2 f'4.(<e g>8) | f2 f |
  <<{\vth b4 a} \new Voice {\vt f4.-> 8->}>> \vt a-> c-> a-> g-> | % 17a
  <f a>2. <c bes'>4 | s2 f | d4~ \tuplet 3/2 4 {8 f a d a f e' gis, e} |
  \tuplet 3/2 4 {e'8(cis e, e' cis e, c' a fis b gis d)} | % 17b
  \tuplet 3/2 4 {a'8(cis fis a cis, a d bes a e' cis a)} |
  \tuplet 3/2 4 {<fis' a>8(d q d q d} q4 <d gis>) |
  \tuplet 3/2 4 {e8(cis e cis e cis)} e2 | % 18a
  \tuplet 3/2 4 {<g b>8(e q e q e)} \tuplet 3/2 {q2 <cis e>4} |
  \tuplet 3/2 {<b cis>4 <b d> <b e>} <b d> q |
  s1 | fis'16(d b fis fis' d b fis d' b fis d cis' ais fis cis) | % 18b
  b'16(fis d b d b d fis r gis dis d g fis g b) | % 19a
  cis16(gis fis cis cis' gis fis cis cis' a eis cis cis' g eis cis) |
  s1*2 |
  fes'16(ces aes fes fes' bes, aes fes ees' ces aes fes d' ces aes fes) | s1 | % 20a
  g'16(ees bes g bes g bes ees f d a f ees' c a ees) | s1 |
  s2 <<{<ees' g>4 s} \new Voice {\once\hideNotes \vo b4_( \vt <d f>)}>> | % 21a
  e4.(d8 c4 bes) | f'16(c bes f aes f aes c fis c a fis a fis a c) |
  d16(g, e d c' a fis d) \tuplet 3/2 {g4 <d g> q} | % 21b
  <d gis>2 \tuplet 3/2 {<d a>4 <d b'> <d c'>} |
  <f a>2 <a b> | <g bes> <bes d> |
  \repeat tremolo 8 {c32 a} <c d>2 | \tuplet 3/2 2 {r4 g bes d f g} | % 22a
  s2 <bes, d> | s1 |
  s1*4 \section \key f \major | % 22b
  <c f>2 <a c> | <f a> <c e> | <c f>1 | q | f4.--(e8-- d4-- c--) | % 23a
  <c f>1 | 2 <a c> | c'1 | <c f> | c |
  <c f>2. <b f'>4~ | 4 2 4 | b1 | s1*2 | % 24
  r4 r16 f [ r g ] r a [ r des r ees r f ] | s1*2 | % 25a
  s1*2 \tiny ees,4 d2 des4 \normalsize |
  \once\tiny c2 s | s1*8 | % 26
  s1*16 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\omit\p-\markup{\dynamic p \italic sostenuto} | s2 s\> | s1\! | s | s2\> s\! | s1\omit\p-\markup{\dynamic p \italic pesante} |
  s1*4 |
  s2.\> s4\! | s1 | s\p | s |
  s1 | s4\< s\!-\markup\italic cantando s2 | s1*2 | % 3a
  s2.\> s4\! | s1 | s2\< s\!-\markup\italic sostenuto | s1 s2\> |
  s1\p-\markup\italic misterioso. | s1 | s2 | s1*2 | % 4a
  s2. s4\> | s1\ppp s2\> | s1\mp-\markup\italic cantabile | s |
  s4\< s\! s2\> | s1\! | s | s2 s4\< s\> | % 5a
  s1\! | s | s4 s2.\mf | s1 |
  s4 s\< s\f s\> | s1\dim | s1 | s2 s4\< s\> | % 6a
  s2\p s\> | s4 s2.\! | s1 | s2..\pp s8\> | s4 s\! s s\pp |
  s1*2 | s2-\markup\italic cantabile s8 s4.\< | s4.\> s8\! s2 | % 7a
  s1 | s2.\omit\mf-\markup{\dynamic mf \italic cantabile} s4\< | s\> s\! s1 |
  s1*2 | s2 s\dim |
  s2 s\> s\! | s1\pp | s |
  s4 s2.\ppp | s1 | s\p | s | % 8a
  s1 | s2 s\< | s\> s\omit\mp-\markup{\dynamic mp \italic cantabile} | s1 |
  s1*3 | s1\mf | s1*2 | % 9
  s2\< s\> | s1\pp | s\mf | % 10a
  s2 s\< | s\p\< s\> | s1\ppp | s |
  s4 s\< s\> s\! | s1\p | % 11a
  s1\ppp | s1*2 | s1\omit\f-\markup{\italic poco \dynamic f \italic agitato} |
  s2 s4\< s\> | s1\! | s | s4 s_\markup\italic dim. ^\< s\> s\! | s1*2 | s1\p | % 12
  s1\pp | s | s\omit\pp-\markup{\dynamic pp \italic teneramente} | s1*2 | % 13a
  s2. s4\cresc | s1 | s4 s2.\cresc |
  s4 s2.\omit\f-\markup{\italic poco \dynamic f} | s2\> s\p | s4\< s\f s2 | % 14a
  s2\> s\p | s1\cresc | s | s\cresc |
  s1 | s\f | s\cresc | s1*3 | % 15
  s1\ff | s2 s\omit\ff-\markup{\dynamic ff \italic brillante} | s1*2 | s1-\markup\italic "molot allarg." | % 16a
  s1\omit\ff-\markup{\dynamic ff \italic "a tempo"} | s | s\omit\f-\markup{\dynamic f \italic legato} | s1*2 | s2\> s\! |
  s1*4 | s1\mf | s1*2 | % 17
  s1*2 | s1\f | s1*2 |
  s1*3 | s4 s2\< s4\! |
  s4 s\> s8. s16\! s4 | s1 | s\cresc | s | % 20
  s1\omit\ff-\markup{\dynamic ff \italic espress.} | s2 s\> | s\mf s\cresc | s1*4 |
  s1*2 | s1\cresc | s4 s2\< s4\! | s1*3 | s4 s2\< s4\! |
  s1\ff | s1*7 | s1\cresc | s1 | % 23
  s1 | s2 s\< | s2\! s\omit\ff-\markup{\dynamic ff \italic marc.} | s1*2 |
  s4 s2.\< | s s4\! | s2 s\fff | s1*3 |
  s2 s\< | s1\! | s4 s2.\> | s s4\! | s1\omit\mp-\markup{\dynamic mp \italic sonore.} | s1*2 | s1\f | s | % 26
  s1 | s\ff | s1*3 | % 27a
  s2\< s\ff | s\< s\! | s1\omit\fff-\markup{\dynamic fff \italic marcato.} | s1*2 |
  s1*4 | s4 s2.\< | s2 s\! |
}

pianoLHone = \relative {
  \global
  <g,, g'>2--(<a a'>4-- <c c'>-- | <d d'>2 <bes bes'>) |
  <a a'>1 \caesura | <g g'>2--(<a a'>4-- c-- | d2 e) |
  \repeat unfold 2 {r8 <a, a'>8-. <g g'>-. <a a'>-. <f f'>-. <g g'>-. r4 |}
  r8 <f' f'>^\markup\italic simile <e e'> <f f'> <d d'> <e e'> r4 | % 2b+
  r8 <e e'> <f f'> <e e'> <d d'> <e e'> r4 |
  r8 <c c'> <d d'> <c c'> r2 |
  r8 <bes bes'> <c c'> <bes bes'> r2 | <a a'>8 r r4 r2 | % 2c
  r8 q8 <bes bes'> <a a'> r <g g'> r <a a'> |
  r8 <d d'> r <e e'> e <f, f'> <g g'> <a a'> |
  <bes bes'>8 <a a'> <bes bes'> <c c'> r <d d'> <e e'> <d d'> | % 3a
  r8 q <f f'> <e e'> r <d d'> <e e'> <d d'> |
  r8 <des des'> <ees ees'> <des des'> r q <c c'> <des des'> |
  r8 <c c'> <b b'> <c c'> r d <c c'> <b b'> |
  r8 <bes bes'> <c c'> <bes bes'> r <a a'> <bes bes'> <a a'> | % 3b
  r8 d <c c'> d <bes bes'> <c c'> r4 |
  r8 q <bes bes'> <c c'> <a a'> <bes bes'> <f f'> <g g'> \time 3/2 |
  r8 <a a'> r <c c'> r <d d'> <c c'> <d d'> r <bes bes'> <c c'> <bes bes'> \time 4/4 |
  \repeat unfold 2 {r8 <a a'>\<(<cis cis'> <e e'> <d d'>\> <e e'> <cis cis'> <a a'>\!) |} % 4a
  \time 2/4 R2 \time 4/4 |
  r2 r8 <gis gis'>(<cis cis'> <dis dis'> |
  <e e'>8 <dis dis'> <cis cis'> <gis gis'>) r2 |
  r8 gis'(cis dis e cis b gis) \time 3/2 | % 4b
  r8 a(d fis e fis d b a fis d b) \section \time 4/4 \key c \major |
  a8(a' d e fis e d a) | a,(a' d e fis e d a) |
  \vo r8 a(d fis g e d b) | \ov d,(a' d e fis e d a) % 5a
  \vo r8 a(d fis a fis g d) | r d(fis a d e d g,) |
  \ov a,8 b a b a b a b \vo | r8 fis' a d c4 s \ov | % 5b
  fis,,4 g8 a \vo s4 r8 g' | bes2 c,4 4 |
  \ov <ees, ees'>4-- <bes' bes'>-- <a a'>8(<g g'>4 <ges ges'>8) | % 6a
  <f f'>4 \vo r8 d'(f a)~4 | aes8 bes,(e g bes) \rh c ees g \lh |
  r8 ees,(fis a) s2 |
  \ov f,4 <f, f'>--(<a a'>-- <e' e'>-- | <dis dis'> <e e'>) r2 | R1 | % 6b
  \set tieWaitForNote = ##t
  \vo r8 e'(gis_~ c)~ \ov <e, gis c>2~ | 2 r4 <ees aes c ees>~ |
  q4~8 r r2 | \vo ees8 g_~ ces~ s \ov <ees, g ces>2 | % 7a
  \unset tieWaitForNote
  \vo dis4-- fis8-- b-- ais b fis gis | b cis d e r a, gis g~ |
  g8 fis f4~(8 e ees4) | f,16 bes d f~4 s2 \time 3/2 | % 7b
  \tuplet 3/2 {e,8(aes c} ees d) \ov <des, des'>4. <c c'>8 <b b'>2 \time 4/4 |
  s2 \vo <bes'' des> | a8(aes g ges~ges f e ees) | % 7c
  r bes'(a aes~8 8 g ges)~ |
  \time 3/2 ges8 f(e ees~8 d4 des8~8 c4 ces8) \section \key f \major \time 4/4 | % 7d
  \ov r8 bes,8-.^\markup\italic pesante <aes aes'>-. bes-. <ges ges'>-. <aes aes'>-. r4 |
  r8 bes8-. <aes aes'>-. bes-. <ges ges'>-. <aes aes'>-. r4 |
  r4 <a a'>2.~ | 8 r r4 r2 | r8 q <bes bes'> <a a'> r <g g'> r q | % 8a
  r8 <d' d'> r <e e'> r <f, f'> <g g'> <a a'> |
  r8 <bes bes'> r <a a'> r <g g'> <a a'> <g g'> | % 8b
  r8 <c c'> <d d'> <c c'> r q r <bes bes'> |
  r8 <a a'> <bes bes'> <a a'> \vo \tuplet 3/2 {r8 g'' a} \tuplet 3/2 {b a g} |
  \tuplet 3/2 4 {d8(g a b a g) d(g a b d) r} |
  s1 | s2 \tuplet 3/2 4 {<b, b'>8(d' f a b \rh d)} \lh | % 9a
  \tuplet 3/2 4 {c,,8(d e g c d ees d c aes g f)} \section \key ees \major |
  \tuplet 3/2 4 {bes,8(ees f g f ees bes ees f g bes ees)} | % 9b
  \tuplet 3/2 4 {des8(bes g ees g d' c\arpeggio bes c ees, aes c)} |
  \tuplet 3/2 4 {r8 bes,(ees g bes ees g f ees bes g ees)} |
  \tuplet 3/2 4 {g,8(des' f bes des f ees c bes c aes ees)} | % 10a
  \tuplet 3/2 4 {ees,8(ges ces ees des ces ees ges ces ees des ces)} |
  \tuplet 3/2 4 {bes,8(ees f g f ees bes ees f g bes ees)} |
  \tuplet 3/2 4 {g8(ees bes g f ees) r bes(c des c bes)} | % 10b
  \ov <c, e g c>4 \tuplet 3/2 4 {<c' e g c>8 8 8 <c e g b>8 8 8 <c e g bes>8 8 8} \section \key c \major |
  <a cis e a>1~ | q |
  \tuplet 3/2 4 {q8 8 8 8 8 8 <e gis c e>8 8 8 8 <e g c e>8 8} | % 11a
  \vt \after 2 \clef treble f1 \clef bass |
  \ov <g b d g>1~ | q~ | q | <g' c es>8 4 4 4 8 | % 11b
  \vo <fis b dis>4 s2. | f4 ges2(f4) | r8 <bes ees>4~8 s2 | % 12a
  r8 <c e>4 4 4 8 | b2 g4-- a-- | r <bes, bes'>-- <ges ges'>-- <aes aes'>-- | % 12b
  \ov <beses, beses'>2(<ges ges'>4 <aes aes'>) |
  <a a'>4 8 8 <f f'>4 <g g'> | <a a'>1 \section \key f \major | % 13a
  g''2(a4-- a--) | \vo c4.(bes8) a2 | f d4( \tuplet 3/2 {d8 e f)} |
  g2~4. f8 | \ov <a, e' g>2 <d, d'> | % 13b
  \vo a''4. g8 fis4(a8 b) \section \key c \major |
  \ov <b, a' c>8 <b fis' a>4 4 4 8 | \vo fis'4 g8 a b \ov <b, fis'>4 \vo fis'8 | % 14a
  fis4 a8 b c <f, a>4 8~ |
  q8 f4 8~8 <f a>4 8 | a8 4 8 <gis b>8 4 8~ | % 14b
  <gis cis>8 gis4 8 cis4(b8 ais) |
  <<{r8 <gis b>8~b16(e \rh gis b e4) gis, \lh}
    \new Voice {s2 \vo r8 <gis, b>4 8}>> |
  <<{\vo r8 <cis, ais'>8~(ais'16 cis e \rh gis ais4) fis \lh} % 15a
    \new Voice {\vo s2 r8 <cis, ais'>4 8}>> |
  r4 r16 fis,(a dis b dis fis a dis, fis a b) |
  r4 r8 <gis, b e> <b e gis>-- <e gis b>-- \tuplet 3/2 {<b e gis>-- <a e' fis>-- <b e gis>--} |
  r4 r8 <e a> <a cis>-- <a cis e>-- \tuplet 3/2 {<e a cis>-- <d a' b>-- <e a cis>--} | % 15b
  r8 <a c e>-- \tuplet 3/2 {<e a c>-- <d a' b>-- <c e a>--} d4.--\arpeggio 8-- |
  fis8-- a-- fis-- e-- fis-- a-- \tuplet 3/2 {fis-- e-- d--} \section \key f \major |
  \ov <b d f a>8 r r4 r2 | r2 <b d f>4. 8 | % 16a
  <d f a>4 <f a d> <d f a> <b d g> |
  <d f a>4 <f a d> \tuplet 3/2 {<d f a> <b d g> <d f a>} | R1 |
  <c, c'>2 <d d'>4 <e e'> | f <f f'> <e e'> <d d'> | % 16b
  <c c'>4 <a a'> <d d'> <c c'> | <d d'>2 <c c'>4 <bes bes'> |
  <a a'>4 <f f'> <g g'> <a a'> | <bes bes'>2 \grace {a'32 bes c} <d f>2 |
  \vo f2 s4
  \once\override Staff.OptionalMaterialBracket.positions = #'(0.5 . 2.5) \startOptionalMaterial
  f4 | a
  \once\override Staff.OptionalMaterialBracket.positions = #'(1.5 . 4 ) \stopOptionalMaterial
  c-- a-- g-- | % 17a
  \ov <f, f'> <e e'> <d d'> <c c'> |
  \vo \tuplet 3/2 {b'8\(d f~}<f a>2(<e gis>4)\) \section \key c \major |
  \ov <a,, a'>4 <cis cis'> <d d'> <e e'> | % 17b
  <fis fis'>4 <e e'> <d d'> <cis cis'> | \vo r d''4~(\tuplet 3/2 {d cis b} |
  b4 a) cis2 | r4 e(b cis) | % 18a
  \ov <b,, b'>4. 8-- <d d'>-- <fis fis'>-- <d d'>-- <cis cis'>-- |
  <b b'>2 <b' b'>-- | <a a'>4-- <g g'>-- <fis fis'>-- <e e'>-- | % 18b
  <d d'>4 <cis cis'>-- <b b'>-- <a a'>-- | % 19a
  \tuplet 3/2 {<gis gis'>4_\< <a a'>\! <b b'>} <cis cis'>2--_\> |
  <a a'>4--\! <gis gis'>-- <fis fis'>-- <e e'>-- | % 19b
  <ees ees'>4. <f f'>8 <g g'> <bes bes'> <ees ees'> <g g'> |
  <aes aes'>2 <aes, aes'> | <ees ees'>4-- <f f'>-- <g g'>-- <bes bes'>-- | % 20a
  \vo r4 <g'' c ees> d' ees | r <bes ees> d2 |
  d,16(f aes c d c aes f g ees b g g' d b g) | % 21a
  c,16(g' c e g bes c e) \ov r4 c, | <f, f'>4.(<ees ees'>8 <d d'>4. <c c'>8) |
  <bes bes'>4 <a a'> <g g'> <f' f'> | <e e'>2 <a, a'> | % 21b
  \vo \tuplet 3/2 2 {r4 f'' a f' e d} | \tuplet 3/2 2 {r4 bes d g f e} |
  \tuplet 3/2 2 {r4 f, c' f e d} | % 22a
  \tuplet 3/2 2 {r4 g, bes \clef treble d f g} \clef bass |
  \tuplet 3/2 2 {r4 g,, a r e' g} |
  \tuplet 3/2 2 {<fis,, fis'>4 <a a'> <d d'> <fis fis'> <a a'> <d d'>} |
  \tuplet 3/2 2 {r4 g, a r e' f} | \tuplet 3/2 {r fis a} b cis | % 22b
  \tuplet 3/2 2 {r4 a d fis, g a} |
  \tuplet 3/2 2 {r des,-- f-- bes--\arpeggio c-- des--} \section \key f \major |
  r4 f-- e-- d-- | c2-- a4-- g-- | f2. g4-- | % 23a
  bes4.-- a8-- g4-- f-- |c'2-- f,4-- g-- |
  bes4. a8 g4 f | r2 f~ | 4 g8 a bes4. a8 | g f r4 bes4. a8 | % 23b
  g8 f bes4. a8 g f |
  r4 bes8 a g f r4 | <f a b>2. r4 | q2 <des f>4.-- 8 | % 24a
  <des f a>4-- <f a f'>-- <des f a>-- <des f g>-- | % 24b
  <des f a>4-- <f a f'>-- \tuplet 3/2 {<des f a>-- <des f g>-- <des f a>--} |
  <des a' b>1 | \ov des'8 f g a f g a des | % 25a
  f8 r r4 \clef bass \tuplet 3/2 {<c,, f a c>4 4 4} \section |
  \repeat unfold 9 \tuplet 3/2 {<bes ees g bes>8 8 8} % 25b
  \tuplet 3/2 4 {<bes d g bes> q q q q q <bes des g bes> q q} |
  \tuplet 3/2 4 {<c, c'>8 <c' e g> q q q q} \vo c'8 b4 bes8 | % 26a
  \repeat unfold 6 \repeat tremolo 3 <aes, des f aes>8*2/3
  \repeat unfold 2 \repeat tremolo 3 <aes des f>8*2/3 |
  \repeat unfold 4 \repeat tremolo 3 <aes des>8*2/3 \section |
  <f f'>2. 4~ | 4 <a, a'> <bes bes'> <c c'> | <f f'> r r2 | % 26b
  <d d'>2. 4~ | 4 <f, f'>2 <a a'>4 |
  <d d'>4 r r2 | \vo r4 r8 <d' f bes> <f bes d>4 <bes d f> | % 27a
  <f bes d>4 <bes d f> <f bes d> r | \ov \acciaccatura <g,, g'>8 <g'' bes d>4 r r2 | R1 |
  <g, d' f>2 \vo <g' bes d>~ | 2.(<g bes e>4) | % 27b
  r2 r4 r8 \clef treble <a f'> | <c f a>4 <f a c> <c f a> <bes f' g> |
  <f' a c>2 \clef bass <d, d'> |
  <c c'>2 <a a'> | % 27c
  <f f'> <d d'> | <c c'> \vo \tuplet 3/2 {r4 \clef treble <bes'' f' g> <c f a>} \clef bass |
  \repeat unfold 2  \repeat tremolo 8 {g,,32 g'} \clef treble |
  <c' f a>2.. \clef treble q8 |
  q1\fermata |
}

pianoLHtwo = \relative {
  \set Staff.connectArpeggios = ##t
  \global \vt
  s1*14 |
  s1*7 | s1. | % 3
  s1*2 | s2 | s1*3 | s1. | s1*2 |
  a,,8 a'~4 g2 | s1 | d1 | c'2 b | % 5a
  s1 | a2. g4 | s2 g8 a g a | g2 c4 <c, c'>4--( |
  \hideNotes <ees ees'>4 <bes' bes'>) \unHideNotes s2 | % 6a
  s4 bes2.~ | 2. 4~ | 4 a~8(g fis g) |
  s1*3 | r8 e'8 4~\once\hideNotes 2 | s1 | % 6b
  s1 | ees8 4*3/2~ \once\hideNotes \vo ees2 \vt | % 7a
  <<{fis,1} \new Voice {s2. fis'4~}>> | 2 fis,~ |
  fis4 g2~(8 ges) | f2~8(d) ees4~( \time 3/2 | % 7b
  ees4. d8 s4. \once\hideNotes c8)s2 \time 4/4 |
  <bes bes'>1~ | 1 | q \time 3/2 | % 7c
  q1. \section \key f \major \time 4/4 | s1*2 | % 7d
  s1*4 | % 8a
  s1*2 | s2 \acciaccatura g8 g'2 | g1 |
  g1~ | 2 s | c1 \section \key ees \major | % 9a
  bes1 | ees2 aes,\arpeggio | ees1 |
  g2 aes' | ees,1 | ees | % 10a
  ees2 bes | s1 \section \key c \major | s1*2 |
  s1*6 | % 11
  r4 <b b'>-- <g g'>-- <a a'>-- | ces'(aes2 ces4) | % 12a
  <bes, bes'>2 <fis fis'>4 <gis gis'> |
  <a a'>2. r4 | b'1 | bes, | s1 | % 12b
  s1*2 \section \key f \major | s1 | d'4.(e8) f2 | bes,4.(a8 g4 d') | % 13a
  c2 bes | s1 | c2 b \section \key c \major |
  s2.. \once\hideNotes b8~ | 2~8 s4 b8 | 2~8 4 8 | % 14a
  b8 4 8~8 4 8 | d2(cis) | e2(dis) | <dis, dis'>1 |
  <fis, fis'>1 | b | <e b' d> | % 15a
  e4. a8~2 | d, <fis a>\arpeggio | a c \section \key f \major |
  s1*11 | % 16
  f4 <f,, f'> <a a'> <bes bes'> | <c c'> r d' e | s1 | <b, b'>2 e | % 17a
  s1*2 | q2 e' |
  a,2. <a a'>4 | <cis, cis'>2 fis' | s1 | % 18a
  s1*2 |
  s1*4 | % 19
  s1*2 | <c, c'>2 <f' a> | <<{<bes,, bes'>1} \new Voice {s4 f''8 g aes4 bes}>> |
  d,2 s | c, s | s1*3 | <d d'>2 f' | <e, e'> g' |
  <f, f'>2 a' | <g,, g'>1~ | 2 <bes bes'> | s1 | % 22a
  g2 <bes bes'> | <fis fis'> a' | <d, d'> <fis fis'> | % 22b
  <bes bes'> <g des' f>\arpeggio \section \key f \major |
  <c,, c'>1~ | q | r4 <c' c'>2.~ | 1~ | 4 2.~ | % 23a
  q1 | <ees ees'> | q~ | 4 2.~ | 1 |
  <ees ees'>2. <d d'>4~ | 2. <des des'>4~ | 1~ | des1~ | 1 % 24
  \once\tiny <des, des'>8 s4. \clef treble a'''8 des ees f | s1*5 |
  s2 <g,, e'>2 | s1*8 |
  s1 | <bes, bes'>1~ | 2. <a a'>4 | s1*2 | % 27a
  s2 \acciaccatura c8 2~ | 4 <c c'>2. | s2 <f, f'> | s1*2 |
  s1*2 | s2 <a a'> | s1 | s4 \clef bass \repeat tremolo 8 {f32 f'} f,8 r |
  r4 \clef bass \repeat tremolo 12 {f32 f'} |
}

#(set-global-staff-size 16)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
            \new NullVoice = sopalign \wordsSopAboveAlign
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopalign \wordsSopAbove
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics \wordsAlto
            \new NullVoice = altoAlign \wordsAltoAboveAlign
            \new Lyrics \with {alignAboveContext = alto} \lyricsto altoAlign \wordsAltoAbove
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
            \new NullVoice = bassalign \wordsBassAboveAlign
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bassalign \wordsBassAbove
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
    output-suffix = "single-sop"
  }
  \score {
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
            \new NullVoice = sopalign \wordsSopAboveAlign
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopalign \wordsSopAbove
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAlto}
            \new NullVoice = altoAlign \wordsAltoAboveAlign
            \new Lyrics \with {alignAboveContext = alto} \lyricsto altoAlign {\tiny \wordsAltoAbove}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
            \new NullVoice = bassalign \wordsBassAboveAlign
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bassalign {\tiny \wordsBassAbove}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
    output-suffix = "single-alto"
  }
  \score {
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
            \new NullVoice = sopalign \wordsSopAboveAlign
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopalign {\tiny \wordsSopAbove}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics \wordsAlto
            \new NullVoice = altoAlign \wordsAltoAboveAlign
            \new Lyrics \with {alignAboveContext = alto} \lyricsto altoAlign \wordsAltoAbove
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
            \new NullVoice = bassalign \wordsBassAboveAlign
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bassalign {\tiny \wordsBassAbove}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
    output-suffix = "single-tenor"
  }
  \score {
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
            \new NullVoice = sopalign \wordsSopAboveAlign
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopalign {\tiny \wordsSopAbove}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAlto}
            \new NullVoice = altoAlign \wordsAltoAboveAlign
            \new Lyrics \with {alignAboveContext = alto} \lyricsto altoAlign {\tiny \wordsAltoAbove}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
            \new NullVoice = bassalign \wordsBassAboveAlign
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bassalign {\tiny \wordsBassAbove}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
    output-suffix = single-bass
  }
  \score {
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
            \new NullVoice = sopalign \wordsSopAboveAlign
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopalign {\tiny \wordsSopAbove}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAlto}
            \new NullVoice = altoAlign \wordsAltoAboveAlign
            \new Lyrics \with {alignAboveContext = alto} \lyricsto altoAlign {\tiny \wordsAltoAbove}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
            \new NullVoice = bassalign \wordsBassAboveAlign
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bassalign \wordsBassAbove
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
            \new NullVoice = sopalign \wordsSopAboveAlign
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopalign \wordsSopAbove
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAlto}
            \new NullVoice = altoAlign \wordsAltoAboveAlign
            \new Lyrics \with {alignAboveContext = alto} \lyricsto altoAlign {\tiny \wordsAltoAbove}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
            \new NullVoice = bassalign \wordsBassAboveAlign
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bassalign {\tiny \wordsBassAbove}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
            \new NullVoice = sopalign \wordsSopAboveAlign
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopalign {\tiny \wordsSopAbove}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics \wordsAlto
            \new NullVoice = altoAlign \wordsAltoAboveAlign
            \new Lyrics \with {alignAboveContext = alto} \lyricsto altoAlign \wordsAltoAbove
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
            \new NullVoice = bassalign \wordsBassAboveAlign
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bassalign {\tiny \wordsBassAbove}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
            \new NullVoice = sopalign \wordsSopAboveAlign
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopalign {\tiny \wordsSopAbove}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAlto}
            \new NullVoice = altoAlign \wordsAltoAboveAlign
            \new Lyrics \with {alignAboveContext = alto} \lyricsto altoAlign {\tiny \wordsAltoAbove}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
            \new NullVoice = bassalign \wordsBassAboveAlign
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bassalign {\tiny \wordsBassAbove}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
            \new NullVoice = sopalign \wordsSopAboveAlign
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopalign {\tiny \wordsSopAbove}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAlto}
            \new NullVoice = altoAlign \wordsAltoAboveAlign
            \new Lyrics \with {alignAboveContext = alto} \lyricsto altoAlign {\tiny \wordsAltoAbove}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
            \new NullVoice = bassalign \wordsBassAboveAlign
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bassalign \wordsBassAbove
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
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

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
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

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
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

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
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
