\version "2.25.16"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come to the Fair"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Easthope Martin"
  arranger    = "Arr. G. Ackley Brower"
%  opus        = "opus"

  poet        = "Helen Taylor"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro Moderato" 4=120
  s4 s2.*7 |
  s2 s4-\markup\italic "ben ritmato" | s2.*6 |
  s2.*6 |
  s2.*7 | % 2a
  s2. | s | s | s | s4 \tempo 4=110 s2-\markup\italic rit. | \tempo 4=120 s2.-\markup\italic "a tempo" | s |
  s2.*6 | % 3a
  s2.*6 | \tempo 4=115 s2.-\markup\italic "poco rit." |
  s4-\markup\italic ten. s-\markup\italic ten. s-\markup\italic ten. | s2.-\markup\italic "a tempo" | s2.*6 | % 4a
  s2.*7 |
  s2.*14 | % 5
  s2.*3 | s4 \tempo 4=110 s2-\markup\italic rit. | \tempo 4=120 s2.-\markup\italic "a tempo" | s2. | s | % 6a
  s2.*6 |
  s2. | s | s | s | \tempo 4=110 s-\markup\italic rit. | s | \tempo 4=120 s-\markup\italic "a tempo" | % 7a
  s2.*8 |
  s2.*14 | % 8
  s2.*12 | % 9
  s2.*15 | % 10
  s2.*6 | \tempo 4=115 s2.-\markup\italic "poco rit." | s2. | % 11a
  \tempo 4=105 s2.-\markup\italic "più rit." | s | s4-\markup\italic ten. ^\markup\italic "molto allarg." s2-\markup\italic ten. | \tempo 4=120 s2.-\markup\italic "a tempo" s2.*4 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s4 s2.*7
  \textMark \markup { \box "1b" }    s2.*7
  \textMark \markup { \box "1c" }    s2.*6
  \textMark \markup { \box "2a" }    s2.*7
  \textMark \markup { \box "2b" }    s2.*7
  \textMark \markup { \box "3a" }    s2.*6
  \textMark \markup { \box "3b" }    s2.*7
  \textMark \markup { \box "4a" }    s2.*8
  \textMark \markup { \box "4b" }    s2.*7
  \textMark \markup { \box "5a" }    s2.*7
  \textMark \markup { \box "5b" }    s2.*7
  \textMark \markup { \box "6a" }    s2.*7
  \textMark \markup { \box "6b" }    s2.*6
  \textMark \markup { \box "7a" }    s2.*7
  \textMark \markup { \box "7b" }    s2.*8
  \textMark \markup { \box "8a" }    s2.*7
  \textMark \markup { \box "8b" }    s2.*7
  \textMark \markup { \box "9a" }    s2.*6
  \textMark \markup { \box "9b" }    s2.*6
  \textMark \markup { \box "10a" }   s2.*7
  \textMark \markup { \box "10b" }   s2.*8
  \textMark \markup { \box "11a" }   s2.*8
  \textMark \markup { \box "11b" }   s2.*8
}

dynamicsSop = {
  s4 s2.*12 s2.\f s |
  s2.*6 |
  s2.\f | s | s | s2 s4\p | s2. | s | s | % 2a
  s2. | s | s | s | s4 s2\< | s2.\omit\f-\markup{\dynamic f \italic "a tempo"} | s\> |
  s2.\mf | s\cresc | s | s | s\f\> | s\! | % 3a
  s2. | s | s | s4 s2\< | s2.\ff | s\< | s |
  s2.\! | s | s | s | s | s | s | s | % 4a
  s2.*5 | s2.\f | s |
  s2. | s2 s4\ff | s2.*5 | % 5a
  s2.*7 |
  s2. | s | s | s4 s2\< | s2.\f\> | s\! | s4\mf s2\cresc | % 6a
  s2. | s | s2 s4\f | s2.\> | s\! | s |
  s2. | s | s4 s2\< | s2.\f\< | s2.\! | s | s\omit\ff-\markup{\dynamic ff \italic attacca} | % 7a
  s2.*8 |
  s2.*4 | s2.\f | s | s | % 8a
  s2.*5 | s2.\f | s |
  s2. | s2 s4\mf | s2.*4 | % 9a
  s2.*4 | s2.\f | s\> |
  s2.\mf\cresc | s | s | 2 s4\f | s2. | s2\> s4\mf | s2. | % 10a
  s2. | s | s4 s2\< | s2.\f | s | s | s | s |
  s2.*7 | s2.\f | % 11a
  s2.*8 |
}

soprano = \relative {
  \global
  r4 | R2.*7 |
  R2.*5 | bes'2. | f' |
  ees4 d c | bes~8 r r4 | R2.*4 |
  bes2. | f' | g4 f ees | d4~8 r bes c | d4 4 4 | d c bes | c c c | % 2a
  c4~8 r a4 | bes4 4 4 | 4 a g | a a a | a \breathe b cis | d2. | bes |
  a4 f g | a f g | a f g | f' c a' | g2. | f4~8 r r4 | % 3a
  R2. | R | R | r4 g, a | bes2. | f'~ | 2~8 r |
  ees4-> d-> c-> | bes2.-> ~ | 8 r r4 r | R2.*5 | % 4a
  R2.*5 | bes2. | f' |
  ees4 d c | bes4~8 r f4 | bes4-> 4 4 | 4-> c bes | a f f | 4~8 r r4 | bes2. | % 5a
  f'2. | ees4 d c | bes r r | r r f'8 8 | 4 e d | c e e | ees d c |
  bes4 r r | R2. | R | r4 b-- cis-- | d2. | bes | a4 f g | % 6a
  a4 f g | a f g | a c a' | g2. | f4~8 r r4 | R2. |
  R2. | R | r4 g, a | bes2. | f'~ | 2~8 \caesura r\fermata | ees4 d c | % 7a
  bes2.~ | 8 r r4 r | R2.*6 |
  R2.*4 | bes2. | f' | ees4 d c | % 8a
  bes4~8 r r4 | R2.*4 | bes2. | f' |
  ees4 d c | bes~8 r bes(c) | d4 4 4 | d c bes | c c c | 4~8 r a4 | % 9a
  bes4 4 4 | 4 a g | a a a | a~8 r r4 | d2. | bes |
  a4 f g | a f g | a f g | a c a' | g2. | f4~8 r f,4 | bes4 4 4 | % 10a
  bes4 c bes | a f f | f \breathe g a | bes2. | f' | 4 ees d | ees2. | 4 d c |
  d2. | 4 c bes | c2. | 4 bes a | bes c bes | a2(g4) | f2. | bes-> | % 11a
  f'2.-> ~ | 2~8 r | g4-> f-> ees\fermata | d2.~ | d~ | d~ | 4 r r | R2. |
  \bar "|."
}

wordsSop = \lyricmode {
  Heigh -- ho! come to the fair! __
  Heigh -- ho! come to the fair! __
  All the stalls on the green are as fine as can be, __
  With trink -- ets and tok -- ens so pret -- ty to seem
  So it’s come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  With a heigh -- ho! __ come to the fair! __

  “Heigh -- ho! come to the fair!” __
  The drums are all beat -- ing, a -- way let us go, __
  Heigh -- ho! come to the fair! __
  There’ll be rac -- ing and chas -- ing from morn -- ing till night,
  So it’s come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  And it’s heigh -- ho! __ come to the fair! __

  Heigh -- ho! come to the fair! __
  Heigh -- ho! come to the fair! __
  If __ “Haste to the wed -- ding” the fid -- dles should play, __
  We war -- rant you’ll dance to the end of the day; __
  Come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  The sun is a -- shin -- ing to wel -- come the day,
  With a heigh -- ho! come to the fair,
  Maid -- ens and men, maid -- ens and men,
  Come to the fair in the morn -- ing.
  Heigh -- ho! __ come to the fair! __
}

wordsSopMidi = \lyricmode {
  "Heigh" "ho! " "come " "to " "the " "fair! " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nAll " "the " "stalls " "on " "the " "green " "are " "as " "fine " "as " "can " "be, " 
  "\nWith " trink "ets " "and " tok "ens " "so " pret "ty " "to " "seem "
  "\nSo " "it’s " "come, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nWith " "a " heigh "ho! "  "come " "to " "the " "fair!\n" 

  "\n“Heigh" "ho! " "come " "to " "the " "fair!” " 
  "\nThe " "drums " "are " "all " beat "ing, " a "way " "let " "us " "go, " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nThere’ll " "be " rac "ing " "and " chas "ing " "from " morn "ing " "till " "night, "
  "\nSo " "it’s " "come, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nAnd " "it’s " heigh "ho! "  "come " "to " "the " "fair!\n" 

  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nIf "  "“Haste " "to " "the " wed "ding” " "the " fid "dles " "should " "play, " 
  "\nWe " war "rant " "you’ll " "dance " "to " "the " "end " "of " "the " "day; " 
  "\nCome, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nThe " "sun " "is " a shin "ing " "to " wel "come " "the " "day, "
  "\nWith " "a " heigh "ho! " "come " "to " "the " "fair, "
  "\nMaid" "ens " "and " "men, " maid "ens " "and " "men, "
  "\nCome " "to " "the " "fair " "in " "the " morn "ing. "
  "\nHeigh" "ho! "  "come " "to " "the " "fair! " 
}

dynamicsAlto = {
  s4 s2.*7 |
  s2 s4\mf | s2.*4 | s2.\f s |
  s2. | s2 s4\mf | s2.*4 |
  s2.\f | s | s | s2 s4\omit\mf-\markup{\dynamic mf \upright "(MELODY)"} | s2. | s | s | % 2a
  s2. | s | s | s | s4 s2\< | s2.\omit\f-\markup{\dynamic f \italic "a tempo"} | s\> |
  s2.\mf | s\cresc | s | s | s\f\> | s2\! s4\f | % 3a
  s2. | s | s | s4 s2\< | s2.\ff | s\< | s |
  s2.\! | s | s | s | s | s | s | s | % 4a
  s2 s4\mf | s2.*4 | s2.\f | s |
  s2. | s2 s4\ff | s2.*5 | % 5a
  s2. | s | s2 s4-\markup \upright "(MELODY)" | s2.*4 |
  s2. | s | s | s4 s2\< | s2.\f\> | s\! | s4\mf s2\cresc | % 6a
  s2. | s | s2 s4\f | s2.\> | s2\! s4\mf | s2.\< |
  s4\! s2\> | s2.\! | s4 s2\< | s2.\f\< | s2.\! | s | s\omit\ff-\markup{\dynamic ff \italic attacca} | % 7a
  s2.*7 | s2 s4\mf |
  s2.*4 | s2.\f | s | s | % 8a
  s2 s4\mp | s2.*4 | s2.\f | s |
  s2. | s2 s4\mf | s2.*4 | % 9a
  s2.*4 | s2.\f | s\> |
  s2.\mf\cresc | s | s | 2 s4\f | s2. | s2\> s4\mf | s2. | % 10a
  s2. | s | s4 s2\< | s2.\f | s | s | s | s |
  s2.*7 | s2.\f | % 11a
  s2.*8 |
}

alto = \relative {
  \global
  r4 | R2.*7 |
  r4 r f' | bes4 4 4 | bes c bes | a f f | f~8 r r4 | bes2. | a |
  a4 4 4 | bes4~8 r f4 | bes4 4 4 | 4 c bes | a f f | 4~8 r r4 |
  bes2. | a | 4 4 4 | bes4~8 r bes c | d4 4 4 | d c bes | c c c | % 2a
  c4~8 r a4 | bes4 4 4 | 4 a g | a a a | a \breathe b cis | d2. | bes |
  a4 f g | a f g | a f g | a f c' | bes2. | a4~8 r f4 | % 3a
  bes4 4 4 | 4 c bes | a f f | f g a | bes2. | a~ | 2~8 r |
  ees'4-> d-> c-> | bes2.-> ~ | 8 r r4 r | R2. | R R R R | % 4a
  r4 r f | bes4 4 4 | 4 c bes | a f f | 4~8 r r4 | bes2. | bes |
  a4 4 4 | bes4~8 r f4 | bes-> 4 4 | 4-> c bes | a f f | 4~8 r r4 | bes2. | % 5a
  bes2. | ees4 d c | bes r bes8 c | d4 4 4 | d c bes | c c c | c(bes) a |
  g4 r r | R2. | R | r4 b4-- cis-- | d2. | bes | a4 f g | % 6a
  a4 f g | a f g | a f c' | bes2. | a4~8 r f4 | bes4 4 4 |
  bes4 c bes | a f f | f g a | bes2. | a( | bes2) ~8 \caesura r\fermata | ees4 d c | % 7a
  bes2.~ | 8 r r4 r | R2. | R | R | R | R | r4 r f^\markup \halign #RIGHT {"SOLO" \italic "ad lib"} |
  bes4 4 4 | 4 c bes  a f f | 4~8 r r4 | bes2.^\markup TUTTI | a | 4 4 4 | % 8a
  bes4~8 r f4 | bes4 4 4 | 4 c bes | a f f | 2 r4 | bes2. | d |
  ees4 d c | bes4~8 r bes(c) | d4 4 4 | d c bes | c c c | c~8 r a4 | % 9a
  bes4 4 4 | 4 a g | a a a | a~8 r r4 | d2. | bes |
  a4 f g | a f g | a f g | a f c' | bes2. | a4~8 r f4 | bes4 4 4 | % 10a
  bes4 c bes | a f f | f \breathe g a | bes2. | a | bes4 4 4 | c2. | a4 4 4 |
  bes2. | g4 4 4 | a2. | g4 4 4 | g c bes | a(f e) | f2. | bes | % 11a
  a2.-> ( | bes2) ~ 8 r | ees4-> d-> c\fermata | bes2.~ | 2.~ | 2.~ | 4 r r | R2. |
  \bar "|."
}

wordsAlto = \lyricmode {
  The sun is a- shin -- ing to wel -- come the day, __
  Heigh -- ho! come to the fair! __
  The folk are all sing -- ing so mer -- ry and gay, __
  Heigh -- ho! come to the fair! __
  All the stalls on the green are as fine as can be, __
  With trink -- ets and tok -- ens so pret -- ty to seem
  So it’s come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  So deck your -- selves out in your fin -- est ar -- ray,
  With a heigh -- ho! __ come to the fair! __

  The fid -- dles are play -- ing the tune that you know:
  “Heigh -- ho! come to the fair!” __
  The drums are all beat -- ing, a -- way let us go, __
  Heigh -- ho! come to the fair! __
  There’ll be rac -- ing and chas -- ing from morn -- ing till night, till night,
  So it’s come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  So lock up your house, there’ll be plen -- ty of fun,
  And it’s heigh -- ho! __ come to the fair! __

  For love- mak -- ing too, if so be you’ve a mind,
  Heigh -- ho! come to the fair! __
  For hearts that are hap -- py are lov -- ing and kind,
  Heigh -- ho! come to the fair! __
  If __ “Haste to the wed -- ding” the fid -- dles should play, __
  We war -- rant you’ll dance to the end of the day; __
  Come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  The sun is a -- shin -- ing to wel -- come the day,
  With a heigh -- ho! come to the fair,
  Maid -- ens and men, maid -- ens and men,
  Come to the fair in the morn -- ing.
  Heigh -- ho! __ come to the fair! __
}

wordsAltoMidi = \lyricmode {
  "The " "sun " "is " a shin "ing " "to " wel "come " "the " "day, " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nThe " "folk " "are " "all " sing "ing " "so " mer "ry " "and " "gay, " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nAll " "the " "stalls " "on " "the " "green " "are " "as " "fine " "as " "can " "be, " 
  "\nWith " trink "ets " "and " tok "ens " "so " pret "ty " "to " "seem "
  "\nSo " "it’s " "come, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nSo " "deck " your "selves " "out " "in " "your " fin "est " ar "ray, "
  "\nWith " "a " heigh "ho! "  "come " "to " "the " "fair!\n" 

  "\nThe " fid "dles " "are " play "ing " "the " "tune " "that " "you " "know: "
  "\n“Heigh" "ho! " "come " "to " "the " "fair!” " 
  "\nThe " "drums " "are " "all " beat "ing, " a "way " "let " "us " "go, " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nThere’ll " "be " rac "ing " "and " chas "ing " "from " morn "ing " "till " "night, " "till " "night, "
  "\nSo " "it’s " "come, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nSo " "lock " "up " "your " "house, " "there’ll " "be " plen "ty " "of " "fun, "
  "\nAnd " "it’s " heigh "ho! "  "come " "to " "the " "fair!\n" 

  "\nFor " love mak "ing " "too, " "if " "so " "be " "you’ve " "a " "mind, "
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nFor " "hearts " "that " "are " hap "py " "are " lov "ing " "and " "kind, "
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nIf "  "“Haste " "to " "the " wed "ding” " "the " fid "dles " "should " "play, " 
  "\nWe " war "rant " "you’ll " "dance " "to " "the " "end " "of " "the " "day; " 
  "\nCome, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nThe " "sun " "is " a shin "ing " "to " wel "come " "the " "day, "
  "\nWith " "a " heigh "ho! " "come " "to " "the " "fair, "
  "\nMaid" "ens " "and " "men, " maid "ens " "and " "men, "
  "\nCome " "to " "the " "fair " "in " "the " morn "ing. "
  "\nHeigh" "ho! "  "come " "to " "the " "fair! " 
}

dynamicsTenor = {
  s4 s2.*7 |
  s2 s4\mf | s2.*4 | s2.\f s |
  s2. | s2 s4\mf | s2.*4 |
  s2.\f | s | s | s2 s4 | s2. | s | s | % 2a
  s2. | s | s | s | s4 s2\< | s2.\omit\f-\markup{\dynamic f \italic "a tempo"} | s\> |
  s2.\mf | s\cresc | s | s | s\f\> | s2\! s4\f | % 3a
  s2. | s | s | s4 s2\< | s2.\ff | s\< | s |
  s2.\! | s | s | s | s | s | s | s | % 4a
  s2 s4\mf | s2.*4 | s2.\f | s |
  s2. | s2 s4\ff | s2.*5 | % 5a
  s2.*7 |
  s2. | s | s | s4 s2\< | s2.\f\> | s\! | s4\mf s2\cresc | % 6a
  s2. | s | s2 s4\f | s2.\> | s2\! s4\mf | s2.\< |
  s4\! s2\> | s2.\! | s4 s2\< | s2.\f\< | s2.\! | s | s\omit\ff-\markup{\dynamic ff \italic attacca} | % 7a
  s2.*8 |
  s2.*4 | s2.\f | s | s | % 8a
  s2 s4\mp | s2.*4 | s2.\f | s |
  s2. | s | s4 s2\mf | s2.*3 | % 9a
  s2.*4 | s2.\f | s\> |
  s2.\mf\cresc | s | s | 2 s4\f | s2. | s2\> s4\mf | s2. | % 10a
  s2. | s | s4 s2\< | s2.\f | s | s | s | s |
  s2.*7 | s2.\f | % 11a
  s2.*8 |
}

tenor = \relative {
  \global
  r4 | R2.*7 |
  r4 r f | bes4 4 4 | 4 c bes | a f f | 4~8 r r4 | f2. | d' |
  ees4 d c | bes~8 r f4 | bes4 4 4 | 4 c bes | a f f | 4~8 r r4 |
  f2. | d' | ees4 d c | bes4~8 r r4 | r bes a | bes4 4 c | c a g | % 2a
  fis4~8 r c'4 | d c bes | g g a | f f f | g \breathe g g | f2. | g |
  a4 4 4 | f f f | f d d | c a' f | e(f g) | a~8 r f4 | % 3a
  d4 ees e | f g g | a bes b | c f, f | 2. | d'2.( | g,2) ~ 8 r |
  a4-> a-> a-> a2.-> ~ | 8 r r4 r | R2.*5 | % 4a
  r4 r f | bes4 4 4 | 4 c bes | a f f | f~8 r r4 | 2. | 2. |
  ees'4 d c | bes4~8 r f4 | bes-> 4 4 | 4-> c bes | a f f | 4~8 r r4 | f2. | % 5a
  bes2. | a4 a a | bes r r | R2. | r4 r g8 8 | a4 4 4 | fis2 4 |
  g4 bes bes | bes a g | bes4 4 4 | 4 g-- g-- | f2. | g | cis,4 4 4 | % 6a
  d4 4 4 | d d d | c a' f | e4(f g) | a4~8 r f4 | d ees e |
  f4 g g | a bes b | c \breathe f, f | 2. | d'2.( | g,2) ~ 8 \caesura r\fermata | a4 4 4 | % 7a
  bes2.~ | 8 r r4 r | R2.*6 |
  R2.*4 | f2. | d' | ees4 d c | % 8a
  bes4~8 r f4 | d ees e | f g g | a bes b | c2 r4 | f,2. | a |
  c4 a a | bes~8 r r4 | r bes a | bes bes c | c a g | fis4~8 r c'4 | % 9a
  d4 c bes | g g a | f f f | g4~8 r r4 | f2. | g |
  a4 4 4 | f f f | f d' d | c a f | e(f g) a4~8 r f4 | f f f | % 10a
  f4 c' g | a bes b | c \breathe c f, | 2. | 2.( | g4~8) r r4 | c bes a | f~8 r r4 |
  bes4 a g | ees~8 r r4 | a g fis | d~8 r r4 | g g e | f(c'2) | 2. | f,2.-> | % 11a
  d'2.->( | g,2) ~8 r | a4-> a-> a\fermata | bes2.~ | 2.~ | 2.~ | 4 r r | R2. |
  \bar "|."
}

wordsTenor = \lyricmode {
  The sun is a- shin -- ing to wel -- come the day, __
  Heigh -- ho! come to the fair! __
  The folk are all sing -- ing so mer -- ry and gay, __
  Heigh -- ho! come to the fair! __
  All the stalls are as fine as can be, __
  With trink -- ets and tok -- ens so pret -- ty to seem
  So it’s come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  So deck your -- selves out in your fin -- est ar -- ray,
  With a heigh -- ho! __ come to the fair! __

  The fid -- dles are play -- ing the tune that you know:
  “Heigh -- ho! come to the fair!” __
  The drums are all beat -- ing, a -- way let us go, __
  Heigh -- ho! come to the fair! __
  There’ll be chas -- ing till night,
  And round -- a -- bouts turn -- ing to left and to right,
  So it’s come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  So lock up your house, there’ll be plen -- ty of fun,
  And it’s heigh -- ho! __ come to the fair! __

  Heigh -- ho! come to the fair! __
  For hearts that are hap -- py are lov -- ing and kind,
  Heigh -- ho! come to the fair! __
  If it’s “Haste to the wed -- ding” they play, __
  We war -- rant you’ll dance to the end of the day; __
  Come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  The sun is a -- shin -- ing to wel -- come the day,
  With a heigh -- ho! come to the fair,
  Maid -- ens and men, maid -- ens and men,
  Come in the morn -- ing.
  Heigh -- ho! __ come to the fair! __
}

wordsTenorMidi = \lyricmode {
  "The " "sun " "is " a shin "ing " "to " wel "come " "the " "day, " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nThe " "folk " "are " "all " sing "ing " "so " mer "ry " "and " "gay, " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nAll " "the " "stalls " "are " "as " "fine " "as " "can " "be, " 
  "\nWith " trink "ets " "and " tok "ens " "so " pret "ty " "to " "seem "
  "\nSo " "it’s " "come, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nSo " "deck " your "selves " "out " "in " "your " fin "est " ar "ray, "
  "\nWith " "a " heigh "ho! "  "come " "to " "the " "fair!\n" 

  "\nThe " fid "dles " "are " play "ing " "the " "tune " "that " "you " "know: "
  "\n“Heigh" "ho! " "come " "to " "the " "fair!” " 
  "\nThe " "drums " "are " "all " beat "ing, " a "way " "let " "us " "go, " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nThere’ll " "be " chas "ing " "till " "night, "
  "\nAnd " round a "bouts " turn "ing " "to " "left " "and " "to " "right, "
  "\nSo " "it’s " "come, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nSo " "lock " "up " "your " "house, " "there’ll " "be " plen "ty " "of " "fun, "
  "\nAnd " "it’s " heigh "ho! "  "come " "to " "the " "fair!\n" 

  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nFor " "hearts " "that " "are " hap "py " "are " lov "ing " "and " "kind, "
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nIf " "it’s " "“Haste " "to " "the " wed "ding” " "they " "play, " 
  "\nWe " war "rant " "you’ll " "dance " "to " "the " "end " "of " "the " "day; " 
  "\nCome, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nThe " "sun " "is " a shin "ing " "to " wel "come " "the " "day, "
  "\nWith " "a " heigh "ho! " "come " "to " "the " "fair, "
  "\nMaid" "ens " "and " "men, " maid "ens " "and " "men, "
  "\nCome " "in " "the " morn "ing. "
  "\nHeigh" "ho! "  "come " "to " "the " "fair! " 
}

dynamicsBass = {
  s4 s2.*7 |
  | s2.*5 | s2.\f s |
  s2.*6 |
  s2.\f | s | s | s2 s4 | s2. | s | s | % 2a
  s2. | s | s | s | s4 s2\< | s2.\omit\f-\markup{\dynamic f \italic "a tempo"} | s\> |
  s2.\mf | s\cresc | s | s | s\f\> | s2\! s4\f | % 3a
  s2. | s | s | s4 s2\< | s2.\ff | s\< | s |
  s2.\! | s | s | s | s | s | s | s | % 4a
  s2.*5 | s2.\f | s |
  s2. | s2 s4\ff | s2.*5 | % 5a
  s2.*7 |
  s2. | s | s | s4 s2\< | s2.\f\> | s\! | s4\mf s2\cresc | % 6a
  s2. | s | s2 s4\f | s2.\> | s2\! s4\mf | s2.\< |
  s4\! s2\> | s2.\! | s4 s2\< | s2.\f\< | s2.\! | s | s\omit\ff-\markup{\dynamic ff \italic attacca} | % 7a
  s2.*8 |
  s2.*4 | s2.\f | s | s | % 8a
  s2 s4\mp | s2.*4 | s2.\f | s |
  s2. | s | s4 s2\mf | s2.*3 | % 9a
  s2.*4 | s2.\f | s\> |
  s2.\mf\cresc | s | s | 2 s4\f | s2. | s2\> s4\mf | s2. | % 10a
  s2. | s | s4 s2\< | s2.\f | s | s | s | s |
  s2.*7 | s2.\f | % 11a
  s2.*8 |
}

bass = \relative {
  \global
  r4 | R2.*7 |
  R2.*5 | d2. | d
  c4 f f | bes,4~8 r r4 R2.*4 |
  d2. | d | c4 f f | bes,4~8 r r4 | r bes' f | e e g | a f e | % 2a
  ees4~8 r a4 | g g f | e e e | f d d | cis e a, | d2. | e |
  a,4 4 4 | bes4 4 4 | b b b | c c c | c(d e)  f~8 r f4 | % 3a
  bes,4 c cis | d e e | f g gis | a f f | d2. | d(  c2) ~8 r |
  f4-> f-> f,-> | bes2.-> ~ | 8 r r4 r | R2.*5 | % 4a
  R2.*5 | d2. | d |
  c4 f f | bes,4~8 r f4 | bes4-> 4 4 | 4-> c bes | a f f | 4~8 r r4 | d'2. | % 5a
  d2. | f4 f f, | bes r r | R2.*4 |
  r4 r g'8 8 | e2 4 | f(d) f | cis e-- a,-- | d2. | e | a,4 4 4 | % 6a
  bes4 4 4 | b b b | c c c | c(d e) | f~8 r f4 | bes, c cis |
  d4 e e | f g gis | a \breathe  f f | d2. | d( | c2) ~8 \caesura r\fermata | f4 f f, | % 7a
  bes2.~ | 8 r r4 r | R2.*6 |
  R2.*4 | d2. | d | c4 f f | % 8a
  bes,4~8 r f'4 | bes, c cis | d e e | f g gis | a2 r4 | d,2. | d |
  c4 f f, | bes4~8 r r4 | r bes' f | e e g | a f e | ees4~8 r a4 | % 9a
  g4 g f | e e e | f d d | cis~8 r r4 | d2. | e |
  a,4 4 4 | bes4 4 4 | b b b | c c c | c(d e) | f~8 r f4 | bes, c cis | % 10a
  d4 e e | f g gis | a \breathe f e | d2. | d( | c4~8) r r4 | a' g f | bes,4~8 r r4 |
  g'4 f ees | a,4~8 r r4 | fis'4 e d | g,4~8 r r4 | e'4 4 c | f2(g4) | a(g f) | d2.-> | % 11a
  d2.->( | c2)~8 r | f4-> f-> f,\fermata | bes2.~ | 2.~ | 2.~ | 4 r r | R2. |
  \bar "|."
}

wordsBass = \lyricmode {
  Heigh -- ho! come to the fair! __
  Heigh -- ho! come to the fair! __
  All the stalls are as fine as can be, __
  With trink -- ets and tok -- ens so pret -- ty to seem
  So it’s come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  So deck your -- selves out in your fin -- est ar -- ray,
  With a heigh -- ho! __ come to the fair! __

  “Heigh -- ho! come to the fair!” __
  The drums are all beat -- ing, a -- way let us go, __
  Heigh -- ho! come to the fair! __
  They’ll be turn -- ing left and right,
  So it’s come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  So lock up your house, there’ll be plen -- ty of fun,
  And it’s heigh -- ho! __ come to the fair! __

  Heigh -- ho! come to the fair! __
  For hearts that are hap -- py are lov -- ing and kind,
  Heigh -- ho! come to the fair! __
  If it’s “Haste to the wed -- ding” they play, __
  We war -- rant you’ll dance to the end of the day; __
  Come, then, maid -- ens and men,
  To the fair in the pride of the morn -- ing. __
  The sun is a -- shin -- ing to wel -- come the day,
  With a heigh -- ho! come to the fair,
  Maid -- ens and men, maid -- ens and men,
  Come in the morn -- ing.
  Heigh -- ho! __ come to the fair! __
}

wordsBassMidi = \lyricmode {
  "Heigh" "ho! " "come " "to " "the " "fair! " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nAll " "the " "stalls " "are " "as " "fine " "as " "can " "be, " 
  "\nWith " trink "ets " "and " tok "ens " "so " pret "ty " "to " "seem "
  "\nSo " "it’s " "come, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nSo " "deck " your "selves " "out " "in " "your " fin "est " ar "ray, "
  "\nWith " "a " heigh "ho! "  "come " "to " "the " "fair!\n" 

  "\n“Heigh" "ho! " "come " "to " "the " "fair!” " 
  "\nThe " "drums " "are " "all " beat "ing, " a "way " "let " "us " "go, " 
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nThey’ll " "be " turn "ing " "left " "and " "right, "
  "\nSo " "it’s " "come, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nSo " "lock " "up " "your " "house, " "there’ll " "be " plen "ty " "of " "fun, "
  "\nAnd " "it’s " heigh "ho! "  "come " "to " "the " "fair!\n" 

  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nFor " "hearts " "that " "are " hap "py " "are " lov "ing " "and " "kind, "
  "\nHeigh" "ho! " "come " "to " "the " "fair! " 
  "\nIf " "it’s " "“Haste " "to " "the " wed "ding” " "they " "play, " 
  "\nWe " war "rant " "you’ll " "dance " "to " "the " "end " "of " "the " "day; " 
  "\nCome, " "then, " maid "ens " "and " "men, "
  "\nTo " "the " "fair " "in " "the " "pride " "of " "the " morn "ing. " 
  "\nThe " "sun " "is " a shin "ing " "to " wel "come " "the " "day, "
  "\nWith " "a " heigh "ho! " "come " "to " "the " "fair, "
  "\nMaid" "ens " "and " "men, " maid "ens " "and " "men, "
  "\nCome " "in " "the " morn "ing. "
  "\nHeigh" "ho! "  "come " "to " "the " "fair! " 
}

pianoRHone = \relative {
  \global
  f'4( | <bes d>4. <c ees>8 <d f>4) |
  <a f' a>2(<g ees' g>4) |
  <f bes f'>2(bes4) |
  <d f>2(<c ees>4) |
  d2(bes4) |
  \vo d4.(c8 bes4) \ov |
  c2.( |
  <d, f bes>4) r r | % 1b
  r4 q q |
  r <c e bes'> q |
  r4 <c f a> q |
  r4 <c f g> <c f a> |
  <bes bes'>2. |
  \vo <f' f'> |
  <ees g ees'>4^(<f d'> <ees c'> | % 1c
  <d f bes>4~8) r r4 |
  <d bes'>4-. q-. <e bes'>-. |
  <f bes>(c' bes) |
  <c, a'>4(<bes f'>) <b f'> |
  f'^(g a) |
  <bes, bes'>2. | % 2a
  <f' f'>2. |
  <ees g ees'>4(<f d'> <ees c'> |
  <d f bes>4~8) r r4 |
  r4 <d bes' d> q |
  d'4(c bes) | r4 <c, f c'> <c e c'> |
  c'4(bes a) | % 2b
  r4 <e g bes> <d g bes> |
  bes'4(a g) |
  r4 <a, d a'> q |
  <a cis g' a>4 <b b'> <cis g' cis> |
  <d d'>2. |
  <bes bes'>2. |
  <<{a'4(f g)} \new Voice {\vf s4 <cis, f> <a cis>} >> | % 3a
  a'(<d, f> g) |
  <<{a4(f g)} \\ \new Voice {\vf s4 <d f>2} >> |
  a'4(c a) |
  g2.( |
  f4) ees(c) |
  <bes d bes'>4 <c ees bes'> <bes e bes'> | % 3b
  <bes f' bes>4(c' bes) |
  <c, a'>4(<bes f'>) <b f'> |
  f'4(g a) |
  <bes, bes'>2. |
  <f' f'>2.~ |
  2~8 r |
  \ov <g a ees'>4 <f a d> <ees a c> | % 4a
  <d bes' d>4.(<c' ees>8 <d f>4) |
  <a f' a>2(<g ees' g>4) |
  <f bes f'>2(bes4) |
  \vo <d f>2(<c ees>4) |
  d2(bes4) |
  d4.(c8 bes4) |
  c2.( |
  bes4->) r r | % 4b
  \ov r8 bes(c d ees f |
  g8 a bes c d e |
  f8 c a f c a |
  f4) <f g> <f a> |
  <bes, bes'>2. |
  <f f'>2. |
  <g' a ees'>4(<f a d> <ees a c> | % 5a
  <d f bes>4~8) r r4 |
  r4 q q |
  r4 <c e bes'> q |
  r4 <c f a> q | r <a c f> <c f a> |
  <bes bes'>2. |
  <f' f'>2. | % 5b
  <ees g ees'>4(<f d'> <ees c'> |
  <d f bes>4) r r |
  r4 g8(a bes c
  d4 c bes |
  c4) f,8( g a bes |
  c4 bes a |
  bes4) e,8( f g a | % 6a
  bes4 a g |
  a4) d,8(e f g |
  <cis, e a>4) <c e b'>-- <c g' c>-- |
  \vo <d d'>2. |
  <bes bes'>2. |
  <<{a'4(f g)} \new Voice {\vf s4 <cis, f> <a cis>} >> |
  <<{a'4(f g)} \new Voice {\vf s4 d <bes d>} >> | % 6b
  <<{a'4(f g)} \new Voice {\vf s4 <c, f>2} >> |
  a'4(c a) |
  g2.( |
  f4) ees(c) |
  <bes d bes'>4 <bes ees bes'> <bes e bes'> |
  \vo <bes f' bes>4(c' bes) \ov | % 7a
  <c, a'>4(<bes f'>) <b f'>-. |
  \vo f'4(g a) |
  <bes, bes'>2. |
  <f' f'>2.~ |
  2~8 \caesura \ov r |
  <g a ees'>4-> <f a d>-> <ees a c>-> |
  <d bes' d>4.(<c' ees>8 <d f>4) | % 7b
  <a f' a>2(<g ees' g>4) |
  <f bes f'>2(bes4) |
  \vo <d f>2(<c ees>4) |
  d2(bes4) |
  d4.(c8 bes4) |
  c2(a4 |
  bes4->) \ov r r |
  r4 <d, f bes> q | % 8a
  r4 <c e bes'> q |
  r4 <c f a> q |
  r4 <c f g> <c f a> |
  \vo <bes bes'>2. |
  <f' f'>2. |
  \ov <g ees'>4(<f d'> <ees c'> |
  <d f bes>4~8) r r4 | % 8b
  <d bes'>4-. <ees bes'>-. <e bes'>-. |
  \vo <f bes>(c' bes) \ov |
  <c, a'>4(<bes f'>) <b f'>-. |
  \vo f'4(g a) |
  <bes, bes'>2. |
  <f' f'>2. |
  \vo <ees g ees'>4(<f d'> <ees c'> | % 9a
  <d f bes>4~8) \ov r r4 |
  r4 <d bes' d> q |
  \vo d'4(c bes) \ov |
  r4 <c, f c'> <c e c'> |
  \vo c'4(bes a) \ov
  r4 <bes, e bes'> <bes d bes'> | % 9b
  \vo bes'4(a g) \ov |
  r4 <a, d a'> q |
  <a cis g' a>4(<b b'> <c g' cis>) |
  \vo <d d'>2. |
  <bes bes'>2. |
  <<{a'4(f g)} \new Voice {\vf s4 <cis, f> s} >> | % 10a
  <<{a'4(f g)} \new Voice {\vf s4 d s} >> |
  <<{a'4(f g)} \new Voice {\vf s4 <d f>2} >> |
  a'4(c a) |
  g2.( |
  f4) ees(c) |
  <bes d bes'>4 <bes ees bes'> <bes e bes'> |
  \vo <bes f' bes>(c' bes) | % 10b
  \ov <c, a'>4(<bes f'>) <b f'> |
  \vo f'4 g a |
  <bes, bes'>2. |
  <f' f'>2. |
  \ov r4 <g bes ees>4(<g bes d>) |
  \vo <f f'>2. \ov |
  r4 <f a d>4(<f a c>) |
  <ees bes' d>2. | % 11a
  r4 <ees g c>(<ees g bes>) |
  \vo <d c'>2. \ov |
  r4 <d g bes>(<d g a>) |
  \vo bes'4(c bes) \ov |
  r4 <c, f a>(<c e g>) |
  \vo f4(g a) |
  <bes, bes'>2.-> |
  <f' f'>2.~ | % 11b
  q2~8 \ov r |
  <g a ees'>4-> <f a d>-> <f a c f>->\fermata |
  <d bes' d>4.(<ees c' ees>8 <f d' f>4) |
  <g ees' g>2(<bes g' bes>4) |
  bes,2.-> |
  <bes' d f bes>2.-> |
  <bes' d f bes>4-> r r |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s4 | s2. | s | s | g'2. | f | e | r4 <ees g>(<ees f a>) |
  s2. | s | s | s | s | r4 <d f> q | r <a' d> q |
  s4 a2 | s2. | s | s4 <c, g'>2 | s2. | <c f>2. |
  r4 <d f> q | r <a' d> q | s4 a2 | s2. | s | <e a>2. | s | % 2a
  <c ees>2. | s | <cis g'> | s | s | r4 <f a> q | r <d g> q |
  <a a'>2. | bes2 <bes d>4 | b2. |<c f>2 4 | r4 <bes d> <bes c> | <a c f>2. | % 3a
  s2. | s4 <c g'>2 | s2. | c2 <c ees>4 | r4 <d f> q | r4 <a' d> q | r <g bes>4 8 r |
  s2. | s | s | s | g2. | f | e | r4 <ees g>4 <ees f a> | % 4a
  <d f>4 s s | s2. | s | s | s | s4 <d f> q | s <bes' d> q |
  s2. | s | s | s | s | s | s4 <d, f> q | % 5a
  s4 <bes' d> q | s2.*6 |
  s2.*4 | s4 <f a> q | s <d g> q | <a a'>2 s4 | % 6a
  bes2 s4 | b2 s4 | <c f>2 4 | r4 <bes d> <bes c> | <a f'>2. | s |
  s4 <c g'>2 | s2. | c2 <c f>4 | s4 <d f> q | s <a' d> q | s <g bes>4 8 s | s2. | % 7a
  s2.  s | s  g2. | f | e | r4 <ees g> <c ees> | <d f> s2 |
  s2.*4 | s4 <d f> q | s <a' d> q | s2. | % 8a
  s2. | s | s4 <c, g>2 | s2. | <c f>2. | s4 <d f> q | s <a' d> q |
  s4 a2 | s2. | s | <e bes'> | s | <c ees> | % 9a
  s2. | <bes cis> | s | s | s4 <f' a> q | s <d g> q |
  <a a'>2 <a cis>4 | bes2 <bes d>4 | b2. | <c f>2 4 | r4 <bes d> <bes c> | <a f'>2. | s | % 10a
  s4 <c g'>2 | s2. | c2 <c f>4 | s4 <d f> q | s <a' d> q | s2. | a4(bes c) | s2. |
  s2. | s | fis,4(g a) | s2. | <c, g'>2. | s | c2 <c ees>4 | s4 <d f> q | % 11a
  s4 <a' d> q | s <g bes> q8 s | s2. | s | s | s | s | s |
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\f | s2.-\markup\italic mercato | s2.*6 |
  s2. | s\mf | s | s | s | s\f | s |
  s2. | s | s\mf | s | s | s\< |
  s2.\f | s | s | s | s\mf | s | s | % 2a
  s2. | s | s | s | s4 s2\< | s2.\f | s\> |
  s2.\mf | s\cresc | s | s | s2\f\> s4\! | s2. | % 3a
  s2.\f | s | s | s4 s2\< | s2.\ff | s2.\cresc | s |
  s2.-\markup\italic "colla voci" | s\f | s | s | s | s | s | s\> | % 4a
  s2.\! | s\mf | s | s | s | s\f | s |
  s2. | s | s\ff | s  s | s | s | % 5a
  s2. | s | s | s\mf | s | s | s |
  s2. | s | s | s4 s2\< | s2.\f\> | s\! | s4\mf s2\cresc | % 6a
  s2.\! | s | s2 s4\f | s2.\> | s\! | s\mf\< |
  s4\! s2\> | s2.\!  s4 s2\<  s2.\f\< | s2.\! | s | s\ff | % 7a
  s2.*8 |
  s2.\mf | s | s | s | s\f | s | s | % 8a
  s2. | s\mp | s | s | s | s\f | s |
  s2. | s | s\mf | s | s | s | % 9a
  s2. | s | s | s\< | s\f | s\> |
  s2.\mf\cresc | s | s | s2 s4\f | s4 s2\> | s2.\! | s\mf | % 10a
  s2. | s | s4 s2\< | s2.\f | s | s | s | s |
  s2. | s | s | s | s | s | s | s\f | % 11a
  s2. | s | s\ff_\markup\italic "colla voci" | s | s | s | s | s\sfz |
}

pianoLHone = \relative {
  \global \vo
  r4 | <bes,, bes'>4-> (<f'' bes d>) r |
  <ees, ees'>4(<g' bes ees>) r |
  <d, d'>4(<d' f bes>) r |
  <c, c'>4(<ees' g c>) r |
  <f, f'>4(<f' bes d>) r |
  <g, g'>(<g' bes d>) r |
  <f, f'>2. |
  <bes, bes'>4 r r | % 1b
  q2 r4 | <c c'>2 r4 | <f f'>2 r4 | <ees ees'>2 r4 | <d d'>2 r4 | <d' d'>2. |
  <c c'>4 f2 | bes,4(bes,8) r r4 | bes'4-. c-. cis-. | d e2-> | f4(g) gis-. | a(f ees) |
  <d, d'>2. | <d' d'> | <c c'>4 f2 | bes,4(g,8) r r4 | <bes' bes'>2(<a a'>4 | <g g'>2.) | <a a'>2( <g g'>4 | % 2a
  <fis fis'>2.) | <g g'>2(<f f'>4 | <e e'>2.) | <f f'>2 r4 | <e e'>2 <a, a'>4 | <d d'>2. | <e e'> |
  <a, a'>2. | <bes bes'> | <g g'> | <c c'>~ | 4 <d d'>(<e e'> | <f f'>2.) | % 3a
  <bes, bes'>4 <c c'> <cis cis'> | <d d'>4 <e e'>2-> | <f f'>4(<g g'>) <gis gis'> | <a a'>2(<f f'>4) | <d d'>2. | <d' d'> | <c c'>2~8 r |
  <f, f'>2 <f, f'>4 | % 4a
  <bes bes'>4(<f'' bes d>) r |
  <ees, ees'>4(<g' bes ees>) r |
  <d, d'>4(<d' f bes>) r |
  <c, c'>4(<ees' g c>) r |
  <f, f'>(<f' bes d>) r |
  <g, g'>(<g' bes d>) r |
  <f, f'>2.( |
  <bes, bes'>4) r r | % 4b
  \vo r4 <d'' f> q |
  r <c e> <bes c e> |
  r4 <a c f>4 q |
  r <a c> q |
  \ov <d,, d'>2. |
  <d' d'> |
  <c c'>4 \vo f2 | % 5a
  \ov bes,4(bes,8) r r4 |
  <bes bes'>2.-> |
  <c c'>2.-> |
  <f f'>2. |
  <ees ees'>2. |
  <d d'>2. |
  <d' d'>2. | % 5b
  <c c'>4 \vo f2 \ov |
  <bes, bes'>4 r r |
  \vo r4 <d' f> q |
  r4 <c e> q |
  r4 q q |
  r4 <bes d> <c ees> |
  \vo r4 <bes d> q | % 6a
  r4 <bes cis> q |
  r4 <f a> q |
  \ov <a, a'>4 <g g'>-- <e e'>-- |
  <d d'>2. |
  <e e'>2. |
  <a, a'>2. |
  <bes bes'>2. | % 6b
  <g g'>2. |
  <c c'>2.|
  q4 <d d'>(<e e'> |
  <f f'>2.) |
  <bes, bes'>4 <c c'> <cis cis'> |
  <d d'>4 <e e'>2 | % 7a
  <f f'>4(<g g'>) <gis gis'>-. |
  <a a'>(<f f'> <ees ees'>) |
  <d d'>2. |
  <d' d'>2. |
  <c c'>2~8 r |
  <f, f'>2-> <f, f'>4-> |
  <bes bes'>4(<f'' bes d>) r | % 7b
  <ees, ees'>4(<g' bes ees>) r |
  <d, d'>4(<d' f bes>) r |
  <c, c'>4(<ees' g c>) r |
  <f, f'>4(<f' bes d>) r |
  <g, g'>4(<g' bes d>) r |
  <f, f'>2.( |
  <bes, bes'>4->) r r |
  <bes bes'>2 r4 | % 8a
  <c c'>2 r4 |
  <f f'>2 r4 |
  <ees ees'>2 r4 |
  <d d'>2. |
  <d' d'>2. |
  <c c'>4 \vo f2 \ov |
  <bes,, bes'>4~8 r r4 | % 8b
  bes'4-. c-. cis-. |
  d4 e2-> |
  f4(g) gis-. |
  a4(f ees) |
  <d, d'>2. |
  <d' d'>2. |
  <c c'>4 \vo f2 \ov | % 9a
  bes,4(bes,8) r r4 |
  <bes' bes'>2( <a a'>4 |
  <g g'>2.) |
  <a a'>2( <g g'>4 |
  <fis fis'>2.) |
  <g g'>2( <f f'>4 | % 9b
  <e e'>2.) |
  <f f'>2. |
  <e e'>2(<a, a'>4) |
  <d d'>2. |
  <e e'>2. |
  <a, a'>2. | <bes bes'> | <g g'> | <c c'>~ | q4 <d d'> <e e'> | <f f'>2. | <bes, bes'>4 <c c'> <cis cis'> | % 10a
  <d d'>4 <e e'>2 | <f f'>4(<g g'>) <gis gis'> | <a a'>(<f f'> <ees ees'>) | <d d'>2. | <d' d'> | <c c'> | <f, f'>4(<g g'> <a a'> | <bes bes'>2.) |
  <ees, ees'>4(<f f'> <g g'> | <a a'>2.) | <d, d'>4(<e e'> <fis fis'> | <g g'>2.) | <e e'>2(<c c'>4) | <f f'>2(<g g'>4) | <a a'>4(<g g'> <f f'>) | <d d'>2.-> | % 11a
  <d' d'>2.-> | <c c'>2~8 r | <f, f'>2-> \acciaccatura <f, f'>8 <f'' a c ees>4\fermata | <bes,, bes'>4(<f'' bes d>) r | <ees, ees'>4(<g' bes ees>) r |s2. | \vo <bes d f>2.-> | \ov <bes, f' d'>4-> r r |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  s4 s2.*14 |
  s4 f(f,) | s2. | s | s | s | s | % 1c
  s2. | s | s4 f'(f,) | s2. | s | s | s | % 2a
  s2.*7 |
  s2.*13 | % 3
  s2.*8 | % 4a
  s2. | bes'2. | g | f | e | s | s |
  s4 f(f,) | s2.*6 | % 5a
  s2. | s4 f'(f,) | s2. | bes' | g | a | fis |
  g2. | e | d | s | s | s | s | % 6a
  s2.*6 |
  s2.*15 | % 7
  s2.*6 | s4 f(f,) | % 8a
  s2.*7 |
  s4 f'(f,) | s2.*5 | % 9a
  s2.*6 |
  s2.*15 | % 10
  s2.*8 | % 11a
  a2.*5 | \vo <bes, bes'>2._> ~ | \vt q | s |
  \bar "|."
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \with {alignAboveContext = soprano} \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef bass
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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

#(set-global-staff-size 18)

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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \with {alignAboveContext = soprano} \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef bass
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    output-suffix = "singlepage-ten1"
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
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \with {alignAboveContext = soprano} \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \clef bass
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    output-suffix = "singlepage-ten2"
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
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \with {alignAboveContext = soprano} \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \clef bass
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    output-suffix = "singlepage-bass1"
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
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \with {alignAboveContext = soprano} \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef bass
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    output-suffix = "singlepage-bass2"
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
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \with {alignAboveContext = soprano} \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \clef bass
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B2"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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

\book {
  \paper {
    output-suffix = midi-tenorI
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \with {alignAboveContext = soprano} \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef bass
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass

          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
    output-suffix = midi-tenorII
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \with {alignAboveContext = soprano} \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef bass
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
    output-suffix = midi-bassI
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \with {alignAboveContext = soprano} \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef bass
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
    output-suffix = midi-bassII
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \with {alignAboveContext = soprano} \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Baritone"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef bass
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
