\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Fields of Gold"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "G. M. Sumner"
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
  \key c \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \tempo Dolce 4=76
  s4
  \set Score.tempoHideNote = ##t
  s1*42
  \tempo 4=72 s1*3
  \time 2/4 s2 \time 4/4
  s1 \tempo 4=76
  s1*25
  \tempo 4=72
  s1*7
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s4 s1*3
  \mark \markup { \box "3b" }    s1*3
  \mark \markup { \box "3c" }    s1*3
  \mark \markup { \box "4a" }    s1*3
  \mark \markup { \box "4b" }    s1*3
  \mark \markup { \box "4c" }    s1*3
  \mark \markup { \box "5a" }    s1*3
  \mark \markup { \box "5b" }    s1*3
  \mark \markup { \box "5c" }    s1*3
  \mark \markup { \box "6a" }    s1*3
  \mark \markup { \box "6b" }    s1*3
  \mark \markup { \box "6c" }    s1*3
  \mark \markup { \box "7a" }    s1*3
  \mark \markup { \box "7b" }    s1*3
  \mark \markup { \box "7c" }    s1*3
  \mark \markup { \box "8a" }    s2 s1*2
  \mark \markup { \box "8b" }    s1*3
  \mark \markup { \box "8c" }    s1*3
  \mark \markup { \box "9a" }    s1*2
  \mark \markup { \box "9b" }    s1*2
  \mark \markup { \box "9c" }    s1*2
  \mark \markup { \box "10a" }    s1*3
  \mark \markup { \box "10b" }    s1*3
  \mark \markup { \box "10c" }    s1*3
  \mark \markup { \box "11a" }    s1*3
  \mark \markup { \box "11b" }    s1*3
  \mark \markup { \box "11c" }    s1*4
}

ChordTrack = \chordmode {
  s4 | a2:m a:m/g | f2:maj7 c:3.5.9/e | d2:m7 g4:sus g
  c1:3.5.9 | a2:m a:m/g | f:maj7 c:3.5.9/e % 3b
  d2:m7 g4:sus g | c1:3.5.9 | a2.:m a4:m/g % 3c
  f1:3.5.9 | f2 g:7 | c1:3.5.9 % 4a
  a2.:m a4:m/g | f2:3.5.9 c:3.5.9/e | d2:m7 g:7
  s4 f/c c2 | a2.:m a4:m/g | f1:3.5.9
  f2 g:7 | c2..:3.5.9 g8/b | a2:m a:m/g % 5a
  f2:6.9 c:3.5.9/e | d4:m7 f:maj7 g:sus g | c1:3.5.9
  a2.:m a4:m/g | f1:3.5.9 | s2 g
  c2.. g8/b | a8:m7 g4/b c4.:3.5.9 c4:3.5.9/e | f8:3.5.9 g4 c8:3.5.9/e s2 % 6
  c4:m7 f:maj7 g:sus g | c2.:3.5.9 c4/e | f1:3.5.9
  g2:3.5.9 c:3.5.9 | f1:3.5.9 | g2:3.5.9 c:3.5.9
  f1:3.5.9 | g2:3.5.9 a:m7 | d4:m7 f:maj7 g:sus g % 7
  a2:m a:m/g | d4:m7 f:maj7 g:sus g | c1:3.5.9
  a2:m a:m/g | f2:maj7 c:3.5.9/e | d2:m7 g4:sus g
  e2:m7 | a2:sus3.5.9 a4 r | b2.:m b4:m/a % 8
  g1:3.5.9 | s2 a | d2.. a8/d
  b8:m7 a4/cis d4.:3.5.9 d4:3.5.9/fis | g8:3.5.9 a4 d8:3.5.9/fis s2 | e4:m7 g:maj7 a:sus a
  d2.:3.5.9 d4/fis | g1:3.5.9 % 9
  a2:3.5.9 d:3.5.9 | g1:3.5.9
  a2:3.5.9 d:3.5.9 | g1:3.5.9
  a2:3.5.9 b:m7 | e4:m7 g:maj7 a:sus a | b2:m b:m/a % 10
  e4:m7 g:maj7 a:sus a | d1:3.5.9 | b2.:m b4:m/a
  g1:3.5.9 | g2 a:7 | d1:3.5.9
  b2.:m b4:m/a | g2:3.5.9 d:3.5.9/fis | e2:m7 a:7 % 11
  b2:m b:m/a | e2:m7 d4/fis g:maj7 | a2:sus a
  s1 | s1 | d1:3.5.9 | s1
}

soprano = \relative {
  \global
  r4
  R1*3
  r2 r4 c''8^\mp (b % 3b
  a8^\cresc g4 8~4 c8 b
  a8 g4 8~4 d8 e
  f4^\dim e d4. c8 % 3c
  c2~8) r c'8^\mp^\markup "Unis. or opt. Solo" b
  a8 g4 8~4 c8 b
  a8 g4 a8~2 % 4a
  r8 c, a' g16 g~4. f8
  e8 g4.~8 r c b
  a8 g4 8~4 c8 b % 4b
  a8 g4 8~4 c,8 e
  f4 e d4. c8
  c2. r4 % 4c
  R1
  R1
  R1 % 5a
  r2 r4 e8^\cresc^\markup\italic All g
  a4 8 8~4 b8 c
  a4 g8 8~4 r8 c,^\dim % 5b
  f4 e d4. c8
  c2 r4 c'8^\mf b
  a8 g4 8~4 c8 b % 5c
  a8 g4 8~2
  r8 c, a' g16 16~4. f8
  e8 g4. r4 c8 b % 6a
  a8 g4 8~4 c8 b
  a8 g4 8~4 d8 e
  f4 e d4. c8 % 6b
  c2. r4
  r4 r8 g'^\mf 8 8 4
  a8 g8 4 8 e4. % 6c
  r4 r8 g8 8 8 4
  a8 g g4 8 e16^\markup Unis. (d c4)
  r8. g'16 8 8~4 8 e % 7a
  g4 8 8(e4) d8(e)
  f4 e d4. c8
  e2. d8 e % 7b
  f4 e d4. c8
  c2 r4 c'8^\mp (b
  a8^\markup\italic "poco a poco cresc. e rit." g4 8~4 c8 b % 7c
  a8 g4 8~4 d8 e
  f4 e d2
  \time 2/4 g4 fis \time 4/4 % 8a
  e2.) d'8^\f cis \bar "||" \key d \major
  b8^\markup\italic "a tempo" a4 8~4 d8 cis
  b8 a4 8~2 % 8b
  r8 d,8 b' a16 16~4. g8
  fis8 a4. r4 d8\omit\mp^\markup{\italic sub. \dynamic mp} cis
  b8 a4 8~4 d8 cis % 8c
  b8 a4 8~4 r8 fis^\cresc
  g4 fis e4. d8
  d2. r4 % 9a
  r4 r8 a'^\f a a a4
  b8 a8 4 8 fis4. % 9b
  r4 r8 a8 8 8 4
  b8 a8 4 8 fis16^\markup Unis. (e d4) % 9c
  r8. a'16 8 8~4 8 fis
  a4 8 8(fis4) e8(fis) % 10a
  g4^\cresc fis e4. d8
  fis2. e8^\dim fis
  g4 fis e4. d8 % 10b
  d2 r4 d'8^\mp^\markup "Unis. or opt. Solo" cis
  b8 a4 8~4 d8 cis
  b8 a4 b8~2 % 10c
  r8 d, b' a16 16~4. g8
  fis8 a4.~4 r4
  R1 % 11a
  r2 r4 d,8^\markup\italic All fis
  g4 fis e4. d8
  fis2^\markup\italic "rit. e dim. to end" ~8 r d fis % 11b
  g2 fis
  e2. d4
  d1~ % 11c
  d1~
  d1^\pp ~
  d1
  \bar "|."
}

words = \lyricmode {
  \set associatedVoice = alignerS Oo. __
  You'll re -- mem -- ber me __ when the west wind moves __
  up -- on the fields __ of bar -- ley. __
  You'll for -- get the sun __ in his jeal -- ous sky __
  as we walk in fields of \set associatedVoice = alignerT gold.

  So she took her love __ for to gaze a -- while __
  up -- on the fields __ of bar -- ley.
  In his arms she fell __
  as her hair came down __
  a -- mong __ the __ fields __ of \set associatedVoice = alignerS gold.
  
  Will you stay with me, __
  will you be my love __
  a -- mong the fields __ of bar -- ley?
  We'll for -- get the sun __
  in his jeal -- ous sky __
  as we lie __ in __ fields __ of gold.

  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken, __
  but I swear __ in the days still left __
  We'll __ walk in fields __ of gold. __
  We will walk __ in __ fields __ of \set associatedVoice = alignerA gold.

  Oo. __

  Ma -- ny years have passed __
  since those sum -- mer days __
  a -- mong the fields __ of bar -- ley.
  See the chil -- dren run __
  as the sun goes down __
  a -- mong __ the __ fields __ of gold.

  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken, __
  but I swear __ in the days still left __
  we'll __ walk in fields __ of gold.
  We will walk __ in __ fields __ of gold.

  You'll re -- mem -- ber me __
  when the west wind moves __
  up -- on the fields __ of bar -- \set associatedVoice = alignerT ley. __

  You can tell the sun __ in his jeal -- ous sky __
  \set associatedVoice = alignerA when we walked in fields of gold, __
  when we walked in fields, __
  walked in fields of gold. __
}

wordsSopAbove = \lyricmode {
  Oo. __
  "" _ _ _ _ _ _ _ _ _
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
  Oo. __
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  fields of gold. __
}

wordsSopSep = \lyricmode {
  Oo. __
  You'll re -- mem -- ber me __ when the west wind moves __
  up -- on the fields __ of bar -- ley. __
  You'll for -- get the sun __ in his jeal -- ous sky __
  as we walk in fields of gold.

%  So she took her love __ for to gaze a -- while __
%  up -- on the fields __ of bar -- ley.
  In his arms she fell __
  as her hair came down __
  a -- mong __ the __ fields __ of gold.
  
  Will you stay with me, __
  will you be my love __
  a -- mong the fields __ of bar -- ley?
  We'll for -- get the sun __
  in his jeal -- ous sky __
  as we lie __ in __ fields __ of gold.

  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken, __
  but I swear __ in the days still left __
  We'll __ walk in fields __ of gold. __
  We will walk __ in __ fields __ of gold.

  Oo. __

  Ma -- ny years have passed __
  since those sum -- mer days __
  a -- mong the fields __ of bar -- ley.
  See the chil -- dren run __
  as the sun goes down __
  a -- mong __ the __ fields __ of gold.

  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken, __
  but I swear __ in the days still left __
  we'll __ walk in fields __ of gold.
  We will walk __ in __ fields __ of gold.

  You'll re -- mem -- ber me __
  when the west wind moves __
  up -- on the fields __ of bar -- ley. __

%  You can tell the sun __ in his jeal -- ous sky __
  when we walked in fields of gold, __
  when we walked in fields of gold. __
}

wordsSopMidi = \lyricmode {
  "Oo. " 
  "\nYou'll " re mem "ber " "me "  "when " "the " "west " "wind " "moves " 
  "\nup" "on " "the " "fields "  "of " bar "ley. " 
  "\nYou'll " for "get " "the " "sun "  "in " "his " jeal "ous " "sky " 
  "\nas " "we " "walk " "in " "fields " "of " "gold. "

  "\nIn " "his " "arms " "she " "fell " 
  "\nas " "her " "hair " "came " "down " 
  "\na" "mong "  "the "  "fields "  "of " "gold. "
  
  "\nWill " "you " "stay " "with " "me, " 
  "\nwill " "you " "be " "my " "love " 
  "\na" "mong " "the " "fields "  "of " bar "ley? "
  "\nWe'll " for "get " "the " "sun " 
  "\nin " "his " jeal "ous " "sky " 
  "\nas " "we " "lie "  "in "  "fields "  "of " "gold. "

  "\nI " nev "er " "made " prom is "es " light "ly, "
  "\nand " "there " "have " "been " "some " "that " "I've " bro "ken, " 
  "\nbut " "I " "swear "  "in " "the " "days " "still " "left " 
  "\nWe'll "  "walk " "in " "fields "  "of " "gold. " 
  "\nWe " "will " "walk "  "in "  "fields "  "of " "gold. "

  "\nOo. " 

  "\nMa" "ny " "years " "have " "passed " 
  "\nsince " "those " sum "mer " "days " 
  "\na" "mong " "the " "fields "  "of " bar "ley. "
  "\nSee " "the " chil "dren " "run " 
  "\nas " "the " "sun " "goes " "down " 
  "\na" "mong "  "the "  "fields "  "of " "gold. "

  "\nI " nev "er " "made " prom is "es " light "ly, "
  "\nand " "there " "have " "been " "some " "that " "I've " bro "ken, " 
  "\nbut " "I " "swear "  "in " "the " "days " "still " "left " 
  "\nwe'll "  "walk " "in " "fields "  "of " "gold. "
  "\nWe " "will " "walk "  "in "  "fields "  "of " "gold. "

  "\nYou'll " re mem "ber " "me " 
  "\nwhen " "the " "west " "wind " "moves " 
  "\nup" "on " "the " "fields "  "of " bar "ley. " 

  "\nwhen " "we " "walked " "in " "fields " "of " "gold, " 
  "\nwhen " "we " "walked " "in " "fields " "of " "gold. " 
}

wordsAltoSep = \lyricmode {
  Oo. __
  You'll re -- mem -- ber me __ when the west wind moves __
  up -- on the fields __ of bar -- ley. __
  You'll for -- get the sun __ in his jeal -- ous sky __
  as we walk in fields of gold.

%  So she took her love __ for to gaze a -- while __
%  up -- on the fields __ of bar -- ley.
  In his arms she fell __
  as her hair came down __
  a -- mong __ the __ fields __ of gold.
  
  Will you stay with me, __
  will you be my love __
  a -- mong the fields __ of bar -- ley?
  We'll for -- get the sun __
  in his jeal -- ous sky __
  as we lie __ in __ fields __ of gold.

  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken, __
  but I swear __ in the days still left __
  We'll __ walk in fields __ of gold. __
  We will walk __ in __ fields __ of gold.

  Oo. __

  Ma -- ny years have passed __
  since those sum -- mer days __
  a -- mong the fields __ of bar -- ley.
  See the chil -- dren run __
  as the sun goes down __
  a -- mong __ the __ fields __ of gold.

  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken, __
  but I swear __ in the days still left __
  we'll __ walk in fields __ of gold.
  We will walk __ in __ fields __ of gold.

  You'll re -- mem -- ber me __
  when the west wind moves __
  up -- on the fields __ of bar -- ley. __

%  You can tell the sun __ in his jeal -- ous sky __
  when we walked in fields of gold, __
  when we walked in fields, __
  walked in fields of gold. __
}

wordsAltoMidi = \lyricmode {
  "Oo. " 
  "\nYou'll " re mem "ber " "me "  "when " "the " "west " "wind " "moves " 
  "\nup" "on " "the " "fields "  "of " bar "ley. " 
  "\nYou'll " for "get " "the " "sun "  "in " "his " jeal "ous " "sky " 
  "\nas " "we " "walk " "in " "fields " "of " "gold. "

  "\nIn " "his " "arms " "she " "fell " 
  "\nas " "her " "hair " "came " "down " 
  "\na" "mong "  "the "  "fields "  "of " "gold. "
  
  "\nWill " "you " "stay " "with " "me, " 
  "\nwill " "you " "be " "my " "love " 
  "\na" "mong " "the " "fields "  "of " bar "ley? "
  "\nWe'll " for "get " "the " "sun " 
  "\nin " "his " jeal "ous " "sky " 
  "\nas " "we " "lie "  "in "  "fields "  "of " "gold. "

  "\nI " nev "er " "made " prom is "es " light "ly, "
  "\nand " "there " "have " "been " "some " "that " "I've " bro "ken, " 
  "\nbut " "I " "swear "  "in " "the " "days " "still " "left " 
  "\nWe'll "  "walk " "in " "fields "  "of " "gold. " 
  "\nWe " "will " "walk "  "in "  "fields "  "of " "gold. "

  "\nOo. " 

  "\nMa" "ny " "years " "have " "passed " 
  "\nsince " "those " sum "mer " "days " 
  "\na" "mong " "the " "fields "  "of " bar "ley. "
  "\nSee " "the " chil "dren " "run " 
  "\nas " "the " "sun " "goes " "down " 
  "\na" "mong "  "the "  "fields "  "of " "gold. "

  "\nI " nev "er " "made " prom is "es " light "ly, "
  "\nand " "there " "have " "been " "some " "that " "I've " bro "ken, " 
  "\nbut " "I " "swear "  "in " "the " "days " "still " "left " 
  "\nwe'll "  "walk " "in " "fields "  "of " "gold. "
  "\nWe " "will " "walk "  "in "  "fields "  "of " "gold. "

  "\nYou'll " re mem "ber " "me " 
  "\nwhen " "the " "west " "wind " "moves " 
  "\nup" "on " "the " "fields "  "of " bar "ley. " 

%  You can tell the sun __ in his jeal -- ous sky __
  "\nwhen " "we " "walked " "in " "fields " "of " "gold, " 
  "\nwhen " "we " "walked " "in " "fields, " 
  "\nwalked " "in " "fields " "of " "gold. " 
}

wordsTenorSep = \lyricmode {
  Oo. __
%  You'll re -- mem -- ber me __ when the west wind moves __
%  up -- on the fields __ of bar -- ley. __
%  You'll for -- get the sun __ in his jeal -- ous sky __
%  as we walk in fields of gold.

  So she took her love __ for to gaze a -- while __
  up -- on the fields __ of bar -- ley.
  In his arms she fell __
  as her hair came down __
  a -- mong __ the __ fields __ of gold.
  
  Stay with me, __
  be my love __
  a -- mong the fields __ of bar -- ley?
  We'll for -- get the sun __
  in his jeal -- ous sky __
  as we lie __ in __ fields __ of gold.

  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken, __
  I swear __ in the days still left __
  We'll __ walk in fields __ of gold. __
  We will walk __ in __ fields __ of gold.

  Oo. __

  Years have passed __
  since those days __
  a -- mong the fields __ of bar -- ley.
  See the chil -- dren run __
  as the sun goes down __
  a -- mong __ the __ fields __ of gold.

  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken, __
  I swear __ in the days still left __
  we'll __ walk in fields __ of gold.
  We will walk __ in __ fields __ of gold.

%  You'll re -- mem -- ber me __
%  when the west wind moves __
%  up -- on the fields __ of bar -- ley. __

  You can tell the sun __ in his jeal -- ous sky __
  when we walked in fields of gold, __
  when we walked in fields, __
  walked in fields of gold. __
}

wordsTenorMidi = \lyricmode {
  "Oo. " 

  "\nSo " "she " "took " "her " "love "  "for " "to " "gaze " a "while " 
  "\nup" "on " "the " "fields "  "of " bar "ley. "
  "\nIn " "his " "arms " "she " "fell " 
  "\nas " "her " "hair " "came " "down " 
  "\na" "mong "  "the "  "fields "  "of " "gold. "
  
  "\nStay " "with " "me, " 
  "\nbe " "my " "love " 
  "\na" "mong " "the " "fields "  "of " bar "ley? "
  "\nWe'll " for "get " "the " "sun " 
  "\nin " "his " jeal "ous " "sky " 
  "\nas " "we " "lie "  "in "  "fields "  "of " "gold. "

  "\nI " nev "er " "made " prom is "es " light "ly, "
  "\nand " "there " "have " "been " "some " "that " "I've " bro "ken, " 
  "\nI " "swear "  "in " "the " "days " "still " "left " 
  "\nWe'll "  "walk " "in " "fields "  "of " "gold. " 
  "\nWe " "will " "walk "  "in "  "fields "  "of " "gold. "

  "\nOo. " 

  "\nYears " "have " "passed " 
  "\nsince " "those " "days " 
  "\na" "mong " "the " "fields "  "of " bar "ley. "
  "\nSee " "the " chil "dren " "run " 
  "\nas " "the " "sun " "goes " "down " 
  "\na" "mong "  "the "  "fields "  "of " "gold. "

  "\nI " nev "er " "made " prom is "es " light "ly, "
  "\nand " "there " "have " "been " "some " "that " "I've " bro "ken, " 
  "\nI " "swear "  "in " "the " "days " "still " "left " 
  "\nwe'll "  "walk " "in " "fields "  "of " "gold. "
  "\nWe " "will " "walk "  "in "  "fields "  "of " "gold. "

  "\nYou " "can " "tell " "the " "sun "  "in " "his " jeal "ous " "sky " 
  "\nwhen " "we " "walked " "in " "fields " "of " "gold, " 
  "\nwhen " "we " "walked " "in " "fields, " 
  "\nwalked " "in " "fields " "of " "gold. " 
}

wordsBassSep = \lyricmode {
  Oo. __
%  You'll re -- mem -- ber me __ when the west wind moves __
%  up -- on the fields __ of bar -- ley. __
%  You'll for -- get the sun __ in his jeal -- ous sky __
%  as we walk in fields of gold.

  So she took her love __ for to gaze a -- while __
  up -- on the fields __ of bar -- ley.
  In his arms she fell __
  as her hair came down __
  a -- mong __ the __ fields __ of gold.
  
  Stay with me, __
  be my love __
  a -- mong the fields __ of bar -- ley?
%  We'll for -- get the sun __
  in his jeal -- ous sky __
  as we lie __ in __ fields __ of gold.

  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken, __
  I swear __ in the days still left __
  We'll __ walk in fields __ of gold. __
  We will walk __ in __ fields __ of gold.

  Oo. __

  Years have passed __
  since those days __
  a -- mong the fields __ of bar -- ley.
%  See the chil -- dren run __
  as the sun goes down __
  a -- mong __ the __ fields __ of gold.

  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken, __
  I swear __ in the days still left __
  we'll __ walk in fields __ of gold.
  We will walk __ in __ fields __ of gold.

%  You'll re -- mem -- ber me __
%  when the west wind moves __
%  up -- on the fields __ of bar -- ley. __

  You can tell the sun __ in his jeal -- ous sky __
  when we walked in fields of gold, __
  when we walked in fields of gold. __
}

wordsBassMidi = \lyricmode {
  "Oo. " 

  "\nSo " "she " "took " "her " "love "  "for " "to " "gaze " a "while " 
  "\nup" "on " "the " "fields "  "of " bar "ley. "
  "\nIn " "his " "arms " "she " "fell " 
  "\nas " "her " "hair " "came " "down " 
  "\na" "mong "  "the "  "fields "  "of " "gold. "
  
  "\nStay " "with " "me, " 
  "\nbe " "my " "love " 
  "\na" "mong " "the " "fields "  "of " bar "ley? "

  "\nin " "his " jeal "ous " "sky " 
  "\nas " "we " "lie "  "in "  "fields "  "of " "gold. "

  "\nI " nev "er " "made " prom is "es " light "ly, "
  "\nand " "there " "have " "been " "some " "that " "I've " bro "ken, " 
  "\nI " "swear "  "in " "the " "days " "still " "left " 
  "\nWe'll "  "walk " "in " "fields "  "of " "gold. " 
  "\nWe " "will " "walk "  "in "  "fields "  "of " "gold. "

  "\nOo. " 

  "\nYears " "have " "passed "
  "\nsince " "those " "days "
  "\na" "mong " "the " "fields "  "of " bar "ley. "

  "\nas " "the " "sun " "goes " "down " 
  "\na" "mong "  "the "  "fields "  "of " "gold. "

  "\nI " nev "er " "made " prom is "es " light "ly, "
  "\nand " "there " "have " "been " "some " "that " "I've " bro "ken, " 
  "\nI " "swear "  "in " "the " "days " "still " "left " 
  "\nwe'll "  "walk " "in " "fields "  "of " "gold. "
  "\nWe " "will " "walk "  "in "  "fields "  "of " "gold. "

  "\nYou " "can " "tell " "the " "sun "  "in " "his " jeal "ous " "sky " 
  "\nwhen " "we " "walked " "in " "fields " "of " "gold, " 
  "\nwhen " "we " "walked " "in " "fields "  "of " "gold. " 
}

alto = \relative {
  \global
  r4
  R1*3
  r2 r4 r4 % 3b
  e'1_\mp ~ (
  e4 d2.
  c2. b8 c % 3c
  c2~8) r c'8\omit\mp b
  a8 g4 8~4 c8 b
  a8 g4 a8~2 % 4a
  r8 c, a' g16 g~4. f8
  e8 g4.~8 r c b
  a8 g4 8~4 c8 b % 4b
  a8 g4 8~4 c,8 e
  f4 e d4. c8
  c2. r4 % 4c
  R1
  R1
  R1 % 5a
  r2 r4 e8\omit\cresc d
  e4 8 8~4 8 8
  e4 d8 8~4 r8 c\omit\dim % 5b
  c4 4 4(b8) c
  c2 r4 e8\omit\mf g
  e8 4 8~4 8 g % 5c
  f8 4 8~2
  r8 c8 8 16 d~4. 8
  e8 d4. r4 c'8 b % 6a
  a8 g4 e8~4 g8 8
  f8 d4 8~4 8 e
  c4 4 4(b8) c % 6b
  c2. r4
  r4 r8 c8\omit\mf 8 8 4
  d8 8 4 8 c4. % 6c
  r4 r8 c8 8 8 4
  d8 8 4 8 e16(d c4)
  r8. c16 8 8~4 8 8 % 7a
  d4 8 c~4
  4
  c4 4 4(b8) c
  c2. 8 8 % 7b
  c4 4 4(b8) c
  c2 r4 r
  e1~( % 7c
  e4 d2.
  c2. b4
  \time 2/4 d2~ \time 4/4 % 8a
  d2 cis4) fis8\omit\f a \key d \major
  fis8 4 8~4 8 a
  g8 4 8~2 % 8b
  r8 d8 8 16 e~4. 8
  fis8 e4. r4\omit\mp d'8 cis
  b8 a4 fis8~4 a8 8 % 8c
  g8 e4 8~4 r8 fis\omit\cresc
  d4 4 4(cis8) d
  d2. r4 % 9a
  r4 r8 d\omit\f 8 8 4
  e8 8 4 8 d4. % 9b
  r4 r8 d8 8 8 4
  e8 8 4 8 fis16(e d4) % 9c
  r8. d16 8 8~4 8 8
  e4 8 d~4 4 % 10a
  d4\omit\cresc 4 4(cis8) d
  d2. \omit\dim d8 8
  d4 4 4(cis8)d % 10b
  d2 r4 d'8\omit\mp cis
  b8 a4 8~4 d8 cis
  b8 a4 b8~2 % 10c
  r8 d, b' a16 16~4. g8
  fis8 a4.~4 r4
  R1 % 11a
  r2 r4 d,8 fis
  g4 fis e4. d8
  fis2\omit\dim ~8 r d fis % 11b
  d2 2
  d2(cis4) \once\partCombineApart r
  r2 cis4 d % 11c
  b2 c
  d1~
  d1
  \bar "|."
}

wordsAlto = \lyricmode {
}

tenor = \relative {
  \global
  r4
  R1*4
  c'1^\mp ~ ( % 3b+
  c4 b c2
  a2^\dim g2~ % 3c
  g2~8) r r4
  R1
  R1 % 4a
  R1
  R1
  R1 % 4b
  R1
  R1
  r2^\markup "Unis or opt. Solo" r4 c8^\mp b % 4c
  a8 g4 8~4 c8 b
  a8 g4 a8~2
  r8 c, a' g16 16~4. f8 % 5a
  e8 g4. r4 c8^\markup\italic All b
  c4 8 8~4 8 8
  c4 b8 g~4 r8 e^\dim % 5b
  a4 4 g4. 8
  g2 r
  r4 a8^\mf b c2 % 5c
  r4 c8 b c2
  r8 a8 8 16 b~4. 8
  c8 4. r4 8 b % 6a
  a8 b4 c8~4 8 b
  c8 b4 c8~4 d,8 e
  a4 4 g4. 8 % 6b
  g2. r4
  r4 a^\mf b8 8 c4
  b8 8 4 c8 g4. % 6c
  r4 a b8 8 c4
  b8 8 4 g8 4.
  r4 a4 b c8 8 % 7a
  b4 8 a~4 4
  a4 4 g4. 8
  a2. 8 8 % 7b
  a4 4 g4. 8
  g2 r
  c1~( % 7c
  c4 b c2
  a2 g
  \time 2/4 b2~ \time 4/4 % 8a
  b2 a4) r \key d \major
  r4^\markup\italic "a tempo" b8^\f cis d2
  r4 d8 cis d2 % 8b
  r8 b8 8 16 cis~4. 8
  d8 4. r4^\markup{\italic sub. \dynamic mp} d8\omit\mp cis
  b8 cis4 d8~4 8 cis % 8c
  d8 cis4 d8~4 r8 fis,^\cresc
  b4 4 a4. 8
  a2. r4 % 9a
  r4 b^\f cis8 8 d4
  cis8 8 4 d8 a4. % 9b
  r4 b4 cis8 8 d4
  cis8 8 4 a8 4. % 9c
  r4 b cis d8 8
  cis4 8 b~4 4 % 10a
  b4^\cresc 4 a4. 8
  b2. 8^\dim 8
  b4 4 a4. 8 % 10b
  a2\omit\mp r
  R1
  R1 % 10c
  R1
  r2^\markup "Unis. or opt. Solo" r4 d8^\mp cis
  b8 a4 8~4 d8 cis % 11a
  b8 a4 8~4 d,8^\markup\italic All fis
  g4 fis e4. d8
  fis2\omit\dim ^\markup\italic "rit. e dim. to end" ~8 r d8 fis % 11b
  b2 2
  a2. r4
  r2 a4 b % 11c
  g2 <f bes>^\markup div. <fis a>1^\pp ~
  q1
  \bar "|."
}

wordsTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  Stay with me,
  be my love.
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken,
  \set associatedVoice = alignerB
  I swear in the days still left __
  we'll walk __ in __ fields of
  _ _ _ _ _ _ _ _ _
  \set associatedVoice = alignerT
  Years have passed,
  since those days
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  I nev -- er made prom -- is -- es light -- ly,
  and there have been some that I've bro -- ken,
  \set associatedVoice = alignerB
  I swear in the days still left __
  we'll walk __ in __ fields of gold. __
  "" _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _
  fields __ of gold. __
}

bass = \relative {
  \global
  r4
  R1*4
  a2^\mp (g % 3b+
  f2 e
  d2 g4. f8 % 3c
  e2~8) r8 r4
  R1
  R1 % 4a
  R1
  R1
  R1 % 4b
  R1
  R1
  r2 r4 c'8\omit\mp b % 4c
  a8 g4 8~4 c8 b
  a8 g4 a8~2
  r8 c, a' g16 16~4. f8 % 5a
  e8 g4. r4 c8 b
  a4 8 g~4 8 8
  f4 8 e8~4 r8 e\omit\dim % 5b
  d8(e) f(a) g4. f8
  e2 r
  r4 a8\omit\mf e a2 % 5c
  r4 f8 g a2
  r8 a8 8 16 g~4. 8
  g8 e4. \apart r2 % 6a
  r2 r4 \auto e8 g
  a8 g4 e8~4 d8 e
  d8(e) f(a) g4. f8 % 6b
  e2. r4
  r4 f\omit\mf g8 8 a4
  g8 8 4 e8 g4. % 6c
  r4 f g8 8 a4
  g8 8 4 e8 4.
  r4 f g a8 8 % 7a
  g4 8 a~4 g
  d8(e) f(a) g4. 8
  a2(g4) 8 8 % 7b
  d8(e) f(a) g4. f8
  e2 r
  a2(g % 7c
  f2 e
  d2 g4. f8
  \time 2/4 e2 \time 4/4 % 8a
  a2 a,4) r \key d \major
  r4 b'8\omit\f fis b2
  r4 g8 a b2 % 8b
  r8 b8 8 16 a~4. 8
  a8 fis4. \apart r4 r
  r2 r4 \auto fis8 a % 8c
  b8 a4 fis8~4 r8 fis\omit\cresc
  e8(fis) g(b) a4. g8
  fis2. r4 % 9a
  r4 g\omit\f a8 8 b4
  a8 8 4 fis8 a4. % 9b
  r4 g a8 8 b4
  a8 8 4 fis8 4. % 9c
  r4 g a b8 8
  a4 8 b~4 a % 10a
  e8(fis) g(b) a4. 8
  b2(a4) 8\omit\dim 8
  e8(fis)g(b) a4. g8 % 10b
  fis2 r
  R1
  R1 % 10c
  R1
  r2 r4 d'8\omit\mp cis
  b8 a4 8~4 d8 cis % 11a
  b8 a4 8~4 d,8 fis
  g4 fis e4. d8
  fis2\omit\dim ~8 r d fis % 11b
  e2 fis4(g)
  a2(a,4) d
  d1~( % 11c
  d1~
  d1~
  <\tweak #'font-size #-2 d, d'>1)
  \bar "|."
}

pianoRHone = \relative {
  \global
  c'''8 b
  a8 g4 8~4 c8 b
  a8 g4 8~8 c, d e
  f4 e d4. c8 
  c2. 8 b % 3b
  <e, a>2 q
  q2 <d g>
  <c f>2 d % 3c
  c4. g8 c d <e c'> <g b>
  a8 c, e c~c c e g
  a8 c, f8 16 g a8 c, g' c, % 4a
  r8 c f a r d, f b
  r4 c,8 d e g c b
  a8 c, e c~c e g b % 4b
  a8 c, f g <c, g'> d c e
  r8 c f a r d, f b
  c1 % 4c
  r4 a,8 c~4 8 b
  r4 f8 g a c f g
  a4 f8 a b4 f8 b % 5a
  c4 e,8 g c4 e,8 <d g>
  <e a>8 e a c~c e, a c
  e8 c g4~4 d8 e % 5b
  <c f>4 <c e> d4. c8
  c4 e,8 g c d <e c'> <g b>
  r4 <c, a'>8 <d b'> <e c'> <a e'>4. % 5c
  <c g'>4 <f, c'>4~8 g8 c f,
  <c' g'>4 <a f'> <g d'> <d b'>
  <e c'>4~16 g c d <g, e'>4 8 <g d'> % 6a
  <g c>8 <g d'>4 <g d' e>8~4 <c, d g>
  <c g' a>8 <d g>4 8~2
  <c f>4 <c e> d4. c8 % 6b
  r4 c8 d e g <g c> g'
  c16 g f c c' g f c c' g f c c' g f c
  b'16 a g d b' a g d d a g'8 d16 c g8 % 6c
  c'16 g f c c' g f c c' g f c c' g f c
  d'16 a g d d' a g d d e g8 c,16 d g,8
  c'16 g f c c' g f c c' g f c c' g f c % 7a
  b'16 a g d b' a g d d c g'8 d16 c g8
  <c, f>4 <c e> d4. c8
  r4 a8 c~4 a8 c % 7b
  <c f>4 <c e> d4. c8
  c4 e,8 g c d <e c'> <g b>
  <e a>2 q % 7c
  <e a>2 <d g>
  <c f>2 d
  \time 2/4 g4 fis \time 4/4 % 8a
  e2. <fis d'>8 <a cis> \bar "||" \key d \major
  r4 <d, b'>8 <e cis'> <fis d'> <b fis'>4.
  <d a'>4 <g, d'>4~8 a d g, % 8b
  <d' a'>4 <b g'> <a e'> <e cis'>
  <fis d'>4~16 a d e <a, fis'>4 q8 <a e'>
  <a d>8 <a e'>4 <a e fis>8~4 <d, e a>4 % 8c
  <d a' b>8 <e a>4 8~2
  <d g>4 <d fis> e4. d8
  r4 d8 e fis a <a d> a' % 9a
  d16 a g d d' a g d d' a g d d' a g d
  cis'16 b a e cis' b a e e d a'8 e16 d a8 % 9b
  d'16 a g d d' a g d d' a g d d' a g d
  e'16 b a e e' b a e e fis a8 d,16 e a,8 % 9c
  d'16 a g d d' a g d d' a g d d' a g d
  cis'16 b a e cis' b a e e d a'8 e16 d a8 % 10a
  <d, g>4 <d fis> e4. d8
  r4 b8 d~4 b8 d
  <d g>4 <d fis> e4. d8 % 10b
  d4 fis,8 a d e <fis d'> <a cis>
  b8 d, fis d~8 8 fis a
  b8 d, g8 16 a b8 d, a' d, % 10c
  r8 d g b r e, g cis
  d4 d,8 e fis a d cis
  b8 d, fis d~8 d fis a % 11a
  b8 d, g a <d, a'> e d fis
  r8 d g b r e, g cis
  r4 b8 d~4 b8 d % 11b
  g8 d g, d' fis d a d
  e8 d a e cis4 \tiny d
  \tiny d1~ % 11c
  d1
  \normalsize r4 fis,8 a d e a d
  <e, a d e a>1\arpeggio
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s4
  e''1
  e4. d8~8 c d e
  c2 4 b
  \once\partCombineApart r4 c,8 d e g~4 % 3b
  s1
  s1
  s2 c,4 b % 3c
  s1*8
  e4 f8 d e2 % 4c
  s1*6
  s2 c4 b8 c % 5b+
  s1*7
  s2 c4 b8 c % 6b
  s1*7
  s2 c4 b8 c % 7a++
  s1 % 7b
  s2 c4(b8) c
  s1*3
  s2 c4 b
  \time 2/4 d2 \time 4/4 % 8a
  d2 cis4 s
  r4 s2.
  s1*5
  s2 d4 cis8 d % 8c++
  s1*7
  s2 d4 cis8 d % 10a+
  s1
  s2 d4 cis8 d % 10b
  s1*11
  \tiny r2 cis4 d % 11c
  b2 c \normalsize
  s1*2
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mp
  s1-\markup\italic "lightly roll chords and pedal freely"
  s1*3
  s1\cresc % 3b+
  s1
  s1\dim % 3c
  s2. s4\mp
  s1*11
  s2. s4\cresc % 5a+
  s1
  s2.. s8\dim % 5b
  s1
  s2. s4\mf
  s1*8
  s1\mf % 6b++
  s1*9
  s1\omit\cresc-\markup\italic "roll chords as before" ^\markup\italic "poco a poco cresc. e rit." % 7c
  s1*2
  s2 % 8a
  s2. s4\f
  s1-\markup\italic "a tempo"
  s1*2
  s2.. s8\omit\mp-\markup{\italic sub. \dynamic mp} % 8b++
  s1 % 8c
  s1
  s1\cresc
  s1 % 9a
  s1\f
  s1*5
  s1\cresc % 10a+
  s2. s4\dim
  s1 % 10b
  s2. s4\mp
  s1*7
  s1\omit\dim-\markup\italic "rit. e dim. to end" % 11c
  s1
  s2. s4-\markup\italic "for rehearsal only"
  s1*2
  s1\omit\pp-\markup{\dynamic pp \italic "not just rehearsal"}
  s1
}

pianoLHone = \relative {
  \global
  r4
  c''1
  <f, c'>2 <e c'>
  a2 g \clef bass
  \once\partCombineApart r8 g,4.~2 % 3b
  <a c>2 <g c>
  <f c'>2 <e c>
  <d a'>2 g % 3c
  \once\partCombineApart r8 g,8~<g e'>2.
  a'2 4 g
  f2 2 % 4a
  f2 g
  \once\partCombineApart r8 g4.~2
  a2 4 g % 4b
  f2 e
  d2 g
  r8 g a4 g c8 b % 4c
  s1*2
  \partCombineApart r8 c4. r8 d4. % 5a
  r8 g, c d e4 c8 b
  a2 g
  r8 c d4 r8 c4. % 5b
  d,8 e f a g4 g,
  r8 g4.~2
  s1*3 % 5c
  r8 g8 e'4 c'4 8 b % 6a
  a8 b4 c8~4 e,
  d8 f4 <e c'>8~2
  d8 e f a g4 g, % 6b
  r8 g'4.~2
  r8 c, f g a4 c
  r8 d, b'4 r8 g e'4 % 6c
  r8 c, f g a4 c
  r8 d, b'4 r8 g e'4
  r8 c, f g a4 c % 7a
  r8 d, b'4 r8 g c4
  d,8 e f a g4 g,
  r8 e'4. r8 e4. % 7b
  d8 e f a g4 g,
  r8 g4.~2
  s1*3 % 7c
  \time 2/4 <e' b'>2 \time 4/4 % 8a
  <a b>2 <a, a'>4 r \key d \major
  r8 g'8~<g b>2.
  r8 d b' cis d2 % 8b
  r8 d, ~ <d b'>4 r8 e~<e cis'>4
  r8 a,8 fis'4 d'4 8 cis
  s1*3 % 8c
  r8 a4.~2 % 9a
  r8 d, g a b4 d
  r8 e, cis'4 r8 a fis'4 % 9b
  r8 d, g a b4 d
  s1*2 % 9c
  r8 e, cis'4 r8 a d4 % 10a
  e,8 fis g b a4 a,
  r8 fis'4. r8 fis4.
  e8 fis g b a4 a, % 10b
  r8 a4.~2
  b'2 4 a
  g2 2 % 10c
  g2 a
  r8 a4.~2
  b2 4 a % 11a
  g2 fis
  e2 a
  r8 fis'4. r8 fis4. % 11b
  e,2 fis4 g
  a2 a,4 \tiny d
  s1*4 % 11c
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  r4
  a'2 g
  s1
  d4 e8 f g4 g, \clef bass
  c,1 % 3b
  s1*3
  c,1 % 3c+
  s1*3
  c'1 % 4a++
  s1*6
  f2 g % 5a
  c,2. r4
  s1
  f2 e % 5b
  s1
  c,1
  s1*3 % 5c
  c2. r4 % 6a
  s1*3
  c'2. e,4 % 6b+
  f1
  s2 c' % 6c
  s1
  s2 c
  f1 % 7a
  g2 a
  s1
  a2 g % 7b
  s1
  c,1
  s1*3 % 7c
  s2 % 8a
  s1
  b2. a4
  g1 % 8b
  g2 a
  d,1
  s1*3 % 8c
  d'2. fis,4 % 9a
  g1
  a2 d % 9b
  g,1
  s1*2 % 9c
  a2 b % 10a
  s1
  b2 a
  s1 % 10b
  d,1
  s1
  s1 % 10c
  s1
  d'1
  s1 % 11a
  s1
  s1
  b'2 a % 11b
  s1
  s1
  s1*4 % 11c
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
            \new NullVoice = alignerA \alto
            \addlyrics \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsTenor
          >>
        >>
%        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "treble"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
            \new NullVoice = alignerA \alto
            \addlyrics \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsTenor
          >>
        >>
%        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        \new Staff { \ChordTrack}
%        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "treble"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "singlepage-sep"
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSep
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
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
%        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        \new Staff { \ChordTrack}
%        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "treble"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        \new Staff { \ChordTrack}
%        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSep
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        \new Staff { \ChordTrack}
%        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "singlepage-tenor"
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
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
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
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        \new Staff { \ChordTrack}
%        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        \new Staff { \ChordTrack}
%        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi-sop"
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
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
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
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
%        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        \new Staff { \ChordTrack}
%        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi-alto"
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
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
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
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
%        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        \new Staff { \ChordTrack}
%        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi-tenor"
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
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
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
%        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        \new Staff { \ChordTrack}
%        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi-bass"
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
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
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
          \new Staff = bass \with {
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
%        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        \new Staff { \ChordTrack}
%        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
