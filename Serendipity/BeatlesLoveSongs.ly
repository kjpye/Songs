\version "2.25.14"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Beatles — Love Songs"
  subtitle    = "Here, There and Everywhere; And I Love Her; P.S. I Love You"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup {\smallCaps "John Lennon" and \smallCaps "Paul McCartney"}
  arranger    = \markup {Arr. \smallCaps "Ed Lojeski"}
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

globalA = {
  \key ees \major
  \time 4/4
}

globalB = {
  \key ees \major
  \time 4/4
  \partial 4
}

globalC = {
  \key ees \major
  \time 4/4
}

TempoTrackA = {
  \set Score.tempoHideNote = ##t
  \tempo "Tempo Rubato" 4=72
  s1*3
  s2 \omit\tempo 4=36 s4 \omit\tempo 4=72 s4
  \tempo Slowly 4=72
  s1*29
  s2 \tempo 4=65 s
  s2 \tempo 4=22 s4 \tempo 4=65
}

TempoTrackB = {
  s4
  \tempo Moderato 4=88
  s1*30
}

TempoTrackC = {
  \tempo "Moderate Rock" 4=108
  s1
}

TempoTrack = {
  \tag #'songA \TempoTrackA
  \tag #'songB \TempoTrackB
  \tag #'songC \TempoTrackC
}

RehearsalTrackA = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s1*4
  \mark \markup { \box "2b" } s1*3
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "3c" } s1*2
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "4c" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "5c" } s1*3
  \mark \markup { \box "6a" } s1 s2.
}

RehearsalTrackB = {
  s4 s1*2
  \mark \markup { \box "6b" } s1*3
  \mark \markup { \box "6c" } s1*3
  \mark \markup { \box "7a" } s1*4
  \mark \markup { \box "7b" } s1*3
  \mark \markup { \box "7c" } s1*3
  \mark \markup { \box "8a" } s1*3
  \mark \markup { \box "8b" } s1*3
  \mark \markup { \box "8c" } s1*3
  \mark \markup { \box "9a" } s1*3
}

RehearsalTrackC = {
  \mark \markup { \box "9b" } s1*3
  \mark \markup { \box "9c" } s1*3
  \mark \markup { \box "10a" } s1*4
  \mark \markup { \box "10b" } s1*3
  \mark \markup { \box "10c" } s1*3
  \mark \markup { \box "11a" } s1*3
  \mark \markup { \box "11b" } s1*3
  \mark \markup { \box "11c" } s1*3
  \mark \markup { \box "12a" } s1*3
  \mark \markup { \box "12b" } s1*3
  \mark \markup { \box "12c" } s1*3
}

RehearsalTrack = {
  \tag #'songA \RehearsalTrackA
  \tag #'songB \RehearsalTrackB
  \tag #'songC \RehearsalTrackC
}


ChordTrackA = \chordmode {
  r1
  s1*4
  c2 d:m7 % 2b+
  c2/e d:m7
  c2 d:m7 % 3a
  e2:m7 e:m7
  c2 d:m7
  c2:maj7 f:maj7 % 3b
  f2:maj7.5-/b f:maj7/bes % ???
  a2:m7 f:maj7/aes % ???
  c2/g fis:m7.5- % 3c
  f2:6 bes:7
  ees2 f:m7 % 4a
  g2:m7 f:m7
  ees2 f:m7
  g2:m7 aes:maj7 % 4b
  c2:m b:aug
  ees2:maj7/bes c:m6/a
  aes2:maj7 f:m7 % 4c
  s2 des:7
  ges2 bes:m
  aes2:m des:7 % 5a
  ees2.:m ees4:m7
  aes2:m bes:7
  ees4 g:m7 aes2:maj7 % 5b
  g2:m7 f:m7
  ees2 f:m7
  g2:m7 aes:maj7 % 5c
  c2:m ees:aug/b
  ees2:maj7/bes c:m6/a
  aes2:maj7 f:m7 % 6a
  bes2:sus7 bes4:7
}

ChordTrackB = \chordmode {
  s4
  ees1
  ees1:6
  f1:m7 % 6b
  c1:m7
  f1:m7
  c1:m7 % 6c
  f1:m7
  c2:m7 f:9
  f1:m7 % 7a
  f2:m7/bes bes:7
  ees1:maj7
  ees2:6 ees:maj7
  c1:m % 7b
  bes2.. b8
  c1:m
  g1:m7 % 7c
  c1:m7
  g1:m7
  f1:m7/bes % 8a
  bes1:7
  f1:m7
  c1:m7 % 8b
  f1:m7
  c1:m7
  f1:m7 % 8c
  c2:m7 f:9
  f1:m7
  f2:m7/bes bes:7 % 9a
  c2 g/b
  f2/a f/g
}

ChordTrackC = \chordmode {
  c1 % 9b
  d1:m7
  c1
  g1:7 % 9c
  a1:m7
  g2 g:7
  aes1 % 10a
  s2. bes4:7
  c1
  s1
  f1 % 10b
  c1
  f1
  c1 % 10c
  f1
  c1
  c2/g g:7 % 11a
  c1
  s1
  d1:m7 % 11b
  c1
  g1:7
  a1:m7 % 11c
  g2 g:7
  aes1
  s2. bes4:7 % 12a
  c1
  s2 aes4 bes:7
  c1 % 12b
  aes1
  bes1:7
  r1 % 12c
  s1
  s1
}

ChordTrack = {
  \tag #'songA \ChordTrackA
  \tag #'songB \ChordTrackB
  \tag #'songC \ChordTrackC
}

sopranoA = \relative {
  \globalA
  r4^\markup Unis. f'^\mf g aes
  d4 c ees2
  r4 ees c aes
  g8(f4.~4\fermata) \breathe c8^\markup Unis (bes)
  c8 g'4.~2~
  \bar "||" \key c \major % 2b
  g2^\markup "Words and Music by JOHℕ LENNON and PAUL McCARTNEY" ^\markup\bold "HERE, THERE AND EVERYWHERE" r
  R1
  R1*3 % 3a
  e8^\mf f g a~8 r r4 % 3b
  R1
  \tuplet 3/2 {e4 b' a} e d8 c~
  c8 d^\markup Unis. e b'~8 a4 d,8^\< ~ % 3c
  d1 \bar "||" \key ees \major
  ees2^\f^\markup Unis ~4. r8 % 4a
  g8 bes f' ees~8 aes, c bes~
  bes2. r4
  g8 aes bes c~8 ees, f g~ % 4b
  g8 8 8 8~4 r
  g8^\mf aes g g~8 f4 d8
  ees8 f g d'~8 c4 f,8~ % 4c
  f2 r
  des1^\mf^\markup Unis. (
  ees2 f % 5a
  ges2~4.) r8
  ces2^\< (bes)
  ees4^\ff bes g4. r8 % 5b
  g8^\markup Unis. bes f' ees~8 aes, c bes~
  bes2~4. r8
  g8^\decresc aes bes c~8 ees,^\markup Unis. f g~ % 5c
  g4 8 8 4. r8
  g8^\mf aes g g~4 f8^\markup Unis. ees~
  ees8 f g4 d'^\markup\italic rit. c % 6a
  f2.\fermata \breathe
}

sopranoB = \relative {
  \globalB
  r4
  r2^\markup "Words and Music by JOHN LENNON and PAUL McCARTNEY" ^\markup\bold "AND I LOVE HER" r8^\markup Unis. bes8^\p ees d
  c2~8 r d^\mp ees
  f1( % 6b
  g1)
  aes1(
  g1) % 6c
  r4^\markup Unis. f^mf g8 aes4.
  d4 c8 ees~2
  r4 ees c4. aes8 % 7a
  g8(f4.~4) r
  R1
  R1
  r4 r8 g^\f 4 8 bes~ % 7b
  bes2. r4
  r4 d bes4. g8
  bes1 % 7c
  r4 d^\markup Unis. bes g8 bes~
  bes2 g4 bes
  g8(f) f2.~ % 8a
  f2 r
  r4 f^\f g4. aes8
  d4 c8 ees~2 % 8b
  r4 f, g aes
  d8(c4.~2)
  r4 f,^\markup Unis. g4. aes8 % 8c
  d4 c8 ees~2
  r4 ees c8 aes4.
  g8(f~2) r4 \bar "||" \key c \major % 9a
  R1
  R1
}

sopranoC = \relative {
  g'4^\mf^\markup "Words and Music by JOHN LENNON and PAUL McCARTNEY" ^\markup\bold "P.S. I LOVE YOU" g a8 c4 d8~ % 9b
  d4. c8 b4. a8
  a8 g4. r4 r8 a^\markup Unis.
  g4. f8 e4 d % 9c
  d4 c r2
  e4^\markup\italic "Soprano only" d2 c8 d
  c1~ % 10a
  c4 r_\markup\italic "add Alto" c'8(bes) aes(bes)
  c1~
  c4 r r2
  c4^\f 4 4. a8 % 10b
  c8 8 \partCombineApart r4 r2 \partCombineAutomatic
  c4 4 4. a8
  c4 r r r8 g % 10c
  c4 4 4. a8
  c8 4 \partCombineApart 8(~8 a g4) \partCombineAutomatic
  g4 4 d e8(d) % 11a
  c2~8 r8 r4
  g'4^\mf g a c
  d4. c8 b a4 8~ % 11b
  a g4. r4 r8 a^\markup Unis.
  g4. f8 e4 d
  d4 c r2 % 11c
  e4^\markup\italic "Soprano only" d2 c8 d
  c1~
  c4 r_\markup\italic "add Alto" c'8(bes) aes(bes) % 12a
  c1^\cresc ~
  c4 r c8^\f (bes) aes(bes)
  c2.^\< ~8\! r % 12b
  c1^\ff
  <bes d>1^\markup div
  <c e>1~ % 12c
  q1
  R1
}

soprano = {
  \tag #'songA \sopranoA
  \tag #'songB \sopranoB
  \tag #'songC \sopranoC
}

wordsA = \lyricmode {
  I give her all my love,
  \set associatedVoice = #"alignerA"
  you'd love her, love her too,
  I love
  \set associatedVoice = #"alignerT"
  her. __
  Here, __ mak -- ing each day __ of the year, __
  chang -- ing my life __ with a wave __ of her hand,
  \set associatedVoice = #"alignerS"
  No -- bod -- y can de -- ny __ that there's some -- thing there. __
  There __ run -- ning my hands thru her hair. __
  \set associatedVoice = "alignerA"
  both of us think -- ing how good it can be. __
  Oo __ Oh __ Ah __
  ev -- 'ry -- where,
  know -- ing that love is to share, __
  each one be -- liev -- ing that love __ nev -- er dies,
  watch -- ing her eyes and hop -- ing
  \set associatedVoice = "alignerS"
  I'm al -- ways there. __
}

wordsB = \lyricmode {
  Do, do, do, do. __
  Do, do, do. __
  Oh __
  and if you saw my love, __
  \set associatedVoice = alignerT
  you'd love her too. __
  I __ love her. __
  \set associatedVoice = alignerS
  A love like ours __ could nev -- er die.
  As long as I __ have you near __ me. __
  Bright are the stars that shine,
  dark is the sky. __
  \set associatedVoice = alignerT
  I know this love of mine __ will nev -- er die, __
  and I love
  \set associatedVoice = alignerS her. __
  
}

wordsC = \lyricmode {
  I'll be com -- in' home __ a -- gain to you, love
  and 'till the day I do love,
  P. S. I love you, __ you, you, you. __
  \set associatedVoice = alignerA
  As I write this let -- ter,
  oh, __ send my love to you,
  Re -- mem -- ber that I'll al -- ways be in love with you. __
  Treas -- ure these few words 'till we're to -- geth -- er,
  \set associatedVoice = alignerS keep all my love for -- ev -- er,
  P. S. I love you, __ you, __ you, __ you. __
  you, __ you, __ you, __
  I love you! __
}

words = {
  \tag #'songA \wordsA
  \tag #'songB \wordsB
  \tag #'songC \wordsC
}

wordsSopSepA = \lyricmode {
  I give her all my love,
  you'd love her too, __
  I love her. __
  chang -- ing my life __ 
  No -- bod -- y can de -- ny __ that there's some -- thing there. __
  There __ run -- ning my hands thru her hair. __
  both of us think -- ing how good it can be. __
  Some -- one is speak -- ing but she does -- n't know he's there. __
  Oh __ Ah __
  ev -- 'ry -- where,
  know -- ing that love is to share, __
  each one be -- liev -- ing that love __ nev -- er dies,
  watch -- ing her eyes and hop -- ing
  I'm al -- ways there. __
}

wordsAltoSepA = \lyricmode {
  I give her all my love,
  you'd love her, love her too, __
  I love her. __
  chang -- ing my life __ 
  No -- bod -- y can de -- ny __ that there's some -- thing there. __
  There __ run -- ning my hands thru her hair. __
  both of us think -- ing how good it can be. __
  Oo __ Oh __ Ah __
  ev -- 'ry -- where,
  know -- ing that love is to share, __
  each one be -- liev -- ing that love __ nev -- er dies,
  watch -- ing her eyes and hop -- ing
  I'm al -- ways there. __
}

wordsMenSepA = \lyricmode {
  I give her all my love,
  you'd love her too, __
  I love her. __
  Here, __ mak -- ing each day __ of the year, __
  chang -- ing my life __ with a wave of her hand.
  No -- bod -- y can de -- ny __ that there's some -- thing there. __
  There __ run -- ning my hands thru her hair. __
  both of us think -- ing how good it can be. __
  Oo __
  I want her ev -- 'ry -- where
  and if she's be -- side me
  I know I need nev -- er care. __
  But to love her is to meet her ev -- 'ry -- where,
  know -- ing that love is to share, __
  each one be -- liev -- ing that love __ nev -- er dies,
  watch -- ing her eyes and hop -- ing
  I'm al -- ways there. __
}

wordsWomenSepB = \lyricmode {
  Do, do, do, do. __
  Do, do, do. __
  Oh __
  and if you saw my love, __
  you'd love her too. __
  A love like ours __ could nev -- er die.
  As long as I __ have you near __ me. __
  Bright are the stars that shine,
  dark is the sky. __
  I know this love of mine __ will nev -- er die, __
}

wordsTenorSepB = \lyricmode {
  I __ love her. __
  I give her all my love,
  that's all I do,
  and if you saw my love, __
  you'd love her too. __
  I __ love her. __
  A love like ours __ could nev -- er die.
%  As long as I __ have you near __ me. __
  Do, do, do, do. __
  dark is the sky. __
  I know this love of mine __ will nev -- er die, __
  and I love her. __
}

wordsBassSepB = \lyricmode {
  I __ love her. __
  I give her all my love,
  that's all I do,
  and if you saw my love, __
  you'd love her too. __
  I __ love her. __
  A love like ours __ could nev -- er die.
  As long as I __ have you near __ me. __
  dark is the sky. __
  I know this love of mine __ will nev -- er die, __
  and I love her. __
}

wordsSopSepC = \lyricmode {
  I'll be com -- in' home __ a -- gain to you, love
  and 'till the day I do love,
  P. S. I love you, __ you, you, you. __
  As I write this let -- ter,
  send my love to you,
  Re -- mem -- ber that I'll al -- ways,
  yeah, __ be in love with you. __
  Treas -- ure these few words 'till we're to -- geth -- er,
  keep all my love for -- ev -- er,
  P. S. I love you, __ you, __ you, __ you. __
  you, __ you, __ you, __
  I love you! __
}

wordsAltoSepC = \lyricmode {
  I'll be com -- in' home __ a -- gain to you, love
  and 'till the day I do love,
%  P. S. I love you, __\
  you, you, you. __
  As I write this let -- ter, oh, __
  send my love to you,
  Re -- mem -- ber that I'll al -- ways, be in love with you. __
  Treas -- ure these few words 'till we're to -- geth -- er,
  keep all my love for -- ev -- er,
  you, __ you, __ you. __
  you, __ you, __ you, __
  I love you! __
}

wordsMenSepC = \lyricmode {
  and 'till the day I do love,
  you, you, you. __
  As I write this let -- ter,
  send my love to you,
  You know I want you to
  re -- mem -- ber that I'll al -- ways be in love with you. __
  keep all my love for -- ev -- er,
  you, __ you, __ you. __
  you, __ you, __ you, __
  I love you! __
}

wordsSopSep = {
  \tag #'songA \wordsSopSepA
  \tag #'songB \wordsWomenSepB
  \tag #'songC \wordsSopSepC
}

wordsAltoSep = {
  \tag #'songA \wordsAltoSepA
  \tag #'songB \wordsWomenSepB
  \tag #'songC \wordsAltoSepC
}

wordsTenorSep = {
  \tag #'songA \wordsMenSepA
  \tag #'songB \wordsTenorSepB
  \tag #'songC \wordsMenSepC
}

wordsBassSep = {
  \tag #'songA \wordsMenSepA
  \tag #'songB \wordsBassSepB
  \tag #'songC \wordsMenSepC
}

wordsSopA= \lyricmode {
  _ _ _ _ _ _
  you'd love her too, __
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Some -- one is speak -- ing but she does -- n't know he's there. __
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
}

wordsSopB = \lyricmode {
}

wordsSopC = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Re -- mem -- ber that I'll al -- ways, yeah, __
}

wordsSop = {
  \tag #'songA \wordsSopA
  \tag #'songB \wordsSopB
  \tag #'songC \wordsSopC
}

wordsMidiSopA = \lyricmode { % why are all the melismata missing?
  "I " "give " "her " "all " "my " "love, "
  "\nyou'd " "love " "her " "too, " 
  "\nI " "love " "her. " 
  "\nchang" "ing " "my " "life "  
  "\nNo" bod "y " "can " de "ny " "that " "there's " some "thing " "there. "
  "\nThere " run "ning " "my " "hands " "thru " "her " "hair. " 
  "\nboth " "of " "us " think "ing " "how " "good " "it " "can " "be. "
  "\nSome" "one " "is " speak "ing " "but " "she " does "n't " "know " "he's " "there. "
  "\nOh " "Ah "
  "\nev" 'ry "where, "
  "\nknow" "ing " "that " "love " "is " "to " "share, "
  "\neach " "one " be liev "ing " "that " "love " nev "er " "dies, "
  "\nwatch" "ing " "her " "eyes " "and " hop "ing " "I'm " al "ways " "there. " 
}

wordsMidiSopB = \lyricmode { % and here...
  "\nDo, " "do, " "do, " "do. " 
  "\nDo, " "do, " "do. " 
  "\nOh " 
  "\nand " "if " "you " "saw " "my " "love, "
  "\nyou'd " "love " "her " "too. "
  "\nA " "love " "like " "ours " "could " nev "er " "die. "
  "\nAs " "long " "as " "I "  "have " "you " "near "  "me. "
  "\nBright " "are " "the " "stars " "that " "shine, "
  "\ndark " "is " "the " "sky. "
  "\nI " "know " "this " "love " "of " "mine " "will " nev "er " "die, "
}

wordsMidiSopC = \lyricmode {
  "\nI'll " "be " com "in' " "home "  a "gain " "to " "you, " "love "
  "\nand " "'till " "the " "day " "I " "do " "love, "
  "\nP. " "S. " "I " "love " "you, "  "you, "  "you, "  "you. "
  "\nAs " "I " "write " "this " let "ter, "
  "\nsend " "my " "love " "to " "you, "
  "\nRe" mem "ber " "that " "I'll " al "ways, "
  "\nyeah, "  "be " "in " "love " "with "  "you. "
  "\nTreas" "ure " "these " "few " "words " "'till " "we're " to geth "er, "
  "\nkeep " "all " "my " "love " for ev "er, "
  "\nP. " "S. " "I " "love " "you, "  "you, "  "you, "  "you. "
  "\nyou, "  "you, "  "you, "
  "\nI " "love " "you! "
}

wordsMidiSop = {
  \tag #'songA \wordsMidiSopA
  \tag #'songB \wordsMidiSopB
  \tag #'songC \wordsMidiSopC
}

altoA = \relative {
  \globalA
  r4 f'^\mf g aes |
  f4 4 2 |
  r4 g aes ees |
  c4 cis d\fermata c8(bes) |
  c8 g'4.~2~ \bar "||" \key c \major % 2b
  g2 r |
  R1 |
  R1*3 % 3a
  b,8^\mf c d e~8 r r4 % 3b
  R1
  \tuplet 3/2 {c4 e e} b b8 a~
  a8 d e b'~8 a4 c,8^\< ~( % 3c
  c2. bes4) \bar "||" \key ees \major
  ees2^\f ~4. r8 % 4a
  g8 bes f' ees~8 aes, c bes~ |
  bes2. r4 |
  g8 aes bes c~8 ees, f g~ % 4b
  g8 8 8 8~4 r |
  d2_\mp (c2~ |
  c1~ % 4c
  c2) r |
  des1^\mf ( |
  ees2 f % 5a
  ges2~4.) r8 |
  ees2^\<(d) |
  g4^\ff f ees4. r8 % 6b
  g8 bes f' ees~8 aes, c bes~ |
  bes2~4. r8 |
  d,8^\decresc ees f g~8 ees f ees~ | % 5c
  ees4 8 8 d4. r8 |
  d8^\mf 8 8 c~4 f8 ees~ |
  ees8 f g4 c, ees % 7a
  ees2(bes4_\fermata) \breathe
  % \bar "|."
}

altoB = \relative {
  \globalB
  r4 |
  r2 r8 bes^\p ees d |
  c2~8 r d^\mp ees |
  f1( % 6b
  g1) |
  f1( |
  ees1) % 6c
  r4 f^\mf g8 aes4. |
  g4 8 8~2 |
  r4 g aes4. ees8 % 8a
  c2(d4) r |
  R1
  R1
  r4 r8 ees^\f 4 8 d~ % 7b
  d2. r4
  r4 ees4 4. 8
  d1 % 7c
  r4 d' bes g8 bes~
  bes2 g4 bes
  g8(f) 2.~ % 8a
  f2 r
  r4 f^\mf g4. aes8
  d4 c8 ees~2 % 8b
  r4 f, g aes
  ees1
  r4 f g4. aes8 % 8c
  g4 8 8~2
  r4 g aes8 ees4.
  c2(d4) r4 \bar "||" \key c \major % 9a
  R1
  R1
}

altoC = \relative {
  e'4^\mf 4 8 4 f8~ % 10b
  f4. 8 4. 8
  e8 4. r4 r8 a
  g4. f8 e4 d % 9c
  d4 c r2
  R1
  R1 % 10a
  r4 r4_\markup\italic "add Alto" ees4 f
  g1~
  g4 r r2
  a4 4 4. 8 % 10b
  g8 8 r e(~8 d c4)
  a'4 4 4. 8
  g4 r r r8 g % 10c
  a4 4 4. 8
  g8 4 r8 r2
  e4 4 d b % 11a
  c2~8 r r4
  e4^\mf 4 4 4
  f4. 8 8 4 e8~ % 11b
  e8 4. r4 r8 a
  g4. f8 e4 d
  d4 c r2 % 11c
  R1
  R1
  r4 r4_\markup\italic "add Alto" ees4 f % 12a
  g1^\cresc ~
  g4 r ees^\f f
  g2.^\< ~8\! r % 12b
  aes1^\ff
  f1
  g1~ % 12c
  g1
  R1
}

alto = {
  \tag #'songA \altoA
  \tag #'songB \altoB
  \tag #'songC \altoC
}

wordsMidiAltoA = \lyricmode {
  "I " "give " "her " "all " "my " "love, "
  "\nyou'd " "love " "her, " "love " "her " "too, "
  "\nI " "love " "her. " 

  "\nchang" "ing " "my " "life " 
  "\nNo" bod "y " "can " de "ny "  "that " "there's " some "thing " "there. " 
  "\nThere "  run "ning " "my " "hands " "thru " "her " "hair. " 
  "\nboth " "of " "us " think "ing " "how " "good " "it " "can " "be. " 
  "\nOo "  "Oh "  "Ah " 
  "\nev" 'ry "where, "
  "\nknow" "ing " "that " "love " "is " "to " "share, " 
  "\neach " "one " be liev "ing " "that " "love "  nev "er " "dies, "
  "\nwatch" "ing " "her " "eyes " "and " hop "ing "
  "\nI'm " al "ways " "there. " 
}

wordsMidiAltoB = \lyricmode {
  "\nDo, " "do, " "do, " "do. " 
  "\nDo, " "do, " "do. " 
  "\nOh " 
  "\nand " "if " "you " "saw " "my " "love, " 
  "\nyou'd " "love " "her " "too. " 
  "\nA " "love " "like " "ours "  "could " nev "er " "die. "
  "\nAs " "long " "as " "I "  "have " "you " "near "  "me. " 
  "\nBright " "are " "the " "stars " "that " "shine, "
  "\ndark " "is " "the " "sky. " 
  "\nI " "know " "this " "love " "of " "mine "  "will " nev "er " "die, " 
}

wordsMidiAltoC = \lyricmode {
  "\nI'll " "be " com "in' " "home "  a "gain " "to " "you, " "love "
  "\nand " "'till " "the " "day " "I " "do " "love, "
  "\nyou, " "you, " "you. " 
  "\nAs " "I " "write " "this " let "ter, "
  "\noh, "  "send " "my " "love " "to " "you, "
  "\nRe" mem "ber " "that " "I'll " al "ways " "be " "in " "love " "with " "you. " 
  "\nTreas" "ure " "these " "few " "words " "'till " "we're " to geth "er, "
  "\nkeep " "all " "my " "love " for ev "er, "
  "\nyou, "  "you, "  "you. " 
  "\nyou, "  "you, "  "you, " 
  "\nI " "love " "you! " 
}

wordsMidiAlto = {
  \tag #'songA \wordsMidiAltoA
  \tag #'songB \wordsMidiAltoB
  \tag #'songC \wordsMidiAltoC
}

wordsAlto = \lyricmode {
}

tenorA = \relative {
  \globalA
  r4^\markup Unis f^\mf g aes
  ees'4 4 2
  \once\partCombineApart r4  c ees c
  aes2.\fermata \breathe c,8^\markup Unis. (bes)
  c8 g'4.~2~ \bar "||" \key c \major % 2b
  g2 r
  R1
  c,2^\mf ~4. r8 e8 g d' c~8 f, a g~
  g2. r4
  g8 a b c~8 c d e~ % 4b
  e8 8 8 8~4 r
  \tuplet 3/2 {b4 c c} aes aes8 g~
  g8 d^\markup Unis. e b'~8 a4 8^\< ~( % 3c
  a2 aes) \bar "||" \key ees \major
  g2^\f^\markup Unis. (aes4.) r8 % 4a
  bes8 g des' c~8 f, aes g~(
  g2 aes4) r
  g8 aes bes c~8 ees, f g~ % 4b
  g8 8 8 8~4 r
  bes2^\mp(a
  aes1~ % 4c
  aes2) r8^\markup Unis. f^\f ges aes
  bes des bes2 aes8 ges
  aes8 bes ces aes f f ges aes % 5a
  bes8 ges ees4~4. r8
  aes8^\< bes ces aes f f ges aes
  bes4^\ff des c4. r8 % 5b
  bes8^\markup Unis. g des' c~8 f, aes g~(
  g2 aes4) r
  bes8^\decresc c des ees~8 ees,^\markup Unis. f g~ % 5c
  g4 8 8 4. r8
  g8^\mf 8 8 8~4 f8^\markup Unis. ees~
  ees8 f g4 aes^\markup\italic rit. aes % 6a
  aes2.\fermata
}

tenorB = \relative {
  \globalB
  c8^\p^\markup Unis. (bes)
  c8 g'4.~2~
  g2. r4
  r4 f^mf g4. aes8 % 7b
  des4 c8 des~2
  r4 f, g4. aes8
  ees'8(d4.~2) % 6c
  r4 f, g8 aes4.
  ees'4 8 8~2
  r4 c ees4. c8 % 7a
  aes2. c,8(bes)
  c8 g'4.~2~
  g2. r4
  r4 r8 c^\f 4 8 bes~ % 7b
  bes2. r4
  r4 bes bes4. 8
  bes1 % 7c
  \once\partCombineApart R1
  \once\partCombineApart R1
  \once\partCombineApart R1 % 8a
  \once\partCombineApart r2 r8 bes^\mp^\markup\italic "Tenor only" ees d
  aes1~
  aes2~8 r8 r4 % 8b
  r4^\markup Unis. f ^\mf g aes
  bes1
  r4 f^\markup Unis. g4. aes8 % 8c
  ees'4 8 8~2
  r4 c ees8 c4.
  aes2. c,8^\markup Unis. bes \bar "||" \key c \major c8^\markup\italic accel. g'4.~2~
  g2. r4
  
}

tenorC = \relative {
  R1 % 9b
  R1
  r2 r4 r8 a^\mf^\markup Unis.
  b4. a8 g4 b % 9c
  a4 4 r2
  R1
  R1 % 10a
  r2 c4 d
  e1~
  e4 r r2
  c4^\f 4 4. 8 % 10b
  c8 8 r4 r2
  c4 4 4. 8
  c8 g^\markup Unis. 8 8 ees' d c g % 10c
  c4 4 4. 8
  c8 4 r8 r2
  c4 4 b g % 11a
  c2~8 r r4
  R1
  R1 % 11b
  r2 r4 r8 a^\mf^\markup Unis.
  b4. a8 g4 b
  a4 4 r2 % 11c
  R1
  R1
  r2 c4 d % 12a
  e1^\cresc ~
  e4 r c^\f d
  e2.^\< ~8\! r % 12b
  ees1^\ff
  d1
  e1~ % 12c
  e1
  R1
}

tenor = {
  \tag #'songA \tenorA
  \tag #'songB \tenorB
  \tag #'songC \tenorC
}

wordsTenorA = \lyricmode {
  _ _ _ _ _ _
  you'd love her too,
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
  _ _ _ _ _ _ _ _ _
}

wordsTenorB = \lyricmode {
  
}

wordsTenorC = \lyricmode {
}

wordsTenor = {
  \tag #'songA \wordsTenorA
  \tag #'songB \wordsTenorB
  \tag #'songC \wordsTenorC
}

wordsMidiTenorA = \lyricmode {
  "I " "give " "her " "all " "my " "love, "
  "\nyou'd " "love " "her " "too, "
  "\nI " "love " "her. " 
  "\nHere, "  mak "ing " "each " "day "  "of " "the " "year, " 
  "\nchang" "ing " "my " "life "  "with " "a " "wave "  "of " "her " "hand, "
  "\nNo" bod "y " "can " de "ny "  "that " "there's " some "thing " "there. " 
  "\nThere "  run "ning " "my " "hands " "thru " "her " "hair. " 
  "\nboth " "of " "us " think "ing " "how " "good " "it " "can " "be. " 
  "\nOo " 
  "\nI " "want " "her " ev ;ry "where "
  "\nand " "if " "she's " be "side " "me " "I " "know " "I " "need " nev "er " "care. " 
  "\nBut " "to " "love " "her " "is " "to " "meet " "her " ev 'ry "where, "
  "\nknow" "ing " "that " "love " "is " "to " "share, " 
  "\neach " "one " be liev "ing " "that " "love "  nev "er " "dies, "
  "\nwatch" "ing " "her " "eyes " "and " hop "ing "
  "\nI'm " al "ways " "there. " 
}

wordsMidiTenorB = \lyricmode {
  "\nI "  "love " "her. " 
  "\nI " "give " "her " "all " "my " "love, "
  "\nthat's " "all " "I " "do, "
  "\nand " "if " "you " "saw " "my " "love, " 
  "\nyou'd " "love " "her " "too. " 
  "\nI "  "love " "her. " 
  "\nA " "love " "like " "ours "  "could " nev "er " "die. "

  "\nDo, " "do, " "do, " "do. " 
  "\ndark " "is " "the " "sky. " 
  "\nI " "know " "this " "love " "of " "mine "  "will " nev "er " "die, " 
  "\nand " "I " "love "
  "\nher. " 
}

wordsMidiTenorC = \lyricmode {
  "\nand " "'till " "the " "day " "I " "do " "love, "
  "\nyou, " "you, " "you. " 
  \set associatedVoice = alignerA
  "\nAs " "I " "write " "this " let "ter, "
  "\nsend " "my " "love " "to " "you, "
  "\nYou " "know " "I " "want " "you " "to " re mem "ber "
  "\nthat " "I'll " al "ways " "be " "in " "love " "with " "you. " 
  "\nkeep " "all " "my " "love " for ev "er, "
  "\nyou, "  "you, "  "you. " 
  "\nyou, "  "you, "  "you, " 
  "\nI " "love " "you! " 
}

wordsMidiTenor = {
  \tag #'songA \wordsMidiTenorA
  \tag #'songB \wordsMidiTenorB
  \tag #'songC \wordsMidiTenorC
}

bassA = \relative {
  \globalA  r4 f^\mf g aes
  bes4 4 a2
  aes2 f4 4
  bes,2.\fermata \breathe c8(bes)
  c8 g'4.~2~ \bar "||" \key c \major % 2b
  g2 r
  R1
  c,2^\mf ~4. r8 % 3a
  e8 g d' c~8 f, a g~
  g2. r4
  c,8 d e f~8 c d e~ % 4b
  e8 8 8 8~4 r
  \tuplet 3/2 {g4 4 4} f f8 e~
  e8 d e b'~8 a4 f8^\< ~( % 3c
  f2 bes,) \bar "||" \key ees \major
  g'2^\f(aes4.) r8 % 5a
  bes8 g des' c~8 f, aes g~(
  g2 aes4) r
  g8 aes bes c~8 ees, f g~ % 4b
  g8 8 8 8~4 r
  ees1^\mp~
  ees1~ % 4c
  ees2 r8 f^\f ges aes
  bes8 des bes2 aes8 ges
  aes8 bes ces aes f f ges aes % 5a
  bes8 ges ees4~4. r8
  aes8^\< bes ces aes f f ges aes
  bes4^\ff g aes r % 6b
  bes8 g des' c~8 f, aes g~(
  g2 aes4) r
  ees8^\decresc f g aes~8 ees f c~ % 5c
  c4 8 8 b4. r8
  bes8^\mf 8 8 a~4 f'8 ees~
  ees8 f g4 f f % 6a
  bes,2.
}

bassB = \relative {
  \globalB
  c8^\p^\markup Unis. (bes)
  c8 g'4.~2~
  g2. r4
  r4 f^mf g4. aes8 % 7b
  des4 c8 des~2
  r4 f, g4. aes8
  ees'8(d4.~2) % 6c
  r4 f, g8 aes4.
  bes4 8 a~2
  r4 aes4 4. 8 % 7a
  bes,2. c8(bes)
  c8 g'4.~2~
  g2. r4
  r4 r8 g^\f 4 8 f~ % 8b
  f2. r4
  r4 c4 4. 8
  g'1 % 7c
  r4 d'^\markup\italic "Bass only" bes g8 bes~
  bes2 g4 bes
  g8(f) f2.~ % 8a
  f2 \once\partCombineApart r2
  R1
  R1 % 8b
  r4 f^\mf g aes
  c,1
  r4 f g4. aes8 % 8c
  bes4 8 a~2
  r4 aes4 8 4.
  bes,2. c8^\mp bes \bar "||" \key c \major % 0a
  c8 g'4.~2~
  g2. r4
}

bassC = \relative {
  R1 % 9b
  R1
  r2 r4 r8 a^\mf
  b4. a8 g4 b % 9c
  a4 4 r2
  R1
  R1 % 10a
  r2 aes4 bes
  c1~
  c4 r r2
  f,4^\f 4 4. 8 % 10b
  e8 8 r4 r2
  f4 4 4. 8
  e8 g g g ees' d c g % 10c
  f4 4 4. 8
  e8 4 r8 r2
  g4 4 4 4 % 11a
  c,2~8 r r4
  R1
  R1 % 11b
  r2 r4 r8 a'^\mf
  b4. a8 g4 b
  a4 4 r2 % 11c
  R1
  R1
  r2 aes4 bes % 12a
  c1^\cresc ~
  c4 r aes^\f bes
  c2.^\< ~8\! r % 12b
  aes1^\ff
  bes1
  c1~ % 12c
  c1
  R1
}

bass = {
  \tag #'songA \bassA
  \tag #'songB \bassB
  \tag #'songC \bassC
}

wordsBassA = \lyricmode {
  _ _ _ _ _ _
  you'd love her too,
  I __ love her. __
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  I want her ev -- 'ry -- where
  and if she's be -- side me I know I need nev -- er care. __
  But to love her is to meet her ev -- 'ry -- where.
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

wordsBassB = \lyricmode {
  I love her. __
  I give her all my love,
  that's all I do, __
  _ _ _ _ _ _ _ _ _ _
  \set associatedVoice = alignerT
  _ _ _ _ _ _ _ _ _ _ _
  Do, do, do, do. __
  "" \set associatedVoice = alignerB
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

wordsBassC = \lyricmode {
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  send my love to you.
  You know I want you to re -- mem -- ber that I'll al -- ways
}

wordsBass = {
  \tag #'songA \wordsBassA
  \tag #'songB \wordsBassB
  \tag #'songC \wordsBassC
}

wordsMidiBassA = \lyricmode {
  "I " "give " "her " "all " "my " "love, "
  "\nyou'd " "love " "her " "too, "
  "\nI " "love " "her. " 
  "\nHere, "  mak "ing " "each " "day "  "of " "the " "year, " 
  "\nchang" "ing " "my " "life "  "with " "a " "wave "  "of " "her " "hand, "
  "\nNo" bod "y " "can " de "ny "  "that " "there's " some "thing " "there. " 
  "\nThere "  run "ning " "my " "hands " "thru " "her " "hair. " 
  "\nboth " "of " "us " think "ing " "how " "good " "it " "can " "be. " 
  "\nOo "  
  "\nI " "want " "her " ev 'ry "where "
  "\nand " "if " "she's " be "side " "me " "I " "know " "I " "need " nev "er " "care. " 
  "\nBut " "to " "love " "her " "is " "to " "meet " "her " ev 'ry "where. "
  "\nknow" "ing " "that " "love " "is " "to " "share, " 
  "\neach " "one " be liev "ing " "that " "love "  nev "er " "dies, "
  "\nwatch" "ing " "her " "eyes " "and " hop "ing "
  "\nI'm " al "ways " "there. " 
}

wordsMidiBassB = \lyricmode {
  "\nI " "love " "her. " 
  "\nI " "give " "her " "all " "my " "love, "
  "\nthat's " "all " "I " "do, " 
  "\nand " "if " "you " "saw " "my " "love, " 
  "\nyou'd " "love " "her " "too. " 
  "\nI "  "love " "her. " 
  "\nA " "love " "like " "ours "  "could " nev "er " "die. "
  "\nAs " "long " "as " "I "  "have " "you " "near "  "me. " 

  "\ndark " "is " "the " "sky. " 
  "\nI " "know " "this " "love " "of " "mine "  "will " nev "er " "die, " 
  "\nand " "I " "love " "her. " 
}

wordsMidiBassC = \lyricmode {
  "\nand " "'till " "the " "day " "I " "do " "love, "
  "\nyou, " "you, " "you. " 
  "\nAs " "I " "write " "this " let "ter, "
  "\nsend " "my " "love " "to " "you, "
  "\nYou " "know " "I " "want " "you " "to " re mem "ber "
  "\nthat " "I'll " al "ways " "be " "in " "love " "with " "you. " 
  "\nkeep " "all " "my " "love " for ev "er, "
  "\nyou, "  "you, "  "you. " 
  "\nyou, "  "you, "  "you, " 
  "\nI " "love " "you! " 
}

wordsMidiBass = {
  \tag #'songA \wordsMidiBassA
  \tag #'songB \wordsMidiBassB
  \tag #'songC \wordsMidiBassC
}

pianoRHoneA = \relative {
  \globalA
  R1
  R1
  R1
  r2 r4\fermata r
  R1 \bar "||" \key c \major % 2b
  g'4 e' c f,
  g4 c f, f16 e d8
  e4 c'8 e, f4 c'8 f, % 3a
  g4 d'8 g, f4 c'8 f,
  e4 c'8 e, f4 c'8 f,
  e8 b g' b, e a, c e~ % 3b
  e8 a, b a e' aes, d aes
  e'8 g, c g e' f, aes c~
  c8 g c ees~8 a, bes c % 3c
  des8 f, aes c aes des ees f \bar "||" \key ees \major
  g4^\mf bes aes c % 5a
  bes4 f ees aes
  g ees f aes
  bes4 f c' g~ % 4b
  g8 c, ees c g' b, ees g~
  g8 bes, ees bes g' a, c ees~
  ees8 aes, c g' ees aes, c ees % 4c
  f8 aes, c ees f ces des aes'
  <des, bes'>1
  <ees aes ces>2 f4 des' % 5a
  <ges, bes>2 ees'4 des
  <ees, aes ces>2 f4 d'
  <g, ees'>4 <f bes> \once\partCombineApart r <g' g'> % 5b
  g,1
  g4 ees f aes
  bes4 f c' g~ % 5c
  g8 c, ees c g' b, ees g~
  g bes, ees bes g' a, c ees~
  ees8 aes, c g' ees aes, c ees % 6a
  <aes, bes ees f>2~4\fermata
}

pianoRHoneB = \relative {
  \globalB
  r4
  r4 c' bes' g
  r4 <g, bes c ees> r8 q4.
  r4 <aes c ees f> r8 q4. % 6b
  r4 <bes d ees g> r8 4.
  r4 <aes c ees d> r8 4.
  r4 <bes d ees g>r8 4. % 6c
  r4 <aes c ees f> r8 <aes c ees g>4.
  r4 <bes d ees g> r8 <a c ees g>4.
  r4 <c ees g aes> r8 <ees aes c>4. % 7a
  g8 f4.~2
  r4 <bes d ees g>\arpeggioArrowDown r8 <f g bes d>4.
  r4 <ees g bes c>\arpeggioArrowDown r8 <d ees g bes>4.
  r4 <g, c ees g>-. r8 4.-- % 7b
  r4 <f bes d f>-. r8 q4 <fis b dis fis>8
  r4 <g c ees g>-. r8 q4 8-.
  r4 <g bes d f>-. r8 q r16 q r8 % 7c
  r4 <g c ees g>-. r8 4.--
  r4 <g bes d f>-. r8 q r16 q r8
  <aes c ees f>4 4 4 r16 q r8 % 8a
  <aes bes d f>1
  r4 <aes c ees f> r8 <aes c ees g>4.
  r4 <bes d ees g> r8 q4. % 8b
  r4 <aes c ees f> r8 <aes c ees g>4.
  r4 <bes d ees g> r8 4.
  r4 <aes c ees f> r8 <aes c ees g>4. % 8c
  r4 <bes d ees g> r8 <a c ees g>4.
  r4 <c ees g aes> r8 <ees aes c>4.
  g8 f4.~2 \bar "||" \key c \major % 9a
  <c e>4 e16 f g8 g2~
  g4 f8 e f e c a
}

pianoRHoneC = \relative {
  <g c e>4 q~8 4 <a c f>8~ % 9b
  q4 4~8 a c f
  r4 \appoggiatura d8 <e g>4~8 d c a
  g8 f g b e g, d'4 % 10c
  r4 <e, a c>4~8 <a c e>4.
  e'4 d2.
  <aes c ees>4 q~8 <c ees aes>4. % 10a
  <c ees aes c>4 <ees aes c ees>2 <d aes' bes d>4
  <c e g c>4 g'2.
  s2 \once\partCombineApart r8 c4.^>
  <c, f a c>4-. q-. q-. q-. % 10b
  <c e g c>4-. q-. q-. q-.
  <c f a c>4-. q-. q-. q-.
  <c e g c>4-. q-. g'2 % 10c
  <c, f a>4-. q-. q-. q-.
  <c e g>4-. q-. q-. g'
  <g, c e>8 g c e <f, b d>2 % 11a
  r8 c''8 a g e d c4
  <g c e>4 q4~8 4.
  <a c f>4 4~8 4. % 12b
  r4 \acciaccatura d8 <e g>4~8 g, c4
  r8 g <b d g>4 e8 g, d'4
  r4 <e, a c>4~8 <a c e>4. % 11c
  \once\partCombineApart r2 <g'' g'>2
  <aes,, c ees>4 q~8 <c ees aes>4.
  <c ees aes c>4 <ees aes c ees>2 <d aes' bes d>4 % 12a
  <c e g c>8 <g' g'> q q~8 q q q
  <e e'>8 <d d'> <c c'> <bes bes'> <c ees aes>4 <d f bes>
  <c e g c>4 c8 c \acciaccatura d8 <e g> d c c % 12b
  r8 <c' c'> q q q <bes bes'> <aes aes'> <f f'>
  <d' d'>8 <c c'> <bes bes'> <aes aes'> <g g'> <f f'> <ees ees'> <d d'>
  r8 <c c'>-> q-> <a a'>-> \lh <g g'>^> <ees ees'>^> <d d'>^> <c c'>^>~ % 12c
  q1
  c4^^ r4 r2
}

pianoRHone = {
  \tag #'songA \pianoRHoneA
  \tag #'songB \pianoRHoneB
  \tag #'songC \pianoRHoneC
}

pianoRHtwoA = \relative {
  \globalA
  s1*5 \key c \major
  s1*10 \key ees \major
  s1*8
  ges'2 f % 4c++
  s1*3
  s2 <ees g> % 5b
  <bes f'>2 <aes ees'>
  s1*5
  s2.
}

pianoRHtwoB = \relative {
  \globalB
  s4
  s1*9
  <c' ees>2 d % 7a+
  s1*17
  <c ees>2 d \bar "||" \key c \major % 9a
  d8 g,4. d'8 g, b d
  c8 a4. <a c>4 s
}

pianoRHtwoC = \relative {
  s1*3 % 9b
  s1 % 9c
  s1
  << { <b g'>1 } \new Voice {\vth r2 <g'' g'>} >>
  s1 % 10a
  s1
  s4 \acciaccatura d,8 e4~8 d c a
  g8 a c4~8 e g a
  s1*3
  s2 ees8 d c4 % 10c
  s1
  s2. e16 d c8
  s1 % 11a
  r8 e4. s2
  s1
  s1*3 % 11b
  s1 % 11c
  << {e4 d2.} \new Voice <b g'>1 >>
  s1*9
}

pianoRHtwo = {
  \tag #'songA \pianoRHtwoA
  \tag #'songB \pianoRHtwoB
  \tag #'songC \pianoRHtwoC
}

dynamicsPianoA = {
  \override DynamicTextSpanner.style = #'none
  s1*5
  s1\omit\mp-\markup {\dynamic mp italic legato}
  s1*8
  s1\< % 3c+
  s1\mf % 4a
  s1*10
  s1\<
  s1\ff % 5b
  s1\>
  s1\mf
  s1*4 s2.
}

dynamicsPianoB = {
  s4
  s1\p
  s1
  s1\omit\mp-\markup{\dynamic mp \italic legato} % 6b
  s1*8
  s2 s\< % 7a+++
  s1\f % 7b
  s1*6
  s2 s\> % 8a+
  s1\mp
  s1*8
  s4. s8\< s4. s8\!
}

dynamicsPianoC = {
  s1\mf % 9b
  s1*8
  s8 s\< s2.
  s1\f % 10b
  s1*6
  s4 s2.\< % 11a+
  s1\mf
  s1*7
  s4 s2.\cresc % 12a+
  s2 s\f
  s4 s2.\< % 12b
  s1\ff
  s1
  s1 % 12c
  s1\<
  s1\fff
}

dynamicsPiano = {
  \tag #'songA \dynamicsPianoA
  \tag #'songB \dynamicsPianoB
  \tag #'songC \dynamicsPianoC
}

pianoLHoneA = \relative {
  \globalA
  R1
  R1
  R1
  r2 r4\fermata r
  R1 \bar "||" \key c \major % 3b
  c8 g'4 8 d a'4 8
  e8 c'4 8 d, a'4 8
  c,8 g'4 8 d a'4 8 % 4a
  e8 b'4 8 d, a'4 8
  c,8 g'4 8 d a'4 8
  c,4. 8 f,4. 8 % 3b
  b4. 8 bes4. 8
  a4. 8 aes4. 8
  g4. 8 fis4. 8 % 3c
  f4. 8 bes4 bes' \bar "||" \key ees \major
  es,8 bes'4 8 f c'4 8 % 4a
  g8 des'4 8 f, c'4 8
  ees,8 bes'4 8 f c'4 8
  g8 des'4 8 aes ees'4 8 % 4b
  c,2 b
  bes2 a4. 8
  aes2 f4 c' % 4c
  f4 c des des,
  ges8 des' ges des bes f' bes f
  aes,8 ees' aes ees des aes' ces aes % 5a
  ees8 bes' ees bes ees, bes' des bes
  aes,8 ees' aes ees bes f' aes f
  <ees bes'>4 <g des'> <aes c>2 % 5b
  <g, f'>2 <f ees'>
  ees8 bes'4 8 f c'4 f8
  g,8 des'4 g8 aes, ees'4 aes8 % 5c
  c,2 b
  bes2 a
  aes2 f4 c' % 6a
  bes2 bes,4\fermata
}

pianoLHoneB = \relative {
  \globalB
  r4
  ees,4. bes'8 ees2
  ees,4. bes'8 ees4. bes8
  f4. c'8 f4. c8 % 6b
  c,4. g'8 c4. g8
  f4. c'8 f4. c8
  c,4. g'8 c4. g8 % 7c
  f4. c'8 f4. c8
  c,4. g'8 f4. c'8
  f,4. c'8 f4. c8 % 8a
  bes4. f'8 s2
  ees,4. bes'8 ees4. bes8
  ees,4. bes'8 ees4 bes,8 b
  c4. g'8 c4 g8 c, % 8b
  bes4. f'8 bes4 <bes, bes'>8 <b b'>
  <c c'>4. g'8 c4 g8 c,
  bes4. d8 g4 <g, g'>8 q % 7c
  c4. g'8 c4 g8 c,
  g4. d'8 g4 <g, g'>8 q
  <bes bes'>4 4 4 8 8 % 8a
  q2 r8 bes' ees d
  c4. 8 f4. c8
  c,4. g'8 c4. g8 % 9b
  f4. c'8 f4. c8
  c,4. g'8 c4. g8
  f4. c'8 f4. c8 % 8c
  c,4. g'8 f4. c'8
  f,4. c'8 f4. c8
  bes4. f'8 s2 \bar "||" \key c \major % 9a
  <c, c'>2 <b b'>
  <a a'>2 <g g'>
}

pianoLHoneC = \relative {
  c,4. g'8 c2 % 9b
  d,4. a'8 d2
  c,4. g'8 c2
  g,4. 8 g'2 % 9c
  a,4. e'8 a2
  g,4. 8 g'2
  aes,4. ees'8 aes4. ees8 % 10a
  aes,4. 8 aes'4 <bes, bes'>
  c4. g'8 c4. g8
  c,4. g'8 c2
  <f,, f'>4-. q-. q-. q-. % 10b
  \ottava #-1 <c c'>4-. q-. q-. q-. \ottava #0
  <f f'>4-. q-. q-. q-.
  \ottava #-1 <c c'>4-. q-. q-. q-. \ottava #0 % 10c
  <f f'>4-. q-. q-. q-.
  <c' c'>4-. q-. q-. q-.
  <g g'>4-- q-- g'-- g-- % 11a
  c,4. g'8 c4 g
  c,4. g'8 c2
  d,4. a'8 d2 % 11b
  c,4. g'8 c2
  g,4. 8 g'2
  a,4. e'8 a2 % 11c
  g,4. 8 g'2
  aes,4. ees'8 aes4. ees8
  aes,4. 8 aes'4 <bes, bes'> % 12a
  c4. g'8 c4. g8
  c,4. g'8 <aes, aes'>4 <bes bes'>
  <c c'>4. g'8 c4~16 q8. % 12b
  \once\partCombineApart r4 <ees aes c>2.
  \once\partCombineApart r4 <f bes d>2.
  r8 <c, c'>8-> q-> <a a'>-> \stemDown <g g'>_> <ees ees'>_> <d d'>_> <c c'>_> _~ % 12a
  \repeat tremolo 16 {c32 c'}
  <c, c'>4_^ r4 r2
}

pianoLHone = {
  \tag #'songA \pianoLHoneA
  \tag #'songB \pianoLHoneB
  \tag #'songC \pianoLHoneC
}

pianoLHtwoA = \relative {
  \globalA
  R1
  R1
  R1
  r2 r4\fermata r
  R1 \bar "||" \key c \major % 2b
  c2 d
  e2 d
  c2 d % 3a
  e2 d
  c2 d
  s1*5 \key ees \major
  ees2 f % 4a
  g2 f
  ees2 f
  g2 aes % 4b
  s1*10
  ees,2 f % 5b++
  g2 aes % 5c
  s1*3
  s2.
%  \bar "|."
}

pianoLHtwoB = \relative {
  \globalB
  s4
  ees,1
  ees1
  f1 % 6b
  c1
  f1
  c1 % 6c
  f1
  c2 f
  f1 % 7a
  bes2 bes'
  s1*10
  f,1 % 8a++
  c1 % 8b
  f1
  c1
  f1 % 8c
  s1*2
  s2 bes' \bar "||" \key c \major % 9a+
  s1
  s1
}

pianoLHtwoC = \relative {
  c,1 % 9b
  d1
  c1
  s1*14
  c1 % 11a+
  c1
  d1 % 11b
  c1
  s1*8
  <aes aes'>2. q4 % 12b+
  <bes bes'>2. q4
  s1 % 12c
  s1
  s1
}

pianoLHtwo = {
  \tag #'songA \pianoLHtwoA
  \tag #'songB \pianoLHtwoB
  \tag #'songC \pianoLHtwoC
}

usetags = #'(songA songB songC)

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
          }
          <<
            \new Voice \keepWithTag #usetags \TempoTrack
            \new Voice \keepWithTag #usetags \RehearsalTrack
            \new Voice \partCombine {\keepWithTag #usetags \soprano \bar "|'"}
                                    {\keepWithTag #usetags \alto   }
            \new NullVoice = alignerA \keepWithTag #usetags \alto
            \new NullVoice = alignerS \keepWithTag #usetags \soprano
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS {\keepWithTag #usetags \wordsSop}
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \keepWithTag #usetags \tenor
                                    \keepWithTag #usetags \bass
            \new NullVoice = "alignerT" {\keepWithTag #usetags \tenor}
            \new NullVoice = "alignerB" {\keepWithTag #usetags \bass}
            \addlyrics {\keepWithTag #usetags \wordsBass}
          >>
          \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS {\keepWithTag #usetags \words}
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\keepWithTag #usetags \wordsTenor}
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \keepWithTag #usetags \pianoRHone
                                    \keepWithTag #usetags \pianoRHtwo
          >>
          \new Dynamics \keepWithTag #usetags \dynamicsPiano
          \new Staff = pianolh \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \keepWithTag #usetags \pianoLHone
                                    \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
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
    paper-width = 191\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
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
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \keepWithTag #usetags \TempoTrack
            \new Voice \keepWithTag #usetags \RehearsalTrack
            \new Voice \partCombine {\keepWithTag #usetags \soprano \bar "|'"}
                                    {\keepWithTag #usetags \alto   }
            \new NullVoice = alignerA \keepWithTag #usetags \alto
            \new NullVoice = alignerS \keepWithTag #usetags \soprano
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS {\keepWithTag #usetags \wordsSop}
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \keepWithTag #usetags \tenor
                                    \keepWithTag #usetags \bass
            \new NullVoice = "alignerT" {\keepWithTag #usetags \tenor}
            \new NullVoice = "alignerB" {\keepWithTag #usetags \bass}
            \addlyrics {\keepWithTag #usetags \wordsBass}
          >>
          \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS {\keepWithTag #usetags \words}
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\keepWithTag #usetags \wordsTenor}
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \keepWithTag #usetags \pianoRHone
                                    \keepWithTag #usetags \pianoRHtwo
          >>
          \new Dynamics \keepWithTag #usetags \dynamicsPiano
          \new Staff = pianolh \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \keepWithTag #usetags \pianoLHone
                                    \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
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
          }
          <<
            \new Voice \keepWithTag #usetags \TempoTrack
            \new Voice \keepWithTag #usetags \RehearsalTrack
	    \new Voice {\keepWithTag #usetags \soprano \bar "|."}
            \addlyrics {\keepWithTag #usetags \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
	    \magnifyStaff #4/7
            \new Voice {\keepWithTag #usetags \alto   }
            \addlyrics {\tiny \keepWithTag #usetags \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
	    \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag #usetags \tenor
            \addlyrics {\tiny \keepWithTag #usetags \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
	    \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag #usetags \bass
            \addlyrics {\tiny \keepWithTag #usetags \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with { printPartCombineTexts = ##f }
          <<
	    \magnifyStaff #4/7
            \new Voice \partCombine \keepWithTag #usetags \pianoRHone
                                    \keepWithTag #usetags \pianoRHtwo
          >>
	  \new Dynamics {\teeny \keepWithTag #usetags \dynamicsPiano}
          \new Staff = pianolh \with { printPartCombineTexts = ##f }
          <<
	    \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \keepWithTag #usetags \pianoLHone
                                    \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
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
          }
          <<
	    \magnifyStaff #4/7
            \new Voice \keepWithTag #usetags \TempoTrack
            \new Voice \keepWithTag #usetags \RehearsalTrack
	    \new Voice {\keepWithTag #usetags \soprano \bar "|."}
            \addlyrics {\tiny \keepWithTag #usetags \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice {\keepWithTag #usetags \alto   }
            \addlyrics {\keepWithTag #usetags \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
	    \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag #usetags \tenor
            \addlyrics {\tiny \keepWithTag #usetags \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
	    \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag #usetags \bass
            \addlyrics {\tiny \keepWithTag #usetags \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with { printPartCombineTexts = ##f }
          <<
	    \magnifyStaff #4/7
            \new Voice \partCombine \keepWithTag #usetags \pianoRHone
                                    \keepWithTag #usetags \pianoRHtwo
          >>
	  \new Dynamics {\teeny \keepWithTag #usetags \dynamicsPiano}
          \new Staff = pianolh \with { printPartCombineTexts = ##f }
          <<
	    \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \keepWithTag #usetags \pianoLHone
                                    \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
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
          }
          <<
	    \magnifyStaff #4/7
            \new Voice \keepWithTag #usetags \TempoTrack
            \new Voice \keepWithTag #usetags \RehearsalTrack
	    \new Voice {\keepWithTag #usetags \soprano \bar "|."}
            \addlyrics {\tiny \keepWithTag #usetags \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
	    \magnifyStaff #4/7
            \new Voice {\keepWithTag #usetags \alto   }
            \addlyrics {\tiny \keepWithTag #usetags \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag #usetags \tenor
            \addlyrics {\keepWithTag #usetags \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
	    \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag #usetags \bass
            \addlyrics {\tiny \keepWithTag #usetags \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with { printPartCombineTexts = ##f }
          <<
	    \magnifyStaff #4/7
            \new Voice \partCombine \keepWithTag #usetags \pianoRHone
                                    \keepWithTag #usetags \pianoRHtwo
          >>
	  \new Dynamics {\teeny \keepWithTag #usetags \dynamicsPiano}
          \new Staff = pianolh \with { printPartCombineTexts = ##f }
          <<
	    \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \keepWithTag #usetags \pianoLHone
                                    \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
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
          }
          <<
	    \magnifyStaff #4/7
            \new Voice \keepWithTag #usetags \TempoTrack
            \new Voice \keepWithTag #usetags \RehearsalTrack
	    \new Voice {\keepWithTag #usetags \soprano \bar "|."}
            \addlyrics {\tiny \keepWithTag #usetags \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
	    \magnifyStaff #4/7
            \new Voice {\keepWithTag #usetags \alto   }
            \addlyrics {\tiny \keepWithTag #usetags \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
	    \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag #usetags \tenor
            \addlyrics {\tiny \keepWithTag #usetags \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag #usetags \bass
            \addlyrics {\keepWithTag #usetags \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with { printPartCombineTexts = ##f }
          <<
	    \magnifyStaff #4/7
            \new Voice \partCombine \keepWithTag #usetags \pianoRHone
                                    \keepWithTag #usetags \pianoRHtwo
          >>
	  \new Dynamics {\teeny \keepWithTag #usetags \dynamicsPiano}
          \new Staff = pianolh \with { printPartCombineTexts = ##f }
          <<
	    \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \keepWithTag #usetags \pianoLHone
                                    \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
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
          }
          <<
            \new Voice \keepWithTag #usetags \TempoTrack
            \new Voice \keepWithTag #usetags \RehearsalTrack
	    \new Voice {\keepWithTag #usetags \soprano \bar "|."}
            \addlyrics {\keepWithTag #usetags \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice {\keepWithTag #usetags \alto   }
            \addlyrics {\keepWithTag #usetags \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag #usetags \tenor
            \addlyrics {\keepWithTag #usetags \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag #usetags \bass
            \addlyrics {\keepWithTag #usetags \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \keepWithTag #usetags \pianoRHone
                                    \keepWithTag #usetags \pianoRHtwo
          >>
          \new Dynamics \keepWithTag #usetags \dynamicsPiano
          \new Staff = pianolh \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \keepWithTag #usetags \pianoLHone
                                    \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards \with {alignAboveContext = pianorh} { \keepWithTag #usetags \ChordTrack }
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \keepWithTag #usetags \TempoTrack
            \new Voice {\keepWithTag #usetags \soprano \bar "|'"}
            \addlyrics {\keepWithTag #usetags \wordsMidiSop}
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\keepWithTag #usetags \alto   }
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag #usetags \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag #usetags \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \keepWithTag #usetags \pianoRHone
            \new Voice \keepWithTag #usetags \pianoRHtwo
            \new Dynamics \keepWithTag #usetags \dynamicsPiano
            \new Voice \keepWithTag #usetags \pianoLHone
            \new Voice \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards { \keepWithTag #usetags \ChordTrack }
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \keepWithTag #usetags \TempoTrack
	    \new Voice {\keepWithTag #usetags \soprano}
            \addlyrics {\keepWithTag #usetags \wordsMidiSop}
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\keepWithTag #usetags \alto   }
            \addlyrics {\keepWithTag #usetags \wordsMidiAlto}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag #usetags \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag #usetags \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \keepWithTag #usetags \pianoRHone
            \new Voice \keepWithTag #usetags \pianoRHtwo
            \new Dynamics \keepWithTag #usetags \dynamicsPiano
            \new Voice \keepWithTag #usetags \pianoLHone
            \new Voice \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards { \keepWithTag #usetags \ChordTrack }
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \keepWithTag #usetags \TempoTrack
	    \new Voice {\keepWithTag #usetags \soprano}
            \new Voice {\keepWithTag #usetags \soprano \bar "|'"}
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\keepWithTag #usetags \alto   }
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag #usetags \tenor
            \addlyrics {\keepWithTag #usetags \wordsMidiTenor}
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag #usetags \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            }
          <<
            \new Voice \keepWithTag #usetags \pianoRHone
            \new Voice \keepWithTag #usetags \pianoRHtwo
            \new Dynamics \keepWithTag #usetags \dynamicsPiano
            \new Voice \keepWithTag #usetags \pianoLHone
            \new Voice \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards { \keepWithTag #usetags \ChordTrack }
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \keepWithTag #usetags \TempoTrack
	    \new Voice {\keepWithTag #usetags \soprano \bar "|'"}
            \addlyrics {\keepWithTag #usetags \wordsMidiSop}
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\keepWithTag #usetags \alto   }
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag #usetags \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag #usetags \bass
            \addlyrics { \keepWithTag #usetags \wordsMidiBass }
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \keepWithTag #usetags \pianoRHone
            \new Voice \keepWithTag #usetags \pianoRHtwo
            \new Dynamics \keepWithTag #usetags \dynamicsPiano
            \new Voice \keepWithTag #usetags \pianoLHone
            \new Voice \keepWithTag #usetags \pianoLHtwo
          >>
        >>
        <<
          \new ChordNames = guitar { \keepWithTag #usetags \ChordTrack }
%          \new FretBoards { \keepWithTag #usetags \ChordTrack }
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
