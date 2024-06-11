\version "2.25.16"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "For the beauty of the earth"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Rutter"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "F. S. Pierpoint (1835-1917)"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 2/2
}

TempoTrack = {
  \tempo Happily 2=66
  s1*104
  s4.*4
  s2
  s1 % 11b
  \tempo "rall."
  s1
  \tempo "(rallentando al fine)"
  s1*6
%  \set Score.tempoHideNote = ##t
}

TempoTrackMidi = {
  \tempo Happily 2=66
  s1*104
  s4.*4
  s2
  s1 % 11b
  \tempo "rall." 2=60
  s1
  \tempo "(rallentando al fine)" 2=60
  s1 \tempo 2=58
  s1 \tempo 2=56
  s1 \tempo 2=54
  s1 \tempo 2=52
  s1 \tempo 2=50
  s1 \tempo 2=48
%  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*4
  \textMark \markup { \box "3c" } s1*4
  \textMark \markup { \box "3d" } s1*4
  \textMark \markup { \box "4a" } s1*4
  \textMark \markup { \box "4b" } s1*4
  \textMark \markup { \box "4c" } s1*4
  \textMark \markup { \box "4d" } s1*4
  \textMark \markup { \box "5a" } s1*2
  \mark \markup { \circle "A"  } s1*2
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "5c" } s1*4
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*4
  \textMark \markup { \box "6c" } s1*4
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" }
  \mark \markup { \circle "B"  } s1*4
  \textMark \markup { \box "7c" } s1*4
  \textMark \markup { \box "8a" } s1*4
  \textMark \markup { \box "8b" } s1*4
  \textMark \markup { \box "8c" } s1*4
  \textMark \markup { \box "9a" } s1*4
  \textMark \markup { \box "9b" } 
  \mark \markup { \circle "C"  } s1*4
  \textMark \markup { \box "9c" } s1*4
  \textMark \markup { \box "10a" } s1*4
  \textMark \markup { \box "10b" } s1*4
  \textMark \markup { \box "10c" } s1*4
  \textMark \markup { \box "11a" } s4.*4 s2
  \textMark \markup { \box "11b" } s1*4
  \textMark \markup { \box "11c" } s1*4
}

soprano = \relative {
  \global
  R1*8
  r2 d'4\omit\mp^\markup{\dynamic mp \italic legato}^\markup\bold Sopranos ees % 3c
  f4 f g a
  bes1~
  bes
  r2 bes4 c % 3d
  ees4 d bes g
  g4.(a16 g f2~
  f4) r g a
  bes1~ % 4a
  bes4 bes c d
  ees,1~
  ees4 r c'8 bes bes c
  bes4a8 8~2~ % 4b
  a4 r a8 g g a
  g4 f8 8~2~
  f4 r bes^\< c
  d2.^\mf 4 % 4c
  ees2 f
  f4.(g16 f ees2)
  R1
  ees4^\mp d8 bes~8 g f4~ % 4d
  f2. c'4
  c4.(d16 c bes2)
  R1
  R1 % 5a
  R1
  r2 \apart d,4^\mf ees
  f4 f g a
  bes1~ % 5b
  bes1
  r2 bes4 c
  ees4 d bes g
  g4.(a16 g f2~ % 5c
  f4) r g a
  bes1~
  bes4 bes c d
  ees,1~ % 6a
  ees4 r c'8 bes bes c
  bes4 a8 8~2~
  a4 r r2
  R1 % 6b
  r2 bes4^\< c
  d2.^\f 4
  ees2 f
  f4.(g16 f ees2) % 6c
  R1
  ees4^\mf d8 bes~8 g f4~
  f2. c'4
  c4.(d16 c bes2) % 7a
  R1
  R1
  R1 \key g \major
  R1 % 7b
  R1
  r2^\markup unis. d4^\p c
  c4.(b8~8 c) b8(g)
  d2 r % 7c
  R1
  r2 r4 d8 e
  g4 fis e d
  b4 r8 b'8(~8 a) b4 % 8a
  b1~
  b4 c8 8~8 b c4(~
  c8 d b c~4) r
  c2.\omit\p^\markup{"(" \dynamic p ")"} a4 % 8b
  d8(e) d2.
  d2. g,4
  b4(a g fis
  g4) r d'4^\mf e % 8c
  f1~
  f4 g e e
  d8(c b c~2)
  R1 % 9a
  r8 d^\p c b g4 a
  a4.(b16 a g2)
  R1 \key b \major
  r2 dis4\omit\f^\markup{\dynamic f unis.}^\markup\bold "All Voices" e % 9b
  fis4 fis gis ais
  b1~
  b1
  r2 b4 cis % 9c
  e4 dis b gis
  gis4.(ais16 gis) fis2~
  fis4 r4 r2
  r4 r8 dis'^\mf~(8 cis) dis4~ % 10a
  dis1~
  dis4 e8 dis e4 dis8 b~(
  b4 gis2) r4
  r2 r4 fis( % 10b
  fis'1)
  r4 fis,^\cresc(fis' b,
  e4 dis) b^\f cis
  dis2. 4 % 10c
  e2 fis
  fis4.(gis16 fis e2)
  R1 \time 3/8
  e4^\mf dis8 % 11a
  b4 gis8
  fis4.~
  fis4.~ \time 2/4
  fis4 cis' \time 4/4
  cis4.(dis16 cis b2) % 11b
  R1
  e4^\p dis8 b~b gis fis4~
  fis2. cis'4
  b1
  R1
  R1
  R1
}

words = \lyricmode {
  \set stanza = "1."
  For the beau -- ty of the earth, __
  For the beau -- ty of the skies, __
  For the love __ which from our birth __
  O -- ver and a -- round us lies, __
  o -- ver and a -- round us lies, __
  Lord of all to thee we raise __
  This our joy -- ful hymn __ of praise. __
  \set stanza = "2."
  For the beau -- ty of each hour __
  Of the day and of the \set associatedVoice = alto night
  Hill and vale __ and tree and \set associatedVoice = soprano flower,
  Sun and moon and stars of light: __
  Lord of all, to thee we __ \set associatedVoice = alto raise __
  This __ our hymn of \set associatedVoice = soprano praise. __
  \set stanza = "3."
  For the joy __ of __ love,
  Bro -- ther, sis -- ter, pa -- rent, child,
  Friends on earth, __ and friends a -- bove, __
  For all gen -- tle thoughts and mild: __
  Lord of all, __ to thee we raise __
  A joy -- ful hymn of praise. __

  \set stanza = "4."
  For each per -- fect gift of thine __
  \set associatedVoice = alto To our race so free -- ly gi -- ven, __
  Gra -- ces hu -- man and di -- vine, __
  Flowers of earth and buds of heav’n, __
  flowers of earth and buds of \set associatedVoice = soprano heav’n, __
  Lord of all, to thee we -- \set associatedVoice = alto raise __
  This __ our joy -- ful hymn of praise, __
  our hymn of praise.
}

wordsSopSep = \lyricmode {
  \set stanza = "1."
  For the beau -- ty of the earth, __
  For the beau -- ty of the skies, __
  For the love __ which from our birth __
  O -- ver and a -- round us lies, __
  o -- ver and a -- round us lies, __
  Lord of all to thee we raise __
  This our joy -- ful hymn __ of praise. __
  \set stanza = "2."
  For the beau -- ty of each hour __
  Of the day and of the night
  Hill and vale __ and tree and flower,
  Sun and moon and stars of light: __
  Lord of all, to thee we __ raise __
  This __ our joy -- ful hymn of praise. __
  \set stanza = "3."
  For the joy __ of __ love,
  Bro -- ther, sis -- ter, pa -- rent, child,
  Friends on earth, __ and friends a -- bove, __
  For all gen -- tle thoughts and mild: __
  Lord of all, __ to thee we raise __
  A joy -- ful hymn of praise. __

  \set stanza = "4."
  For each per -- fect gift of thine __
  To our race so free -- ly gi -- ven, __
  Gra -- ces hu -- man and di -- vine, __
  Ah __ Ah __
%  Flowers of earth and buds of heav’n, __
%  flowers of earth and buds of heav’n, __
  Lord of all, to thee we -- raise __
  This __ our joy -- ful hymn of praise, __
  This our joy -- ful hymn __ of praise.
}

wordsAltoSep = \lyricmode {
  \set stanza = "1."
%  For the beau -- ty of the earth, __
%  For the beau -- ty of the skies, __
%  For the love __ which from our birth __
%  O -- ver and a -- round us lies, __
%  o -- ver and a -- round us lies, __
%  Lord of all to thee we raise __
%  This our joy -- ful hymn __ of praise. __
  \set stanza = "2."
  For the beau -- ty of each hour __
  Of the day and of the night
  Hill and vale __ and tree and flower,
  Sun and moon and stars of light: __
  Lord of all, to thee we __ raise __
  This __ our hymn of praise. __
  \set stanza = "3."
  For the joy __ of __ love,
  Bro -- ther, sis -- ter, pa -- rent, child,
  Friends on earth, __ and friends a -- bove, __
  For all gen -- tle thoughts and mild: __
  Lord of all, __ to thee we raise __
  A joy -- ful hymn of praise. __

  \set stanza = "4."
  For each per -- fect gift of thine __
  To our race so free -- ly gi -- ven, __
  Gra -- ces hu -- man and di -- vine, __
  Flowers of earth and buds of heav’n, __
  flowers of earth and buds of heav’n, __
  Lord of all, to thee we -- raise __
  This __ our joy -- ful hymn of praise, __
  our hymn of praise.
}

wordsTenorSep = \lyricmode {
  \set stanza = "1."
%  For the beau -- ty of the earth, __
%  For the beau -- ty of the skies, __
%  For the love __ which from our birth __
%  O -- ver and a -- round us lies, __
%  o -- ver and a -- round us lies, __
%  Lord of all to thee we raise __
%  This our joy -- ful hymn __ of praise. __
  \set stanza = "2."
  For the beau -- ty of each hour __
  Of the day and of the night
  Hill and vale __ and tree and flower,
  Sun and moon and stars of light: __
  Lord of all, to thee we __ raise __
  This __ our joy -- ful hymn of praise. __
  \set stanza = "3."
  For the joy of hu -- man love,
  Bro -- ther, sis -- ter, pa -- rent, child,
  Friends on earth, __ and friends a -- bove, __
  For all gen -- tle thoughts and mild, __
  For all gen -- tle thoughts and mild: __
  Lord of all, to thee we raise __
  This our joy -- ful hymn __ of praise. __

  \set stanza = "4."
  For each per -- fect gift of thine __
  To our race so free -- ly gi -- ven, __
  Gra -- ces hu -- man and di -- vine, __
  Flowers of earth and buds of heav’n, __
  flowers of earth and buds of heav’n, __
  Lord of all, to thee we -- raise __
  This __ our joy -- ful hymn of praise, __
  our hymn of praise.
}

wordsBassSep = \lyricmode {
  \set stanza = "1."
%  For the beau -- ty of the earth, __
%  For the beau -- ty of the skies, __
%  For the love __ which from our birth __
%  O -- ver and a -- round us lies, __
%  o -- ver and a -- round us lies, __
%  Lord of all to thee we raise __
%  This our joy -- ful hymn __ of praise. __
  \set stanza = "2."
  For the beau -- ty of each hour __
  Of the day and of the night
  Hill and vale __ and tree and flower,
  Sun and moon and stars of light: __
  Lord of all, to thee we __ raise __
  This __ our hymn of praise. __
  \set stanza = "3."
  For the joy of hu -- man love,
  Bro -- ther, sis -- ter, pa -- rent, child,
  Friends on earth, __ and friends a -- bove, __
  For all gen -- tle thoughts and mild, __
  For all gen -- tle thoughts and mild: __
  Lord of all, to thee we raise __
  This our joy -- ful hymn __ of praise. __

  \set stanza = "4."
  For each per -- fect gift of thine __
  To our race so free -- ly gi -- ven, __
  Gra -- ces hu -- man and di -- vine, __
  Flowers of earth and buds of heav’n, __
  flowers of earth and buds of heav’n, __
  Lord of all, to thee we -- raise __
  This __ our joy -- ful hymn of praise, __
  our hymn of praise.
}

wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "For " "the " beau "ty " "of " "the " "earth, " 
  "\nFor " "the " beau "ty " "of " "the " "skies, " 
  "\nFor " "the " "love "  "which " "from " "our " "birth " 
  "\nO" "ver " "and " a "round " "us " "lies, " 
  "\no" "ver " "and " a "round " "us " "lies, " 
  "\nLord " "of " "all " "to " "thee " "we " "raise " 
  "\nThis " "our " joy "ful " "hymn "  "of " "praise. " 
  
  \set stanza = "2."
  "\nFor " "the " beau "ty " "of " "each " "hour " 
  "\nOf " "the " "day " "and " "of " "the " "night "
  "\nHill " "and " "vale "  "and " "tree " "and " "flower, "
  "\nSun " "and " "moon " "and " "stars " "of " "light: " 
  "\nLord " "of " "all, " "to " "thee " "we "  "raise " 
  "\nThis "  "our " joy "ful " "hymn " "of " "praise. " 
  
  \set stanza = "3."
  "\nFor " "the " "joy "  "of "  "love, "
  "\nBro" "ther, " sis "ter, " pa "rent, " "child, "
  "\nFriends " "on " "earth, "  "and " "friends " a "bove, " 
  "\nFor " "all " gen "tle " "thoughts " "and " "mild: " 
  "\nLord " "of " "all, "  "to " "thee " "we " "raise " 
  "\nA " joy "ful " "hymn " "of " "praise. " 

  \set stanza = "4."
  "\nFor " "each " per "fect " "gift " "of " "thine " 
  "\nTo " "our " "race " "so " free "ly " gi "ven, " 
  "\nGra" "ces " hu "man " "and " di "vine, " 
  "\nAh "  "ah " 
  "\nLord " "of " "all, " "to " "thee " we "raise " 
  "\nThis "  "our " joy "ful " "hymn " "of " "praise, " 
  "\nThis " "our " joy "ful " "hymn "  "of " "praise, " 
}

wordsAltoMidi = \lyricmode {
  \set stanza = "2."
  "For " "the " beau "ty " "of " "each " "hour " 
  "\nOf " "the " "day " "and " "of " "the " "night "
  "\nHill " "and " "vale "  "and " "tree " "and " "flower, "
  "\nSun " "and " "moon " "and " "stars " "of " "light: " 
  "\nLord " "of " "all, " "to " "thee " "we "  "raise " 
  "\nThis "  "our " "hymn " "of " "praise. " 
  
  \set stanza = "3."
  "\nFor " "the " "joy "  "of "  "love, "
  "\nBro" "ther, " sis "ter, " pa "rent, " "child, "
  "\nFriends " "on " "earth, "  "and " "friends " a "bove, " 
  "\nFor " "all " gen "tle " "thoughts " "and " "mild: " 
  "\nLord " "of " "all, "  "to " "thee " "we " "raise " 
  "\nA " joy "ful " "hymn " "of " "praise. " 

  \set stanza = "4."
  "\nFor " "each " per "fect " "gift " "of " "thine " 
  "\nTo " "our " "race " "so " free "ly " gi "ven, " 
  "\nGra" "ces " hu "man " "and " di "vine, " 
  "\nFlowers " "of " "earth " "and " "buds " "of " "heav’n, " 
  "\nflowers " "of " "earth " "and " "buds " "of " "heav’n, " 
  "\nLord " "of " "all, " "to " "thee " we "raise " 
  "\nThis "  "our " joy "ful " "hymn " "of " "praise, " 
  "\nour " "hymn " "of " "praise. "
}

wordsTenorMidi = \lyricmode {
  \set stanza = "2."
  "For " "the " beau "ty " "of " "each " "hour " 
  "\nOf " "the " "day " "and " "of " "the " "night "
  "\nHill " "and " "vale "  "and " "tree " "and " "flower, "
  "\nSun " "and " "moon " "and " "stars " "of " "light: " 
  "\nLord " "of " "all, " "to " "thee " "we "  "raise " 
  "\nThis "  "our " joy "ful " "hymn " "of " "praise. " 
  
  \set stanza = "3."
  "\nFor " "the " "joy " "of " hu "man " "love, "
  "\nBro" "ther, " sis "ter, " pa "rent, " "child, " 
  "\nFriends " "on " "earth, "  "and " "friends " a "bove, " 
  "\nFor " "all " gen "tle " "thoughts " "and " "mild, " 
  "\nFor " "all " gen "tle " "thoughts " "and " "mild: " 
  "\nLord " "of " "all, "  "to " "thee " "we " "raise " 
  "\nThis " "our " joy "ful " "hymn " "of " "praise. " 

  \set stanza = "4."
  "\nFor " "each " per "fect " "gift " "of " "thine " 
  "\nTo " "our " "race " "so " free "ly " gi "ven, " 
  "\nGra" "ces " hu "man " "and " di "vine, " 
  "\nFlowers " "of " "earth " "and " "buds " "of " "heav’n, " 
  "\nflowers " "of " "earth " "and " "buds " "of " "heav’n, " 
  "\nLord " "of " "all, " "to " "thee " we "raise " 
  "\nThis "  "our " joy "ful " "hymn " "of " "praise, " 
  "\nour " "hymn " "of " "praise. "
}

wordsBassMidi = \lyricmode {
  \set stanza = "2."
  "For " "the " beau "ty " "of " "each " "hour " 
  "\nOf " "the " "day " "and " "of " "the " "night "
  "\nHill " "and " "vale "  "and " "tree " "and " "flower, "
  "\nSun " "and " "moon " "and " "stars " "of " "light: " 
  "\nLord " "of " "all, " "to " "thee " "we "  "raise " 
  "\nThis "  "our " "hymn " "of " "praise. " 
  
  \set stanza = "3."
  "\nFor " "the " "joy " "of " hu "man " "love, "
  "\nBro" "ther, " sis "ter, " pa "rent, " "child, " 
  "\nFriends " "on " "earth, "  "and " "friends " a "bove, " 
  "\nFor " "all " gen "tle " "thoughts " "and " "mild, " 
  "\nFor " "all " gen "tle " "thoughts " "and " "mild: " 
  "\nLord " "of " "all, "  "to " "thee " "we " "raise " 
  "\nThis " "our " joy "ful " "hymn " "of " "praise. " 

  \set stanza = "4."
  "\nFor " "each " per "fect " "gift " "of " "thine " 
  "\nTo " "our " "race " "so " free "ly " gi "ven, " 
  "\nGra" "ces " hu "man " "and " di "vine, " 
  "\nFlowers " "of " "earth " "and " "buds " "of " "heav’n, " 
  "\nflowers " "of " "earth " "and " "buds " "of " "heav’n, " 
  "\nLord " "of " "all, " "to " "thee " we "raise " 
  "\nThis "  "our " joy "ful " "hymn " "of " "praise, " 
  "\nour " "hymn " "of " "praise. "
}

wordsSopAbove = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  Hill and vale __ and tree and flower, __
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _
  This our joy -- ful hymn __ of praise.
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  Gra -- ces __ hu -- man and di -- vine, __
  Ah __ ah __
  "" _ _ _ _ _ _
  This our joy -- ful hymn __ of praise.
  This our joy -- ful hymn __ of praise.
}

wordsTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  Sun and moon and stars of light: __
  "" _ _ _ _ _ _
  This our joy -- ful hymn __ of praise. __
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  This our joy -- ful hymn __ of praise, __
}

wordsBass = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Hill and vale __ and tree and flower, __
  "" _ _ _ _ _ _
  _ _ _ _ _ _ _ 
  This __ our hymn of praise.

  \set stanza = "3."
  For the joy of hu -- man love, __
  Bro -- ther, sis -- ter, pa -- rent, child, __
  Friends on earth, __ and friends a -- bove, __
  For all gen -- tle thoughts and mild, __
  For all gen -- tle thoughts and mild: __
  Lord of all, to thee we raise __
  This our joy -- ful hymn __ of praise. __
  
  "" _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Gra -- ces hu -- man and di -- vine, __
  Flowers of earth and buds of heaven, __
  flowers of earth and buds of heaven: __
  "" _ _ _ _ _ _
  This __ our joy -- ful hymn of praise,
  _ _ _ _
}

alto = \relative {
  \global
  R1*34
  r2 d'4\omit\mf ees % 5a++
  f4 4 g a
  bes1~ % 5b
  bes1
  r2 bes4 a
  g4 f ees ees
  ees1( % 5c
  f4) r4 r2
  r2 bes,4 c
  d1~
  d4 4 c bes % 6a
  c4 r c'8 bes bes c
  bes4 a8 8~2~
  a4 r2.
  R1 % 6b
  r2 bes4\omit\< a
  bes2.\omit\f bes4
  c2 \tuplet 3/2 {d4(c bes)}
  aes4.(bes16 aes g2) % 6c
  R1
  f1\omit\mf ~
  f4 f ees ees
  ees4.(f16 ees d2) % 7a
  R1
  R1
  R1 \key g \major
  R1 % 7b
  R1
  r2 d'4\omit\p c
  c4.(b8~8 c) b(g)
  d2 r % 7c
  R1
  r2 r4 d8 e
  g4 fis e d
  b4 r8 b'8(~8 a) b4 % 8a
  b1~
  b4 c8 8~8 b c4(~
  c8 d b c~4) r
  c2.\omit\p a4 % 8b
  d8(e) d2.
  d2. g,4
  b4(a g fis
  g4) r b\omit\mf b % 8c
  a2(b
  g4) g g g
  g1
  R1 % 9a
  r8 d'\omit\p c b g4 a
  a4.(b16 a g2)
  R1
  r2 dis4\omit\f e % 9b
  fis4 fis gis ais
  b1~
  b1
  r2 b4 cis % 9c
  e4 dis b gis
  gis4.(ais16 gis) fis2~
  fis4 r gis4^\mf ais
  b1~ % 10a
  b4 b cis dis
  e,1~
  e4 r cis'8 b b cis
  b4 ais8 ais~2~ % 10b
  ais4 r ais8 gis gis ais
  gis4 fis8 8\omit\cresc~2~
  fis2 b4\omit\f ais
  b2. 4 % 10c
  cis2 \tuplet 3/2 {dis4(cis b)}
  a4.(b16 a gis2)
  R1 \time 3/8
  fis4.~ % 11a
  fis4.~
  fis4 8
  e4 dis8 \time 2/4
  b4 e \time 4/4
  e4.(fis16 e dis2) % 11b
  R1
  R1
  r4 fis e e
  dis1 % 11c
  R1
  R1
  R1
  \bar "|."
}

tenor = \relative {
  \global \ov
  R1*34
  r2 \vo d4^\mf ees
  f4 f g a
  bes1~ % 5b
  bes1
  r2 bes4 c
  bes4 4 4 4
  bes4.(c16 bes a2~ % 5c
  a4) r r2
  r2 bes4 c
  d1~
  d4 d c bes % 6a
  c4 \ov r4 r2
  R1
  r2 \vo a8 g g a
  g4 f8 8~2~ % 6b
  f4 \ov r \vo bes_\< c
  d2._\f d4
  ees2 f
  f4.(g16 f ees2) % 6c
  \ov R1 \vo
  ees4 d8 bes~8 g f4~
  f2. c'4
  c4.(d16 c bes2) % 7a
  \ov R1
  R1
  R1 \key g \major
  r2^\markup unis. \vo b,4\omit\mp^\markup{\dynamic mp \italic espressivo} c % 7b
  d4 d e fis
  g1~
  g1
  \ov r2 \vo g4 a % 7c
  c4 b g e
  e4.(fis16 e d2~
  d4) \ov r \vo e fis
  g1 ~ % 8a
  g4 g a b
  c,1~
  c4 \ov r \vo a'8 g g a
  g4 fis8 8~2~ % 8b
  fis4 \ov r \vo fis8 e e fis
  e4 d8 8~2~
  d4 \ov r \vo g^\< a
  b2.^\mf 4 % 8c
  c2 d
  d4.(e16 d c2)
  \ov R1 \vo
  c4^\mp b8 g~8 e d4~ % 9a
  d2. c'4
  c4.(d16 c b2)
  \ov R1 \key b \major
  \ov r2 \vo dis,4 e % 9b
  fis4 4 gis ais
  b1~
  b1
  r2 \vo b4 cis % 9c
  e4 dis b gis
  gis4.(ais16 gis) fis2~
  fis4 r gis4^\mf ais
  b1~ % 10a
  b4 b cis dis
  e,1~
  e4 r cis'8 b b cis
  b4 ais8 ais~2~ % 10b
  ais4 r ais8 gis gis ais
  gis4 fis8 8\cresc~2~
  fis2 b4\omit\f cis
  dis2. 4 % 10c
  e2 fis
  fis4.(gis16 fis e2) \ov
  R1 \time 3/8
  \vo e4 dis8 % 11a
  b4 gis8
  fis4.~
  fis4.~ \time 2/4
  fis4 cis' \time 4/4
  cis4.(dis16 cis b2) % 11b
  \ov R1
  R1
  r4 \vo fis4_\p b ais
  b1 % 11c
  \ov R1
  R1
  R1
  \bar "|."
}

bass = \relative {
  \global
  R1*34
  r2 d4\omit\mf ees
  f4 f g a
  bes1~ % 5b
  bes1
  r2 bes4 a
  g4 4 4 bes
  f1~ % 5c
  f4 r g a
  bes1~
  bes4 4 c d
  ees,1~ % 6a
  ees4 r2.
  R1
  r2 a8 g g a
  g4 f8 8~2~ % 6b
  f4 r bes4\omit\< a
  bes2.\omit\f 4
  <bes c>2 << {\voiceFour \tuplet 3/2 {d4(c bes)}} \new Voice {\vt bes2}>>
  << {\voiceFour a4.(bes16 a g2)} \new Voice {\vt ees1} >> % 6c
  R1
  f1\omit\mf ~
  f4 4 <f g> <f a>
  <bes, f'>1 % 7a
  R1
  R1
  R1 \key g \major
  r2 b4\omit\mp c % 7b
  d4 d e fis
  g1~
  g1
  r2 g4 a % 7c
  c4 b g e
  e4.(fis16 e d2~
  d4) r4 e fis
  g1~ % 8a
  g4 g a b
  c,1~
  c4 r a'8 g g a
  g4 fis8 8~2~ % 8b
  fis4 r fis8 e e fis
  e4 d8 8~2~
  d4 r g\omit\< a
  b2.\omit\mf 4 % 8c
  c2 d
  d4.(e16 d c2)
  R1
  c4\omit\mp b8 g~g e d4~ % 9a
  d2. 4
  g1
  R1 \key b \major
  \ov r2 \vo dis4 e % 9b
  fis4 4 gis ais
  b1~
  b1
  r2 b4 cis % 9c
  e4 dis b gis
  gis4.(ais16 gis) fis2~
  fis4 r gis4\omit\mf ais
  b1~ % 10a
  b4 b cis dis
  e,1~
  e4 r cis'8 b b cis
  b4 ais8 ais~2~ % 10b
  ais4 r ais8 gis gis ais
  gis4 fis8 8\omit\cresc~2~
  fis2 b4\omit\f ais
  b2. 4 % 10c
  <b cis>2 << {\voiceFour \tuplet 3/2 {dis4(cis b)} | ais4.(b16 ais gis2)}
              \new Voice {\vt b2 | e,1} >>
  R1 \time 3/8
  fis4.~ % 11a
  fis4.~
  fis4 8
  fis4 8 \time 2/4
  fis4 4 \time 4/4
  b1 % 11b
  R1
  R1
  r4 fis4 4 4
  b,1 % 11c
  R1
  R1
  R1
  \bar "|."
}

pianoRHone = \relative {
  \global
  d'''8\omit\mp bes f d~d f bes d
  c8 a f c~c f a c
  bes8 g ees bes~bes ees g bes
  a f c a f a c f
  d8 f bes, bes'~bes f d' d, % 3b
  c8 f a, a'~a f c' c,
  bes8 ees g, g'~g ees bes' bes,
  a' f c a c f a c
  d8 bes f d~d f bes d % 3c
  c8 a f c~c f a c
  bes8 g ees bes~bes ees g bes
  ees,8 d c d~d ees d bes
  f8 d' bes f'~f d c' f, % 3d
  bes8 g ees bes~bes ees g bes~
  bes8 g ees bes a c f a
  bes8 a g a~a c, f a,
  bes8 d g, g'~8 d bes' d, % 4a
  bes8 d g, g'~8 d bes' d,
  bes8 ees g, g'~8 ees bes' bes,
  ees8 g c, c'~c ees, bes' c,
  ees8 f c a'~8 c, f c % 4b
  ees8 f c a'~8 c, g' c,
  d8 g f bes~8 d, f bes,
  ees8 f bes, bes'~8 ees, c' f,
  d'8 bes f d~8 f bes d % 4c
  c8 aes ees c~8 d f bes~
  bes8 f ees bes~4 \vt bes--~
  bes1
  bes2 r4 \ov f4~ % 4d
  f2~8 8~<f c'>4
  r8 f bes f'~8 d f d'
  c8 a f c~8 f a c
  bes8 g ees bes~8 ees g bes % 5a
  a8 f c a \parenthesize f a c f
  d8 bes f d~8 f bes d
  c8 a f c~8 f a c
  bes8 g ees bes~ \vt 8 ees bes'^( ees, % 5b
  ees'8 d c d~8 ees d bes
  f8) \ov d' bes f'~8 f, c' f,
  ees'8 bes g ees~8 ees g bes~
  bes8 g ees bes a c f a~ % 5c
  a8 g a c~8 c, f a
  bes8 d, g <bes d>~8 g <bes g'>4
  r8 d, g <bes d>~8 g <bes g'>4
  r8 d, g <bes d>~8 g <bes g'>4 % 6a
  r8 d, g <bes d>~8 g <bes g'>4
  r8 c, f <a c>~8 f <a f'>4
  r8 c, f <a c>~8 f <a f'>4
  r8 d, f <bes d>~8 f f'4~ % 6b
  \vo \tuplet 3/2 {f4 ees d} bes c \ov
  d8 bes f d~8 f bes d
  c8 aes ees c d f bes d,
  bes'8 aes f bes, ees g bes g % 6c
  \vo f'8 ees(d ees~8) f-. ees4-. \ov
  ees8 f, f' f, f' f, f' f,
  f'2~8 f, f' f,
  f'4 r d(ees % 7a
  f4 f g a
  bes1)
  ees,4 d8 8~ \vo d2 \key g \major
  r4 d,8 g b g d b % 7b
  r8 a d fis a fis d a
  r8 g c d g d c g
  r8 g d' g b g d4
  r8 b d g b g d a % 7c
  r8 c d g c g e c
  r8 g c e fis a, d fis
  g8 a, fis' a, e' a, d a
  r8 b e <g b>~8 e q4 % 8a
  r8 b8 e q~q e q4
  r8 c e <a c>~8 e q4
  r8 c e <a c>~8 e q4
  r8 a, c <fis a>~8 c q4 % 8b
  r8 a c q~q c q4
  r8 b d <g b>~8 d q4
  d2 e4 fis
  g8 b, d g b fis d b % 8c
  c8 f a c d b f d
  f8 g d' g, e g c g
  <c, e>1
  <d g>2. d4~ % 9a
  d4 <c d g>2 <c d>4~
  d2 r
  \vt <b d>4 b~b ais \key b \major \ov
  dis8 b fis' dis dis' b fis dis % 9b
  cis8 ais fis' cis cis' ais fis cis
  b8 gis e' b b' gis e e'
  \vo <gis, e'>8(<fis dis'> <e cis'> dis'~8) e( dis b \ov
  fis2) <dis b'>8 fis <cis ais'> fis % 9c
  <b, gis'>8 e <b fis'> dis <b gis'> e q e
  q8 cis q cis <ais fis'> cis^(fis ais
  \vo b4 ais gis fis
  dis2)~8 8 <gis b>4 % 10a
  dis2~8 8 q4
  e2~8 8 q4
  gis2~8 e q4
  r8 cis <fis ais>4~8 cis <fis ais cis>4 % 10b
  r8 cis <fis ais>4~8 cis <fis ais cis>4
  r8 b, <dis fis>4~8 b <dis fis b>4
  <b e gis>2 <e gis b>4 <e ais cis>
  <fis b dis>8 dis fis b dis b fis dis % 10c
  <e a cis>8 cis e a q dis, fis a
  <a fis'>8 fis a b <gis e'> e(gis b
  fis'8 e dis e~8 fis e4)
  e8 b fis % 11a
  dis'8 b fis
  b fis dis
  fis b, fis
  <gis e'>8 b ais fis'
  e8 cis cis' fis, dis4 <dis b' dis>4( % 11b
  <gis b gis'>4.^\markup\bold rall. q8~8
  <fis ais fis'>^\markup\bold "(rallentando al fine)" <e gis e'>4)
  e'4.(dis8~2)
  R1
  dis'8 b fis dis~8 fis b dis % 11c
  cis8 ais fis cis~8 fis ais cis
  b8^\markup\bold "molto rall." gis e b \parenthesize gis b e gis
  b1\fermata\arpeggio
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s1*27
  \vo f''8->(ees d ees~8) f(ees4)
  ees4 d8 bes~8 g r4 % 4d
  s1*7
  s2. bes4 % 5b
  s1*11
  s2. \vt bes4_~ % 6b
  bes2 ees,
  s1*3
  bes'1 % 6c+
  s1*5
  s2 g4( <fis a> % 7a+++
  <g b>4) s2.
  s1*14
  c,2 2 % 8b+++
  s1*4
  s1 % 9a
  s1
  \lh g,8(d' g \rh a b) a(b d
  g4. a16 g <e fis>2)
  s1*3
  s4. \vt fis8~2 % 9b+++
  cis8 dis cis dis s2 % 9c
  s1
  s1
  cis8 fis cis fis b, cis ais cis
  b8 ais b4~b s % 10a
  b8 ais b4~b s
  b8 ais b4~b s
  e8 dis e4~4 s
  s1*7
  <gis b>4. 8~2 % 10c+++
  s4.*4 s2
  s1 % 11b
  s1
  <fis b>1~
  <fis fis'>2~8 fis'(cis'4)
  s1*3
  e,16(dis cis dis~2.) % 11c+++
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1-\markup{\dynamic mp \italic "legato, delicato"}
  s1*22
  s2 s\<
  s1\mf % 4c
  s1
  s1
  s2 s\>
  s1\mp % 4d
  s1*4
  s2 s\< % 5a+
  s1\mf
  s1*14
  s1\cresc % 6b+
  s1\f
  s1
  s1 % 6c
  s4. s8\> s2
  s1\mf
  s1
  s2 s\omit\mp-\markup{\dynamic mp \italic espressivo} % 7a
  s1
  s1
  s2 s\>
  s4\p s2.-\markup\italic dolce
  s1*14
  s2 s\<
  s1\mf % 8c
  s1
  s1
  s2 s\>
  s1\mp % 9a
  s1
  s1
  s1\cresc
  s1\f % 9b
  s1
  s1
  s1
  s2\> s\mf % 9c
  s1*9
  s1\cresc % 10b++
  s2 s\f
  s1*3 % 10c
  s2 s\>
  s4.\mf % 11a
  s4.
  s4.
  s4.
  s2
  s1 % 11b
  s1\dim
  s1\p
  s1*5
}

pianoLHone = \relative {
  \global \ov
  \set tieWaitForNote = ##t
  \clef treble
  bes2\omit\mp ~<bes bes'>
  bes2~<bes a'>
  bes2~<bes g'>
  bes2 f'
  bes,2~<bes bes'> % 3b
  bes2~<bes a'>
  bes2_~<bes g'>_~ \vt
  bes1 \ov
  bes2~<bes bes'> % 3c
  bes2~<bes a'>
  bes2~<bes g'>
  bes2~<bes f'>4. f8(
  bes1)~ % 3d
  \vt bes1
  f2~<f f'> \ov
  f2~<f f'> \clef bass
  g2 ~ <g d'> % 4a
  f2~<f d'>
  c2~<c c'>
  bes'2~<bes ees>
  f2~<f f'> % 4b
  ees~<ees c'>
  d2~<d bes'>
  bes'2. a4 \clef treble
  bes2~ <bes a'> % 4c
  \vo aes'2~<aes bes>
  aes2 g~
  g1
  f1 % 4d
  r8 f,8~ g~ bes~ <f g bes ees>4~<f a ees'>
  ees'2 d
  bes2~<bes a'>
  bes2~<bes g'> % 5a
  bes2~<bes f> \clef bass
  bes,2~<bes bes'>
  bes2~<bes a'>
  bes2~<bes g'> % 5b
  bes2~<bes f'>4. s8
  \vo r2 bes'4 a
  g2 bes
  \ov f2 f, % 5c
  f'2 f,
  g2 g'
  f,2 f'
  c2~<c g'> % 6a
  bes2~<bes g'>
  f2 f'
  ees,2 ees'
  d,2 d' <c g' bes>2 bes'4 a
  bes2 a
  aes1
  ees4. ees,8 ees'4 d % 6c
  g1
  f1
  r8 f8~ g_~ bes~ <f g bes ees>4~4
  \set tieWaitForNote = ##t % why is this necessary? The previous bar worked!
  bes,8_~ f'_~ bes_~ f'~<bes,, f' bes f'>2 % 7a
  bes8 f' a c f2
  bes,,8 g' bes ees g2
  a,,8 g' c4~<d, c'>2 \key g \major
  <g, g'>1 % 7b
  <g fis'>
  <g e'>
  d'1~
  d2 g4 fis % 7c
  <g, e'>1
  <d d'>1
  <d d'>1
  e2 e' % 8a
  d,2 d'
  a2 a'
  g,2 g'
  d2~<d a'> % 8b
  c2~<c a'>
  b2~<b g'>
  g'2 d
  g2 fis % 8c
  <f a>2~<f b>
  g1
  g1
  d1 % 9a
  \vo r4 d e fis \ov
  s2 <d g>
  e,8 b' e4 <fis, e'>4. fis8 \key b \major
  b4. b,8 2 % 9b
  b'4. b,8 2
  b'4. b,8 2
  b'4. b,8 4. gis'8
  b4. b,8 2 % 9c
  b'4. b,8 2
  fis'4. cis'8 fis4. cis8
  fis,4. 8 2
  gis4. dis'8 gis2 % 10a
  fis,4. dis'8 gis2
  cis,4. e8 gis2
  b,4. e8 gis2
  fis,4. cis'8 fis2 % 10b
  e,4. cis'8 e2
  dis,4. b'8 dis2
  cis,4. 8 cis' cis, fis16 cis fis8
  <b, b'>4. 8 2 % 10c
  q4. 8 2
  e4. 8 4 <dis dis'>
  <cis cis'>4. cis8~8 dis e cis
  fis4. % 11a
  fis'4.
  fis,4.
  fis'4.
  fis,4 fis'
  b,2~8 ais gis fis % 11b
  \vo e8 b' gis' dis'~8 cis b4 \ov
  <fis b>1~
  q8 fis~ gis_~ b~ <fis gis b e>4~4 \clef treble
  b2~<b b'> % 11c
  b2~<b ais'>
  b2~<b gis'>
  <b fis' b>1\fermata\arpeggio
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s1*7 \vo
  f'2\omit\mp c' % 3b+++
  s1*4
  r2 bes4 a % 3d
  g2 ees
  s1*9
  \vt c,2 f
  s1 % 4c
  bes1
  ees2. d4--
  c2-> ~8 d(ees4)
  s1 % 4d
  s1
  bes1
  s1*6
  s2.. f,8( % 5b+
  bes1)
  bes1
  s1*9
  s2 f' % 6b+
  bes,4. 8 2
  bes4. 8 2
  s1 % 6c
  c2~8 d-. ees4-.
  s1*9
  g,2.~8 d % 7b+++
  g1
  s1*10
  a4. 8 s2 % 8b+++
  g1 % 8c
  g1
  c2. b4
  a2~8 b c4
  s1 % 9a
  d,1
  s2 g4 fis
  e2 s
  s1*20
  s4.*4 s2
  s1 % 11b
  e2 e'
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new Staff = tempo {
          \new Voice \TempoTrack
        }
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = soprano \soprano
            \addlyrics \with {alignAboveContext = women} \wordsSopAbove
            \new NullVoice = alto {\vt \alto}
            \new Lyrics \lyricsto soprano \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice = tenor \tenor
            \addlyrics \with {alignAboveContext = men} \wordsTenor
            \new Voice {\vt \bass}
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = tempo {
          \new Voice \TempoTrack
        }
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \with {alignAboveContext = women} \wordsSopAbove
            \new Voice {\vt \alto}
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \addlyrics \with {alignAboveContext = men} \wordsTenor
            \new Voice {\vt \bass}
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
  \paper {
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = tempo {
          \new Voice \TempoTrack
        }
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSep
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        printKeyCancellation = ##f
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
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = tempo {
          \new Voice \TempoTrack
        }
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh
          <<
            \set PianoStaff.connectArpeggios = ##t
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        printKeyCancellation = ##f
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
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = tempo {
          \new Voice \TempoTrack
        }
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny
                        \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSep
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh
          <<
            \set PianoStaff.connectArpeggios = ##t
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        printKeyCancellation = ##f
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
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = tempo {
          \new Voice \TempoTrack
        }
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny
                        \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh
          <<
            \set PianoStaff.connectArpeggios = ##t
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        printKeyCancellation = ##f
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
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = tempo {
          \new Voice \TempoTrack
        }
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny
                        \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh
          <<
            \set PianoStaff.connectArpeggios = ##t
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        printKeyCancellation = ##f
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
  \paper {
    output-suffix = midi-sop
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackMidi
            \new Voice = soprano \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = men \with {
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackMidi
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice = alto \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = men \with {
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackMidi
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice = alto \alto
          >>
                                % Tenor staff
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
                                % Bass staff
          \new Staff = men \with {
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackMidi
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = men \with {
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
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
